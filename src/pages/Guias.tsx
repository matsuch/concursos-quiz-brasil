import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { Helmet } from 'react-helmet-async';
import { CalendarClock, Clock } from 'lucide-react';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Breadcrumbs } from '@/components/Breadcrumbs';
import { SeoHead } from '@/components/SeoHead';
import { SITE_URL, SITE_NAME } from '@/lib/seo-constants';
import { carregarIndiceGuias, categorias, formatarData, type GuiaResumo } from '@/dados/guias';

/**
 * Listagem dos guias.
 *
 * Vale por si (responde "que assuntos este site cobre?") e e o que da caminho
 * de rastreio para cada guia: sem ela, guia so seria alcancavel pelo sitemap.
 *
 * A categoria selecionada vive na URL (?categoria=), nao em estado local:
 * assim o recorte e compartilhavel e volta no botao de voltar do navegador.
 * Nao se cria pagina propria por categoria enquanto o volume nao justificar —
 * pagina de categoria com dois guias e conteudo raso, e conteudo raso derruba
 * a confianca no site inteiro.
 */

const TITULO = 'Guias para concursos públicos';
const DESCRICAO =
  'Guias diretos sobre editais, bancas, rotina de estudo e etapas do concurso público. ' +
  'Cada guia abre com a resposta curta e mostra quando foi atualizado.';

function Cartao({ guia }: { guia: GuiaResumo }) {
  return (
    <li>
      <Link
        to={`/guias/${guia.slug}`}
        className="flex h-full flex-col rounded-xl border p-5 transition-colors hover:bg-muted/40"
      >
        <Badge variant="outline" className="mb-3 w-fit">{guia.categoria}</Badge>
        <h3 className="font-semibold leading-snug mb-1.5">{guia.titulo}</h3>
        <p className="text-sm text-muted-foreground leading-relaxed flex-1">{guia.resumo}</p>
        <div className="mt-4 flex flex-wrap items-center gap-x-3 gap-y-1 text-xs text-muted-foreground">
          <span className="inline-flex items-center gap-1">
            <CalendarClock className="w-3.5 h-3.5" aria-hidden="true" />
            <time dateTime={guia.atualizado_em}>{formatarData(guia.atualizado_em)}</time>
          </span>
          <span className="inline-flex items-center gap-1">
            <Clock className="w-3.5 h-3.5" aria-hidden="true" />
            {guia.tempo_leitura} min
          </span>
        </div>
      </Link>
    </li>
  );
}

