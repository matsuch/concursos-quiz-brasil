// components/quiz/QuizFilters.tsx
import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue} from "@/components/ui/select";
import { RotateCcw, Loader2 } from "lucide-react";
import { db } from "@/integrations/neon/client";
import { toast } from "sonner";

interface QuizFiltersProps {
  filters: {
    subject: string;
    difficulty: string;
    is_official: string;
    assunto: string;
    banca: string;
    prova: string;
  };
  onFilterChange: (filters: any) => void;
  loading: boolean;
}

export function QuizFilters({ filters, onFilterChange, loading }: QuizFiltersProps) {
  const [loadingFilters, setLoadingFilters] = useState(true);
  const [availableOptions, setAvailableOptions] = useState({
    subjects: [] as string[],
    difficulties: [] as string[],
    is_official: [] as boolean[],
    assuntos: [] as string[],
    bancas: [] as string[],
    provas: [] as string[],
  });

  // Carrega as opções de filtros baseado nos filtros já aplicados
  useEffect(() => {
    fetchAvailableOptions();
  }, [filters]);

  const fetchAvailableOptions = async () => {
    try {
      setLoadingFilters(true);

      // Construir query com os filtros já aplicados. Estas seis colunas estão
      // no GRANT do role `anonymous`, então a lista de opções é a mesma para
      // quem está logado e para quem não está.
      let query = db.from("questions").select("subject, difficulty, is_official, assunto, banca, prova");

      // Aplicar filtros existentes para filtrar as opções disponíveis
      if (filters.subject) {
        query = query.eq("subject", filters.subject);
      }
      if (filters.difficulty) {
        query = query.eq("difficulty", filters.difficulty);
      }
      if (filters.is_official) {
        query = query.eq("is_official", filters.is_official === "true");
      }
      if (filters.assunto) {
        query = query.eq("assunto", filters.assunto);
      }
      if (filters.banca) {
        query = query.eq("banca", filters.banca);
      }
      if (filters.prova) {
        query = query.eq("prova", filters.prova);
      }

      const { data, error } = await query;

      if (error) throw error;

      if (data) {
        // Extrair valores únicos de cada coluna
        const uniqueSubjects = [...new Set(data.map(q => q.subject).filter(Boolean))].sort();
        const uniqueDifficulties = [...new Set(data.map(q => q.difficulty).filter(Boolean))].sort();
        const uniqueIsOfficial = [...new Set(data.map(q => q.is_official).filter(v => v !== null))];
        const uniqueAssuntos = [...new Set(data.map(q => q.assunto).filter(Boolean))].sort();
        const uniqueBancas = [...new Set(data.map(q => q.banca).filter(Boolean))].sort();
        const uniqueProvas = [...new Set(data.map(q => q.prova).filter(Boolean))].sort();

        setAvailableOptions({
          subjects: uniqueSubjects as string[],
          difficulties: uniqueDifficulties as string[],
          is_official: uniqueIsOfficial as boolean[],
          assuntos: uniqueAssuntos as string[],
          bancas: uniqueBancas as string[],
          provas: uniqueProvas as string[],
        });
      }
    } catch (error) {
      console.error("Error fetching filter options:", error);
      toast.error("Erro ao carregar opções de filtros");
    } finally {
      setLoadingFilters(false);
    }
  };

  const handleFilterChange = (key: string, value: string) => {
    onFilterChange({ ...filters, [key]: value });
  };

  const handleClear = () => {
    onFilterChange({
      subject: "",
      difficulty: "",
      is_official: "",
      assunto: "",
      banca: "",
      prova: "",
    });
  };

  const getDifficultyLabel = (diff: string) => {
    const labels: Record<string, string> = {
      easy: "Fácil",
      medium: "Médio",
      hard: "Difícil",
    };
    return labels[diff] || diff;
  };

  return (
    <div>
      <div className="mb-6">
        <h2 className="text-2xl font-semibold text-foreground mb-2">Questões de Concurso</h2>
        {loadingFilters && (
          <div className="flex items-center gap-2 text-sm text-muted-foreground">
            <Loader2 className="h-4 w-4 animate-spin" />
            Carregando filtros...
          </div>
        )}
      </div>

      <Card className="p-6 space-y-6">
        {/* First Row - Main Filters */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {/* Subject Filter */}
          <Select
            value={filters.subject || "all"}
            onValueChange={(v) => handleFilterChange("subject", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.subjects.length === 0}
          >
            <SelectTrigger>
              <SelectValue placeholder={loadingFilters ? "Carregando..." : "Matéria"} />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas as matérias</SelectItem>
              {availableOptions.subjects.map((subj) => (
                <SelectItem key={subj} value={subj}>
                  {subj}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>

          {/* Difficulty Filter */}
          <Select
            value={filters.difficulty || "all"}
            onValueChange={(v) => handleFilterChange("difficulty", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.difficulties.length === 0}
          >
            <SelectTrigger>
              <SelectValue placeholder="Dificuldade" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas</SelectItem>
              {availableOptions.difficulties.map((diff) => (
                <SelectItem key={diff} value={diff}>
                  {getDifficultyLabel(diff)}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>

          {/* Is Official Filter */}
          <Select
            value={filters.is_official || "all"}
            onValueChange={(v) => handleFilterChange("is_official", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.is_official.length === 0}
          >
            <SelectTrigger>
              <SelectValue placeholder="Tipo de Questão" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas</SelectItem>
              {availableOptions.is_official.includes(true) && (
                <SelectItem value="true">Oficiais</SelectItem>
              )}
              {availableOptions.is_official.includes(false) && (
                <SelectItem value="false">De Usuários</SelectItem>
              )}
            </SelectContent>
          </Select>
        </div>

        {/* Second Row - Additional Filters */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {/* Assunto Filter */}
          <Select
            value={filters.assunto || "all"}
            onValueChange={(v) => handleFilterChange("assunto", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.assuntos.length === 0}
          >
            <SelectTrigger>
              <SelectValue placeholder="Assunto" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todos os assuntos</SelectItem>
              {availableOptions.assuntos.map((ass) => (
                <SelectItem key={ass} value={ass}>
                  {ass}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>

          {/* Banca Filter */}
          <Select
            value={filters.banca || "all"}
            onValueChange={(v) => handleFilterChange("banca", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.bancas.length === 0}
          >
            <SelectTrigger >
              <SelectValue placeholder="Banca" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas as bancas</SelectItem>
              {availableOptions.bancas.map((b) => (
                <SelectItem key={b} value={b}>
                  {b}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>

          {/* Prova Filter */}
          <Select
            value={filters.prova || "all"}
            onValueChange={(v) => handleFilterChange("prova", v === "all" ? "" : v)}
            disabled={loadingFilters || availableOptions.provas.length === 0}
          >
            <SelectTrigger>
              <SelectValue placeholder="Prova" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas as provas</SelectItem>
              {availableOptions.provas.map((p) => (
                <SelectItem key={p} value={p}>
                  {p}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        {/* Filter Actions */}
        <div className="flex items-center justify-between pt-4 border-t">
          <div className="text-sm text-muted-foreground">
            {!loadingFilters && (
              <span>
                {availableOptions.subjects.length > 0 
                  ? `${availableOptions.subjects.length} matéria(s) disponível(is)`
                  : "Nenhum filtro disponível"}
              </span>
            )}
          </div>
          <Button variant="ghost" size="sm" onClick={handleClear} className="gap-2">
            <RotateCcw className="h-4 w-4" />
            Limpar Filtros
          </Button>
        </div>
      </Card>
    </div>
  );
}