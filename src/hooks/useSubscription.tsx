import { useState, useEffect, createContext, useContext, ReactNode } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

type SubscriptionStatus = 'active' | 'canceled' | 'trialing' | 'past_due' | 'incomplete' | 'unpaid' | null;

// Defina os planos disponíveis e suas features
export type PlanName = 'Básico' | 'Avançado' | null;

export const PLAN_FEATURES: Record<Exclude<PlanName, null>, string[]> = {
  'Básico': ['flashcards', 'quiz', 'planner'], // Recursos do plano Básico
  'Avançado': ['flashcards', 'quiz', 'planner', 'flashcardsCustom', 'simulado', 'ai_explanation', 'ranking'], // Recursos do plano Avançado
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

// Função auxiliar para normalizar strings removendo acentos
function normalizeString(str: string): string {
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
        console.log('📦 Assinatura carregada:', {
          plan_name: data.plan_name,
          status: data.status,
          amount: data.plan_amount,
          period_end: data.current_period_end
        });
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
    
    const isValid = isStatusValid && hasAccess;
    
    console.log('🔍 Validação de assinatura:', {
      subscription: subscription.plan_name,
      status: subscription.status,
      isStatusValid,
      periodEnd: periodEnd.toISOString(),
      now: now.toISOString(),
      hasAccess,
      isValid
    });
    
    return isValid;
  };

  const isPremium = (): boolean => {
    return isSubscriptionValid();
  };

  const getCurrentPlan = (): PlanName => {
    if (!isSubscriptionValid() || !subscription) {
      console.log('❌ Assinatura não válida ou não existe');
      return null;
    }
    
    const planName = subscription.plan_name;
    const normalized = normalizeString(planName);
    
    console.log('🔍 Detectando plano:', {
      original: planName,
      normalized,
      amount: subscription.plan_amount
    });
    
    // Verifica por "avançado" ou "avancado" (normalizado)
    if (normalized.includes('avancado')) {
      console.log('✅ Plano detectado: Avançado');
      return 'Avançado';
    }
    
    // Verifica por "básico" ou "basico" (normalizado)
    if (normalized.includes('basico')) {
      console.log('✅ Plano detectado: Básico');
      return 'Básico';
    }
    
    // Fallback baseado no valor (ajuste conforme seus preços)
    // R$ 19,60 armazenado como 1960 centavos
    if (subscription.plan_amount >= 1960) {
      console.log('✅ Plano detectado por valor: Avançado (R$ 19,60+)');
      return 'Avançado';
    }
    
    console.log('✅ Plano detectado por valor: Básico (< R$ 19,60)');
    return 'Básico';
  };

  const hasFeature = (feature: string): boolean => {
    const plan = getCurrentPlan();
    if (!plan) {
      console.log(`❌ Sem plano ativo, feature "${feature}" não disponível`);
      return false;
    }
    
    const hasAccess = PLAN_FEATURES[plan]?.includes(feature) ?? false;
    console.log(`🔍 Feature "${feature}" no plano "${plan}": ${hasAccess ? '✅' : '❌'}`);
    
    return hasAccess;
  };

  const hasPlanOrHigher = (requiredPlan: Exclude<PlanName, null>): boolean => {
    const currentPlan = getCurrentPlan();
    if (!currentPlan) {
      console.log(`❌ Sem plano ativo, não possui "${requiredPlan}"`);
      return false;
    }
    
    const currentIndex = PLAN_HIERARCHY.indexOf(currentPlan);
    const requiredIndex = PLAN_HIERARCHY.indexOf(requiredPlan);
    
    // Se algum plano não for encontrado, retorna false
    if (currentIndex === -1 || requiredIndex === -1) {
      console.log(`❌ Plano não encontrado na hierarquia - Current: ${currentPlan} (${currentIndex}), Required: ${requiredPlan} (${requiredIndex})`);
      return false;
    }
    
    const hasAccess = currentIndex >= requiredIndex;
    console.log(`🔍 Verificação de plano:`, {
      currentPlan,
      requiredPlan,
      currentIndex,
      requiredIndex,
      hasAccess: hasAccess ? '✅' : '❌'
    });
    
    return hasAccess;
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