import { Link } from "react-router-dom";
import { CONTATO, NOME_SITE } from "@/config/site";

const SECOES = [
  {
    titulo: "Estudar",
    links: [
      { to: "/concursos", label: "Concursos abertos" },
      { to: "/quiz", label: "Questões" },
      { to: "/guias", label: "Guias" },
    ],
  },
  {
    titulo: "Sobre",
    links: [
      { to: "/privacidade", label: "Política de privacidade" },
      { to: "/termos", label: "Termos de uso" },
    ],
  },
];

/**
 * Rodapé das páginas públicas. É onde ficam os links que toda página precisa
 * oferecer (privacidade, termos, contato) e mais um caminho de rastreio para
 * as seções principais.
 */
const Footer = () => (
  <footer className="border-t border-border bg-card">
    <div className="container mx-auto px-4 py-10">
      <div className="grid gap-8 sm:grid-cols-3">
        <div>
          <p className="font-semibold text-foreground">{NOME_SITE}</p>
          <p className="mt-2 text-sm text-muted-foreground max-w-xs">
            Concursos com inscrições abertas, questões e guias de estudo. Gratuito e sem anúncios.
          </p>
        </div>
        {SECOES.map((secao) => (
          <nav key={secao.titulo} aria-label={secao.titulo}>
            <p className="text-sm font-semibold text-foreground">{secao.titulo}</p>
            <ul className="mt-3 space-y-2 text-sm">
              {secao.links.map((l) => (
                <li key={l.to}>
                  <Link to={l.to} className="text-muted-foreground hover:text-foreground hover:underline">
                    {l.label}
                  </Link>
                </li>
              ))}
              {secao.titulo === "Sobre" && (
                <li>
                  <a
                    href={CONTATO.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-muted-foreground hover:text-foreground hover:underline"
                  >
                    Contato
                  </a>
                </li>
              )}
            </ul>
          </nav>
        ))}
      </div>
      <p className="mt-8 text-xs text-muted-foreground">
        Os dados de concursos são coletados de fonte pública e podem mudar. O edital original prevalece sempre.
      </p>
    </div>
  </footer>
);

export default Footer;
