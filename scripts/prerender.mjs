#!/usr/bin/env node
/**
 * Pré-renderiza em HTML estático as páginas de concurso e os guias.
 *
 * O problema que isto resolve
 * --------------------------
 * O site é uma SPA: o HTML servido é <div id="root"></div> e todo o conteúdo
 * aparece depois que o JavaScript roda. O Googlebot executa JS (com atraso e
 * orçamento), mas os rastreadores de LLM em geral NÃO executam — GPTBot,
 * OAI-SearchBot, ClaudeBot, PerplexityBot, CCBot. Para eles o site é uma div
 * vazia. Nenhuma meta tag resolve isso: é preciso haver texto no HTML.
 *
 * O mesmo vale para quem monta prévia de link (WhatsApp, Twitter, Slack): sem
 * HTML por rota, compartilhar /concursos/x mostra o cartão da home.
 *
 * Por que sem navegador
 * ---------------------
 * A alternativa usual (react-snap, Puppeteer) baixa um Chromium no build. É
 * pesado, lento e quebra sozinho quando a versão muda. Aqui o conteúdo é
 * tabular e vem de um JSON conhecido em tempo de build, então o HTML sai de um
 * template — determinístico, rápido e sem dependência nova.
 *
 * Nos guias o texto nem é remontado aqui: o HTML do corpo vem pronto de
 * scripts/gerar-guias.mjs, o mesmo que a página React consome.
 *
 * O React assume depois: createRoot substitui o conteúdo do #root ao montar.
 * Não é hydrate, então divergência entre este HTML e o componente não gera
 * aviso — mas os dois leem o MESMO JSON, então dizem a mesma coisa. Se algum
 * dia divergirem a ponto de enganar, isso vira cloaking: manter o template
 * factual e alinhado com a página é requisito, não detalhe.
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync, readdirSync } from 'node:fs';
import { join, dirname } from 'node:path';

const BASE = 'https://passar-concursos.vercel.app';
const DIST = 'dist';

if (!existsSync(DIST)) {
  console.error(`[prerender] ${DIST}/ não existe — rode depois do vite build.`);
  process.exit(1);
}

const modelo = readFileSync(join(DIST, 'index.html'), 'utf-8');
const dados = JSON.parse(readFileSync('public/dados/concursos.json', 'utf-8'));

const esc = (t) =>
  String(t ?? '')
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;').replace(/'/g, '&#39;');

const dataBr = (iso) => { const [a, m, d] = iso.split('-'); return `${d}/${m}/${a}`; };

const vagasTexto = (c) =>
  c.vagas > 0 ? `${c.vagas} vaga${c.vagas !== 1 ? 's' : ''}` : 'Vagas a definir';

/** Uma frase só, usada na description, no og:description e no JSON-LD — e
 *  igual à do componente React, para o HTML estático e a página montada não
 *  contarem histórias diferentes. */
const descrever = (c) =>
  `${c.orgao} — ${vagasTexto(c)} · nível ${c.nivel} · ${salarioTexto(c)} · ` +
  `inscrições até ${dataBr(c.inscricoes_ate)}${c.local !== 'Nacional' ? ` (${c.local})` : ''}.`;

const salarioTexto = (c) =>
  c.salario == null
    ? 'Salário não informado'
    : `${c.salario_ate ? 'até ' : ''}R$ ${c.salario.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}`;

