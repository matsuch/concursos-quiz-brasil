import { useState, useCallback } from "react";
import Navbar from "@/components/Navbar";
import QuizTimer from "@/components/QuizTimer";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CheckCircle2, XCircle, Play } from "lucide-react";
import { cn } from "@/lib/utils";
import { useNavigate } from "react-router-dom";

const mockQuestions = [
  {
    id: 1,
    question: "Qual é o órgão responsável pela fiscalização tributária federal no Brasil?",
    options: [
      "Banco Central do Brasil",
      "Receita Federal do Brasil",
      "Tribunal de Contas da União",
      "Ministério da Fazenda"
    ],
    correctAnswer: 1
  },
  {
    id: 2,
    question: "Segundo a Constituição Federal, quem exerce a função de chefe de Estado e chefe de Governo?",
    options: [
      "Vice-Presidente",
      "Presidente da Câmara",
      "Presidente da República",
      "Ministro da Casa Civil"
    ],
    correctAnswer: 2
  },
  {
    id: 3,
    question: "Qual é o prazo de validade de um concurso público?",
    options: [
      "Até 1 ano, prorrogável uma vez por igual período",
      "Até 2 anos, prorrogável uma vez por igual período",
      "Até 3 anos, não prorrogável",
      "Até 5 anos, prorrogável indefinidamente"
    ],
    correctAnswer: 1
  }
];

const Quiz = () => {
  const navigate = useNavigate();
  const [started, setStarted] = useState(false);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [score, setScore] = useState(0);
  const [answered, setAnswered] = useState(false);
  const [finished, setFinished] = useState(false);

  const handleAnswer = (index: number) => {
    if (answered) return;
    
    setSelectedAnswer(index);
    setAnswered(true);
    
    if (index === mockQuestions[currentQuestion].correctAnswer) {
      setScore(score + 1);
    }
  };

  const handleTimeUp = useCallback(() => {
    if (!answered) {
      setAnswered(true);
      setSelectedAnswer(null);
    }
  }, [answered]);

  const nextQuestion = () => {
    if (currentQuestion < mockQuestions.length - 1) {
      setCurrentQuestion(currentQuestion + 1);
      setSelectedAnswer(null);
      setAnswered(false);
    } else {
      setFinished(true);
    }
  };

  const startQuiz = () => {
    setStarted(true);
    setCurrentQuestion(0);
    setScore(0);
    setAnswered(false);
    setFinished(false);
    setSelectedAnswer(null);
  };

  if (!started) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-2xl mx-auto text-center">
            <div className="w-24 h-24 rounded-full bg-gradient-to-br from-primary to-secondary flex items-center justify-center mx-auto mb-6">
              <Play className="w-12 h-12 text-white" />
            </div>
            <h1 className="text-4xl font-bold mb-4">Quiz de Concursos</h1>
            <p className="text-xl text-muted-foreground mb-8">
              Teste seus conhecimentos com questões de concursos públicos. Você tem 15 segundos para responder cada pergunta!
            </p>
            <Card className="p-8 mb-8">
              <div className="space-y-4 text-left">
                <div className="flex items-start gap-3">
                  <CheckCircle2 className="w-5 h-5 text-success mt-0.5" />
                  <div>
                    <p className="font-semibold">15 segundos por questão</p>
                    <p className="text-sm text-muted-foreground">Responda rápido para ganhar mais pontos</p>
                  </div>
                </div>
                <div className="flex items-start gap-3">
                  <CheckCircle2 className="w-5 h-5 text-success mt-0.5" />
                  <div>
                    <p className="font-semibold">Feedback imediato</p>
                    <p className="text-sm text-muted-foreground">Veja se acertou ou errou na hora</p>
                  </div>
                </div>
                <div className="flex items-start gap-3">
                  <CheckCircle2 className="w-5 h-5 text-success mt-0.5" />
                  <div>
                    <p className="font-semibold">Ranking competitivo</p>
                    <p className="text-sm text-muted-foreground">Compare seu desempenho com outros usuários</p>
                  </div>
                </div>
              </div>
            </Card>
            <Button size="lg" onClick={startQuiz} className="bg-gradient-to-r from-primary to-secondary">
              <Play className="w-5 h-5 mr-2" />
              Começar Quiz
            </Button>
          </div>
        </div>
      </div>
    );
  }

  if (finished) {
    const percentage = (score / mockQuestions.length) * 100;
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-2xl mx-auto text-center">
            <div className={cn(
              "w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6",
              percentage >= 70 ? "bg-success/10" : "bg-destructive/10"
            )}>
              {percentage >= 70 ? (
                <CheckCircle2 className="w-12 h-12 text-success" />
              ) : (
                <XCircle className="w-12 h-12 text-destructive" />
              )}
            </div>
            <h1 className="text-4xl font-bold mb-4">Quiz Finalizado!</h1>
            <p className="text-xl text-muted-foreground mb-8">
              Você acertou {score} de {mockQuestions.length} questões
            </p>
            <Card className="p-8 mb-8">
              <div className="text-6xl font-bold mb-2 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
                {percentage.toFixed(0)}%
              </div>
              <p className="text-sm text-muted-foreground">de aproveitamento</p>
            </Card>
            <div className="flex gap-4 justify-center">
              <Button onClick={startQuiz}>Tentar Novamente</Button>
              <Button variant="outline" onClick={() => navigate("/ranking")}>Ver Ranking</Button>
            </div>
          </div>
        </div>
      </div>
    );
  }

  const question = mockQuestions[currentQuestion];

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-12">
        <div className="max-w-3xl mx-auto">
          <div className="flex justify-between items-center mb-8">
            <div>
              <p className="text-sm text-muted-foreground mb-1">
                Questão {currentQuestion + 1} de {mockQuestions.length}
              </p>
              <div className="w-64 h-2 bg-muted rounded-full overflow-hidden">
                <div 
                  className="h-full bg-gradient-to-r from-primary to-secondary transition-all duration-300"
                  style={{ width: `${((currentQuestion + 1) / mockQuestions.length) * 100}%` }}
                />
              </div>
            </div>
            <QuizTimer 
              duration={15} 
              onTimeUp={handleTimeUp}
              isActive={!answered}
            />
          </div>

          <Card className="p-8 mb-6">
            <h2 className="text-2xl font-bold mb-8">{question.question}</h2>
            <div className="space-y-3">
              {question.options.map((option, index) => {
                const isCorrect = index === question.correctAnswer;
                const isSelected = index === selectedAnswer;
                
                return (
                  <button
                    key={index}
                    onClick={() => handleAnswer(index)}
                    disabled={answered}
                    className={cn(
                      "w-full p-4 rounded-lg text-left transition-all duration-200 border-2",
                      !answered && "hover:border-primary hover:bg-primary/5",
                      !answered && "border-border bg-card",
                      answered && isCorrect && "border-success bg-success/10",
                      answered && isSelected && !isCorrect && "border-destructive bg-destructive/10",
                      answered && !isSelected && !isCorrect && "border-border bg-muted opacity-50"
                    )}
                  >
                    <div className="flex items-center justify-between">
                      <span className="font-medium">{option}</span>
                      {answered && isCorrect && <CheckCircle2 className="w-5 h-5 text-success" />}
                      {answered && isSelected && !isCorrect && <XCircle className="w-5 h-5 text-destructive" />}
                    </div>
                  </button>
                );
              })}
            </div>
          </Card>

          {answered && (
            <div className="text-center">
              <Button onClick={nextQuestion} size="lg">
                {currentQuestion < mockQuestions.length - 1 ? "Próxima Questão" : "Ver Resultado"}
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default Quiz;
