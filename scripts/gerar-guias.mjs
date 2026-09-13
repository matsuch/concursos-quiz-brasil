#!/usr/bin/env node
/**
 * Transforma content/guias/*.md nos arquivos que o site e os rastreadores leem.
 *
 * Por que um passo de build, e nao banco
 * -------------------------------------
 * Mesma razao de src/dados/concursos.ts: guia e conteudo editorial, so leitura,
 * e conhecido em tempo de build. Vindo do banco, o pre-renderizador e o gerador
 * de sitemap precisariam de credencial dentro do build para saber que URLs
 * existem — e o Neon suspende o compute, entao o primeiro visitante depois de
 * uma pausa pagaria o religamento numa pagina que nunca muda.
 *
 * Por que o Markdown vira HTML AQUI, e nao no React
 * ------------------------------------------------
 * A pagina precisa existir em dois lugares: no HTML estatico (para GPTBot,
 * ClaudeBot, PerplexityBot e companhia, que nao executam JavaScript) e no
 * componente React. Se cada lado convertesse o Markdown com um renderizador
 * proprio, os dois textos divergiriam com o tempo — e conteudo diferente para
 * robo e para pessoa e cloaking. Convertendo uma vez aqui, os dois consomem a
 * MESMA string de HTML. Divergir deixa de ser possivel.
 *
 * O que sai daqui
 * ---------------
 *   public/dados/guias.json          indice (so metadado) — o que a listagem le
 *   public/dados/guias/<slug>.json   guia completo — o que a pagina de guia le
 *   public/guias/<slug>.md           o Markdown cru, servido como arquivo
 *
 * O ultimo e de proposito: modelo de linguagem lida melhor com o Markdown de
 * origem do que com HTML cheio de <div>. E o mesmo motivo do llms.txt — dar a
 * versao limpa a quem prefere ler assim, em vez de torcer para o extrator
 * acertar.
 *
 * Rascunho (`rascunho: true` no cabecalho) nao sai em lugar nenhum: nem JSON,
 * nem sitemap, nem HTML. E como se o arquivo nao existisse.
 */

import { readFileSync, writeFileSync, mkdirSync, readdirSync, rmSync, existsSync } from 'node:fs';
import { join } from 'node:path';

const ORIGEM = 'content/guias';
const DESTINO_DADOS = 'public/dados/guias';
const DESTINO_MD = 'public/guias';
const INDICE = 'public/dados/guias.json';

// ---------------------------------------------------------------------------
// Cabecalho YAML
// ---------------------------------------------------------------------------
/**
 * Le o bloco entre as duas linhas `---` do topo do arquivo.
 *
 * E um subconjunto de YAML de proposito: `chave: valor`, lista de strings
 * (`- item`) e lista de objetos (`- chave: valor` + continuacao indentada).
 * Nada de ancora, tag ou multilinha. Serve ao formato documentado em
 * content/guias/_MODELO.md e recusa o resto em vez de adivinhar — errar em
 * silencio aqui publicaria metadado torto em pagina indexada.
 */