/** Troca o <head> do modelo pelos metadados da página e injeta o corpo. */
function montar({ titulo, descricao, url, corpo, jsonLd, robots }) {
  let html = modelo;

  // Quando a página pede outra diretiva, ela SUBSTITUI a do modelo em vez de
  // acompanhá-la: duas meta robots na mesma página obrigam cada rastreador a
  // desempatar por conta própria. O Google resolve pela mais restritiva, mas
  // é garantia que não vale a pena depender.
  if (robots) {
    html = html.replace(/<meta name="robots"[^>]*>/, `<meta name="robots" content="${esc(robots)}" />`);
  }

  html = html.replace(/<title>[\s\S]*?<\/title>/, `<title>${esc(titulo)}</title>`);
  html = html.replace(
    /<meta name="description"[^>]*>/,
    `<meta name="description" content="${esc(descricao)}" />`,
  );
  // og:title/description/url do modelo são os da home; por rota precisam ser
  // os desta página, ou a prévia de link mente.
  html = html.replace(/<meta property="og:title"[^>]*>/, `<meta property="og:title" content="${esc(titulo)}" />`);
  html = html.replace(/<meta property="og:description"[^>]*>/, `<meta property="og:description" content="${esc(descricao)}" />`);
  html = html.replace(/<meta property="og:url"[^>]*>/, `<meta property="og:url" content="${esc(url)}" />`);
  html = html.replace(/<meta name="twitter:title"[^>]*>/, `<meta name="twitter:title" content="${esc(titulo)}" />`);
  html = html.replace(/<meta name="twitter:description"[^>]*>/, `<meta name="twitter:description" content="${esc(descricao)}" />`);
  html = html.replace(/<meta name="twitter:url"[^>]*>/, `<meta name="twitter:url" content="${esc(url)}" />`);

  const extras =
    `<link rel="canonical" href="${esc(url)}" />\n` +
    jsonLd.map(o => `<script type="application/ld+json">${JSON.stringify(o).replace(/</g, '\\u003c')}</script>`).join('\n');
  html = html.replace('</head>', `${extras}\n</head>`);

  html = html.replace('<div id="root"></div>', `<div id="root">${corpo}</div>`);
  return html;
}

function gravar(caminhoRelativo, html) {
  const destino = join(DIST, caminhoRelativo, 'index.html');
  mkdirSync(dirname(destino), { recursive: true });
  writeFileSync(destino, html, 'utf-8');
}

// --- Páginas de concurso ----------------------------------------------------
let n = 0;
for (const c of dados.concursos) {
  const url = `${BASE}/concursos/${c.slug}`;
  const descricao = descrever(c);

  const corpo = `
<article>
  <nav><a href="/">Início</a> › <a href="/concursos">Concursos</a></nav>
  <h1>${esc(c.titulo)}</h1>
  <p>${esc(c.orgao)}</p>
  <dl>
    <dt>Local</dt><dd>${esc(c.local)}</dd>
    <dt>Vagas</dt><dd>${esc(vagasTexto(c))}</dd>
    <dt>Escolaridade</dt><dd>${esc(c.nivel)}</dd>
    <dt>Remuneração</dt><dd>${esc(salarioTexto(c))}</dd>
    <dt>Inscrições até</dt><dd>${esc(dataBr(c.inscricoes_ate))}</dd>
  </dl>
  <p><a href="${esc(c.url_edital)}" rel="noopener noreferrer">Ver edital na fonte</a></p>
  <section>
    <h2>Sobre estes dados</h2>
    <p>Coletados da listagem pública do PCI Concursos e atualizados semanalmente.${
      c.salario_ate ? ' A remuneração indicada é o teto da faixa do concurso, não o salário de um cargo específico.' : ''
    }${
      c.vagas === 0 ? ' O número de vagas não é informado na fonte — pode ser cadastro de reserva.' : ''
    } A escolaridade indicada é a menor exigida quando o edital abrange mais de um nível. O edital original prevalece sempre.</p>
  </section>
</article>`.trim();

  const jobPosting = {
    '@context': 'https://schema.org',
    '@type': 'JobPosting',
    title: c.titulo,
    description: descricao,
    // datePosted e validThrough iguais diria que o anuncio foi publicado no
    // dia em que expira. A data de coleta e a melhor aproximacao honesta de
    // quando este registro passou a existir aqui.
    datePosted: dados.gerado_em,
    validThrough: c.inscricoes_ate,
    employmentType: 'FULL_TIME',
    hiringOrganization: { '@type': 'Organization', name: c.orgao },
    jobLocation: {
      '@type': 'Place',
      address: {
        '@type': 'PostalAddress',
        ...(c.local === 'Nacional' ? {} : { addressRegion: c.local }),
        addressCountry: 'BR',
      },
    },
    educationRequirements: c.nivel,
    ...(c.vagas > 0 ? { totalJobOpenings: c.vagas } : {}),
    ...(c.salario != null ? {
      baseSalary: {
        '@type': 'MonetaryAmount',
        currency: 'BRL',
        value: {
          '@type': 'QuantitativeValue',
          unitText: 'MONTH',
          [c.salario_ate ? 'maxValue' : 'value']: c.salario,
        },
      },
    } : {}),
  };

  const migalhas = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Início', item: `${BASE}/` },
      { '@type': 'ListItem', position: 2, name: 'Concursos', item: `${BASE}/concursos` },
      { '@type': 'ListItem', position: 3, name: c.titulo, item: url },
    ],
  };

  gravar(`concursos/${c.slug}`, montar({
    titulo: `${c.titulo} | Passar Concursos`,
    descricao, url, corpo, jsonLd: [jobPosting, migalhas],
  }));
  n++;
}

