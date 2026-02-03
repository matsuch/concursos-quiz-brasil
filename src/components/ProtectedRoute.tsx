import { ReactNode, useState, useEffect } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { useSubscription, PlanName } from '@/hooks/useSubscription';
import { Loader2, Lock, CreditCard, Crown, Sparkles, Check, X } from 'lucide-react';
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
  metadata?: {
    features?: string;
    popular?: string;
    icon?: string;
    order?: string;
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
        // Ordenar produtos pela ordem definida no metadata
        const sortedProducts = data.products.sort((a: StripeProduct, b: StripeProduct) => {
          const orderA = parseInt(a.metadata?.order || '0');
          const orderB = parseInt(b.metadata?.order || '0');
          return orderA - orderB;
        });
        
        setProducts(sortedProducts);
        setPrices(data.prices);
      }
    } catch (error) {
      console.error('Erro ao buscar produtos:', error);
      toast.error('Erro ao carregar informações dos planos');
    } finally {
      setLoadingProducts(false);
    }
  };

  const getPlanFromProduct = (productName: string): Exclude<PlanName, null> => {
    if (productName.toLowerCase().includes('premium') || productName.toLowerCase().includes('premium')) return 'Premium';
    if (productName.toLowerCase().includes('standard') || productName.toLowerCase().includes('padrão')) return 'Standard';
    return 'Basic';
  };

  const getFeaturesFromProduct = (product: StripeProduct): string[] => {
    if (product.metadata?.features) {
      return product.metadata.features.split(';').map(f => f.trim());
    }
    return [];
  };

  const getPriceForProduct = (productId: string): StripePrice | undefined => {
    return prices.find(price => price.product === productId);
  };

  const formatPrice = (price: StripePrice): string => {
    const amount = price.unit_amount / 100;
    const interval = price.recurring?.interval === 'year' ? 'ano' : 'mês';
    return `R$ ${amount.toFixed(2).replace('.', ',')}/${interval}`;
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
    
    // Encontrar o produto correspondente ao plano requerido
    const requiredProduct = products.find(product => {
      const planFromProduct = getPlanFromProduct(product.name);
      return planFromProduct === requiredPlanName;
    });

    // Produtos que são iguais ou superiores ao plano requerido
    const eligibleProducts = products.filter(product => {
      const planFromProduct = getPlanFromProduct(product.name);
      const currentIndex = products.findIndex(p => 
        getPlanFromProduct(p.name) === planFromProduct
      );
      const requiredIndex = products.findIndex(p => 
        getPlanFromProduct(p.name) === requiredPlanName
      );
      return currentIndex >= requiredIndex;
    });

    return (
      <div className="min-h-screen bg-gradient-to-b from-background to-secondary/5 flex items-center justify-center p-4">
        <div className="max-w-6xl w-full">
          <Card className="shadow-2xl border-primary/20 overflow-hidden">
            <CardContent className="p-8">
              {/* Header */}
              <div className="text-center mb-8">
                <div className="w-20 h-20 bg-gradient-to-br from-primary/20 to-secondary/20 rounded-full flex items-center justify-center mx-auto mb-4">
                  <Lock className="w-10 h-10 text-primary" />
                </div>
                
                <h2 className="text-3xl font-bold text-foreground mb-3">
                  Acesso Restrito
                </h2>
                
                <p className="text-muted-foreground text-lg mb-2">
                  {requiredPlanName 
                    ? `Esta funcionalidade está disponível apenas para assinantes do plano ${requiredPlanName} ou superior.`
                    : 'Esta funcionalidade está disponível apenas para assinantes.'
                  }
                </p>
                
                {currentPlan && (
                  <Badge variant="outline" className="mt-2 px-4 py-1.5">
                    <Crown className="w-4 h-4 mr-2" />
                    Plano atual: {currentPlan}
                  </Badge>
                )}
              </div>

              {/* Seção de comparação de planos */}
              {products.length > 0 && (
                <>
                  <Separator className="my-8" />
                  
                  <div className="mb-8">
                    <h3 className="text-xl font-semibold text-center mb-6 text-foreground">
                      Compare os planos disponíveis
                    </h3>
                    
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                      {products.map((product, index) => {
                        const planType = getPlanFromProduct(product.name);
                        const features = getFeaturesFromProduct(product);
                        const price = getPriceForProduct(product.id);
                        const isCurrentPlan = currentPlan === planType;
                        const isRequiredPlan = requiredPlanName === planType;
                        const isEligible = eligibleProducts.some(p => p.id === product.id);
                        
                        return (
                          <Card 
                            key={product.id}
                            className={`relative border-2 transition-all duration-300 hover:shadow-lg ${
                              isCurrentPlan 
                                ? 'border-green-500 ring-2 ring-green-500/20' 
                                : isRequiredPlan
                                ? 'border-primary ring-2 ring-primary/20'
                                : 'border-border'
                            } ${isEligible ? 'opacity-100' : 'opacity-60'}`}
                          >
                            {product.metadata?.popular === 'true' && (
                              <Badge className="absolute -top-3 left-1/2 -translate-x-1/2 bg-gradient-to-r from-primary to-secondary text-white px-4 py-1">
                                <Sparkles className="w-3 h-3 mr-1" />
                                Popular
                              </Badge>
                            )}
                            
                            {isCurrentPlan && (
                              <Badge className="absolute -top-3 right-4 bg-green-500 text-white px-3">
                                Seu Plano
                              </Badge>
                            )}

                            <CardContent className="pt-8 pb-6">
                              {/* Nome do plano */}
                              <div className="text-center mb-4">
                                <h4 className="text-xl font-bold text-foreground mb-1">
                                  {product.name}
                                </h4>
                                <p className="text-sm text-muted-foreground">
                                  {product.description}
                                </p>
                              </div>

                              {/* Preço */}
                              {price && (
                                <div className="text-center mb-6">
                                  <div className="text-3xl font-bold text-foreground">
                                    {formatPrice(price)}
                                  </div>
                                </div>
                              )}

                              {/* Features */}
                              <div className="space-y-3 mb-6">
                                {features.slice(0, 5).map((feature, idx) => (
                                  <div key={idx} className="flex items-start gap-3">
                                    {isEligible ? (
                                      <Check className="w-4 h-4 text-green-500 flex-shrink-0 mt-0.5" />
                                    ) : (
                                      <X className="w-4 h-4 text-muted-foreground flex-shrink-0 mt-0.5" />
                                    )}
                                    <span className={`text-sm ${
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
                                {isCurrentPlan ? (
                                  <Button 
                                    className="w-full" 
                                    variant="outline" 
                                    disabled
                                  >
                                    <Check className="w-4 h-4 mr-2" />
                                    Plano Atual
                                  </Button>
                                ) : isEligible ? (
                                  <Button 
                                    onClick={() => navigate('/planos')}
                                    className="w-full bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90"
                                    size="lg"
                                  >
                                    <CreditCard className="w-4 h-4 mr-2" />
                                    {price ? 'Assinar Agora' : 'Ver Detalhes'}
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
                </>
              )}

              {/* Ações */}
              <div className="flex flex-col sm:flex-row gap-4 justify-center">
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
                <p>
                  Todos os planos incluem 7 dias gratuitos para teste. 
                  Cancele a qualquer momento sem taxas.
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
    
    return (
      <div className="bg-gradient-to-br from-background to-muted/30 border-2 border-dashed border-primary/30 rounded-xl p-6 text-center">
        <div className="w-14 h-14 bg-primary/10 rounded-full flex items-center justify-center mx-auto mb-4">
          <Lock className="w-7 h-7 text-primary" />
        </div>
        
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Recurso Exclusivo
        </h3>
        
        <p className="text-muted-foreground mb-4">
          {requiredPlan 
            ? `"${feature}" está disponível apenas no plano ${requiredPlan}`
            : 'Faça upgrade para acessar este recurso exclusivo'
          }
        </p>

        {currentPlan && (
          <Badge variant="outline" className="mb-4">
            <Crown className="w-3 h-3 mr-1" />
            Seu plano: {currentPlan}
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
    
    return (
      <div className="bg-gradient-to-br from-background to-muted/30 border-2 border-dashed border-accent/30 rounded-xl p-6 text-center">
        <div className="w-14 h-14 bg-accent/10 rounded-full flex items-center justify-center mx-auto mb-4">
          <Crown className="w-7 h-7 text-accent" />
        </div>
        
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Plano {requiredPlan} Necessário
        </h3>
        
        <p className="text-muted-foreground mb-4">
          {currentPlan 
            ? `Seu plano atual (${currentPlan}) não possui este recurso. Faça upgrade para ${requiredPlan}.`
            : `Assine o plano ${requiredPlan} para desbloquear esta funcionalidade.`
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