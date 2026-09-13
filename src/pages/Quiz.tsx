import { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { Helmet } from 'react-helmet-async';
import { QuizFilters } from "@/components/quiz/QuizFilters";
import { QuizQuestion } from "@/components/quiz/QuizQuestion";
import { QUESTOES_SEM_CONTA, useQuizData } from "@/hooks/useQuizData";
import { useAuth } from "@/hooks/useAuth";
import { Loader2, Sparkles } from "lucide-react";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";

interface Filters {
  subject: string;
  difficulty: string;
  is_official: string;
  assunto: string;
  banca: string;
  prova: string;
}

const initialFilters: Filters = {
  subject: "",
  difficulty: "",
  is_official: "",
  assunto: "",
  banca: "",
  prova: "",
};

const Quiz = () => {
  const [filters, setFilters] = useState<Filters>(initialFilters);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [answered, setAnswered] = useState(false);
  const [score, setScore] = useState(0);

  const { questions, loading, error, fetchQuestions } = useQuizData();
  const { user, loading: authLoading } = useAuth();

  // Espera a sessão resolver antes de buscar: quem está logado leva o banco
  // inteiro, quem não está leva a amostra sorteada, e quem acabou de entrar
  // precisa que a lista seja refeita.
  useEffect(() => {
    if (authLoading) return;

    fetchQuestions(filters);
    setCurrentQuestionIndex(0);
    setSelectedAnswer(null);
    setAnswered(false);
  }, [filters, user, authLoading]);

  const handleSelectOption = (index: number) => {
    if (answered) return;
    setSelectedAnswer(index);
  };

  // Responder é livre, com ou sem conta: o que exige conta é a explicação da
  // IA, gatilho tratado dentro de QuizQuestion.
  const handleSubmitAnswer = () => {
    if (selectedAnswer === null || answered) return;

    setAnswered(true);
    if (selectedAnswer === questions[currentQuestionIndex].correct_answer) {
      setScore(score + 1);
    }
  };

  const handleNext = () => {
    if (currentQuestionIndex < questions.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
      setSelectedAnswer(null);
      setAnswered(false);
    }
  };

  const handlePrevious = () => {
    if (currentQuestionIndex > 0) {
      setCurrentQuestionIndex(currentQuestionIndex - 1);
      setSelectedAnswer(null);
      setAnswered(false);
    }
  };

  if (authLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <Loader2 className="w-10 h-10 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <>
      <Helmet>
        <title>Questões de Concursos Públicos | Banco com Milhares de Questões Oficiais</title>
        <meta name="description" content="Treine com questões oficiais de concursos públicos. Filtros por banca, matéria, dificuldade e assunto. Prepare-se com questões reais de provas anteriores." />
        <meta name="keywords" content="questões concurso, questões oficiais, banco de questões, treinar concurso, provas anteriores, questões por banca, questões por matéria" />
        <link rel="canonical" href="https://passar-concursos.vercel.app/quiz" />
        
        {/* Open Graph */}
        <meta property="og:title" content="Questões de Concursos - Treine com Questões Oficiais" />
        <meta property="og:description" content="Milhares de questões oficiais de concursos públicos para você treinar." />
        <meta property="og:url" content="https://passar-concursos.vercel.app/quiz" />
        <meta property="og:type" content="website" />
        
        {/* Twitter */}
        <meta name="twitter:title" content="Questões de Concursos - Passar Concursos" />
        <meta name="twitter:description" content="Treine com questões oficiais de concursos públicos." />
        
        {/* Schema.org - FAQ Page */}
        <script type="application/ld+json">
          {JSON.stringify({
            "@context": "https://schema.org",
            "@type": "WebPage",
            "name": "Questões de Concursos Públicos",
            "description": "Banco de questões oficiais de concursos públicos",
            "url": "https://passar-concursos.vercel.app/quiz",
            "breadcrumb": {
              "@type": "BreadcrumbList",
              "itemListElement": [
                {
                  "@type": "ListItem",
                  "position": 1,
                  "name": "Home",
                  "item": "https://passar-concursos.vercel.app"
                },
                {
                  "@type": "ListItem",
                  "position": 2,
                  "name": "Questões",
                  "item": "https://passar-concursos.vercel.app/quiz"
                }
              ]
            }
          })}
        </script>
      </Helmet>
    
      <main className="min-h-screen bg-background">
        <div className="container mx-auto px-3 sm:px-4 py-4 sm:py-6 md:py-8 pb-24 sm:pb-8">
          <div className="max-w-5xl mx-auto space-y-4 sm:space-y-6">
            
            {/* SEO: Título H1 visível apenas para screen readers */}
            <h1 className="sr-only">Questões de Concursos Públicos - Banco de Questões Oficiais</h1>
            
            <section aria-label="Filtros de questões">
              <QuizFilters
                filters={filters}
                onFilterChange={setFilters}
                loading={loading}
              />
            </section>
            
            {error && (
              <Alert variant="destructive" role="alert">
                <AlertTitle>Erro</AlertTitle>
                <AlertDescription>{error}</AlertDescription>
              </Alert>
            )}

            {loading ? (
              <div className="text-center py-8 sm:py-12" role="status" aria-live="polite">
                <Loader2 className="w-10 h-10 sm:w-12 sm:h-12 animate-spin mx-auto mb-4 text-primary" />
                <p className="text-sm sm:text-base text-muted-foreground">Carregando questões...</p>
              </div>
            ) : questions.length === 0 ? (
              <Alert>
                <AlertTitle>Nenhuma questão encontrada</AlertTitle>
                <AlertDescription>
                  Tente ajustar os filtros ou aguarde enquanto carregamos o conteúdo.
                </AlertDescription>
              </Alert>
            ) : (
              <section aria-label="Questão atual" className="space-y-3 sm:space-y-4">
                <div className="text-xs sm:text-sm text-muted-foreground px-1" role="status" aria-live="polite">
                  Mostrando {currentQuestionIndex + 1} de {questions.length} questões
                </div>
                
                <QuizQuestion
                  question={questions[currentQuestionIndex]}
                  selectedAnswer={selectedAnswer}
                  answered={answered}
                  onSelectOption={handleSelectOption}
                  onSubmitAnswer={handleSubmitAnswer}
                  onNext={handleNext}
                  onPrevious={handlePrevious}
                  hasPrevious={currentQuestionIndex > 0}
                  hasNext={currentQuestionIndex < questions.length - 1}
                />
              </section>
            )}

            {!user && !loading && (
              <Card className="p-4 sm:p-6 border-primary/30 bg-primary/5">
                <h2 className="text-base sm:text-lg font-semibold text-foreground">
                  Você está treinando com {QUESTOES_SEM_CONTA} questões sorteadas
                </h2>
                <p className="mt-2 text-sm text-muted-foreground">
                  Sem conta, a cada visita sorteamos {QUESTOES_SEM_CONTA} questões do banco e
                  você pode responder todas. Com uma conta gratuita você acessa o banco
                  completo, filtra por banca, matéria e prova, guarda anotações em cada
                  questão e libera a explicação da IA.
                </p>
                <div className="mt-4 flex flex-col sm:flex-row gap-2 sm:items-center">
                  <Button asChild className="w-full sm:w-auto">
                    <Link to="/auth?modo=cadastro">
                      <Sparkles className="h-4 w-4 mr-2" />
                      Criar conta grátis
                    </Link>
                  </Button>
                  <Button asChild variant="outline" className="w-full sm:w-auto">
                    <Link to="/auth">Já tenho conta</Link>
                  </Button>
                </div>
              </Card>
            )}
          </div>
        </div>
      </main>
    </>
  );
};

export default Quiz;