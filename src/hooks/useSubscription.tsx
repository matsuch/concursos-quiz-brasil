import { createContext, useContext, useState, useEffect, ReactNode, useCallback } from "react";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "./useAuth";

// Plan tier definitions
export const PLANS = {
  basic: {
    id: "basic",
    name: "Básico",
    productId: "prod_TlezKKKS4iuxKa",
    priceId: "price_1So7fwQ8CcFgqvaDBJsxo4um",
    features: {
      flashcards: true,
      flashcardsCustom: false,
      quiz: true,
      duelo: false,
      simulado: false,
    }
  },
  standard: {
    id: "standard",
    name: "Padrão",
    productId: "prod_Tlf0EBsd5fLZ94",
    priceId: "price_1So7glQ8CcFgqvaD1RofVZ1D",
    features: {
      flashcards: true,
      flashcardsCustom: true,
      quiz: true,
      duelo: true,
      simulado: false,
    }
  },
  premium: {
    id: "premium",
    name: "Premium",
    productId: "prod_Tlf1OTeWGfNMYd",
    priceId: "price_1So7hgQ8CcFgqvaDEjvWErfc",
    features: {
      flashcards: true,
      flashcardsCustom: true,
      quiz: true,
      duelo: true,
      simulado: true,
    }
  }
} as const;

export type PlanId = keyof typeof PLANS;
export type FeatureKey = keyof typeof PLANS.basic.features;

interface SubscriptionState {
  subscribed: boolean;
  productId: string | null;
  planId: PlanId | null;
  subscriptionEnd: string | null;
  loading: boolean;
}

interface SubscriptionContextType extends SubscriptionState {
  checkSubscription: () => Promise<void>;
  hasFeature: (feature: FeatureKey) => boolean;
  getPlanName: () => string;
  getRequiredPlan: (feature: FeatureKey) => string;
}

const SubscriptionContext = createContext<SubscriptionContextType | undefined>(undefined);

export function SubscriptionProvider({ children }: { children: ReactNode }) {
  const { user, loading: authLoading } = useAuth();
  const [state, setState] = useState<SubscriptionState>({
    subscribed: false,
    productId: null,
    planId: null,
    subscriptionEnd: null,
    loading: true,
  });

  const getPlanIdFromProductId = (productId: string | null): PlanId | null => {
    if (!productId) return null;
    for (const [key, plan] of Object.entries(PLANS)) {
      if (plan.productId === productId) {
        return key as PlanId;
      }
    }
    return null;
  };

  const checkSubscription = useCallback(async () => {
    if (!user) {
      setState({
        subscribed: false,
        productId: null,
        planId: null,
        subscriptionEnd: null,
        loading: false,
      });
      return;
    }

    try {
      const { data, error } = await supabase.functions.invoke("check-subscription");
      
      if (error) {
        console.error("Error checking subscription:", error);
        setState(prev => ({ ...prev, loading: false }));
        return;
      }

      const planId = getPlanIdFromProductId(data?.product_id);
      
      setState({
        subscribed: data?.subscribed || false,
        productId: data?.product_id || null,
        planId,
        subscriptionEnd: data?.subscription_end || null,
        loading: false,
      });
    } catch (error) {
      console.error("Error checking subscription:", error);
      setState(prev => ({ ...prev, loading: false }));
    }
  }, [user]);

  useEffect(() => {
    if (!authLoading) {
      checkSubscription();
    }
  }, [user, authLoading, checkSubscription]);

  // Auto-refresh every minute
  useEffect(() => {
    if (!user) return;
    
    const interval = setInterval(() => {
      checkSubscription();
    }, 60000);

    return () => clearInterval(interval);
  }, [user, checkSubscription]);

  const hasFeature = useCallback((feature: FeatureKey): boolean => {
    if (!state.subscribed || !state.planId) return false;
    return PLANS[state.planId].features[feature];
  }, [state.subscribed, state.planId]);

  const getPlanName = useCallback((): string => {
    if (!state.planId) return "Nenhum";
    return PLANS[state.planId].name;
  }, [state.planId]);

  const getRequiredPlan = useCallback((feature: FeatureKey): string => {
    // Find the cheapest plan that has this feature
    const planOrder: PlanId[] = ["basic", "standard", "premium"];
    for (const planId of planOrder) {
      if (PLANS[planId].features[feature]) {
        return PLANS[planId].name;
      }
    }
    return "Premium";
  }, []);

  return (
    <SubscriptionContext.Provider 
      value={{ 
        ...state, 
        checkSubscription, 
        hasFeature, 
        getPlanName,
        getRequiredPlan 
      }}
    >
      {children}
    </SubscriptionContext.Provider>
  );
}

export function useSubscription() {
  const context = useContext(SubscriptionContext);
  if (context === undefined) {
    throw new Error("useSubscription must be used within a SubscriptionProvider");
  }
  return context;
}
