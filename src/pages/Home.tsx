import { useEffect, useState } from "react";
import Navbar from "@/components/Navbar";
import ConcursoCard from "@/components/ConcursoCard";
import { Button } from "@/components/ui/button";
import { Brain, Swords, Trophy, TrendingUp, Loader2 } from "lucide-react";
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

const Home = () => {
  const navigate = useNavigate();
  const [concursos, setConcursos] = useState<Concurso[]>([]);
  const [estatisticas, setEstatisticas] = useState<Estatisticas>({
    total_concursos: 0,
    total_questoes: 0,
    taxa_aprovacao: 0
  });
  const [loading, setLoading] = useState(true);

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
      <Navbar />
      
      {/* Hero Section */}
      <section className="relative overflow-hidden bg-gradient-to-br from-primary/5 via-secondary/5 to-background py-12 sm:py-20">
        <div className="container mx-auto px-4">
          <div className="max-w-3xl mx-auto text-center">
            <h1 className="text-3xl sm:text-4xl md:text-5xl lg:text-6xl font-bold mb-4 sm:mb-6 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent leading-tight">
              Conquiste sua aprovação em concursos públicos
            </h1>
            <p className="text-base sm:text-lg md:text-xl text-muted-foreground mb-6 sm:mb-8 px-2">
              Treine com quizzes interativos, desafie outros candidatos em duelos e acompanhe os melhores concursos do Brasil
            </p>
            <div className="flex flex-col sm:flex-row gap-3 sm:gap-4 justify-center items-center">
              <Button 
                size="lg" 
                onClick={() => navigate("/quiz")}
                className="w-full sm:w-auto bg-gradient-to-r from-primary to-primary/90 hover:from-primary/90 hover:to-primary shadow-lg"
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
                  <Trophy className="w-6 h-6 sm:w-8 sm:h-8 text-primary" />
                </div>
                <div className="text-xl sm:text-3xl font-bold text-foreground mb-1 sm:mb-2">
                  {estatisticas.total_concursos.toLocaleString('pt-BR')}
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground">Concursos</div>
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