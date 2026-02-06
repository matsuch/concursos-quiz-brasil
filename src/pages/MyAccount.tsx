import { useState, useEffect } from 'react';
import {
  AlertCircle, CreditCard, Calendar, CheckCircle, XCircle,
  Loader2, LogIn, User, Mail, Trophy, Brain, Swords, BookOpen,
  Award, Crown, Settings, Clock, BookMarked, GraduationCap,
  Medal, Sparkles, TrendingUp, Users, CheckCircle2, Heart,
  Coffee, Rocket, Target, Zap, Star, Shield, Flame,
} from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { useNavigate } from 'react-router-dom';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { Tabs, TabsList, TabsTrigger, TabsContent } from '@/components/ui/tabs';
import { Helmet } from 'react-helmet-async';
import { PerformanceDashboard } from '@/components/account/PerformanceDashboard';

// Mapeamento de strings para componentes de ícones Lucide
const iconMap: Record<string, React.ComponentType<{ className?: string }>> = {
  'brain': Brain, 'bookopen': BookOpen, 'book': BookOpen, 'bookmarked': BookMarked,
  'graduationcap': GraduationCap, 'trophy': Trophy, 'award': Award, 'medal': Medal,
  'crown': Crown, 'star': Star, 'sparkles': Sparkles, 'target': Target, 'zap': Zap,
  'flame': Flame, 'rocket': Rocket, 'trendingup': TrendingUp, 'swords': Swords,
  'shield': Shield, 'clock': Clock, 'calendar': Calendar, 'users': Users, 'heart': Heart,
  'checkcircle': CheckCircle, 'checkcircle2': CheckCircle2, 'xcircle': XCircle,
  'alertcircle': AlertCircle, 'coffee': Coffee, 'mail': Mail, 'user': User,
  'settings': Settings, 'loader': Loader2, 'login': LogIn, 'creditcard': CreditCard,
};

type Subscription = {
  id: string;
  stripe_subscription_id: string;
  status: string;
  plan_name: string;
  plan_amount: number;
  currency: string;
  current_period_end: string;
  cancel_at_period_end: boolean;
};

type Profile = {
  display_name: string | null;
  avatar_url: string | null;
  total_points: number | null;
  quizzes_completed: number | null;
  duels_won: number | null;
  duels_played: number | null;
  flashcards_studied: number | null;
  simulados_completed: number | null;
  created_at: string;
};

type UserBadge = {
  id: string;
  unlocked_at: string;
  badges: { name: string; icon: string; rarity: string | null };
};

const renderBadgeIcon = (iconName: string) => {
  if (!/[a-zA-Z]/.test(iconName)) return <span className="text-xl">{iconName}</span>;
  const IconComponent = iconMap[iconName.toLowerCase()];
  if (IconComponent) return <IconComponent className="w-5 h-5" />;
  return <span className="text-xl">{iconName}</span>;
};

