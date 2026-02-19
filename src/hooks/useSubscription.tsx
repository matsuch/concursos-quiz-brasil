import { useState, useEffect, createContext, useContext, ReactNode, useCallback, useMemo, useRef } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

type SubscriptionStatus = 'active' | 'canceled' | 'trialing' | 'past_due' | 'incomplete' | 'unpaid' | null;

// Defina os planos disponíveis e suas features
export type PlanName = 'Básico' | 'Avançado' | null;

export const PLAN_FEATURES: Record<Exclude<PlanName, null>, string[]> = {
  'Básico': ['flashcards', 'quiz', 'planner'],
  'Avançado': ['flashcards', 'quiz', 'planner', 'flashcardsCustom', 'simulado', 'ai_explanation', 'ranking'],
};

// Hierarquia de planos (índice maior = plano superior)
export const PLAN_HIERARCHY: Exclude<PlanName, null>[] = ['Básico', 'Avançado'];

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
  initialized: boolean;
  hasActiveSubscription: () => boolean;
  isSubscriptionValid: () => boolean;
  isPremium: () => boolean;
  getCurrentPlan: () => PlanName;
  hasFeature: (feature: string) => boolean;
  hasPlanOrHigher: (requiredPlan: Exclude<PlanName, null>) => boolean;
  getRequiredPlan: (feature: string) => Exclude<PlanName, null> | null;
  daysUntilExpiration: () => number | null;
  refetch: () => Promise<void>;
}

const SubscriptionContext = createContext<SubscriptionContextType | undefined>(undefined);

// Função auxiliar para normalizar strings removendo acentos
function normalizeString(str: string): string {
  if (!str) return '';
  return str
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, ''); // Remove acentos
}

