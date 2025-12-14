import { useState } from "react";
import Navbar from "@/components/Navbar";
import QuizTimer from "@/components/QuizTimer";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { ArrowLeft, CheckCircle2, XCircle, Trophy, Zap, Clock } from "lucide-react";
import { cn } from "@/lib/utils";
import { useSoloChallenge } from "@/hooks/useSoloChallenge";
import SubjectSelector from "./SubjectSelector";

interface SoloChallengeProps {
  onBack: () => void;
}

const SoloChallenge = ({ onBack }: SoloChallengeProps) => {
  const [selectedSubject, setSelectedSubject] = useState<string | null>(null);
  const {
    status,
    questions,
    currentQuestion,
    score,
    totalTime,
    correctAnswers,
    currentAnswer,
    showResult,
    startChallenge,
    submitAnswer,
    nextQuestion,
    handleTimeUp,
    reset
  } = useSoloChallenge();

  const handleSubjectSelect = (subject: string) => {
    setSelectedSubject(subject);
    startChallenge(subject);
  };

  const handleBack = () => {
    reset();
    setSelectedSubject(null);
    onBack();
  };

  if (status === 'idle') {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-10">
          <Button variant="ghost" onClick={onBack} className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Voltar
          </Button>
          
          <div className="max-w-2xl mx-auto text-center">
            <div className="w-20 h-20 rounded-full bg-primary/10 flex items-center justify-center mx-auto mb-4">
              <Zap className="w-10 h-10 text-primary" />
            </div>
            <h1 className="text-2xl sm:text-3xl font-bold mb-3">Desafio Solo</h1>
            <p className="text-muted-foreground mb-8">
              Escolha uma matéria e teste seus conhecimentos!
            </p>
            
            <SubjectSelector onSelect={handleSubjectSelect} />
          </div>
        </div>
      </div>
    );
  }

  if (status === 'finished') {
    const percentage = Math.round((correctAnswers / questions.length) * 100);
    
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-10 sm:py-20">
          <div className="max-w-lg mx-auto text-center">
            <div className={cn(
              "w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6",
              percentage >= 80 ? "bg-success/10" : percentage >= 50 ? "bg-warning/10" : "bg-destructive/10"
            )}>
              <Trophy className={cn(
                "w-12 h-12",
                percentage >= 80 ? "text-success" : percentage >= 50 ? "text-warning" : "text-destructive"
              )} />
            </div>
            
            <h1 className="text-3xl font-bold mb-2">Desafio Concluído!</h1>
            <p className="text-muted-foreground mb-8">{selectedSubject}</p>
            
            <Card className="p-6 mb-6">
              <div className="grid grid-cols-3 gap-4">
                <div className="text-center">
                  <p className="text-3xl font-bold text-primary">{correctAnswers}/{questions.length}</p>
                  <p className="text-sm text-muted-foreground">Acertos</p>
                </div>
                <div className="text-center">
                  <p className="text-3xl font-bold text-secondary">{score}</p>
                  <p className="text-sm text-muted-foreground">Pontos</p>
                </div>
                <div className="text-center">
                  <div className="flex items-center justify-center gap-1">
                    <Clock className="w-5 h-5 text-muted-foreground" />
                    <p className="text-3xl font-bold">{totalTime}s</p>
                  </div>
                  <p className="text-sm text-muted-foreground">Tempo</p>
                </div>
              </div>
            </Card>
            
            <div className="flex flex-col sm:flex-row gap-3 justify-center">
              <Button onClick={() => { reset(); setSelectedSubject(null); }}>
                Novo Desafio
              </Button>
              <Button variant="outline" onClick={handleBack}>
                Voltar ao Menu
              </Button>
            </div>
          </div>
        </div>
      </div>
    );
  }

  const question = questions[currentQuestion];

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-4 sm:py-8">
        <div className="max-w-2xl mx-auto">
          {/* Header */}
          <div className="flex items-center justify-between mb-6">
            <div>
              <p className="text-sm text-muted-foreground">{selectedSubject}</p>
              <p className="font-semibold">Questão {currentQuestion + 1} de {questions.length}</p>
            </div>
            <div className="text-right">
              <p className="text-sm text-muted-foreground">Pontuação</p>
              <p className="text-2xl font-bold text-primary">{score}</p>
            </div>
          </div>

          {/* Timer */}
          <div className="mb-6">
            <QuizTimer 
              duration={15} 
              onTimeUp={handleTimeUp}
              isActive={!showResult}
            />
          </div>

          {/* Question */}
          <Card className="p-6 mb-6">
            <h2 className="text-lg sm:text-xl font-semibold">{question?.question}</h2>
          </Card>

          {/* Options */}
          <div className="space-y-3 mb-6">
            {question?.options?.map((option: string, index: number) => {
              const isCorrect = index === question.correct_answer;
              const isSelected = index === currentAnswer;
              
              return (
                <button
                  key={index}
                  onClick={() => submitAnswer(index)}
                  disabled={showResult}
                  className={cn(
                    "w-full p-4 rounded-lg text-left transition-all duration-200 border-2",
                    !showResult && "hover:border-primary hover:bg-primary/5 border-border bg-card",
                    showResult && isCorrect && "border-success bg-success/10",
                    showResult && isSelected && !isCorrect && "border-destructive bg-destructive/10",
                    showResult && !isSelected && !isCorrect && "border-border bg-muted opacity-50"
                  )}
                >
                  <div className="flex items-center justify-between">
                    <span>{option}</span>
                    {showResult && isCorrect && <CheckCircle2 className="w-5 h-5 text-success" />}
                    {showResult && isSelected && !isCorrect && <XCircle className="w-5 h-5 text-destructive" />}
                  </div>
                </button>
              );
            })}
          </div>

          {showResult && (
            <div className="text-center">
              <Button onClick={nextQuestion} size="lg">
                {currentQuestion < questions.length - 1 ? "Próxima Questão" : "Ver Resultado"}
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default SoloChallenge;
