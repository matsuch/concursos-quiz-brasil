import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { ExternalLink } from "lucide-react";
import { formatarDataBr } from "@/dados/concursos";
import { Link } from "react-router-dom";

interface ConcursoCardProps {
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  salario: number | null;
  salarioAte?: boolean;
  status: "destaque" | "breve" | "aberto";
  urlEdital?: string | null;
  id?: string;
  slug?: string | null;
}

const ConcursoCard = ({
  titulo,
  orgao,
  vagas,
  local,
  inscricoesAte,
  nivel,
  salario,
  salarioAte = false,
  status,
  urlEdital,
  slug,
}: ConcursoCardProps) => {
  const statusConfig = {
    destaque: {
      label: "Destaque",
      className: "bg-accent text-accent-foreground border-transparent",
    },
    aberto: {
      label: "Abertos",
      className: "bg-transparent text-foreground border-border",
    },
    breve: {
      label: "Em Breve",
      className: "bg-muted text-muted-foreground border-transparent",
    },
  };

  const config = statusConfig[status];
  const isDisabled = status === "breve" || !urlEdital;

  // Adicionado: Função para extrair cidade/estado do local
  const getLocationInfo = () => {
    const parts = local.split('/');
    if (parts.length >= 2) {
      return {
        city: parts[1]?.trim() || local,
        state: parts[0]?.trim() || ""
      };
    }
    return { city: local, state: "" };
  };

  const locationInfo = getLocationInfo();

  return (
    <>
      {/* Sem dado estruturado no cartão. JobPosting vale para a página da
          vaga, não para listagens (diretriz do Google), e a página de cada
          concurso já publica o seu, com os dados reais. O que vivia aqui
          inventava faixa salarial (±10%), data de publicação (o momento da
          visita) e endereço da página errado. */}
      <Card
        className="p-5 border-border hover:border-foreground/25 transition-colors relative h-full flex flex-col"
        role="article"
        aria-label={`Concurso público: ${titulo} - ${orgao}`}
      >
        <div className="flex items-center justify-between gap-3 mb-3">
          <Badge
            variant="outline"
            className={config.className}
          >
            {config.label}
          </Badge>
          <span className="text-xs text-muted-foreground truncate">
            {nivel}
          </span>
        </div>

        <h3
          className="text-base font-semibold leading-snug text-foreground"
        >
          {/* Link interno para a pagina do concurso: e o caminho que o
              rastreador segue ate ela, e o que evita pagina orfa. */}
          {slug ? (
            <Link to={`/concursos/${slug}`} className="hover:underline underline-offset-4">
              {titulo}
            </Link>
          ) : (
            titulo
          )}
        </h3>

        <div
          className="mt-1 text-sm text-muted-foreground"
        >
          <span>{orgao}</span>
        </div>

        <dl className="mt-4 grid grid-cols-2 gap-x-4 gap-y-3 text-sm flex-grow content-start">
          <div className="min-w-0">
            <dt className="text-xs text-muted-foreground">Salário</dt>
            <dd
              className="font-semibold text-foreground tabular-nums truncate"
            >
              {salario ? (
                <>
                  {/* A fonte quase sempre publica o teto da faixa do concurso,
                      e não o salário de um cargo. Exibir sem o "até" afirmaria
                      um número que ninguém vai receber. */}
                  <span>
                    {salarioAte ? 'até ' : ''}R$ {salario.toLocaleString('pt-BR')}
                  </span>
                </>
              ) : (
                <span className="font-normal text-muted-foreground">Não informado</span>
              )}
            </dd>
          </div>

          <div className="min-w-0">
            <dt className="text-xs text-muted-foreground">Vagas</dt>
            <dd className="font-medium text-foreground tabular-nums">
              {/* Boa parte dos concursos reais é cadastro de reserva, ou não
                  publica o número no edital. Nesses casos a fonte não informa e
                  vagas chega 0 — "0 vagas" seria afirmar algo falso. */}
              {vagas > 0 ? (
                <span>
                  {vagas} vaga{vagas !== 1 ? "s" : ""}
                </span>
              ) : (
                <span className="font-normal text-muted-foreground">A definir</span>
              )}
            </dd>
          </div>

          <div
            className="min-w-0"
          >
            <dt className="text-xs text-muted-foreground">Inscrições até</dt>
            <dd className="font-medium text-foreground tabular-nums">
              <time dateTime={inscricoesAte}>{formatarDataBr(inscricoesAte)}</time>
            </dd>
          </div>

          <div className="min-w-0">
            <dt className="text-xs text-muted-foreground">Local</dt>
            <dd className="font-medium text-foreground truncate">
              <span>
                <span>
                  <span>{locationInfo.city}</span>
                  {locationInfo.state && (
                    <>, <span>{locationInfo.state}</span></>
                  )}
                </span>
              </span>
            </dd>
          </div>
        </dl>

        <div className="mt-5 pt-4 border-t border-border">
          {isDisabled ? (
            <span
              className="inline-flex items-center gap-2 text-sm text-muted-foreground"
              aria-label="Edital não disponível no momento"
            >
              <ExternalLink className="w-4 h-4" aria-hidden="true" />
              Edital ainda não disponível
            </span>
          ) : (
            <a
              href={urlEdital!}
              target="_blank"
              rel="noopener noreferrer"
              className="inline-flex items-center gap-2 text-sm font-medium text-primary underline underline-offset-4 hover:no-underline"
              aria-label={`Abrir edital do concurso ${titulo} em nova aba`}
            >
              <ExternalLink className="w-4 h-4" aria-hidden="true" />
              Ver edital completo
            </a>
          )}
        </div>

      </Card>
    </>
  );
};

export default ConcursoCard;