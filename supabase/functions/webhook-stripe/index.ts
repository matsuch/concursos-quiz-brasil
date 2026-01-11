// supabase/functions/stripe-webhook/index.ts

import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0'
import Stripe from 'https://esm.sh/stripe@14.5.0?target=deno'

const stripe = new Stripe(Deno.env.get('STRIPE_SECRET_KEY') || '', {
  apiVersion: '2023-10-16',
  httpClient: Stripe.createFetchHttpClient(),
})

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
)

serve(async (req) => {
  const signature = req.headers.get('stripe-signature')
  const webhookSecret = Deno.env.get('STRIPE_WEBHOOK_SECRET')

  if (!signature || !webhookSecret) {
    return new Response('Webhook signature missing', { status: 400 })
  }

  try {
    const body = await req.text()
    const event = await stripe.webhooks.constructEventAsync(
      body,
      signature,
      webhookSecret
    )

    console.log('Webhook recebido:', event.type)

    switch (event.type) {
      case 'customer.subscription.created':
      case 'customer.subscription.updated':
        await handleSubscriptionUpdate(event.data.object as Stripe.Subscription)
        break

      case 'customer.subscription.deleted':
        await handleSubscriptionDeleted(event.data.object as Stripe.Subscription)
        break

      case 'invoice.payment_succeeded':
        await handlePaymentSucceeded(event.data.object as Stripe.Invoice)
        break

      case 'invoice.payment_failed':
        await handlePaymentFailed(event.data.object as Stripe.Invoice)
        break

      default:
        console.log(`Evento não tratado: ${event.type}`)
    }

    return new Response(JSON.stringify({ received: true }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' },
    })

  } catch (error) {
    console.error('Erro no webhook:', error)
    return new Response(
      JSON.stringify({ error: error.message }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    )
  }
})

async function handleSubscriptionUpdate(subscription: Stripe.Subscription) {
  try {
    const customerId = subscription.customer as string
    const priceId = subscription.items.data[0]?.price.id
    
    // Buscar customer no Stripe para pegar o email
    const customer = await stripe.customers.retrieve(customerId) as Stripe.Customer
    
    if (!customer.email) {
      console.error('Customer sem email:', customerId)
      return
    }

    console.log('Processando assinatura para email:', customer.email)
    
    // Buscar usuário pelo email no Supabase Auth
    const { data: { users }, error: userError } = await supabase.auth.admin.listUsers()
    
    if (userError) {
      console.error('Erro ao buscar usuários:', userError)
      return
    }

    const user = users.find(u => u.email === customer.email)
    
    if (!user) {
      console.error('Usuário não encontrado no Supabase para email:', customer.email)
      return
    }

    console.log('Usuário encontrado:', user.id)
    
    // Buscar preço para pegar o valor
    const price = await stripe.prices.retrieve(priceId)

    // Preparar dados da assinatura
    const subscriptionData = {
      user_id: user.id,
      stripe_customer_id: customerId,
      stripe_subscription_id: subscription.id,
      stripe_price_id: priceId,
      status: subscription.status,
      plan_name: price.nickname || price.product?.toString() || 'Plano Premium',
      plan_amount: (price.unit_amount || 0) / 100,
      currency: price.currency,
      current_period_start: new Date(subscription.current_period_start * 1000).toISOString(),
      current_period_end: new Date(subscription.current_period_end * 1000).toISOString(),
      cancel_at_period_end: subscription.cancel_at_period_end,
      canceled_at: subscription.canceled_at ? new Date(subscription.canceled_at * 1000).toISOString() : null,
      trial_end: subscription.trial_end ? new Date(subscription.trial_end * 1000).toISOString() : null,
      updated_at: new Date().toISOString(),
    }

    // Verificar se já existe um registro
    const { data: existing } = await supabase
      .from('subscriptions')
      .select('id')
      .eq('stripe_subscription_id', subscription.id)
      .single()

    if (existing) {
      // Atualizar registro existente
      const { error } = await supabase
        .from('subscriptions')
        .update(subscriptionData)
        .eq('stripe_subscription_id', subscription.id)

      if (error) {
        console.error('Erro ao atualizar assinatura:', error)
      } else {
        console.log('✅ Assinatura atualizada:', subscription.id)
      }
    } else {
      // Criar novo registro
      const { error } = await supabase
        .from('subscriptions')
        .insert(subscriptionData)

      if (error) {
        console.error('Erro ao criar assinatura:', error)
      } else {
        console.log('✅ Assinatura criada:', subscription.id)
      }
    }

  } catch (error) {
    console.error('Erro em handleSubscriptionUpdate:', error)
  }
}

async function handleSubscriptionDeleted(subscription: Stripe.Subscription) {
  const { error } = await supabase
    .from('subscriptions')
    .update({
      status: 'canceled',
      canceled_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .eq('stripe_subscription_id', subscription.id)

  if (error) {
    console.error('Erro ao deletar assinatura:', error)
  } else {
    console.log('✅ Assinatura deletada:', subscription.id)
  }
}

async function handlePaymentSucceeded(invoice: Stripe.Invoice) {
  if (!invoice.subscription) return

  const { error } = await supabase
    .from('subscriptions')
    .update({
      status: 'active',
      updated_at: new Date().toISOString(),
    })
    .eq('stripe_subscription_id', invoice.subscription)

  if (error) {
    console.error('Erro ao atualizar status de pagamento:', error)
  } else {
    console.log('✅ Pagamento confirmado para:', invoice.subscription)
  }
}

async function handlePaymentFailed(invoice: Stripe.Invoice) {
  if (!invoice.subscription) return

  const { error } = await supabase
    .from('subscriptions')
    .update({
      status: 'past_due',
      updated_at: new Date().toISOString(),
    })
    .eq('stripe_subscription_id', invoice.subscription)

  if (error) {
    console.error('Erro ao atualizar status de pagamento falho:', error)
  } else {
    console.log('✅ Pagamento falhou para:', invoice.subscription)
  }
}