-- =============================================================================
-- SCHEMA BASELINE — Passar Concursos Brasil (Neon)
-- =============================================================================
-- Porte do baseline Supabase (supabase/migrations/20260912000000_*.sql) para
-- Neon + Managed Better Auth (Neon Auth). Diferenças em relação ao original:
--
--   1. auth.uid()  →  auth.user_id()
--      Função equivalente do Neon. Rename mecânico nas policies.
--
--   2. user_id / created_by: UUID  →  TEXT, com comparação por auth.user_id()::text
--      Verificado no projeto real: neon_auth.user.id é UUID. A coluna fica
--      TEXT mesmo assim, para o schema não depender do formato de id do
--      provedor de auth — o mesmo motivo de não haver FK (ver abaixo).
--      Como Postgres não converte text e uuid implicitamente, toda policy
--      compara com auth.user_id()::text: no-op se a função devolver text,
--      canônico se devolver uuid. Imune aos dois casos, já que o tipo de
--      retorno só se conhece com a Data API habilitada.
--
--   3. Sem FK para a tabela de usuários. DECISÃO DELIBERADA, ver abaixo.
--
--   4. Sem trigger de criação de profile. Ver 'Criação de profile' abaixo.
--
-- -----------------------------------------------------------------------------
-- Por que não há FK para a tabela de usuários
-- -----------------------------------------------------------------------------
-- A Managed Better Auth mantém os usuários em neon_auth.user (verificado no
-- projeto: o schema neon_auth traz account, session, jwks, user e afins; a
-- users_sync do Neon Auth legado não existe neste modelo).
--
-- Não se cria FK para lá de propósito: acoplar o schema à tabela do provedor
-- de auth foi exatamente o que tornou cara a saída do Supabase. Mantendo
-- user_id como TEXT indexado, o schema fica portátil e a posse é garantida
-- pelo RLS, que já filtra por auth.user_id() em toda tabela por usuário.
--
-- O custo é real: sem ON DELETE CASCADE, apagar um usuário deixa órfãos. Por
-- isso existe public.delete_user_data() no fim deste arquivo — chame-a ao
-- excluir uma conta.
--
-- -----------------------------------------------------------------------------
-- Criação de profile
-- -----------------------------------------------------------------------------
-- No Supabase um trigger em auth.users criava a linha em profiles. No Neon as
-- tabelas de auth são gerenciadas pelo serviço, não convém pendurar trigger.
-- O profile passa a ser criado pelo app no primeiro acesso autenticado, com um
-- upsert em profiles — a policy de INSERT já permite (auth.user_id()::text = user_id)
-- e user_id é UNIQUE, então a operação é idempotente.
-- =============================================================================



-- =============================================================================
-- FUNÇÕES AUXILIARES
-- =============================================================================

-- [DDL] Mantém updated_at em dia. Usada por vários triggers mais abaixo.
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
SET search_path = ''
AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$;


-- =============================================================================
-- PERFIL E GAMIFICAÇÃO
-- =============================================================================

-- [DDL] + coluna simulados_completed [REC]
CREATE TABLE public.profiles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL UNIQUE,
  display_name TEXT,
  avatar_url TEXT,
  total_points INTEGER DEFAULT 0,
  quizzes_completed INTEGER DEFAULT 0,
  duels_won INTEGER DEFAULT 0,
  duels_played INTEGER DEFAULT 0,
  flashcards_studied INTEGER DEFAULT 0,
  simulados_completed INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- [DDL]
