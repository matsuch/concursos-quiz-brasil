import { useEffect, useState } from "react";
import ConcursoCard from "@/components/ConcursoCard";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { BookOpen, Notebook, Loader2, ChevronLeft, ChevronRight, ChevronDown } from "lucide-react";
import { Link, useNavigate } from "react-router-dom";
import { useAuth } from "@/hooks/useAuth";
import { apenasAbertos, carregarConcursos, formatarDataBr, hojeIso } from "@/dados/concursos";
import { SeoHead } from "@/components/SeoHead";
import { SITE_URL } from '@/lib/seo-constants';

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
  salarioAte?: boolean;
  slug: string;
}

const SITE = SITE_URL;

const DESCRICAO =
  "Plataforma gratuita para quem estuda para concursos públicos: lista de concursos com inscrições abertas, questões por matéria, flashcards, planner de estudos e guias práticos.";

// Só o que o site entrega hoje. Não há plano pago nem assinatura: quando
// houver, a pergunta volta — com o que de fato existir.
const PERGUNTAS = [
  {
    pergunta: "O Passar Concursos é gratuito?",
    resposta:
      "Sim. A lista de concursos, os guias e as questões podem ser usados sem pagar nada e sem anúncios. Flashcards, planner de estudos, anotações e o painel de desempenho pedem apenas uma conta gratuita, para guardar o seu progresso.",
  },
  {
    pergunta: "Preciso criar conta para usar?",
    resposta:
      "Não para consultar concursos abertos, ler os guias e ver questões. A conta é necessária para registrar suas respostas e usar flashcards, planner e anotações.",
  },
  {
    pergunta: "De onde vêm os dados dos concursos?",
    resposta:
      "Da listagem pública do PCI Concursos, coletada automaticamente uma vez por semana. Cada página traz o link para a fonte. O edital original prevalece sempre sobre o que está aqui.",
  },
  {
    pergunta: "Com que frequência a lista de concursos é atualizada?",
    resposta:
      "Toda semana. Entre uma coleta e outra, os concursos cujo prazo de inscrição termina saem da lista automaticamente.",
  },
  {
    pergunta: "Posso criar meus próprios flashcards?",
    resposta:
      "Sim. Além dos flashcards prontos por matéria, você cria os seus para revisar o que achar mais importante. Os flashcards que você cria ficam visíveis só para você.",
  },
];

