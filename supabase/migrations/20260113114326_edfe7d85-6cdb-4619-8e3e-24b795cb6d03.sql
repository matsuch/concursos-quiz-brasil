-- Add INSERT policy: Only service role (webhook) can create subscriptions
-- Users cannot insert subscriptions directly - this must go through Stripe checkout
CREATE POLICY "Service role can insert subscriptions"
ON public.subscriptions
FOR INSERT
TO service_role
WITH CHECK (true);

-- Add DELETE policy: Prevent deletion - subscriptions should be cancelled via Stripe portal, not deleted
-- Service role can delete if needed for cleanup
CREATE POLICY "Service role can delete subscriptions"
ON public.subscriptions
FOR DELETE
TO service_role
USING (true);