-- Drop the existing overly permissive SELECT policy
DROP POLICY IF EXISTS "User badges are viewable by everyone" ON public.user_badges;

-- Create a new policy that restricts SELECT to the user's own badges
CREATE POLICY "Users can view own badges"
ON public.user_badges
FOR SELECT
USING (auth.uid() = user_id);
