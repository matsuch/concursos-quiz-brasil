-- Drop the existing overly permissive SELECT policy
DROP POLICY IF EXISTS "Duels are viewable by everyone" ON public.duels;

-- Create a new policy that restricts SELECT to only the participants of each duel
CREATE POLICY "Users can view own duels"
ON public.duels
FOR SELECT
USING (auth.uid() = player1_id OR auth.uid() = player2_id);
