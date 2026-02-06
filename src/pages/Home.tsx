import { useEffect, useState } from "react";
import ConcursoCard from "@/components/ConcursoCard";
import PricingSection from "@/components/PricingSection";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { BookOpen, Notebook, Loader2, ChevronLeft, ChevronRight, Crown } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useSubscription } from "@/hooks/useSubscription";
import { Helmet } from 'react-helmet-async';

interface Concurso {
  id: string;
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  status: "destaque" | "breve" | "aberto";
  urlEdital?: string | null;
  salario?: number | null;
}

const Home = () => {
  const navigate = useNavigate();
  const [concursos, setConcursos] = useState<Concurso[]>([]);
  const [loading, setLoading] = useState(true);
  const [currentSlide, setCurrentSlide] = useState({
    destaque: 0,
    aberto: 0,
    breve: 0
  });

  // Adicionado: hooks de autenticação e assinatura
  const { user, loading: authLoading } = useAuth();
  const { isSubscriptionValid, loading: subscriptionLoading } = useSubscription();

  const showSubscribeButton = !user || !isSubscriptionValid();
  const showPricingSection = !user || !isSubscriptionValid();

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      setLoading(true);

      const { data: concursosData, error: concursosError } = await supabase
        .from("concursos")
        .select("*")
        .order("created_at", { ascending: false })
        .order("salario", { ascending: false, nullsFirst: false })
        .limit(12);

      if (concursosError) {
        console.error("Erro ao buscar concursos:", concursosError);
      } else if (concursosData) {
        const concursosFormatados = concursosData.map((c) => ({
          id: c.id,
          titulo: c.titulo,
          orgao: c.orgao,
          vagas: c.vagas,
          local: c.local,
          inscricoesAte: c.inscricoes_ate,
          nivel: c.nivel,
          status: c.status as "destaque" | "breve" | "aberto",
          urlEdital: c.url_edital,
          salario: c.salario
        }));

        setConcursos(concursosFormatados);
      }
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    } finally {
      setLoading(false);
    }
  };

  const concursosDestaque = concursos.filter(c => c.status === "destaque").slice(0, 4);
  const concursosAbertos = concursos.filter(c => c.status === "aberto").slice(0, 4);
  const concursosBreve = concursos.filter(c => c.status === "breve").slice(0, 4);

  const handlePrev = (tab: 'destaque' | 'aberto' | 'breve') => {
    setCurrentSlide(prev => ({
      ...prev,
      [tab]: prev[tab] > 0 ? prev[tab] - 1 : 0
    }));
  };

  const handleNext = (tab: 'destaque' | 'aberto' | 'breve', maxLength: number) => {
    setCurrentSlide(prev => ({
      ...prev,
      [tab]: prev[tab] < maxLength - 1 ? prev[tab] + 1 : prev[tab]
    }));
  };

  // Função para formatar data para Schema.org
  const formatDateForSchema = (dateString: string) => {
    if (!dateString) return "";
    return new Date(dateString).toISOString();
  };

  // Adicionado: Gerar dados estruturados (Schema.org)
  const generateStructuredData = () => {
    const baseUrl = "https://passar-concursos.vercel.app";
    
    const structuredData = {
      "@context": "https://schema.org",
      "@type": "WebSite",
      "name": "Passar Concursos",
      "description": "Treine com questões oficiais, revise com flashcards personalizados e organize seu plano de estudos para concursos públicos.",
      "url": baseUrl,
      "potentialAction": {
        "@type": "SearchAction",
        "target": `${baseUrl}/search?q={search_term_string}`,
        "query-input": "required name=search_term_string"
      }
    };

    return JSON.stringify(structuredData);
  };

  // Adicionado: Breadcrumb structured data
  const generateBreadcrumbData = () => {
    const breadcrumbData = {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [
        {
          "@type": "ListItem",
          "position": 1,
          "name": "Home",
          "item": "https://passar-concursos.vercel.app/"
        },
        {
          "@type": "ListItem",
          "position": 2,
          "name": "Concursos Públicos",
          "item": "https://passar-concursos.vercel.app/concursos"
        }
      ]
    };

    return JSON.stringify(breadcrumbData);
  };

  const renderConcursos = (concursosList: Concurso[], tabKey: 'destaque' | 'aberto' | 'breve') => {
    if (concursosList.length === 0) {
      return (
        <p className="text-center py-12 text-muted-foreground">
          Nenhum concurso encontrado.
        </p>
      );
    }

    return (
      <>
        {/* Desktop - Grid 2x2 */}
        <div className="hidden md:grid md:grid-cols-2 gap-6">
          {concursosList.map((concurso) => (
            <ConcursoCard key={concurso.id} {...concurso} salario={concurso.salario ?? null} />
          ))}
        </div>

        {/* Mobile - Carrossel */}
        <div className="md:hidden relative">
          <div className="overflow-hidden">
            <div 
              className="flex transition-transform duration-300 ease-in-out"
              style={{ transform: `translateX(-${currentSlide[tabKey] * 100}%)` }}
            >
              {concursosList.map((concurso) => (
                <div key={concurso.id} className="w-full flex-shrink-0 px-2">
                  <ConcursoCard key={concurso.id} {...concurso} salario={concurso.salario ?? null} />
                </div>
              ))}
            </div>
          </div>

          {concursosList.length > 1 && (
            <>
              <button
                onClick={() => handlePrev(tabKey)}
                disabled={currentSlide[tabKey] === 0}
                className="absolute left-0 top-1/2 -translate-y-1/2 -translate-x-2 bg-white rounded-full p-2 shadow-lg disabled:opacity-50 disabled:cursor-not-allowed z-10"
                aria-label={`Anterior concurso ${tabKey}`}
              >
                <ChevronLeft className="w-5 h-5" />
              </button>
              
              <button
                onClick={() => handleNext(tabKey, concursosList.length)}
                disabled={currentSlide[tabKey] === concursosList.length - 1}
                className="absolute right-0 top-1/2 -translate-y-1/2 translate-x-2 bg-white rounded-full p-2 shadow-lg disabled:opacity-50 disabled:cursor-not-allowed z-10"
                aria-label={`Próximo concurso ${tabKey}`}
              >
                <ChevronRight className="w-5 h-5" />
              </button>

              <div className="flex justify-center gap-2 mt-4">
                {concursosList.map((_, index) => (
                  <button
                    key={index}
                    onClick={() => setCurrentSlide(prev => ({ ...prev, [tabKey]: index }))}
                    className={`w-2 h-2 rounded-full transition-all ${
                      currentSlide[tabKey] === index 
                        ? 'bg-primary w-6' 
                        : 'bg-gray-300'
                    }`}
                    aria-label={`Ir para concurso ${index + 1}`}
                  />
                ))}
              </div>
            </>
          )}
        </div>
      </>
    );
  };

  // Adicionado: Se estiver carregando autenticação ou assinatura
  if (authLoading || subscriptionLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <>
      <Helmet>
        <title>Passar Concursos - Questões Oficiais e Flashcards para Concursos Públicos</title>
        <meta name="description" content="Treine com questões oficiais, revise com flashcards personalizados e organize seu plano de estudos. Editais recentes, simulados e muito mais para concursos públicos." />
        <meta name="keywords" content="concursos públicos, questões oficiais, flashcards, plano de estudos, editais, simulados, aprovação em concursos" />
        <link rel="canonical" href="https://passar-concursos.vercel.app/" />
        
        {/* Open Graph Tags */}
        <meta property="og:title" content="Passar Concursos - Questões Oficiais e Flashcards" />
        <meta property="og:description" content="Treine com questões oficiais de concursos públicos e revise com flashcards personalizados para sua aprovação." />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="https://passar-concursos.vercel.app/" />
        <meta property="og:image" content="https://passar-concursos.vercel.app/og-image.jpg" />
        
        {/* Twitter Card */}
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="Passar Concursos - Questões Oficiais e Flashcards" />
        <meta name="twitter:description" content="Treine com questões oficiais de concursos públicos e revise com flashcards personalizados." />
        <meta name="twitter:image" content="https://passar-concursos.vercel.app/twitter-image.jpg" />
        
        {/* Structured Data */}
        <script type="application/ld+json">
          {generateStructuredData()}
        </script>
        
        <script type="application/ld+json">
          {generateBreadcrumbData()}
        </script>
      </Helmet>
    
      <div className="min-h-screen bg-background">
        {/* Hero Section */}
        <section className="relative overflow-hidden bg-gradient-to-br from-primary/5 via-secondary/5 to-background py-12 sm:py-20">
          <div className="container mx-auto px-4">
            <div className="flex flex-col items-center justify-center text-center">
              <h1 className="text-3xl sm:text-4xl md:text-5xl lg:text-5xl xl:text-6xl 2xl:text-7xl font-bold mb-4 sm:mb-6 text-blue-600 leading-tight">
                Conquiste sua aprovação
                <span className="block text-2xl sm:text-3xl md:text-4xl lg:text-5xl text-gray-700 mt-2">
                  em concursos públicos
                </span>
              </h1>
              <p className="text-base sm:text-lg md:text-xl lg:text-2xl text-muted-foreground mb-6 sm:mb-8 lg:mb-10 max-w-3xl">
                Treine com <strong>questões oficiais</strong>, revise com <strong>flashcards personalizados</strong> e organize seu <strong>plano de estudos</strong> para concursos públicos.
              </p>
              <div className="flex flex-col sm:flex-row gap-3 sm:gap-4 lg:gap-6 items-center">
                <Button
                  size="lg"
                  onClick={() => navigate("/quiz")}
                  className="w-full sm:w-auto bg-[#2563eb] hover:bg-[#1d4ed8] transition-colors text-base lg:text-lg px-6 lg:px-8 py-6 lg:py-7"
                  aria-label="Começar a praticar com questões oficiais"
                >
                  <Notebook className="w-4 h-5 lg:w-6 lg:h-6" />
                  Questões Oficiais
                </Button>

                {/* Botão "Assine agora" - só aparece se necessário */}
                {showSubscribeButton && (
                  <Button
                    size="lg"
                    variant="outline"
                    onClick={() => navigate("/planos")}
                    className="w-full sm:w-auto bg-[#FACC15] hover:bg-[#EAB308] transition-colors text-base lg:text-lg px-6 lg:px-8 py-6 lg:py-7"
                    aria-label="Assinar planos premium para concursos"
                  >
                    <Crown className="w-5 h-5 lg:w-6 lg:h-6 mr-2" />
                    Assine agora
                  </Button>
                )}
                
                {/* Botão Flashcards - só para usuários com assinatura */}
                {!showSubscribeButton && (
                  <Button
                    size="lg"
                    variant="outline"
                    onClick={() => navigate("/estudo")}
                    className="w-full sm:w-auto bg-[#10b981] hover:bg-[#059669] text-white transition-colors text-base lg:text-lg px-6 lg:px-8 py-6 lg:py-7"
                    aria-label="Acessar flashcards personalizados"
                  >
                    <BookOpen className="w-5 h-5 lg:w-6 lg:h-6 mr-2" />
                    Flashcards
                  </Button>
                )}
              </div>
            </div>
          </div>
        </section>

        {/* Concursos Section */}
        <section className="py-10 sm:py-16">
          <div className="mx-auto w-full max-w-screen-2xl px-4 sm:px-6 lg:px-10 xl:px-12 2xl:px-16">
            <div className="text-center mb-8">
              <h2 className="text-2xl sm:text-3xl font-bold text-foreground mb-2">
                Editais Recentes de Concursos Públicos
              </h2>
              <p className="text-sm sm:text-base text-muted-foreground">
                Fique por dentro das últimas oportunidades de concursos públicos abertos e em destaque
              </p>
            </div>

            {loading ? (
              <div className="flex justify-center items-center py-12">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
              </div>
            ) : (
              <Tabs defaultValue="destaque" className="w-full">
                <TabsList className="grid w-full grid-cols-3 max-w-md mx-auto mb-8">
                  <TabsTrigger value="destaque">Destaque</TabsTrigger>
                  <TabsTrigger value="aberto">Abertos</TabsTrigger>
                  <TabsTrigger value="breve">Em Breve</TabsTrigger>
                </TabsList>

                <TabsContent value="destaque" className="mt-0">
                  {renderConcursos(concursosDestaque, 'destaque')}
                </TabsContent>

                <TabsContent value="aberto" className="mt-0">
                  {renderConcursos(concursosAbertos, 'aberto')}
                </TabsContent>

                <TabsContent value="breve" className="mt-0">
                  {renderConcursos(concursosBreve, 'breve')}
                </TabsContent>
              </Tabs>
            )}
            
            {/* Adicionado: Link para página de todos os concursos (SEO) */}
            <div className="text-center mt-10">
              <Button
                variant="outline"
                onClick={() => navigate("/concursos")}
                className="text-primary hover:text-primary-dark"
                aria-label="Ver todos os concursos públicos disponíveis"
              >
                Ver todos os concursos públicos →
              </Button>
            </div>
          </div>
        </section>

        {/* Adicionado: FAQ Section para SEO */}
        <section className="py-12 bg-gray-50">
          <div className="container mx-auto px-4">
            <h2 className="text-2xl font-bold text-center mb-8">
              Perguntas Frequentes sobre Concursos Públicos
            </h2>
            <div className="max-w-3xl mx-auto space-y-4">
              <div className="bg-white p-6 rounded-lg shadow">
                <h3 className="font-semibold text-lg mb-2">Como funciona o treino com questões oficiais?</h3>
                <p className="text-gray-600">
                  Oferecemos questões retiradas diretamente de provas anteriores de concursos públicos, permitindo que você pratique com conteúdo real e atualizado.
                </p>
              </div>
              <div className="bg-white p-6 rounded-lg shadow">
                <h3 className="font-semibold text-lg mb-2">Os flashcards são personalizados?</h3>
                <p className="text-gray-600">
                  Sim, nossos flashcards se adaptam ao seu desempenho, focando nos tópicos onde você mais precisa revisar para concursos públicos.
                </p>
              </div>
              <div className="bg-white p-6 rounded-lg shadow">
                <h3 className="font-semibold text-lg mb-2">Como acompanhar os editais mais recentes?</h3>
                <p className="text-gray-600">
                  Mantemos uma lista atualizada de concursos públicos em destaque, abertos e em breve, com informações sobre vagas, salários e prazos.
                </p>
              </div>
            </div>
          </div>
        </section>

        {/* Pricing Section - só aparece se necessário */}
        {showPricingSection && <PricingSection />}
        
      </div>
    </>
  );
};

export default Home;