export default function GuiasPage() {
  const [guias, setGuias] = useState<GuiaResumo[]>([]);
  const [estado, setEstado] = useState<'carregando' | 'ok' | 'erro'>('carregando');
  const [params, setParams] = useSearchParams();
  const categoriaAtiva = params.get('categoria') ?? 'todas';

  useEffect(() => {
    let ativo = true;
    carregarIndiceGuias()
      .then(({ guias }) => { if (ativo) { setGuias(guias); setEstado('ok'); } })
      .catch(() => { if (ativo) setEstado('erro'); });
    return () => { ativo = false; };
  }, []);

  const listaCategorias = useMemo(() => categorias(guias), [guias]);
  const visiveis = useMemo(
    () => (categoriaAtiva === 'todas' ? guias : guias.filter(g => g.categoria === categoriaAtiva)),
    [guias, categoriaAtiva],
  );

  const selecionar = (categoria: string) => {
    // Sem parametro quando e "todas": /guias e /guias?categoria=todas seriam
    // duas URLs com o mesmo conteudo.
    if (categoria === 'todas') setParams({}, { replace: true });
    else setParams({ categoria }, { replace: true });
  };

  const dadosEstruturados: Record<string, unknown>[] = [
    {
      '@context': 'https://schema.org',
      '@type': 'CollectionPage',
      name: TITULO,
      description: DESCRICAO,
      url: `${SITE_URL}/guias`,
      inLanguage: 'pt-BR',
      isPartOf: { '@type': 'WebSite', name: SITE_NAME, url: SITE_URL },
    },
    {
      '@context': 'https://schema.org',
      '@type': 'BreadcrumbList',
      itemListElement: [
        { '@type': 'ListItem', position: 1, name: 'Início', item: `${SITE_URL}/` },
        { '@type': 'ListItem', position: 2, name: 'Guias', item: `${SITE_URL}/guias` },
      ],
    },
  ];

  // ItemList so quando ha item: lista estruturada vazia e dado estruturado que
  // nao corresponde a pagina nenhuma.
  if (guias.length) {
    dadosEstruturados.push({
      '@context': 'https://schema.org',
      '@type': 'ItemList',
      itemListOrder: 'https://schema.org/ItemListOrderDescending',
      numberOfItems: guias.length,
      itemListElement: guias.map((g, i) => ({
        '@type': 'ListItem',
        position: i + 1,
        url: `${SITE_URL}/guias/${g.slug}`,
        name: g.titulo,
      })),
    });
  }

  return (
    <>
      <SeoHead
        title={`${TITULO} — editais, bancas e rotina de estudo | ${SITE_NAME}`}
        description={DESCRICAO}
        canonical={`${SITE_URL}/guias`}
        structuredData={dadosEstruturados}
      />
      {/* O filtro e um recorte da mesma lista, nao pagina nova: sem a canonical
          fixa acima e o noindex aqui, cada categoria viraria uma URL concorrendo
          com /guias pelo mesmo conteudo. */}
      {categoriaAtiva !== 'todas' && (
        <Helmet><meta name="robots" content="noindex, follow" /></Helmet>
      )}
      {/* Listagem sem nenhum guia publicado nao deve ser indexada: pagina vazia
          indexada e conteudo raso, e ensina o buscador a confiar menos no site. */}
      {estado === 'ok' && guias.length === 0 && (
        <Helmet><meta name="robots" content="noindex, follow" /></Helmet>
      )}

      <div className="container mx-auto px-4 py-8 max-w-5xl">
        <Breadcrumbs items={[{ label: 'Início', href: '/' }, { label: 'Guias' }]} />

        <header className="mt-6 mb-8 max-w-2xl">
          <h1 className="text-2xl sm:text-3xl font-bold leading-tight mb-3">{TITULO}</h1>
          <p className="text-muted-foreground leading-relaxed">{DESCRICAO}</p>
        </header>

        {listaCategorias.length > 1 && (
          <nav aria-label="Filtrar guias por categoria" className="mb-8 flex flex-wrap gap-2">
            {['todas', ...listaCategorias].map((c) => (
              <Button
                key={c}
                type="button"
                size="sm"
                variant={categoriaAtiva === c ? 'default' : 'outline'}
                aria-pressed={categoriaAtiva === c}
                onClick={() => selecionar(c)}
              >
                {c === 'todas' ? 'Todos os guias' : c}
              </Button>
            ))}
          </nav>
        )}

        {estado === 'carregando' && (
          <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3" role="status" aria-label="Carregando guias">
            {[0, 1, 2].map(i => (
              <li key={i} className="rounded-xl border p-5 animate-pulse space-y-3">
                <div className="h-5 w-24 rounded bg-muted" />
                <div className="h-5 w-4/5 rounded bg-muted" />
                <div className="h-4 w-full rounded bg-muted" />
                <div className="h-4 w-2/3 rounded bg-muted" />
              </li>
            ))}
          </ul>
        )}

        {estado === 'erro' && (
          <div className="rounded-xl border p-8 text-center">
            <h2 className="font-semibold mb-2">Não foi possível carregar os guias</h2>
            <p className="text-sm text-muted-foreground mb-4">Verifique sua conexão e tente novamente.</p>
            <Button variant="outline" onClick={() => window.location.reload()}>Tentar novamente</Button>
          </div>
        )}

        {estado === 'ok' && guias.length === 0 && (
          <div className="rounded-xl border p-8 text-center">
            <h2 className="font-semibold mb-2">Ainda não há guias publicados</h2>
            <p className="text-sm text-muted-foreground mb-4">
              Enquanto isso, veja os concursos com inscrições abertas ou treine com questões por matéria.
            </p>
            <div className="flex flex-wrap gap-3 justify-center">
              <Button asChild variant="outline"><Link to="/concursos">Ver concursos abertos</Link></Button>
              <Button asChild variant="outline"><Link to="/quiz">Treinar com questões</Link></Button>
            </div>
          </div>
        )}

        {estado === 'ok' && guias.length > 0 && visiveis.length === 0 && (
          <div className="rounded-xl border p-8 text-center">
            <h2 className="font-semibold mb-2">Nenhum guia nesta categoria</h2>
            <p className="text-sm text-muted-foreground mb-4">Veja a lista completa ou escolha outra categoria.</p>
            <Button variant="outline" onClick={() => selecionar('todas')}>Ver todos os guias</Button>
          </div>
        )}

        {visiveis.length > 0 && (
          <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {visiveis.map(g => <Cartao key={g.slug} guia={g} />)}
          </ul>
        )}
      </div>
    </>
  );
}