const Home = () => {
  const navigate = useNavigate();
  const [concursos, setConcursos] = useState<Concurso[]>([]);
  const [loading, setLoading] = useState(true);
  const [currentSlide, setCurrentSlide] = useState({
    destaque: 0,
    aberto: 0,
    breve: 0
  });

  const { user, loading: authLoading } = useAuth();

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      setLoading(true);

      // Instantâneo gerado no build (ver src/dados/concursos.ts): sem ida ao
      // banco, sem cold start do Neon na página de entrada.
      const { concursos: dados } = await carregarConcursos();
      const concursosFormatados = apenasAbertos(dados)
        .sort((a, b) =>
          a.inscricoes_ate.localeCompare(b.inscricoes_ate) || (b.salario ?? 0) - (a.salario ?? 0),
        )
        // Sem cortar a lista antes de separar por status: os "em breve" têm
        // prazo mais distante e ficavam de fora dos 12 primeiros, deixando a
        // aba vazia. Cada aba pega os seus 4 mais adiante.
        .map((c) => ({
          id: c.slug,
          slug: c.slug,
          titulo: c.titulo,
          orgao: c.orgao,
          vagas: c.vagas,
          local: c.local,
          inscricoesAte: c.inscricoes_ate,
          nivel: c.nivel,
          status: c.status as "destaque" | "breve" | "aberto",
          urlEdital: c.url_edital,
          salario: c.salario,
          salarioAte: c.salario_ate,
        }));

      setConcursos(concursosFormatados);
    } catch (error) {
      console.error("Erro ao buscar dados:", error);
    } finally {
      setLoading(false);
    }
  };

  // A lista já vem ordenada pelo prazo de inscrição mais próximo.
  const proximosPrazos = concursos.slice(0, 5);
  const hoje = hojeIso();
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

  // Sem SearchAction: o site não tem página de busca, e anunciar /search
  // seria apontar o buscador para um endereço que não existe. Sem breadcrumb:
  // a home é a raiz, não tem trilha.
  const dadosEstruturados = [
    {
      "@context": "https://schema.org",
      "@type": "WebSite",
      "name": "Passar Concursos",
      "description": DESCRICAO,
      "url": SITE,
      "inLanguage": "pt-BR",
    },
    {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": PERGUNTAS.map(({ pergunta, resposta }) => ({
        "@type": "Question",
        "name": pergunta,
        "acceptedAnswer": { "@type": "Answer", "text": resposta },
      })),
    },
  ];

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
        <div className="hidden md:grid md:grid-cols-2 gap-4">
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
                className="absolute left-0 top-1/2 -translate-y-1/2 -translate-x-2 bg-card border border-border rounded-full p-2 shadow-card disabled:opacity-50 disabled:cursor-not-allowed z-10"
                aria-label={`Anterior concurso ${tabKey}`}
              >
                <ChevronLeft className="w-5 h-5" />
              </button>
              
              <button
                onClick={() => handleNext(tabKey, concursosList.length)}
                disabled={currentSlide[tabKey] === concursosList.length - 1}
                className="absolute right-0 top-1/2 -translate-y-1/2 translate-x-2 bg-card border border-border rounded-full p-2 shadow-card disabled:opacity-50 disabled:cursor-not-allowed z-10"
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
                        : 'bg-border'
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

  if (authLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <>
      <SeoHead
        title="Passar Concursos — concursos abertos, questões e guias de estudo gratuitos"
        description={DESCRICAO}
        canonical="/"
        structuredData={dadosEstruturados}
      />
    
      <div className="min-h-screen bg-background">
        {/* Hero: à esquerda o que o site é e as duas ações; à direita a
            coisa mais útil que ele tem, os prazos que terminam primeiro, com
            os dados reais da lista. */}
        <section className="border-b border-border bg-card">
          <div className="container mx-auto px-4 py-12 sm:py-16 lg:py-20">
            <div className="grid grid-cols-[minmax(0,1fr)] gap-10 lg:grid-cols-[minmax(0,1.1fr)_minmax(0,1fr)] lg:gap-16 items-start">
              <div className="max-w-xl">
                <h1 className="text-[2.125rem] sm:text-5xl font-extrabold leading-[1.08] text-foreground">
                  Conquiste sua aprovação em concursos públicos
                </h1>
                <p className="mt-5 text-lg text-muted-foreground leading-relaxed">
                  Acompanhe os concursos com inscrições abertas, treine com questões por matéria e organize seus estudos. Gratuito e sem anúncios.
                </p>
                <div className="mt-8 flex flex-col sm:flex-row gap-3">
                  <Button size="lg" onClick={() => navigate("/quiz")} className="w-full sm:w-auto px-6">
                    <Notebook aria-hidden="true" />
                    Resolver questões
                  </Button>
                  <Button
                    size="lg"
                    variant="outline"
                    onClick={() => navigate("/concursos")}
                    className="w-full sm:w-auto px-6"
                  >
                    <BookOpen aria-hidden="true" />
                    Ver concursos abertos
                  </Button>
                </div>
              </div>

              <div className="rounded-lg border border-border bg-background">
                <h2 className="px-5 pt-4 pb-3 text-base font-semibold text-foreground border-b border-border">
                  Inscrições que terminam primeiro
                </h2>
                {loading ? (
                  <div className="flex justify-center py-10">
                    <Loader2 className="w-6 h-6 animate-spin text-muted-foreground" aria-label="Carregando" />
                  </div>
                ) : proximosPrazos.length === 0 ? (
                  <p className="px-5 py-8 text-sm text-muted-foreground">
                    Nenhum concurso com inscrições abertas na lista desta semana.
                  </p>
                ) : (
                  <ol className="divide-y divide-border">
                    {proximosPrazos.map((c) => (
                      <li key={c.id}>
                        <Link
                          to={`/concursos/${c.slug}`}
                          className="group flex items-baseline justify-between gap-4 px-5 py-3 hover:bg-muted/60 transition-colors"
                        >
                          <span className="min-w-0">
                            <span className="block text-sm font-medium text-foreground group-hover:underline truncate">
                              {c.orgao}
                            </span>
                            <span className="block text-xs text-muted-foreground truncate">{c.local}</span>
                          </span>
                          {/* O último dia leva o marca-texto: é a informação
                              que a pessoa precisa ver antes de qualquer outra. */}
                          <span className="shrink-0 text-right text-sm tabular-nums text-foreground">
                            {c.inscricoesAte === hoje ? (
                              <time dateTime={c.inscricoesAte} className="rounded-sm bg-accent px-1.5 py-0.5 font-medium text-accent-foreground">
                                termina hoje
                              </time>
                            ) : (
                              <>
                                <span className="text-muted-foreground">até </span>
                                <time dateTime={c.inscricoesAte}>{formatarDataBr(c.inscricoesAte)}</time>
                              </>
                            )}
                          </span>
                        </Link>
                      </li>
                    ))}
                  </ol>
                )}
              </div>
            </div>
          </div>
        </section>

        {/* Concursos Section */}
        <section className="py-12 sm:py-16">
          <div className="container mx-auto px-4">
            <div className="mb-6 flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
              <div>
                <h2 className="text-2xl sm:text-3xl font-bold text-foreground">
                  Concursos com inscrições abertas
                </h2>
                <p className="mt-1 text-sm sm:text-base text-muted-foreground">
                  Os prazos mais próximos primeiro. A lista é atualizada toda semana.
                </p>
              </div>
            </div>

            {loading ? (
              <div className="flex justify-center items-center py-12">
                <Loader2 className="w-8 h-8 animate-spin text-primary" />
              </div>
            ) : (
              <Tabs defaultValue="destaque" className="w-full">
                <TabsList className="grid w-full grid-cols-3 max-w-md mb-6">
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
            <div className="mt-8">
              <Link
                to="/concursos"
                className="text-sm font-medium text-primary underline underline-offset-4 hover:no-underline"
              >
                Ver todos os concursos públicos
              </Link>
            </div>
          </div>
        </section>

        {/* Perguntas frequentes. A lista PERGUNTAS alimenta a tela e o JSON-LD:
            dado estruturado que diz outra coisa que a página é motivo de
            punição, e era o caso quando os dois textos viviam separados. */}
        <section className="py-12 sm:py-16 border-t border-border">
          <div className="container mx-auto px-4 grid grid-cols-[minmax(0,1fr)] gap-8 lg:grid-cols-[minmax(0,1fr)_minmax(0,2fr)]">
            <h2 className="text-2xl md:text-3xl font-bold text-foreground">
              Perguntas frequentes
            </h2>
            <div className="max-w-3xl divide-y divide-border border-y border-border">
              {PERGUNTAS.map(({ pergunta, resposta }) => (
                <details
                  key={pergunta}
                  className="group py-5"
                >
                  <summary className="font-semibold text-base sm:text-lg text-foreground cursor-pointer flex justify-between items-center gap-4 list-none">
                    <span>{pergunta}</span>
                    <ChevronDown
                      className="w-5 h-5 shrink-0 text-muted-foreground group-open:rotate-180 transition-transform duration-200"
                      aria-hidden="true"
                    />
                  </summary>
                  <div className="pt-3">
                    <p className="text-muted-foreground leading-relaxed max-w-prose">{resposta}</p>
                  </div>
                </details>
              ))}
            </div>
          </div>
        </section>

      </div>
    </>
  );
};

export default Home;