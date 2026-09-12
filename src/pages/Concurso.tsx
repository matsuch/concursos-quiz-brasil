import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { Helmet } from 'react-helmet-async';
import { ArrowLeft, Banknote, Calendar, ExternalLink, MapPin, Users, GraduationCap } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Card } from '@/components/ui/card';
import { SeoHead } from '@/components/SeoHead';
import { carregarConcursos, ordenarPorUrgencia, type Concurso as ConcursoDados } from '@/dados/concursos';

const SITE = 'https://passar-concursos.vercel.app';

const ROTULO_STATUS: Record<string, string> = {
  destaque: 'Destaque',
  aberto: 'Inscrições abertas',
  breve: 'Em breve',
};

function formatarData(iso: string) {
  const [a, m, d] = iso.split('-');
  return `${d}/${m}/${a}`;
}

function formatarSalario(c: ConcursoDados) {
  if (c.salario == null) return 'Salário não informado';
  return `${c.salario_ate ? 'até ' : ''}R$ ${c.salario.toLocaleString('pt-BR', { minimumFractionDigits: 2 })}`;
}

export default function ConcursoDetalhe() {
  const { slug } = useParams<{ slug: string }>();
  const [concurso, setConcurso] = useState<ConcursoDados | null>(null);
  const [relacionados, setRelacionados] = useState<ConcursoDados[]>([]);
  const [estado, setEstado] = useState<'carregando' | 'ok' | 'ausente'>('carregando');
  const [geradoEm, setGeradoEm] = useState('');

  useEffect(() => {
    let ativo = true;
    carregarConcursos()
      .then(({ concursos, gerado_em }) => {
        if (!ativo) return;
        setGeradoEm(gerado_em);
        const achado = concursos.find(c => c.slug === slug) ?? null;
        setConcurso(achado);
        setEstado(achado ? 'ok' : 'ausente');
        if (achado) {
          // Links internos para o rastreador seguir: sem eles cada página
          // ficaria órfã, alcançável só pelo sitemap.
          setRelacionados(
            ordenarPorUrgencia(
              concursos.filter(c => c.slug !== achado.slug && c.local === achado.local),
            ).slice(0, 6),
          );
        }
      })
      .catch(() => ativo && setEstado('ausente'));
    return () => { ativo = false; };
  }, [slug]);

  if (estado === 'carregando') {
    return (
      <div className="flex items-center justify-center min-h-[50vh]">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary" />
      </div>
    );
  }

  if (estado === 'ausente' || !concurso) {
    return (
      <>
        {/* Concurso que saiu da listagem (inscrição encerrada) não deve ser
            indexado como se ainda existisse. */}
        <Helmet>
          <title>Concurso não encontrado | Passar Concursos</title>
          <meta name="robots" content="noindex, follow" />
        </Helmet>
        <div className="container mx-auto px-4 py-16 max-w-2xl text-center">
          <h1 className="text-2xl font-semibold mb-3">Concurso não encontrado</h1>
          <p className="text-muted-foreground mb-6">
            Este concurso pode ter saído da lista porque o prazo de inscrição encerrou.
          </p>
          <Button asChild><Link to="/concursos">Ver concursos abertos</Link></Button>
        </div>
      </>
    );
  }

  const url = `${SITE}/concursos/${concurso.slug}`;
  const salario = formatarSalario(concurso);
  const prazo = formatarData(concurso.inscricoes_ate);
  const vagasTexto = concurso.vagas > 0
    ? `${concurso.vagas} vaga${concurso.vagas !== 1 ? 's' : ''}`
    : 'Vagas a definir';

  // Mesma frase que scripts/prerender.mjs escreve no HTML estático.
  const descricao =
    `${concurso.orgao} — ${vagasTexto} · nível ${concurso.nivel} · ${salario} · ` +
    `inscrições até ${prazo}${concurso.local !== 'Nacional' ? ` (${concurso.local})` : ''}.`;

  const dadosEstruturados = [{
    '@context': 'https://schema.org',
    '@type': 'JobPosting',
    title: concurso.titulo,
    description: descricao,
    // Mesma razão do template: datePosted igual a validThrough diria que o
    // anúncio foi publicado no dia em que expira.
    datePosted: geradoEm || concurso.inscricoes_ate,
    validThrough: concurso.inscricoes_ate,
    employmentType: 'FULL_TIME',
    hiringOrganization: { '@type': 'Organization', name: concurso.orgao },
    jobLocation: {
      '@type': 'Place',
      address: {
        '@type': 'PostalAddress',
        addressRegion: concurso.local === 'Nacional' ? undefined : concurso.local,
        addressCountry: 'BR',
      },
    },
    educationRequirements: concurso.nivel,
    ...(concurso.vagas > 0 ? { totalJobOpenings: concurso.vagas } : {}),
    ...(concurso.salario != null ? {
      baseSalary: {
        '@type': 'MonetaryAmount',
        currency: 'BRL',
        value: { '@type': 'QuantitativeValue', unitText: 'MONTH', [concurso.salario_ate ? 'maxValue' : 'value']: concurso.salario },
      },
    } : {}),
  }, {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Início', item: SITE + '/' },
      { '@type': 'ListItem', position: 2, name: 'Concursos', item: SITE + '/concursos' },
      { '@type': 'ListItem', position: 3, name: concurso.titulo, item: url },
    ],
  }];

  return (
    <>
      <SeoHead
        title={`${concurso.titulo} | Passar Concursos`}
        description={descricao}
        canonical={url}
        structuredData={dadosEstruturados}
      />

      <div className="container mx-auto px-4 py-8 max-w-3xl">
        <Link to="/concursos" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-6">
          <ArrowLeft className="w-4 h-4" /> Todos os concursos
        </Link>

        <Badge variant="outline" className="mb-3">{ROTULO_STATUS[concurso.status] ?? concurso.status}</Badge>
        <h1 className="text-2xl sm:text-3xl font-bold leading-tight mb-2">{concurso.titulo}</h1>
        <p className="text-muted-foreground mb-6">{concurso.orgao}</p>

        <Card className="p-5 mb-6">
          <dl className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div className="flex items-start gap-3">
              <MapPin className="w-5 h-5 text-muted-foreground mt-0.5" />
              <div><dt className="text-xs text-muted-foreground">Local</dt>
                <dd className="font-medium">{concurso.local}</dd></div>
            </div>
            <div className="flex items-start gap-3">
              <Users className="w-5 h-5 text-muted-foreground mt-0.5" />
              <div><dt className="text-xs text-muted-foreground">Vagas</dt>
                <dd className="font-medium">{vagasTexto}</dd></div>
            </div>
            <div className="flex items-start gap-3">
              <GraduationCap className="w-5 h-5 text-muted-foreground mt-0.5" />
              <div><dt className="text-xs text-muted-foreground">Escolaridade</dt>
                <dd className="font-medium">{concurso.nivel}</dd></div>
            </div>
            <div className="flex items-start gap-3">
              <Banknote className="w-5 h-5 text-muted-foreground mt-0.5" />
              <div><dt className="text-xs text-muted-foreground">Remuneração</dt>
                <dd className="font-medium text-emerald-600">{salario}</dd></div>
            </div>
            <div className="flex items-start gap-3">
              <Calendar className="w-5 h-5 text-muted-foreground mt-0.5" />
              <div><dt className="text-xs text-muted-foreground">Inscrições até</dt>
                <dd className="font-medium">{prazo}</dd></div>
            </div>
          </dl>
        </Card>

        <Button asChild className="w-full sm:w-auto mb-8">
          <a href={concurso.url_edital} target="_blank" rel="noopener noreferrer">
            Ver edital na fonte <ExternalLink className="w-4 h-4 ml-2" />
          </a>
        </Button>

        {/* As mesmas ressalvas que o llms.txt declara. Quem lê a página — pessoa
            ou modelo — precisa delas para não ler o número errado. */}
        <section className="rounded-xl border bg-muted/30 p-5 mb-8 text-sm text-muted-foreground space-y-2">
          <h2 className="font-medium text-foreground">Sobre estes dados</h2>
          <p>
            Informações coletadas da listagem pública do PCI Concursos e atualizadas semanalmente.
            {concurso.salario_ate && ' A remuneração indicada é o teto da faixa do concurso, não o salário de um cargo específico.'}
            {concurso.vagas === 0 && ' O número de vagas não é informado na fonte — pode ser cadastro de reserva.'}
            {' '}A escolaridade indicada é a menor exigida quando o edital abrange mais de um nível.
          </p>
          <p><strong className="text-foreground">O edital original prevalece sempre.</strong> Confira no link acima antes de se inscrever.</p>
        </section>

        {relacionados.length > 0 && (
          <section>
            <h2 className="text-lg font-semibold mb-3">
              Outros concursos {concurso.local === 'Nacional' ? 'nacionais' : `em ${concurso.local}`}
            </h2>
            <ul className="space-y-2">
              {relacionados.map(r => (
                <li key={r.slug}>
                  <Link to={`/concursos/${r.slug}`} className="block p-3 rounded-lg border hover:bg-muted/40 transition-colors">
                    <span className="text-sm font-medium">{r.titulo}</span>
                    <span className="block text-xs text-muted-foreground mt-0.5">
                      {r.orgao} · inscrições até {formatarData(r.inscricoes_ate)}
                    </span>
                  </Link>
                </li>
              ))}
            </ul>
          </section>
        )}
      </div>
    </>
  );
}