CREATE TABLE public.badges (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- UNIQUE para o seed poder reaplicar sem duplicar
  name TEXT NOT NULL UNIQUE,
  description TEXT NOT NULL,
  icon TEXT NOT NULL,
  category TEXT NOT NULL CHECK (category IN ('quiz', 'duelo', 'estudo', 'geral')),
  rarity TEXT DEFAULT 'comum' CHECK (rarity IN ('comum', 'raro', 'epico', 'lendario')),
  requirement_type TEXT NOT NULL,
  requirement_value INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

-- [DDL]
CREATE TABLE public.user_badges (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  badge_id UUID REFERENCES public.badges(id) ON DELETE CASCADE NOT NULL,
  unlocked_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  UNIQUE (user_id, badge_id)
);


-- =============================================================================
-- QUESTÕES E QUIZ
-- =============================================================================

-- [DDL] + colunas ai_explanation, assunto, banca, prova [REC]
-- (adicionadas depois pelo dashboard; ai_explanation alimenta a explicação
--  da IA no QuizQuestion, e as outras três são filtros no QuizFilters)
CREATE TABLE public.questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  created_by TEXT,
  subject TEXT NOT NULL,
  question TEXT NOT NULL,
  options JSONB NOT NULL,               -- array de alternativas
  correct_answer INTEGER NOT NULL,      -- índice da alternativa correta
  difficulty TEXT DEFAULT 'medium' CHECK (difficulty IN ('easy', 'medium', 'hard')),
  is_official BOOLEAN DEFAULT false,
  ai_explanation TEXT,
  assunto TEXT,
  banca TEXT,
  prova TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

CREATE INDEX idx_questions_subject ON public.questions (subject);
CREATE INDEX idx_questions_banca ON public.questions (banca);

-- [DDL]
CREATE TABLE public.quiz_attempts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  subject TEXT NOT NULL,
  total_questions INTEGER NOT NULL,
  correct_answers INTEGER NOT NULL,
  points_earned INTEGER NOT NULL,
  time_spent_seconds INTEGER,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

CREATE INDEX idx_quiz_attempts_user_id ON public.quiz_attempts (user_id, created_at DESC);

-- [DDL]
CREATE TABLE public.question_notes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  question_id UUID NOT NULL REFERENCES public.questions(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  UNIQUE (user_id, question_id)
);


-- =============================================================================
-- FLASHCARDS
-- =============================================================================

-- [DDL]
CREATE TABLE public.flashcards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  created_by TEXT,
  subject TEXT NOT NULL,
  front_content TEXT NOT NULL,
  back_content TEXT NOT NULL,
  is_official BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL
);

CREATE INDEX idx_flashcards_subject ON public.flashcards (subject);

-- [DDL]
CREATE TABLE public.flashcard_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  flashcard_id UUID REFERENCES public.flashcards(id) ON DELETE CASCADE NOT NULL,
  times_reviewed INTEGER DEFAULT 1,
  last_reviewed_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
  UNIQUE (user_id, flashcard_id)
);


-- =============================================================================
-- CONCURSOS
-- =============================================================================

