import { Helmet } from 'react-helmet-async';

interface SeoHeadProps {
  title: string;
  description: string;
  canonical?: string;
  keywords?: string;
  ogImage?: string;
  structuredData?: Record<string, any>[];
}

const SITE = 'https://passar-concursos.vercel.app';

/** Aceita '/concursos' ou a URL inteira e devolve sempre absoluta: canonical
 *  relativa o navegador resolve, mas og:url exige absoluta — e quem lê og:url
 *  (WhatsApp, Twitter, Slack) não roda JavaScript para corrigir depois. */
const absoluta = (url: string) =>
  url.startsWith('http') ? url : SITE + (url.startsWith('/') ? url : '/' + url);

export const SeoHead = ({
  title,
  description,
  canonical = SITE + '/',
  keywords = 'concursos públicos, questões oficiais, flashcards, plano de estudos, editais, simulados, aprovação em concursos',
  ogImage = 'https://passar-concursos.vercel.app/og-image.jpg',
  structuredData = []
}: SeoHeadProps) => {
  const url = absoluta(canonical);
  return (
    <Helmet>
      <title>{title}</title>
      <meta name="description" content={description} />
      <meta name="keywords" content={keywords} />
      <link rel="canonical" href={url} />
      
      {/* Open Graph */}
      <meta property="og:title" content={title} />
      <meta property="og:description" content={description} />
      <meta property="og:type" content="website" />
      <meta property="og:url" content={url} />
      <meta property="og:image" content={ogImage} />
      <meta property="og:site_name" content="Passar Concursos" />
      
      {/* Twitter */}
      <meta name="twitter:card" content="summary_large_image" />
      <meta name="twitter:title" content={title} />
      <meta name="twitter:description" content={description} />
      <meta name="twitter:image" content={ogImage} />
      
      {/* Structured Data */}
      {structuredData.map((data, index) => (
        <script key={index} type="application/ld+json">
          {JSON.stringify(data)}
        </script>
      ))}
    </Helmet>
  );
};