import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { 
  Check, 
  Loader2, 
  Crown, 
  Star, 
  Zap, 
  Headphones,
  Sparkles,
  Shield,
  Clock,
  Users,
  Rocket,
  TrendingUp,
  Award,
  Brain,
  MessageSquare,
  HelpCircle
} from "lucide-react";
import { useAuth } from "@/hooks/useAuth";
import { useSubscription } from "@/hooks/useSubscription";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";

interface Plan {
  id: string;
  name: string;
  description: string;
  price: number;
  priceId: string;
  productId: string;
  icon: typeof Zap | typeof Star | typeof Crown;
  color: string;
  bgColor: string;
  textColor: string;
  popular: boolean;
  interval: string;
  features: string[];
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
    color?: string;
    bgColor?: string;
    textColor?: string;
    interval?: string;
  };
}

const ICON_MAP: Record<string, typeof Zap | typeof Star | typeof Crown> = {
  zap: Zap,
  star: Star,
  crown: Crown,
};

const COLOR_MAP: Record<string, { color: string; bgColor: string; textColor: string }> = {
  basic: {
    color: "from-blue-500 to-blue-600",
    bgColor: "bg-blue-500/10",
    textColor: "text-blue-500"
  },
  standard: {
    color: "from-primary to-secondary",
    bgColor: "bg-primary/10",
    textColor: "text-primary"
  },
  premium: {
    color: "from-amber-500 to-orange-500",
    bgColor: "bg-amber-500/10",
    textColor: "text-amber-500"
  }
};

// FAQ Section
const FAQ_ITEMS = [
  {
    question: "Posso cancelar a qualquer momento?",
    answer: "Sim! Todos os planos podem ser cancelados a qualquer momento sem multa. Você mantém acesso até o final do período pago.",
    icon: HelpCircle
  },
  {
    question: "Existe período de teste gratuito?",
    answer: "Oferecemos 7 dias grátis em todos os planos para você testar todas as funcionalidades antes de assinar.",
    icon: Clock
  },
  {
    question: "Como funciona o suporte?",
    answer: "Todos os planos incluem suporte por email. Planos Premium incluem suporte 24/7 via chat e ligação.",
    icon: MessageSquare
  },
  {
    question: "Posso mudar de plano depois?",
    answer: "Sim! Você pode atualizar ou downgrade seu plano a qualquer momento. O valor será ajustado proporcionalmente.",
    icon: TrendingUp
  },
  {
    question: "Os planos têm garantia?",
    answer: "Oferecemos garantia de 30 dias. Se não estiver satisfeito, devolvemos 100% do seu dinheiro.",
    icon: Shield
  },
  {
    question: "Quando tenho acesso ao conteúdo?",
    answer: "O acesso é imediato após a confirmação do pagamento. Você recebe um email com todas as instruções.",
    icon: Rocket
  }
];