-- [REC] tabela nunca versionada; colunas vindas de types.ts
-- inscricoes_ate chega como string ISO no frontend (Home.tsx / Concursos.tsx)
CREATE TABLE public.concursos (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  titulo TEXT NOT NULL,
  orgao TEXT NOT NULL,
  local TEXT NOT NULL,           -- UF ('SP') ou 'Nacional'; a UI faz split('/')[0]
  nivel TEXT NOT NULL,           -- Fundamental | Médio | Superior | Não informado
  vagas INTEGER NOT NULL,        -- 0 = fonte não informa (cadastro de reserva)
  salario NUMERIC,
  -- A listagem de origem quase sempre publica um teto ("vagas até R$ X"), e não
  -- o salário de um cargo. Sem esta marca o card exibiria o teto como se fosse
  -- o salário — número errado, e é o mais visível da tela.
  salario_ate BOOLEAN NOT NULL DEFAULT false,
  inscricoes_ate DATE NOT NULL,
  status TEXT NOT NULL,          -- aberto | destaque | breve
  url_edital TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE INDEX idx_concursos_status ON public.concursos (status, created_at DESC);

-- Identidade de um concurso importado: a URL da página de origem. Sustenta o
-- ON CONFLICT do seed gerado por scripts/scrape/concursos.py, para que
-- recoletar atualize a linha em vez de duplicar.
CREATE UNIQUE INDEX idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;


-- =============================================================================
-- SIMULADOS
-- =============================================================================

-- [REC] as três tabelas abaixo nunca foram versionadas
CREATE TABLE public.simulados (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  description TEXT,
  duration_minutes INTEGER NOT NULL,
  total_questions INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

-- "order" é palavra reservada no Postgres e precisa de aspas em toda query
CREATE TABLE public.simulado_questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  simulado_id UUID REFERENCES public.simulados(id) ON DELETE CASCADE,
  subject TEXT NOT NULL,
  question TEXT NOT NULL,
  options JSONB NOT NULL,
  correct_answer INTEGER NOT NULL,
  "order" INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE INDEX idx_simulado_questions_simulado ON public.simulado_questions (simulado_id, "order");

CREATE TABLE public.simulado_attempts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT,
  simulado_id UUID REFERENCES public.simulados(id) ON DELETE CASCADE,
  total_questions INTEGER NOT NULL,
  correct_answers INTEGER NOT NULL,
  points_earned INTEGER NOT NULL,
  time_spent_seconds INTEGER NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);


-- =============================================================================
-- PLANNER: CICLOS, EDITAL, REVISÕES
-- =============================================================================

-- [DDL]
CREATE TABLE public.study_cycles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  name TEXT NOT NULL,
  duration_days INTEGER NOT NULL DEFAULT 7,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- [DDL]
CREATE TABLE public.study_blocks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  cycle_id UUID NOT NULL REFERENCES public.study_cycles(id) ON DELETE CASCADE,
  subject TEXT NOT NULL,
  duration_minutes INTEGER NOT NULL DEFAULT 60,
  order_index INTEGER NOT NULL,
  color TEXT DEFAULT '#3b82f6',
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- [DDL]
CREATE TABLE public.edital_topics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  subject TEXT NOT NULL,
  topic TEXT NOT NULL,
  subtopic TEXT,
  is_completed BOOLEAN DEFAULT false,
  completed_at TIMESTAMP WITH TIME ZONE,
  notes TEXT,
  priority INTEGER DEFAULT 1,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- [DDL]
CREATE TABLE public.study_reviews (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  topic_id UUID REFERENCES public.edital_topics(id) ON DELETE CASCADE,
  subject TEXT NOT NULL,
  topic_name TEXT NOT NULL,
  review_type TEXT NOT NULL CHECK (review_type IN ('24h', '7d', '30d')),
  scheduled_date DATE NOT NULL,
  is_completed BOOLEAN DEFAULT false,
  completed_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- [REC] nunca versionada; alimenta CalendarTab e MobileCalendarView
CREATE TABLE public.study_calendar_events (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  title TEXT NOT NULL,
  subject TEXT,
  start_time TIMESTAMP WITH TIME ZONE NOT NULL,
  end_time TIMESTAMP WITH TIME ZONE NOT NULL,
  is_recurring BOOLEAN DEFAULT false,
  recurrence_rule TEXT,
  color TEXT DEFAULT '#3b82f6',
  notes TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE INDEX idx_study_calendar_events_user_time
  ON public.study_calendar_events (user_id, start_time);

-- [REC] nunca versionada; recebe o resultado da edge function
-- generate-study-plan e é aprovada/rejeitada no ProposalsTab
CREATE TABLE public.study_plan_proposals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending'
    CHECK (status IN ('pending', 'approved', 'rejected')),
  mode TEXT NOT NULL CHECK (mode IN ('edital', 'questionnaire')),
  input_data JSONB NOT NULL,
  topics JSONB NOT NULL DEFAULT '[]'::jsonb,
  schedule JSONB NOT NULL DEFAULT '[]'::jsonb,
  processed_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE INDEX idx_study_plan_proposals_user_status
  ON public.study_plan_proposals (user_id, status);


-- =============================================================================
-- ANOTAÇÕES E NOTIFICAÇÕES
-- =============================================================================

-- [DDL]
CREATE TABLE public.study_notes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  subject TEXT NOT NULL,
  title TEXT NOT NULL,
  content TEXT NOT NULL DEFAULT '',
  is_pinned BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- [REC] nunca versionada; lida pelo NotificationsPopover
CREATE TABLE public.notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL,
  type TEXT NOT NULL,
  title TEXT NOT NULL,
  message TEXT NOT NULL,
  data JSONB,
  is_read BOOLEAN NOT NULL DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

CREATE INDEX idx_notifications_user_unread
  ON public.notifications (user_id, is_read, created_at DESC);


-- =============================================================================
-- INTERESSE EM PLANOS PAGOS
-- =============================================================================

-- A geração de plano de estudos com IA custa dinheiro (chamada de LLM por
-- requisição) e por isso fica desligada enquanto o site roda a custo zero
-- (ver src/config/features.ts). No lugar dela o app mostra um aviso de
-- "somente planos pagos" e um formulário de interesse, que cai aqui.
--
-- É a única tabela de captação do produto: serve para medir demanda antes de
-- ligar qualquer serviço pago.
--
-- user_id é UNIQUE de propósito — um interesse por pessoa. O app grava com
-- upsert em cima dessa restrição, então reenviar o formulário atualiza a
-- resposta em vez de acumular duplicata.
CREATE TABLE public.plan_interest (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id TEXT NOT NULL UNIQUE,
  email TEXT NOT NULL,
  whatsapp TEXT,
  concurso TEXT,
  message TEXT,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);
-- Sem CREATE INDEX: o UNIQUE em user_id já cria o índice que o RLS usa.


-- =============================================================================
-- TRIGGERS
-- =============================================================================

CREATE TRIGGER update_profiles_updated_at
  BEFORE UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_question_notes_updated_at
  BEFORE UPDATE ON public.question_notes
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_study_cycles_updated_at
  BEFORE UPDATE ON public.study_cycles
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_edital_topics_updated_at
  BEFORE UPDATE ON public.edital_topics
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_study_notes_updated_at
  BEFORE UPDATE ON public.study_notes
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_plan_interest_updated_at
  BEFORE UPDATE ON public.plan_interest
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_study_calendar_events_updated_at
  BEFORE UPDATE ON public.study_calendar_events
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

CREATE TRIGGER update_study_plan_proposals_updated_at
  BEFORE UPDATE ON public.study_plan_proposals
  FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


-- Sem equivalente ao trigger on_auth_user_created do Supabase: o profile é
-- criado pelo app no primeiro acesso autenticado (ver cabeçalho).

-- [DDL] Concede e revoga badges conforme as estatísticas do profile mudam.
-- Diferença em relação ao original: não grava mais em badge_audit, tabela
-- removida junto com o código morto por não ser lida em lugar nenhum.
CREATE OR REPLACE FUNCTION public.sync_user_badges_for_profile()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = ''
AS $$
DECLARE
  v_badge_id uuid;
BEGIN
  -- Concede badges recém-atingidas
  FOR v_badge_id IN
    SELECT b.id FROM public.badges b
    WHERE
      (CASE b.requirement_type
        WHEN 'total_points'       THEN (COALESCE(NEW.total_points, 0)       >= b.requirement_value)
        WHEN 'quizzes_completed'  THEN (COALESCE(NEW.quizzes_completed, 0)  >= b.requirement_value)
        WHEN 'flashcards_studied' THEN (COALESCE(NEW.flashcards_studied, 0) >= b.requirement_value)
        ELSE false
      END)
      AND NOT EXISTS (
        SELECT 1 FROM public.user_badges ub
        WHERE ub.user_id = NEW.user_id AND ub.badge_id = b.id
      )
  LOOP
    INSERT INTO public.user_badges (id, user_id, badge_id, unlocked_at)
    VALUES (gen_random_uuid(), NEW.user_id, v_badge_id, now());
  END LOOP;

  -- Revoga badges que o usuário deixou de cumprir
  FOR v_badge_id IN
    SELECT b.id FROM public.badges b
    JOIN public.user_badges ub ON ub.badge_id = b.id
    WHERE ub.user_id = NEW.user_id
      AND NOT (
        CASE b.requirement_type
          WHEN 'total_points'       THEN (COALESCE(NEW.total_points, 0)       >= b.requirement_value)
          WHEN 'quizzes_completed'  THEN (COALESCE(NEW.quizzes_completed, 0)  >= b.requirement_value)
          WHEN 'flashcards_studied' THEN (COALESCE(NEW.flashcards_studied, 0) >= b.requirement_value)
          ELSE false
        END
      )
  LOOP
    DELETE FROM public.user_badges
    WHERE user_id = NEW.user_id AND badge_id = v_badge_id;
  END LOOP;

  RETURN NEW;
END;
$$;

CREATE TRIGGER sync_user_badges_after_profile_update
  AFTER UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION public.sync_user_badges_for_profile();


-- =============================================================================
-- ROW LEVEL SECURITY
-- =============================================================================
-- [SUPABASE] Tudo abaixo depende de auth.user_id(). Num backend sem Supabase Auth,
-- ou se troca por Neon RLS (pg_session_jwt), ou a autorização sobe para a
-- camada de API e estas policies deixam de valer sozinhas.

ALTER TABLE public.profiles              ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.badges                ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_badges           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.quiz_attempts         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.question_notes        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.flashcards            ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.flashcard_progress    ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.concursos             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.simulados             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.simulado_questions    ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.simulado_attempts     ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_cycles          ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_blocks          ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.edital_topics         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_reviews         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_calendar_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_plan_proposals  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_notes           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.notifications         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.plan_interest         ENABLE ROW LEVEL SECURITY;

-- --- Conteúdo público: leitura liberada, sem policy de escrita --------------
-- Sem policy de INSERT/UPDATE/DELETE, o RLS nega a escrita a qualquer cliente
-- da Data API. Quem popula estas tabelas é o seed ou código servidor que
-- conecta como dono do banco, que não passa por RLS.

CREATE POLICY "Concursos são visíveis por todos"
  ON public.concursos FOR SELECT USING (true);

CREATE POLICY "Badges são visíveis por todos"
  ON public.badges FOR SELECT USING (true);

CREATE POLICY "Simulados são visíveis por todos"
  ON public.simulados FOR SELECT USING (true);

CREATE POLICY "Questões de simulado são visíveis por todos"
  ON public.simulado_questions FOR SELECT USING (true);

-- --- profiles: leitura pública, escrita do próprio ---------------------------

CREATE POLICY "Profiles são visíveis por todos"
  ON public.profiles FOR SELECT USING (true);
CREATE POLICY "Usuário cria o próprio profile"
  ON public.profiles FOR INSERT WITH CHECK (auth.user_id()::text = user_id);
CREATE POLICY "Usuário atualiza o próprio profile"
  ON public.profiles FOR UPDATE USING (auth.user_id()::text = user_id);

-- --- questions: leitura pública, escrita do autor ----------------------------

CREATE POLICY "Questões são visíveis por todos"
  ON public.questions FOR SELECT USING (true);
CREATE POLICY "Usuário autenticado cria questões"
  ON public.questions FOR INSERT WITH CHECK (auth.user_id()::text = created_by);
CREATE POLICY "Usuário atualiza as próprias questões"
  ON public.questions FOR UPDATE USING (auth.user_id()::text = created_by);
CREATE POLICY "Usuário apaga as próprias questões"
  ON public.questions FOR DELETE USING (auth.user_id()::text = created_by);

-- A policy acima libera as linhas, mas RLS só filtra o que o GRANT já deixou
-- passar. Sem este GRANT o visitante deslogado — que chega na Data API com um
-- JWT anônimo e portanto como o role `anonymous` — leva "permission denied" na
-- página /quiz, ainda que a policy diga "visíveis por todos".
--
-- O GRANT é por coluna: `ai_explanation` fica de fora porque a explicação da
-- IA é recurso de quem tem conta, e `created_by` porque identifica o autor.
-- Consequência para o app: sem sessão a query precisa listar as colunas, já
-- que "select=*" pede a tabela inteira e volta negado.
-- O role só existe depois que a Data API é habilitada no console, e este
-- arquivo roda em banco novo: sem o IF não daria para aplicar o schema antes
-- de habilitá-la.
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anonymous') THEN
    GRANT SELECT (
      id, question, options, correct_answer,
      subject, difficulty, is_official, assunto, banca, prova
    ) ON public.questions TO anonymous;
  ELSE
    RAISE NOTICE 'role "anonymous" nao existe: habilite a Data API e rode neon/migrations/20260913_questions_leitura_anonima.sql';
  END IF;
END;
$$;

-- --- flashcards: leitura pública, escrita do autor ---------------------------

CREATE POLICY "Flashcards são visíveis por todos"
  ON public.flashcards FOR SELECT USING (true);
CREATE POLICY "Usuário autenticado cria flashcards"
  ON public.flashcards FOR INSERT WITH CHECK (auth.user_id()::text = created_by);
CREATE POLICY "Usuário atualiza os próprios flashcards"
  ON public.flashcards FOR UPDATE USING (auth.user_id()::text = created_by);
CREATE POLICY "Usuário apaga os próprios flashcards"
  ON public.flashcards FOR DELETE USING (auth.user_id()::text = created_by);

-- --- Dados por usuário -------------------------------------------------------
-- quiz_attempts e user_badges eram públicos no schema original e foram
-- restringidos depois, quando o ranking global saiu do ar.

CREATE POLICY "Usuário vê as próprias tentativas de quiz"
  ON public.quiz_attempts FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário cria as próprias tentativas de quiz"
  ON public.quiz_attempts FOR INSERT WITH CHECK (auth.user_id()::text = user_id);

CREATE POLICY "Usuário vê as próprias badges"
  ON public.user_badges FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário recebe as próprias badges"
  ON public.user_badges FOR INSERT WITH CHECK (auth.user_id()::text = user_id);

CREATE POLICY "Usuário vê o próprio progresso de flashcards"
  ON public.flashcard_progress FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário cria o próprio progresso de flashcards"
  ON public.flashcard_progress FOR INSERT WITH CHECK (auth.user_id()::text = user_id);
CREATE POLICY "Usuário atualiza o próprio progresso de flashcards"
  ON public.flashcard_progress FOR UPDATE USING (auth.user_id()::text = user_id);

CREATE POLICY "Usuário vê as próprias tentativas de simulado"
  ON public.simulado_attempts FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário cria as próprias tentativas de simulado"
  ON public.simulado_attempts FOR INSERT WITH CHECK (auth.user_id()::text = user_id);

-- study_blocks não tem user_id: a posse vem do ciclo dono do bloco
CREATE POLICY "Usuário vê os próprios blocos de estudo"
  ON public.study_blocks FOR SELECT
  USING (EXISTS (SELECT 1 FROM public.study_cycles
                 WHERE id = study_blocks.cycle_id AND user_id = auth.user_id()::text));
CREATE POLICY "Usuário cria os próprios blocos de estudo"
  ON public.study_blocks FOR INSERT
  WITH CHECK (EXISTS (SELECT 1 FROM public.study_cycles
                      WHERE id = study_blocks.cycle_id AND user_id = auth.user_id()::text));
CREATE POLICY "Usuário atualiza os próprios blocos de estudo"
  ON public.study_blocks FOR UPDATE
  USING (EXISTS (SELECT 1 FROM public.study_cycles
                 WHERE id = study_blocks.cycle_id AND user_id = auth.user_id()::text));
CREATE POLICY "Usuário apaga os próprios blocos de estudo"
  ON public.study_blocks FOR DELETE
  USING (EXISTS (SELECT 1 FROM public.study_cycles
                 WHERE id = study_blocks.cycle_id AND user_id = auth.user_id()::text));

-- CRUD completo restrito ao dono, idêntico para as oito tabelas abaixo
DO $$
DECLARE
  t TEXT;
BEGIN
  FOREACH t IN ARRAY ARRAY[
    'study_cycles', 'edital_topics', 'study_reviews', 'study_calendar_events',
    'study_plan_proposals', 'study_notes', 'question_notes', 'plan_interest'
  ]
  LOOP
    EXECUTE format(
      'CREATE POLICY "Usuário vê os próprios registros" ON public.%I
         FOR SELECT USING (auth.user_id()::text = user_id)', t);
    EXECUTE format(
      'CREATE POLICY "Usuário cria os próprios registros" ON public.%I
         FOR INSERT WITH CHECK (auth.user_id()::text = user_id)', t);
    EXECUTE format(
      'CREATE POLICY "Usuário atualiza os próprios registros" ON public.%I
         FOR UPDATE USING (auth.user_id()::text = user_id)', t);
    EXECUTE format(
      'CREATE POLICY "Usuário apaga os próprios registros" ON public.%I
         FOR DELETE USING (auth.user_id()::text = user_id)', t);
  END LOOP;
END;
$$;

-- notifications: o usuário lê, marca como lida e apaga as próprias.
--
-- Não há policy de INSERT, de propósito. Notificação é gerada pelo sistema, e
-- um usuário não deve poder forjar uma para si. Sem policy de INSERT, o RLS
-- nega a escrita a qualquer cliente da Data API (anonymous/authenticated),
-- enquanto o código servidor que conecta como dono do banco continua podendo
-- inserir — donos de tabela não passam por RLS.
--
-- (No Supabase isto era "FOR INSERT TO service_role". O Neon não tem esse
--  role: os da Data API são anonymous, authenticated e authenticator.)
CREATE POLICY "Usuário vê as próprias notificações"
  ON public.notifications FOR SELECT USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário atualiza as próprias notificações"
  ON public.notifications FOR UPDATE USING (auth.user_id()::text = user_id);
CREATE POLICY "Usuário apaga as próprias notificações"
  ON public.notifications FOR DELETE USING (auth.user_id()::text = user_id);


-- =============================================================================
-- ÍNDICES POR USUÁRIO
-- =============================================================================
-- Sem FK para a tabela de auth, estes índices passam a ser a única estrutura
-- que sustenta os filtros do RLS (auth.user_id()::text = user_id) em toda leitura.

CREATE INDEX idx_user_badges_user            ON public.user_badges (user_id);
CREATE INDEX idx_question_notes_user         ON public.question_notes (user_id);
CREATE INDEX idx_flashcard_progress_user     ON public.flashcard_progress (user_id);
CREATE INDEX idx_simulado_attempts_user      ON public.simulado_attempts (user_id);
CREATE INDEX idx_study_cycles_user           ON public.study_cycles (user_id);
CREATE INDEX idx_edital_topics_user          ON public.edital_topics (user_id);
CREATE INDEX idx_study_reviews_user          ON public.study_reviews (user_id);
CREATE INDEX idx_study_notes_user            ON public.study_notes (user_id);
CREATE INDEX idx_questions_created_by        ON public.questions (created_by);
CREATE INDEX idx_flashcards_created_by       ON public.flashcards (created_by);


-- =============================================================================
-- EXCLUSÃO DE CONTA
-- =============================================================================
-- Substitui o ON DELETE CASCADE que existia via FK para auth.users. Chame ao
-- excluir uma conta, ANTES de remover o usuário no Neon Auth.
--
-- profiles sai por último: o trigger de badges lê a linha durante o UPDATE e
-- apagá-la antes deixaria user_badges inconsistente.

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

  -- Conteúdo público criado pelo usuário é preservado, apenas desassociado
  -- (equivale ao ON DELETE SET NULL que existia no baseline Supabase).
  UPDATE public.questions  SET created_by = NULL WHERE created_by = p_user_id;
  UPDATE public.flashcards SET created_by = NULL WHERE created_by = p_user_id;

  DELETE FROM public.profiles WHERE user_id = p_user_id;
END;
$$;
