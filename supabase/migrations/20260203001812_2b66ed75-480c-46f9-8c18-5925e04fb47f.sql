-- Tabela para ciclos de estudo
CREATE TABLE public.study_cycles (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID NOT NULL,
  name TEXT NOT NULL,
  duration_days INTEGER NOT NULL DEFAULT 7,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- Tabela para blocos de estudo dentro de um ciclo
CREATE TABLE public.study_blocks (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  cycle_id UUID NOT NULL REFERENCES public.study_cycles(id) ON DELETE CASCADE,
  subject TEXT NOT NULL,
  duration_minutes INTEGER NOT NULL DEFAULT 60,
  order_index INTEGER NOT NULL,
  color TEXT DEFAULT '#3b82f6',
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- Tabela para controle de edital (matérias e tópicos)
CREATE TABLE public.edital_topics (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID NOT NULL,
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

-- Tabela para revisões periódicas
CREATE TABLE public.study_reviews (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID NOT NULL,
  topic_id UUID REFERENCES public.edital_topics(id) ON DELETE CASCADE,
  subject TEXT NOT NULL,
  topic_name TEXT NOT NULL,
  review_type TEXT NOT NULL CHECK (review_type IN ('24h', '7d', '30d')),
  scheduled_date DATE NOT NULL,
  is_completed BOOLEAN DEFAULT false,
  completed_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

-- Habilitar RLS
ALTER TABLE public.study_cycles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_blocks ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.edital_topics ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_reviews ENABLE ROW LEVEL SECURITY;

-- Políticas para study_cycles
CREATE POLICY "Users can view own study cycles" ON public.study_cycles FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own study cycles" ON public.study_cycles FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own study cycles" ON public.study_cycles FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete own study cycles" ON public.study_cycles FOR DELETE USING (auth.uid() = user_id);

-- Políticas para study_blocks
CREATE POLICY "Users can view own study blocks" ON public.study_blocks FOR SELECT 
  USING (EXISTS (SELECT 1 FROM public.study_cycles WHERE id = study_blocks.cycle_id AND user_id = auth.uid()));
CREATE POLICY "Users can create own study blocks" ON public.study_blocks FOR INSERT 
  WITH CHECK (EXISTS (SELECT 1 FROM public.study_cycles WHERE id = study_blocks.cycle_id AND user_id = auth.uid()));
CREATE POLICY "Users can update own study blocks" ON public.study_blocks FOR UPDATE 
  USING (EXISTS (SELECT 1 FROM public.study_cycles WHERE id = study_blocks.cycle_id AND user_id = auth.uid()));
CREATE POLICY "Users can delete own study blocks" ON public.study_blocks FOR DELETE 
  USING (EXISTS (SELECT 1 FROM public.study_cycles WHERE id = study_blocks.cycle_id AND user_id = auth.uid()));

-- Políticas para edital_topics
CREATE POLICY "Users can view own edital topics" ON public.edital_topics FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own edital topics" ON public.edital_topics FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own edital topics" ON public.edital_topics FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete own edital topics" ON public.edital_topics FOR DELETE USING (auth.uid() = user_id);

-- Políticas para study_reviews
CREATE POLICY "Users can view own study reviews" ON public.study_reviews FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own study reviews" ON public.study_reviews FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own study reviews" ON public.study_reviews FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete own study reviews" ON public.study_reviews FOR DELETE USING (auth.uid() = user_id);

-- Trigger para atualizar updated_at
CREATE TRIGGER update_study_cycles_updated_at BEFORE UPDATE ON public.study_cycles FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER update_edital_topics_updated_at BEFORE UPDATE ON public.edital_topics FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();