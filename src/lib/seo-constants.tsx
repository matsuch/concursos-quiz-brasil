/**
 * Endereço público do site, sem barra no fim.
 *
 * Vem de VITE_SITE_URL para a troca de domínio (e de hospedagem) ser uma
 * variável de ambiente, e não uma busca-e-troca em dezenas de arquivos. Os
 * scripts de build (sitemap, prerender) e o index.html leem a mesma variável.
 */
export const SITE_URL = (
  import.meta.env.VITE_SITE_URL || 'https://passar-concursos.vercel.app'
).replace(/\/+$/, '');
export const SITE_NAME = 'Passar Concursos';
