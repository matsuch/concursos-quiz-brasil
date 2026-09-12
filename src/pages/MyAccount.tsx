import { useState, useEffect } from 'react';
import {
  AlertCircle, CreditCard, Calendar, CheckCircle, XCircle,
  Loader2, LogIn, User, Mail, Trophy, Brain, Swords, BookOpen,
  Award, Crown, Settings, Clock, BookMarked, GraduationCap,
  Medal, Sparkles, TrendingUp, Users, CheckCircle2, Heart,
  Coffee, Rocket, Target, Zap, Star, Shield, Flame,
} from 'lucide-react';
import { db } from '@/integrations/neon/client';
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
  const [profile, setProfile] = useState<Profile | null>(null);
  const [userBadges, setUserBadges] = useState<UserBadge[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  const checkAuthAndFetchData = async () => {
    try {
      setLoading(true);
      setError(null);
      const { data: { user }, error: authError } = await db.auth.getUser();
      if (authError || !user) { setIsAuthenticated(false); setLoading(false); return; }
      setIsAuthenticated(true);
      setUserId(user.id);
      setUserEmail(user.email ?? null);

      const [profileResult, badgesResult] = await Promise.all([
        db.from('profiles').select('*').eq('user_id', user.id).single(),
        db.from('user_badges').select('id, unlocked_at, badges(name, icon, rarity)').eq('user_id', user.id).limit(5),
      ]);


      if (profileResult.error && profileResult.error.code !== 'PGRST116') {
        console.error('Erro ao buscar perfil:', profileResult.error);
      } else { setProfile(profileResult.data); }

      if (!badgesResult.error) setUserBadges(badgesResult.data as unknown as UserBadge[]);
    } catch (err) {
      console.error('Erro:', err);
      setError('Erro ao carregar dados da conta');
    } finally { setLoading(false); }
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

  return (
    <>
      <Helmet>
        <title>Minha Conta | Passar Concursos - Gerenciar Perfil</title>
        <meta name="description" content="Gerencie sua conta e atualize suas informações pessoais." />
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

          {/* Main Tabs */}
          <Tabs defaultValue="dashboard" className="w-full">
            <TabsList className="grid w-full grid-cols-1 max-w-md">
              <TabsTrigger value="dashboard">Desempenho</TabsTrigger>
            { /* <TabsTrigger value="overview">Resumo</TabsTrigger> */}
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

          </Tabs>
        </div>
      </div>
    </>
  );
};

export default MyAccount;
