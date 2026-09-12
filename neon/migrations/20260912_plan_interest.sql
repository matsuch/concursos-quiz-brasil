-- =============================================================================
-- MIGRAÇÃO — tabela plan_interest
-- =============================================================================
-- Aplicada no banco de produção, que já roda o schema.sql anterior a esta
-- tabela. O neon/schema.sql (baseline de banco novo) também foi atualizado,
-- então os dois caminhos chegam ao mesmo estado.
--
-- Contexto: a geração de plano de estudos com IA ficou desligada enquanto o
-- site roda a custo zero. No lugar dela entra um aviso de "somente planos
-- pagos" com formulário de interesse, e é isso que esta tabela guarda.
--
-- Idempotente: pode rodar de novo sem erro.
-- =============================================================================

CREATE TABLE IF NOT EXISTS public.plan_interest (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL UNIQUE,
  email TEXT NOT NULL,
  whatsapp TEXT,
  concurso TEXT,
  message TEXT,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

DROP TRIGGER IF EXISTS update_plan_interest_updated_at ON public.plan_interest;
CREATE TRIGGER update_plan_interest_updated_at
  BEFORE UPDATE ON public.plan_interest
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

ALTER TABLE public.plan_interest ENABLE ROW LEVEL SECURITY;

-- Mesmas quatro policies das demais tabelas por usuário.
DROP POLICY IF EXISTS "Usuário vê os próprios registros"      ON public.plan_interest;
DROP POLICY IF EXISTS "Usuário cria os próprios registros"    ON public.plan_interest;
DROP POLICY IF EXISTS "Usuário atualiza os próprios registros" ON public.plan_interest;
DROP POLICY IF EXISTS "Usuário apaga os próprios registros"   ON public.plan_interest;

CREATE POLICY "Usuário vê os próprios registros"
  ON public.plan_interest FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário cria os próprios registros"
  ON public.plan_interest FOR INSERT WITH CHECK (auth.user_id()::text = user_id);
CREATE POLICY "Usuário atualiza os próprios registros"
  ON public.plan_interest FOR UPDATE USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário apaga os próprios registros"
  ON public.plan_interest FOR DELETE USING (auth.user_id()::text = user_id);

-- delete_user_data() precisa limpar a tabela nova junto com o resto.
-- (A definição completa vive em neon/schema.sql; aqui ela é reaplicada.)
CREATE OR REPLACE FUNCTION public.delete_user_data(p_user_id TEXT)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
BEGIN
  DELETE FROM public.study_blocks
    WHERE cycle_id IN (SELECT id FROM public.study_cycles WHERE user_id = p_user_id);

  DELETE FROM public.study_reviews         WHERE user_id = p_user_id;
  DELETE FROM public.study_cycles          WHERE user_id = p_user_id;
  DELETE FROM public.edital_topics         WHERE user_id = p_user_id;
  DELETE FROM public.study_calendar_events WHERE user_id = p_user_id;
  DELETE FROM public.study_plan_proposals  WHERE user_id = p_user_id;
  DELETE FROM public.study_notes           WHERE user_id = p_user_id;
  DELETE FROM public.question_notes        WHERE user_id = p_user_id;
  DELETE FROM public.flashcard_progress    WHERE user_id = p_user_id;
  DELETE FROM public.quiz_attempts         WHERE user_id = p_user_id;
  DELETE FROM public.simulado_attempts     WHERE user_id = p_user_id;
  DELETE FROM public.notifications         WHERE user_id = p_user_id;
  DELETE FROM public.plan_interest         WHERE user_id = p_user_id;
  DELETE FROM public.user_badges           WHERE user_id = p_user_id;

  UPDATE public.questions  SET created_by = NULL WHERE created_by = p_user_id;
  UPDATE public.flashcards SET created_by = NULL WHERE created_by = p_user_id;

  DELETE FROM public.profiles WHERE user_id = p_user_id;
END;
$$;
