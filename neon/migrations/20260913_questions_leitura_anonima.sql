-- =============================================================================
-- MIGRAÇÃO — leitura de questions sem sessão (role anonymous)
-- =============================================================================
-- Aplicada no banco de produção, que já roda o schema.sql anterior. O
-- neon/schema.sql (baseline de banco novo) também foi atualizado, então os
-- dois caminhos chegam ao mesmo estado.
--
-- Contexto: a página /quiz é pública, mas quebrava para o visitante deslogado.
-- Faltavam as duas pontas:
--
--   1. O cliente do Neon exigia token antes de sair a requisição
--      (AuthRequiredError) — resolvido no app, em src/integrations/neon/client.ts.
--   2. O role `anonymous` (o `db_anon_role` da Data API, usado quando a
--      requisição chega sem Authorization) não tinha GRANT nenhum em
--      public.questions. Só `authenticated` tinha. A policy de RLS
--      "Questões são visíveis por todos" (USING true) não basta: RLS filtra
--      linhas, o GRANT é que abre a tabela para o role.
--
-- O GRANT é por coluna, e não na tabela inteira, de propósito: `ai_explanation`
-- fica de fora porque a explicação da IA é recurso de usuário logado, e
-- `created_by` porque identifica o autor. Quem está deslogado não recebe esses
-- campos nem pedindo direto na Data API.
--
-- Idempotente: pode rodar de novo sem erro.
-- =============================================================================

-- O role `anonymous` só passa a existir depois que a Data API é habilitada no
-- console do projeto; o IF evita quebrar quem rodar esta migração antes disso.
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anonymous') THEN
    GRANT SELECT (
      id,
      question,
      options,
      correct_answer,
      subject,
      difficulty,
      is_official,
      assunto,
      banca,
      prova
    ) ON public.questions TO anonymous;
  ELSE
    RAISE NOTICE 'role "anonymous" nao existe: habilite a Data API no console e rode esta migracao de novo';
  END IF;
END;
$$;