export function SubscriptionProvider({ children }: { children: ReactNode }) {
  const { user } = useAuth();
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [initialized, setInitialized] = useState(false);
  
  // Use ref para evitar loops infinitos
  const fetchInProgress = useRef(false);

  const fetchSubscription = useCallback(async () => {
    // Evita chamadas simultâneas
    if (fetchInProgress.current) return;
    
    try {
      fetchInProgress.current = true;
      setLoading(true);
      setError(null);

      if (!user) {
        setSubscription(null);
        setInitialized(true);
        return;
      }

      const { data, error: subError } = await supabase
        .from('subscriptions')
        .select('id, status, plan_name, plan_amount, current_period_end, cancel_at_period_end')
        .eq('user_id', user.id)
        .maybeSingle(); // Usar maybeSingle em vez de single para evitar erro quando não existe

      if (subError) {
        console.error('Erro ao buscar assinatura:', subError);
        setError('Erro ao verificar assinatura');
        setSubscription(null);
      } else {
        setSubscription(data as Subscription);
        console.log('📦 Assinatura carregada:', data ? {
          plan_name: data.plan_name,
          status: data.status,
          amount: data.plan_amount,
          period_end: data.current_period_end
        } : 'Nenhuma assinatura');
      }
    } catch (err) {
      console.error('Erro:', err);
      setError('Erro ao verificar assinatura');
      setSubscription(null);
    } finally {
      setLoading(false);
      setInitialized(true);
      fetchInProgress.current = false;
    }
  }, [user]);

  // Carrega assinatura quando usuário muda
  useEffect(() => {
    fetchSubscription();
  }, [fetchSubscription]);

  // Real-time subscription updates
  useEffect(() => {
    if (!user) return;

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
          } else if (payload.old) {
            // Se foi deletada
            setSubscription(null);
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [user]);

  const hasActiveSubscription = useCallback((): boolean => {
    if (!subscription) return false;
    return subscription.status === 'active' || subscription.status === 'trialing';
  }, [subscription]);

  const isSubscriptionValid = useCallback((): boolean => {
    if (!subscription) {
      console.log('❌ isSubscriptionValid: Sem subscription');
      return false;
    }

    const validStatuses: SubscriptionStatus[] = ['active', 'trialing'];
    const isStatusValid = validStatuses.includes(subscription.status);

    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const hasAccess = periodEnd > now;

    console.log('🔍 isSubscriptionValid:', {
      status: subscription.status,
      isStatusValid,
      periodEnd: periodEnd.toISOString(),
      now: now.toISOString(),
      hasAccess,
      isValid: isStatusValid && hasAccess
    });

    return isStatusValid && hasAccess;
  }, [subscription]);

  const isPremium = useCallback((): boolean => {
    return isSubscriptionValid();
  }, [isSubscriptionValid]);

  const getCurrentPlan = useCallback((): PlanName => {
    if (!isSubscriptionValid() || !subscription) {
      console.log('❌ getCurrentPlan: Assinatura não válida ou não existe');
      return null;
    }

    console.log('📦 getCurrentPlan - Subscription:', {
      plan_name: subscription.plan_name,
      plan_amount: subscription.plan_amount,
      status: subscription.status,
      current_period_end: subscription.current_period_end
    });

    const planName = subscription.plan_name;
    
    // Se não tem plan_name, usa fallback
    if (!planName) {
      console.log('⚠️ getCurrentPlan: plan_name vazio, usando fallback por valor');
      return subscription.plan_amount >= 1960 ? 'Avançado' : 'Básico';
    }

    const normalized = normalizeString(planName);
    console.log('🔍 getCurrentPlan - Original:', planName, 'Normalized:', normalized);

    // Verifica por "avançado" ou "avancado" (normalizado)
    if (normalized.includes('avancado')) {
      console.log('✅ getCurrentPlan: Detectado Avançado');
      return 'Avançado';
    }

    // Verifica por "básico" ou "basico" (normalizado)
    if (normalized.includes('basico')) {
      console.log('✅ getCurrentPlan: Detectado Básico');
      return 'Básico';
    }

    // Fallback baseado no valor
    console.log('⚠️ getCurrentPlan: Usando fallback por valor');
    return subscription.plan_amount >= 1960 ? 'Avançado' : 'Básico';
  }, [subscription, isSubscriptionValid]);

  const hasFeature = useCallback((feature: string): boolean => {
    const plan = getCurrentPlan();
    if (!plan) {
      console.log(`❌ hasFeature: Sem plano ativo, feature "${feature}" não disponível`);
      return false;
    }

    const hasAccess = PLAN_FEATURES[plan]?.includes(feature) ?? false;
    console.log(`🔍 hasFeature: Feature "${feature}" no plano "${plan}": ${hasAccess ? '✅' : '❌'}`);
    return hasAccess;
  }, [getCurrentPlan]);

  const hasPlanOrHigher = useCallback((requiredPlan: Exclude<PlanName, null>): boolean => {
    console.log(`🔍 hasPlanOrHigher: Verificando se usuário tem plano ${requiredPlan} ou superior`);
    
    const currentPlan = getCurrentPlan();
    console.log('🔍 hasPlanOrHigher - Current plan:', currentPlan);

    if (!currentPlan) {
      console.log('❌ hasPlanOrHigher: Sem plano ativo');
      return false;
    }

    const currentIndex = PLAN_HIERARCHY.indexOf(currentPlan);
    const requiredIndex = PLAN_HIERARCHY.indexOf(requiredPlan);

    console.log('🔍 hasPlanOrHigher - Índices:', {
      currentPlan,
      currentIndex,
      requiredPlan,
      requiredIndex,
      hierarchy: PLAN_HIERARCHY
    });

    if (currentIndex === -1 || requiredIndex === -1) {
      console.log('❌ hasPlanOrHigher: Plano não encontrado na hierarquia');
      return false;
    }

    const hasAccess = currentIndex >= requiredIndex;
    console.log(`🔍 hasPlanOrHigher - Resultado: ${hasAccess ? '✅' : '❌'}`);
    
    return hasAccess;
  }, [getCurrentPlan]);

  const getRequiredPlan = useCallback((feature: string): Exclude<PlanName, null> | null => {
    for (const plan of PLAN_HIERARCHY) {
      if (PLAN_FEATURES[plan]?.includes(feature)) {
        return plan;
      }
    }
    return null;
  }, []);

  const daysUntilExpiration = useCallback((): number | null => {
    if (!subscription) return null;

    const periodEnd = new Date(subscription.current_period_end);
    const now = new Date();
    const diffTime = periodEnd.getTime() - now.getTime();
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

    return diffDays > 0 ? diffDays : 0;
  }, [subscription]);

  // Memoizar o value para evitar re-renders desnecessários
  const value = useMemo<SubscriptionContextType>(() => ({
    subscription,
    loading,
    error,
    initialized,
    hasActiveSubscription,
    isSubscriptionValid,
    isPremium,
    getCurrentPlan,
    hasFeature,
    hasPlanOrHigher,
    getRequiredPlan,
    daysUntilExpiration,
    refetch: fetchSubscription,
  }), [
    subscription,
    loading,
    error,
    initialized,
    hasActiveSubscription,
    isSubscriptionValid,
    isPremium,
    getCurrentPlan,
    hasFeature,
    hasPlanOrHigher,
    getRequiredPlan,
    daysUntilExpiration,
    fetchSubscription
  ]);

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