function lerCabecalho(texto, arquivo) {
  const casou = texto.match(/^---\r?\n([\s\S]*?)\r?\n---\r?\n?([\s\S]*)$/);
  if (!casou) throw new Error(`${arquivo}: falta o cabecalho entre --- no topo.`);

  const [, bruto, corpo] = casou;
  const dados = {};
  const linhas = bruto.split(/\r?\n/);

  for (let i = 0; i < linhas.length; i++) {
    const linha = linhas[i];
    if (!linha.trim() || linha.trim().startsWith('#')) continue;

    const par = linha.match(/^([a-z_]+):\s*(.*)$/);
    if (!par) throw new Error(`${arquivo}: linha ${i + 1} do cabecalho nao e "chave: valor" — "${linha}"`);

    const [, chave, valorBruto] = par;
    const valor = valorBruto.trim();

    // Bloco dobrado: "chave: >" junta as linhas seguintes num paragrafo unico,
    // "chave: |" preserva as quebras. E o que deixa resposta_curta caber em
    // varias linhas no arquivo sem virar varias frases soltas no JSON.
    if (valor === '>' || valor === '|') {
      const partes = [];
      while (i + 1 < linhas.length && /^\s+\S/.test(linhas[i + 1])) partes.push(linhas[++i].trim());
      dados[chave] = partes.join(valor === '>' ? ' ' : '\n');
      continue;
    }

    if (valor !== '') {
      dados[chave] = valorEscalar(valor);
      continue;
    }

    // Valor vazio: o conteudo vem indentado nas linhas seguintes.
    const itens = [];
    let atual = null;
    while (i + 1 < linhas.length && /^\s+\S/.test(linhas[i + 1])) {
      const item = linhas[++i];
      const inicio = item.match(/^\s*-\s*(?:([a-z_]+):\s*)?(.*)$/);
      if (inicio) {
        if (inicio[1]) {                       // "- chave: valor" abre um objeto
          atual = { [inicio[1]]: valorEscalar(inicio[2]) };
          itens.push(atual);
        } else {                               // "- valor" e item simples
          atual = null;
          itens.push(valorEscalar(inicio[2]));
        }
        continue;
      }
      const continuacao = item.match(/^\s+([a-z_]+):\s*(.*)$/);
      if (continuacao && atual) {              // segunda chave do objeto aberto
        atual[continuacao[1]] = valorEscalar(continuacao[2]);
        continue;
      }
      throw new Error(`${arquivo}: linha ${i + 1} do cabecalho nao e item de lista — "${item}"`);
    }
    dados[chave] = itens;
  }

  return { dados, corpo };
}

function valorEscalar(bruto) {
  const v = bruto.trim();
  if (v === 'true') return true;
  if (v === 'false') return false;
  if (/^\[.*\]$/.test(v)) {                    // lista inline: ["a", "b"]
    return v.slice(1, -1).split(',').map(s => valorEscalar(s)).filter(s => s !== '');
  }
  if (/^".*"$/.test(v) || /^'.*'$/.test(v)) return v.slice(1, -1);
  if (/^-?\d+(\.\d+)?$/.test(v)) return Number(v);
  return v;                                    // datas ficam string: ISO ja ordena
}

// ---------------------------------------------------------------------------
// Markdown -> HTML
// ---------------------------------------------------------------------------
const esc = (t) =>
  String(t ?? '')
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;').replace(/'/g, '&#39;');

/** Ancora estavel para cada titulo: e por ela que uma resposta de IA ou um
 *  resultado de busca aponta para o trecho exato, em vez do topo da pagina. */
export const ancora = (texto) =>
  String(texto)
    .normalize('NFD').replace(/[̀-ͯ]/g, '')
    .toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');

/** Trechos de linha: negrito, italico, codigo e link. Roda depois do escape,
 *  entao o que vier do texto ja esta neutralizado. */
function inline(t) {
  return esc(t)
    .replace(/`([^`]+)`/g, '<code>$1</code>')
    .replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>')
    .replace(/(^|[^*])\*([^*]+)\*/g, '$1<em>$2</em>')
    .replace(/\[([^\]]+)\]\(([^)]+)\)/g, (_, texto, url) =>
      /^https?:\/\//.test(url)
        ? `<a href="${url}" rel="noopener noreferrer" target="_blank">${texto}</a>`
        : `<a href="${url}">${texto}</a>`);
}

/**
 * Subconjunto de Markdown: titulo (## e ###), paragrafo, lista, lista
 * numerada, citacao, tabela, regra horizontal e os trechos de `inline`.
 *
 * Pequeno de proposito — cobre o que um guia precisa e nada alem. Se algum dia
 * o conteudo pedir mais (imagem, nota de rodape, bloco de codigo), trocar isto
 * por `marked` e uma linha; ate la, dependencia nova nao se paga.
 *
 * `#` (h1) fica de fora: o h1 da pagina e o titulo do cabecalho, e dois h1
 * confundem tanto leitor de tela quanto extrator de conteudo.
 */
