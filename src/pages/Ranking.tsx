import Navbar from "@/components/Navbar";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { Badge } from "@/components/ui/badge";
import { Trophy, Medal, Award, TrendingUp } from "lucide-react";
import { cn } from "@/lib/utils";

const mockRanking = [
  { position: 1, name: "Ana Silva", points: 2850, quizzes: 142, accuracy: 92 },
  { position: 2, name: "Carlos Santos", points: 2720, quizzes: 138, accuracy: 89 },
  { position: 3, name: "Maria Oliveira", points: 2680, quizzes: 135, accuracy: 91 },
  { position: 4, name: "João Pereira", points: 2540, quizzes: 127, accuracy: 87 },
  { position: 5, name: "Paula Costa", points: 2420, quizzes: 121, accuracy: 88 },
  { position: 6, name: "Ricardo Alves", points: 2350, quizzes: 118, accuracy: 86 },
  { position: 7, name: "Beatriz Lima", points: 2280, quizzes: 114, accuracy: 85 },
  { position: 8, name: "Fernando Rocha", points: 2190, quizzes: 110, accuracy: 84 },
  { position: 9, name: "Juliana Souza", points: 2120, quizzes: 106, accuracy: 83 },
  { position: 10, name: "Pedro Martins", points: 2050, quizzes: 103, accuracy: 82 },
];

const Ranking = () => {
  const getPositionIcon = (position: number) => {
    switch (position) {
      case 1:
        return <Trophy className="w-6 h-6 text-accent" />;
      case 2:
        return <Medal className="w-6 h-6 text-muted-foreground" />;
      case 3:
        return <Award className="w-6 h-6 text-amber-600" />;
      default:
        return null;
    }
  };

  const getPositionBadge = (position: number) => {
    if (position <= 3) {
      return (
        <div className="w-12 h-12 rounded-full bg-gradient-to-br from-accent to-accent/70 flex items-center justify-center text-white font-bold text-lg">
          {position}
        </div>
      );
    }
    return (
      <div className="w-12 h-12 rounded-full bg-muted flex items-center justify-center text-foreground font-bold text-lg">
        {position}
      </div>
    );
  };

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <div className="container mx-auto px-4 py-8 sm:py-12">
        <div className="max-w-4xl mx-auto">
          {/* Header */}
          <div className="text-center mb-8 sm:mb-12">
            <div className="w-16 h-16 sm:w-20 sm:h-20 rounded-full bg-gradient-to-br from-primary to-secondary flex items-center justify-center mx-auto mb-3 sm:mb-4">
              <Trophy className="w-8 h-8 sm:w-10 sm:h-10 text-white" />
            </div>
            <h1 className="text-2xl sm:text-4xl font-bold mb-2">Ranking Global</h1>
            <p className="text-base sm:text-xl text-muted-foreground">
              Os melhores candidatos do Brasil
            </p>
          </div>

          {/* Top 3 Podium */}
          <div className="grid grid-cols-3 gap-2 sm:gap-4 mb-8 sm:mb-12">
            {/* 2nd Place */}
            <div className="pt-6 sm:pt-8">
              <Card className="p-3 sm:p-6 text-center border-2 border-border">
                <div className="flex justify-center mb-2 sm:mb-3">
                  {getPositionIcon(2)}
                </div>
                <Avatar className="w-10 h-10 sm:w-16 sm:h-16 mx-auto mb-2 sm:mb-3 bg-secondary/10">
                  <AvatarFallback className="text-secondary font-bold text-xs sm:text-base">
                    {mockRanking[1].name.split(' ').map(n => n[0]).join('')}
                  </AvatarFallback>
                </Avatar>
                <p className="font-semibold mb-1 text-xs sm:text-base truncate">{mockRanking[1].name}</p>
                <p className="text-lg sm:text-2xl font-bold text-secondary mb-1">{mockRanking[1].points}</p>
                <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
              </Card>
            </div>

            {/* 1st Place */}
            <div className="pt-0">
              <Card className="p-3 sm:p-6 text-center border-2 border-primary bg-gradient-to-br from-primary/5 to-transparent">
                <div className="flex justify-center mb-2 sm:mb-3">
                  {getPositionIcon(1)}
                </div>
                <Avatar className="w-12 h-12 sm:w-20 sm:h-20 mx-auto mb-2 sm:mb-3 bg-primary/10 border-2 sm:border-4 border-primary">
                  <AvatarFallback className="text-primary font-bold text-sm sm:text-xl">
                    {mockRanking[0].name.split(' ').map(n => n[0]).join('')}
                  </AvatarFallback>
                </Avatar>
                <p className="font-semibold mb-1 text-xs sm:text-base truncate">{mockRanking[0].name}</p>
                <p className="text-xl sm:text-3xl font-bold text-primary mb-1">{mockRanking[0].points}</p>
                <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
              </Card>
            </div>

            {/* 3rd Place */}
            <div className="pt-6 sm:pt-8">
              <Card className="p-3 sm:p-6 text-center border-2 border-border">
                <div className="flex justify-center mb-2 sm:mb-3">
                  {getPositionIcon(3)}
                </div>
                <Avatar className="w-10 h-10 sm:w-16 sm:h-16 mx-auto mb-2 sm:mb-3 bg-accent/10">
                  <AvatarFallback className="text-accent-foreground font-bold text-xs sm:text-base">
                    {mockRanking[2].name.split(' ').map(n => n[0]).join('')}
                  </AvatarFallback>
                </Avatar>
                <p className="font-semibold mb-1 text-xs sm:text-base truncate">{mockRanking[2].name}</p>
                <p className="text-lg sm:text-2xl font-bold text-accent-foreground mb-1">{mockRanking[2].points}</p>
                <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
              </Card>
            </div>
          </div>

          {/* Full Ranking List */}
          <Card className="overflow-hidden">
            <div className="divide-y divide-border">
              {mockRanking.map((player) => (
                <div
                  key={player.position}
                  className="p-3 sm:p-4 hover:bg-muted/50 transition-colors"
                >
                  <div className="flex items-center gap-2 sm:gap-4">
                    <div className="flex-shrink-0">
                      <div className={cn(
                        "w-8 h-8 sm:w-12 sm:h-12 rounded-full flex items-center justify-center font-bold text-sm sm:text-lg",
                        player.position <= 3 
                          ? "bg-gradient-to-br from-accent to-accent/70 text-white"
                          : "bg-muted text-foreground"
                      )}>
                        {player.position}
                      </div>
                    </div>
                    
                    <Avatar className="w-8 h-8 sm:w-12 sm:h-12 bg-primary/10 hidden sm:flex">
                      <AvatarFallback className="text-primary font-semibold text-xs sm:text-base">
                        {player.name.split(' ').map(n => n[0]).join('')}
                      </AvatarFallback>
                    </Avatar>
                    
                    <div className="flex-1 min-w-0">
                      <p className="font-semibold truncate text-sm sm:text-base">{player.name}</p>
                      <div className="flex gap-2 sm:gap-4 text-xs sm:text-sm text-muted-foreground">
                        <span>{player.quizzes} quizzes</span>
                        <span className="flex items-center gap-1">
                          <TrendingUp className="w-3 h-3" />
                          {player.accuracy}%
                        </span>
                      </div>
                    </div>
                    
                    <div className="text-right">
                      <Badge variant="outline" className="bg-primary/10 text-primary border-primary/20 text-xs sm:text-sm">
                        {player.points} pts
                      </Badge>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default Ranking;
