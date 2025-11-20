import { useState, useCallback } from "react";
import Navbar from "@/components/Navbar";
import QuizTimer from "@/components/QuizTimer";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { CheckCircle2, XCircle, Swords, Trophy } from "lucide-react";
import { cn } from "@/lib/utils";

const mockQuestions = [
  {
    id: 1,
    question: "Qual poder é responsável por elaborar as leis?",
    options: ["Executivo", "Legislativo", "Judiciário", "Ministerial"],
    correctAnswer: 1
  },
  {
    id: 2,
    question: "Quantos estados possui o Brasil?",
    options: ["25", "26", "27", "28"],
    correctAnswer: 2
  },
  {
    id: 3,
    question: "Qual é a capital do Acre?",
    options: ["Rio Branco", "Macapá", "Porto Velho", "Boa Vista"],
    correctAnswer: 0
  },
  {
    id: 4,
    question: "Em que ano foi promulgada a atual Constituição Federal?",
    options: ["1985", "1986", "1988", "1990"],
    correctAnswer: 2
  },
  {
    id: 5,
    question: "Qual é o significado da sigla INSS?",
    options: [
      "Instituto Nacional do Seguro Social",
      "Instituto Nacional de Saúde e Serviços",
      "Instituto Nacional de Serviços Sociais",
      "Instituto Nacional de Seguridade Social"
    ],
    correctAnswer: 0
  }
];

