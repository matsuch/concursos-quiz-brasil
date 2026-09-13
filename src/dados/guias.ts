/**
 * Guias: instantaneo gerado no build a partir de content/guias/*.md.
 *
 * Mesma decisao de src/dados/concursos.ts, pelas mesmas razoes: conteudo so
 * de leitura e conhecido em tempo de build nao precisa de banco. Vindo do
 * Postgres, o gerador de sitemap e o pre-renderizador precisariam de
 * credencial dentro do build para saber que URLs existem, e o primeiro
 * visitante depois de uma pausa do Neon pagaria o religamento numa pagina
 * que nao muda entre deploys.
 *
 * Quem produz estes arquivos: scripts/gerar-guias.mjs.
 *
 * Dois arquivos, de proposito:
 *   /dados/guias.json          indice, so metadado — a listagem baixa este
 *   /dados/guias/<slug>.json   guia completo — so a pagina aberta baixa
 *
 * Baixar o texto de todos os guias para desenhar cartao seria desperdicio que
 * cresce a cada guia publicado.
 */

export interface Pergunta {
  pergunta: string;
  resposta: string;
}

export interface Fonte {
  nome: string;
  url: string;
}

/** Metadado de um guia: o que a listagem precisa e o que vira meta tag. */
export interface GuiaResumo {
  slug: string;
  titulo: string;
  resumo: string;
  /** Resposta autossuficiente ao titulo. E o trecho que buscador destaca e
   *  que modelo de linguagem cita, entao aparece visivel no topo da pagina. */
  resposta_curta: string;
  categoria: string;
  palavra_chave?: string;
  /** Entidades do dominio que o guia explica (banca, edital, etapa). Viram
   *  "about" no JSON-LD. */
  entidades?: string[];
  publicado_em: string;
  atualizado_em: string;
  autor: string;
  tempo_leitura: number;
  palavras: number;
  perguntas: Pergunta[];
  fontes: Fonte[];
  relacionados: string[];
}

/** Guia completo: o resumo mais o corpo ja convertido no build. */
export interface Guia extends GuiaResumo {
  /** HTML pronto, gerado uma unica vez no build. A pagina React e o HTML
   *  estatico consomem esta mesma string — e o que impede os dois de
   *  contarem historias diferentes. */
  html: string;
  markdown: string;
}

export interface IndiceGuias {
  gerado_em: string;
  total: number;
  /** Ordenado do mais recentemente atualizado para o mais antigo. */
  guias: GuiaResumo[];
}

export const CAMINHO_INDICE = '/dados/guias.json';
export const caminhoGuia = (slug: string) => `/dados/guias/${slug}.json`;

/** Uma requisicao por sessao, compartilhada entre listagem e paginas. */
let cacheIndice: Promise<IndiceGuias> | null = null;
const cacheGuia = new Map<string, Promise<Guia>>();

export function carregarIndiceGuias(): Promise<IndiceGuias> {
  if (!cacheIndice) {
    cacheIndice = fetch(CAMINHO_INDICE)
      .then(r => {
        if (!r.ok) throw new Error(`Falha ao carregar guias: HTTP ${r.status}`);
        return r.json() as Promise<IndiceGuias>;
      })
      .catch(e => {
        // Nao deixa um erro de rede envenenar o cache para sempre.
        cacheIndice = null;
        throw e;
      });
  }
  return cacheIndice;
}

export function carregarGuia(slug: string): Promise<Guia> {
  const emCache = cacheGuia.get(slug);
  if (emCache) return emCache;

  const promessa = fetch(caminhoGuia(slug))
    .then(r => {
      // 404 aqui e o caso normal de slug inexistente, nao falha de rede: a
      // pagina precisa distinguir para mostrar "guia nao encontrado" em vez
      // de "erro ao carregar".
      if (r.status === 404) throw new GuiaAusente(slug);
      if (!r.ok) throw new Error(`Falha ao carregar guia: HTTP ${r.status}`);
      return r.json() as Promise<Guia>;
    })
    .catch(e => {
      cacheGuia.delete(slug);
      throw e;
    });

  cacheGuia.set(slug, promessa);
  return promessa;
}

export class GuiaAusente extends Error {
  constructor(slug: string) {
    super(`Guia nao encontrado: ${slug}`);
    this.name = 'GuiaAusente';
  }
}

/** Categorias na ordem em que aparecem no indice, sem repetir. Usada nos
 *  filtros da listagem — nao ha lista fixa de categorias em lugar nenhum,
 *  ela emerge do que foi publicado. */
export function categorias(guias: GuiaResumo[]): string[] {
  return [...new Set(guias.map(g => g.categoria))].sort((a, b) => a.localeCompare(b, 'pt-BR'));
}

export function formatarData(iso: string): string {
  const [a, m, d] = String(iso).split('-');
  return `${d}/${m}/${a}`;
}