const MyAccount = () => {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(true);
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [userId, setUserId] = useState<string | null>(null);
  const [userEmail, setUserEmail] = useState<string | null>(null);
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [profile, setProfile] = useState<Profile | null>(null);
  const [userBadges, setUserBadges] = useState<UserBadge[]>([]);
  const [canceling, setCanceling] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [openingPortal, setOpeningPortal] = useState(false);

  const handleOpenPortal = async () => {
    try {
      setOpeningPortal(true);
      setError(null);
      setSuccess(null);
      const { data, error } = await supabase.functions.invoke('create-portal-session');
      if (error) throw error;
      if (data?.error) throw new Error(data.error);
      if (data?.url) {
        setSuccess('Abrindo portal de pagamento...');
        setTimeout(() => {
          window.open(data.url, '_blank');
          setOpeningPortal(false);
          setTimeout(() => setSuccess(null), 3000);
        }, 500);
      } else {
        throw new Error('URL do portal não encontrada');
      }
    } catch (err) {
      console.error('Erro ao abrir portal:', err);
      setError(err instanceof Error ? err.message : 'Erro ao abrir portal de pagamento');
      setOpeningPortal(false);
    }
  };

  useEffect(() => { checkAuthAndFetchData(); }, []);

  const checkAuthAndFetchData = async () => {
    try {
      setLoading(true);
      setError(null);
      const { data: { user }, error: authError } = await supabase.auth.getUser();
      if (authError || !user) { setIsAuthenticated(false); setLoading(false); return; }
      setIsAuthenticated(true);
      setUserId(user.id);
      setUserEmail(user.email ?? null);

      const [subscriptionResult, profileResult, badgesResult] = await Promise.all([
        supabase.from('subscriptions').select('*').eq('user_id', user.id).single(),
        supabase.from('profiles').select('*').eq('user_id', user.id).single(),
        supabase.from('user_badges').select('id, unlocked_at, badges(name, icon, rarity)').eq('user_id', user.id).limit(5),
      ]);

      if (subscriptionResult.error && subscriptionResult.error.code !== 'PGRST116') {
        console.error('Erro ao buscar assinatura:', subscriptionResult.error);
      } else { setSubscription(subscriptionResult.data); }

      if (profileResult.error && profileResult.error.code !== 'PGRST116') {
        console.error('Erro ao buscar perfil:', profileResult.error);
      } else { setProfile(profileResult.data); }

      if (!badgesResult.error) setUserBadges(badgesResult.data as unknown as UserBadge[]);
    } catch (err) {
      console.error('Erro:', err);
      setError('Erro ao carregar dados da conta');
    } finally { setLoading(false); }
  };

  const handleCancelSubscription = async () => {
    if (!window.confirm('Tem certeza que deseja cancelar sua assinatura? Você continuará tendo acesso até o final do período pago.')) return;
    try {
      setCanceling(true); setError(null); setSuccess(null);
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) { setError('Sessão expirada. Faça login novamente.'); return; }
      const { data, error } = await supabase.functions.invoke('cancel-subscription', { method: 'POST' });
      if (error) throw new Error(error.message || 'Erro ao cancelar assinatura');
      if (data?.error) throw new Error(data.error);
      setSuccess(data?.message || 'Assinatura cancelada com sucesso! Você terá acesso até o final do período pago.');
      await checkAuthAndFetchData();
    } catch (err) {
      console.error('Erro ao cancelar assinatura:', err);
      setError(err instanceof Error ? err.message : 'Erro ao cancelar assinatura. Tente novamente.');
    } finally { setCanceling(false); }
  };

  const getStatusInfo = (status: string) => {
    const map: Record<string, { label: string; variant: 'default' | 'destructive' | 'secondary' | 'outline' }> = {
      active: { label: 'Ativa', variant: 'default' },
      canceled: { label: 'Cancelada', variant: 'destructive' },
      past_due: { label: 'Pendente', variant: 'secondary' },
      trialing: { label: 'Trial', variant: 'outline' },
    };
    return map[status] || map.active;
  };

  const formatDate = (date: string) =>
    new Date(date).toLocaleDateString('pt-BR', { day: '2-digit', month: 'long', year: 'numeric' });

  const getInitials = (name: string | null, email: string | null) => {
    if (name) return name.slice(0, 2).toUpperCase();
    if (email) return email.slice(0, 2).toUpperCase();
    return 'US';
  };

  const getPlanBadgeColor = (planName: string) => {
    switch (planName?.toLowerCase()) {
      case 'premium': return 'bg-gradient-to-r from-amber-500 to-orange-500 text-white';
      case 'standard': return 'bg-gradient-to-r from-primary to-secondary text-white';
      default: return 'bg-muted text-muted-foreground';
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center">
          <Loader2 className="animate-spin h-12 w-12 text-primary mx-auto" />
          <p className="mt-4 text-muted-foreground">Carregando...</p>
        </div>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center p-4">
        <Card className="max-w-md w-full text-center shadow-lg">
          <CardContent className="pt-8 pb-8">
            <div className="w-16 h-16 bg-primary/10 rounded-full flex items-center justify-center mx-auto mb-4">
              <LogIn className="w-8 h-8 text-primary" />
            </div>
            <h2 className="text-2xl font-bold text-foreground mb-2">Acesso Restrito</h2>
            <p className="text-muted-foreground mb-6">Você precisa estar logado para acessar esta página.</p>
            <div className="space-y-3">
              <Button onClick={() => navigate('/auth')} className="w-full">Fazer Login</Button>
              <Button variant="outline" onClick={() => navigate('/')} className="w-full">Voltar ao Início</Button>
            </div>
          </CardContent>
        </Card>
      </div>
    );
  }

  const isCanceling = subscription?.cancel_at_period_end;

  return (
    <>
      <Helmet>
        <title>Minha Conta | Passar Concursos - Gerenciar Perfil e Assinatura</title>
        <meta name="description" content="Gerencie sua conta, visualize seu plano atual e atualize suas informações pessoais." />
        <link rel="canonical" href="https://passar-concursos.vercel.app/minha-conta" />
        <meta name="robots" content="noindex, nofollow" />
      </Helmet>
      <div className="min-h-screen bg-background py-6 px-4 md:py-10">
        <div className="max-w-5xl mx-auto space-y-6">

          {/* Header */}
          <div className="flex flex-col md:flex-row items-start md:items-center gap-4 md:gap-6">
            <Avatar className="w-20 h-20 md:w-24 md:h-24 border-4 border-primary/20">
              <AvatarImage src={profile?.avatar_url || undefined} />
              <AvatarFallback className="bg-primary text-primary-foreground text-2xl font-bold">
                {getInitials(profile?.display_name ?? null, userEmail)}
              </AvatarFallback>
            </Avatar>
            <div className="flex-1">
              <div className="flex items-center gap-3 flex-wrap">
                <h1 className="text-2xl md:text-3xl font-bold text-foreground">
                  {profile?.display_name || 'Usuário'}
                </h1>
                {subscription && (
                  <span className={`px-3 py-1 rounded-full text-sm font-medium ${getPlanBadgeColor(subscription.plan_name)}`}>
                    <Crown className="w-3 h-3 inline mr-1" />{subscription.plan_name}
                  </span>
                )}
              </div>
              <div className="flex items-center gap-2 mt-2 text-muted-foreground">
                <Mail className="w-4 h-4" /><span className="text-sm">{userEmail}</span>
              </div>
              {profile?.created_at && (
                <p className="text-xs text-muted-foreground mt-1">Membro desde {formatDate(profile.created_at)}</p>
              )}
            </div>
          </div>

          {/* Alerts */}
          {error && (
            <div className="bg-destructive/10 border border-destructive/20 rounded-lg p-4 flex items-start gap-3">
              <AlertCircle className="w-5 h-5 text-destructive flex-shrink-0 mt-0.5" />
              <p className="text-destructive">{error}</p>
            </div>
          )}
          {success && (
            <div className="bg-success/10 border border-success/20 rounded-lg p-4 flex items-start gap-3">
              <CheckCircle className="w-5 h-5 text-success flex-shrink-0 mt-0.5" />
              <p className="text-success">{success}</p>
            </div>
          )}
          {isCanceling && (
            <div className="bg-accent/20 border border-accent/30 rounded-lg p-4 flex items-start gap-3">
              <AlertCircle className="w-5 h-5 text-accent-foreground flex-shrink-0 mt-0.5" />
              <div>
                <p className="text-accent-foreground font-medium">Assinatura será cancelada</p>
                <p className="text-accent-foreground/80 text-sm mt-1">
                  Você terá acesso até {subscription && formatDate(subscription.current_period_end)}
                </p>
              </div>
            </div>
          )}

          {/* Main Tabs */}
          <Tabs defaultValue="dashboard" className="w-full">
            <TabsList className="grid w-full grid-cols-3 max-w-md">
              <TabsTrigger value="dashboard">Desempenho</TabsTrigger>
              <TabsTrigger value="overview">Resumo</TabsTrigger>
              <TabsTrigger value="subscription">Assinatura</TabsTrigger>
            </TabsList>

            {/* Dashboard Tab */}
            <TabsContent value="dashboard">
              {userId && <PerformanceDashboard userId={userId} />}
            </TabsContent>

            {/* Overview Tab */}
            <TabsContent value="overview" className="space-y-4">
              {/* Stats cards */}
              <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                <Card className="hover:shadow-md transition-shadow">
                  <CardContent className="p-4 text-center">
                    <div className="w-10 h-10 bg-primary/10 rounded-full flex items-center justify-center mx-auto mb-2">
                      <Trophy className="w-5 h-5 text-primary" />
                    </div>
                    <p className="text-2xl font-bold text-foreground">{profile?.total_points || 0}</p>
                    <p className="text-xs text-muted-foreground">Pontos Totais</p>
                  </CardContent>
                </Card>
                <Card className="hover:shadow-md transition-shadow">
                  <CardContent className="p-4 text-center">
                    <div className="w-10 h-10 bg-secondary/10 rounded-full flex items-center justify-center mx-auto mb-2">
                      <Brain className="w-5 h-5 text-secondary" />
                    </div>
                    <p className="text-2xl font-bold text-foreground">{profile?.quizzes_completed || 0}</p>
                    <p className="text-xs text-muted-foreground">Quizzes</p>
                  </CardContent>
                </Card>
                <Card className="hover:shadow-md transition-shadow">
                  <CardContent className="p-4 text-center">
                    <div className="w-10 h-10 bg-accent/20 rounded-full flex items-center justify-center mx-auto mb-2">
                      <Swords className="w-5 h-5 text-accent-foreground" />
                    </div>
                    <p className="text-2xl font-bold text-foreground">{profile?.duels_won || 0}/{profile?.duels_played || 0}</p>
                    <p className="text-xs text-muted-foreground">Duelos (V/T)</p>
                  </CardContent>
                </Card>
                <Card className="hover:shadow-md transition-shadow">
                  <CardContent className="p-4 text-center">
                    <div className="w-10 h-10 bg-success/10 rounded-full flex items-center justify-center mx-auto mb-2">
                      <BookOpen className="w-5 h-5 text-success" />
                    </div>
                    <p className="text-2xl font-bold text-foreground">{profile?.flashcards_studied || 0}</p>
                    <p className="text-xs text-muted-foreground">Flashcards</p>
                  </CardContent>
                </Card>
              </div>

              {/* Badges */}
              {userBadges.length > 0 && (
                <Card>
                  <CardHeader className="pb-3">
                    <div className="flex items-center justify-between">
                      <CardTitle className="text-lg flex items-center gap-2">
                        <Award className="w-5 h-5 text-primary" />Conquistas Recentes
                      </CardTitle>
                      <Button variant="ghost" size="sm" onClick={() => navigate('/conquistas')}>Ver todas</Button>
                    </div>
                  </CardHeader>
                  <CardContent>
                    <div className="flex flex-wrap gap-3">
                      {userBadges.map((ub) => (
                        <div key={ub.id} className="flex items-center gap-2 px-3 py-2 bg-muted rounded-lg" title={`Conquistado em ${formatDate(ub.unlocked_at)}`}>
                          {renderBadgeIcon(ub.badges.icon)}
                          <span className="text-sm font-medium">{ub.badges.name}</span>
                        </div>
                      ))}
                    </div>
                  </CardContent>
                </Card>
              )}
            </TabsContent>

            {/* Subscription Tab */}
            <TabsContent value="subscription" className="space-y-4">
              <Card className="overflow-hidden">
                <div className="bg-primary p-6 text-primary-foreground">
                  <div className="flex items-center justify-between">
                    <div>
                      <p className="text-primary-foreground/80 text-sm mb-1">Plano Atual</p>
                      <h2 className="text-2xl font-bold">{subscription?.plan_name || 'Gratuito'}</h2>
                    </div>
                    <CreditCard className="w-12 h-12 text-primary-foreground/60" />
                  </div>
                </div>
                <CardContent className="p-6">
                  {subscription ? (
                    <>
                      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 mb-6 pb-6 border-b border-border">
                        <div>
                          <p className="text-sm text-muted-foreground mb-2">Status</p>
                          <Badge variant={getStatusInfo(subscription.status).variant}>
                            {subscription.status === 'active' ? <CheckCircle className="w-3 h-3 mr-1" /> : <XCircle className="w-3 h-3 mr-1" />}
                            {getStatusInfo(subscription.status).label}
                          </Badge>
                        </div>
                        <div className="sm:text-right">
                          <p className="text-sm text-muted-foreground mb-1">Valor</p>
                          <p className="text-2xl font-bold text-foreground">
                            R$ {subscription.plan_amount.toFixed(2)}
                            <span className="text-sm text-muted-foreground font-normal">/mês</span>
                          </p>
                        </div>
                      </div>
                      {subscription.status === 'active' && (
                        <div className="flex items-center gap-3 mb-6 p-4 bg-muted rounded-lg">
                          <Calendar className="w-5 h-5 text-muted-foreground" />
                          <div>
                            <p className="text-sm text-muted-foreground">{isCanceling ? 'Acesso até' : 'Próxima cobrança'}</p>
                            <p className="font-medium text-foreground">{formatDate(subscription.current_period_end)}</p>
                          </div>
                        </div>
                      )}
                      <div className="space-y-3">
                        {subscription.status === 'active' && !isCanceling && (
                          <Button variant="destructive" onClick={handleCancelSubscription} disabled={canceling || openingPortal} className="w-full">
                            {canceling && <Loader2 className="w-4 h-4 mr-2 animate-spin" />}
                            {canceling ? 'Cancelando...' : 'Cancelar Assinatura'}
                          </Button>
                        )}
                        <Button variant="outline" onClick={handleOpenPortal} disabled={openingPortal || canceling} className="w-full">
                          {openingPortal ? (<><Loader2 className="w-4 h-4 mr-2 animate-spin" />Abrindo portal...</>) : (<><Settings className="w-4 h-4 mr-2" />Gerenciar Pagamento no Stripe</>)}
                        </Button>
                        {openingPortal && <p className="text-sm text-muted-foreground text-center">Uma nova aba será aberta com o portal de pagamento</p>}
                      </div>
                    </>
                  ) : (
                    <div className="text-center py-4">
                      <div className="w-16 h-16 bg-muted rounded-full flex items-center justify-center mx-auto mb-4">
                        <AlertCircle className="w-8 h-8 text-muted-foreground" />
                      </div>
                      <h3 className="text-lg font-semibold text-foreground mb-2">Sem Assinatura Ativa</h3>
                      <p className="text-muted-foreground mb-4">Assine um plano para desbloquear todos os recursos.</p>
                      <Button onClick={() => navigate('/#pricing')} className="w-full sm:w-auto">Ver Planos</Button>
                    </div>
                  )}
                </CardContent>
              </Card>
              {subscription && (
                <Card className="bg-secondary/5 border-secondary/20">
                  <CardContent className="p-4">
                    <h3 className="font-semibold text-foreground mb-2 flex items-center gap-2">
                      <AlertCircle className="w-4 h-4 text-secondary" />Informação Importante
                    </h3>
                    <p className="text-sm text-muted-foreground">
                      Ao cancelar sua assinatura, você continuará tendo acesso a todos os recursos até o final do período já pago. Após esta data, sua conta será convertida para o plano gratuito.
                    </p>
                  </CardContent>
                </Card>
              )}
            </TabsContent>
          </Tabs>
        </div>
      </div>
    </>
  );
};

export default MyAccount;
