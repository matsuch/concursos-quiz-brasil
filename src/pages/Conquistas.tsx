import Navbar from "@/components/Navbar";
import BadgeCard from "@/components/BadgeCard";
import { Progress } from "@/components/ui/progress";
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
} from "lucide-react";

const badges = [
  // Quiz badges
  {
    id: 1,
    icon: Brain,
    name: "Primeiro Passo",
    description: "Complete seu primeiro quiz",
    progress: 1,
    maxProgress: 1,
    unlocked: true,
    rarity: "comum" as const,
    category: "quiz",
  },
  {
    id: 2,
    icon: Target,
    name: "Precisão Cirúrgica",
    description: "Acerte 10 questões seguidas",
    progress: 7,
    maxProgress: 10,
    unlocked: false,
    rarity: "raro" as const,
    category: "quiz",
  },
  {
    id: 3,
    icon: Zap,
    name: "Velocista",
    description: "Responda 5 questões em menos de 5 segundos cada",
    progress: 3,
    maxProgress: 5,
    unlocked: false,
    rarity: "epico" as const,
    category: "quiz",
  },
  {
    id: 4,
    icon: Crown,
    name: "Mestre dos Quizzes",
    description: "Complete 100 quizzes com 80% ou mais de acerto",
    progress: 12,
    maxProgress: 100,
    unlocked: false,
    rarity: "lendario" as const,
    category: "quiz",
  },
  {
    id: 5,
    icon: Star,
    name: "Nota Máxima",
    description: "Acerte todas as questões de um quiz",
    progress: 1,
    maxProgress: 1,
    unlocked: true,
    rarity: "raro" as const,
    category: "quiz",
  },

  // Duelo badges
  {
    id: 6,
    icon: Swords,
    name: "Primeiro Duelo",
    description: "Participe do seu primeiro duelo",
    progress: 1,
    maxProgress: 1,
    unlocked: true,
    rarity: "comum" as const,
    category: "duelo",
  },
  {
    id: 7,
    icon: Medal,
    name: "Invicto",
    description: "Vença 5 duelos seguidos",
    progress: 2,
    maxProgress: 5,
    unlocked: false,
    rarity: "epico" as const,
    category: "duelo",
  },
  {
    id: 8,
    icon: Trophy,
    name: "Campeão Supremo",
    description: "Vença 50 duelos",
    progress: 8,
    maxProgress: 50,
    unlocked: false,
    rarity: "lendario" as const,
    category: "duelo",
  },
  {
    id: 9,
    icon: Timer,
    name: "Resposta Relâmpago",
    description: "Vença um duelo respondendo todas em menos de 3 segundos",
    progress: 0,
    maxProgress: 1,
    unlocked: false,
    rarity: "lendario" as const,
    category: "duelo",
  },

  // Estudo badges
  {
    id: 10,
    icon: BookOpen,
    name: "Estudante Dedicado",
    description: "Estude 10 flashcards",
    progress: 10,
    maxProgress: 10,
    unlocked: true,
    rarity: "comum" as const,
    category: "estudo",
  },
  {
    id: 11,
    icon: Lightbulb,
    name: "Mente Brilhante",
    description: "Complete todos os flashcards de uma matéria",
    progress: 1,
    maxProgress: 1,
    unlocked: true,
    rarity: "raro" as const,
    category: "estudo",
  },
  {
    id: 12,
    icon: GraduationCap,
    name: "Especialista",
    description: "Complete todos os flashcards de todas as matérias",
    progress: 2,
    maxProgress: 5,
    unlocked: false,
    rarity: "epico" as const,
    category: "estudo",
  },
  {
    id: 13,
    icon: Rocket,
    name: "Maratonista",
    description: "Estude por 7 dias seguidos",
    progress: 3,
    maxProgress: 7,
    unlocked: false,
    rarity: "epico" as const,
    category: "estudo",
  },

  // General badges
  {
    id: 14,
    icon: Flame,
    name: "Em Chamas",
    description: "Mantenha uma sequência de 30 dias ativos",
    progress: 5,
    maxProgress: 30,
    unlocked: false,
    rarity: "lendario" as const,
    category: "geral",
  },
  {
    id: 15,
    icon: Award,
    name: "Top 10",
    description: "Alcance o top 10 no ranking geral",
    progress: 0,
    maxProgress: 1,
    unlocked: false,
    rarity: "epico" as const,
    category: "geral",
  },
];

