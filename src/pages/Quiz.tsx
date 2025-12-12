import { useState, useCallback, useEffect } from "react";
import Navbar from "@/components/Navbar";
import QuizTimer from "@/components/QuizTimer";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CheckCircle2, XCircle, Play, BookOpen, Loader2 } from "lucide-react";
import { cn } from "@/lib/utils";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { toast } from "sonner";

interface Question {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  subject: string;
  difficulty: string | null;
  is_official: boolean | null;
}

const subjects = [
  { id: "Direito Constitucional", name: "Direito Constitucional", icon: "⚖️" },
  { id: "Direito Administrativo", name: "Direito Administrativo", icon: "📋" },
  { id: "Português", name: "Português", icon: "📝" },
  { id: "Raciocínio Lógico", name: "Raciocínio Lógico", icon: "🧠" },
  { id: "Atualidades", name: "Atualidades", icon: "🌍" },
];

const Quiz = () => {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [selectedSubject, setSelectedSubject] = useState<string | null>(null);
  const [questions, setQuestions] = useState<Question[]>([]);
  const [loading, setLoading] = useState(false);
  const [started, setStarted] = useState(false);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [score, setScore] = useState(0);
  const [answered, setAnswered] = useState(false);
  const [finished, setFinished] = useState(false);
  const [startTime, setStartTime] = useState<number>(0);

  const fetchQuestions = async (subject: string) => {
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from("questions")
        .select("*")
        .eq("subject", subject)
        .limit(10);

      if (error) throw error;

      // Shuffle questions and take 5
      const shuffled = (data || []).sort(() => Math.random() - 0.5).slice(0, 5);
      
      // Parse options from JSON
      const parsed = shuffled.map((q) => ({
        ...q,
        options: typeof q.options === "string" ? JSON.parse(q.options) : q.options,
      }));

      setQuestions(parsed);
    } catch (error) {
      console.error("Error fetching questions:", error);
      toast.error("Erro ao carregar questões");
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = (index: number) => {
    if (answered) return;

    setSelectedAnswer(index);
    setAnswered(true);

    if (index === questions[currentQuestion].correct_answer) {
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
    if (currentQuestion < questions.length - 1) {
      setCurrentQuestion(currentQuestion + 1);
      setSelectedAnswer(null);
      setAnswered(false);
    } else {
      finishQuiz();
    }
  };

  const finishQuiz = async () => {
    setFinished(true);
    const timeSpent = Math.floor((Date.now() - startTime) / 1000);
    const pointsEarned = score * 10;

    if (user && selectedSubject) {
      try {
        // Save quiz attempt
        await supabase.from("quiz_attempts").insert({
          user_id: user.id,
          subject: selectedSubject,
          correct_answers: score,
          total_questions: questions.length,
          points_earned: pointsEarned,
          time_spent_seconds: timeSpent,
        });

        // Update profile stats
        const { data: profile } = await supabase
          .from("profiles")
          .select("total_points, quizzes_completed")
          .eq("user_id", user.id)
          .maybeSingle();

        if (profile) {
          await supabase
            .from("profiles")
            .update({
              total_points: (profile.total_points || 0) + pointsEarned,
              quizzes_completed: (profile.quizzes_completed || 0) + 1,
            })
            .eq("user_id", user.id);
        }

        toast.success(`+${pointsEarned} pontos!`);
      } catch (error) {
        console.error("Error saving quiz attempt:", error);
      }
    }
  };

  const startQuiz = () => {
    if (!selectedSubject) {
      toast.error("Selecione uma matéria");
      return;
    }
    setStarted(true);
    setCurrentQuestion(0);
    setScore(0);
    setAnswered(false);
    setFinished(false);
    setSelectedAnswer(null);
    setStartTime(Date.now());
  };

  const resetQuiz = () => {
    setStarted(false);
    setSelectedSubject(null);
    setQuestions([]);
    setCurrentQuestion(0);
    setScore(0);
    setAnswered(false);
    setFinished(false);
    setSelectedAnswer(null);
  };

  useEffect(() => {
    if (selectedSubject) {
      fetchQuestions(selectedSubject);
    }
  }, [selectedSubject]);

  // Subject selection screen
  if (!started) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-10 sm:py-20">
          <div className="max-w-2xl mx-auto text-center">
            <div className="w-20 h-20 sm:w-24 sm:h-24 rounded-full bg-gradient-to-br from-primary to-secondary flex items-center justify-center mx-auto mb-4 sm:mb-6">
              <Play className="w-10 h-10 sm:w-12 sm:h-12 text-white" />
            </div>
            <h1 className="text-2xl sm:text-4xl font-bold mb-3 sm:mb-4">Quiz de Concursos</h1>
            <p className="text-base sm:text-xl text-muted-foreground mb-6 sm:mb-8 px-2">
              Escolha uma matéria e teste seus conhecimentos!
            </p>

            <Card className="p-5 sm:p-8 mb-6 sm:mb-8">
              <h3 className="font-semibold mb-4 text-left flex items-center gap-2">
                <BookOpen className="w-5 h-5" />
                Selecione a Matéria
              </h3>
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                {subjects.map((subject) => (
                  <button
                    key={subject.id}
                    onClick={() => setSelectedSubject(subject.id)}
                    className={cn(
                      "p-4 rounded-lg border-2 text-left transition-all duration-200",
                      selectedSubject === subject.id
                        ? "border-primary bg-primary/10"
                        : "border-border hover:border-primary/50 hover:bg-muted"
                    )}
                  >
                    <span className="text-2xl mb-2 block">{subject.icon}</span>
                    <span className="font-medium text-sm">{subject.name}</span>
                  </button>
                ))}
              </div>
            </Card>

            {selectedSubject && (
              <Card className="p-5 sm:p-6 mb-6 sm:mb-8 bg-muted/50">
                <div className="space-y-3 text-left text-sm">
                  <div className="flex items-center gap-2">
                    <CheckCircle2 className="w-4 h-4 text-success" />
                    <span>5 questões por quiz</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <CheckCircle2 className="w-4 h-4 text-success" />
                    <span>15 segundos por questão</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <CheckCircle2 className="w-4 h-4 text-success" />
                    <span>10 pontos por acerto</span>
                  </div>
                </div>
              </Card>
            )}

            <Button
              size="lg"
              onClick={startQuiz}
              disabled={!selectedSubject || loading || questions.length === 0}
              className="w-full sm:w-auto bg-gradient-to-r from-primary to-secondary"
            >
              {loading ? (
                <>
                  <Loader2 className="w-5 h-5 mr-2 animate-spin" />
                  Carregando...
                </>
              ) : (
                <>
                  <Play className="w-5 h-5 mr-2" />
                  Começar Quiz
                </>
              )}
            </Button>

            {!user && (
              <p className="text-sm text-muted-foreground mt-4">
                Faça login para salvar seu progresso e pontuar no ranking!
              </p>
            )}
          </div>
        </div>
      </div>
    );
  }

  // Results screen
  if (finished) {
    const percentage = questions.length > 0 ? (score / questions.length) * 100 : 0;
    const pointsEarned = score * 10;

    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
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
            <h1 className="text-4xl font-bold mb-4">Quiz Finalizado!</h1>
            <p className="text-xl text-muted-foreground mb-2">
              Você acertou {score} de {questions.length} questões
            </p>
            {user && (
              <p className="text-lg text-primary font-semibold mb-8">
                +{pointsEarned} pontos
              </p>
            )}
            <Card className="p-8 mb-8">
              <div className="text-6xl font-bold mb-2 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
                {percentage.toFixed(0)}%
              </div>
              <p className="text-sm text-muted-foreground">de aproveitamento</p>
            </Card>
            <div className="flex gap-4 justify-center flex-wrap">
              <Button onClick={() => {
                setStarted(false);
                setFinished(false);
                fetchQuestions(selectedSubject!);
              }}>
                Tentar Novamente
              </Button>
              <Button variant="outline" onClick={resetQuiz}>
                Outra Matéria
              </Button>
              <Button variant="outline" onClick={() => navigate("/ranking")}>
                Ver Ranking
              </Button>
            </div>
          </div>
        </div>
      </div>
    );
  }

  // Quiz in progress
  if (questions.length === 0) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20 text-center">
          <Loader2 className="w-12 h-12 animate-spin mx-auto mb-4 text-primary" />
          <p className="text-muted-foreground">Carregando questões...</p>
        </div>
      </div>
    );
  }

  const question = questions[currentQuestion];

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-6 sm:py-12">
        <div className="max-w-3xl mx-auto">
          <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 mb-6 sm:mb-8">
            <div className="w-full sm:w-auto">
              <p className="text-sm text-muted-foreground mb-1">
                Questão {currentQuestion + 1} de {questions.length} • {selectedSubject}
              </p>
              <div className="w-full sm:w-64 h-2 bg-muted rounded-full overflow-hidden">
                <div
                  className="h-full bg-gradient-to-r from-primary to-secondary transition-all duration-300"
                  style={{
                    width: `${((currentQuestion + 1) / questions.length) * 100}%`,
                  }}
                />
              </div>
            </div>
            <QuizTimer duration={15} onTimeUp={handleTimeUp} isActive={!answered} />
          </div>

          <Card className="p-4 sm:p-8 mb-6">
            <div className="flex items-center gap-2 mb-4">
              {!question.is_official && (
                <span className="text-xs bg-amber-500/10 text-amber-600 px-2 py-1 rounded-full">
                  Questão de usuário (não oficial)
                </span>
              )}
              {question.difficulty && (
                <span className={cn(
                  "text-xs px-2 py-1 rounded-full",
                  question.difficulty === "easy" && "bg-success/10 text-success",
                  question.difficulty === "medium" && "bg-amber-500/10 text-amber-600",
                  question.difficulty === "hard" && "bg-destructive/10 text-destructive"
                )}>
                  {question.difficulty === "easy" ? "Fácil" : question.difficulty === "medium" ? "Médio" : "Difícil"}
                </span>
              )}
            </div>
            <h2 className="text-lg sm:text-2xl font-bold mb-6 sm:mb-8">
              {question.question}
            </h2>
            <div className="space-y-3">
              {question.options.map((option, index) => {
                const isCorrect = index === question.correct_answer;
                const isSelected = index === selectedAnswer;

                return (
                  <button
                    key={index}
                    onClick={() => handleAnswer(index)}
                    disabled={answered}
                    className={cn(
                      "w-full p-3 sm:p-4 rounded-lg text-left transition-all duration-200 border-2",
                      !answered && "hover:border-primary hover:bg-primary/5",
                      !answered && "border-border bg-card",
                      answered && isCorrect && "border-success bg-success/10",
                      answered &&
                        isSelected &&
                        !isCorrect &&
                        "border-destructive bg-destructive/10",
                      answered &&
                        !isSelected &&
                        !isCorrect &&
                        "border-border bg-muted opacity-50"
                    )}
                  >
                    <div className="flex items-center justify-between gap-2">
                      <span className="font-medium text-sm sm:text-base">
                        {option}
                      </span>
                      {answered && isCorrect && (
                        <CheckCircle2 className="w-5 h-5 text-success flex-shrink-0" />
                      )}
                      {answered && isSelected && !isCorrect && (
                        <XCircle className="w-5 h-5 text-destructive flex-shrink-0" />
                      )}
                    </div>
                  </button>
                );
              })}
            </div>
          </Card>

          {answered && (
            <div className="text-center">
              <Button onClick={nextQuestion} size="lg">
                {currentQuestion < questions.length - 1
                  ? "Próxima Questão"
                  : "Ver Resultado"}
              </Button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default Quiz;
