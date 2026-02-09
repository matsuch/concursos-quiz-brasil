import { ReactNode, useState, useEffect } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { useSubscription, PlanName } from '@/hooks/useSubscription';
import { Loader2, Lock, CreditCard, Crown, Sparkles, Check, X, BookOpen, Users, Rocket, Brain, Zap, Star, BookmarkCheck } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Separator } from '@/components/ui/separator';
import { supabase } from '@/integrations/supabase/client';
import { toast } from 'sonner';

interface ProtectedRouteProps {
  children: ReactNode;
  /** Se true, exige qualquer assinatura ativa */
  requiresPremium?: boolean;
  /** Exige um plano específico ou superior (Basic, Standard, Premium) */
  requiredPlan?: Exclude<PlanName, null>;
  /** Exige acesso a uma feature específica */
  requiredFeature?: string;
  /** Rota de fallback para usuários não autenticados */
  fallbackPath?: string;
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
    features?: string;
  };
}

interface StripePrice {
  id: string;
  product: string;
  unit_amount: number;
  recurring?: {
    interval: string;
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

export function ProtectedRoute({ 
  children, 
  requiresPremium = false,
  requiredPlan,
  requiredFeature,
  fallbackPath = '/auth'
}: ProtectedRouteProps) {
  const navigate = useNavigate();
  const { user, loading: authLoading } = useAuth();
  const { 
    isPremium, 
    hasPlanOrHigher, 
    hasFeature, 
    getCurrentPlan,
    getRequiredPlan,
    loading: subLoading 
  } = useSubscription();
  
  const [products, setProducts] = useState<StripeProduct[]>([]);
  const [prices, setPrices] = useState<StripePrice[]>([]);
  const [loadingProducts, setLoadingProducts] = useState(false);

  const needsSubscriptionCheck = requiresPremium || requiredPlan || requiredFeature;

  // Buscar produtos do Stripe
  useEffect(() => {
    if (needsSubscriptionCheck && user && !authLoading) {
      fetchProducts();
    }
  }, [needsSubscriptionCheck, user, authLoading]);

  const fetchProducts = async () => {
    setLoadingProducts(true);
    try {
      const { data, error } = await supabase.functions.invoke('get-products');
      if (error) throw error;
      
      if (data?.products && data?.prices) {
        // Filtrar apenas produtos ativos e ordenar pelo preço
        const activeProducts = data.products.filter((product: StripeProduct) => 
          product.name.toLowerCase().includes('básico') || 
          product.name.toLowerCase().includes('avançado') ||
          product.name.toLowerCase().includes('basic') ||
          product.name.toLowerCase().includes('premium')
        );

        // Ordenar por preço (do mais barato para o mais caro)
        activeProducts.sort((a: StripeProduct, b: StripeProduct) => {
          const priceA = data.prices.find((p: StripePrice) => p.product === a.id)?.unit_amount || 0;
          const priceB = data.prices.find((p: StripePrice) => p.product === b.id)?.unit_amount || 0;
          return priceA - priceB;
        });

        setProducts(activeProducts);
        setPrices(data.prices);
      }
    } catch (error) {
      console.error('Erro ao buscar produtos:', error);
      toast.error('Erro ao carregar informações dos planos');
    } finally {
      setLoadingProducts(false);
    }
  };

  const getPlanIdFromProduct = (productName: string): string => {
    const nameLower = productName.toLowerCase();
    if (nameLower.includes('avançado') || nameLower.includes('premium')) return 'premium';
    if (nameLower.includes('básico') || nameLower.includes('basico')) return 'basic';
    return 'standard';
  };

  const getPlanDisplayName = (productName: string): string => {
    const nameLower = productName.toLowerCase();
    if (nameLower.includes('avançado')) return 'Avançado';
    if (nameLower.includes('básico') || nameLower.includes('basico')) return 'Básico';
    if (nameLower.includes('padrão') || nameLower.includes('standard')) return 'Padrão';
    if (nameLower.includes('premium')) return 'Premium';
    return productName;
  };

  const getFeaturesFromProduct = (product: StripeProduct): string[] => {
    if (product.marketing_features && product.marketing_features.length > 0) {
      return product.marketing_features.map(f => f.name);
    }
    
    // Fallback para metadata se não houver marketing_features
    if (product.metadata?.features) {
      return product.metadata.features.split(';').map(f => f.trim());
    }
    
    // Fallback baseado no tipo de plano
    const planId = getPlanIdFromProduct(product.name);
    if (planId === 'premium') {
      return [
        'Simulados completos',
        'Duelos online',
        'Flashcards personalizados',
        'Ranking e estatísticas',
        'IA para correção de redação',
        'Acesso a todas as matérias'
      ];
    } else if (planId === 'basic') {
      return [
        'Flashcards básicos',
        'Quizzes',
        'Acesso a matérias básicas',
        'Estatísticas simples'
      ];
    }
    
    return ['Recursos básicos de estudo'];
  };

  const getPriceForProduct = (productId: string): StripePrice | undefined => {
    return prices.find(price => price.product === productId);
  };

  const formatPrice = (price: StripePrice): string => {
    const amount = price.unit_amount / 100;
    const formattedAmount = amount.toLocaleString('pt-BR', {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2
    });
    const interval = price.recurring?.interval === 'year' ? 'ano' : 'mês';
    return `R$ ${formattedAmount}/${interval}`;
  };

  const getPlanIcon = (product: StripeProduct) => {
    const planId = getPlanIdFromProduct(product.name);
    const iconName = product.metadata?.icon || 
      (planId === 'premium' ? 'crown' : planId === 'basic' ? 'star' : 'zap');
    return ICON_MAP[iconName] || Star;
  };

  const getPlanColors = (product: StripeProduct) => {
    const planId = getPlanIdFromProduct(product.name);
    return COLOR_MAP[planId] || COLOR_MAP.basic;
  };

  // Loading state
  if (authLoading || (needsSubscriptionCheck && subLoading) || loadingProducts) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center">
          <Loader2 className="animate-spin h-12 w-12 text-primary mx-auto" />
          <p className="mt-4 text-muted-foreground">Verificando acesso...</p>
        </div>
      </div>
    );
  }