export default function Planos() {
  const { user } = useAuth();
  const { getCurrentPlan, isSubscriptionValid } = useSubscription();
  const navigate = useNavigate();
  const [loading, setLoading] = useState<string | null>(null);
  const [checkingSubscription, setCheckingSubscription] = useState(false);
  const [subscription, setSubscription] = useState<SubscriptionStatus | null>(null);
  const [plans, setPlans] = useState<Plan[]>([]);
  const [loadingPlans, setLoadingPlans] = useState(true);

  const currentPlan = getCurrentPlan();

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
          const planId = product.name.toLowerCase().includes('básico') ? 'basic' 
            : product.name.toLowerCase().includes('padrão') ? 'standard' 
            : 'premium';
          
          return {
            id: planId,
            name: product.name,
            description: product.description || "",
            price: price ? price.unit_amount / 100 : 0,
            priceId: price?.id || "",
            productId: product.id,
            icon: ICON_MAP[product.metadata?.icon || "star"] || Star,
            color: COLOR_MAP[planId]?.color || "from-primary to-secondary",
            bgColor: COLOR_MAP[planId]?.bgColor || "bg-primary/10",
            textColor: COLOR_MAP[planId]?.textColor || "text-primary",
            popular: product.metadata?.popular === "true",
            interval: price?.recurring?.interval === "year" ? "ano" : "mês",
            features: product.marketing_features 
              ? product.marketing_features.map(f => f.name) 
              : [],
          };
        });

        // Ordenar por preço
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

  const isCurrentPlan = (planId: string) => {
    return currentPlan?.toLowerCase() === planId.toLowerCase();
  };

  // Se o usuário já tem uma assinatura ativa
  if (subscription?.subscribed) {
    return (
      <div className="min-h-screen bg-background py-16">
        <div className="container mx-auto px-4 text-center">
          <div className="max-w-2xl mx-auto">
            <div className="w-20 h-20 mx-auto rounded-full bg-green-100 flex items-center justify-center mb-6">
              <Check className="w-10 h-10 text-green-600" />
            </div>
            <h1 className="text-3xl font-bold text-foreground mb-4">
              Você já tem uma assinatura ativa!
            </h1>
            <p className="text-lg text-muted-foreground mb-8">
              Acesse o portal do cliente para gerenciar sua assinatura, ver faturas ou alterar seu plano.
            </p>
            <Button 
              onClick={() => window.open("https://billing.stripe.com/p/login/test_6oE5mfdGX2Aq2kQ288", "_blank")}
              size="lg"
              className="bg-gradient-to-r from-primary to-blue-600 hover:from-primary/90 hover:to-blue-600/90"
            >
              Gerenciar Assinatura
            </Button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      
      {/* Header */}
      <div className="bg-gradient-to-b from-primary/10 to-background py-12 md:py-10">
        <div className="container mx-auto px-4">
          <div className="text-center max-w-3xl mx-auto">
            <div className="flex items-center justify-center gap-2 mb-4">
              <h1 className="text-3xl md:text-5xl font-bold text-foreground">
                Escolha o plano ideal para você
              </h1>
            </div>
            <p className="text-lg text-muted-foreground">
              Desbloqueie todo o potencial da sua preparação com recursos avançados
            </p>
          </div>
        </div>
      </div>

      {/* Plan Cards */}
      <div className="container mx-auto px-4 py-8">
        {loadingPlans || checkingSubscription ? (
          <div className="flex justify-center items-center py-16">
            <Loader2 className="w-8 h-8 animate-spin text-primary" />
          </div>
        ) : (
          <>
            {/* Container para centralizar os planos */}
            <div className="flex flex-col md:flex-row justify-center items-stretch gap-6 mb-16 max-w-4xl mx-auto">
              {plans.map((plan) => {
                const Icon = plan.icon;
                const isCurrent = isCurrentPlan(plan.id);
                
                return (
                  <Card 
                    key={plan.id}
                    className={`relative flex flex-col transition-all duration-300 hover:shadow-xl flex-1 max-w-md ${
                      plan.popular 
                        ? "border-primary shadow-lg md:scale-[1.02] z-10" 
                        : "border-border hover:border-primary/50"
                    } ${isCurrent ? "ring-2 ring-green-500" : ""}`}
                  >
                    {plan.popular && (
                      <Badge className="absolute -top-3 left-1/2 -translate-x-1/2 bg-gradient-to-r from-primary to-blue-600 text-white px-4 py-1.5">
                        <Sparkles className="w-3 h-3 mr-1" />
                        Mais Popular
                      </Badge>
                    )}
                    
                    {isCurrent && (
                      <Badge className="absolute -top-3 right-4 bg-green-500 text-white px-4">
                        Seu Plano
                      </Badge>
                    )}

                    <CardHeader className="text-center pb-2">
                      <div className={`w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4 bg-gradient-to-br ${plan.color} text-white`}>
                        <Icon className="w-8 h-8" />
                      </div>
                      <CardTitle className="text-2xl">{plan.name}</CardTitle>
                      <CardDescription>{plan.description}</CardDescription>
                    </CardHeader>

                    <CardContent className="flex-1">
                      <div className="text-center mb-6">
                        <span className="text-4xl font-bold text-foreground">
                          R$ {plan.price.toFixed(2).replace(".", ",")}
                        </span>
                        <span className="text-muted-foreground">/{plan.interval}</span>
                        {plan.interval === "ano" && (
                          <p className="text-sm text-green-600 mt-1">
                            Economize 20% comparado ao mensal
                          </p>
                        )}
                      </div>
                      
                      {/* Lista de features do plano */}
                      <div className="space-y-3 mb-4">
                        {plan.features.slice(0, 5).map((feature, index) => (
                          <div key={index} className="flex items-start gap-3">
                            <Check className="w-4 h-4 text-green-500 flex-shrink-0 mt-1" />
                            <span className="text-sm text-muted-foreground text-left">{feature}</span>
                          </div>
                        ))}
                        {plan.features.length > 5 && (
                          <div className="text-sm text-muted-foreground text-center">
                            + {plan.features.length - 5} recursos adicionais
                          </div>
                        )}
                      </div>
                    </CardContent>

                    <CardFooter className="flex flex-col gap-3">
                      {isCurrent ? (
                        <Button className="w-full" variant="outline" disabled>
                          <Check className="w-4 h-4 mr-2" />
                          Plano Atual
                        </Button>
                      ) : (
                        <Button 
                          className={`w-full ${plan.popular ? "bg-gradient-to-r from-primary to-blue-600 hover:from-primary/90 hover:to-blue-600/90" : ""}`}
                          variant={plan.popular ? "default" : "outline"}
                          onClick={() => handleSubscribe(plan.priceId)}
                          disabled={loading === plan.priceId}
                          size="lg"
                        >
                          {loading === plan.priceId ? (
                            <Loader2 className="w-4 h-4 animate-spin mr-2" />
                          ) : null}
                          {isSubscriptionValid() ? "Trocar Plano" : "Começar Agora"}
                        </Button>
                      )}
                    </CardFooter>
                  </Card>
                );
              })}
            </div>

            {/* Seção de Diferenciais */}
            <div className="max-w-4xl mx-auto mb-16">
              <div className="text-center mb-10">
                <h2 className="text-2xl md:text-3xl font-bold text-foreground mb-2">
                  Por que escolher nossa plataforma?
                </h2>
                <p className="text-muted-foreground">
                  Diferenciais que fazem a diferença na sua preparação
                </p>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                <Card className="border-primary/20 hover:border-primary/40 transition-all">
                  <CardContent className="pt-6">
                    <div className="w-12 h-12 rounded-lg bg-blue-100 flex items-center justify-center mb-4">
                      <Brain className="w-6 h-6 text-blue-600" />
                    </div>
                    <h3 className="font-semibold text-lg mb-2">Método Científico</h3>
                    <p className="text-sm text-muted-foreground">
                      Técnicas de estudo baseadas em ciência para melhor retenção e aprendizado
                    </p>
                  </CardContent>
                </Card>

                <Card className="border-primary/20 hover:border-primary/40 transition-all">
                  <CardContent className="pt-6">
                    <div className="w-12 h-12 rounded-lg bg-green-100 flex items-center justify-center mb-4">
                      <Users className="w-6 h-6 text-green-600" />
                    </div>
                    <h3 className="font-semibold text-lg mb-2">Comunidade Ativa</h3>
                    <p className="text-sm text-muted-foreground">
                      Conecte-se com outros estudantes e compartilhe experiências e dicas
                    </p>
                  </CardContent>
                </Card>

                <Card className="border-primary/20 hover:border-primary/40 transition-all">
                  <CardContent className="pt-6">
                    <div className="w-12 h-12 rounded-lg bg-purple-100 flex items-center justify-center mb-4">
                      <Rocket className="w-6 h-6 text-purple-600" />
                    </div>
                    <h3 className="font-semibold text-lg mb-2">Progresso Rápido</h3>
                    <p className="text-sm text-muted-foreground">
                      Acompanhe seu desenvolvimento com relatórios detalhados e métricas
                    </p>
                  </CardContent>
                </Card>
              </div>
            </div>

            {/* FAQ Section */}
            <div className="max-w-4xl mx-auto mb-16">
              <div className="text-center mb-10">
                <h2 className="text-2xl md:text-3xl font-bold text-foreground mb-2">
                  Perguntas Frequentes
                </h2>
                <p className="text-muted-foreground">
                  Tire suas dúvidas sobre nossos planos e assinatura
                </p>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                {FAQ_ITEMS.map((item, index) => {
                  const Icon = item.icon;
                  return (
                    <Card key={index} className="hover:shadow-md transition-shadow">
                      <CardContent className="pt-6">
                        <div className="flex items-start gap-4">
                          <div className="w-10 h-10 rounded-lg bg-primary/10 flex items-center justify-center flex-shrink-0">
                            <Icon className="w-5 h-5 text-primary" />
                          </div>
                          <div>
                            <h3 className="font-semibold text-foreground mb-2">
                              {item.question}
                            </h3>
                            <p className="text-sm text-muted-foreground">
                              {item.answer}
                            </p>
                          </div>
                        </div>
                      </CardContent>
                    </Card>
                  );
                })}
              </div>
            </div>

            {/* CTA Section */}
            <div className="max-w-4xl mx-auto">
              <Card className="bg-gradient-to-r from-primary/10 via-secondary/10 to-primary/10 border-primary/20 overflow-hidden">
                <CardContent className="p-8 md:p-12">
                  <div className="flex flex-col md:flex-row items-center justify-between gap-6">
                    <div>
                      <h3 className="text-xl font-bold text-foreground mb-2">
                        Ainda tem dúvidas?
                      </h3>
                      <p className="text-muted-foreground">
                        Nossa equipe está pronta para ajudar você a escolher o melhor plano.
                      </p>
                    </div>
                    <div className="flex flex-col sm:flex-row gap-3 shrink-0">
                      <Button variant="outline" onClick={() => navigate("/support")} size="lg">
                        <Headphones className="w-4 h-4 mr-2" />
                        Falar com Suporte
                      </Button>
                      <Button onClick={() => navigate("/auth")} size="lg">
                        <Rocket className="w-4 h-4 mr-2" />
                        Começar Agora
                      </Button>
                    </div>
                  </div>
                </CardContent>
              </Card>
            </div>
          </>
        )}
      </div>
    </div>
  );
}