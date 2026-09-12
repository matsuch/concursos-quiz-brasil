# Banco de dados

O projeto Supabase original (`ppohehdolxdryctgvesg`) foi apagado após 90 dias
pausado, junto com os dados. Este diretório contém o necessário para levantar o
banco do zero.

## Arquivos

| Arquivo | O que é |
|---|---|
| `migrations/20260912000000_baseline_schema.sql` | Schema completo: 20 tabelas, 60 policies RLS, 3 funções, 9 triggers |
| `seed.sql` | Conteúdo oficial: 12 badges, 49 questões, 26 flashcards |
| `functions/generate-study-plan/` | Única edge function restante (geração de plano de estudos por IA) |

O baseline substitui as 20 migrations anteriores, que continuavam recriando
tabelas já removidas do código (duelos, aulas, assinaturas). Elas seguem no
histórico do git se você precisar consultar.

## Subindo um projeto novo

```bash
supabase link --project-ref <novo-ref>   # atualiza o project_id em config.toml
supabase db push                         # aplica o baseline
psql "$DATABASE_URL" -f supabase/seed.sql
```

Depois atualize o `.env` com a URL e a chave publicável do projeto novo.

## Procedência do schema

Cada bloco do baseline está marcado:

- **`[DDL]`** — reproduzido das migrations antigas, fiel ao original.
- **`[REC]`** — reconstruído a partir de `src/integrations/supabase/types.ts`.
  Sete tabelas (`concursos`, `simulados`, `simulado_questions`,
  `simulado_attempts`, `study_calendar_events`, `study_plan_proposals`,
  `notifications`) nunca foram versionadas — foram criadas pelo dashboard.
  O `types.ts` preserva colunas e nulabilidade, mas não defaults, checks nem
  índices: esses foram inferidos de como o frontend usa cada campo e podem
  divergir do que existia no projeto apagado.

## Acoplamento ao Supabase

Marcado como `[SUPABASE]` no baseline, relevante caso o backend mude:

- FKs para `auth.users` em 7 tabelas
- `auth.uid()` em todas as policies RLS
- trigger `on_auth_user_created` sobre `auth.users`, que cria o profile

Fora do Supabase, isso vira ou Neon RLS (`pg_session_jwt`) com outro provedor de
auth, ou autorização numa camada de API — e as policies deixam de valer sozinhas.

## Validação

Schema e seed foram aplicados num Postgres 16 limpo, com um stub mínimo do
schema `auth`. Verificado: as 20 tabelas batem coluna a coluna com o `types.ts`,
RLS ativo nas 20, os triggers de profile/badges/updated_at funcionam, o seed é
idempotente, e um usuário não lê nem escreve dados de outro.
