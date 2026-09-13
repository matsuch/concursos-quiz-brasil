import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { Helmet } from 'react-helmet-async';
import { ArrowLeft, CalendarClock, Clock, ExternalLink, FileText, Notebook } from 'lucide-react';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Breadcrumbs } from '@/components/Breadcrumbs';
import { SeoHead } from '@/components/SeoHead';
import { SITE_URL, SITE_NAME } from '@/lib/seo-constants';
import {
  carregarGuia, carregarIndiceGuias, formatarData, GuiaAusente,
  type Guia as GuiaDados, type GuiaResumo,
} from '@/dados/guias';

/**
 * Pagina de um guia.
 *
 * O HTML do corpo vem pronto de scripts/gerar-guias.mjs. Nao se converte
 * Markdown aqui de proposito: o mesmo guia e servido em HTML estatico para
 * quem nao executa JavaScript (GPTBot, ClaudeBot, PerplexityBot), e dois
 * conversores diferentes acabariam produzindo textos diferentes para robo e
 * para pessoa — que e a definicao de cloaking. Com uma conversao so, os dois
 * leem a mesma string.
 *
 * dangerouslySetInnerHTML e seguro aqui porque o gerador escapa todo o texto
 * de origem antes de montar as tags: nada de HTML do arquivo .md atravessa.
 */

/** O texto do guia. As classes seguem o filho porque o plugin de typography
 *  esta instalado mas nao registrado no tailwind.config — registrar mudaria
 *  o visual de Simulado, Estudo e Anotacoes, que nao fazem parte desta
 *  tarefa. */
const CORPO =
  'text-[15px] leading-relaxed text-muted-foreground ' +
  '[&>h2]:scroll-mt-20 [&>h2]:text-xl [&>h2]:font-semibold [&>h2]:text-foreground [&>h2]:mt-10 [&>h2]:mb-3 ' +
  '[&>h3]:scroll-mt-20 [&>h3]:text-base [&>h3]:font-semibold [&>h3]:text-foreground [&>h3]:mt-6 [&>h3]:mb-2 ' +
  '[&>p]:mb-4 ' +
  '[&>ul]:mb-4 [&>ul]:list-disc [&>ul]:pl-5 [&>ul>li]:mb-1 ' +
  '[&>ol]:mb-4 [&>ol]:list-decimal [&>ol]:pl-5 [&>ol>li]:mb-1 ' +
  '[&>blockquote]:border-l-2 [&>blockquote]:border-border [&>blockquote]:pl-4 [&>blockquote]:italic [&>blockquote]:mb-4 ' +
  '[&>hr]:my-8 [&>hr]:border-border ' +
  '[&_a]:text-primary [&_a]:underline [&_a]:underline-offset-2 ' +
  '[&_strong]:text-foreground [&_strong]:font-semibold ' +
  '[&_code]:rounded [&_code]:bg-muted [&_code]:px-1 [&_code]:py-0.5 [&_code]:text-[13px] ' +
  // Tabela larga rola sozinha; a pagina inteira nunca rola de lado.
  '[&>table]:block [&>table]:overflow-x-auto [&>table]:w-full [&>table]:mb-6 [&>table]:text-sm ' +
  '[&_th]:border [&_th]:border-border [&_th]:bg-muted/50 [&_th]:p-2 [&_th]:text-left [&_th]:text-foreground [&_th]:font-medium ' +
  '[&_td]:border [&_td]:border-border [&_td]:p-2 [&_td]:align-top';

function Carregando() {
  return (
    <div className="container mx-auto px-4 py-8 max-w-3xl" role="status" aria-label="Carregando guia">
      <div className="animate-pulse space-y-4">
        <div className="h-4 w-48 rounded bg-muted" />
        <div className="h-8 w-4/5 rounded bg-muted" />
        <div className="h-24 w-full rounded-xl bg-muted" />
        <div className="h-4 w-full rounded bg-muted" />
        <div className="h-4 w-11/12 rounded bg-muted" />
        <div className="h-4 w-3/4 rounded bg-muted" />
      </div>
    </div>
  );
}

