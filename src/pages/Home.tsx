import { useEffect, useState } from "react";
import Navbar from "@/components/Navbar";
import ConcursoCard from "@/components/ConcursoCard";
import { Button } from "@/components/ui/button";
import { Brain, Swords, Book, TrendingUp, Loader2, ChevronLeft, ChevronRight } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";

interface Concurso {
  id: string;
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  status: "aberto" | "breve" | "encerrado";
  urlEdital?: string | null;
}

interface Estatisticas {
  total_concursos: number;
  total_questoes: number;
  taxa_aprovacao: number;
}

interface Curso {
  id: string;
  titulo: string;
  imagem: string; // ATUALIZAR: Trocar pela URL real da imagem do curso
  valorAnterior: number;
  valorPromocional: number;
}

const Home = () => {
  const navigate = useNavigate();
  const [concursos, setConcursos] = useState<Concurso[]>([]);
  const [estatisticas, setEstatisticas] = useState<Estatisticas>({
    total_concursos: 0,
    total_questoes: 0,
    taxa_aprovacao: 0
  });
  const [loading, setLoading] = useState(true);
  const [currentSlide, setCurrentSlide] = useState(0);

  // ATUALIZAR: Substituir por dados reais do banco de dados
  const cursosMock: Curso[] = [
    {
      id: "1",
      titulo: "Preparatório Completo para Tribunais",
      imagem: "/placeholder-course-1.jpg", // ATUALIZAR: URL da imagem
      valorAnterior: 997.00,
      valorPromocional: 497.00
    },
    {
      id: "2",
      titulo: "Direito Administrativo para Concursos",
      imagem: "/placeholder-course-2.jpg", // ATUALIZAR: URL da imagem
      valorAnterior: 697.00,
      valorPromocional: 297.00
    },
    {
      id: "3",
      titulo: "Português Descomplicado",
      imagem: "/placeholder-course-3.jpg", // ATUALIZAR: URL da imagem
      valorAnterior: 497.00,
      valorPromocional: 197.00
    },
    {
      id: "4",
      titulo: "Raciocínio Lógico Matemático",
      imagem: "/placeholder-course-4.jpg", // ATUALIZAR: URL da imagem
      valorAnterior: 597.00,
      valorPromocional: 247.00
    },
    {
      id: "5",
      titulo: "Informática para Concursos",
      imagem: "/placeholder-course-5.jpg", // ATUALIZAR: URL da imagem
      valorAnterior: 397.00,
      valorPromocional: 147.00
    }
  ];

  const slidesPerView = {
    mobile: 1,
    tablet: 2,
    desktop: 3
  };

  const [itemsPerSlide, setItemsPerSlide] = useState(slidesPerView.desktop);

  useEffect(() => {
    const updateItemsPerSlide = () => {
      if (window.innerWidth < 640) {
        setItemsPerSlide(slidesPerView.mobile);
      } else if (window.innerWidth < 1024) {
        setItemsPerSlide(slidesPerView.tablet);
      } else {
        setItemsPerSlide(slidesPerView.desktop);
      }
    };

    updateItemsPerSlide();
    window.addEventListener('resize', updateItemsPerSlide);
    return () => window.removeEventListener('resize', updateItemsPerSlide);
  }, []);

  const maxSlides = Math.ceil(cursosMock.length / itemsPerSlide);

  const nextSlide = () => {
    setCurrentSlide((prev) => (prev + 1) % maxSlides);
  };

  const prevSlide = () => {
    setCurrentSlide((prev) => (prev - 1 + maxSlides) % maxSlides);
  };

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      setLoading(true);

      // Buscar concursos
      const { data: concursosData, error: concursosError } = await supabase
        .from("concursos")
        .select("*")
        .order("created_at", { ascending: false })
        .limit(4);

      if (concursosError) {
        console.error("Erro ao buscar concursos:", concursosError);
      } else if (concursosData) {
        // Transformar dados para o formato do componente
        const concursosFormatados = concursosData.map((c) => ({
          id: c.id,
          titulo: c.titulo,
          orgao: c.orgao,
          vagas: c.vagas,
          local: c.local,
          inscricoesAte: c.inscricoes_ate,
          nivel: c.nivel,
          status: c.status as "aberto" | "breve" | "encerrado",
          urlEdital: c.url_edital
        }));

        setConcursos(concursosFormatados);
      }

      // Buscar estatísticas
      const { data: statsData, error: statsError } = await supabase
        .from("estatisticas")
        .select("*")
        .limit(1)
        .single();

      if (statsError) {
        console.error("Erro ao buscar estatísticas:", statsError);
      } else if (statsData) {
        setEstatisticas({
          total_concursos: statsData.total_concursos,
          total_questoes: statsData.total_questoes,
          taxa_aprovacao: statsData.taxa_aprovacao
        });
      }
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    } finally {
      setLoading(false);
    }
  };

  const getCurrentSlideItems = () => {
    const start = currentSlide * itemsPerSlide;
    return cursosMock.slice(start, start + itemsPerSlide);
  };

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      {/* Hero Section */}
      <section className="relative overflow-hidden bg-gradient-to-br from-primary/5 via-secondary/5 to-background py-12 sm:py-20">
        <div className="container mx-auto px-4">
          <div className="max-w-3xl mx-auto text-center">
            <h1 className="text-3xl sm:text-4xl md:text-5xl lg:text-6xl font-bold mb-4 sm:mb-6 text-blue-600 leading-tight">
              Conquiste sua aprovação em concursos públicos
            </h1>
            <p className="text-base sm:text-lg md:text-xl text-muted-foreground mb-6 sm:mb-8 px-2">
              Treine com quizzes interativos, desafie outros candidatos em duelos e acompanhe os melhores concursos do Brasil
            </p>
            <div className="flex flex-col sm:flex-row gap-3 sm:gap-4 justify-center items-center">
              <Button 
                size="lg" 
                onClick={() => navigate("/quiz")}
                className="w-full sm:w-auto bg-[#2563eb] hover:bg-[#1d4ed8] transition-colors"
              >
                <Brain className="w-5 h-5 mr-2" />
                Começar Quiz
              </Button>
              <Button 
                size="lg" 
                variant="outline"
                onClick={() => navigate("/duelo")}
                className="w-full sm:w-auto"
              >
                <Swords className="w-5 h-5 mr-2" />
                Modo Duelo
              </Button>
            </div>
          </div>
        </div>
      </section>

      {/* Stats Section */}
      <section className="py-8 sm:py-12 border-b border-border">
        <div className="container mx-auto px-4">
          {loading ? (
            <div className="flex justify-center items-center py-12">
              <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
          ) : (
            <div className="grid grid-cols-3 gap-4 sm:gap-8">
              <div className="text-center">
                <div className="w-12 h-12 sm:w-16 sm:h-16 rounded-full bg-primary/10 flex items-center justify-center mx-auto mb-2 sm:mb-4">
                  <Book className="w-6 h-6 sm:w-8 sm:h-8 text-primary" />
                </div>
                <div className="text-xl sm:text-3xl font-bold text-foreground mb-1 sm:mb-2">
                  {estatisticas.total_concursos.toLocaleString('pt-BR')}
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground">Aulas</div>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 sm:w-16 sm:h-16 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-2 sm:mb-4">
                  <Brain className="w-6 h-6 sm:w-8 sm:h-8 text-secondary" />
                </div>
                <div className="text-xl sm:text-3xl font-bold text-foreground mb-1 sm:mb-2">
                  {estatisticas.total_questoes.toLocaleString('pt-BR')}
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground">Questões</div>
              </div>
              <div className="text-center">
                <div className="w-12 h-12 sm:w-16 sm:h-16 rounded-full bg-accent/10 flex items-center justify-center mx-auto mb-2 sm:mb-4">
                  <TrendingUp className="w-6 h-6 sm:w-8 sm:h-8 text-accent-foreground" />
                </div>
                <div className="text-xl sm:text-3xl font-bold text-foreground mb-1 sm:mb-2">
                  {estatisticas.taxa_aprovacao}%
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground">Aprovação</div>
              </div>
            </div>
          )}
        </div>
      </section>

      {/* Cursos Section - NOVA SEÇÃO */}
      <section className="py-10 sm:py-16 bg-gradient-to-br from-blue-50/50 to-background">
        <div className="container mx-auto px-4">
          <div className="mb-6 sm:mb-8">
            <h2 className="text-2xl sm:text-3xl font-bold text-foreground mb-2">Cursos em Promoção</h2>
            <p className="text-sm sm:text-base text-muted-foreground">Aproveite as melhores ofertas para sua aprovação</p>
          </div>

          <div className="relative">
            {/* Carousel Container */}
            <div className="overflow-hidden">
              <div 
                className="flex transition-transform duration-500 ease-in-out gap-4 sm:gap-6"
                style={{ transform: `translateX(-${currentSlide * 100}%)` }}
              >
                {cursosMock.map((curso) => (
                  <div 
                    key={curso.id} 
                    className="flex-shrink-0 w-full sm:w-[calc(50%-12px)] lg:w-[calc(33.333%-16px)]"
                  >
                    <div className="bg-card rounded-lg shadow-md overflow-hidden hover:shadow-xl transition-shadow duration-300 border border-border">
                      {/* ATUALIZAR: Substituir src pela URL real da imagem */}
                      <div className="relative h-48 bg-gradient-to-br from-blue-500 to-blue-700 flex items-center justify-center">
                        <Book className="w-16 h-16 text-white opacity-50" />
                        <div className="absolute inset-0 flex items-center justify-center">
                          <span className="text-white/80 text-sm font-medium">Imagem do Curso</span>
                        </div>
                      </div>
                      
                      <div className="p-4 sm:p-6">
                        <h3 className="text-lg font-bold text-foreground mb-4 line-clamp-2 min-h-[3.5rem]">
                          {curso.titulo}
                        </h3>
                        
                        <div className="space-y-2">
                          <div className="flex items-center gap-2">
                            <span className="text-sm text-red-500 line-through">
                              R$ {curso.valorAnterior.toFixed(2).replace('.', ',')}
                            </span>
                          </div>
                          
                          <div className="text-2xl font-bold text-green-600">
                            R$ {curso.valorPromocional.toFixed(2).replace('.', ',')}
                          </div>
                          
                          <div className="pt-2">
                            <span className="inline-block bg-green-100 text-green-700 text-xs font-semibold px-3 py-1 rounded-full">
                              {Math.round((1 - curso.valorPromocional / curso.valorAnterior) * 100)}% OFF
                            </span>
                          </div>
                        </div>
                        
                        <Button className="w-full mt-4 bg-blue-600 hover:bg-blue-700">
                          Ver Curso
                        </Button>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Navigation Buttons */}
            {maxSlides > 1 && (
              <>
                <button
                  onClick={prevSlide}
                  className="absolute left-0 top-1/2 -translate-y-1/2 -translate-x-4 bg-white rounded-full p-2 shadow-lg hover:bg-gray-100 transition-colors z-10 hidden sm:block"
                  aria-label="Slide anterior"
                >
                  <ChevronLeft className="w-6 h-6 text-gray-700" />
                </button>
                
                <button
                  onClick={nextSlide}
                  className="absolute right-0 top-1/2 -translate-y-1/2 translate-x-4 bg-white rounded-full p-2 shadow-lg hover:bg-gray-100 transition-colors z-10 hidden sm:block"
                  aria-label="Próximo slide"
                >
                  <ChevronRight className="w-6 h-6 text-gray-700" />
                </button>
              </>
            )}

            {/* Dots Indicator */}
            {maxSlides > 1 && (
              <div className="flex justify-center gap-2 mt-6">
                {Array.from({ length: maxSlides }).map((_, index) => (
                  <button
                    key={index}
                    onClick={() => setCurrentSlide(index)}
                    className={`w-2 h-2 rounded-full transition-all ${
                      currentSlide === index 
                        ? 'bg-blue-600 w-8' 
                        : 'bg-gray-300 hover:bg-gray-400'
                    }`}
                    aria-label={`Ir para slide ${index + 1}`}
                  />
                ))}
              </div>
            )}
          </div>
        </div>
      </section>

      {/* Concursos Section */}
      <section className="py-10 sm:py-16">
        <div className="container mx-auto px-4">
          <div className="mb-6 sm:mb-8">
            <h2 className="text-2xl sm:text-3xl font-bold text-foreground mb-2">Novos Concursos</h2>
            <p className="text-sm sm:text-base text-muted-foreground">Fique por dentro das últimas oportunidades</p>
          </div>

          {loading ? (
            <div className="flex justify-center items-center py-12">
              <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
          ) : concursos.length === 0 ? (
            <div className="text-center py-12">
              <p className="text-muted-foreground">Nenhum concurso encontrado no momento.</p>
            </div>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 sm:gap-6">
              {concursos.map((concurso) => (
                <ConcursoCard key={concurso.id} {...concurso} />
              ))}
            </div>
          )}
        </div>
      </section>
    </div>
  );
};

export default Home;