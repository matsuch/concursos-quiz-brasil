import { useState, useEffect } from "react";
import Navbar from "@/components/Navbar";
import QuizTimer from "@/components/QuizTimer";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { ArrowLeft, CheckCircle2, XCircle, Trophy, Swords, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { useDuelMatchmaking } from "@/hooks/useDuelMatchmaking";
import SubjectSelector from "./SubjectSelector";
import { useAuth } from "@/hooks/useAuth";
import { Link } from "react-router-dom";

interface OnlineDuelProps {
  onBack: () => void;
}

const OnlineDuel = ({ onBack }: OnlineDuelProps) => {
  const { user } = useAuth();
  const [selectedSubject, setSelectedSubject] = useState<string | null>(null);
  const [currentAnswer, setCurrentAnswer] = useState<number | null>(null);
  const [showResult, setShowResult] = useState(false);
  
  const {
    duelId,
    status,
    opponentName,
    isPlayer1,
    currentQuestion,
    myScore,
    opponentScore,
    questions,
    myName,
    startMatchmaking,
    cancelMatchmaking,
    submitAnswer,
    nextQuestion,
    startPlaying,
    isAuthenticated
  } = useDuelMatchmaking();

  const handleSubjectSelect = (subject: string) => {
    setSelectedSubject(subject);
    startMatchmaking(subject);
  };

  const handleBack = () => {
    cancelMatchmaking();
    setSelectedSubject(null);
    onBack();
  };

  const handleAnswer = (index: number) => {
    if (currentAnswer !== null) return;
    setCurrentAnswer(index);
    submitAnswer(index);
    setShowResult(true);
  };

  const handleTimeUp = () => {
    setShowResult(true);
  };

  const handleNextQuestion = () => {
    setCurrentAnswer(null);
    setShowResult(false);
    nextQuestion();
  };

  // Auto start when matched
  useEffect(() => {
    if (status === 'matched') {
      const timer = setTimeout(() => {
        startPlaying();
      }, 3000);
      return () => clearTimeout(timer);
    }
  }, [status, startPlaying]);

  // Not authenticated
  if (!isAuthenticated) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-10">
          <Button variant="ghost" onClick={onBack} className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Voltar
          </Button>
          
          <div className="max-w-md mx-auto text-center">
            <div className="w-20 h-20 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-4">
              <Swords className="w-10 h-10 text-secondary" />
            </div>
            <h1 className="text-2xl font-bold mb-3">Login Necessário</h1>
            <p className="text-muted-foreground mb-6">
              Para jogar duelos online contra outros jogadores, você precisa estar logado.
            </p>
            <Link to="/auth">
              <Button>Fazer Login</Button>
            </Link>
          </div>
        </div>
      </div>
    );
  }

  // Subject selection
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
            <div className="w-20 h-20 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-4">
              <Swords className="w-10 h-10 text-secondary" />
            </div>
            <h1 className="text-2xl sm:text-3xl font-bold mb-3">Duelo Online</h1>
            <p className="text-muted-foreground mb-8">
              Escolha uma matéria e enfrente outro jogador!
            </p>
            
            <SubjectSelector onSelect={handleSubjectSelect} />
          </div>
        </div>
      </div>
    );
  }

  // Searching for opponent
  if (status === 'searching') {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-md mx-auto text-center">
            <div className="w-24 h-24 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-6 animate-pulse">
              <Loader2 className="w-12 h-12 text-secondary animate-spin" />
            </div>
            <h1 className="text-2xl font-bold mb-3">Buscando Oponente...</h1>
            <p className="text-muted-foreground mb-2">{selectedSubject}</p>
            <p className="text-sm text-muted-foreground mb-8">
              Aguardando outro jogador entrar na fila...
            </p>
            <Button variant="outline" onClick={handleBack}>
              Cancelar
            </Button>
          </div>
        </div>
      </div>
    );
  }

  // Matched - countdown
  if (status === 'matched') {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-lg mx-auto text-center">
            <h1 className="text-2xl font-bold mb-8">Oponente Encontrado!</h1>
            
            <div className="flex items-center justify-center gap-8 mb-8">
              <div className="text-center">
                <Avatar className="w-20 h-20 mx-auto mb-3 bg-primary/10">
                  <AvatarFallback className="text-primary text-2xl font-bold">
                    {myName.charAt(0).toUpperCase()}
                  </AvatarFallback>
                </Avatar>
                <p className="font-semibold">{myName}</p>
                <p className="text-sm text-muted-foreground">Você</p>
              </div>
              
              <div className="text-3xl font-bold text-muted-foreground">VS</div>
              
              <div className="text-center">
                <Avatar className="w-20 h-20 mx-auto mb-3 bg-secondary/10">
                  <AvatarFallback className="text-secondary text-2xl font-bold">
                    {opponentName?.charAt(0).toUpperCase() || 'O'}
                  </AvatarFallback>
                </Avatar>
                <p className="font-semibold">{opponentName}</p>
                <p className="text-sm text-muted-foreground">Oponente</p>
              </div>
            </div>
            
            <p className="text-muted-foreground">Iniciando em 3 segundos...</p>
          </div>
        </div>
      </div>
    );
  }

  // Finished
  if (status === 'finished') {
    const winner = myScore > opponentScore ? 'you' : opponentScore > myScore ? 'opponent' : 'tie';
    
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-10 sm:py-20">
          <div className="max-w-lg mx-auto text-center">
            <div className={cn(
              "w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6",
              winner === 'you' ? "bg-success/10" : winner === 'opponent' ? "bg-destructive/10" : "bg-muted"
            )}>
              <Trophy className={cn(
                "w-12 h-12",
                winner === 'you' ? "text-success" : winner === 'opponent' ? "text-destructive" : "text-muted-foreground"
              )} />
            </div>
            
            <h1 className="text-3xl font-bold mb-4">
              {winner === 'you' ? 'Você Venceu!' : winner === 'opponent' ? 'Você Perdeu' : 'Empate!'}
            </h1>
            
            <Card className="p-6 mb-8">
              <div className="grid grid-cols-2 gap-8">
                <div className={cn(
                  "p-4 rounded-lg",
                  winner === 'you' ? "bg-success/10 border-2 border-success" : "bg-muted"
                )}>
                  <Avatar className="w-16 h-16 mx-auto mb-2 bg-primary/10">
                    <AvatarFallback className="text-primary text-xl font-bold">
                      {myName.charAt(0).toUpperCase()}
                    </AvatarFallback>
                  </Avatar>
                  <p className="font-semibold text-sm mb-1">{myName}</p>
                  <p className="text-3xl font-bold text-primary">{myScore}</p>
                  <p className="text-xs text-muted-foreground">pontos</p>
                </div>
                
                <div className={cn(
                  "p-4 rounded-lg",
                  winner === 'opponent' ? "bg-success/10 border-2 border-success" : "bg-muted"
                )}>
                  <Avatar className="w-16 h-16 mx-auto mb-2 bg-secondary/10">
                    <AvatarFallback className="text-secondary text-xl font-bold">
                      {opponentName?.charAt(0).toUpperCase() || 'O'}
                    </AvatarFallback>
                  </Avatar>
                  <p className="font-semibold text-sm mb-1">{opponentName}</p>
                  <p className="text-3xl font-bold text-secondary">{opponentScore}</p>
                  <p className="text-xs text-muted-foreground">pontos</p>
                </div>
              </div>
            </Card>
            
            <div className="flex flex-col sm:flex-row gap-3 justify-center">
              <Button onClick={() => { cancelMatchmaking(); setSelectedSubject(null); }}>
                Novo Duelo
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

  // Playing
  const question = questions[currentQuestion];

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-4 sm:py-8">
        <div className="max-w-2xl mx-auto">
          {/* Score Header */}
          <div className="flex justify-between items-center gap-4 mb-6">
            <Card className="p-3 flex items-center gap-3">
              <Avatar className="w-10 h-10 bg-primary/10">
                <AvatarFallback className="text-primary font-bold text-sm">
                  {myName.charAt(0).toUpperCase()}
                </AvatarFallback>
              </Avatar>
              <div>
                <p className="text-xs text-muted-foreground">Você</p>
                <p className="text-xl font-bold text-primary">{myScore}</p>
              </div>
            </Card>

            <div className="text-center flex-1">
              <p className="text-xs text-muted-foreground mb-1">
                {currentQuestion + 1}/5
              </p>
              <QuizTimer 
                duration={15} 
                onTimeUp={handleTimeUp}
                isActive={!showResult}
              />
            </div>

            <Card className="p-3 flex items-center gap-3">
              <div className="text-right">
                <p className="text-xs text-muted-foreground">{opponentName}</p>
                <p className="text-xl font-bold text-secondary">{opponentScore}</p>
              </div>
              <Avatar className="w-10 h-10 bg-secondary/10">
                <AvatarFallback className="text-secondary font-bold text-sm">
                  {opponentName?.charAt(0).toUpperCase() || 'O'}
                </AvatarFallback>
              </Avatar>
            </Card>
          </div>

          {/* Question */}
          <Card className="p-6 mb-6">
            <h2 className="text-lg sm:text-xl font-semibold">{question?.question}</h2>
          </Card>

          {/* Options */}
          <div className="space-y-3 mb-6">
            {(question?.options as string[] || []).map((option: string, index: number) => {
              const isCorrect = index === question?.correct_answer;
              const isSelected = index === currentAnswer;
              
              return (
                <button
                  key={index}
                  onClick={() => handleAnswer(index)}
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
              <Button onClick={handleNextQuestion} size="lg">
                {currentQuestion < 4 ? "Próxima Questão" : "Ver Resultado"}
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default OnlineDuel;
