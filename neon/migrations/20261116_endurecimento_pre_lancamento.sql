-- =============================================================================
-- MIGRAÇÃO — endurecimento antes do lançamento
-- =============================================================================
-- Aplicada no banco de produção em 2026-11-16. O neon/schema.sql (baseline de
-- banco novo) foi atualizado junto, então os dois caminhos chegam ao mesmo
-- estado.
--
-- Quatro correções, todas de permissão:
--
--   1. delete_user_data(p_user_id) era executável por qualquer role. Função
--      nasce com EXECUTE para PUBLIC, e esta é SECURITY DEFINER com o id do
--      alvo por parâmetro: pela Data API (/rpc) qualquer visitante apagava os
--      dados de qualquer usuário. Passa a ser só do dono do banco.
--
--   2. Exclusão de conta pelo próprio usuário: delete_my_account() não recebe
--      parâmetro — o alvo é sempre auth.user_id(). Registra o pedido em
--      account_deletion_requests, porque o cadastro de login vive no Neon Auth
--      e não é removido daqui.
--
--   3. profiles deixava qualquer usuário logado ler todos os perfis. O ranking
--      saiu do ar; nada mais lê perfil alheio, e display_name nasce do prefixo
--      do e-mail.
--
--   4. questions e flashcards: o INSERT só conferia created_by, então qualquer
--      usuário publicava conteúdo com is_official = true, visível a todos.
--      Usuário não marca mais nada como oficial, e conteúdo não oficial só é
--      visto pelo autor (não há moderação).
--
-- Idempotente: pode rodar de novo sem erro.
-- =============================================================================

-- --- 1. delete_user_data: só o dono do banco --------------------------------
REVOKE ALL ON FUNCTION public.delete_user_data(TEXT) FROM PUBLIC;
DO $$
DECLARE r TEXT;
BEGIN
  FOREACH r IN ARRAY ARRAY['anonymous', 'authenticated'] LOOP
    IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = r) THEN
      EXECUTE format('REVOKE ALL ON FUNCTION public.delete_user_data(TEXT) FROM %I', r);
    END IF;
  END LOOP;
END;
$$;

-- --- 2. Exclusão de conta pelo próprio usuário -------------------------------
-- RLS ligado e nenhuma policy: cliente da Data API não lê nem grava. Só a
-- função abaixo (SECURITY DEFINER) e o dono do banco alcançam a tabela.
CREATE TABLE IF NOT EXISTS public.account_deletion_requests (
  user_id TEXT PRIMARY KEY,
  requested_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);
ALTER TABLE public.account_deletion_requests ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION public.delete_my_account()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
DECLARE
  v_user_id TEXT := auth.user_id()::text;
BEGIN
  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'not authenticated' USING ERRCODE = '28000';
  END IF;

  PERFORM public.delete_user_data(v_user_id);

  INSERT INTO public.account_deletion_requests (user_id)
  VALUES (v_user_id)
  ON CONFLICT (user_id) DO UPDATE SET requested_at = now();
END;
$$;

REVOKE ALL ON FUNCTION public.delete_my_account() FROM PUBLIC;
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anonymous') THEN
    REVOKE ALL ON FUNCTION public.delete_my_account() FROM anonymous;
  END IF;
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'authenticated') THEN
    GRANT EXECUTE ON FUNCTION public.delete_my_account() TO authenticated;
  END IF;
END;
$$;

-- --- 3. profiles: leitura só do dono ----------------------------------------
DROP POLICY IF EXISTS "Profiles são visíveis por todos" ON public.profiles;
DROP POLICY IF EXISTS "Usuário vê o próprio profile"    ON public.profiles;
CREATE POLICY "Usuário vê o próprio profile"
  ON public.profiles FOR SELECT USING (auth.user_id()::text = user_id);

-- --- 4. questions e flashcards: oficial é só do sistema ----------------------
DROP POLICY IF EXISTS "Questões são visíveis por todos"          ON public.questions;
DROP POLICY IF EXISTS "Questões oficiais ou do próprio autor"    ON public.questions;
DROP POLICY IF EXISTS "Usuário autenticado cria questões"        ON public.questions;
DROP POLICY IF EXISTS "Usuário atualiza as próprias questões"    ON public.questions;

CREATE POLICY "Questões oficiais ou do próprio autor"
  ON public.questions FOR SELECT
  USING (is_official IS TRUE OR auth.user_id()::text = created_by);
CREATE POLICY "Usuário autenticado cria questões"
  ON public.questions FOR INSERT
  WITH CHECK (auth.user_id()::text = created_by AND is_official IS NOT TRUE);
CREATE POLICY "Usuário atualiza as próprias questões"
  ON public.questions FOR UPDATE
  USING (auth.user_id()::text = created_by)
  WITH CHECK (auth.user_id()::text = created_by AND is_official IS NOT TRUE);

DROP POLICY IF EXISTS "Flashcards são visíveis por todos"        ON public.flashcards;
DROP POLICY IF EXISTS "Flashcards oficiais ou do próprio autor"  ON public.flashcards;
DROP POLICY IF EXISTS "Usuário autenticado cria flashcards"      ON public.flashcards;
DROP POLICY IF EXISTS "Usuário atualiza os próprios flashcards"  ON public.flashcards;

CREATE POLICY "Flashcards oficiais ou do próprio autor"
  ON public.flashcards FOR SELECT
  USING (is_official IS TRUE OR auth.user_id()::text = created_by);
CREATE POLICY "Usuário autenticado cria flashcards"
  ON public.flashcards FOR INSERT
  WITH CHECK (auth.user_id()::text = created_by AND is_official IS NOT TRUE);
CREATE POLICY "Usuário atualiza os próprios flashcards"
  ON public.flashcards FOR UPDATE
  USING (auth.user_id()::text = created_by)
  WITH CHECK (auth.user_id()::text = created_by AND is_official IS NOT TRUE);

-- A Data API guarda o catálogo em cache; sem isto a função nova só apareceria
-- em /rpc depois do próximo recarregamento.
NOTIFY pgrst, 'reload schema';
