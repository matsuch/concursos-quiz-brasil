// supabase/functions/cancel-subscription/index.ts

import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'
import Stripe from 'https://esm.sh/stripe@14.5.0?target=deno'

const stripeKey = Deno.env.get('STRIPE_SECRET_KEY_PRD') || Deno.env.get('STRIPE_SECRET_KEY') || ''

if (!stripeKey) {
  throw new Error('STRIPE_SECRET_KEY_PRD or STRIPE_SECRET_KEY is not set')
}

const stripe = new Stripe(stripeKey, {
  apiVersion: '2023-10-16',
  httpClient: Stripe.createFetchHttpClient(),
})

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
}

serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders })
  }

  if (req.method !== 'POST') {
    return new Response(
      JSON.stringify({ error: 'Método não permitido' }),
      { status: 405, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    )
  }

  try {
    const authHeader = req.headers.get('Authorization')
    
    console.log('Authorization header:', authHeader ? 'presente' : 'ausente')

    if (!authHeader) {
      return new Response(
        JSON.stringify({ error: 'Authorization header ausente' }),
        { status: 401, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      )
    }

    // Criar cliente Supabase com SERVICE_ROLE_KEY para operações admin
    const supabaseAdmin = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
    )

    // Verificar o usuário usando o token JWT
    const token = authHeader.replace('Bearer ', '')
    const { data: { user }, error: authError } = await supabaseAdmin.auth.getUser(token)

    console.log('User ID:', user?.id, 'Auth error:', authError?.message)

    if (authError || !user) {
      return new Response(
        JSON.stringify({ 
          error: 'Não autorizado',
          details: authError?.message 
        }),
        { status: 401, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      )
    }

    const { data: subscription, error: subError } = await supabaseAdmin
      .from('subscriptions')
      .select('*')
      .eq('user_id', user.id)
      .single()

    console.log('Subscription:', subscription?.id, 'Error:', subError?.message)

    if (subError || !subscription) {
      return new Response(
        JSON.stringify({ 
          error: 'Assinatura não encontrada',
          details: subError?.message 
        }),
        { status: 404, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      )
    }

    if (subscription.status === 'canceled') {
      return new Response(
        JSON.stringify({
          error: 'Assinatura já cancelada',
          subscription: {
            status: subscription.status,
            current_period_end: subscription.current_period_end,
          },
        }),
        { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      )
    }

    if (subscription.cancel_at_period_end) {
      return new Response(
        JSON.stringify({
          error: 'Assinatura já programada para cancelamento',
          subscription: {
            cancel_at_period_end: true,
            current_period_end: subscription.current_period_end,
          },
        }),
        { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      )
    }

    console.log('Cancelando subscription no Stripe:', subscription.stripe_subscription_id)

    const updatedSubscription = await stripe.subscriptions.update(
      subscription.stripe_subscription_id,
      { cancel_at_period_end: true }
    )

    const { error: updateError } = await supabaseAdmin
      .from('subscriptions')
      .update({
        cancel_at_period_end: true,
        canceled_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      })
      .eq('user_id', user.id)

    if (updateError) {
      console.error('Erro ao atualizar subscription no banco:', updateError)
    }

    return new Response(
      JSON.stringify({
        success: true,
        message: 'Assinatura cancelada com sucesso. Acesso mantido até o fim do período pago.',
        subscription: {
          id: updatedSubscription.id,
          status: updatedSubscription.status,
          cancel_at_period_end: updatedSubscription.cancel_at_period_end,
          current_period_end: new Date(
            updatedSubscription.current_period_end * 1000
          ).toISOString(),
        },
      }),
      { status: 200, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    )
  } catch (error) {
    console.error('Erro no cancelamento:', error)
    return new Response(
      JSON.stringify({
        error: 'Erro interno ao cancelar assinatura',
        details: error instanceof Error ? error.message : 'Erro desconhecido',
      }),
      { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    )
  }
})