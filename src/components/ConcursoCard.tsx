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
  id?: string; // Adicionado para schema markup
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
  id,
  slug,
}: ConcursoCardProps) => {
  const statusConfig = {
    destaque: {
      label: "Destaque",
      className: "bg-accent text-accent-foreground border-transparent",
      schemaType: "JobPosting" as const,
    },
    aberto: {
      label: "Abertos",
      className: "bg-transparent text-foreground border-border",
      schemaType: "JobPosting" as const,
    },
    breve: {
      label: "Em Breve",
      className: "bg-muted text-muted-foreground border-transparent",
      schemaType: "Event" as const,
    },
  };

  const config = statusConfig[status];
  const isDisabled = status === "breve" || !urlEdital;

  // Função para formatar data para Schema.org
  const formatDateForSchema = (dateString: string) => {
    if (!dateString) return "";
    try {
      return new Date(dateString).toISOString();
    } catch {
      return "";
    }
  };

  // Adicionado: Schema markup para SEO
  const generateJobPostingSchema = () => {
    const baseUrl = "https://passar-concursos.vercel.app";
    
    // Para concursos em breve, usar Event schema
    if (status === "breve") {
      return {
        "@context": "https://schema.org",
        "@type": "Event",
        "name": `Concurso Público: ${titulo}`,
        "description": `Concurso público ${titulo} do órgão ${orgao} com ${vagas} vagas em ${local}`,
        "startDate": formatDateForSchema(inscricoesAte) || new Date().toISOString(),
        "organizer": {
          "@type": "Organization",
          "name": orgao
        },
        "location": {
          "@type": "Place",
          "name": local
        }
      };
    }

    // Para concursos abertos e em destaque, usar JobPosting schema
    return {
      "@context": "https://schema.org",
      "@type": "JobPosting",
      "title": titulo,
      "description": `Concurso público para ${titulo} no órgão ${orgao}. ${vagas} vagas disponíveis em ${local}. Nível: ${nivel}.`,
      "hiringOrganization": {
        "@type": "Organization",
        "name": orgao,
        "url": baseUrl
      },
      "jobLocation": {
        "@type": "Place",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": local,
          "addressRegion": local.split('/')[0]?.trim() || local,
          "addressCountry": "BR"
        }
      },
      "datePosted": new Date().toISOString(),
      "validThrough": formatDateForSchema(inscricoesAte),
      "employmentType": "FULL_TIME",
      "identifier": {
        "@type": "PropertyValue",
        "name": orgao,
        "value": id || titulo.replace(/\s+/g, '-').toLowerCase()
      },
      "qualifications": `Nível: ${nivel}`,
      "responsibilities": `Exercer atividades conforme edital do concurso público ${titulo}`,
      "baseSalary": salario ? {
        "@type": "MonetaryAmount",
        "currency": "BRL",
        "value": {
          "@type": "QuantitativeValue",
          "value": salario,
          "unitText": "MONTH",
          "minValue": salario * 0.9,
          "maxValue": salario * 1.1
        }
      } : undefined,
      "jobBenefits": "Conforme previsto em edital de concurso público",
      "totalJobOpenings": vagas
    };
  };

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
      {/* Schema Markup para SEO */}
      <script 
        type="application/ld+json"
        dangerouslySetInnerHTML={{
          __html: JSON.stringify(generateJobPostingSchema())
        }}
      />

      <Card
        className="p-5 border-border hover:border-foreground/25 transition-colors relative h-full flex flex-col"
        itemScope
        itemType="https://schema.org/JobPosting"
        itemID={id ? `concurso-${id}` : undefined}
        role="article"
        aria-label={`Concurso público: ${titulo} - ${orgao}`}
      >
        <div className="flex items-center justify-between gap-3 mb-3">
          <Badge
            variant="outline"
            className={config.className}
            itemProp="employmentType"
          >
            {config.label}
          </Badge>
          <span className="text-xs text-muted-foreground truncate" itemProp="qualifications">
            {nivel}
          </span>
        </div>

        <h3
          className="text-base font-semibold leading-snug text-foreground"
          itemProp="title"
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
          itemProp="hiringOrganization"
          itemScope
          itemType="https://schema.org/Organization"
        >
          <span itemProp="name">{orgao}</span>
        </div>

        <dl className="mt-4 grid grid-cols-2 gap-x-4 gap-y-3 text-sm flex-grow content-start">
          <div className="min-w-0">
            <dt className="text-xs text-muted-foreground">Salário</dt>
            <dd
              className="font-semibold text-foreground tabular-nums truncate"
              itemProp="baseSalary"
              itemScope
              itemType="https://schema.org/MonetaryAmount"
            >
              {salario ? (
                <>
                  <meta itemProp="currency" content="BRL" />
                  {/* A fonte quase sempre publica o teto da faixa do concurso,
                      e não o salário de um cargo. Exibir sem o "até" afirmaria
                      um número que ninguém vai receber. */}
                  <span itemProp="value">
                    {salarioAte ? 'até ' : ''}R$ {salario.toLocaleString('pt-BR')}
                  </span>
                  <meta itemProp="unitText" content="MONTH" />
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
                <span itemProp="totalJobOpenings">
                  {vagas} vaga{vagas !== 1 ? "s" : ""}
                </span>
              ) : (
                <span className="font-normal text-muted-foreground">A definir</span>
              )}
            </dd>
          </div>

          <div
            className="min-w-0"
            itemProp="validThrough"
            content={formatDateForSchema(inscricoesAte)}
          >
            <dt className="text-xs text-muted-foreground">Inscrições até</dt>
            <dd className="font-medium text-foreground tabular-nums">
              <time dateTime={inscricoesAte}>{formatarDataBr(inscricoesAte)}</time>
            </dd>
          </div>

          <div className="min-w-0">
            <dt className="text-xs text-muted-foreground">Local</dt>
            <dd className="font-medium text-foreground truncate">
              <span itemProp="jobLocation" itemScope itemType="https://schema.org/Place">
                <span itemProp="address" itemScope itemType="https://schema.org/PostalAddress">
                  <span itemProp="addressLocality">{locationInfo.city}</span>
                  {locationInfo.state && (
                    <>, <span itemProp="addressRegion">{locationInfo.state}</span></>
                  )}
                  <meta itemProp="addressCountry" content="BR" />
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
              itemProp="url"
            >
              <ExternalLink className="w-4 h-4" aria-hidden="true" />
              Ver edital completo
            </a>
          )}
        </div>

        {/* Microdados adicionais */}
        <meta itemProp="datePosted" content={new Date().toISOString()} />
        <meta itemProp="description" content={`Concurso público para ${titulo} no órgão ${orgao} com ${vagas} vagas em ${local}. Nível: ${nivel}.`} />
        <link itemProp="mainEntityOfPage" href={`https://passar-concursos.vercel.app/concurso/${id || titulo.replace(/\s+/g, '-').toLowerCase()}`} />
      </Card>
    </>
  );
};

export default ConcursoCard;