import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Search, Filter, MapPin, Calendar, Banknote, Users, ChevronRight, Loader2, Sparkles, AlertCircle, Clock } from "lucide-react";
import ConcursoCard from "@/components/ConcursoCard";
import { SeoHead } from "@/components/SeoHead";
import { db } from "@/integrations/neon/client";
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
  salarioAte?: boolean;
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
      
      const { data: concursosData, error } = await db
        .from("concursos")
        .select("*")
        .order("inscricoes_ate", { ascending: true })
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
          salario: c.salario,
          salarioAte: c.salario_ate ?? false
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
        title="Concursos Públicos Abertos - Lista Completa com Filtros por Estado e Nível"
        description={`Encontre ${filteredConcursos.length} concursos públicos abertos, em destaque e em breve. Filtre por estado, órgão, salário e nível. Vagas atualizadas diariamente.`}
        canonical="/concursos"
        structuredData={generateStructuredData()}
      />

      <Helmet>
        <link rel="preload" as="image" href="https://passar-concursos.vercel.app/og-image.jpg" />
      </Helmet>

      <div className="min-h-screen bg-background">
        {/* Hero Section melhorada */}
        <section className="bg-gradient-to-br from-primary/10 via-primary/5 to-background dark:from-primary/5 dark:via-primary/10 dark:to-gray-900 py-12 md:py-16 border-b border-border">
          <div className="container mx-auto px-4">
            <div className="max-w-6xl mx-auto">
              <nav className="flex items-center gap-2 text-sm text-muted-foreground mb-6" aria-label="Navegação">
                <button 
                  onClick={() => navigate("/")} 
                  className="hover:text-primary transition-colors hover:underline flex items-center gap-1"
                >
                  <ChevronRight className="w-3 h-3 rotate-180" />
                  Home
                </button>
                <ChevronRight className="w-3 h-3 text-muted-foreground/50" />
                <span className="text-foreground font-medium">Concursos Públicos</span>
              </nav>

              <div className="flex flex-col lg:flex-row lg:items-end justify-between gap-6 mb-8">
                <div>
                  <h1 className="text-3xl md:text-4xl lg:text-5xl font-bold mb-4 text-foreground">
                    Concursos Públicos
                    <span className="block text-xl md:text-2xl text-primary mt-2 font-semibold">
                      Encontre a oportunidade ideal para sua carreira
                    </span>
                  </h1>
                  
                  <p className="text-lg text-muted-foreground mb-2 max-w-3xl">
                    Explore nossa lista completa de concursos públicos filtrados por estado, órgão, salário e nível. 
                  </p>
                  <div className="flex items-center gap-3 text-sm text-muted-foreground">
                    <div className="flex items-center gap-1">
                      <Sparkles className="w-4 h-4 text-primary" />
                      <span className="font-semibold text-foreground">{concursos.length} oportunidades</span> disponíveis
                    </div>
                    <span className="text-border">•</span>
                    <div className="flex items-center gap-1">
                      <Calendar className="w-4 h-4 text-primary" />
                      Atualizado em {new Date().toLocaleDateString('pt-BR')}
                    </div>
                  </div>
                </div>
              </div>

              {/* Barra de busca principal */}
              <div className="relative mb-4 group">
                <div className="absolute inset-0 bg-gradient-to-r from-primary/20 to-secondary/20 dark:from-primary/10 dark:to-secondary/10 rounded-xl blur-xl group-hover:blur-2xl transition-all duration-300 opacity-70" />
                <div className="relative">
                  <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-muted-foreground w-5 h-5" />
                  <Input
                    type="search"
                    placeholder="Buscar concursos por título, órgão ou localidade..."
                    className="pl-12 py-6 text-base bg-card/80 backdrop-blur-sm border-primary/20 focus:border-primary focus:ring-2 focus:ring-primary/20"
                    value={filters.search}
                    onChange={(e) => handleFilterChange("search", e.target.value)}
                    aria-label="Buscar concursos públicos"
                  />
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Filtros e Conteúdo */}
        <section className="py-8">
          <div className="container mx-auto px-4">
            <div className="max-w-6xl mx-auto">
              <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
                {/* Sidebar de Filtros melhorada */}
                <div className="lg:col-span-1">
                  <Card className="sticky top-6 border-border shadow-sm hover:shadow-md transition-shadow duration-300">
                    <CardContent className="p-6">
                      <div className="flex items-center justify-between mb-6">
                        <div className="flex items-center gap-2">
                          <div className="p-2 bg-primary/10 rounded-lg">
                            <Filter className="w-5 h-5 text-primary" />
                          </div>
                          <h2 className="text-lg font-semibold">
                            Filtros
                          </h2>
                        </div>
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={clearFilters}
                          className="text-sm text-muted-foreground hover:text-primary"
                        >
                          Limpar tudo
                        </Button>
                      </div>

                      <div className="space-y-6">
                        {/* Filtro por Status */}
                        <div>
                          <h3 className="font-medium mb-3 text-foreground">Status do Concurso</h3>
                          <div className="space-y-2">
                            {[
                              { value: "todos", label: "Todos", count: concursos.length, icon: null },
                              { value: "aberto", label: "Abertos", count: getStatusCount("aberto"), icon: "🔴" },
                              { value: "destaque", label: "Destaque", count: getStatusCount("destaque"), icon: "⭐" },
                              { value: "breve", label: "Em Breve", count: getStatusCount("breve"), icon: "⏳" }
                            ].map((item) => (
                              <button
                                key={item.value}
                                onClick={() => handleFilterChange("status", item.value)}
                                className={`flex items-center justify-between w-full p-3 rounded-lg text-sm transition-all duration-200 ${
                                  filters.status === item.value
                                    ? "bg-primary/10 text-primary border border-primary/20"
                                    : "hover:bg-muted border border-transparent"
                                }`}
                              >
                                <div className="flex items-center gap-2">
                                  {item.icon && <span>{item.icon}</span>}
                                  <span>{item.label}</span>
                                </div>
                                <Badge 
                                  variant="outline" 
                                  className={`text-xs ${
                                    filters.status === item.value 
                                      ? "border-primary/30 bg-primary/5" 
                                      : "bg-muted"
                                  }`}
                                >
                                  {item.count}
                                </Badge>
                              </button>
                            ))}
                          </div>
                        </div>

                        {/* Filtro por Estado */}
                        <div>
                          <h3 className="font-medium mb-3 text-foreground flex items-center gap-2">
                            Estado
                          </h3>
                          <Select
                            value={filters.estado}
                            onValueChange={(value) => handleFilterChange("estado", value)}
                          >
                            <SelectTrigger className="bg-background border-border hover:border-primary/50 transition-colors">
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
                          <h3 className="font-medium mb-3 text-foreground">
                            Órgão
                          </h3>
                          <Select
                            value={filters.orgao}
                            onValueChange={(value) => handleFilterChange("orgao", value)}
                          >
                            <SelectTrigger className="bg-background border-border hover:border-primary/50 transition-colors">
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
                          <h3 className="font-medium mb-3 text-foreground flex items-center gap-2">
                            Salário Mínimo
                          </h3>
                          <Select
                            value={filters.salarioMin}
                            onValueChange={(value) => handleFilterChange("salarioMin", value)}
                          >
                            <SelectTrigger className="bg-background border-border hover:border-primary/50 transition-colors">
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
                          <h3 className="font-medium mb-3 text-foreground">
                            Nível de Escolaridade
                          </h3>
                          <Select
                            value={filters.nivel}
                            onValueChange={(value) => handleFilterChange("nivel", value)}
                          >
                            <SelectTrigger className="bg-background border-border hover:border-primary/50 transition-colors">
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
                </div>

                {/* Lista de Concursos */}
                <div className="lg:col-span-3">
                  <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 mb-6">
                    <div>
                      <h2 className="text-2xl font-bold text-foreground">
                        {filteredConcursos.length} Concursos Encontrados
                      </h2>
                      {filters.search && (
                        <p className="text-muted-foreground mt-1">
                          Resultados para: <span className="font-medium text-primary">"{filters.search}"</span>
                        </p>
                      )}
                    </div>
                    <div className="flex items-center gap-2 px-4 py-2 bg-muted rounded-lg">
                      <Users className="w-4 h-4 text-muted-foreground" />
                      <span className="text-sm text-muted-foreground">
                        <span className="font-semibold text-foreground">{filteredConcursos.length}</span> resultados
                      </span>
                    </div>
                  </div>

                  {/* Estatísticas melhoradas */}
                  <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8">
                    <div className="bg-gradient-to-br from-blue-50 to-blue-100 dark:from-blue-900/20 dark:to-blue-900/10 p-4 rounded-xl border border-blue-200 dark:border-blue-800/30">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-blue-500 animate-pulse" />
                        <div>
                          <p className="text-sm text-muted-foreground">Concursos Abertos</p>
                          <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">{getStatusCount("aberto")}</p>
                        </div>
                      </div>
                      <div className="mt-2 text-xs text-muted-foreground">
                        Inscrições em andamento
                      </div>
                    </div>
                    <div className="bg-gradient-to-br from-emerald-50 to-emerald-100 dark:from-emerald-900/20 dark:to-emerald-900/10 p-4 rounded-xl border border-emerald-200 dark:border-emerald-800/30">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-emerald-500" />
                        <div>
                          <p className="text-sm text-muted-foreground">Em Destaque</p>
                          <p className="text-2xl font-bold text-emerald-600 dark:text-emerald-400">{getStatusCount("destaque")}</p>
                        </div>
                      </div>
                      <div className="mt-2 text-xs text-muted-foreground">
                        Vagas prioritárias
                      </div>
                    </div>
                    <div className="bg-gradient-to-br from-amber-50 to-amber-100 dark:from-amber-900/20 dark:to-amber-900/10 p-4 rounded-xl border border-amber-200 dark:border-amber-800/30">
                      <div className="flex items-center gap-3">
                        <div className="w-3 h-3 rounded-full bg-amber-500" />
                        <div>
                          <p className="text-sm text-muted-foreground">Em Breve</p>
                          <p className="text-2xl font-bold text-amber-600 dark:text-amber-400">{getStatusCount("breve")}</p>
                        </div>
                      </div>
                      <div className="mt-2 text-xs text-muted-foreground">
                        Futuras oportunidades
                      </div>
                    </div>
                  </div>

                  {/* Lista de Concursos */}
                  {filteredConcursos.length === 0 ? (
                    <div className="text-center py-16">
                      <div className="max-w-md mx-auto">
                        <div className="w-20 h-20 mx-auto mb-6 rounded-full bg-gradient-to-r from-primary/10 to-secondary/10 flex items-center justify-center">
                          <Search className="w-10 h-10 text-primary" />
                        </div>
                        <h3 className="text-xl font-semibold mb-2 text-foreground">Nenhum concurso encontrado</h3>
                        <p className="text-muted-foreground mb-6 max-w-sm mx-auto">
                          Tente ajustar os filtros, buscar por outras palavras-chave ou limpar todos os filtros.
                        </p>
                        <Button 
                          onClick={clearFilters}
                          className="bg-gradient-to-r from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 text-white px-8"
                        >
                          Limpar Todos os Filtros
                        </Button>
                      </div>
                    </div>
                  ) : (
                    <>
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                        {filteredConcursos.map((concurso) => (
                          <div 
                            key={concurso.id}
                            className="transform transition-all duration-300 hover:-translate-y-1 hover:shadow-xl"
                          >
                            <ConcursoCard
                              {...concurso}
                              salario={concurso.salario ?? 0}
                              salarioAte={concurso.salarioAte ?? false}
                            />
                          </div>
                        ))}
                      </div>

                      {/* Paginação */}
                      {filteredConcursos.length > 12 && (
                        <div className="flex justify-center mt-12">
                          <Button 
                            variant="outline" 
                            className="gap-2 border-border hover:border-primary hover:bg-primary/5 transition-all duration-300 group"
                          >
                            Carregar mais concursos
                            <ChevronRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
                          </Button>
                        </div>
                      )}
                    </>
                  )}

                  {/* FAQ melhorada para SEO */}
                  <div className="mt-12 pt-8 border-t border-border">
                    <h2 className="text-2xl font-bold mb-6 text-foreground">
                      Perguntas Frequentes sobre Concursos Públicos
                    </h2>
                    <div className="space-y-4">
                      <details className="group bg-card p-6 rounded-xl border border-border hover:border-primary/30 transition-all duration-300">
                        <summary className="font-semibold text-lg mb-2 text-foreground cursor-pointer flex justify-between items-center list-none">
                          <span>Como saber se um concurso é confiável?</span>
                          <svg 
                            className="w-5 h-5 text-muted-foreground group-open:rotate-180 transition-transform duration-300"
                            fill="none" 
                            stroke="currentColor" 
                            viewBox="0 0 24 24"
                          >
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                          </svg>
                        </summary>
                        <div className="pt-4 mt-4 border-t border-border">
                          <p className="text-muted-foreground">
                            Verifique sempre se o edital foi publicado no Diário Oficial da União, Estado ou Município. 
                            Em nosso site, todos os editais são verificados e possuem link oficial. Recomendamos também 
                            confirmar as informações diretamente no site do órgão organizador.
                          </p>
                        </div>
                      </details>
                      
                      <details className="group bg-card p-6 rounded-xl border border-border hover:border-primary/30 transition-all duration-300">
                        <summary className="font-semibold text-lg mb-2 text-foreground cursor-pointer flex justify-between items-center list-none">
                          <span>Posso me inscrever em mais de um concurso?</span>
                          <svg 
                            className="w-5 h-5 text-muted-foreground group-open:rotate-180 transition-transform duration-300"
                            fill="none" 
                            stroke="currentColor" 
                            viewBox="0 0 24 24"
                          >
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                          </svg>
                        </summary>
                        <div className="pt-4 mt-4 border-t border-border">
                          <p className="text-muted-foreground">
                            Sim, desde que as datas das provas não coincidam. Recomendamos focar em concursos 
                            com conteúdos programáticos similares para otimizar seus estudos. Fique atento às 
                            datas de inscrição e às taxas de participação.
                          </p>
                        </div>
                      </details>
                      
                      <details className="group bg-card p-6 rounded-xl border border-border hover:border-primary/30 transition-all duration-300">
                        <summary className="font-semibold text-lg mb-2 text-foreground cursor-pointer flex justify-between items-center list-none">
                          <span>Como se preparar para concursos públicos?</span>
                          <svg 
                            className="w-5 h-5 text-muted-foreground group-open:rotate-180 transition-transform duration-300"
                            fill="none" 
                            stroke="currentColor" 
                            viewBox="0 0 24 24"
                          >
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                          </svg>
                        </summary>
                        <div className="pt-4 mt-4 border-t border-border">
                          <p className="text-muted-foreground">
                            Utilize nossas questões oficiais, flashcards e plano de estudos personalizado. 
                            Comece pelo edital, identifique os temas mais cobrados e pratique com questões 
                            anteriores do mesmo órgão. Mantenha uma rotina constante de estudos e faça revisões 
                            periódicas com nossos flashcards inteligentes.
                          </p>
                        </div>
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