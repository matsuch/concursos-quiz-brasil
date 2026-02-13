import { ReactNode, useState, useEffect, useRef } from 'react';
import { Navigate, useNavigate, useLocation } from 'react-router-dom';
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
  /** Exige um plano específico ou superior (Básico, Avançado) */
  requiredPlan?: Exclude<PlanName, null>;
  /** Exige acesso a uma feature específica */
  requiredFeature?: string;
  /** Rota de fallback para usuários não autenticados */
  fallbackPath?: string;
  /** Tempo de cache da validação em ms (padrão: 5 minutos) */
  cacheTime?: number;
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

interface ValidationCache {
  hasAccess: boolean;
  timestamp: number;
  requiredPlanName: Exclude<PlanName, null> | null;
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
  advanced: {
    color: "from-primary to-secondary",
    bgColor: "bg-primary/10",
    textColor: "text-primary"
  }
};

// Cache global para validações (persiste entre renderizações)
const validationCache = new Map<string, ValidationCache>();

export function ProtectedRoute({ 
  children, 
  requiresPremium = false,
  requiredPlan,
  requiredFeature,
  fallbackPath = '/auth',
  cacheTime = 5 * 60 * 1000 // 5 minutos por padrão
}: ProtectedRouteProps) {
  const navigate = useNavigate();
  const location = useLocation();
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
  
  // Estados para validação otimizada
  const [showContent, setShowContent] = useState(false);
  const [validationComplete, setValidationComplete] = useState(false);
  const [accessDenied, setAccessDenied] = useState(false);
  const [denialReason, setDenialReason] = useState<Exclude<PlanName, null> | null>(null);
  
  const validationInProgress = useRef(false);
  const initialLoadComplete = useRef(false);

  const needsSubscriptionCheck = requiresPremium || requiredPlan || requiredFeature;

  // Gera chave única para cache baseada nos requisitos da rota
  const getCacheKey = () => {
    return `${location.pathname}-${user?.id}-${requiredPlan || ''}-${requiredFeature || ''}`;
  };

  // Verifica se o cache ainda é válido
  const isCacheValid = (cache: ValidationCache): boolean => {
    return Date.now() - cache.timestamp < cacheTime;
  };

  // Valida acesso do usuário
  const validateAccess = (): { hasAccess: boolean; requiredPlanName: Exclude<PlanName, null> | null } => {
    let hasAccess = true;
    let requiredPlanName: Exclude<PlanName, null> | null = null;

    if (requiresPremium && !isPremium()) {
      hasAccess = false;
      requiredPlanName = 'Básico';
    }

    if (requiredPlan && !hasPlanOrHigher(requiredPlan)) {
      hasAccess = false;
      requiredPlanName = requiredPlan;
    }

    if (requiredFeature && !hasFeature(requiredFeature)) {
      hasAccess = false;
      requiredPlanName = getRequiredPlan(requiredFeature);
    }

    return { hasAccess, requiredPlanName };
  };

  // Buscar produtos do Stripe (apenas quando necessário)
  useEffect(() => {
    if (accessDenied && !loadingProducts && products.length === 0) {
      fetchProducts();
    }
  }, [accessDenied]);

  const fetchProducts = async () => {
    setLoadingProducts(true);
    try {
      const { data, error } = await supabase.functions.invoke('get-products');
      if (error) throw error;
      
      if (data?.products && data?.prices) {
        const activeProducts = data.products.filter((product: StripeProduct) => 
          product.name.toLowerCase().includes('básico') || 
          product.name.toLowerCase().includes('avançado')
        );

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

  // Validação otimizada com cache
  useEffect(() => {
    if (authLoading || !user) return;

    const performValidation = async () => {
      if (validationInProgress.current) return;
      validationInProgress.current = true;

      try {
        const cacheKey = getCacheKey();
        const cached = validationCache.get(cacheKey);

        // Se tem cache válido, usa ele imediatamente
        if (cached && isCacheValid(cached)) {
          setShowContent(cached.hasAccess);
          setAccessDenied(!cached.hasAccess);
          setDenialReason(cached.requiredPlanName);
          setValidationComplete(true);
          initialLoadComplete.current = true;
          return;
        }

        // Se não precisa verificar assinatura, libera imediatamente
        if (!needsSubscriptionCheck) {
          setShowContent(true);
          setValidationComplete(true);
          initialLoadComplete.current = true;
          return;
        }

        // Se ainda está carregando a assinatura mas já teve uma validação antes
        if (subLoading && initialLoadComplete.current && cached) {
          // Mostra o último estado conhecido enquanto revalida
          setShowContent(cached.hasAccess);
          setAccessDenied(!cached.hasAccess);
          setDenialReason(cached.requiredPlanName);
          return;
        }

        // Aguarda a assinatura carregar completamente
        if (subLoading) return;

        // Realiza validação
        const validation = validateAccess();
        
        // Atualiza cache
        validationCache.set(cacheKey, {
          hasAccess: validation.hasAccess,
          timestamp: Date.now(),
          requiredPlanName: validation.requiredPlanName
        });

        // Atualiza estado
        setShowContent(validation.hasAccess);
        setAccessDenied(!validation.hasAccess);
        setDenialReason(validation.requiredPlanName);
        setValidationComplete(true);
        initialLoadComplete.current = true;

      } finally {
        validationInProgress.current = false;
      }
    };

    performValidation();
  }, [user, authLoading, subLoading, needsSubscriptionCheck, location.pathname]);

  // Limpa cache quando usuário faz logout
  useEffect(() => {
    if (!user) {
      validationCache.clear();
      initialLoadComplete.current = false;
    }
  }, [user]);

  const getPlanIdFromProduct = (productName: string): string => {
    const nameLower = productName.toLowerCase();
    if (nameLower.includes('avançado')) return 'advanced';
    if (nameLower.includes('basico')) return 'basic';
    return 'basic';
  };

  const getPlanDisplayName = (productName: string): string => {
    const nameLower = productName.toLowerCase();
    if (nameLower.includes('avançado')) return 'Avançado';
    if (nameLower.includes('basico')) return 'Básico';
    return productName;
  };

  const getFeaturesFromProduct = (product: StripeProduct): string[] => {
    if (product.marketing_features && product.marketing_features.length > 0) {
      return product.marketing_features.map(f => f.name);
    }
    
    if (product.metadata?.features) {
      return product.metadata.features.split(';').map(f => f.trim());
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

  // Loading inicial apenas na primeira carga
  if (authLoading || (!initialLoadComplete.current && (needsSubscriptionCheck && subLoading))) {
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

  // Access denied - mostra tela de upgrade
  if (accessDenied) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-background via-muted/20 to-background flex items-center justify-center p-4">
        <div className="w-full max-w-4xl">
          <Card className="border-2 shadow-2xl">
            <CardContent className="pt-8 px-6 pb-8">
              {/* Header */}
              <div className="text-center mb-8">
                <div className="w-20 h-20 bg-gradient-to-br from-primary/20 to-secondary/20 rounded-full flex items-center justify-center mx-auto mb-6 shadow-lg">
                  <Lock className="w-10 h-10 text-primary" />
                </div>
                
                <h1 className="text-3xl font-bold text-foreground mb-3">
                  Conteúdo Exclusivo
                </h1>
                
                <p className="text-lg text-muted-foreground max-w-xl mx-auto">
                  {denialReason 
                    ? `Esta página requer o plano ${denialReason} ou superior`
                    : 'Faça upgrade para acessar este conteúdo exclusivo'
                  }
                </p>
              </div>

              {/* Planos disponíveis */}
              {products.length > 0 && (
                <>
                  <div className="mb-6">
                    <h2 className="text-xl font-semibold text-center mb-6">
                      Escolha o Plano Ideal
                    </h2>
                    
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-3xl mx-auto">
                      {products.map(product => {
                        const price = getPriceForProduct(product.id);
                        if (!price) return null;
                        
                        const Icon = getPlanIcon(product);
                        const colors = getPlanColors(product);
                        const features = getFeaturesFromProduct(product);
                        const planName = getPlanDisplayName(product.name);
                        const isRecommended = denialReason === planName;

                        return (
                          <div 
                            key={product.id}
                            className={`relative rounded-2xl p-6 transition-all duration-300 ${
                              isRecommended 
                                ? 'border-2 border-primary shadow-lg ring-2 ring-primary/20' 
                                : 'border border-border/50 hover:border-border hover:shadow-md'
                            }`}
                          >
                            {isRecommended && (
                              <Badge className="absolute -top-3 left-1/2 -translate-x-1/2 bg-primary text-primary-foreground">
                                Recomendado
                              </Badge>
                            )}
                            
                            <div className="text-center mb-6">
                              <div className={`w-12 h-12 ${colors.bgColor} rounded-xl flex items-center justify-center mx-auto mb-3`}>
                                <Icon className={`w-6 h-6 ${colors.textColor}`} />
                              </div>
                              
                              <h3 className="text-xl font-bold text-foreground mb-2">
                                {planName}
                              </h3>
                              
                              <div className="flex items-baseline justify-center gap-1">
                                <span className="text-3xl font-bold text-foreground">
                                  {formatPrice(price).split('/')[0]}
                                </span>
                                <span className="text-muted-foreground">
                                  /{formatPrice(price).split('/')[1]}
                                </span>
                              </div>
                            </div>

                            <div className="space-y-3 mb-6">
                              {features.map((feature, index) => (
                                <div key={index} className="flex items-start gap-2">
                                  <Check className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
                                  <span className="text-sm text-foreground">{feature}</span>
                                </div>
                              ))}
                            </div>

                            <Button
                              onClick={() => navigate('/planos')}
                              className={`w-full ${
                                isRecommended 
                                  ? 'bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90' 
                                  : ''
                              }`}
                              variant={isRecommended ? 'default' : 'outline'}
                            >
                              <CreditCard className="w-4 h-4 mr-2" />
                              Assinar Agora
                            </Button>
                          </div>
                        );
                      })}
                    </div>
                  </div>

                  {/* Seção de Diferenciais */}
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

  // All checks passed - mostra o conteúdo
  return <>{showContent ? children : null}</>;
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
    if (planName.toLowerCase().includes('avançado') || planName === 'Avançado') return 'Avançado';
    if (planName.toLowerCase().includes('básico') || planName.toLowerCase().includes('basico') || planName === 'Básico') return 'Básico';
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
    if (planName.toLowerCase().includes('avançado') || planName === 'Avançado') return 'Avançado';
    if (planName.toLowerCase().includes('básico') || planName.toLowerCase().includes('basico') || planName === 'Básico') return 'Básico';
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