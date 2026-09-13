# Migração para Neon

Porte do backend de Supabase para **Neon + Managed Better Auth + Data API**.

## Por que Neon

O plano gratuito do Supabase permite 2 projetos ativos **por conta**, somando
todas as organizações — cota já ocupada. O Neon permite 100 projetos no plano
gratuito e, nas palavras dos docs, *"None of these limits delete your data"*:
o compute suspende após 5 min parado e volta sozinho, sem a mecânica de
pausa-e-apaga-em-90-dias que custou os dados do projeto anterior.

## Arquivos

| Arquivo | O que é |
|---|---|
| `schema.sql` | Schema completo adaptado para Neon: 21 tabelas, 63 policies, índices, funções |
| `seed.sql` | Conteúdo oficial: 12 badges, 49 questões, 26 flashcards (idêntico ao do Supabase) |
| `migrations/` | Alterações incrementais para bancos que já rodam um `schema.sql` anterior |

## Como aplicar

Banco novo:

```bash
psql "$DATABASE_URL" -f neon/schema.sql
psql "$DATABASE_URL" -f neon/seed.sql
```

Banco que já existe: rodar só o que faltar de `migrations/`, em ordem de nome.
Cada arquivo é idempotente, então reaplicar não quebra.

```bash
psql "$DATABASE_URL" -f neon/migrations/20260912_plan_interest.sql
```

O `schema.sql` sempre reflete o estado final — as duas rotas chegam ao mesmo
banco.

Habilite o Auth e a Data API no console do projeto antes de rodar o app, e
anote as duas URLs para as variáveis `VITE_NEON_AUTH_URL` e
`VITE_NEON_DATA_API_URL`.

## Diferenças em relação ao baseline Supabase

| Item | Supabase | Neon |
|---|---|---|
| Função de identidade no RLS | `auth.uid()` | `auth.user_id()` |
| Tipo de `user_id` / `created_by` | `UUID` | `TEXT` |
| FK para o usuário | `auth.users(id)` | **nenhuma** (ver abaixo) |
| Criação do profile | trigger em `auth.users` | upsert pelo app no 1º acesso |
| Exclusão de conta | `ON DELETE CASCADE` | `public.delete_user_data(user_id)` |

### Por que não há FK para a tabela de usuários

A Managed Better Auth mantém os usuários em `neon_auth.user`. Não se cria FK
para lá de propósito: amarrar o schema à tabela do provedor de auth foi
justamente o que encareceu a saída do Supabase.

O custo é assumido e tratado: `delete_user_data()` substitui o cascade, e os
índices por `user_id` sustentam os filtros do RLS.

## Leitura pública sem sessão

A Data API tem `db_anon_role = anonymous`: requisição que chega sem
`Authorization` roda como esse role. Quem está deslogado — inclusive os
buscadores — depende disso para ver a página `/quiz`.

Duas pontas precisam estar de pé, e as duas faltavam:

| Camada | O que faltava |
|---|---|
| App | `createClient` injeta o JWT em toda requisição e lança `AuthRequiredError` quando não há sessão. Por isso existe o `publicDb` em `src/integrations/neon/client.ts`: um `NeonPostgrestClient` sem token, usado só na leitura de conteúdo público |
| Banco | `anonymous` não tinha GRANT nenhum. Policy de RLS não substitui GRANT: a policy filtra linhas, o GRANT é que abre a tabela para o role |

O GRANT em `public.questions` é por coluna (`neon/migrations/20260913_questions_leitura_anonima.sql`).
`ai_explanation` ficou de fora porque a explicação da IA é recurso de quem tem
conta, e `created_by` porque identifica o autor. Consequência prática: **sem
sessão a query precisa nomear as colunas** — `select=*` pede a tabela inteira e
volta `permission denied`.

Ao tornar outra tabela legível para deslogado, lembre das duas pontas: policy
de SELECT *e* GRANT para `anonymous`.

## Recurso pago desligado

A geração de plano de estudos com IA (`api/generate-study-plan.ts`) cobra por
chamada de LLM e está **desligada** em `src/config/features.ts`
(`IA_PLANO_ESTUDOS_HABILITADA = false`) — o objetivo é manter o site no ar sem
nenhum serviço pago enquanto se mede se ele cresce organicamente.

