import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Calendar, MapPin, Users, ExternalLink } from "lucide-react";

const normalizeUrl = (input: unknown): string | null => {
  if (!input) return null;

  if (Array.isArray(input)) {
    return normalizeUrl(input[0]);
  }

  if (typeof input === "object") {
    return normalizeUrl((input as any).value);
  }

  if (typeof input !== "string") return null;

  const cleaned = input
    .trim()
    .replace(/^"+|"+$/g, "")
    .replace(/[\u0000-\u001F\u007F]/g, "");

  if (!cleaned.startsWith("http")) return null;

  try {
    return new URL(cleaned).href;
  } catch {
    return null;
  }
};

interface ConcursoCardProps {
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  status: "aberto" | "breve" | "encerrado";
  url_edital?: string | null;
}

const ConcursoCard = ({
  titulo,
  orgao,
  vagas,
  local,
  inscricoesAte,
  nivel,
  status,
  url_edital
}: ConcursoCardProps) => {
  const statusColors = {
    aberto: "bg-success/10 text-success border-success/20",
    breve: "bg-accent/10 text-accent-foreground border-accent/20",
    encerrado: "bg-muted text-muted-foreground border-border"
  };

  const statusLabels = {
    aberto: "Inscrições Abertas",
    breve: "Em Breve",
    encerrado: "Encerrado"
  };

  const normalizedUrl = normalizeUrl(url_edital);
  const isDisabled = status === "encerrado" || !normalizedUrl;

  return (
    <Card className="p-6 hover:shadow-lg transition-all duration-300 border-border hover:border-primary/20 relative">
      <div className="flex justify-between items-start mb-4">
        <div className="flex-1">
          <h3 className="text-lg font-semibold text-foreground mb-1">
            {titulo}
          </h3>
          <p className="text-sm text-muted-foreground">
            {orgao}
          </p>
        </div>
        <Badge className={statusColors[status]}>
          {statusLabels[status]}
        </Badge>
      </div>

      <div className="space-y-2 mb-4">
        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <Users className="w-4 h-4" />
          <span>{vagas} vagas</span>
          <span className="text-xs px-2 py-0.5 rounded-full bg-muted">
            {nivel}
          </span>
        </div>

        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <MapPin className="w-4 h-4" />
          <span>{local}</span>
        </div>

        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <Calendar className="w-4 h-4" />
          <span>Inscrições até {inscricoesAte}</span>
        </div>
      </div>

      {isDisabled ? (
        <div className="w-full flex items-center justify-center gap-2 px-4 py-2 border rounded-md text-sm text-muted-foreground bg-muted cursor-not-allowed">
          <ExternalLink className="w-4 h-4" />
          Ver Edital
        </div>
      ) : (
        <a
          href={normalizedUrl!}
          target="_blank"
          rel="noopener noreferrer"
          onClick={(e) => {
            e.stopPropagation(); // 🔥 ESSENCIAL no Lovable
          }}
          className="
            w-full flex items-center justify-center gap-2 px-4 py-2
            border rounded-md text-sm font-medium
            hover:bg-accent transition
            pointer-events-auto
            relative z-10
          "
        >
          <ExternalLink className="w-4 h-4" />
          Ver Edital
        </a>
      )}

    </Card>
  );
};

export default ConcursoCard;
