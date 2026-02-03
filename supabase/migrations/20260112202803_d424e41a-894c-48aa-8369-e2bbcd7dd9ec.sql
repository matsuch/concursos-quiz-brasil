-- Drop and recreate views with SECURITY INVOKER

-- Fix profiles_ranking view
DROP VIEW IF EXISTS public.profiles_ranking;

CREATE VIEW public.profiles_ranking 
WITH (security_invoker = true)
AS
SELECT 
    user_id,
    display_name,
    total_points,
    quizzes_completed
FROM profiles;

-- Fix user_subscription_details view
DROP VIEW IF EXISTS public.user_subscription_details;

CREATE VIEW public.user_subscription_details 
WITH (security_invoker = true)
AS
SELECT 
    s.id,
    s.user_id,
    s.stripe_customer_id,
    s.stripe_subscription_id,
    s.stripe_price_id,
    s.status,
    s.plan_name,
    s.plan_amount,
    s.currency,
    s.current_period_start,
    s.current_period_end,
    s.cancel_at_period_end,
    s.canceled_at,
    s.trial_end,
    s.created_at,
    s.updated_at,
    NULL::text AS email,
    CASE
        WHEN ((s.status = 'active'::text) AND (s.cancel_at_period_end = true)) THEN 'Cancelando'::text
        WHEN (s.status = 'active'::text) THEN 'Ativa'::text
        WHEN (s.status = 'trialing'::text) THEN 'Período de Teste'::text
        WHEN (s.status = 'canceled'::text) THEN 'Cancelada'::text
        WHEN (s.status = 'past_due'::text) THEN 'Pagamento Atrasado'::text
        ELSE 'Inativa'::text
    END AS status_display
FROM subscriptions s;
