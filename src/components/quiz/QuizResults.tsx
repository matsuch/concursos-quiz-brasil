// components/quiz/QuizResults.tsx
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CheckCircle2, XCircle } from "lucide-react";
import { cn } from "@/lib/utils";
import { useAuth } from "@/hooks/useAuth";

interface QuizResultsProps {
  score: number;
  total: number;
  onRetry: () => void;
  onNewQuiz: () => void;
}

export function QuizResults({ score, total, onRetry, onNewQuiz }: QuizResultsProps) {
  const { user } = useAuth();
  const percentage = total > 0 ? (score / total) * 100 : 0;
  const pointsEarned = score * 10;

  return (
    <div className="container mx-auto px-4 py-12 sm:py-20">
      <div className="max-w-2xl mx-auto text-center">
        <div
          className={cn(
            "w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6",
            percentage >= 70 ? "bg-success/10" : "bg-destructive/10"
          )}
        >
          {percentage >= 70 ? (
            <CheckCircle2 className="w-12 h-12 text-success" />
          ) : (
            <XCircle className="w-12 h-12 text-destructive" />
          )}
        </div>

        <h1 className="text-3xl sm:text-4xl font-bold mb-4">Quiz Finalizado!</h1>
        
        <p className="text-lg sm:text-xl text-muted-foreground mb-2">
          Você acertou {score} de {total} questões
        </p>

        {user && (
          <p className="text-lg text-primary font-semibold mb-8">
            +{pointsEarned} pontos
          </p>
        )}

        <Card className="p-8 mb-8">
          <div className="text-5xl sm:text-6xl font-bold mb-2 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
            {percentage.toFixed(0)}%
          </div>
          <p className="text-sm text-muted-foreground">de aproveitamento</p>
        </Card>

        <div className="flex gap-4 justify-center flex-wrap">
          <Button onClick={onRetry}>Tentar Novamente</Button>
          <Button variant="outline" onClick={onNewQuiz}>
            Novo Quiz
          </Button>
        </div>
      </div>
    </div>
  );
}