// --- Página de listagem -----------------------------------------------------
// Além de valer por si, é o que dá um caminho de rastreio para as 530: sem ela
// cada página de concurso só seria alcançável pelo sitemap.
const listaCorpo = `
<h1>Concursos públicos com inscrições abertas</h1>
<p>${dados.concursos.length} concursos de todo o Brasil, atualizados em ${dataBr(dados.gerado_em)}.</p>
<ul>
${dados.concursos.map(c => `  <li><a href="/concursos/${esc(c.slug)}">${esc(c.titulo)}</a> — ${esc(c.orgao)}, ${esc(c.local)}, inscrições até ${esc(dataBr(c.inscricoes_ate))}</li>`).join('\n')}
</ul>`.trim();

gravar('concursos', montar({
  titulo: 'Concursos Públicos Abertos - Lista Completa por Estado e Nível | Passar Concursos',
  descricao: `${dados.concursos.length} concursos públicos com inscrições abertas no Brasil. Filtre por estado, órgão, escolaridade e salário. Atualizado semanalmente.`,
  url: `${BASE}/concursos`,
  corpo: listaCorpo,
  jsonLd: [{
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Concursos públicos abertos',
    description: `Lista de ${dados.concursos.length} concursos públicos com inscrições abertas no Brasil.`,
    url: `${BASE}/concursos`,
    inLanguage: 'pt-BR',
  }],
}));

// --- Guias -----------------------------------------------------------------
// Mesma razão das páginas de concurso, e aqui pesa ainda mais: guia É texto, e
// texto que só existe depois do JavaScript não existe para quem não executa
// JavaScript. O HTML do corpo NÃO é remontado aqui — vem pronto de
// scripts/gerar-guias.mjs, o mesmo que a página React consome. É o que impede
// o HTML estático e a página montada de contarem histórias diferentes.
const DIR_GUIAS = 'public/dados/guias';
const guias = existsSync(DIR_GUIAS)
  ? readdirSync(DIR_GUIAS)
      .filter(f => f.endsWith('.json'))
      .map(f => JSON.parse(readFileSync(join(DIR_GUIAS, f), 'utf-8')))
      .sort((a, b) => String(b.atualizado_em).localeCompare(String(a.atualizado_em)))
  : [];