  // Not authenticated
  if (!user) {
    return <Navigate to={fallbackPath} replace />;
  }

  // Check subscription requirements
  let hasAccess = true;
  let requiredPlanName: Exclude<PlanName, null> | null = null;

  if (requiresPremium && !isPremium()) {
    hasAccess = false;
    requiredPlanName = 'Basic';
  }

  if (requiredPlan && !hasPlanOrHigher(requiredPlan)) {
    hasAccess = false;
    requiredPlanName = requiredPlan;
  }

  if (requiredFeature && !hasFeature(requiredFeature)) {
    hasAccess = false;
    requiredPlanName = getRequiredPlan(requiredFeature);
  }

  // No access - show upgrade prompt
  if (!hasAccess) {
    const currentPlan = getCurrentPlan();
    const currentPlanDisplayName = currentPlan ? getPlanDisplayName(currentPlan) : null;
    
    // Determinar quais produtos são elegíveis (igual ou superior ao plano requerido)
    const eligibleProducts = products.filter(product => {
      const planId = getPlanIdFromProduct(product.name);
      const planHierarchy = ['basic', 'standard', 'premium'];
      
      // Se não temos plano requerido, nenhum é elegível por padrão
      if (!requiredPlanName) return false;
      
      const requiredPlanId = requiredPlanName.toLowerCase();
      const productPlanLevel = planHierarchy.indexOf(planId);
      const requiredPlanLevel = planHierarchy.indexOf(requiredPlanId);
      
      return productPlanLevel >= requiredPlanLevel;
    });

    // Filtrar apenas os produtos relevantes para mostrar (Básico e Avançado)
    const productsToShow = products.filter(product => {
      const planId = getPlanIdFromProduct(product.name);
      return planId === 'basic' || planId === 'premium';
    });

    return (
      <div className="min-h-screen bg-gradient-to-b from-background to-secondary/5 flex items-center justify-center p-4">
        <div className="max-w-4xl w-full">
          <Card className="shadow-2xl border-primary/20 overflow-hidden">
            <CardContent className="p-6 md:p-8">
              {/* Header */}
              <div className="text-center mb-8">
                <div className="w-16 h-16 md:w-20 md:h-20 bg-gradient-to-br from-primary/20 to-secondary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                  <Lock className="w-8 h-8 md:w-10 md:h-10 text-primary" />
                </div>
                
                <h2 className="text-2xl md:text-3xl font-bold text-foreground mb-3">
                  Acesso Restrito
                </h2>
                
                <p className="text-muted-foreground mb-4 md:mb-6 max-w-2xl mx-auto text-lg">
                  {requiredPlanName 
                    ? `Esta funcionalidade está disponível apenas para assinantes do plano ${getPlanDisplayName(requiredPlanName)} ou superior.`
                    : 'Esta funcionalidade está disponível apenas para assinantes.'
                  }
                </p>
                
                {currentPlan && (
                  <Badge variant="outline" className="mt-2 px-4 py-1.5 text-sm">
                    <Crown className="w-3 h-3 md:w-4 md:h-4 mr-2" />
                    Plano atual: {currentPlanDisplayName}
                  </Badge>
                )}
              </div>

              <Separator className="my-6" />
              
              {/* Seção de comparação de planos */}
              {productsToShow.length > 0 && (
                <>
                  <div className="mb-8">
                    <h3 className="text-xl font-semibold text-center mb-6 text-foreground">
                      Compare os planos disponíveis
                    </h3>
                    
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-2xl mx-auto">
                      {productsToShow.map((product) => {
                        const planId = getPlanIdFromProduct(product.name);
                        const planDisplayName = getPlanDisplayName(product.name);
                        const features = getFeaturesFromProduct(product);
                        const price = getPriceForProduct(product.id);
                        const isCurrentPlanType = currentPlan?.toLowerCase() === planId;
                        const isRequiredPlan = requiredPlanName?.toLowerCase() === planId;
                        const isEligible = eligibleProducts.some(p => p.id === product.id);
                        const colors = getPlanColors(product);
                        const Icon = getPlanIcon(product);
                        
                        return (
                          <Card 
                            key={product.id}
                            className={`relative border-2 transition-all duration-300 hover:shadow-xl ${
                              isCurrentPlanType 
                                ? 'border-green-500 ring-2 ring-green-500/20 shadow-lg' 
                                : isRequiredPlan
                                ? 'border-primary ring-2 ring-primary/20 shadow-md'
                                : 'border-border'
                            } ${isEligible ? 'opacity-100' : 'opacity-70'}`}
                          >
                            {product.metadata?.popular === 'true' && (
                              <Badge className="absolute -top-3 left-1/2 -translate-x-1/2 bg-gradient-to-r from-primary to-secondary text-white px-4 py-1 text-xs">
                                <Sparkles className="w-3 h-3 mr-1" />
                                Mais Popular
                              </Badge>
                            )}
                            
                            {isCurrentPlanType && (
                              <Badge className="absolute -top-3 right-4 bg-green-500 text-white px-3 py-1 text-xs">
                                <Check className="w-3 h-3 mr-1" />
                                Seu Plano
                              </Badge>
                            )}

                            <CardContent className="pt-8 pb-6">
                              {/* Nome do plano com ícone */}
                              <div className="text-center mb-4">
                                <div className="flex items-center justify-center gap-2 mb-2">
                                  <div className={`w-10 h-10 ${colors.bgColor} rounded-full flex items-center justify-center`}>
                                    <Icon className={`w-5 h-5 ${colors.textColor}`} />
                                  </div>
                                  <h4 className="text-xl font-bold text-foreground">
                                    {planDisplayName}
                                  </h4>
                                </div>
                                <p className="text-sm text-muted-foreground min-h-[40px]">
                                  {product.description}
                                </p>
                              </div>

                              {/* Preço */}
                              {price && (
                                <div className="text-center mb-6">
                                  <div className="text-2xl md:text-3xl font-bold text-foreground mb-1">
                                    {formatPrice(price)}
                                  </div>
                                  {price.recurring?.interval === "year" && (
                                    <p className="text-sm text-green-600">
                                      Economize 20% comparado ao mensal
                                    </p>
                                  )}
                                </div>
                              )}

                              {/* Lista de features - IGUAL À PÁGINA DE PLANOS */}
                              <div className="space-y-3 mb-6">
                                {features.slice(0, 5).map((feature, idx) => (
                                  <div key={idx} className="flex items-start gap-3">
                                    {isEligible ? (
                                      <Check className="w-4 h-4 text-green-500 flex-shrink-0 mt-1" />
                                    ) : (
                                      <X className="w-4 h-4 text-muted-foreground flex-shrink-0 mt-1" />
                                    )}
                                    <span className={`text-sm text-left ${
                                      isEligible ? 'text-foreground' : 'text-muted-foreground'
                                    }`}>
                                      {feature}
                                    </span>
                                  </div>
                                ))}
                                {features.length > 5 && (
                                  <div className="text-xs text-muted-foreground text-center pt-2">
                                    + {features.length - 5} recursos adicionais
                                  </div>
                                )}
                              </div>

                              {/* Botão de ação */}
                              <div className="mt-auto">
                                {isCurrentPlanType ? (
                                  <Button 
                                    className="w-full" 
                                    variant="outline" 
                                    disabled
                                    size="lg"
                                  >
                                    <Check className="w-4 h-4 mr-2" />
                                    Plano Atual
                                  </Button>
                                ) : isEligible ? (
                                  <Button 
                                    onClick={() => navigate('/planos')}
                                    className={`w-full bg-gradient-to-r ${colors.color} hover:opacity-90`}
                                    size="lg"
                                  >
                                    <CreditCard className="w-4 h-4 mr-2" />
                                    Assinar Agora
                                  </Button>
                                ) : (
                                  <Button 
                                    onClick={() => navigate('/planos')}
                                    className="w-full"
                                    variant="outline"
                                    size="lg"
                                  >
                                    Ver Detalhes
                                  </Button>
                                )}
                              </div>
                            </CardContent>
                          </Card>
                        );
                      })}
                    </div>
                  </div>

                  {/* Seção de Diferenciais - IGUAL À PÁGINA DE PLANOS */}
                  <div className="mb-8 max-w-2xl mx-auto">
                    <div className="text-center mb-6">
                      <h3 className="text-lg font-semibold text-foreground mb-2">
                        Diferenciais da Plataforma
                      </h3>
                      <p className="text-muted-foreground text-sm">
                        Recursos que fazem a diferença na sua preparação
                      </p>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                      <div className="bg-muted/50 rounded-lg p-4">
                        <div className="w-10 h-10 rounded-lg bg-blue-100 flex items-center justify-center mb-3">
                          <BookOpen className="w-5 h-5 text-blue-600" />
                        </div>
                        <h4 className="font-medium text-foreground mb-1">Questões Reais</h4>
                        <p className="text-xs text-muted-foreground">
                          Milhares de questões de exames anteriores
                        </p>
                      </div>

                      <div className="bg-muted/50 rounded-lg p-4">
                        <div className="w-10 h-10 rounded-lg bg-green-100 flex items-center justify-center mb-3">
                          <BookmarkCheck className="w-5 h-5 text-green-600" />
                        </div>
                        <h4 className="font-medium text-foreground mb-1">Planejamento</h4>
                        <p className="text-xs text-muted-foreground">
                          Estudos organizados para você nunca perder um prazo
                        </p>
                      </div>

                      <div className="bg-muted/50 rounded-lg p-4">
                        <div className="w-10 h-10 rounded-lg bg-purple-100 flex items-center justify-center mb-3">
                          <Rocket className="w-5 h-5 text-purple-600" />
                        </div>
                        <h4 className="font-medium text-foreground mb-1">Progresso</h4>
                        <p className="text-xs text-muted-foreground">
                          Acompanhe seu desenvolvimento
                        </p>
                      </div>
                    </div>
                  </div>
                </>
              )}

              {/* Ações */}
              <div className="flex flex-col sm:flex-row gap-4 justify-center max-w-md mx-auto">
                <Button 
                  onClick={() => navigate('/planos')}
                  className="bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90"
                  size="lg"
                >
                  <CreditCard className="w-5 h-5 mr-2" />
                  Ver Todos os Planos
                </Button>
                
                <Button 
                  variant="outline"
                  onClick={() => navigate(-1)}
                  size="lg"
                >
                  Voltar
                </Button>
              </div>

              {/* Observações */}
              <div className="mt-8 text-center text-sm text-muted-foreground">
                <p className="mt-1">
                  Acesso imediato após a confirmação do pagamento.
                </p>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    );
  }

