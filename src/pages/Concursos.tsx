import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Search, Filter, MapPin, Calendar, Banknote, Users, ChevronRight, Loader2 } from "lucide-react";
import ConcursoCard from "@/components/ConcursoCard";
import { SeoHead } from "@/components/SeoHead";
import { supabase } from "@/integrations/supabase/client";
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
  salario: number | null;
}

interface Filters {
  search: string;
  estado: string;
  nivel: string;
  status: string;
  salarioMin: string;
  orgao: string;
}

const ConcursosPage = () => {
  const navigate = useNavigate();
  const [concursos, setConcursos] = useState<Concurso[]>([]);
  const [filteredConcursos, setFilteredConcursos] = useState<Concurso[]>([]);
  const [loading, setLoading] = useState(true);
  const [estados, setEstados] = useState<string[]>([]);
  const [orgaos, setOrgaos] = useState<string[]>([]);
  const [filters, setFilters] = useState<Filters>({
    search: "",
    estado: "todos",
    nivel: "todos",
    status: "todos",
    salarioMin: "0",
    orgao: "todos"
  });

  useEffect(() => {
    fetchConcursos();
  }, []);

  useEffect(() => {
    applyFilters();
  }, [concursos, filters]);

  const fetchConcursos = async () => {
    try {
      setLoading(true);
      
      const { data: concursosData, error } = await supabase
        .from("concursos")
        .select("*")
        .order("inscricoes_ate", { ascending: true }) // Ordenar por data mais próxima
        .order("salario", { ascending: false, nullsFirst: false });

      if (error) {
        console.error("Erro ao buscar concursos:", error);
      } else if (concursosData) {
        const formatados: Concurso[] = concursosData.map((c) => ({
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

        setConcursos(formatados);
        setFilteredConcursos(formatados);
        
        // Extrair estados e órgãos únicos para filtros
        const estadosUnicos = [...new Set(formatados.map(c => {
          const parts = c.local.split('/');
          return parts.length > 1 ? parts[0].trim() : "Outros";
        }))].sort();
        
        const orgaosUnicos = [...new Set(formatados.map(c => c.orgao))].sort();
        
        setEstados(estadosUnicos);
        setOrgaos(orgaosUnicos);
      }
    } catch (error) {
      console.error("Erro ao buscar concursos:", error);
    } finally {
      setLoading(false);
    }
  };

  const applyFilters = () => {
    let result = [...concursos];

    // Filtro por busca
    if (filters.search) {
      const searchLower = filters.search.toLowerCase();
      result = result.filter(c => 
        c.titulo.toLowerCase().includes(searchLower) ||
        c.orgao.toLowerCase().includes(searchLower) ||
        c.local.toLowerCase().includes(searchLower)
      );
    }

    // Filtro por estado
    if (filters.estado !== "todos") {
      result = result.filter(c => {
        const estadoConcurso = c.local.split('/')[0]?.trim();
        return estadoConcurso === filters.estado;
      });
    }

    // Filtro por nível
    if (filters.nivel !== "todos") {
      result = result.filter(c => c.nivel === filters.nivel);
    }

    // Filtro por status
    if (filters.status !== "todos") {
      result = result.filter(c => c.status === filters.status);
    }

    // Filtro por salário mínimo
    if (filters.salarioMin !== "0") {
      const salarioMin = parseFloat(filters.salarioMin);
      result = result.filter(c => c.salario && c.salario >= salarioMin);
    }

    // Filtro por órgão
    if (filters.orgao !== "todos") {
      result = result.filter(c => c.orgao === filters.orgao);
    }

    setFilteredConcursos(result);
  };

  const handleFilterChange = (key: keyof Filters, value: string) => {
    setFilters(prev => ({ ...prev, [key]: value }));
  };

  const clearFilters = () => {
    setFilters({
      search: "",
      estado: "todos",
      nivel: "todos",
      status: "todos",
      salarioMin: "0",
      orgao: "todos"
    });
  };

  const getStatusCount = (status: string) => {
    return concursos.filter(c => c.status === status).length;
  };

  // Structured Data para SEO
  const generateStructuredData = () => {
    const baseUrl = "https://passar-concursos.vercel.app";
    
    return [
      {
        "@context": "https://schema.org",
        "@type": "CollectionPage",
        "name": "Concursos Públicos Abertos e em Destaque",
        "description": "Lista completa de concursos públicos com filtros por estado, órgão, salário e nível. Encontre a oportunidade ideal para sua carreira pública.",
        "url": `${baseUrl}/concursos`,
        "mainEntity": {
          "@type": "ItemList",
          "numberOfItems": filteredConcursos.length,
          "itemListElement": filteredConcursos.slice(0, 10).map((concurso, index) => ({
            "@type": "ListItem",
            "position": index + 1,
            "item": {
              "@type": "JobPosting",
              "title": concurso.titulo,
              "hiringOrganization": {
                "@type": "Organization",
                "name": concurso.orgao
              }
            }
          }))
        }
      },
      {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
          {
            "@type": "ListItem",
            "position": 1,
            "name": "Home",
            "item": `${baseUrl}/`
          },
          {
            "@type": "ListItem",
            "position": 2,
            "name": "Concursos Públicos",
            "item": `${baseUrl}/concursos`
          }
        ]
      },
      {
        "@context": "https://schema.org",
        "@type": "WebSite",
        "name": "Passar Concursos",
        "url": baseUrl,
        "potentialAction": {
          "@type": "SearchAction",
          "target": `${baseUrl}/concursos?search={search_term_string}`,
          "query-input": "required name=search_term_string"
        }
      }
    ];
  };

  if (loading) {
    return (
      <>
        <SeoHead
          title="Carregando Concursos Públicos - Passar Concursos"
          description="Carregando lista de concursos públicos..."
        />
        <div className="min-h-screen bg-background flex items-center justify-center">
          <Loader2 className="w-8 h-8 animate-spin text-primary" />
        </div>
      </>
    );
  }

  return (
    <>
      <SeoHead
        title="Concursos Públicos Abertos 2024 - Lista Completa com Filtros"
        description={`Encontre ${filteredConcursos.length} concursos públicos abertos, em destaque e em breve. Filtre por estado, órgão, salário e nível. Vagas atualizadas diariamente.`}
        canonical="/concursos"
        structuredData={generateStructuredData()}
      />

      <Helmet>
        <link rel="preload" as="image" href="https://passar-concursos.vercel.app/og-image.jpg" />
      </Helmet>

      <div className="min-h-screen bg-background">
        {/* Hero Section */}
        <section className="bg-gradient-to-br from-primary/5 via-secondary/5 to-background py-12 md:py-16">
          <div className="container mx-auto px-4">
            <div className="max-w-6xl mx-auto">
              <nav className="flex items-center gap-2 text-sm text-muted-foreground mb-6" aria-label="Navegação">
                <button onClick={() => navigate("/")} className="hover:text-primary transition-colors">
                  Home
                </button>
                <ChevronRight className="w-4 h-4" />
                <span className="text-foreground font-medium">Concursos Públicos</span>
              </nav>

              <h1 className="text-3xl md:text-4xl lg:text-5xl font-bold mb-4 text-foreground">
                Concursos Públicos
                <span className="block text-xl md:text-2xl text-primary mt-2">
                  Encontre a oportunidade ideal para sua carreira
                </span>
              </h1>
              
              <p className="text-lg text-muted-foreground mb-8 max-w-3xl">
                Explore nossa lista completa de concursos públicos filtrados por estado, órgão, salário e nível. 
                <span className="font-semibold text-foreground"> {concursos.length} oportunidades</span> disponíveis.
              </p>

              {/* Barra de busca principal */}
              <div className="relative mb-8">
                <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-muted-foreground w-5 h-5" />
                <Input
                  type="search"
                  placeholder="Buscar concursos por título, órgão ou localidade..."
                  className="pl-12 py-6 text-base"
                  value={filters.search}
                  onChange={(e) => handleFilterChange("search", e.target.value)}
                  aria-label="Buscar concursos públicos"
                />
              </div>
            </div>
          </div>
        </section>

        {/* Filtros e Conteúdo */}
        <section className="py-8">
          <div className="container mx-auto px-4">
            <div className="max-w-6xl mx-auto">
              <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
                {/* Sidebar de Filtros */}
                <div className="lg:col-span-1">
                  <Card className="sticky top-24">
                    <CardContent className="p-6">
                      <div className="flex items-center justify-between mb-6">
                        <h2 className="text-lg font-semibold flex items-center gap-2">
                          <Filter className="w-5 h-5" />
                          Filtros
                        </h2>
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={clearFilters}
                          className="text-sm"
                        >
                          Limpar
                        </Button>
                      </div>

                      <div className="space-y-6">
                        {/* Filtro por Status */}
                        <div>
                          <h3 className="font-medium mb-3">Status do Concurso</h3>
                          <div className="space-y-2">
                            {[
                              { value: "todos", label: "Todos", count: concursos.length },
                              { value: "aberto", label: "Abertos", count: getStatusCount("aberto") },
                              { value: "destaque", label: "Destaque", count: getStatusCount("destaque") },
                              { value: "breve", label: "Em Breve", count: getStatusCount("breve") }
                            ].map((item) => (
                              <button
                                key={item.value}
                                onClick={() => handleFilterChange("status", item.value)}
                                className={`flex items-center justify-between w-full p-2 rounded-md text-sm transition-colors ${
                                  filters.status === item.value
                                    ? "bg-primary/10 text-primary"
                                    : "hover:bg-muted"
                                }`}
                              >
                                <span>{item.label}</span>
                                <Badge variant="outline" className="text-xs">
                                  {item.count}
                                </Badge>
                              </button>
                            ))}
                          </div>
                        </div>

                        {/* Filtro por Estado */}
                        <div>
                          <h3 className="font-medium mb-3 flex items-center gap-2">
                            <MapPin className="w-4 h-4" />
                            Estado
                          </h3>
                          <Select
                            value={filters.estado}
                            onValueChange={(value) => handleFilterChange("estado", value)}
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Selecione um estado" />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="todos">Todos os estados</SelectItem>
                              {estados.map((estado) => (
                                <SelectItem key={estado} value={estado}>
                                  {estado}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        </div>

                        {/* Filtro por Órgão */}
                        <div>
                          <h3 className="font-medium mb-3">Órgão</h3>
                          <Select
                            value={filters.orgao}
                            onValueChange={(value) => handleFilterChange("orgao", value)}
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Selecione um órgão" />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="todos">Todos os órgãos</SelectItem>
                              {orgaos.map((orgao) => (
                                <SelectItem key={orgao} value={orgao}>
                                  {orgao}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        </div>

                        {/* Filtro por Salário */}
                        <div>
                          <h3 className="font-medium mb-3 flex items-center gap-2">
                            <Banknote className="w-4 h-4" />
                            Salário Mínimo
                          </h3>
                          <Select
                            value={filters.salarioMin}
                            onValueChange={(value) => handleFilterChange("salarioMin", value)}
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Salário mínimo" />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="0">Qualquer salário</SelectItem>
                              <SelectItem value="2000">R$ 2.000+</SelectItem>
                              <SelectItem value="5000">R$ 5.000+</SelectItem>
                              <SelectItem value="10000">R$ 10.000+</SelectItem>
                              <SelectItem value="15000">R$ 15.000+</SelectItem>
                              <SelectItem value="20000">R$ 20.000+</SelectItem>
                            </SelectContent>
                          </Select>
                        </div>

                        {/* Filtro por Nível */}
                        <div>
                          <h3 className="font-medium mb-3">Nível</h3>
                          <Select
                            value={filters.nivel}
                            onValueChange={(value) => handleFilterChange("nivel", value)}
                          >
                            <SelectTrigger>
                              <SelectValue placeholder="Selecione o nível" />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="todos">Todos os níveis</SelectItem>
                              <SelectItem value="Fundamental">Fundamental</SelectItem>
                              <SelectItem value="Médio">Médio</SelectItem>
                              <SelectItem value="Superior">Superior</SelectItem>
                              <SelectItem value="Técnico">Técnico</SelectItem>
                            </SelectContent>
                          </Select>
                        </div>
                      </div>
                    </CardContent>
                  </Card>

                  {/* Call to Action */}
                  <div className="mt-6 p-6 bg-gradient-to-r from-primary/10 to-secondary/10 rounded-lg">
                    <h3 className="font-semibold mb-2">Não encontrou o que procura?</h3>
                    <p className="text-sm text-muted-foreground mb-4">
                      Receba alertas de novos concursos por email.
                    </p>
                    <Button 
                      className="w-full"
                      onClick={() => navigate("/planos")}
                    >
                      Criar Alertas
                    </Button>
                  </div>
                </div>

                {/* Lista de Concursos */}
                <div className="lg:col-span-3">
                  <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 mb-6">
                    <div>
                      <h2 className="text-2xl font-bold">
                        {filteredConcursos.length} Concursos Encontrados
                      </h2>
                      {filters.search && (
                        <p className="text-muted-foreground">
                          Resultados para: <span className="font-medium">{filters.search}</span>
                        </p>
                      )}
                    </div>
                    <div className="text-sm text-muted-foreground flex items-center gap-2">
                      <Calendar className="w-4 h-4" />
                      Atualizado em {new Date().toLocaleDateString('pt-BR')}
                    </div>
                  </div>

                  {/* Estatísticas */}
                  <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8">
                    <div className="bg-blue-50 p-4 rounded-lg">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-blue-500" />
                        <div>
                          <p className="text-sm text-muted-foreground">Concursos Abertos</p>
                          <p className="text-2xl font-bold">{getStatusCount("aberto")}</p>
                        </div>
                      </div>
                    </div>
                    <div className="bg-emerald-50 p-4 rounded-lg">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-emerald-500" />
                        <div>
                          <p className="text-sm text-muted-foreground">Em Destaque</p>
                          <p className="text-2xl font-bold">{getStatusCount("destaque")}</p>
                        </div>
                      </div>
                    </div>
                    <div className="bg-amber-50 p-4 rounded-lg">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-amber-500" />
                        <div>
                          <p className="text-sm text-muted-foreground">Em Breve</p>
                          <p className="text-2xl font-bold">{getStatusCount("breve")}</p>
                        </div>
                      </div>
                    </div>
                  </div>

                  {/* Lista de Concursos */}
                  {filteredConcursos.length === 0 ? (
                    <div className="text-center py-12">
                      <div className="max-w-md mx-auto">
                        <Search className="w-12 h-12 text-muted-foreground mx-auto mb-4" />
                        <h3 className="text-xl font-semibold mb-2">Nenhum concurso encontrado</h3>
                        <p className="text-muted-foreground mb-6">
                          Tente ajustar os filtros ou busque por outras palavras-chave.
                        </p>
                        <Button onClick={clearFilters}>
                          Limpar Filtros
                        </Button>
                      </div>
                    </div>
                  ) : (
                    <>
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        {filteredConcursos.map((concurso) => (
                          <ConcursoCard
                            key={concurso.id}
                            {...concurso}
                          />
                        ))}
                      </div>

                      {/* Paginação (se necessário) */}
                      {filteredConcursos.length > 12 && (
                        <div className="flex justify-center mt-12">
                          <Button variant="outline" className="gap-2">
                            Carregar mais concursos
                            <ChevronRight className="w-4 h-4" />
                          </Button>
                        </div>
                      )}
                    </>
                  )}

                  {/* FAQ para SEO */}
                  <div className="mt-12 pt-8 border-t">
                    <h2 className="text-2xl font-bold mb-6">
                      Perguntas Frequentes sobre Concursos Públicos
                    </h2>
                    <div className="space-y-4">
                      <details className="bg-muted/50 p-4 rounded-lg">
                        <summary className="font-medium cursor-pointer">
                          Como saber se um concurso é confiável?
                        </summary>
                        <p className="mt-2 text-muted-foreground">
                          Verifique sempre se o edital foi publicado no Diário Oficial da União, Estado ou Município. 
                          Em nosso site, todos os editais são verificados e possuem link oficial.
                        </p>
                      </details>
                      <details className="bg-muted/50 p-4 rounded-lg">
                        <summary className="font-medium cursor-pointer">
                          Posso me inscrever em mais de um concurso?
                        </summary>
                        <p className="mt-2 text-muted-foreground">
                          Sim, desde que as datas das provas não coincidam. Recomendamos focar em concursos 
                          com conteúdos programáticos similares para otimizar seus estudos.
                        </p>
                      </details>
                      <details className="bg-muted/50 p-4 rounded-lg">
                        <summary className="font-medium cursor-pointer">
                          Como se preparar para concursos públicos?
                        </summary>
                        <p className="mt-2 text-muted-foreground">
                          Utilize nossas questões oficiais, flashcards e plano de estudos personalizado. 
                          Comece pelo edital, identifique os temas mais cobrados e pratique com questões 
                          anteriores do mesmo órgão.
                        </p>
                      </details>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </>
  );
};

export default ConcursosPage;