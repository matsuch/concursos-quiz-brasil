// components/quiz/QuizQuestion.tsx
import { useState } from "react";
import ReactMarkdown from "react-markdown";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { ChevronLeft, ChevronRight, Sparkles, LogIn } from "lucide-react";
import { cn } from "@/lib/utils";

interface Question {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  subject: string;
  difficulty: string | null;
  is_official: boolean | null;
  assunto: string | null;
  banca: string | null;
  prova: string | null;
  ai_explanation?: string | null;
}

interface QuizQuestionProps {
  question: Question;
  selectedAnswer: number | null;
  answered: boolean;
  onSelectOption: (index: number) => void;
  onSubmitAnswer: () => void;
  onNext: () => void;
  onPrevious: () => void;
  hasPrevious: boolean;
  hasNext: boolean;
  isAuthenticated?: boolean;
}

export function QuizQuestion({
  question,
  selectedAnswer,
  answered,
  onSelectOption,
  onSubmitAnswer,
  onNext,
  onPrevious,
  hasPrevious,
  hasNext,
  isAuthenticated = false,
}: QuizQuestionProps) {
  const [showAiExplanation, setShowAiExplanation] = useState(false);

  const getOptionStyle = (index: number) => {
    const isCorrect = index === question.correct_answer;
    const isSelected = index === selectedAnswer;

    if (!answered) {
      return cn(
        "border-border",
        isSelected && "border-primary bg-primary/5"
      );
    }

    if (isCorrect) return "border-success bg-success/10";
    if (isSelected && !isCorrect) return "border-destructive bg-destructive/10";
    return "border-border opacity-60";
  };

  const getLetterStyle = (index: number) => {
    const isCorrect = index === question.correct_answer;
    const isSelected = index === selectedAnswer;

    if (!answered) {
      return cn(
        isSelected ? "border-primary text-primary" : "border-warning text-warning"
      );
    }

    if (isCorrect) return "border-success text-success bg-success/20";
    if (isSelected && !isCorrect) return "border-destructive text-destructive bg-destructive/20";
    return "border-muted text-muted-foreground";
  };

  // Função para lidar com clique no botão principal
  const handleMainButtonClick = () => {
    // Se não estiver autenticado, chama onSubmitAnswer que redirecionará para login
    // Se estiver autenticado, também chama onSubmitAnswer normalmente
    onSubmitAnswer();
  };

  return (
    <div className="space-y-3 sm:space-y-4 pb-8 sm:pb-4">
      {/* Question Header */}
      <Card className="p-3 sm:p-4">
        <div className="flex items-center gap-2 sm:gap-3 flex-wrap">
          <Badge variant="secondary" className="text-xs sm:text-sm">{question.subject}</Badge>
          {question.banca && (
            <span className="text-xs sm:text-sm">
              <span className="text-muted-foreground">Banca:</span>{" "}
              <span className="text-primary font-medium">{question.banca}</span>
            </span>
          )}
          {question.assunto && (
            <span className="text-xs sm:text-sm">
              <span className="text-muted-foreground">Assunto:</span>{" "}
              <span className="text-muted-foreground">{question.assunto}</span>
            </span>
          )}
          {question.prova && (
            <span className="text-xs sm:text-sm">
              <span className="text-muted-foreground">Prova:</span>{" "}
              <span className="text-primary font-medium">{question.prova}</span>
            </span>
          )}
        </div>

        <div className="flex items-center gap-2 mt-2 sm:mt-3 flex-wrap">
          {!question.is_official && (
            <Badge variant="outline" className="bg-amber-500/10 text-amber-600 border-amber-500/30 text-xs sm:text-sm">
              Questão de usuário
            </Badge>
          )}
          {question.difficulty && (
            <Badge
              variant="outline"
              className={cn(
                "text-xs sm:text-sm",
                question.difficulty === "easy" && "bg-success/10 text-success border-success/30",
                question.difficulty === "medium" && "bg-amber-500/10 text-amber-600 border-amber-500/30",
                question.difficulty === "hard" && "bg-destructive/10 text-destructive border-destructive/30"
              )}
            >
              {question.difficulty === "easy" ? "Fácil" : question.difficulty === "medium" ? "Médio" : "Difícil"}
            </Badge>
          )}
        </div>
      </Card>

      {/* Question Body */}
      <Card className="p-4 sm:p-6">
        <div className="prose prose-sm sm:prose-base prose-slate dark:prose-invert max-w-none mb-4 sm:mb-6">
          <ReactMarkdown>{question.question}</ReactMarkdown>
        </div>

        <div className="space-y-2 sm:space-y-3">
          {question.options.map((option, index) => {
            const letter = String.fromCharCode(65 + index);
            const isCorrect = index === question.correct_answer;
            const isSelected = index === selectedAnswer;

            return (
              <button
                key={index}
                onClick={() => onSelectOption(index)}
                disabled={answered || !isAuthenticated}
                className={cn(
                  "w-full flex items-start gap-3 sm:gap-4 p-3 sm:p-4 rounded-lg border-2 transition-all text-left",
                  !answered && isAuthenticated && "hover:border-primary hover:bg-primary/5 cursor-pointer active:scale-[0.99]",
                  !answered && !isAuthenticated && "cursor-not-allowed opacity-70",
                  answered && "cursor-not-allowed",
                  getOptionStyle(index)
                )}
              >
                <span
                  className={cn(
                    "flex-shrink-0 w-7 h-7 sm:w-8 sm:h-8 rounded-full border-2 flex items-center justify-center font-medium text-xs sm:text-sm transition-colors",
                    getLetterStyle(index)
                  )}
                >
                  {letter}
                </span>
                <span
                  className={cn(
                    "text-xs sm:text-sm pt-0.5 sm:pt-1 leading-relaxed",
                    answered && isCorrect && "text-success font-medium",
                    answered && isSelected && !isCorrect && "text-destructive"
                  )}
                >
                  {option}
                </span>
              </button>
            );
          })}
        </div>

        {/* Action Buttons - Responsivo */}
        <div className="mt-4 sm:mt-6 flex flex-col sm:flex-row items-stretch sm:items-center justify-between gap-3 sm:gap-2">
          <Button
            onClick={handleMainButtonClick} // Usa a nova função
            disabled={isAuthenticated ? (selectedAnswer === null || answered) : false}
            className={cn(
              "w-full sm:w-auto rounded-md text-sm sm:text-base py-2.5 sm:py-2 flex items-center justify-center",
              isAuthenticated 
                ? "bg-warning hover:bg-warning/90 text-warning-foreground border border-warning/50 hover:border-warning/70"
                : "bg-blue-600 hover:bg-blue-700 text-white border border-blue-600"
            )}
          >
            {isAuthenticated ? (
              "Responder"
            ) : (
              <>
                <LogIn className="h-4 w-4 mr-2" />
                Faça login para responder
              </>
            )}
          </Button>

          <div className="flex items-center gap-2 justify-center sm:justify-end">
            <Button
              variant="outline"
              size="icon"
              onClick={onPrevious}
              disabled={!hasPrevious}
              title="Questão anterior"
              className="h-9 w-9 sm:h-10 sm:w-10"
            >
              <ChevronLeft className="h-4 w-4" />
            </Button>
            <Button
              variant="outline"
              size="icon"
              onClick={onNext}
              disabled={!hasNext}
              title="Próxima questão"
              className="h-9 w-9 sm:h-10 sm:w-10"
            >
              <ChevronRight className="h-4 w-4" />
            </Button>
          </div>
        </div>
      </Card>

      {/* AI Explanation */}
      {answered && (
        <Card className="p-4 sm:p-6 border-primary/30 bg-primary/5">
          <button
            onClick={() => setShowAiExplanation(!showAiExplanation)}
            className="flex items-center gap-2 text-primary font-medium text-sm sm:text-base w-full text-left"
          >
            <Sparkles className="h-4 w-4 sm:h-5 sm:w-5 flex-shrink-0" />
            Explicação da IA
          </button>
          {showAiExplanation && (
            <div className="mt-3 sm:mt-4 text-xs sm:text-sm text-foreground leading-relaxed">
              {question.ai_explanation ? (
                <p className="whitespace-pre-wrap">{question.ai_explanation}</p>
              ) : (
                <p className="text-muted-foreground italic">
                  Explicação gerada por IA não disponível para esta questão.
                </p>
              )}
            </div>
          )}
        </Card>
      )}
    </div>
  );
}