  // All checks passed
  return <>{children}</>;
}

// Componente para bloquear apenas parte do conteúdo baseado em feature
interface FeatureGateProps {
  children: ReactNode;
  feature: string;
  fallback?: ReactNode;
}

export function FeatureGate({ children, feature, fallback }: FeatureGateProps) {
  const navigate = useNavigate();
  const { hasFeature, getRequiredPlan, getCurrentPlan, loading } = useSubscription();

  const getPlanDisplayName = (planName: PlanName): string => {
    if (!planName) return '';
    if (planName.toLowerCase().includes('avançado') || planName === 'Premium') return 'Avançado';
    if (planName.toLowerCase().includes('avançado') || planName === 'Standard') return 'Avançado';
    if (planName.toLowerCase().includes('básico') || planName.toLowerCase().includes('basico') || planName === 'Basic') return 'Básico';
    return planName;
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center p-8">
        <Loader2 className="animate-spin h-8 w-8 text-primary" />
      </div>
    );
  }

  if (!hasFeature(feature)) {
    if (fallback) return <>{fallback}</>;
    
    const requiredPlan = getRequiredPlan(feature);
    const currentPlan = getCurrentPlan();
    const requiredPlanDisplayName = requiredPlan ? getPlanDisplayName(requiredPlan) : '';
    const currentPlanDisplayName = currentPlan ? getPlanDisplayName(currentPlan) : '';
    
    return (
      <div className="bg-gradient-to-br from-background to-muted/30 border-2 border-dashed border-primary/30 rounded-xl p-6 text-center">
        <div className="w-14 h-14 bg-primary/10 rounded-full flex items-center justify-center mx-auto mb-4">
          <Lock className="w-7 h-7 text-primary" />
        </div>
        
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Recurso Exclusivo
        </h3>
        
        <p className="text-muted-foreground mb-4">
          {requiredPlanDisplayName 
            ? `"${feature}" está disponível apenas no plano ${requiredPlanDisplayName}`
            : 'Faça upgrade para acessar este recurso exclusivo'
          }
        </p>

        {currentPlan && (
          <Badge variant="outline" className="mb-4">
            <Crown className="w-3 h-3 mr-1" />
            Seu plano: {currentPlanDisplayName}
          </Badge>
        )}

        <Button 
          onClick={() => navigate('/planos')}
          className="bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90"
          size="sm"
        >
          <Sparkles className="w-4 h-4 mr-2" />
          Desbloquear Recursos
        </Button>
      </div>
    );
  }

  return <>{children}</>;
}

