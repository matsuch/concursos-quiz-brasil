import { useEffect, useState } from "react";
import { useQuery } from "@tanstack/react-query";
import Navbar from "@/components/Navbar";
import BadgeCard from "@/components/BadgeCard";
import { Progress } from "@/components/ui/progress";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import {
  Award,
  BookOpen,
  Brain,
  Crown,
  Flame,
  GraduationCap,
  Lightbulb,
  Medal,
  Rocket,
  Star,
  Swords,
  Target,
  Timer,
  Trophy,
  Zap,
  LucideIcon,
  Loader2,
} from "lucide-react";

const iconMap: Record<string, LucideIcon> = {
  brain: Brain,
  target: Target,
  zap: Zap,
  crown: Crown,
  star: Star,
  swords: Swords,
  medal: Medal,
  trophy: Trophy,
  timer: Timer,
  bookopen: BookOpen,
  lightbulb: Lightbulb,
  graduationcap: GraduationCap,
  rocket: Rocket,
  flame: Flame,
  award: Award,
};

const categories = [
  { id: "todas", label: "Todas", icon: Award },
  { id: "quiz", label: "Quiz", icon: Brain },
  { id: "duelo", label: "Duelo", icon: Swords },
  { id: "estudo", label: "Estudo", icon: BookOpen },
  { id: "geral", label: "Geral", icon: Star },
];

interface Badge {
  id: string;
  name: string;
  description: string;
  icon: string;
  category: string;
  rarity: string;
  requirement_type: string;
  requirement_value: number;
}

interface UserBadge {
  badge_id: string;
  unlocked_at: string;
}

interface ProfileStats {
  quizzes_completed: number;
  duels_won: number;
  duels_played: number;
  flashcards_studied: number;
  total_points: number;
}

