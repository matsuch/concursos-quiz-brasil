import { ReactNode } from "react";
import { useNavigate } from "react-router-dom";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Lock, Crown, Loader2 } from "lucide-react";
import { useSubscription, FeatureKey } from "@/hooks/useSubscription";
import { useAuth } from "@/hooks/useAuth";

interface PremiumGateProps {
  feature: FeatureKey;
  children: ReactNode;
  title?: string;
  description?: string;
}

export function PremiumGate({ 
  feature, 
  children, 
  title = "Funcionalidade Premium",
  description 
}: PremiumGateProps) {
  const navigate = useNavigate();
  const { user, loading: authLoading } = useAuth();
  const { subscribed, loading: subLoading, hasFeature, getRequiredPlan } = useSubscription();

  const isLoading = authLoading || subLoading;

  // Show loading state
  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-[300px]">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  // If not logged in, show login prompt
  if (!user) {
    return (
      <div className="flex items-center justify-center min-h-[400px] px-4">
        <Card className="max-w-md w-full p-8 text-center">
          <div className="w-20 h-20 rounded-full bg-muted flex items-center justify-center mx-auto mb-6">
            <Lock className="w-10 h-10 text-muted-foreground" />
          </div>
          <h2 className="text-2xl font-bold mb-3">Faça login para continuar</h2>
          <p className="text-muted-foreground mb-6">
            Você precisa estar logado para acessar esta funcionalidade.
          </p>
          <Button onClick={() => navigate("/auth")} className="w-full">
            Fazer Login
          </Button>
        </Card>
      </div>
    );
  }

  // If user has a subscription with this feature, show children
  if (subscribed && hasFeature(feature)) {
    return <>{children}</>;
  }

  // Otherwise show upgrade prompt
  const requiredPlan = getRequiredPlan(feature);
  const defaultDescription = `Esta funcionalidade está disponível a partir do plano ${requiredPlan}. Faça upgrade para desbloquear!`;

  return (
    <div className="flex items-center justify-center min-h-[400px] px-4">
      <Card className="max-w-md w-full p-8 text-center border-2 border-primary/20">
        <div className="w-20 h-20 rounded-full bg-gradient-to-br from-primary/20 to-secondary/20 flex items-center justify-center mx-auto mb-6">
          <Crown className="w-10 h-10 text-primary" />
        </div>
        <h2 className="text-2xl font-bold mb-3">{title}</h2>
        <p className="text-muted-foreground mb-6">
          {description || defaultDescription}
        </p>
        <div className="space-y-3">
          <Button 
            onClick={() => navigate("/#pricing")} 
            className="w-full bg-gradient-to-r from-primary to-secondary hover:opacity-90"
          >
            <Crown className="w-4 h-4 mr-2" />
            Ver Planos
          </Button>
          {!subscribed && (
            <p className="text-xs text-muted-foreground">
              Você ainda não possui uma assinatura ativa
            </p>
          )}
          {subscribed && (
            <p className="text-xs text-muted-foreground">
              Seu plano atual não inclui esta funcionalidade
            </p>
          )}
        </div>
      </Card>
    </div>
  );
}
