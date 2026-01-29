import { useEffect, useState } from "react";
import ConcursoCard from "@/components/ConcursoCard";
import PricingSection from "@/components/PricingSection";
import { Button } from "@/components/ui/button";
import { Book, Notebook, Loader2} from "lucide-react";
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
  imagem: string;
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

  return (
    <div className="min-h-screen bg-background">
      
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
                <Notebook className="w-5 h-5 mr-2" />
                Questões Oficiais
              </Button>
              
              <Button 
                size="lg" 
                variant="outline"
                onClick={() => navigate("/mindmaps")}
                className="w-full sm:w-auto bg-[#FACC15] hover:bg-[#EAB308] transition-colors"
              >
                <Book className="w-5 h-5 mr-2" />
                Mapas Mentais
              </Button>
            </div>
          </div>
        </div>
      </section>

      {/* Concursos Section */}
      <section className="py-10 sm:py-16">
        <div className="container mx-auto px-4 max-w-7xl">
          <div className="text-center mb-8">
            <h2 className="text-2xl sm:text-3xl font-bold text-foreground mb-2">
              Editais lançados recentemente
            </h2>
            <p className="text-sm sm:text-base text-muted-foreground">
              Fique por dentro das últimas oportunidades
            </p>
          </div>

          {loading ? (
            <div className="flex justify-center items-center py-12">
              <Loader2 className="w-8 h-8 animate-spin text-primary" />
            </div>
          ) : concursos.length === 0 ? (
            <p className="text-center py-12 text-muted-foreground">
              Nenhum concurso encontrado no momento.
            </p>
          ) : (
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6 auto-rows-fr">
              {concursos.map((concurso) => (
                <div key={concurso.id} className="min-w-0">
                  <ConcursoCard {...concurso} />
                </div>
              ))}
            </div>
          )}
        </div>
      </section>

      {/* Pricing Section */}
      <PricingSection />
      
    </div>
  );
};

export default Home;