const Duelo = () => {
  const [started, setStarted] = useState(false);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [player1Score, setPlayer1Score] = useState(0);
  const [player2Score, setPlayer2Score] = useState(0);
  const [player1Answer, setPlayer1Answer] = useState<number | null>(null);
  const [player2Answer, setPlayer2Answer] = useState<number | null>(null);
  const [answered, setAnswered] = useState(false);
  const [finished, setFinished] = useState(false);

  const handlePlayerAnswer = (playerNum: 1 | 2, answerIndex: number) => {
    if (answered) return;

    if (playerNum === 1) {
      setPlayer1Answer(answerIndex);
    } else {
      setPlayer2Answer(answerIndex);
    }

    // Check if both players answered
    const bothAnswered = playerNum === 1 ? player2Answer !== null : player1Answer !== null;
    
    if (bothAnswered) {
      setAnswered(true);
      
      const correctAnswer = mockQuestions[currentQuestion].correctAnswer;
      const p1Answer = playerNum === 1 ? answerIndex : player1Answer!;
      const p2Answer = playerNum === 2 ? answerIndex : player2Answer!;
      
      if (p1Answer === correctAnswer) setPlayer1Score(player1Score + 1);
      if (p2Answer === correctAnswer) setPlayer2Score(player2Score + 1);
    }
  };

  const handleTimeUp = useCallback(() => {
    if (!answered) {
      setAnswered(true);
      
      const correctAnswer = mockQuestions[currentQuestion].correctAnswer;
      if (player1Answer === correctAnswer) setPlayer1Score(player1Score + 1);
      if (player2Answer === correctAnswer) setPlayer2Score(player2Score + 1);
    }
  }, [answered, currentQuestion, player1Answer, player2Answer, player1Score, player2Score]);

  const nextQuestion = () => {
    if (currentQuestion < 4) {
      setCurrentQuestion(currentQuestion + 1);
      setPlayer1Answer(null);
      setPlayer2Answer(null);
      setAnswered(false);
    } else {
      setFinished(true);
    }
  };

  const startDuelo = () => {
    setStarted(true);
    setCurrentQuestion(0);
    setPlayer1Score(0);
    setPlayer2Score(0);
    setPlayer1Answer(null);
    setPlayer2Answer(null);
    setAnswered(false);
    setFinished(false);
  };

  if (!started) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-2xl mx-auto text-center">
            <div className="w-24 h-24 rounded-full bg-gradient-to-br from-primary to-secondary flex items-center justify-center mx-auto mb-6">
              <Swords className="w-12 h-12 text-white" />
            </div>
            <h1 className="text-4xl font-bold mb-4">Modo Duelo</h1>
            <p className="text-xl text-muted-foreground mb-8">
              Desafie outro jogador em uma batalha de conhecimento! Serão 5 questões com 15 segundos cada.
            </p>
            <Card className="p-8 mb-8">
              <div className="grid grid-cols-2 gap-8">
                <div className="text-center">
                  <Avatar className="w-20 h-20 mx-auto mb-3 bg-primary/10">
                    <AvatarFallback className="text-primary text-2xl font-bold">P1</AvatarFallback>
                  </Avatar>
                  <p className="font-semibold">Jogador 1</p>
                  <p className="text-sm text-muted-foreground">Você</p>
                </div>
                <div className="text-center">
                  <Avatar className="w-20 h-20 mx-auto mb-3 bg-secondary/10">
                    <AvatarFallback className="text-secondary text-2xl font-bold">P2</AvatarFallback>
                  </Avatar>
                  <p className="font-semibold">Jogador 2</p>
                  <p className="text-sm text-muted-foreground">Oponente</p>
                </div>
              </div>
            </Card>
            <Button size="lg" onClick={startDuelo} className="bg-gradient-to-r from-primary to-secondary">
              <Swords className="w-5 h-5 mr-2" />
              Iniciar Duelo
            </Button>
          </div>
        </div>
      </div>
    );
  }

  if (finished) {
    const winner = player1Score > player2Score ? 1 : player2Score > player1Score ? 2 : 0;
    
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-2xl mx-auto text-center">
            <div className={cn(
              "w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6",
              winner === 0 ? "bg-accent/10" : "bg-success/10"
            )}>
              <Trophy className={cn(
                "w-12 h-12",
                winner === 0 ? "text-accent-foreground" : "text-success"
              )} />
            </div>
            <h1 className="text-4xl font-bold mb-4">
              {winner === 0 ? "Empate!" : `Jogador ${winner} Venceu!`}
            </h1>
            
            <Card className="p-8 mb-8">
              <div className="grid grid-cols-2 gap-8">
                <div className={cn(
                  "p-6 rounded-lg",
                  winner === 1 ? "bg-success/10 border-2 border-success" : "bg-muted"
                )}>
                  <Avatar className="w-20 h-20 mx-auto mb-3 bg-primary/10">
                    <AvatarFallback className="text-primary text-2xl font-bold">P1</AvatarFallback>
                  </Avatar>
                  <p className="font-semibold mb-2">Jogador 1</p>
                  <p className="text-4xl font-bold text-primary">{player1Score}</p>
                  <p className="text-sm text-muted-foreground">pontos</p>
                </div>
                <div className={cn(
                  "p-6 rounded-lg",
                  winner === 2 ? "bg-success/10 border-2 border-success" : "bg-muted"
                )}>
                  <Avatar className="w-20 h-20 mx-auto mb-3 bg-secondary/10">
                    <AvatarFallback className="text-secondary text-2xl font-bold">P2</AvatarFallback>
                  </Avatar>
                  <p className="font-semibold mb-2">Jogador 2</p>
                  <p className="text-4xl font-bold text-secondary">{player2Score}</p>
                  <p className="text-sm text-muted-foreground">pontos</p>
                </div>
              </div>
            </Card>
            
            <Button onClick={startDuelo}>Jogar Novamente</Button>
          </div>
        </div>
      </div>
    );
  }

  const question = mockQuestions[currentQuestion];

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-8">
        <div className="max-w-6xl mx-auto">
          {/* Header with scores and timer */}
          <div className="flex justify-between items-center mb-8">
            <Card className="p-4 flex items-center gap-4">
              <Avatar className="w-12 h-12 bg-primary/10">
                <AvatarFallback className="text-primary font-bold">P1</AvatarFallback>
              </Avatar>
              <div>
                <p className="text-sm text-muted-foreground">Jogador 1</p>
                <p className="text-2xl font-bold text-primary">{player1Score}</p>
              </div>
            </Card>

            <div className="text-center">
              <p className="text-sm text-muted-foreground mb-2">
                Questão {currentQuestion + 1} de 5
              </p>
              <QuizTimer 
                duration={15} 
                onTimeUp={handleTimeUp}
                isActive={!answered}
              />
            </div>

            <Card className="p-4 flex items-center gap-4">
              <div className="text-right">
                <p className="text-sm text-muted-foreground">Jogador 2</p>
                <p className="text-2xl font-bold text-secondary">{player2Score}</p>
              </div>
              <Avatar className="w-12 h-12 bg-secondary/10">
                <AvatarFallback className="text-secondary font-bold">P2</AvatarFallback>
              </Avatar>
            </Card>
          </div>

          {/* Question */}
          <Card className="p-8 mb-6">
            <h2 className="text-2xl font-bold text-center mb-8">{question.question}</h2>
          </Card>

          {/* Answers Grid */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {/* Player 1 Options */}
            <div>
              <p className="text-sm font-semibold mb-3 text-primary">Jogador 1</p>
              <div className="space-y-3">
                {question.options.map((option, index) => {
                  const isCorrect = index === question.correctAnswer;
                  const isSelected = index === player1Answer;
                  
                  return (
                    <button
                      key={index}
                      onClick={() => handlePlayerAnswer(1, index)}
                      disabled={answered || player1Answer !== null}
                      className={cn(
                        "w-full p-4 rounded-lg text-left transition-all duration-200 border-2",
                        !answered && player1Answer === null && "hover:border-primary hover:bg-primary/5",
                        !answered && player1Answer === null && "border-border bg-card",
                        answered && isCorrect && "border-success bg-success/10",
                        answered && isSelected && !isCorrect && "border-destructive bg-destructive/10",
                        answered && !isSelected && !isCorrect && "border-border bg-muted opacity-50",
                        !answered && isSelected && "border-primary bg-primary/10"
                      )}
                    >
                      <div className="flex items-center justify-between">
                        <span>{option}</span>
                        {answered && isCorrect && <CheckCircle2 className="w-5 h-5 text-success" />}
                        {answered && isSelected && !isCorrect && <XCircle className="w-5 h-5 text-destructive" />}
                      </div>
                    </button>
                  );
                })}
              </div>
            </div>

            {/* Player 2 Options */}
            <div>
              <p className="text-sm font-semibold mb-3 text-secondary">Jogador 2</p>
              <div className="space-y-3">
                {question.options.map((option, index) => {
                  const isCorrect = index === question.correctAnswer;
                  const isSelected = index === player2Answer;
                  
                  return (
                    <button
                      key={index}
                      onClick={() => handlePlayerAnswer(2, index)}
                      disabled={answered || player2Answer !== null}
                      className={cn(
                        "w-full p-4 rounded-lg text-left transition-all duration-200 border-2",
                        !answered && player2Answer === null && "hover:border-secondary hover:bg-secondary/5",
                        !answered && player2Answer === null && "border-border bg-card",
                        answered && isCorrect && "border-success bg-success/10",
                        answered && isSelected && !isCorrect && "border-destructive bg-destructive/10",
                        answered && !isSelected && !isCorrect && "border-border bg-muted opacity-50",
                        !answered && isSelected && "border-secondary bg-secondary/10"
                      )}
                    >
                      <div className="flex items-center justify-between">
                        <span>{option}</span>
                        {answered && isCorrect && <CheckCircle2 className="w-5 h-5 text-success" />}
                        {answered && isSelected && !isCorrect && <XCircle className="w-5 h-5 text-destructive" />}
                      </div>
                    </button>
                  );
                })}
              </div>
            </div>
          </div>

          {answered && (
            <div className="text-center mt-8">
              <Button onClick={nextQuestion} size="lg">
                {currentQuestion < 4 ? "Próxima Questão" : "Ver Resultado"}
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default Duelo;
