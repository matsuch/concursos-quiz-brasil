#!/usr/bin/env node
/**
 * Gera dist/sitemap.xml no build.
 *
 * O sitemap anterior era um arquivo fixo em public/, com lastmod de fevereiro
 * de 2024 e seis URLs — entre elas /planos, rota que deixou de existir quando o
 * Stripe saiu, e quatro que só respondem para quem está logado. Sitemap que
 * aponta para 404 e para página de login gasta orçamento de rastreio e ensina o
 * buscador a confiar menos no arquivo.
 *
 * Aqui só entra rota que devolve conteúdo real para visitante anônimo. O
 * critério está anotado em cada linha, para a lista não voltar a inchar sem
 * alguém perceber.
 *
 * Roda depois do vite build e escreve direto em dist/, para public/ continuar
 * sendo só o que é estático de verdade.
 */

import { writeFileSync, existsSync, mkdirSync, readFileSync } from 'node:fs';
import { join } from 'node:path';

const BASE = 'https://passar-concursos.vercel.app';
const DIST = 'dist';

// changefreq e priority são dicas fracas (o Google ignora priority há anos),
// mas custam nada e não atrapalham.
const ROTAS = [
  { caminho: '/', changefreq: 'daily', priority: '1.0' },
  // Listagem de concursos: pública, sem login, e a que mais muda — é a coleta
  // semanal que a alimenta.
  { caminho: '/concursos', changefreq: 'daily', priority: '0.9' },
  // As questões aparecem para quem não está logado; o login só é exigido para
  // responder. Então há conteúdo indexável aqui.
  { caminho: '/quiz', changefreq: 'weekly', priority: '0.8' },
];

// Fora do sitemap, de propósito:
//   /anotacoes, /planner, /estudo, /simulado, /minha-conta — redirecionam para
//     login: nada a indexar.
//   /auth — formulário de login, sem conteúdo.
//   /planos — não existe mais.

const hoje = new Date().toISOString().slice(0, 10);

// Uma entrada por concurso. É o grosso do sitemap e o único conteúdo próprio do
// site — a lista sai do mesmo instantâneo que a aplicação lê, então sitemap e
// site nunca discordam sobre o que existe.
const dados = JSON.parse(readFileSync('public/dados/concursos.json', 'utf-8'));
for (const c of dados.concursos) {
  ROTAS.push({
    caminho: `/concursos/${c.slug}`,
    changefreq: 'weekly',
    priority: '0.7',
    lastmod: dados.gerado_em,
  });
}

const xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${ROTAS.map(r => `  <url>
    <loc>${BASE}${r.caminho.replace(/&/g, '&amp;')}</loc>
    <lastmod>${r.lastmod ?? hoje}</lastmod>
    <changefreq>${r.changefreq}</changefreq>
    <priority>${r.priority}</priority>
  </url>`).join('\n')}
</urlset>
`;

if (!existsSync(DIST)) {
  console.error(`[sitemap] ${DIST}/ não existe — rode depois do vite build.`);
  process.exit(1);
}

mkdirSync(DIST, { recursive: true });
writeFileSync(join(DIST, 'sitemap.xml'), xml, 'utf-8');
console.log(`[sitemap] ${ROTAS.length} URLs (${dados.concursos.length} concursos) -> ${DIST}/sitemap.xml`);
