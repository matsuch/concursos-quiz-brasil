// components/quiz/QuizQuestion.tsx
import { useState } from "react";
import ReactMarkdown from "react-markdown";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { ChevronLeft, ChevronRight, Sparkles } from "lucide-react";
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

  return (
    <div className="space-y-4">
      {/* Question Header */}
      <Card className="p-4">
        <div className="flex items-center gap-3 flex-wrap">
          <Badge variant="secondary">{question.subject}</Badge>
          {question.banca && (
            <span className="text-sm">
              <span className="text-muted-foreground">Banca:</span>{" "}
              <span className="text-primary font-medium">{question.banca}</span>
            </span>
          )}
          {question.assunto && (
            <span className="text-sm">
              <span className="text-muted-foreground">Assunto:</span>{" "}
              <span className="text-muted-foreground">{question.assunto}</span>
            </span>
          )}
          {question.prova && (
            <span className="text-sm">
              <span className="text-muted-foreground">Prova:</span>{" "}
              <span className="text-primary font-medium">{question.prova}</span>
            </span>
          )}
        </div>

        <div className="flex items-center gap-2 mt-3 flex-wrap">
          {!question.is_official && (
            <Badge variant="outline" className="bg-amber-500/10 text-amber-600 border-amber-500/30">
              Questão de usuário
            </Badge>
          )}
          {question.difficulty && (
            <Badge
              variant="outline"
              className={cn(
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
      <Card className="p-6">
        <div className="prose prose-slate dark:prose-invert max-w-none mb-6">
          <ReactMarkdown>{question.question}</ReactMarkdown>
        </div>

        <div className="space-y-3">
          {question.options.map((option, index) => {
            const letter = String.fromCharCode(65 + index);
            const isCorrect = index === question.correct_answer;
            const isSelected = index === selectedAnswer;

            return (
              <button
                key={index}
                onClick={() => onSelectOption(index)}
                disabled={answered}
                className={cn(
                  "w-full flex items-start gap-4 p-4 rounded-lg border-2 transition-all text-left",
                  !answered && "hover:border-primary hover:bg-primary/5 cursor-pointer",
                  answered && "cursor-not-allowed",
                  getOptionStyle(index)
                )}
              >
                <span
                  className={cn(
                    "flex-shrink-0 w-8 h-8 rounded-full border-2 flex items-center justify-center font-medium text-sm transition-colors",
                    getLetterStyle(index)
                  )}
                >
                  {letter}
                </span>
                <span
                  className={cn(
                    "text-sm pt-1",
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

        <div className="mt-6 flex items-center justify-between">
          <Button
            onClick={onSubmitAnswer}
            disabled={selectedAnswer === null || answered}
            className="bg-warning hover:bg-warning/90 text-warning-foreground border border-warning/50 hover:border-warning/70 rounded-md">
            Responder
          </Button>

          <div className="flex items-center gap-2">
            <Button
              variant="outline"
              size="icon"
              onClick={onPrevious}
              disabled={!hasPrevious}
              title="Questão anterior"
            >
              <ChevronLeft className="h-4 w-4" />
            </Button>
            <Button
              variant="outline"
              size="icon"
              onClick={onNext}
              disabled={!hasNext}
              title="Próxima questão"
            >
              <ChevronRight className="h-4 w-4" />
            </Button>
          </div>
        </div>
      </Card>

      {/* AI Explanation */}
      {answered && (
        <Card className="p-6 border-primary/30 bg-primary/5">
          <button
            onClick={() => setShowAiExplanation(!showAiExplanation)}
            className="flex items-center gap-2 text-primary font-medium"
          >
            <Sparkles className="h-5 w-5" />
            Explicação da IA
          </button>
          {showAiExplanation && (
            <div className="mt-4 text-sm text-foreground leading-relaxed">
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