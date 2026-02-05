export const SITE_URL = 'https://passar-concursos.vercel.app';
export const SITE_NAME = 'Passar Concursos';
export const SITE_DESCRIPTION = 'Treine com questões oficiais, revise com flashcards personalizados e organize seu plano de estudos para concursos públicos.';
export const SITE_KEYWORDS = 'concursos públicos, questões oficiais, flashcards, plano de estudos, editais, simulados, aprovação em concursos';

export const generateStructuredData = () => ({
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": SITE_NAME,
  "description": SITE_DESCRIPTION,
  "url": SITE_URL,
  "potentialAction": {
    "@type": "SearchAction",
    "target": `${SITE_URL}/search?q={search_term_string}`,
    "query-input": "required name=search_term_string"
  }
});

export const generateBreadcrumbData = () => ({
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": `${SITE_URL}/`
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Concursos Públicos",
      "item": `${SITE_URL}/concursos`
    }
  ]
});