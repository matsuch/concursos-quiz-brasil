-- Create table for question annotations
CREATE TABLE public.question_notes (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID NOT NULL,
  question_id UUID NOT NULL REFERENCES public.questions(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  UNIQUE(user_id, question_id)
);

-- Enable RLS
ALTER TABLE public.question_notes ENABLE ROW LEVEL SECURITY;

-- RLS Policies
CREATE POLICY "Users can view own question notes"
  ON public.question_notes FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can create own question notes"
  ON public.question_notes FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own question notes"
  ON public.question_notes FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete own question notes"
  ON public.question_notes FOR DELETE
  USING (auth.uid() = user_id);

-- Trigger for updated_at
CREATE TRIGGER update_question_notes_updated_at
  BEFORE UPDATE ON public.question_notes
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();