import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Calendar, MapPin, Users, ExternalLink } from "lucide-react";

interface ConcursoCardProps {
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  status: "aberto" | "breve" | "encerrado";
  urlEdital?: string | null;
}

const ConcursoCard = ({
  titulo,
  orgao,
  vagas,
  local,
  inscricoesAte,
  nivel,
  status,
  urlEdital,
}: ConcursoCardProps) => {
  const statusConfig = {
    aberto: {
      label: "Inscrições Abertas",
      className: "bg-success/10 text-success border-success/20",
    },
    breve: {
      label: "Em Breve",
      className: "bg-accent/10 text-accent-foreground border-accent/20",
    },
    encerrado: {
      label: "Encerrado",
      className: "bg-muted text-muted-foreground border-border",
    },
  };

  const config = statusConfig[status];
  const isDisabled = status === "encerrado" || !urlEdital;

  return (
    <Card className="p-6 hover:shadow-lg transition-all duration-300 border-border hover:border-primary/20 relative">
      <div className="flex flex-col items-start mb-4 gap-3">
        <Badge variant="outline" className={config.className}>
          {config.label}
        </Badge>

        <div className="min-w-0">
          <h3 className="text-lg font-semibold leading-tight">
            {titulo}
          </h3>
          <p className="text-sm text-muted-foreground mt-1">
            {orgao}
          </p>
        </div>
      </div>

      <div className="space-y-2 mb-4">
        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <Users className="w-4 h-4 flex-shrink-0" />
          <span>
            {vagas} vaga{vagas !== 1 ? "s" : ""}
          </span>
          <span className="text-xs px-2 py-0.5 rounded-full bg-muted ml-auto">
            {nivel}
          </span>
        </div>

        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <MapPin className="w-4 h-4 flex-shrink-0" />
          <span className="truncate">{local}</span>
        </div>

        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <Calendar className="w-4 h-4 flex-shrink-0" />
          <span>Inscrições até {inscricoesAte}</span>
        </div>
      </div>

      {/* Botão Ver Edital */}
      {isDisabled ? (
        <div className="flex w-full items-center justify-center gap-2 px-4 py-2 border rounded-md text-sm text-muted-foreground bg-muted cursor-not-allowed">
          <ExternalLink className="w-4 h-4" />
          Ver Edital
        </div>
      ) : (
        <button
          type="button"
          onClick={(e) => {
            e.stopPropagation();
            e.preventDefault();
            window.open(urlEdital!, "_blank", "noopener,noreferrer");
          }}
          className="flex w-full items-center justify-center gap-2 px-4 py-2 border rounded-md text-sm font-medium hover:bg-accent hover:text-accent-foreground transition-colors cursor-pointer"
          aria-label="Abrir edital em nova aba"
        >
          <ExternalLink className="w-4 h-4" />
          Ver Edital
        </button>
      )}
    </Card>
  );
};

export default ConcursoCard;
