import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Calendar, Banknote, Users, ExternalLink, MapPin } from "lucide-react";

interface ConcursoCardProps {
  titulo: string;
  orgao: string;
  vagas: number;
  local: string;
  inscricoesAte: string;
  nivel: string;
  salario: number | null;
  status: "destaque" | "breve" | "aberto";
  urlEdital?: string | null;
  id?: string; // Adicionado para schema markup
}

const ConcursoCard = ({
  titulo,
  orgao,
  vagas,
  local,
  inscricoesAte,
  nivel,
  salario,
  status,
  urlEdital,
  id,
}: ConcursoCardProps) => {
  const statusConfig = {
    destaque: {
      label: "Destaque",
      className: "bg-success/10 text-success border-success/20",
      schemaType: "JobPosting" as const,
    },
    aberto: {
      label: "Abertos",
      className: "bg-accent/10 text-accent-foreground border-accent/20",
      schemaType: "JobPosting" as const,
    },
    breve: {
      label: "Em Breve",
      className: "bg-muted text-muted-foreground border-border",
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
          "minValue": salario * 0.9, // Estimativa conservadora
          "maxValue": salario * 1.1  // Estimativa liberal
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
        className="p-6 hover:shadow-lg transition-all duration-300 border-border hover:border-primary/20 relative h-full flex flex-col"
        itemScope
        itemType="https://schema.org/JobPosting"
        itemID={id ? `concurso-${id}` : undefined}
        role="article"
        aria-label={`Concurso público: ${titulo} - ${orgao}`}
      >
        <div className="flex flex-col items-start mb-4 gap-3 flex-grow">
          <Badge 
            variant="outline" 
            className={config.className}
            itemProp="employmentType"
          >
            {config.label}
          </Badge>

          <div className="min-w-0 flex-grow">
            <h3 
              className="text-lg font-semibold leading-tight mb-2"
              itemProp="title"
            >
              {titulo}
            </h3>
            
            <div 
              className="flex items-center gap-1 text-sm text-muted-foreground mb-2"
              itemProp="hiringOrganization"
              itemScope
              itemType="https://schema.org/Organization"
            >
              <span itemProp="name">{orgao}</span>
            </div>

            <div className="flex items-center gap-1 text-sm text-muted-foreground">
              <MapPin className="w-4 h-4 flex-shrink-0" />
              <span itemProp="jobLocation" itemScope itemType="https://schema.org/Place">
                <span itemProp="address" itemScope itemType="https://schema.org/PostalAddress">
                  <span itemProp="addressLocality">{locationInfo.city}</span>
                  {locationInfo.state && (
                    <>, <span itemProp="addressRegion">{locationInfo.state}</span></>
                  )}
                  <meta itemProp="addressCountry" content="BR" />
                </span>
              </span>
            </div>
          </div>
        </div>

        <div className="space-y-3 mb-4">
          <div 
            className="flex items-center gap-2 text-sm font-medium text-emerald-600"
            itemProp="baseSalary"
            itemScope
            itemType="https://schema.org/MonetaryAmount"
          >
            <Banknote className="w-5 h-5 flex-shrink-0" />
            <span className="truncate font-bold">
              {salario ? (
                <>
                  <meta itemProp="currency" content="BRL" />
                  <span itemProp="value">
                    R$ {salario.toLocaleString('pt-BR')}
                  </span>
                  <meta itemProp="unitText" content="MONTH" />
                </>
              ) : (
                'Salário não informado'
              )}
            </span>
          </div>

          <div className="flex items-center gap-2 text-sm text-muted-foreground">
            <Users className="w-4 h-4 flex-shrink-0" />
            <span itemProp="totalJobOpenings">
              {vagas} vaga{vagas !== 1 ? "s" : ""}
            </span>
            <span 
              className="text-xs px-2 py-0.5 rounded-full bg-muted ml-auto"
              itemProp="qualifications"
            >
              {nivel}
            </span>
          </div>

          <div 
            className="flex items-center gap-2 text-sm text-muted-foreground"
            itemProp="validThrough"
            content={formatDateForSchema(inscricoesAte)}
          >
            <Calendar className="w-4 h-4 flex-shrink-0" />
            <span>
              Inscrições até <time dateTime={formatDateForSchema(inscricoesAte)}>{inscricoesAte}</time>
            </span>
          </div>
        </div>

        {/* Botão Ver Edital */}
        <div className="mt-auto">
          {isDisabled ? (
            <div 
              className="flex w-full items-center justify-center gap-2 px-4 py-2 border rounded-md text-sm text-muted-foreground bg-muted cursor-not-allowed"
              aria-label="Edital não disponível no momento"
            >
              <ExternalLink className="w-4 h-4" />
              Ver Edital
            </div>
          ) : (
            <a
              href={urlEdital!}
              target="_blank"
              rel="noopener noreferrer"
              className="flex w-full items-center justify-center gap-2 px-4 py-2 border rounded-md text-sm font-medium hover:bg-accent hover:text-accent-foreground transition-colors cursor-pointer"
              aria-label={`Abrir edital do concurso ${titulo} em nova aba`}
              itemProp="url"
            >
              <ExternalLink className="w-4 h-4" />
              Ver Edital Completo
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