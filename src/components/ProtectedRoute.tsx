import { ReactNode } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { useSubscription, PlanName, PLAN_HIERARCHY } from '@/hooks/useSubscription';
import { Loader2, Lock, CreditCard, Crown } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';

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

  const needsSubscriptionCheck = requiresPremium || requiredPlan || requiredFeature;

  // Loading state
  if (authLoading || (needsSubscriptionCheck && subLoading)) {
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
    
    return (
      <div className="min-h-screen bg-background flex items-center justify-center p-4">
        <Card className="max-w-md w-full shadow-lg">
          <CardContent className="pt-8 pb-8 text-center">
            <div className="w-16 h-16 bg-accent/20 rounded-full flex items-center justify-center mx-auto mb-4">
              <Lock className="w-8 h-8 text-accent-foreground" />
            </div>
            
            <h2 className="text-2xl font-bold text-foreground mb-2">
              Conteúdo Exclusivo
            </h2>
            
            <p className="text-muted-foreground mb-4">
              {requiredPlanName 
                ? `Esta funcionalidade requer o plano ${requiredPlanName} ou superior.`
                : 'Esta funcionalidade está disponível apenas para assinantes.'
              }
            </p>

            {currentPlan && (
              <div className="mb-6 p-3 bg-muted rounded-lg">
                <p className="text-sm text-muted-foreground">Seu plano atual:</p>
                <p className="font-semibold text-foreground flex items-center justify-center gap-2">
                  <Crown className="w-4 h-4 text-primary" />
                  {currentPlan}
                </p>
              </div>
            )}

            {/* Show plan benefits */}
            {requiredPlanName && (
              <div className="mb-6 text-left p-4 bg-primary/5 border border-primary/20 rounded-lg">
                <p className="font-semibold text-sm mb-2 text-foreground">
                  Benefícios do plano {requiredPlanName}:
                </p>
                <ul className="text-sm text-muted-foreground space-y-1">
                  {requiredPlanName === 'Premium' && (
                    <>
                      <li>✅ Simulados completos</li>
                      <li>✅ Duelos online</li>
                      <li>✅ Flashcards personalizados</li>
                      <li>✅ Ranking e estatísticas</li>
                    </>
                  )}
                  {requiredPlanName === 'Standard' && (
                    <>
                      <li>✅ Duelos online</li>
                      <li>✅ Flashcards personalizados</li>
                      <li>✅ Quizzes ilimitados</li>
                    </>
                  )}
                  {requiredPlanName === 'Basic' && (
                    <>
                      <li>✅ Flashcards básicos</li>
                      <li>✅ Quizzes</li>
                    </>
                  )}
                </ul>
              </div>
            )}
            
            <div className="space-y-3">
              <Button 
                onClick={() => navigate('/#pricing')}
                className="w-full bg-gradient-to-r from-primary to-secondary"
              >
                <CreditCard className="w-5 h-5 mr-2" />
                Ver Planos
              </Button>
              
              <Button 
                variant="outline"
                onClick={() => navigate(-1)}
                className="w-full"
              >
                Voltar
              </Button>
            </div>
          </CardContent>
        </Card>
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
  const { hasFeature, getRequiredPlan, loading } = useSubscription();

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
    
    return (
      <div className="bg-muted/50 border-2 border-dashed border-muted-foreground/20 rounded-lg p-6 text-center">
        <Lock className="w-10 h-10 text-muted-foreground mx-auto mb-3" />
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Recurso Bloqueado
        </h3>
        <p className="text-muted-foreground mb-4 text-sm">
          {requiredPlan 
            ? `Disponível a partir do plano ${requiredPlan}`
            : 'Faça upgrade para acessar este recurso'
          }
        </p>
        <Button 
          onClick={() => navigate('/#pricing')}
          size="sm"
          className="bg-gradient-to-r from-primary to-secondary"
        >
          Ver Planos
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
      <div className="bg-muted/50 border-2 border-dashed border-muted-foreground/20 rounded-lg p-6 text-center">
        <Crown className="w-10 h-10 text-accent mx-auto mb-3" />
        <h3 className="text-lg font-semibold text-foreground mb-2">
          Plano {requiredPlan} Necessário
        </h3>
        <p className="text-muted-foreground mb-4 text-sm">
          {currentPlan 
            ? `Você está no plano ${currentPlan}. Faça upgrade para ${requiredPlan}.`
            : `Assine o plano ${requiredPlan} para acessar.`
          }
        </p>
        <Button 
          onClick={() => navigate('/#pricing')}
          size="sm"
          className="bg-gradient-to-r from-primary to-secondary"
        >
          Fazer Upgrade
        </Button>
      </div>
    );
  }

  return <>{children}</>;
}
