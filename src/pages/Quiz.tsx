import { useState, useEffect } from "react";
import Navbar from "@/components/Navbar";
import { QuizFilters } from "@/components/quiz/QuizFilters";
import { QuizQuestion } from "@/components/quiz/QuizQuestion";
import { useQuizData } from "@/hooks/useQuizData";
import { Loader2 } from "lucide-react";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";

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

  // Carrega todas as questões ao montar o componente
  useEffect(() => {
    fetchQuestions(filters);
  }, []);

  // Recarrega questões quando filtros mudam
  useEffect(() => {
    fetchQuestions(filters);
    setCurrentQuestionIndex(0);
    setSelectedAnswer(null);
    setAnswered(false);
  }, [filters]);

  const handleSelectOption = (index: number) => {
    if (answered) return;
    setSelectedAnswer(index);
  };

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

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <div className="container mx-auto px-3 sm:px-4 py-4 sm:py-6 md:py-8 pb-24 sm:pb-8">
        <div className="max-w-5xl mx-auto space-y-4 sm:space-y-6">
            <QuizFilters
              filters={filters}
              onFilterChange={setFilters}
              loading={loading}
            />
            
            {error && (
              <Alert variant="destructive">
                <AlertTitle>Erro</AlertTitle>
                <AlertDescription>{error}</AlertDescription>
              </Alert>
            )}

            {loading ? (
              <div className="text-center py-8 sm:py-12">
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
              <div className="space-y-3 sm:space-y-4">
                <div className="text-xs sm:text-sm text-muted-foreground px-1">
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
              </div>
            )}
        </div>
      </div>
    </div>
  );
};

export default Quiz;