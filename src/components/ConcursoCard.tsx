import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Calendar, MapPin, Users, ExternalLink } from "lucide-react";

interface ConcursoCardProps {
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  status: "aberto" | "breve" | "encerrado";
  url_edital?: string;
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

  const isDisabled = status === "encerrado" || !url_edital;

  return (
    <Card className="p-6 hover:shadow-lg transition-all duration-300 border-border hover:border-primary/20">
      <div className="flex justify-between items-start mb-4">
        <div className="flex-1">
          <h3 className="text-lg font-semibold text-foreground mb-1">{titulo}</h3>
          <p className="text-sm text-muted-foreground">{orgao}</p>
        </div>
        <Badge className={statusColors[status]}>
          {statusLabels[status]}
        </Badge>
      </div>

      <div className="space-y-2 mb-4">
        <div className="flex items-center gap-2 text-sm text-muted-foreground">
          <Users className="w-4 h-4" />
          <span>{vagas} vagas</span>
          <span className="text-xs px-2 py-0.5 rounded-full bg-muted">{nivel}</span>
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

      <Button
        variant="outline"
        className="w-full"
        disabled={isDisabled}
        onClick={() => {
          if (url_edital) {
            window.open(url_edital, "_blank", "noopener,noreferrer");
          }
        }}
      >
        <ExternalLink className="w-4 h-4 mr-2" />
        Ver Edital
      </Button>
    </Card>
  );
};

export default ConcursoCard;