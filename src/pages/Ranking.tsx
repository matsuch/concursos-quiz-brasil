import Navbar from "@/components/Navbar";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { Badge } from "@/components/ui/badge";
import { Trophy, Medal, Award, TrendingUp, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";

interface RankingPlayer {
  position: number;
  name: string;
  points: number;
  quizzes: number;
  accuracy: number;
}

const Ranking = () => {
  const { data: players = [], isLoading } = useQuery<RankingPlayer[]>({
    queryKey: ['ranking'],
    queryFn: async () => {
      const { data, error } = await supabase
        .from('profiles_ranking')
        .select('display_name, total_points, quizzes_completed')
        .order('total_points', { ascending: false })
        .limit(50);

      if (error) throw error;

      return (data as { display_name: string | null; total_points: number | null; quizzes_completed: number | null }[]).map((profile, index) => ({
        position: index + 1,
        name: profile.display_name || 'Jogador Anônimo',
        points: profile.total_points || 0,
        quizzes: profile.quizzes_completed || 0,
        accuracy: profile.quizzes_completed && profile.quizzes_completed > 0 ? 85 : 0,
      }));
    },
  });

  const getPositionIcon = (position: number) => {
    switch (position) {
      case 1: return <Trophy className="w-6 h-6 text-accent" />;
      case 2: return <Medal className="w-6 h-6 text-muted-foreground" />;
      case 3: return <Award className="w-6 h-6 text-amber-600" />;
      default: return null;
    }
  };

  const topThree = players.slice(0, 3);
  const hasTopThree = topThree.length >= 3;

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <div className="container mx-auto px-4 py-8 sm:py-12">
        <div className="max-w-4xl mx-auto">
          <div className="text-center mb-8 sm:mb-12">
            <h1 className="text-2xl sm:text-4xl font-bold mb-2">Ranking Global</h1>
            <p className="text-base sm:text-xl text-muted-foreground">
              Os melhores candidatos do Brasil
            </p>
          </div>

          {isLoading ? (
            <div className="flex justify-center items-center py-20">
              <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
          ) : players.length === 0 ? (
            <Card className="p-8 text-center">
              <Trophy className="w-16 h-16 mx-auto mb-4 text-muted-foreground/50" />
              <h2 className="text-xl font-semibold mb-2">Nenhum jogador no ranking</h2>
              <p className="text-muted-foreground">
                Complete quizzes e duelos para aparecer no ranking!
              </p>
            </Card>
          ) : (
            <>
              {hasTopThree && (
                <div className="grid grid-cols-3 gap-2 sm:gap-4 mb-8 sm:mb-12">
                  <div className="pt-6 sm:pt-8">
                    <Card className="p-3 sm:p-6 text-center border-2 border-border">
                      <div className="flex justify-center mb-2 sm:mb-3">{getPositionIcon(2)}</div>
                      <Avatar className="w-10 h-10 sm:w-16 sm:h-16 mx-auto mb-2 sm:mb-3 bg-secondary/10">
                        <AvatarFallback className="text-secondary font-bold text-xs sm:text-base">
                          {topThree[1].name.split(' ').map(n => n[0]).join('')}
                        </AvatarFallback>
                      </Avatar>
                      <p className="font-semibold mb-1 text-xs sm:text-base truncate">{topThree[1].name}</p>
                      <p className="text-lg sm:text-2xl font-bold text-secondary mb-1">{topThree[1].points}</p>
                      <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
                    </Card>
                  </div>

                  <div className="pt-0">
                    <Card className="p-3 sm:p-6 text-center border-2 border-primary bg-gradient-to-br from-primary/5 to-transparent">
                      <div className="flex justify-center mb-2 sm:mb-3">{getPositionIcon(1)}</div>
                      <Avatar className="w-12 h-12 sm:w-20 sm:h-20 mx-auto mb-2 sm:mb-3 bg-primary/10 border-2 sm:border-4 border-primary">
                        <AvatarFallback className="text-primary font-bold text-sm sm:text-xl">
                          {topThree[0].name.split(' ').map(n => n[0]).join('')}
                        </AvatarFallback>
                      </Avatar>
                      <p className="font-semibold mb-1 text-xs sm:text-base truncate">{topThree[0].name}</p>
                      <p className="text-xl sm:text-3xl font-bold text-primary mb-1">{topThree[0].points}</p>
                      <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
                    </Card>
                  </div>

                  <div className="pt-6 sm:pt-8">
                    <Card className="p-3 sm:p-6 text-center border-2 border-border">
                      <div className="flex justify-center mb-2 sm:mb-3">{getPositionIcon(3)}</div>
                      <Avatar className="w-10 h-10 sm:w-16 sm:h-16 mx-auto mb-2 sm:mb-3 bg-accent/10">
                        <AvatarFallback className="text-accent-foreground font-bold text-xs sm:text-base">
                          {topThree[2].name.split(' ').map(n => n[0]).join('')}
                        </AvatarFallback>
                      </Avatar>
                      <p className="font-semibold mb-1 text-xs sm:text-base truncate">{topThree[2].name}</p>
                      <p className="text-lg sm:text-2xl font-bold text-accent-foreground mb-1">{topThree[2].points}</p>
                      <p className="text-[10px] sm:text-xs text-muted-foreground">pontos</p>
                    </Card>
                  </div>
                </div>
              )}

              <Card className="overflow-hidden">
                <div className="divide-y divide-border">
                  {players.map((player) => (
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
                            {player.accuracy > 0 && (
                              <span className="flex items-center gap-1">
                                <TrendingUp className="w-3 h-3" />
                                {player.accuracy}%
                              </span>
                            )}
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
            </>
          )}
        </div>
      </div>
    </div>
  );
};

export default Ranking;