for (const g of guias) {
  const url = `${BASE}/guias/${g.slug}`;

  const artigo = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: g.titulo,
    description: g.resumo,
    abstract: g.resposta_curta,
    datePublished: g.publicado_em,
    dateModified: g.atualizado_em,
    inLanguage: 'pt-BR',
    isAccessibleForFree: true,
    wordCount: g.palavras,
    author: { '@type': 'Organization', name: g.autor, url: BASE },
    publisher: {
      '@type': 'Organization',
      name: 'Passar Concursos',
      url: BASE,
      logo: { '@type': 'ImageObject', url: `${BASE}/logo.png` },
    },
    mainEntityOfPage: { '@type': 'WebPage', '@id': url },
    articleSection: g.categoria,
    ...(g.entidades?.length ? { about: g.entidades.map(nome => ({ '@type': 'Thing', name: nome })) } : {}),
    ...(g.fontes?.length ? { citation: g.fontes.map(f => f.url) } : {}),
  };

  const migalhasGuia = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Início', item: `${BASE}/` },
      { '@type': 'ListItem', position: 2, name: 'Guias', item: `${BASE}/guias` },
      { '@type': 'ListItem', position: 3, name: g.titulo, item: url },
    ],
  };

  const jsonLd = [artigo, migalhasGuia];

  // FAQPage sai do mesmo campo que a seção visível abaixo. Dado estruturado
  // que descreve conteúdo ausente da página é penalizado — e com razão.
  if (g.perguntas?.length) {
    jsonLd.push({
      '@context': 'https://schema.org',
      '@type': 'FAQPage',
      mainEntity: g.perguntas.map(p => ({
        '@type': 'Question',
        name: p.pergunta,
        acceptedAnswer: { '@type': 'Answer', text: p.resposta },
      })),
    });
  }

  // Relacionado que nao existe (guia despublicado, erro de digitacao) sai da
  // lista aqui, e nao la embaixo: assim a secao inteira desaparece junto, em
  // vez de sobrar um titulo com lista vazia.
  const ligados = (g.relacionados ?? [])
    .map(slug => guias.find(x => x.slug === slug))
    .filter(Boolean);

  const corpo = `
<article>
  <nav><a href="/">Início</a> › <a href="/guias">Guias</a></nav>
  <p>${esc(g.categoria)}</p>
  <h1>${esc(g.titulo)}</h1>
  <p>Atualizado em <time datetime="${esc(g.atualizado_em)}">${dataBr(g.atualizado_em)}</time> · ${esc(g.tempo_leitura)} min de leitura · Por ${esc(g.autor)}</p>
  <section>
    <h2>Resposta curta</h2>
    <p>${esc(g.resposta_curta)}</p>
  </section>
  ${g.html}
  ${g.perguntas?.length ? `<section>
    <h2>Perguntas frequentes</h2>
    <dl>
${g.perguntas.map(p => `      <dt>${esc(p.pergunta)}</dt>\n      <dd>${esc(p.resposta)}</dd>`).join('\n')}
    </dl>
  </section>` : ''}
  ${g.fontes?.length ? `<section>
    <h2>Fontes</h2>
    <ul>
${g.fontes.map(f => `      <li><a href="${esc(f.url)}" rel="noopener noreferrer">${esc(f.nome)}</a></li>`).join('\n')}
    </ul>
    <p>Regra de concurso muda por edital. O edital do seu concurso prevalece sobre o que está aqui.</p>
  </section>` : ''}
  ${ligados.length ? `<section>
    <h2>Continue por aqui</h2>
    <ul>
