-- Drop and recreate the user_subscription_details view with SECURITY INVOKER
-- This ensures the view respects RLS policies from the underlying subscriptions table
DROP VIEW IF EXISTS public.user_subscription_details;

CREATE VIEW public.user_subscription_details
WITH (security_invoker = true)
AS
SELECT 
  s.id,
  s.user_id,
  s.plan_name,
  s.plan_amount,
  s.currency,
  s.status,
  CASE 
    WHEN s.status = 'active' THEN 'Ativo'
    WHEN s.status = 'canceled' THEN 'Cancelado'
    WHEN s.status = 'past_due' THEN 'Pagamento Pendente'
    WHEN s.status = 'trialing' THEN 'Período de Teste'
    ELSE s.status
  END as status_display,
  s.current_period_start,
  s.current_period_end,
  s.cancel_at_period_end,
  s.canceled_at,
  s.trial_end,
  s.stripe_customer_id,
  s.stripe_subscription_id,
  s.stripe_price_id,
  s.created_at,
  s.updated_at,
  u.email
FROM public.subscriptions s
LEFT JOIN auth.users u ON s.user_id = u.id;