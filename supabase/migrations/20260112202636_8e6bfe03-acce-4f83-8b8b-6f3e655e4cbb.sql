-- Drop the existing overly permissive SELECT policy
DROP POLICY IF EXISTS "Quiz attempts are viewable by everyone" ON public.quiz_attempts;

-- Create a new policy that restricts SELECT to the user's own records
CREATE POLICY "Users can view own quiz attempts" 
ON public.quiz_attempts 
FOR SELECT 
USING (auth.uid() = user_id);