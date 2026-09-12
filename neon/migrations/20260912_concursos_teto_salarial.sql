-- =============================================================================
-- MIGRAÇÃO — concursos.salario_ate + identidade de importação
-- =============================================================================
-- Aplicada no banco de produção, que já roda o schema.sql anterior.
-- Idempotente: pode rodar de novo sem erro.
--
-- salario_ate: a listagem de origem quase sempre publica um teto ("vagas até
-- R$ X"), e não o salário de um cargo. Sem esta marca o card exibiria o teto
-- como se fosse o salário — número errado, e o mais visível da tela.
--
-- idx_concursos_url_edital: identidade de um concurso importado. Sustenta o
-- ON CONFLICT do seed gerado por scripts/scrape/concursos.py, para que
-- recoletar atualize a linha em vez de duplicar.
-- =============================================================================

ALTER TABLE public.concursos
  ADD COLUMN IF NOT EXISTS salario_ate BOOLEAN NOT NULL DEFAULT false;

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;