const Conquistas = () => {
  const { user } = useAuth();

  const { data: badges = [], isLoading: loadingBadges } = useQuery({
    queryKey: ["badges"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("badges")
        .select("*")
        .order("category", { ascending: true });
      if (error) throw error;
      return data as Badge[];
    },
  });

  const { data: userBadges = [], isLoading: loadingUserBadges } = useQuery({
    queryKey: ["user_badges", user?.id],
    queryFn: async () => {
      if (!user?.id) return [];
      const { data, error } = await supabase
        .from("user_badges")
        .select("badge_id, unlocked_at")
        .eq("user_id", user.id);
      if (error) throw error;
      return data as UserBadge[];
    },
    enabled: !!user?.id,
  });

  const { data: profileStats } = useQuery({
    queryKey: ["profile_stats", user?.id],
    queryFn: async () => {
      if (!user?.id) return null;
      const { data, error } = await supabase
        .from("profiles")
        .select("quizzes_completed, duels_won, duels_played, flashcards_studied, total_points")
        .eq("user_id", user.id)
        .maybeSingle();
      if (error) throw error;
      return data as ProfileStats | null;
    },
    enabled: !!user?.id,
  });

  const unlockedBadgeIds = new Set(userBadges.map((ub) => ub.badge_id));

  const getProgressForBadge = (badge: Badge): number => {
    if (!profileStats) return 0;
    switch (badge.requirement_type) {
      case "quizzes_completed":
        return Math.min(profileStats.quizzes_completed || 0, badge.requirement_value);
      case "duels_won":
        return Math.min(profileStats.duels_won || 0, badge.requirement_value);
      case "duels_played":
        return Math.min(profileStats.duels_played || 0, badge.requirement_value);
      case "flashcards_studied":
        return Math.min(profileStats.flashcards_studied || 0, badge.requirement_value);
      case "total_points":
        return Math.min(profileStats.total_points || 0, badge.requirement_value);
      default:
        return 0;
    }
  };

  const badgesWithProgress = badges.map((badge) => ({
    ...badge,
    unlocked: unlockedBadgeIds.has(badge.id),
    progress: getProgressForBadge(badge),
    maxProgress: badge.requirement_value,
    IconComponent: iconMap[badge.icon.toLowerCase()] || Award,
  }));

  const unlockedCount = badgesWithProgress.filter((b) => b.unlocked).length;
  const totalBadges = badgesWithProgress.length;
  const overallProgress = totalBadges > 0 ? (unlockedCount / totalBadges) * 100 : 0;

  const isLoading = loadingBadges || loadingUserBadges;

  if (isLoading) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="flex items-center justify-center h-[60vh]">
          <Loader2 className="w-8 h-8 animate-spin text-primary" />
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <Navbar />

      <main className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="text-center mb-8">
          <h1 className="text-3xl md:text-4xl font-bold text-black mb-2">
            Suas Conquistas
          </h1>
          <p className="text-muted-foreground max-w-lg mx-auto">
            Desbloqueie badges completando quizzes, vencendo duelos e estudando!
          </p>
        </div>

        {/* Overall Progress */}
        <div className="bg-card rounded-2xl p-4 sm:p-6 border border-border mb-6 sm:mb-8 max-w-2xl mx-auto">
          <div className="flex items-center justify-between mb-4">
            <div>
              <h2 className="font-bold text-base sm:text-lg">Progresso Geral</h2>
              <p className="text-xs sm:text-sm text-muted-foreground">
                {unlockedCount} de {totalBadges} desbloqueadas
              </p>
            </div>
            <div className="text-right">
              <span className="text-2xl sm:text-3xl font-bold text-primary">
                {Math.round(overallProgress)}%
              </span>
            </div>
          </div>
          <Progress value={overallProgress} className="h-2 sm:h-3" />

          {/* Stats */}
          <div className="grid grid-cols-4 gap-2 sm:gap-4 mt-4 sm:mt-6">
            {categories.slice(1).map((cat) => {
              const catBadges = badgesWithProgress.filter((b) => b.category === cat.id);
              const catUnlocked = catBadges.filter((b) => b.unlocked).length;
              return (
                <div key={cat.id} className="text-center">
                  <cat.icon className="w-4 h-4 sm:w-5 sm:h-5 mx-auto text-muted-foreground mb-1" />
                  <p className="text-[10px] sm:text-xs text-muted-foreground">{cat.label}</p>
                  <p className="font-bold text-xs sm:text-sm">
                    {catUnlocked}/{catBadges.length}
                  </p>
                </div>
              );
            })}
          </div>
        </div>

        {/* Badges by Category */}
        {categories.slice(1).map((category) => {
          const categoryBadges = badgesWithProgress.filter(
            (b) => b.category === category.id
          );
          if (categoryBadges.length === 0) return null;

          return (
            <section key={category.id} className="mb-6 sm:mb-8">
              <div className="flex items-center gap-2 mb-3 sm:mb-4">
                <category.icon className="w-4 h-4 sm:w-5 sm:h-5 text-primary" />
                <h2 className="text-lg sm:text-xl font-bold">{category.label}</h2>
                <span className="text-xs sm:text-sm text-muted-foreground">
                  ({categoryBadges.filter((b) => b.unlocked).length}/
                  {categoryBadges.length})
                </span>
              </div>
              <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3 sm:gap-4">
                {categoryBadges.map((badge) => (
                  <BadgeCard
                    key={badge.id}
                    icon={badge.IconComponent}
                    name={badge.name}
                    description={badge.description}
                    progress={badge.progress}
                    maxProgress={badge.maxProgress}
                    unlocked={badge.unlocked}
                    rarity={badge.rarity as "comum" | "raro" | "epico" | "lendario"}
                  />
                ))}
              </div>
            </section>
          );
        })}

        {badges.length === 0 && (
          <div className="text-center py-12">
            <Award className="w-16 h-16 mx-auto text-muted-foreground/50 mb-4" />
            <p className="text-muted-foreground">Nenhuma conquista disponível ainda.</p>
          </div>
        )}
      </main>
    </div>
  );
};

export default Conquistas;