export default function GuiaPage() {
  const { slug } = useParams<{ slug: string }>();
  const [guia, setGuia] = useState<GuiaDados | null>(null);
  const [relacionados, setRelacionados] = useState<GuiaResumo[]>([]);
  const [estado, setEstado] = useState<'carregando' | 'ok' | 'ausente' | 'erro'>('carregando');

  useEffect(() => {
    if (!slug) return;
    let ativo = true;
    setEstado('carregando');

    carregarGuia(slug)
      .then(async (g) => {
        if (!ativo) return;
        setGuia(g);
        setEstado('ok');

        // Links internos para o rastreador seguir e para o leitor continuar:
        // sem eles cada guia fica orfao, alcancavel so pelo sitemap.
        const { guias } = await carregarIndiceGuias();
        if (!ativo) return;
        const escolhidos = g.relacionados
          .map(s => guias.find(x => x.slug === s))
          .filter((x): x is GuiaResumo => Boolean(x));
        // Sem relacionados declarados, a propria categoria serve de cluster.
        setRelacionados(
          escolhidos.length
            ? escolhidos
            : guias.filter(x => x.categoria === g.categoria && x.slug !== g.slug).slice(0, 3),
        );
      })
      .catch((e) => {
        if (!ativo) return;
        setEstado(e instanceof GuiaAusente ? 'ausente' : 'erro');
      });

    return () => { ativo = false; };
  }, [slug]);

  if (estado === 'carregando') return <Carregando />;

  if (estado !== 'ok' || !guia) {
    const ausente = estado === 'ausente';
    return (
      <>
        {/* Guia que nao existe (ou nao carregou) nao pode ser indexado como
            se fosse pagina valida. */}
        <Helmet>
          <title>{ausente ? 'Guia não encontrado' : 'Erro ao carregar o guia'} | {SITE_NAME}</title>
          <meta name="robots" content="noindex, follow" />
        </Helmet>
        <div className="container mx-auto px-4 py-16 max-w-2xl text-center">
          <h1 className="text-2xl font-semibold mb-3">
            {ausente ? 'Guia não encontrado' : 'Não foi possível carregar este guia'}
          </h1>
          <p className="text-muted-foreground mb-6">
            {ausente
              ? 'O endereço pode ter mudado ou o guia pode ter sido despublicado.'
              : 'Verifique sua conexão e tente novamente.'}
          </p>
          <div className="flex flex-wrap gap-3 justify-center">
            {!ausente && (
              <Button variant="outline" onClick={() => window.location.reload()}>
                Tentar novamente
              </Button>
            )}
            <Button asChild><Link to="/guias">Ver todos os guias</Link></Button>
          </div>
        </div>
      </>
    );
  }

  const url = `${SITE_URL}/guias/${guia.slug}`;

  const dadosEstruturados: Record<string, unknown>[] = [
    {
      '@context': 'https://schema.org',
      '@type': 'Article',
      headline: guia.titulo,
      description: guia.resumo,
      // O trecho autossuficiente tambem no dado estruturado: e o que um motor
      // de resposta le primeiro quando decide o que citar.
      abstract: guia.resposta_curta,
      datePublished: guia.publicado_em,
      dateModified: guia.atualizado_em,
      inLanguage: 'pt-BR',
      isAccessibleForFree: true,
      wordCount: guia.palavras,
      author: { '@type': 'Organization', name: guia.autor, url: SITE_URL },
      publisher: {
        '@type': 'Organization',
        name: SITE_NAME,
        url: SITE_URL,
        logo: { '@type': 'ImageObject', url: `${SITE_URL}/logo.png` },
      },
      mainEntityOfPage: { '@type': 'WebPage', '@id': url },
      articleSection: guia.categoria,
      // "about" so com o que o texto realmente explica: entidade declarada e
      // nao tratada e afirmacao falsa em dado estruturado.
      ...(guia.entidades?.length
        ? { about: guia.entidades.map(nome => ({ '@type': 'Thing', name: nome })) }
        : {}),
      ...(guia.fontes.length ? { citation: guia.fontes.map(f => f.url) } : {}),
    },
    {
      '@context': 'https://schema.org',
      '@type': 'BreadcrumbList',
      itemListElement: [
        { '@type': 'ListItem', position: 1, name: 'Início', item: `${SITE_URL}/` },
        { '@type': 'ListItem', position: 2, name: 'Guias', item: `${SITE_URL}/guias` },
        { '@type': 'ListItem', position: 3, name: guia.titulo, item: url },
      ],
    },
  ];

  // FAQPage so quando ha pergunta de verdade. O dado estruturado sai do MESMO
  // campo que a secao visivel, entao nunca descrevem coisas diferentes.
  if (guia.perguntas.length) {
    dadosEstruturados.push({
      '@context': 'https://schema.org',
      '@type': 'FAQPage',
      mainEntity: guia.perguntas.map(p => ({
        '@type': 'Question',
        name: p.pergunta,
        acceptedAnswer: { '@type': 'Answer', text: p.resposta },
      })),
    });
  }

  return (
    <>
      <SeoHead
        title={`${guia.titulo} | ${SITE_NAME}`}
        description={guia.resumo}
        canonical={url}
        keywords={guia.palavra_chave}
        structuredData={dadosEstruturados}
      />
      <Helmet>
        <meta property="og:type" content="article" />
        <meta property="article:published_time" content={guia.publicado_em} />
        <meta property="article:modified_time" content={guia.atualizado_em} />
        <meta property="article:section" content={guia.categoria} />
        {/* O Markdown de origem, para quem prefere ler assim — e o caso dos
            modelos de linguagem, que lidam pior com HTML cheio de div. */}
        <link rel="alternate" type="text/markdown" href={`${SITE_URL}/guias/${guia.slug}.md`} />
      </Helmet>

      <div className="container mx-auto px-4 py-8 max-w-3xl">
        <Breadcrumbs items={[
          { label: 'Início', href: '/' },
          { label: 'Guias', href: '/guias' },
          { label: guia.titulo },
        ]} />

        <article className="mt-6">
          <header>
            <Badge variant="outline" className="mb-3">{guia.categoria}</Badge>
            <h1 className="text-2xl sm:text-3xl font-bold leading-tight mb-3">{guia.titulo}</h1>

            {/* Data visivel, e nao so em meta tag: guia de concurso envelhece,
                e e por ela que leitor e modelo julgam se ainda vale. */}
            <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-sm text-muted-foreground">
              <span className="inline-flex items-center gap-1.5">
                <CalendarClock className="w-4 h-4" aria-hidden="true" />
                Atualizado em <time dateTime={guia.atualizado_em}>{formatarData(guia.atualizado_em)}</time>
              </span>
              <span className="inline-flex items-center gap-1.5">
                <Clock className="w-4 h-4" aria-hidden="true" />
                {guia.tempo_leitura} min de leitura
              </span>
              <span>Por {guia.autor}</span>
            </div>
          </header>

          {/* Resposta direta antes de qualquer rodeio. E o bloco que o
              buscador destaca e que um motor de resposta cita, entao precisa
              fazer sentido recortado, sem o resto da pagina. */}
          <section aria-labelledby="resposta-curta" className="rounded-xl border bg-muted/30 p-5 my-7">
            <h2 id="resposta-curta" className="text-sm font-medium text-foreground mb-2">
              Resposta curta
            </h2>
            <p className="text-[15px] leading-relaxed text-foreground">{guia.resposta_curta}</p>
          </section>

          <div className={CORPO} dangerouslySetInnerHTML={{ __html: guia.html }} />

          {guia.perguntas.length > 0 && (
            <section aria-labelledby="perguntas" className="mt-12">
              <h2 id="perguntas" className="text-xl font-semibold mb-4">Perguntas frequentes</h2>
              {/* Sem accordion: conteudo dobrado nao vai para o HTML e some
                  para quem indexa. Aqui a resposta esta sempre no documento. */}
              <dl className="space-y-5">
                {guia.perguntas.map((p) => (
                  <div key={p.pergunta} className="border-b border-border pb-5 last:border-0">
                    <dt className="font-medium text-foreground mb-1.5">{p.pergunta}</dt>
                    <dd className="text-[15px] leading-relaxed text-muted-foreground">{p.resposta}</dd>
                  </div>
                ))}
              </dl>
            </section>
          )}

          {guia.fontes.length > 0 && (
            <section aria-labelledby="fontes" className="mt-10">
              <h2 id="fontes" className="text-base font-semibold mb-3">Fontes</h2>
              <ul className="space-y-2 text-sm">
                {guia.fontes.map((f) => (
                  <li key={f.url}>
                    <a
                      href={f.url}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="inline-flex items-center gap-1.5 text-primary underline underline-offset-2"
                    >
                      {f.nome}
                      <ExternalLink className="w-3.5 h-3.5" aria-hidden="true" />
                    </a>
                  </li>
                ))}
              </ul>
              <p className="text-xs text-muted-foreground mt-3">
                Regra de concurso muda por edital. O edital do seu concurso prevalece sobre o que está aqui.
              </p>
            </section>
          )}
        </article>

        {relacionados.length > 0 && (
          <section aria-labelledby="relacionados" className="mt-12">
            <h2 id="relacionados" className="text-lg font-semibold mb-3">Continue por aqui</h2>
            <ul className="space-y-2">
              {relacionados.map((g) => (
                <li key={g.slug}>
                  <Link
                    to={`/guias/${g.slug}`}
                    className="block p-3 rounded-lg border hover:bg-muted/40 transition-colors"
                  >
                    <span className="text-sm font-medium">{g.titulo}</span>
                    <span className="block text-xs text-muted-foreground mt-0.5">{g.resumo}</span>
                  </Link>
                </li>
              ))}
            </ul>
          </section>
        )}

        {/* Do conteudo para o produto: quem leu sobre estudar quer a lista de
            concursos abertos e as questoes. Ancora descritiva, nao "clique aqui". */}
        <section aria-labelledby="proximos-passos" className="mt-10 rounded-xl border p-5">
          <h2 id="proximos-passos" className="text-base font-semibold mb-3">Colocar em prática</h2>
          <div className="flex flex-wrap gap-3">
            <Button asChild variant="outline" size="sm">
              <Link to="/concursos"><FileText className="w-4 h-4 mr-2" />Ver concursos com inscrições abertas</Link>
            </Button>
            <Button asChild variant="outline" size="sm">
              <Link to="/quiz"><Notebook className="w-4 h-4 mr-2" />Treinar com questões por matéria</Link>
            </Button>
          </div>
        </section>

        <Link
          to="/guias"
          className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mt-10"
        >
          <ArrowLeft className="w-4 h-4" aria-hidden="true" /> Todos os guias
        </Link>
      </div>
    </>
  );
}