const categories = [
  { id: "todas", label: "Todas", icon: Award },
  { id: "quiz", label: "Quiz", icon: Brain },
  { id: "duelo", label: "Duelo", icon: Swords },
  { id: "estudo", label: "Estudo", icon: BookOpen },
  { id: "geral", label: "Geral", icon: Star },
];

const Conquistas = () => {
  const unlockedBadges = badges.filter((b) => b.unlocked).length;
  const totalBadges = badges.length;
  const overallProgress = (unlockedBadges / totalBadges) * 100;

  return (
    <div className="min-h-screen bg-background">
      <Navbar />

      <main className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="text-center mb-8">
          <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-amber-500/10 text-amber-500 text-sm font-medium mb-4">
            <Award className="w-4 h-4" />
            Sistema de Conquistas
          </div>
          <h1 className="text-3xl md:text-4xl font-bold text-foreground mb-2">
            Suas{" "}
            <span className="bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
              Conquistas
            </span>
          </h1>
          <p className="text-muted-foreground max-w-lg mx-auto">
            Desbloqueie badges completando quizzes, vencendo duelos e estudando!
          </p>
        </div>

        {/* Overall Progress */}
        <div className="bg-card rounded-2xl p-6 border border-border mb-8 max-w-2xl mx-auto">
          <div className="flex items-center justify-between mb-4">
            <div>
              <h2 className="font-bold text-lg">Progresso Geral</h2>
              <p className="text-sm text-muted-foreground">
                {unlockedBadges} de {totalBadges} conquistas desbloqueadas
              </p>
            </div>
            <div className="text-right">
              <span className="text-3xl font-bold text-primary">
                {Math.round(overallProgress)}%
              </span>
            </div>
          </div>
          <Progress value={overallProgress} className="h-3" />

          {/* Stats */}
          <div className="grid grid-cols-4 gap-4 mt-6">
            {categories.slice(1).map((cat) => {
              const catBadges = badges.filter((b) => b.category === cat.id);
              const catUnlocked = catBadges.filter((b) => b.unlocked).length;
              return (
                <div key={cat.id} className="text-center">
                  <cat.icon className="w-5 h-5 mx-auto text-muted-foreground mb-1" />
                  <p className="text-xs text-muted-foreground">{cat.label}</p>
                  <p className="font-bold text-sm">
                    {catUnlocked}/{catBadges.length}
                  </p>
                </div>
              );
            })}
          </div>
        </div>

        {/* Badges by Category */}
        {categories.slice(1).map((category) => {
          const categoryBadges = badges.filter(
            (b) => b.category === category.id
          );
          if (categoryBadges.length === 0) return null;

          return (
            <section key={category.id} className="mb-8">
              <div className="flex items-center gap-2 mb-4">
                <category.icon className="w-5 h-5 text-primary" />
                <h2 className="text-xl font-bold">{category.label}</h2>
                <span className="text-sm text-muted-foreground">
                  ({categoryBadges.filter((b) => b.unlocked).length}/
                  {categoryBadges.length})
                </span>
              </div>
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {categoryBadges.map((badge) => (
                  <BadgeCard
                    key={badge.id}
                    icon={badge.icon}
                    name={badge.name}
                    description={badge.description}
                    progress={badge.progress}
                    maxProgress={badge.maxProgress}
                    unlocked={badge.unlocked}
                    rarity={badge.rarity}
                  />
                ))}
              </div>
            </section>
          );
        })}
      </main>
    </div>
  );
};

export default Conquistas;
