import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { 
  Check, 
  X, 
  Loader2, 
  Crown, 
  Star, 
  Zap, 
  ArrowLeft,
  BookOpen,
  Brain,
  Swords,
  Trophy,
  FileText,
  Users,
  Clock,
  Headphones,
  Sparkles,
  GraduationCap,
  Target
} from "lucide-react";
import { useAuth } from "@/hooks/useAuth";
import { useSubscription } from "@/hooks/useSubscription";
import { supabase } from "@/integrations/supabase/client";
import { useNavigate } from "react-router-dom";
import { toast } from "sonner";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

// Definição completa dos planos com todas as features
const PLANS = [
  {
    id: "basic",
    name: "Básico",
    description: "Ideal para quem está começando",
    price: 19.99,
    priceId: "price_1So7fwQ8CcFgqvaDBJsxo4um",
    productId: "prod_TlezKKKS4iuxKa",
    icon: Zap,
    color: "from-blue-500 to-blue-600",
    bgColor: "bg-blue-500/10",
    textColor: "text-blue-500",
    popular: false
  },
  {
    id: "standard",
    name: "Padrão",
    description: "Para quem quer se destacar",
    price: 39.99,
    priceId: "price_1So7glQ8CcFgqvaD1RofVZ1D",
    productId: "prod_Tlf0EBsd5fLZ94",
    icon: Star,
    color: "from-primary to-secondary",
    bgColor: "bg-primary/10",
    textColor: "text-primary",
    popular: true
  },
  {
    id: "premium",
    name: "Premium",
    description: "Experiência completa",
    price: 59.99,
    priceId: "price_1So7hgQ8CcFgqvaDEjvWErfc",
    productId: "prod_Tlf1OTeWGfNMYd",
    icon: Crown,
    color: "from-amber-500 to-orange-500",
    bgColor: "bg-amber-500/10",
    textColor: "text-amber-500",
    popular: false
  }
];

