import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Check, Loader2, Zap, Sparkles, Crown } from "lucide-react";
import { useAuth } from "@/hooks/useAuth";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";
import { Badge } from "@/components/ui/badge";

interface Plan {
  id: string;
  name: string;
  description: string;
  price: number;
  priceId: string;
  productId: string;
  icon: typeof Zap | typeof Sparkles | typeof Crown;
  features: string[];
  popular: boolean;
  interval: string;
}

interface SubscriptionStatus {
  subscribed: boolean;
  product_id: string | null;
  subscription_end: string | null;
}

interface StripePrice {
  id: string;
  product: string;
  unit_amount: number;
  currency: string;
  recurring?: {
    interval: string;
  };
}

interface StripeProduct {
  id: string;
  name: string;
  description: string;
  marketing_features?: Array<{
    name: string;
  }>;
  metadata?: {
    popular?: string;
    icon?: string;
    interval?: string;
  };
}

const ICON_MAP: Record<string, typeof Zap | typeof Sparkles | typeof Crown> = {
  zap: Zap,
  sparkles: Sparkles,
  crown: Crown,
};

export default function PricingSection() {
  const { user } = useAuth();
  const navigate = useNavigate();
  const [loading, setLoading] = useState<string | null>(null);
  const [subscription, setSubscription] = useState<SubscriptionStatus | null>(null);
  const [checkingSubscription, setCheckingSubscription] = useState(false);
  const [plans, setPlans] = useState<Plan[]>([]);
  const [loadingPlans, setLoadingPlans] = useState(true);

  useEffect(() => {
    fetchPlans();
  }, []);

  useEffect(() => {
    if (user) {
      checkSubscription();
    }
  }, [user]);

  const fetchPlans = async () => {
    setLoadingPlans(true);
    try {
      const { data, error } = await supabase.functions.invoke("get-products");
      
      if (error) throw error;
      
      if (data?.products && data?.prices) {
        const formattedPlans: Plan[] = data.products.map((product: StripeProduct) => {
          const price = data.prices.find((p: StripePrice) => p.product === product.id);
          
          return {
            id: product.id,
            name: product.name,
            description: product.description || "",
            price: price ? price.unit_amount / 100 : 0,
            priceId: price?.id || "",
            productId: product.id,
            icon: ICON_MAP[product.metadata?.icon || "sparkles"] || Sparkles,
            features: product.marketing_features 
              ? product.marketing_features.map(f => f.name) 
              : [],
            popular: product.metadata?.popular === "true",
            interval: price?.recurring?.interval === "year" ? "ano" : "mês",
          };
        });

        formattedPlans.sort((a, b) => a.price - b.price);
        setPlans(formattedPlans);
      }
    } catch (error) {
      console.error("Error fetching plans:", error);
      toast.error("Erro ao carregar planos");
    } finally {
      setLoadingPlans(false);
    }
  };

  const checkSubscription = async () => {
    if (!user) return;
    
    setCheckingSubscription(true);
    try {
      const { data, error } = await supabase.functions.invoke("check-subscription");
      if (error) throw error;
      setSubscription(data);
    } catch (error) {
      console.error("Error checking subscription:", error);
    } finally {
      setCheckingSubscription(false);
    }
  };

  const handleSubscribe = async (priceId: string) => {
    if (!user) {
      toast.info("Faça login para assinar um plano");
      navigate("/auth");
      return;
    }

    setLoading(priceId);
    try {
      const { data, error } = await supabase.functions.invoke("create-checkout", {
        body: { priceId }
      });

      if (error) throw error;
      if (data?.url) {
        window.open(data.url, "_blank");
      }
    } catch (error: any) {
      console.error("Checkout error:", error);
      toast.error("Erro ao iniciar checkout: " + error.message);
    } finally {
      setLoading(null);
    }
  };

  const handleManageSubscription = async () => {
    setLoading("manage");
    try {
      const { data, error } = await supabase.functions.invoke("customer-portal");
      if (error) throw error;
      if (data?.url) {
        window.open(data.url, "_blank");
      }
    } catch (error: any) {
      console.error("Portal error:", error);
      toast.error("Erro ao abrir portal: " + error.message);
    } finally {
      setLoading(null);
    }
  };

  const isCurrentPlan = (productId: string) => {
    return subscription?.subscribed && subscription.product_id === productId;
  };

  if (subscription?.subscribed) {
    return null;
  }

  return (
    <section className="w-full py-16 sm:py-20 bg-gradient-to-b from-background via-primary/5 to-background">
      <div className="container mx-auto px-4 lg:px-24 xl:px-28 max-w-[1800px]">
        <div className="text-center mb-12">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground mb-4">
            Escolha seu Plano
          </h2>
          <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
            Desbloqueie todo o potencial da sua preparação com recursos avançados
          </p>
        </div>

        {loadingPlans || checkingSubscription ? (
          <div className="flex justify-center items-center py-16">
            <Loader2 className="w-8 h-8 animate-spin text-primary" />
          </div>
        ) : plans.length === 0 ? (
          <div className="text-center py-16">
            <p className="text-muted-foreground text-lg">
              Nenhum plano disponível no momento.
            </p>
          </div>
        ) : (
          <div className="flex flex-col md:flex-row justify-center items-center md:items-stretch gap-6 lg:gap-8 max-w-4xl mx-auto">
            {plans.map((plan) => {
              const Icon = plan.icon;
              const isCurrent = isCurrentPlan(plan.productId);
              
              return (
                <div 
                  key={plan.id}
                  className={`relative bg-card rounded-xl border shadow-sm overflow-hidden transition-all duration-300 hover:shadow-lg w-full md:w-1/2 max-w-md ${
                    plan.popular 
                      ? 'border-primary/30 shadow-primary/10 ring-1 ring-primary/10 transform hover:-translate-y-1' 
                      : 'border-border'
                  }`}
                >
                  {plan.popular && (
                    <div className="absolute top-0 left-1/2 -translate-x-1/2 -translate-y-1/2 z-10">
                      <Badge className="bg-gradient-to-r from-primary to-blue-600 text-white px-4 py-1.5 text-sm font-medium shadow-md">
                        Mais Popular
                      </Badge>
                    </div>
                  )}
                  
                  <div className="p-6 sm:p-8 h-full flex flex-col">
                    <div className="flex items-center justify-between mb-6">
                      <div>
                        <h3 className="text-xl font-bold text-foreground">{plan.name}</h3>
                        <p className="text-sm text-muted-foreground mt-1">
                          Ideal para {plan.name.toLowerCase().includes('básico') ? 'iniciantes' : 
                                     plan.name.toLowerCase().includes('pro') ? 'avançados' : 
                                     'profissionais'}
                        </p>
                      </div>
                      <div className="p-3 rounded-lg bg-primary/10">
                        <Icon className="w-6 h-6 text-primary" />
                      </div>
                    </div>

                    <div className="mb-6">
                      <div className="flex items-baseline">
                        <span className="text-3xl sm:text-4xl font-bold text-foreground">
                          R$ {plan.price.toFixed(2).replace(".", ",")}
                        </span>
                        <span className="text-muted-foreground ml-2">/{plan.interval}</span>
                      </div>
                      {plan.interval === "ano" && (
                        <p className="text-sm text-green-600 mt-1">
                          Economize 20% comparado ao plano mensal
                        </p>
                      )}
                    </div>

                    <ul className="space-y-3 mb-8 flex-grow">
                      {plan.features.map((feature, index) => (
                        <li key={index} className="flex items-start gap-3">
                          <div className="p-1 rounded-full bg-primary/10 shrink-0 mt-0.5">
                            <Check className="w-3 h-3 text-primary" />
                          </div>
                          <span className="text-sm sm:text-base text-muted-foreground">
                            {feature}
                          </span>
                        </li>
                      ))}
                    </ul>

                    <div className="space-y-3 mt-auto">
                      {isCurrent ? (
                        <Button 
                          className="w-full bg-gradient-to-r from-primary to-blue-600 hover:from-primary/90 hover:to-blue-600/90 text-white"
                          onClick={handleManageSubscription}
                          disabled={loading === "manage"}
                          size="lg"
                        >
                          {loading === "manage" ? (
                            <Loader2 className="w-4 h-4 animate-spin mr-2" />
                          ) : null}
                          Gerenciar Assinatura
                        </Button>
                      ) : (
                        <Button 
                          className={`w-full ${
                            plan.popular 
                              ? 'bg-gradient-to-r from-primary to-blue-600 hover:from-primary/90 hover:to-blue-600/90 text-white shadow-md'
                              : 'bg-secondary hover:bg-secondary/80 text-secondary-foreground'
                          }`}
                          onClick={() => handleSubscribe(plan.priceId)}
                          disabled={loading === plan.priceId}
                          size="lg"
                        >
                          {loading === plan.priceId ? (
                            <Loader2 className="w-4 h-4 animate-spin mr-2" />
                          ) : (
                            <span className="font-semibold">
                              {plan.popular ? 'Começar Agora' : 'Escolher Plano'}
                            </span>
                          )}
                        </Button>
                      )}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>
    </section>
  );
}