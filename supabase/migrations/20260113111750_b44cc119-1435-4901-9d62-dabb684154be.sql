-- Drop and recreate the profiles_ranking view with SECURITY INVOKER
-- This ensures the view respects RLS policies from the underlying profiles table
DROP VIEW IF EXISTS public.profiles_ranking;

CREATE VIEW public.profiles_ranking
WITH (security_invoker = true)
AS
SELECT 
  user_id,
  display_name,
  total_points,
  quizzes_completed
FROM public.profiles
ORDER BY total_points DESC NULLS LAST;