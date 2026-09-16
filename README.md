# Concursos Quiz Brasil

Plataforma gratuita de estudo para **concursos públicos**: catálogo de concursos
abertos, questões comentadas, simulados cronometrados, flashcards, anotações,
planner de estudos e guias práticos sobre como se preparar.

**No ar:** https://passar-concursos.vercel.app

## Funcionalidades

| Rota | O que faz |
|---|---|
| `/concursos` e `/concursos/:slug` | Catálogo de concursos (dados coletados por scraping) |
| `/quiz` | Questões por matéria — aberto também para visitantes sem login |
| `/simulado` | Simulado com cronômetro |
| `/estudo` | Flashcards e revisão |
| `/anotacoes` | Anotações pessoais |
| `/planner` | Planner de estudos |
| `/guias` e `/guias/:slug` | Guias em Markdown (edital, banca, recursos, cotas…) pré-renderizados para SEO |
| `/minha-conta` | Perfil e painel de desempenho |

O site roda inteiro em **plano gratuito**. Recursos pagos ficam desligados por
chave em `src/config/features.ts` — por exemplo, a geração de plano de estudos
com IA (`api/generate-study-plan.ts`), que hoje mostra um formulário de interesse
para medir demanda antes de ligar o custo.

## Stack

- **React 18** + **TypeScript** + **Vite**
- **Tailwind CSS** + **shadcn/ui**
- **Neon** — Postgres com RLS, **Neon Auth** (Better Auth) e **Data API**
- **Vercel** — hospedagem e funções serverless (`api/`)
- **Python** — scraping do catálogo de concursos (`scripts/scrape`), rodado por GitHub Actions
- Build com geração de guias, sitemap e prerender para SEO

## Como rodar localmente

Pré-requisito: Node.js 18+.

```sh
git clone https://github.com/matsuch/concursos-quiz-brasil.git
cd concursos-quiz-brasil
npm install
cp .env.example .env   # preencha com os endpoints do seu projeto Neon
npm run dev
```

### Variáveis de ambiente

| Variável | Onde | Uso |
|---|---|---|
| `VITE_NEON_AUTH_URL` | frontend (público) | Endpoint do Neon Auth |
| `VITE_NEON_DATA_API_URL` | frontend (público) | Endpoint da Data API |
| `DATABASE_URL` | Vercel (segredo) | Só para a função de IA, hoje desligada |
| `NEON_JWKS_URL` | Vercel (segredo) | Verificação do JWT na função de IA |
| `OPENAI_API_KEY` | Vercel (segredo) | Só para a função de IA, hoje desligada |

Detalhes em [`.env.example`](.env.example).

### Banco de dados

Schema, seed e migrações ficam em [`neon/`](neon/README.md):

```sh
psql "$DATABASE_URL" -f neon/schema.sql
psql "$DATABASE_URL" -f neon/seed.sql
```

## Scripts

| Comando | Descrição |
|---|---|
| `npm run dev` | Servidor de desenvolvimento |
| `npm run build` | Gera guias → build Vite → sitemap → prerender |
| `npm run preview` | Serve o build localmente |
| `npm run lint` | ESLint |

## Estrutura

```
src/
├── pages/           # rotas (Home, Concursos, Quiz, Simulado, Guias…)
├── components/      # UI, quiz, planner, conta
├── config/          # chaves de recurso (features.ts)
├── integrations/    # cliente Neon
└── lib/, hooks/
api/                 # funções serverless da Vercel
content/guias/       # guias em Markdown
neon/                # schema, seed e migrações do Postgres
scripts/             # geração de guias/sitemap, prerender, scraping
.github/workflows/   # scraping agendado, schema do Neon, testes de RLS
```

## Deploy

Deploy automático na Vercel a cada push na `main`.
