import { useState, useEffect, createContext, useContext, ReactNode } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

type SubscriptionStatus = 'active' | 'canceled' | 'trialing' | 'past_due' | 'incomplete' | 'unpaid' | null;

// Defina os planos disponíveis e suas features
export type PlanName = 'Basic' | 'Standard' | 'Premium' | null;

export const PLAN_FEATURES: Record<Exclude<PlanName, null>, string[]> = {
  Basic: ['flashcards', 'quiz'],
  Standard: ['flashcards', 'quiz', 'flashcardsCustom', 'duelo'],
  Premium: ['flashcards', 'quiz', 'flashcardsCustom', 'duelo', 'simulado', 'ranking'],
};

// Hierarquia de planos (índice maior = plano superior)
export const PLAN_HIERARCHY: Exclude<PlanName, null>[] = ['Basic', 'Standard', 'Premium'];

interface Subscription {
  id: string;
  status: SubscriptionStatus;
  plan_name: string;
  plan_amount: number;
  current_period_end: string;
  cancel_at_period_end: boolean;
}

interface SubscriptionContextType {
  subscription: Subscription | null;
  loading: boolean;
  error: string | null;
  // Verifica se tem qualquer assinatura ativa
  hasActiveSubscription: () => boolean;
  // Verifica se a assinatura está válida (ativa + dentro do período)
  isSubscriptionValid: () => boolean;
  // Verifica se é premium (qualquer plano ativo)
  isPremium: () => boolean;
  // Retorna o nome do plano atual
  getCurrentPlan: () => PlanName;
  // Verifica se o plano atual tem acesso a uma feature específica
  hasFeature: (feature: string) => boolean;
  // Verifica se o plano atual é igual ou superior ao plano requerido
  hasPlanOrHigher: (requiredPlan: Exclude<PlanName, null>) => boolean;
  // Retorna o plano mínimo necessário para uma feature
  getRequiredPlan: (feature: string) => Exclude<PlanName, null> | null;
  // Dias até expirar
  daysUntilExpiration: () => number | null;
  // Atualizar dados
  refetch: () => Promise<void>;
}

const SubscriptionContext = createContext<SubscriptionContextType | undefined>(undefined);

export function SubscriptionProvider({ children }: { children: ReactNode }) {
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
    
    // Real-time subscription updates
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
        (payload: any) => {
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
          // Nenhuma assinatura encontrada
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

  const hasActiveSubscription = (): boolean => {
    if (!subscription) return false;
    return subscription.status === 'active' || subscription.status === 'trialing';
  };

  const isSubscriptionValid = (): boolean => {
    if (!subscription) return false;
    
    const validStatuses: SubscriptionStatus[] = ['active', 'trialing'];
    const isStatusValid = validStatuses.includes(subscription.status);
    
    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const hasAccess = periodEnd > now;
    
    return isStatusValid && hasAccess;
  };

  const isPremium = (): boolean => {
    return isSubscriptionValid();
  };

  const getCurrentPlan = (): PlanName => {
    if (!isSubscriptionValid() || !subscription) return null;
    
    // Normaliza o nome do plano
    const planName = subscription.plan_name?.toLowerCase();
    if (planName?.includes('premium')) return 'Premium';
    if (planName?.includes('standard')) return 'Standard';
    if (planName?.includes('basic')) return 'Basic';
    
    // Fallback baseado no valor
    if (subscription.plan_amount >= 49) return 'Premium';
    if (subscription.plan_amount >= 29) return 'Standard';
    return 'Basic';
  };

  const hasFeature = (feature: string): boolean => {
    const plan = getCurrentPlan();
    if (!plan) return false;
    return PLAN_FEATURES[plan]?.includes(feature) ?? false;
  };

  const hasPlanOrHigher = (requiredPlan: Exclude<PlanName, null>): boolean => {
    const currentPlan = getCurrentPlan();
    if (!currentPlan) return false;
    
    const currentIndex = PLAN_HIERARCHY.indexOf(currentPlan);
    const requiredIndex = PLAN_HIERARCHY.indexOf(requiredPlan);
    
    return currentIndex >= requiredIndex;
  };

  const getRequiredPlan = (feature: string): Exclude<PlanName, null> | null => {
    for (const plan of PLAN_HIERARCHY) {
      if (PLAN_FEATURES[plan]?.includes(feature)) {
        return plan;
      }
    }
    return null;
  };

  const daysUntilExpiration = (): number | null => {
    if (!subscription) return null;
    
    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const diffTime = periodEnd.getTime() - now.getTime();
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    
    return diffDays > 0 ? diffDays : 0;
  };

  const value: SubscriptionContextType = {
    subscription,
    loading,
    error,
    hasActiveSubscription,
    isSubscriptionValid,
    isPremium,
    getCurrentPlan,
    hasFeature,
    hasPlanOrHigher,
    getRequiredPlan,
    daysUntilExpiration,
    refetch: fetchSubscription,
  };

  return (
    <SubscriptionContext.Provider value={value}>
      {children}
    </SubscriptionContext.Provider>
  );
}

export function useSubscription() {
  const context = useContext(SubscriptionContext);
  if (context === undefined) {
    throw new Error('useSubscription must be used within a SubscriptionProvider');
  }
  return context;
}