No lugar do gerador o app mostra o aviso de "somente planos pagos" e um
formulário de interesse, gravado em `public.plan_interest` (um registro por
usuário, `user_id` UNIQUE, mesmas quatro policies das demais tabelas por
usuário). É por essa tabela que se mede a demanda antes de ligar o custo:

```sql
SELECT count(*) FROM public.plan_interest;
SELECT email, whatsapp, concurso, message, created_at
  FROM public.plan_interest ORDER BY created_at DESC;
```

Para religar: `true` na chave, e cadastrar `DATABASE_URL` e `OPENAI_API_KEY`
nas variáveis de ambiente da Vercel. A aba "Propostas" do planner volta junto,
já que ela só existe para revisar o que a IA gerou.

## Dados reais (scraping)

`concursos` é populada por coleta automática, não à mão:

| Peça | O que faz |
|---|---|
| `.github/workflows/scrape.yml` | Roda a coleta no runner do GitHub (a sessão do Claude Code não alcança a web aberta) |
| `scripts/scrape/job.json` | Parâmetros da execução; editar e dar push é o gatilho |
| `scripts/scrape/recon.py` | Baixa o HTML cru das fontes, para o parser ser escrito contra a página real |
| `scripts/scrape/concursos.py` | Extrai e gera `neon/seed/concursos.sql` |

Fonte: **pciconcursos.com.br**, cujo `robots.txt` libera `/concursos/`. Extrai-se
só dado factual — órgão, vagas, salário, nível, prazo — e cada linha guarda o
link de volta para a origem. Nada de texto de notícia: fato não tem direito
autoral, redação tem. A FCC ficou de fora: o `robots.txt` dela tem
`Disallow: /concursos/`.

O seed é idempotente (`ON CONFLICT` no índice único de `url_edital`), então
recoletar atualiza prazo, vagas e status em vez de duplicar.

### O site lê o instantâneo, não a tabela

A partir de `src/dados/concursos.ts`, a aplicação lê `public/dados/concursos.json`
— gerado pela coleta e versionado — em vez de consultar `public.concursos`. O
motivo está no cabeçalho daquele arquivo: sitemap e pré-renderização precisam
saber quais URLs existem em tempo de build, sem credencial; banco e seed podiam
divergir; e o compute do Neon suspende após 5 min ocioso, fazendo o primeiro
visitante pagar o tempo de religar na página de entrada.

A tabela continua existindo e sendo preenchida pelo workflow. Se não houver uso
futuro para ela, o passo "Aplicar no Neon" e a própria tabela podem sair — aí
nada na listagem de concursos depende de credencial.

**Para a coleta semanal aplicar sozinha**, cadastre o secret
`NEON_DATABASE_URL` em *Settings → Secrets and variables → Actions*. Sem ele a
coleta roda igual e gera o seed, só não grava no banco. Nenhuma outra parte do
workflow usa credencial.

## Validação

Aplicado num Postgres 16 limpo com stub fiel ao projeto real (`neon_auth.user`
com `id uuid`). Verificado nas duas formas de retorno de `auth.user_id()`,
`uuid` e `text`:

- schema e seed aplicam sem erro
- upsert de profile idempotente (substituto do trigger)
- trigger de badges concede e revoga corretamente
- RLS isola: um usuário não lê nem grava dados de outro
- `delete_user_data()` limpa tudo do usuário, preserva conteúdo público
  desassociando `created_by`, e não toca em dados de terceiros

## Pendências a confirmar no projeto real

1. ~~Tipo do id em `neon_auth.user`~~ — **resolvido: é `uuid`.** As colunas
   seguem `TEXT` para não amarrar o schema ao formato do provedor, e as
   policies comparam com `auth.user_id()::text`, o que funciona tanto se a
   função devolver `text` quanto `uuid`. Ambos os casos testados.
2. **`@neondatabase/neon-js` está em `0.7.0-beta`.** API pode mudar.
3. **OAuth do Google no Capacitor.** O deep link `io.concursos.brasil://`
   precisa ser reconfigurado no Neon Auth e testado no Android.
