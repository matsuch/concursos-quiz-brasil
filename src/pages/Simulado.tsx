import { useState, useEffect } from "react";
import ReactMarkdown from "react-markdown";
import Navbar from "@/components/Navbar";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { CheckCircle2, XCircle, Play, BookOpen, Loader2, Clock } from "lucide-react";
import { cn } from "@/lib/utils";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { toast } from "sonner";
import { PremiumGate } from "@/components/PremiumGate";

interface SimuladoQuestion {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  subject: string;
  simulado_id: string;
}

interface Simulado {
  id: string;
  title: string;
  description: string;
  total_questions: number;
  duration_minutes: number;
}

const SimuladoPage = () => {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [simulados, setSimulados] = useState<Simulado[]>([]);
  const [selectedSimulado, setSelectedSimulado] = useState<Simulado | null>(null);
  const [questions, setQuestions] = useState<SimuladoQuestion[]>([]);
  const [answers, setAnswers] = useState<{ [key: number]: number }>({});
  const [loading, setLoading] = useState(false);
  const [started, setStarted] = useState(false);
  const [finished, setFinished] = useState(false);
  const [startTime, setStartTime] = useState<number>(0);
  const [currentTime, setCurrentTime] = useState<number>(0);

  useEffect(() => {
    fetchSimulados();
  }, []);

  useEffect(() => {
    let interval: NodeJS.Timeout;
    if (started && !finished) {
      interval = setInterval(() => {
        setCurrentTime(Date.now());
      }, 1000);
    }
    return () => clearInterval(interval);
  }, [started, finished]);

  const fetchSimulados = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from("simulados")
        .select("*")
        .order("created_at", { ascending: false });

      if (error) throw error;
      setSimulados(data || []);
    } catch (error) {
      console.error("Error fetching simulados:", error);
      toast.error("Erro ao carregar simulados");
    } finally {
      setLoading(false);
    }
  };

  const fetchQuestions = async (simuladoId: string) => {
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from("simulado_questions")
        .select("*")
        .eq("simulado_id", simuladoId)
        .order("order");

      if (error) throw error;

      const parsed = (data || []).map((q) => ({
        ...q,
        options: typeof q.options === "string" ? JSON.parse(q.options) : q.options,
      }));

      setQuestions(parsed);
    } catch (error) {
      console.error("Error fetching questions:", error);
      toast.error("Erro ao carregar questões do simulado");
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = (questionIndex: number, answerIndex: number) => {
    setAnswers({
      ...answers,
      [questionIndex]: answerIndex,
    });
  };

  const startSimulado = () => {
    if (!selectedSimulado) {
      toast.error("Selecione um simulado");
      return;
    }
    setStarted(true);
    setAnswers({});
    setFinished(false);
    setStartTime(Date.now());
    setCurrentTime(Date.now());
  };

  const finishSimulado = async () => {
    setFinished(true);
    const timeSpent = Math.floor((Date.now() - startTime) / 1000);
    
    // Calculate score
    let correctAnswers = 0;
    questions.forEach((question, index) => {
      if (answers[index] === question.correct_answer) {
        correctAnswers++;
      }
    });

    const pointsEarned = correctAnswers * 20;

    if (user && selectedSimulado) {
      try {
        // Save simulado attempt
        await supabase.from("simulado_attempts").insert({
          user_id: user.id,
          simulado_id: selectedSimulado.id,
          correct_answers: correctAnswers,
          total_questions: questions.length,
          points_earned: pointsEarned,
          time_spent_seconds: timeSpent,
        });

        // Update profile stats
        const { data: profile } = await supabase
          .from("profiles")
          .select("total_points, simulados_completed")
          .eq("user_id", user.id)
          .maybeSingle();

        if (profile) {
          await supabase
            .from("profiles")
            .update({
              total_points: (profile.total_points || 0) + pointsEarned,
              simulados_completed: (profile.simulados_completed || 0) + 1,
            })
            .eq("user_id", user.id);
        }

        toast.success(`Simulado concluído! +${pointsEarned} pontos`);
      } catch (error) {
        console.error("Error saving simulado attempt:", error);
      }
    }
  };

  const resetSimulado = () => {
    setStarted(false);
    setSelectedSimulado(null);
    setQuestions([]);
    setAnswers({});
    setFinished(false);
  };

  const getElapsedTime = () => {
    const elapsed = Math.floor((currentTime - startTime) / 1000);
    const hours = Math.floor(elapsed / 3600);
    const minutes = Math.floor((elapsed % 3600) / 60);
    const seconds = elapsed % 60;
    return `${hours.toString().padStart(2, "0")}:${minutes.toString().padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`;
  };

  const getAnsweredCount = () => {
    return Object.keys(answers).length;
  };

  // Simulado selection screen
  if (!started) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <PremiumGate 
          feature="simulado"
          title="Simulados Completos"
          description="Os simulados estão disponíveis no plano Premium. Pratique com provas completas e tenha suas respostas corrigidas!"
        >
          <div className="container mx-auto px-4 py-10 sm:py-20">
            <div className="max-w-4xl mx-auto">
              <div className="text-center mb-8">
                <h1 className="text-2xl sm:text-4xl font-bold mb-3 sm:mb-4">Simulados</h1>
                <p className="text-base sm:text-xl text-muted-foreground mb-6 sm:mb-8 px-2">
                  Pratique com simulados completos e teste seus conhecimentos!
                </p>
              </div>

              {loading ? (
                <div className="text-center py-12">
                  <Loader2 className="w-12 h-12 animate-spin mx-auto mb-4 text-primary" />
                  <p className="text-muted-foreground">Carregando simulados...</p>
                </div>
              ) : (
                <div className="grid gap-4">
                  {simulados.map((simulado) => (
                    <Card
                      key={simulado.id}
                      className={cn(
                        "p-6 cursor-pointer transition-all duration-200 hover:shadow-lg",
                        selectedSimulado?.id === simulado.id
                          ? "border-primary border-2 bg-primary/5"
                          : "border-border hover:border-primary/50"
                      )}
                      onClick={() => {
                        setSelectedSimulado(simulado);
                        fetchQuestions(simulado.id);
                      }}
                    >
                      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
                        <div className="flex-1">
                          <h3 className="text-lg sm:text-xl font-bold mb-2">
                            {simulado.title}
                          </h3>
                          <p className="text-sm text-muted-foreground mb-3">
                            {simulado.description}
                          </p>
                          <div className="flex flex-wrap gap-3 text-sm">
                            <div className="flex items-center gap-1 text-muted-foreground">
                              <BookOpen className="w-4 h-4" />
                              <span>{simulado.total_questions} questões</span>
                            </div>
                            <div className="flex items-center gap-1 text-muted-foreground">
                              <Clock className="w-4 h-4" />
                              <span>{simulado.duration_minutes} minutos</span>
                            </div>
                          </div>
                        </div>
                        {selectedSimulado?.id === simulado.id && (
                          <CheckCircle2 className="w-8 h-8 text-primary flex-shrink-0" />
                        )}
                      </div>
                    </Card>
                  ))}
                </div>
              )}

              {selectedSimulado && questions.length > 0 && (
                <div className="mt-8 text-center">
                  <Button
                    size="lg"
                    onClick={startSimulado}
                    disabled={loading}
                    className="w-full sm:w-auto bg-gradient-to-r from-primary to-secondary"
                  >
                    <Play className="w-5 h-5 mr-2" />
                    Iniciar Simulado
                  </Button>
                  {!user && (
                    <p className="text-sm text-muted-foreground mt-4">
                      Faça login para salvar seu desempenho e ganhar pontos!
                    </p>
                  )}
                </div>
              )}
            </div>
          </div>
        </PremiumGate>
      </div>
    );
  }

  // Results screen
  if (finished) {
    let correctAnswers = 0;
    questions.forEach((question, index) => {
      if (answers[index] === question.correct_answer) {
        correctAnswers++;
      }
    });

    const percentage = questions.length > 0 ? (correctAnswers / questions.length) * 100 : 0;
    const pointsEarned = correctAnswers * 20;

    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20">
          <div className="max-w-4xl mx-auto">
            <div className="text-center mb-8">
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
              <h1 className="text-4xl font-bold mb-4">Simulado Concluído!</h1>
              <p className="text-xl text-muted-foreground mb-2">
                Você acertou {correctAnswers} de {questions.length} questões
              </p>
              {user && (
                <p className="text-lg text-primary font-semibold mb-8">
                  +{pointsEarned} pontos
                </p>
              )}
              <Card className="p-8 mb-8 max-w-md mx-auto">
                <div className="text-6xl font-bold mb-2 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
                  {percentage.toFixed(0)}%
                </div>
                <p className="text-sm text-muted-foreground">de aproveitamento</p>
              </Card>
            </div>

            {/* Review answers */}
            <div className="mb-8">
              <h2 className="text-2xl font-bold mb-4">Revisão das Respostas</h2>
              <div className="space-y-6">
                {questions.map((question, index) => {
                  const userAnswer = answers[index];
                  const isCorrect = userAnswer === question.correct_answer;
                  const wasAnswered = userAnswer !== undefined;

                  return (
                    <Card key={question.id} className="p-6">
                      <div className="flex items-start gap-3 mb-4">
                        <span className="font-bold text-lg text-muted-foreground">
                          {index + 1}.
                        </span>
                        <div className="flex-1">
                          <div className="prose prose-slate dark:prose-invert max-w-none mb-4 text-base font-normal">
                            <ReactMarkdown
                              components={{
                                h1: ({node, ...props}) => <h1 className="text-xl font-bold mb-2" {...props} />,
                                h2: ({node, ...props}) => <h2 className="text-lg font-bold mb-2" {...props} />,
                                h3: ({node, ...props}) => <h3 className="text-base font-bold mb-1" {...props} />,
                                p: ({node, ...props}) => <p className="mb-2 leading-relaxed" {...props} />,
                                strong: ({node, ...props}) => <strong className="font-bold text-primary" {...props} />,
                                em: ({node, ...props}) => <em className="italic" {...props} />,
                                ul: ({node, ...props}) => <ul className="list-disc list-inside mb-2 space-y-1" {...props} />,
                                ol: ({node, ...props}) => <ol className="list-decimal list-inside mb-2 space-y-1" {...props} />,
                                li: ({node, ...props}) => <li className="leading-relaxed" {...props} />,
                                code: ({node, inline, ...props}: any) => 
                                  inline ? (
                                    <code className="bg-muted px-1.5 py-0.5 rounded text-sm font-mono" {...props} />
                                  ) : (
                                    <code className="block bg-muted p-3 rounded-lg text-sm font-mono overflow-x-auto" {...props} />
                                  ),
                                blockquote: ({node, ...props}) => (
                                  <blockquote className="border-l-4 border-primary pl-4 italic text-muted-foreground" {...props} />
                                ),
                              }}
                            >
                              {question.question}
                            </ReactMarkdown>
                          </div>
                          <div className="space-y-2">
                            {question.options.map((option, optIndex) => {
                              const isThisCorrect = optIndex === question.correct_answer;
                              const isUserAnswer = optIndex === userAnswer;

                              return (
                                <div
                                  key={optIndex}
                                  className={cn(
                                    "p-3 rounded-lg border-2",
                                    isThisCorrect && "border-success bg-success/10",
                                    isUserAnswer && !isThisCorrect && "border-destructive bg-destructive/10",
                                    !isThisCorrect && !isUserAnswer && "border-border bg-muted/30"
                                  )}
                                >
                                  <div className="flex items-center justify-between gap-2">
                                    <span className="text-sm">
                                      {String.fromCharCode(65 + optIndex)}) {option}
                                    </span>
                                    {isThisCorrect && (
                                      <CheckCircle2 className="w-5 h-5 text-success flex-shrink-0" />
                                    )}
                                    {isUserAnswer && !isThisCorrect && (
                                      <XCircle className="w-5 h-5 text-destructive flex-shrink-0" />
                                    )}
                                  </div>
                                </div>
                              );
                            })}
                          </div>
                          {!wasAnswered && (
                            <p className="text-sm text-destructive mt-2">Não respondida</p>
                          )}
                        </div>
                      </div>
                    </Card>
                  );
                })}
              </div>
            </div>

            <div className="flex gap-4 justify-center flex-wrap">
              <Button onClick={resetSimulado}>
                Fazer Outro Simulado
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

  // Simulado in progress
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

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <div className="container mx-auto px-4 py-6 sm:py-12">
        <div className="max-w-4xl mx-auto">
          {/* Header with progress */}
          <Card className="p-4 sm:p-6 mb-6 sticky top-4 z-10 bg-background/95 backdrop-blur">
            <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
              <div>
                <h2 className="font-bold text-lg mb-1">{selectedSimulado?.title}</h2>
                <p className="text-sm text-muted-foreground">
                  {getAnsweredCount()} de {questions.length} questões respondidas
                </p>
              </div>
              <div className="flex items-center gap-4">
                <div className="flex items-center gap-2 text-muted-foreground">
                  <Clock className="w-5 h-5" />
                  <span className="font-mono font-semibold">{getElapsedTime()}</span>
                </div>
                <Button onClick={finishSimulado} variant="default">
                  Finalizar
                </Button>
              </div>
            </div>
          </Card>

          {/* Questions */}
          <div className="space-y-8">
            {questions.map((question, index) => (
              <Card key={question.id} className="p-4 sm:p-6" id={`question-${index}`}>
                <div className="flex items-start gap-3">
                  <span className="font-bold text-xl text-muted-foreground flex-shrink-0">
                    {index + 1}.
                  </span>
                  <div className="flex-1">
                    <div className="mb-2">
                      <span className="text-xs bg-primary/10 text-primary px-2 py-1 rounded-full">
                        {question.subject}
                      </span>
                    </div>
                    <div className="prose prose-slate dark:prose-invert max-w-none mb-6 text-base font-normal">
                      <ReactMarkdown
                        components={{
                          h1: ({node, ...props}) => <h1 className="text-xl font-bold mb-3" {...props} />,
                          h2: ({node, ...props}) => <h2 className="text-lg font-bold mb-2" {...props} />,
                          h3: ({node, ...props}) => <h3 className="text-base font-bold mb-2" {...props} />,
                          p: ({node, ...props}) => <p className="mb-3 leading-relaxed" {...props} />,
                          strong: ({node, ...props}) => <strong className="font-bold text-primary" {...props} />,
                          em: ({node, ...props}) => <em className="italic" {...props} />,
                          ul: ({node, ...props}) => <ul className="list-disc list-inside mb-3 space-y-1" {...props} />,
                          ol: ({node, ...props}) => <ol className="list-decimal list-inside mb-3 space-y-1" {...props} />,
                          li: ({node, ...props}) => <li className="leading-relaxed" {...props} />,
                          code: ({node, inline, ...props}: any) => 
                            inline ? (
                              <code className="bg-muted px-1.5 py-0.5 rounded text-sm font-mono" {...props} />
                            ) : (
                              <code className="block bg-muted p-3 rounded-lg text-sm font-mono overflow-x-auto" {...props} />
                            ),
                          blockquote: ({node, ...props}) => (
                            <blockquote className="border-l-4 border-primary pl-4 italic text-muted-foreground" {...props} />
                          ),
                        }}
                      >
                        {question.question}
                      </ReactMarkdown>
                    </div>
                    <div className="space-y-3">
                      {question.options.map((option, optIndex) => {
                        const isSelected = answers[index] === optIndex;

                        return (
                          <button
                            key={optIndex}
                            onClick={() => handleAnswer(index, optIndex)}
                            className={cn(
                              "w-full p-3 sm:p-4 rounded-lg text-left transition-all duration-200 border-2",
                              isSelected
                                ? "border-primary bg-primary/10"
                                : "border-border bg-card hover:border-primary/50 hover:bg-muted"
                            )}
                          >
                            <div className="flex items-start gap-2">
                              <span className="font-semibold text-sm flex-shrink-0">
                                {String.fromCharCode(65 + optIndex)})
                              </span>
                              <span className="text-sm flex-1">{option}</span>
                              {isSelected && (
                                <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0" />
                              )}
                            </div>
                          </button>
                        );
                      })}
                    </div>
                  </div>
                </div>
              </Card>
            ))}
          </div>

          {/* Bottom finish button */}
          <div className="mt-8 text-center">
            <Button onClick={finishSimulado} size="lg" className="w-full sm:w-auto">
              Finalizar Simulado
            </Button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default SimuladoPage;