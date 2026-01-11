import { useState, useEffect } from 'react';
import { AlertCircle, CreditCard, Calendar, CheckCircle, XCircle, Loader2, LogIn } from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { useNavigate } from 'react-router-dom';

type Subscription = {
  id: string;
  stripe_subscription_id: string;
  status: string;
  plan_name: string;
  plan_amount: number;
  currency: string;
  current_period_end: string;
  cancel_at_period_end: boolean;
}

export default function MyAccount() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [canceling, setCanceling] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  useEffect(() => {
    checkAuthAndFetchSubscription();
  }, []);

  const checkAuthAndFetchSubscription = async () => {
    try {
      setLoading(true);
      setError(null);

      // Verificar se usuário está autenticado
      const { data: { user }, error: authError } = await supabase.auth.getUser();
      
      if (authError || !user) {
        setIsAuthenticated(false);
        setLoading(false);
        return;
      }

      setIsAuthenticated(true);

      // Buscar assinatura do usuário
      const { data, error: subError } = await supabase
        .from('subscriptions')
        .select('*')
        .eq('user_id', user.id)
        .single();

      if (subError) {
        if (subError.code === 'PGRST116') {
          // Nenhuma assinatura encontrada
          setSubscription(null);
        } else {
          console.error('Erro ao buscar assinatura:', subError);
          setError('Erro ao carregar dados da assinatura');
        }
      } else {
        setSubscription(data);
      }
    } catch (err) {
      console.error('Erro:', err);
      setError('Erro ao carregar dados da assinatura');
    } finally {
      setLoading(false);
    }
  };

  const handleCancelSubscription = async () => {
    if (!window.confirm('Tem certeza que deseja cancelar sua assinatura? Você continuará tendo acesso até o final do período pago.')) {
      return;
    }

    try {
      setCanceling(true);
      setError(null);
      setSuccess(null);

      // Chamar a Edge Function de cancelamento
      const { data: { session } } = await supabase.auth.getSession();
      
      if (!session) {
        setError('Sessão expirada. Faça login novamente.');
        return;
      }

      const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
      
      const response = await fetch(
        `${supabaseUrl}/functions/v1/cancel-subscription`,
        {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${session.access_token}`,
            'Content-Type': 'application/json',
          },
        }
      );

      const result = await response.json();

      if (!response.ok) {
        throw new Error(result.error || 'Erro ao cancelar assinatura');
      }

      setSuccess('Assinatura cancelada com sucesso! Você terá acesso até o final do período pago.');
      
      // Atualizar os dados
      await checkAuthAndFetchSubscription();
    } catch (err) {
      console.error('Erro ao cancelar:', err);
      setError(err instanceof Error ? err.message : 'Erro ao cancelar assinatura. Tente novamente.');
    } finally {
      setCanceling(false);
    }
  };

  const getStatusInfo = (status: string) => {
    const statusMap: Record<string, { label: string; color: string; icon: any }> = {
      active: { 
        label: 'Ativa', 
        color: 'text-green-600 bg-green-50',
        icon: CheckCircle 
      },
      canceled: { 
        label: 'Cancelada', 
        color: 'text-red-600 bg-red-50',
        icon: XCircle 
      },
      past_due: { 
        label: 'Pagamento Pendente', 
        color: 'text-yellow-600 bg-yellow-50',
        icon: AlertCircle 
      },
      trialing: { 
        label: 'Período de Teste', 
        color: 'text-blue-600 bg-blue-50',
        icon: CheckCircle 
      }
    };
    return statusMap[status] || statusMap.active;
  };

  const formatDate = (date: string) => {
    return new Date(date).toLocaleDateString('pt-BR', {
      day: '2-digit',
      month: 'long',
      year: 'numeric'
    });
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <Loader2 className="animate-spin h-12 w-12 text-blue-600 mx-auto" />
          <p className="mt-4 text-gray-600">Carregando...</p>
        </div>
      </div>
    );
  }

  // Tela de login se não estiver autenticado
  if (!isAuthenticated) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center p-4">
        <div className="bg-white rounded-lg shadow-md p-8 max-w-md w-full text-center">
          <LogIn className="w-16 h-16 text-blue-600 mx-auto mb-4" />
          <h2 className="text-2xl font-bold text-gray-800 mb-2">Acesso Restrito</h2>
          <p className="text-gray-600 mb-6">Você precisa estar logado para acessar esta página.</p>
          <div className="space-y-3">
            <button 
              onClick={() => navigate('/login')}
              className="w-full bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition font-medium"
            >
              Fazer Login
            </button>
            <button 
              onClick={() => navigate('/')}
              className="w-full border-2 border-gray-300 text-gray-700 px-6 py-3 rounded-lg hover:bg-gray-50 transition font-medium"
            >
              Voltar ao Início
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (!subscription) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center p-4">
        <div className="bg-white rounded-lg shadow-md p-8 max-w-md w-full text-center">
          <AlertCircle className="w-16 h-16 text-gray-400 mx-auto mb-4" />
          <h2 className="text-2xl font-bold text-gray-800 mb-2">Sem Assinatura</h2>
          <p className="text-gray-600 mb-6">Você ainda não possui uma assinatura ativa.</p>
          <button 
            onClick={() => window.location.href = '/pricing'}
            className="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition"
          >
            Ver Planos
          </button>
        </div>
      </div>
    );
  }

  const statusInfo = getStatusInfo(subscription.status);
  const StatusIcon = statusInfo.icon;
  const isCanceling = subscription.cancel_at_period_end;

  return (
    <div className="min-h-screen bg-gray-50 py-8 px-4">
      <div className="max-w-3xl mx-auto">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">Minha Conta</h1>
          <p className="text-gray-600">Gerencie sua assinatura e informações de pagamento</p>
        </div>

        {/* Alertas */}
        {error && (
          <div className="mb-6 bg-red-50 border border-red-200 rounded-lg p-4 flex items-start gap-3">
            <AlertCircle className="w-5 h-5 text-red-600 flex-shrink-0 mt-0.5" />
            <p className="text-red-800">{error}</p>
          </div>
        )}

        {success && (
          <div className="mb-6 bg-green-50 border border-green-200 rounded-lg p-4 flex items-start gap-3">
            <CheckCircle className="w-5 h-5 text-green-600 flex-shrink-0 mt-0.5" />
            <p className="text-green-800">{success}</p>
          </div>
        )}

        {isCanceling && (
          <div className="mb-6 bg-orange-50 border border-orange-200 rounded-lg p-4 flex items-start gap-3">
            <AlertCircle className="w-5 h-5 text-orange-600 flex-shrink-0 mt-0.5" />
            <div>
              <p className="text-orange-800 font-medium">Assinatura será cancelada</p>
              <p className="text-orange-700 text-sm mt-1">
                Você terá acesso até {formatDate(subscription.current_period_end)}
              </p>
            </div>
          </div>
        )}

        {/* Card de Assinatura */}
        <div className="bg-white rounded-lg shadow-md overflow-hidden mb-6">
          <div className="bg-gradient-to-r from-blue-600 to-blue-700 p-6 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-blue-100 text-sm mb-1">Plano Atual</p>
                <h2 className="text-2xl font-bold">{subscription.plan_name}</h2>
              </div>
              <CreditCard className="w-12 h-12 text-blue-200" />
            </div>
          </div>

          <div className="p-6">
            {/* Status */}
            <div className="flex items-center justify-between mb-6 pb-6 border-b">
              <div>
                <p className="text-sm text-gray-600 mb-1">Status da Assinatura</p>
                <div className="flex items-center gap-2">
                  <StatusIcon className="w-5 h-5" />
                  <span className={`px-3 py-1 rounded-full text-sm font-medium ${statusInfo.color}`}>
                    {statusInfo.label}
                  </span>
                </div>
              </div>
              <div className="text-right">
                <p className="text-sm text-gray-600 mb-1">Valor</p>
                <p className="text-2xl font-bold text-gray-900">
                  R$ {subscription.plan_amount.toFixed(2)}
                  <span className="text-sm text-gray-600 font-normal">/mês</span>
                </p>
              </div>
            </div>

            {/* Próxima Cobrança */}
            {subscription.status === 'active' && (
              <div className="flex items-center gap-3 mb-6 p-4 bg-gray-50 rounded-lg">
                <Calendar className="w-5 h-5 text-gray-600" />
                <div>
                  <p className="text-sm text-gray-600">
                    {isCanceling ? 'Acesso até' : 'Próxima cobrança'}
                  </p>
                  <p className="font-medium text-gray-900">
                    {formatDate(subscription.current_period_end)}
                  </p>
                </div>
              </div>
            )}

            {/* Ações */}
            <div className="space-y-3">
              {subscription.status === 'active' && !isCanceling && (
                <button
                  onClick={handleCancelSubscription}
                  disabled={canceling}
                  className="w-full bg-red-600 text-white py-3 rounded-lg hover:bg-red-700 transition disabled:bg-gray-400 disabled:cursor-not-allowed font-medium flex items-center justify-center gap-2"
                >
                  {canceling && <Loader2 className="w-5 h-5 animate-spin" />}
                  {canceling ? 'Cancelando...' : 'Cancelar Assinatura'}
                </button>
              )}
              
              <button 
                onClick={() => window.open('https://billing.stripe.com/p/login/your_portal_link', '_blank')}
                className="w-full border-2 border-gray-300 text-gray-700 py-3 rounded-lg hover:bg-gray-50 transition font-medium"
              >
                Gerenciar Pagamento no Stripe
              </button>
            </div>
          </div>
        </div>

        {/* Informações Adicionais */}
        <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
          <h3 className="font-semibold text-blue-900 mb-2">Informação Importante</h3>
          <p className="text-sm text-blue-800">
            Ao cancelar sua assinatura, você continuará tendo acesso a todos os recursos até o final do período já pago. Após esta data, sua conta será convertida para o plano gratuito.
          </p>
        </div>
      </div>
    </div>
  );
}