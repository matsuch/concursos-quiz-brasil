import Navbar from "@/components/Navbar";
import ConcursoCard from "@/components/ConcursoCard";
import { Button } from "@/components/ui/button";
import { Brain, Swords, Trophy, TrendingUp } from "lucide-react";
import { useNavigate } from "react-router-dom";

const mockConcursos = [
  {
    titulo: "Auditor Fiscal da Receita Federal",
    orgao: "Receita Federal do Brasil",
    vagas: 699,
    local: "Nacional",
    inscricoesAte: "15/03/2025",
    nivel: "Superior",
    status: "aberto" as const
  },
  {
    titulo: "Técnico Administrativo",
    orgao: "Tribunal de Justiça de SP",
    vagas: 450,
    local: "São Paulo - SP",
    inscricoesAte: "20/02/2025",
    nivel: "Médio",
    status: "aberto" as const
  },
  {
    titulo: "Analista Judiciário",
    orgao: "Tribunal Regional Federal",
    vagas: 230,
    local: "Rio de Janeiro - RJ",
    inscricoesAte: "28/02/2025",
    nivel: "Superior",
    status: "aberto" as const
  },
  {
    titulo: "Policial Rodoviário Federal",
    orgao: "Polícia Rodoviária Federal",
    vagas: 1500,
    local: "Nacional",
    inscricoesAte: "Em breve",
    nivel: "Superior",
    status: "breve" as const
  }
];

const Home = () => {
  const navigate = useNavigate();

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      {/* Hero Section */}
      <section className="relative overflow-hidden bg-gradient-to-br from-primary/5 via-secondary/5 to-background py-20">
        <div className="container mx-auto px-4">
          <div className="max-w-3xl mx-auto text-center">
            <h1 className="text-5xl md:text-6xl font-bold mb-6 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
              Conquiste sua aprovação em concursos públicos
            </h1>
            <p className="text-xl text-muted-foreground mb-8">
              Treine com quizzes interativos, desafie outros candidatos em duelos e acompanhe os melhores concursos do Brasil
            </p>
            <div className="flex gap-4 justify-center flex-wrap">
              <Button 
                size="lg" 
                onClick={() => navigate("/quiz")}
                className="bg-gradient-to-r from-primary to-primary/90 hover:from-primary/90 hover:to-primary shadow-lg"
              >
                <Brain className="w-5 h-5 mr-2" />
                Começar Quiz
              </Button>
              <Button 
                size="lg" 
                variant="outline"
                onClick={() => navigate("/duelo")}
              >
                <Swords className="w-5 h-5 mr-2" />
                Modo Duelo
              </Button>
            </div>
          </div>
        </div>
      </section>

      {/* Stats Section */}
      <section className="py-12 border-b border-border">
        <div className="container mx-auto px-4">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="text-center">
              <div className="w-16 h-16 rounded-full bg-primary/10 flex items-center justify-center mx-auto mb-4">
                <Trophy className="w-8 h-8 text-primary" />
              </div>
              <div className="text-3xl font-bold text-foreground mb-2">2.879</div>
              <div className="text-sm text-muted-foreground">Concursos cadastrados</div>
            </div>
            <div className="text-center">
              <div className="w-16 h-16 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-4">
                <Brain className="w-8 h-8 text-secondary" />
              </div>
              <div className="text-3xl font-bold text-foreground mb-2">15.420</div>
              <div className="text-sm text-muted-foreground">Questões disponíveis</div>
            </div>
            <div className="text-center">
              <div className="w-16 h-16 rounded-full bg-accent/10 flex items-center justify-center mx-auto mb-4">
                <TrendingUp className="w-8 h-8 text-accent-foreground" />
              </div>
              <div className="text-3xl font-bold text-foreground mb-2">89%</div>
              <div className="text-sm text-muted-foreground">Taxa de aprovação</div>
            </div>
          </div>
        </div>
      </section>

      {/* Concursos Section */}
      <section className="py-16">
        <div className="container mx-auto px-4">
          <div className="flex items-center justify-between mb-8">
            <div>
              <h2 className="text-3xl font-bold text-foreground mb-2">Novos Concursos</h2>
              <p className="text-muted-foreground">Fique por dentro das últimas oportunidades</p>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {mockConcursos.map((concurso, index) => (
              <ConcursoCard key={index} {...concurso} />
            ))}
          </div>
        </div>
      </section>
    </div>
  );
};

export default Home;