${ligados.map(r => `      <li><a href="/guias/${esc(r.slug)}">${esc(r.titulo)}</a></li>`).join('\n')}
    </ul>
  </section>` : ''}
  <section>
    <h2>Colocar em prática</h2>
    <ul>
      <li><a href="/concursos">Ver concursos com inscrições abertas</a></li>
      <li><a href="/quiz">Treinar com questões por matéria</a></li>
    </ul>
  </section>
</article>`.trim();

  const html = montar({
    titulo: `${g.titulo} | Passar Concursos`,
    descricao: g.resumo, url, corpo, jsonLd,
  })
    // og:type do modelo é "website", que vale para a home e para as listagens.
    // Um guia é artigo, e é isto que a prévia de link e o rastreador leem —
    // a página React já declara "article" pelo Helmet, mas o HTML estático é
    // o que chega a quem não executa JavaScript.
    .replace(/<meta property="og:type"[^>]*>/,
      `<meta property="og:type" content="article" />\n` +
      `    <meta property="article:published_time" content="${esc(g.publicado_em)}" />\n` +
      `    <meta property="article:modified_time" content="${esc(g.atualizado_em)}" />\n` +
      `    <meta property="article:section" content="${esc(g.categoria)}" />`)
    // O Markdown de origem, anunciado no <head>: modelo de linguagem lida
    // melhor com ele do que com HTML. Mesma ideia do llms.txt.
    .replace('</head>', `<link rel="alternate" type="text/markdown" href="${BASE}/guias/${g.slug}.md" />\n</head>`);

  gravar(`guias/${g.slug}`, html);
}

// Listagem de guias.
//
// Sem nenhum guia, a rota continua existindo (o menu aponta para ela), e sem
// este arquivo quem não executa JavaScript receberia o index.html padrão —
// título, descrição e conteúdo da home servidos no endereço /guias, que é
// duplicata. Então gera-se a página mesmo vazia, com "noindex, follow": ela
// diz honestamente que não há o que indexar e ainda deixa seguir os links.
// Ao publicar o primeiro guia ela vira indexável sozinha.
if (guias.length === 0) {
  gravar('guias', montar({
    titulo: 'Guias para concursos públicos | Passar Concursos',
    descricao: 'Ainda não há guias publicados.',
    url: `${BASE}/guias`,
    robots: 'noindex, follow',
    corpo: `
<h1>Guias para concursos públicos</h1>
<p>Ainda não há guias publicados.</p>
<ul>
  <li><a href="/concursos">Ver concursos com inscrições abertas</a></li>
  <li><a href="/quiz">Treinar com questões por matéria</a></li>
</ul>`.trim(),
    jsonLd: [],
  }));
} else {
  const listaGuias = `
<h1>Guias para concursos públicos</h1>
<p>${guias.length} guia${guias.length !== 1 ? 's' : ''} sobre editais, bancas, rotina de estudo e etapas do concurso público.</p>
<ul>
${guias.map(g => `  <li><a href="/guias/${esc(g.slug)}">${esc(g.titulo)}</a> — ${esc(g.resumo)} (${esc(g.categoria)}, atualizado em ${dataBr(g.atualizado_em)})</li>`).join('\n')}
</ul>`.trim();

  gravar('guias', montar({
    titulo: 'Guias para concursos públicos — editais, bancas e rotina de estudo | Passar Concursos',
    descricao: 'Guias diretos sobre editais, bancas, rotina de estudo e etapas do concurso público. Cada guia abre com a resposta curta e mostra quando foi atualizado.',
    url: `${BASE}/guias`,
    corpo: listaGuias,
    jsonLd: [{
      '@context': 'https://schema.org',
      '@type': 'CollectionPage',
      name: 'Guias para concursos públicos',
      description: 'Guias sobre editais, bancas, rotina de estudo e etapas do concurso público.',
      url: `${BASE}/guias`,
      inLanguage: 'pt-BR',
    }, {
      '@context': 'https://schema.org',
      '@type': 'ItemList',
      itemListOrder: 'https://schema.org/ItemListOrderDescending',
      numberOfItems: guias.length,
      itemListElement: guias.map((g, i) => ({
        '@type': 'ListItem',
        position: i + 1,
        url: `${BASE}/guias/${g.slug}`,
        name: g.titulo,
      })),
    }],
  }));
}

console.log(`[prerender] ${n} páginas de concurso + a listagem -> ${DIST}/concursos/`);
console.log(guias.length
  ? `[prerender] ${guias.length} guia(s) + a listagem -> ${DIST}/guias/`
  : `[prerender] nenhum guia publicado — só a listagem, como noindex -> ${DIST}/guias/`);
