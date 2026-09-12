#!/usr/bin/env node
/**
 * Pré-renderiza as páginas de concurso em HTML estático.
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
 * O React assume depois: createRoot substitui o conteúdo do #root ao montar.
 * Não é hydrate, então divergência entre este HTML e o componente não gera
 * aviso — mas os dois leem o MESMO JSON, então dizem a mesma coisa. Se algum
 * dia divergirem a ponto de enganar, isso vira cloaking: manter o template
 * factual e alinhado com a página é requisito, não detalhe.
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
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
function montar({ titulo, descricao, url, corpo, jsonLd }) {
  let html = modelo;

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
    datePosted: c.inscricoes_ate,
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

console.log(`[prerender] ${n} páginas de concurso + a listagem -> ${DIST}/concursos/`);