// Categorias de features para comparação
const FEATURE_CATEGORIES = [
  {
    name: "Conteúdo de Estudo",
    icon: BookOpen,
    features: [
      { name: "Acesso a aulas básicas", basic: true, standard: true, premium: true },
      { name: "Aulas avançadas", basic: false, standard: true, premium: true },
      { name: "Aulas exclusivas de especialistas", basic: false, standard: false, premium: true },
      { name: "Material em PDF para download", basic: false, standard: true, premium: true },
    ]
  },
  {
    name: "Quizzes e Exercícios",
    icon: Brain,
    features: [
      { name: "Quizzes básicos", basic: true, standard: true, premium: true },
      { name: "Quizzes ilimitados", basic: false, standard: true, premium: true },
      { name: "Histórico de desempenho", basic: false, standard: true, premium: true },
      { name: "Questões comentadas", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Flashcards",
    icon: Sparkles,
    features: [
      { name: "Flashcards públicos", basic: true, standard: true, premium: true },
      { name: "Criar flashcards personalizados", basic: false, standard: true, premium: true },
      { name: "Flashcards ilimitados", basic: false, standard: true, premium: true },
      { name: "Compartilhar flashcards", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Duelos e Competição",
    icon: Swords,
    features: [
      { name: "Modo duelo solo", basic: false, standard: true, premium: true },
      { name: "Duelos online", basic: false, standard: true, premium: true },
      { name: "Ligas competitivas", basic: false, standard: false, premium: true },
      { name: "Torneios exclusivos", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Simulados",
    icon: FileText,
    features: [
      { name: "Simulados básicos", basic: false, standard: false, premium: true },
      { name: "Simulados exclusivos", basic: false, standard: false, premium: true },
      { name: "Provas corrigidas", basic: false, standard: false, premium: true },
      { name: "Relatório detalhado", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Ranking e Conquistas",
    icon: Trophy,
    features: [
      { name: "Ver ranking geral", basic: false, standard: false, premium: true },
      { name: "Sistema de badges", basic: true, standard: true, premium: true },
      { name: "Conquistas exclusivas", basic: false, standard: false, premium: true },
      { name: "Perfil destacado", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Mentoria e Suporte",
    icon: Users,
    features: [
      { name: "Suporte por email", basic: true, standard: true, premium: true },
      { name: "Suporte prioritário", basic: false, standard: true, premium: true },
      { name: "Suporte 24/7", basic: false, standard: false, premium: true },
      { name: "Mentoria individual", basic: false, standard: false, premium: true },
    ]
  },
  {
    name: "Extras",
    icon: GraduationCap,
    features: [
      { name: "Acesso antecipado a novidades", basic: false, standard: false, premium: true },
      { name: "Sessões com professores", basic: false, standard: true, premium: true },
      { name: "Comunidade exclusiva", basic: false, standard: false, premium: true },
      { name: "Certificados de conclusão", basic: false, standard: true, premium: true },
    ]
  },
];

export default function Planos() {
  const { user } = useAuth();
  const { getCurrentPlan, isSubscriptionValid } = useSubscription();
  const navigate = useNavigate();
  const [loading, setLoading] = useState<string | null>(null);
  const [checkingSubscription, setCheckingSubscription] = useState(false);
  const [subscription, setSubscription] = useState<any>(null);

  const currentPlan = getCurrentPlan();

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

  const isCurrentPlan = (planId: string) => {
    return currentPlan?.toLowerCase() === planId.toLowerCase();
  };

  const getPlanIndex = (planId: string) => {
    return PLANS.findIndex(p => p.id === planId);
  };

  return (
    <div className="min-h-screen bg-background">
      
      {/* Header */}
      <div className="bg-gradient-to-b from-primary/10 to-background py-12 md:py-10">
        <div className="container mx-auto px-4">
          <div className="text-center max-w-3xl mx-auto">
            <h1 className="text-3xl md:text-5xl font-bold text-foreground mb-4">
              Escolha o plano ideal para você
            </h1>
            <p className="text-lg text-muted-foreground">
              Compare todas as funcionalidades e descubra qual plano se encaixa melhor nas suas necessidades de estudo.
            </p>
          </div>
        </div>
      </div>

      {/* Plan Cards */}
      <div className="container mx-auto px-4">
        {checkingSubscription ? (
          <div className="flex justify-center py-8">
            <Loader2 className="w-8 h-8 animate-spin text-primary" />
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-5xl mx-auto mb-16">
            {PLANS.map((plan) => {
              const Icon = plan.icon;
              const isCurrent = isCurrentPlan(plan.id);
              
              return (
                <Card 
                  key={plan.id}
                  className={`relative flex flex-col transition-all duration-300 hover:shadow-xl ${
                    plan.popular 
                      ? "border-primary shadow-lg md:scale-105 z-10 mt-5" 
                      : "border-border hover:border-primary/50 mt-3"
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
                      <span className="text-muted-foreground">/mês</span>
                    </div>
                  </CardContent>

                  <CardFooter>
                    {isCurrent ? (
                      <Button className="w-full" variant="outline" disabled>
                        <Check className="w-4 h-4 mr-2" />
                        Plano Atual
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
                        {isSubscriptionValid() ? "Trocar Plano" : "Assinar Agora"}
                      </Button>
                    )}
                  </CardFooter>
                </Card>
              );
            })}
          </div>
        )}

        {/* Feature Comparison Table */}
        <div className="max-w-6xl mx-auto pb-16">
          <div className="text-center mb-10">
            <h2 className="text-2xl md:text-3xl font-bold text-foreground mb-2">
              Comparação Detalhada
            </h2>
            <p className="text-muted-foreground">
              Veja todas as funcionalidades incluídas em cada plano
            </p>
          </div>

          {/* Desktop Table */}
          <div className="hidden md:block">
            <Card className="overflow-hidden">
              <Table>
                <TableHeader>
                  <TableRow className="bg-muted/50">
                    <TableHead className="w-[300px] font-semibold">Funcionalidade</TableHead>
                    {PLANS.map((plan) => {
                      const Icon = plan.icon;
                      const isCurrent = isCurrentPlan(plan.id);
                      return (
                        <TableHead 
                          key={plan.id} 
                          className={`text-center font-semibold ${isCurrent ? "bg-green-500/10" : ""}`}
                        >
                          <div className="flex flex-col items-center gap-2 py-2">
                            <div className={`w-10 h-10 rounded-full flex items-center justify-center bg-gradient-to-br ${plan.color} text-white`}>
                              <Icon className="w-5 h-5" />
                            </div>
                            <span>{plan.name}</span>
                            {isCurrent && (
                              <Badge variant="outline" className="text-xs border-green-500 text-green-500">
                                Atual
                              </Badge>
                            )}
                          </div>
                        </TableHead>
                      );
                    })}
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {FEATURE_CATEGORIES.map((category, categoryIndex) => {
                    const CategoryIcon = category.icon;
                    return (
                      <>
                        <TableRow key={`category-${categoryIndex}`} className="bg-muted/30">
                          <TableCell colSpan={4} className="py-3">
                            <div className="flex items-center gap-2 font-semibold text-foreground">
                              <CategoryIcon className="w-5 h-5 text-primary" />
                              {category.name}
                            </div>
                          </TableCell>
                        </TableRow>
                        {category.features.map((feature, featureIndex) => (
                          <TableRow key={`feature-${categoryIndex}-${featureIndex}`}>
                            <TableCell className="text-muted-foreground">
                              {feature.name}
                            </TableCell>
                            <TableCell className={`text-center ${isCurrentPlan("basic") ? "bg-green-500/5" : ""}`}>
                              {feature.basic ? (
                                <Check className="w-5 h-5 text-green-500 mx-auto" />
                              ) : (
                                <X className="w-5 h-5 text-muted-foreground/30 mx-auto" />
                              )}
                            </TableCell>
                            <TableCell className={`text-center ${isCurrentPlan("standard") ? "bg-green-500/5" : ""}`}>
                              {feature.standard ? (
                                <Check className="w-5 h-5 text-green-500 mx-auto" />
                              ) : (
                                <X className="w-5 h-5 text-muted-foreground/30 mx-auto" />
                              )}
                            </TableCell>
                            <TableCell className={`text-center ${isCurrentPlan("premium") ? "bg-green-500/5" : ""}`}>
                              {feature.premium ? (
                                <Check className="w-5 h-5 text-green-500 mx-auto" />
                              ) : (
                                <X className="w-5 h-5 text-muted-foreground/30 mx-auto" />
                              )}
                            </TableCell>
                          </TableRow>
                        ))}
                      </>
                    );
                  })}
                </TableBody>
              </Table>
            </Card>
          </div>

          {/* Mobile Accordion */}
          <div className="md:hidden space-y-4">
            {FEATURE_CATEGORIES.map((category, categoryIndex) => {
              const CategoryIcon = category.icon;
              return (
                <Card key={categoryIndex} className="overflow-hidden">
                  <div className="bg-muted/30 p-4 flex items-center gap-2">
                    <CategoryIcon className="w-5 h-5 text-primary" />
                    <span className="font-semibold">{category.name}</span>
                  </div>
                  <CardContent className="p-0">
                    {category.features.map((feature, featureIndex) => (
                      <div 
                        key={featureIndex}
                        className="border-t border-border p-4"
                      >
                        <p className="text-sm text-foreground mb-3">{feature.name}</p>
                        <div className="grid grid-cols-3 gap-2">
                          {PLANS.map((plan) => {
                            const hasFeature = plan.id === "basic" ? feature.basic 
                              : plan.id === "standard" ? feature.standard 
                              : feature.premium;
                            const isCurrent = isCurrentPlan(plan.id);
                            
                            return (
                              <div 
                                key={plan.id}
                                className={`text-center p-2 rounded-lg ${
                                  isCurrent ? "bg-green-500/10 ring-1 ring-green-500/30" : "bg-muted/30"
                                }`}
                              >
                                <span className="text-xs text-muted-foreground block mb-1">
                                  {plan.name}
                                </span>
                                {hasFeature ? (
                                  <Check className="w-4 h-4 text-green-500 mx-auto" />
                                ) : (
                                  <X className="w-4 h-4 text-muted-foreground/30 mx-auto" />
                                )}
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    ))}
                  </CardContent>
                </Card>
              );
            })}
          </div>

          {/* CTA Section */}
          <div className="mt-12 text-center">
            <Card className="bg-gradient-to-r from-primary/10 via-secondary/10 to-primary/10 border-primary/20">
              <CardContent className="py-8">
                <h3 className="text-xl font-bold text-foreground mb-2">
                  Ainda tem dúvidas?
                </h3>
                <p className="text-muted-foreground mb-4">
                  Entre em contato conosco e tire todas as suas dúvidas sobre os planos.
                </p>
                <div className="flex flex-col sm:flex-row gap-3 justify-center">
                  <Button variant="outline" onClick={() => navigate("/")}>
                    <Headphones className="w-4 h-4 mr-2" />
                    Falar com Suporte
                  </Button>
                  <Button onClick={() => navigate("/auth")}>
                    Começar Agora
                  </Button>
                </div>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </div>
  );
}
