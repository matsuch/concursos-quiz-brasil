import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Check, Loader2, Crown, Star, Zap } from "lucide-react";
import { useAuth } from "@/hooks/useAuth";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";

const PLANS = [
  {
    id: "basic",
    name: "Básico",
    description: "Plano com acesso limitado às aulas",
    price: 19.99,
    priceId: "price_1So7fwQ8CcFgqvaDBJsxo4um",
    productId: "prod_TlezKKKS4iuxKa",
    icon: Zap,
    features: [
      "Acesso a aulas básicas",
      "Quizzes limitados",
      "Flashcards públicos",
      "Suporte por email"
    ],
    popular: false
  },
  {
    id: "standard",
    name: "Padrão",
    description: "Acesso a todas as aulas e sessões exclusivas",
    price: 39.99,
    priceId: "price_1So7glQ8CcFgqvaD1RofVZ1D",
    productId: "prod_Tlf0EBsd5fLZ94",
    icon: Star,
    features: [
      "Todas as aulas disponíveis",
      "Quizzes ilimitados",
      "Flashcards personalizados",
      "Sessões exclusivas com professores",
      "Duelos online",
      "Suporte prioritário"
    ],
    popular: true
  },
  {
    id: "premium",
    name: "Premium",
    description: "Acesso completo com provas corrigidas",
    price: 59.99,
    priceId: "price_1So7hgQ8CcFgqvaDEjvWErfc",
    productId: "prod_Tlf1OTeWGfNMYd",
    icon: Crown,
    features: [
      "Tudo do plano Padrão",
      "Provas corrigidas e comentadas",
      "Simulados exclusivos",
      "Mentoria individual",
      "Acesso antecipado a novidades",
      "Suporte 24/7"
    ],
    popular: false
  }
];

interface SubscriptionStatus {
  subscribed: boolean;
  product_id: string | null;
  subscription_end: string | null;
}

export default function PricingSection() {
  const { user } = useAuth();
  const navigate = useNavigate();
  const [loading, setLoading] = useState<string | null>(null);
  const [subscription, setSubscription] = useState<SubscriptionStatus | null>(null);
  const [checkingSubscription, setCheckingSubscription] = useState(false);

  useEffect(() => {
    if (user) {
      checkSubscription();
    }
  }, [user]);

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

  return (
    <section id="pricing" className="py-16 bg-gradient-to-b from-background to-muted/30">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground mb-4">
            Escolha seu Plano
          </h2>
          <p className="text-muted-foreground text-lg max-w-2xl mx-auto mb-4">
            Invista no seu futuro com nossos planos de estudo. Escolha o melhor para você e comece hoje!
          </p>
          <Button 
            variant="link" 
            onClick={() => navigate("/planos")}
            className="text-primary hover:text-primary/80"
          >
            Ver comparação detalhada dos planos →
          </Button>
        </div>

        {checkingSubscription ? (
          <div className="flex justify-center py-8">
            <Loader2 className="w-8 h-8 animate-spin text-primary" />
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-5xl mx-auto">
            {PLANS.map((plan) => {
              const Icon = plan.icon;
              const isCurrent = isCurrentPlan(plan.productId);
              
              return (
                <Card 
                  key={plan.id}
                  className={`relative flex flex-col transition-all duration-300 hover:shadow-xl ${
                    plan.popular 
                      ? "border-primary shadow-lg scale-105 z-10" 
                      : "border-border hover:border-primary/50"
                  } ${isCurrent ? "ring-2 ring-green-500" : ""}`}
                >
                  {plan.popular && (
                    <Badge className="absolute -top-3 left-1/2 -translate-x-1/2 bg-primary text-primary-foreground px-4">
                      Mais Popular
                    </Badge>
                  )}
                  
                  {isCurrent && (
                    <Badge className="absolute -top-3 right-4 bg-green-500 text-white px-4">
                      Seu Plano
                    </Badge>
                  )}

                  <CardHeader className="text-center pb-2">
                    <div className={`w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4 ${
                      plan.popular 
                        ? "bg-primary text-primary-foreground" 
                        : "bg-primary/10 text-primary"
                    }`}>
                      <Icon className="w-8 h-8" />
                    </div>
                    <CardTitle className="text-2xl">{plan.name}</CardTitle>
                    <CardDescription className="min-h-[40px]">{plan.description}</CardDescription>
                  </CardHeader>

                  <CardContent className="flex-1">
                    <div className="text-center mb-6">
                      <span className="text-4xl font-bold text-foreground">
                        R$ {plan.price.toFixed(2).replace(".", ",")}
                      </span>
                      <span className="text-muted-foreground">/mês</span>
                    </div>

                    <ul className="space-y-3">
                      {plan.features.map((feature, index) => (
                        <li key={index} className="flex items-start gap-3">
                          <Check className="w-5 h-5 text-green-500 flex-shrink-0 mt-0.5" />
                          <span className="text-sm text-muted-foreground">{feature}</span>
                        </li>
                      ))}
                    </ul>
                  </CardContent>

                  <CardFooter className="pt-4">
                    {isCurrent ? (
                      <Button 
                        className="w-full" 
                        variant="outline"
                        onClick={handleManageSubscription}
                        disabled={loading === "manage"}
                      >
                        {loading === "manage" ? (
                          <Loader2 className="w-4 h-4 animate-spin mr-2" />
                        ) : null}
                        Gerenciar Assinatura
                      </Button>
                    ) : (
                      <Button 
                        className={`w-full ${plan.popular ? "bg-primary hover:bg-primary/90" : ""}`}
                        variant={plan.popular ? "default" : "outline"}
                        onClick={() => handleSubscribe(plan.priceId)}
                        disabled={loading === plan.priceId}
                      >
                        {loading === plan.priceId ? (
                          <Loader2 className="w-4 h-4 animate-spin mr-2" />
                        ) : null}
                        {subscription?.subscribed ? "Trocar Plano" : "Assinar Agora"}
                      </Button>
                    )}
                  </CardFooter>
                </Card>
              );
            })}
          </div>
        )}

        {subscription?.subscribed && subscription.subscription_end && (
          <p className="text-center text-sm text-muted-foreground mt-8">
            Sua assinatura renova em: {new Date(subscription.subscription_end).toLocaleDateString("pt-BR")}
          </p>
        )}
      </div>
    </section>
  );
}