function paraHtml(md, arquivo) {
  const linhas = md.split(/\r?\n/);
  const saida = [];
  let i = 0;

  const fechar = (tag, itens) => saida.push(`<${tag}>\n${itens.map(x => `  <li>${inline(x)}</li>`).join('\n')}\n</${tag}>`);

  while (i < linhas.length) {
    const linha = linhas[i];

    if (!linha.trim()) { i++; continue; }

    if (/^#\s/.test(linha)) {
      throw new Error(`${arquivo}: nao use "# " no corpo — o h1 e o campo "titulo" do cabecalho.`);
    }

    const titulo = linha.match(/^(#{2,3})\s+(.*)$/);
    if (titulo) {
      const nivel = titulo[1].length;
      const texto = titulo[2].trim();
      saida.push(`<h${nivel} id="${ancora(texto)}">${inline(texto)}</h${nivel}>`);
      i++;
      continue;
    }

    if (/^(-{3,}|\*{3,})$/.test(linha.trim())) { saida.push('<hr />'); i++; continue; }

    if (/^\s*[-*]\s+/.test(linha)) {
      const itens = [];
      while (i < linhas.length && /^\s*[-*]\s+/.test(linhas[i])) itens.push(linhas[i++].replace(/^\s*[-*]\s+/, ''));
      fechar('ul', itens);
      continue;
    }

    if (/^\s*\d+\.\s+/.test(linha)) {
      const itens = [];
      while (i < linhas.length && /^\s*\d+\.\s+/.test(linhas[i])) itens.push(linhas[i++].replace(/^\s*\d+\.\s+/, ''));
      fechar('ol', itens);
      continue;
    }

    if (/^>\s?/.test(linha)) {
      const partes = [];
      while (i < linhas.length && /^>\s?/.test(linhas[i])) partes.push(linhas[i++].replace(/^>\s?/, ''));
      saida.push(`<blockquote><p>${inline(partes.join(' '))}</p></blockquote>`);
      continue;
    }

    // Tabela: cabecalho, separador |---|, corpo. Vale o esforco porque
    // comparacao em tabela e o formato que modelo de linguagem cita melhor —
    // ele extrai a linha inteira sem precisar reconstruir a frase.
    if (/^\|/.test(linha) && /^\s*\|[\s:|-]+\|\s*$/.test(linhas[i + 1] ?? '')) {
      const celulas = (l) => l.trim().replace(/^\||\|$/g, '').split('|').map(c => c.trim());
      const cabecalho = celulas(linhas[i]);
      i += 2;
      const corpo = [];
      while (i < linhas.length && /^\|/.test(linhas[i])) corpo.push(celulas(linhas[i++]));
      saida.push(
        '<table>\n<thead><tr>' + cabecalho.map(c => `<th>${inline(c)}</th>`).join('') + '</tr></thead>\n' +
        '<tbody>' + corpo.map(l => `<tr>${l.map(c => `<td>${inline(c)}</td>`).join('')}</tr>`).join('\n') + '</tbody>\n</table>',
      );
      continue;
    }

    const paragrafo = [];
    while (i < linhas.length && linhas[i].trim() && !/^(#{1,3}\s|>|\||\s*[-*]\s|\s*\d+\.\s)/.test(linhas[i])) {
      paragrafo.push(linhas[i++]);
    }
    saida.push(`<p>${inline(paragrafo.join(' '))}</p>`);
  }

  return saida.join('\n');
}

// ---------------------------------------------------------------------------
// Validacao
// ---------------------------------------------------------------------------
const OBRIGATORIOS = ['titulo', 'slug', 'resumo', 'resposta_curta', 'categoria', 'atualizado_em'];

/**
 * O que se checa aqui nao e capricho: cada campo destes vira meta tag, JSON-LD
 * ou URL de pagina indexada. Faltando, o build publica pagina sem description
 * ou com dado estruturado invalido — erro que so aparece semanas depois, no
 * relatorio do buscador.
 */
function validar(g, arquivo) {
  for (const campo of OBRIGATORIOS) {
    if (g[campo] == null || g[campo] === '') throw new Error(`${arquivo}: falta o campo obrigatorio "${campo}".`);
  }
  if (!/^[a-z0-9-]+$/.test(g.slug)) throw new Error(`${arquivo}: slug "${g.slug}" — use so minusculas, numeros e hifen.`);
  for (const campo of ['publicado_em', 'atualizado_em']) {
    if (g[campo] && !/^\d{4}-\d{2}-\d{2}$/.test(String(g[campo]))) {
      throw new Error(`${arquivo}: "${campo}" precisa ser AAAA-MM-DD (vira dateModified no JSON-LD).`);
    }
  }
  // O limite do trecho que o Google mostra fica perto de 160 caracteres; passar
  // disso nao e erro, mas o corte cai no meio da frase.
  if (String(g.resumo).length > 165) console.warn(`[guias] ${arquivo}: resumo com ${String(g.resumo).length} caracteres — o buscador corta perto de 160.`);
}

// ---------------------------------------------------------------------------
// Execucao
// ---------------------------------------------------------------------------
if (!existsSync(ORIGEM)) {
  console.error(`[guias] ${ORIGEM}/ nao existe.`);
  process.exit(1);
}

// Arquivo iniciado por "_" e material de apoio (modelo, instrucoes) e nunca
// publica. E o que permite o repositorio guardar o gabarito do formato sem que
// ele vire pagina.
const arquivos = readdirSync(ORIGEM).filter(n => n.endsWith('.md') && !n.startsWith('_')).sort();

const guias = [];
for (const nome of arquivos) {
  const { dados, corpo } = lerCabecalho(readFileSync(join(ORIGEM, nome), 'utf-8'), nome);
  if (dados.rascunho === true) { console.log(`[guias] ${nome}: rascunho, fora do build.`); continue; }
  validar(dados, nome);

  const palavras = corpo.trim().split(/\s+/).filter(Boolean).length;
  guias.push({
    ...dados,
    publicado_em: dados.publicado_em ?? dados.atualizado_em,
    autor: dados.autor ?? 'Passar Concursos',
    perguntas: dados.perguntas ?? [],
    fontes: dados.fontes ?? [],
    relacionados: dados.relacionados ?? [],
    // Leitura a 200 palavras por minuto. Aparece na pagina porque a pessoa
    // decide por ele se clica — e porque texto visivel e o que o modelo le.
    tempo_leitura: dados.tempo_leitura ?? Math.max(1, Math.round(palavras / 200)),
    palavras,
    html: paraHtml(corpo, nome),
    markdown: corpo.trim(),
    arquivo: nome,
  });
}

const repetido = guias.map(g => g.slug).find((s, i, a) => a.indexOf(s) !== i);
if (repetido) throw new Error(`[guias] slug repetido: "${repetido}" — duas paginas disputariam a mesma URL.`);

// Regerar do zero: guia apagado do content/ tem de sumir do site tambem, senao
// a URL continua servida e o sitemap para de bater com a realidade.
rmSync(DESTINO_DADOS, { recursive: true, force: true });
rmSync(DESTINO_MD, { recursive: true, force: true });
mkdirSync(DESTINO_DADOS, { recursive: true });
mkdirSync(DESTINO_MD, { recursive: true });

for (const g of guias) {
  writeFileSync(join(DESTINO_DADOS, `${g.slug}.json`), JSON.stringify(g, null, 2), 'utf-8');
  writeFileSync(join(DESTINO_MD, `${g.slug}.md`), `${g.markdown}\n`, 'utf-8');
}

// O indice nao carrega html nem markdown: a listagem mostra cartao, e baixar o
// texto de todos os guias para desenhar cartao e desperdicio que so cresce.
const semCorpo = ({ html, markdown, ...resto }) => resto;
writeFileSync(
  INDICE,
  JSON.stringify({
    gerado_em: new Date().toISOString().slice(0, 10),
    total: guias.length,
    guias: guias
      .map(semCorpo)
      .sort((a, b) => String(b.atualizado_em).localeCompare(String(a.atualizado_em))),
  }, null, 2),
  'utf-8',
);

console.log(`[guias] ${guias.length} guia(s) -> ${INDICE}, ${DESTINO_DADOS}/, ${DESTINO_MD}/`);
