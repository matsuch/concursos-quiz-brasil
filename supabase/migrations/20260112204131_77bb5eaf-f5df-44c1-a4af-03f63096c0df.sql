-- Drop the restrictive policy we just created
DROP POLICY IF EXISTS "Users can view own duels" ON public.duels;

-- Create a more nuanced policy:
-- 1. Users can see duels they participate in (player1_id or player2_id)
-- 2. Authenticated users can see 'waiting' duels for matchmaking purposes
CREATE POLICY "Users can view own duels or waiting duels for matchmaking"
ON public.duels
FOR SELECT
USING (
  auth.uid() = player1_id 
  OR auth.uid() = player2_id 
  OR (status = 'waiting' AND auth.uid() IS NOT NULL)
);
