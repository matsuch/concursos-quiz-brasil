/**
 * Concursos: instantâneo gerado no build, não consulta ao banco.
 *
 * Por quê
 * -------
 * A listagem é dado público, somente leitura e conhecido em tempo de build — a
 * coleta semanal é que a produz. Servi-la do Postgres cobrava três preços sem
 * devolver nada:
 *
 *   1. O gerador de sitemap e o pré-renderizador precisariam de credencial de
 *      banco dentro do build para saber quais URLs existem.
 *   2. O banco e o arquivo do seed podiam divergir (e divergiam: 140 linhas
 *      aplicadas contra 530 coletadas), fazendo o sitemap anunciar páginas que
 *      o usuário abriria vazias.
 *   3. O Neon suspende o compute após 5 min ocioso. O primeiro visitante depois
 *      de uma pausa pagava o tempo de religar, justamente na página de entrada.
 *
 * O arquivo é servido como asset estático e cacheado pela CDN. A atualização
 * acontece pelo commit semanal do workflow de coleta, que dispara novo deploy.
 *
 * A tabela public.concursos continua existindo e sendo preenchida pelo
 * workflow; ela deixa de ser lida pelo site.
 */

export interface Concurso {
  slug: string;
  titulo: string;
  orgao: string;
  local: string;
  nivel: string;
  vagas: number;
  salario: number | null;
  salario_ate: boolean;
  inscricoes_ate: string;
  status: 'destaque' | 'breve' | 'aberto';
  url_edital: string;
}

interface Arquivo {
  gerado_em: string;
  fonte: string;
  total: number;
  concursos: Concurso[];
}

export const CAMINHO_DADOS = '/dados/concursos.json';

// Uma requisição por sessão, compartilhada entre as páginas que precisam.
let cache: Promise<Arquivo> | null = null;

export function carregarConcursos(): Promise<Arquivo> {
  if (!cache) {
    cache = fetch(CAMINHO_DADOS)
      .then(r => {
        if (!r.ok) throw new Error(`Falha ao carregar concursos: HTTP ${r.status}`);
        return r.json() as Promise<Arquivo>;
      })
      .catch(e => {
        // Não deixa um erro de rede envenenar o cache para sempre.
        cache = null;
        throw e;
      });
  }
  return cache;
}

/** Ordena como a home e a listagem esperam: prazo mais próximo primeiro e,
 *  em empate, maior salário. Mesma regra do gerador do seed. */
export function ordenarPorUrgencia(lista: Concurso[]): Concurso[] {
  return [...lista].sort((a, b) =>
    a.inscricoes_ate.localeCompare(b.inscricoes_ate) || (b.salario ?? 0) - (a.salario ?? 0),
  );
}
