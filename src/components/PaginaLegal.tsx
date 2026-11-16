import { ReactNode } from "react";
import { Breadcrumbs } from "@/components/Breadcrumbs";
import { SeoHead } from "@/components/SeoHead";

interface PaginaLegalProps {
  titulo: string;
  descricao: string;
  caminho: string;
  /** Data da última revisão do texto, já formatada (dd/mm/aaaa). */
  atualizadoEm: string;
  children: ReactNode;
}

// Mesma tipografia do corpo dos guias (src/pages/Guia.tsx), para texto longo.
const CORPO =
  "text-[15px] leading-relaxed text-muted-foreground " +
  "[&>h2]:text-xl [&>h2]:font-semibold [&>h2]:text-foreground [&>h2]:mt-10 [&>h2]:mb-3 " +
  "[&>p]:mb-4 [&_a]:text-primary [&_a]:underline " +
  "[&>ul]:mb-4 [&>ul]:list-disc [&>ul]:pl-5 [&>ul>li]:mb-1 " +
  "[&_strong]:text-foreground";

/** Moldura das páginas de texto institucional (privacidade, termos). */
export const PaginaLegal = ({ titulo, descricao, caminho, atualizadoEm, children }: PaginaLegalProps) => (
  <>
    <SeoHead title={`${titulo} | Passar Concursos`} description={descricao} canonical={caminho} />
    <div className="container mx-auto px-4 py-8 max-w-3xl">
      <Breadcrumbs items={[{ label: "Início", href: "/" }, { label: titulo }]} />
      <header className="mt-6 mb-8">
        <h1 className="text-2xl sm:text-3xl font-bold leading-tight mb-2">{titulo}</h1>
        <p className="text-sm text-muted-foreground">Última atualização: {atualizadoEm}</p>
      </header>
      <div className={CORPO}>{children}</div>
    </div>
  </>
);
