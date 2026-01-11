// src/components/ProtectedRoute.tsx

import { ReactNode } from 'react';
import { Navigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { useSubscription } from '@/hooks/useSubscription';
import { Loader2, Lock, CreditCard } from 'lucide-react';
import { Button } from '@/components/ui/button';

interface ProtectedRouteProps {
  children: ReactNode;
  requiresPremium?: boolean;
  fallbackPath?: string;
}

export function ProtectedRoute({ 
  children, 
  requiresPremium = false,
  fallbackPath = '/auth'
}: ProtectedRouteProps) {
  const { user, loading: authLoading } = useAuth();
  const { isPremium, loading: subLoading } = useSubscription();

  // Ainda carregando
  if (authLoading || (requiresPremium && subLoading)) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Loader2 className="animate-spin h-12 w-12 text-blue-600 mx-auto" />
          <p className="mt-4 text-gray-600">Verificando acesso...</p>
        </div>
      </div>
    );
  }

  // Usuário não logado
  if (!user) {
    return <Navigate to={fallbackPath} replace />;
  }

  // Requer premium mas não tem
  if (requiresPremium && !isPremium()) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center p-4">
        <div className="bg-white rounded-lg shadow-lg p-8 max-w-md w-full text-center">
          <div className="w-16 h-16 bg-yellow-100 rounded-full flex items-center justify-center mx-auto mb-4">
            <Lock className="w-8 h-8 text-yellow-600" />
          </div>
          
          <h2 className="text-2xl font-bold text-gray-800 mb-2">
            Conteúdo Premium
          </h2>
          
          <p className="text-gray-600 mb-6">
            Esta funcionalidade está disponível apenas para assinantes premium.
            Faça upgrade agora e tenha acesso ilimitado!
          </p>
          
          <div className="space-y-3">
            <Button 
              onClick={() => window.location.href = '/pricing'}
              className="w-full bg-gradient-to-r from-yellow-500 to-orange-500 hover:from-yellow-600 hover:to-orange-600 text-white font-semibold py-3"
            >
              <CreditCard className="w-5 h-5 mr-2" />
              Ver Planos Premium
            </Button>
            
            <Button 
              variant="outline"
              onClick={() => window.history.back()}
              className="w-full"
            >
              Voltar
            </Button>
          </div>
          
          <div className="mt-6 pt-6 border-t border-gray-200">
            <p className="text-sm text-gray-500">
              ✨ Acesso ilimitado a todos os recursos<br />
              📚 Simulados exclusivos<br />
              🎯 Estatísticas avançadas
            </p>
          </div>
        </div>
      </div>
    );
  }

  // Tudo OK, renderiza o conteúdo
  return <>{children}</>;
}

// Componente auxiliar para bloquear apenas parte do conteúdo
interface PremiumContentProps {
  children: ReactNode;
  fallback?: ReactNode;
}

export function PremiumContent({ children, fallback }: PremiumContentProps) {
  const { isPremium, loading } = useSubscription();

  if (loading) {
    return (
      <div className="flex items-center justify-center p-8">
        <Loader2 className="animate-spin h-8 w-8 text-blue-600" />
      </div>
    );
  }

  if (!isPremium()) {
    if (fallback) return <>{fallback}</>;
    
    return (
      <div className="bg-gradient-to-r from-yellow-50 to-orange-50 border-2 border-yellow-200 rounded-lg p-6 text-center">
        <Lock className="w-12 h-12 text-yellow-600 mx-auto mb-3" />
        <h3 className="text-lg font-semibold text-gray-800 mb-2">
          Conteúdo Premium
        </h3>
        <p className="text-gray-600 mb-4 text-sm">
          Faça upgrade para acessar este recurso
        </p>
        <Button 
          onClick={() => window.location.href = '/pricing'}
          size="sm"
          className="bg-gradient-to-r from-yellow-500 to-orange-500 hover:from-yellow-600 hover:to-orange-600"
        >
          Ver Planos
        </Button>
      </div>
    );
  }

  return <>{children}</>;
}