-- Enable RLS on user_progress table
ALTER TABLE public.user_progress ENABLE ROW LEVEL SECURITY;

-- Policy for users to view their own video progress
CREATE POLICY "Users can view own video progress"
ON public.user_progress
FOR SELECT
USING (auth.uid() = user_id);

-- Policy for users to insert their own video progress
CREATE POLICY "Users can insert own video progress"
ON public.user_progress
FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- Policy for users to update their own video progress
CREATE POLICY "Users can update own video progress"
ON public.user_progress
FOR UPDATE
USING (auth.uid() = user_id);