// Componente para bloquear baseado em plano específico
interface PlanGateProps {
  children: ReactNode;
  requiredPlan: Exclude<PlanName, null>;
  fallback?: ReactNode;
}

export function PlanGate({ children, requiredPlan, fallback }: PlanGateProps) {
  const navigate = useNavigate();
  const { hasPlanOrHigher, getCurrentPlan, loading } = useSubscription();

  const getPlanDisplayName = (planName: PlanName): string => {
    if (!planName) return '';
    if (planName.toLowerCase().includes('avançado') || planName === 'Premium') return 'Avançado';
    if (planName.toLowerCase().includes('padrão') || planName === 'Standard') return 'Padrão';
    if (planName.toLowerCase().includes('básico') || planName.toLowerCase().includes('basico') || planName === 'Basic') return 'Básico';
    return planName;
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center p-8">
        <Loader2 className="animate-spin h-8 w-8 text-primary" />
      </div>
    );
  }

  if (!hasPlanOrHigher(requiredPlan)) {
    if (fallback) return <>{fallback}</>;
    
    const currentPlan = getCurrentPlan();
    const requiredPlanDisplayName = getPlanDisplayName(requiredPlan);
    const currentPlanDisplayName = currentPlan ? getPlanDisplayName(currentPlan) : '';
    
    return (
      <div className="bg-gradient-to-br from-background to-muted/30 border-2 border-dashed border-accent/30 rounded-xl p-6 text-center">
        <div className="w-14 h-14 bg-accent/10 rounded-full flex items-center justify-center mx-auto mb-4">
          <Crown className="w-7 h-7 text-accent" />
        </div>
        
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Plano {requiredPlanDisplayName} Necessário
        </h3>
        
        <p className="text-muted-foreground mb-4">
          {currentPlan 
            ? `Seu plano atual (${currentPlanDisplayName}) não possui este recurso. Faça upgrade para ${requiredPlanDisplayName}.`
            : `Assine o plano ${requiredPlanDisplayName} para desbloquear esta funcionalidade.`
          }
        </p>

        <Button 
          onClick={() => navigate('/planos')}
          className="bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90"
          size="sm"
        >
          <CreditCard className="w-4 h-4 mr-2" />
          {currentPlan ? 'Fazer Upgrade' : 'Ver Planos'}
        </Button>
      </div>
    );
  }

  return <>{children}</>;
}