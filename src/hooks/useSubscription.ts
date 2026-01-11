// src/hooks/useSubscription.ts

import { useState, useEffect } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

type SubscriptionStatus = 'active' | 'canceled' | 'trialing' | 'past_due' | 'incomplete' | 'unpaid' | null;

interface Subscription {
  id: string;
  status: SubscriptionStatus;
  plan_name: string;
  plan_amount: number;
  current_period_end: string;
  cancel_at_period_end: boolean;
}

export function useSubscription() {
  const { user } = useAuth();
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (!user) {
      setSubscription(null);
      setLoading(false);
      return;
    }

    fetchSubscription();
    
    // Subscription em tempo real (quando webhook atualizar)
    const channel = supabase
      .channel('subscription-changes')
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'subscriptions',
          filter: `user_id=eq.${user.id}`,
        },
        (payload) => {
          console.log('Assinatura atualizada em tempo real:', payload);
          if (payload.new) {
            setSubscription(payload.new as Subscription);
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [user]);

  const fetchSubscription = async () => {
    try {
      setLoading(true);
      setError(null);

      if (!user) {
        setSubscription(null);
        return;
      }

      const { data, error: subError } = await supabase
        .from('subscriptions')
        .select('id, status, plan_name, plan_amount, current_period_end, cancel_at_period_end')
        .eq('user_id', user.id)
        .single();

      if (subError) {
        if (subError.code === 'PGRST116') {
          // Sem assinatura
          setSubscription(null);
        } else {
          console.error('Erro ao buscar assinatura:', subError);
          setError('Erro ao verificar assinatura');
        }
      } else {
        setSubscription(data as Subscription);
      }
    } catch (err) {
      console.error('Erro:', err);
      setError('Erro ao verificar assinatura');
    } finally {
      setLoading(false);
    }
  };

  // Funções auxiliares
  const hasActiveSubscription = (): boolean => {
    if (!subscription) return false;
    return subscription.status === 'active' || subscription.status === 'trialing';
  };

  const isSubscriptionValid = (): boolean => {
    if (!subscription) return false;
    
    const validStatuses: SubscriptionStatus[] = ['active', 'trialing'];
    const isStatusValid = validStatuses.includes(subscription.status);
    
    // Verifica se não expirou (mesmo cancelada, ainda tem acesso até o fim do período)
    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const hasAccess = periodEnd > now;
    
    return isStatusValid && hasAccess;
  };

  const isPremium = (): boolean => {
    return isSubscriptionValid();
  };

  const daysUntilExpiration = (): number | null => {
    if (!subscription) return null;
    
    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const diffTime = periodEnd.getTime() - now.getTime();
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    
    return diffDays > 0 ? diffDays : 0;
  };

  return {
    subscription,
    loading,
    error,
    hasActiveSubscription,
    isSubscriptionValid,
    isPremium,
    daysUntilExpiration,
    refetch: fetchSubscription,
  };
}