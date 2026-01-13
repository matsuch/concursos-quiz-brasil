-- Fix search_path for update_total_concursos function
CREATE OR REPLACE FUNCTION public.update_total_concursos()
 RETURNS trigger
 LANGUAGE plpgsql
 SET search_path = ''
AS $function$
BEGIN
  UPDATE public.estatisticas
  SET total_concursos = (SELECT COUNT(*) FROM public.concursos),
      updated_at = now();
  RETURN NULL;
END;
$function$;

-- Fix search_path for update_total_questoes function
CREATE OR REPLACE FUNCTION public.update_total_questoes()
 RETURNS trigger
 LANGUAGE plpgsql
 SET search_path = ''
AS $function$
BEGIN
  UPDATE public.estatisticas
  SET total_questoes = (SELECT COUNT(*) FROM public.questions),
      updated_at = now();
  RETURN NULL;
END;
$function$;

-- Fix search_path for update_updated_at_column function
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
 RETURNS trigger
 LANGUAGE plpgsql
 SET search_path = ''
AS $function$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$function$;

-- Fix search_path for sync_user_badges_for_profile function
CREATE OR REPLACE FUNCTION public.sync_user_badges_for_profile()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
 SET search_path = ''
AS $function$
DECLARE
  v_badge_id uuid;
BEGIN
  -- Insert badges that user now qualifies for and doesn't have
  FOR v_badge_id IN
    SELECT b.id FROM public.badges b
    WHERE
      (CASE b.requirement_type
        WHEN 'total_points' THEN (COALESCE(NEW.total_points,0) >= b.requirement_value)
        WHEN 'quizzes_completed' THEN (COALESCE(NEW.quizzes_completed,0) >= b.requirement_value)
        WHEN 'duels_won' THEN (COALESCE(NEW.duels_won,0) >= b.requirement_value)
        WHEN 'duels_played' THEN (COALESCE(NEW.duels_played,0) >= b.requirement_value)
        WHEN 'flashcards_studied' THEN (COALESCE(NEW.flashcards_studied,0) >= b.requirement_value)
        ELSE false
      END)
      AND NOT EXISTS (
        SELECT 1 FROM public.user_badges ub WHERE ub.user_id = NEW.user_id AND ub.badge_id = b.id
      )
  LOOP
    INSERT INTO public.user_badges(id, user_id, badge_id, unlocked_at)
    VALUES (gen_random_uuid(), NEW.user_id, v_badge_id, now());

    INSERT INTO public.badge_audit(user_id, badge_id, action, reason)
    VALUES (NEW.user_id, v_badge_id, 'granted', 'met requirement on profile update');
  END LOOP;

  -- Revoke (delete) badges that the user no longer qualifies for
  FOR v_badge_id IN
    SELECT b.id FROM public.badges b
    JOIN public.user_badges ub ON ub.badge_id = b.id
    WHERE ub.user_id = NEW.user_id
      AND NOT (
        CASE b.requirement_type
          WHEN 'total_points' THEN (COALESCE(NEW.total_points,0) >= b.requirement_value)
          WHEN 'quizzes_completed' THEN (COALESCE(NEW.quizzes_completed,0) >= b.requirement_value)
          WHEN 'duels_won' THEN (COALESCE(NEW.duels_won,0) >= b.requirement_value)
          WHEN 'duels_played' THEN (COALESCE(NEW.duels_played,0) >= b.requirement_value)
          WHEN 'flashcards_studied' THEN (COALESCE(NEW.flashcards_studied,0) >= b.requirement_value)
          ELSE false
        END
      )
  LOOP
    DELETE FROM public.user_badges WHERE user_id = NEW.user_id AND badge_id = v_badge_id;

    INSERT INTO public.badge_audit(user_id, badge_id, action, reason)
    VALUES (NEW.user_id, v_badge_id, 'revoked', 'no longer meets requirement on profile update');
  END LOOP;

  RETURN NEW;
END;
$function$;

-- Fix search_path for get_profiles_ranking function
CREATE OR REPLACE FUNCTION public.get_profiles_ranking()
 RETURNS TABLE(id uuid, user_id uuid, display_name text, total_points integer)
 LANGUAGE sql
 SECURITY DEFINER
 SET search_path = ''
AS $function$
  SELECT id, user_id, display_name, total_points
  FROM public.profiles
$function$;