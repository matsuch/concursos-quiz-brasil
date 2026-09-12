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
| `schema.sql` | Schema completo adaptado para Neon: 20 tabelas, 60 policies, índices, funções |
| `seed.sql` | Conteúdo oficial: 12 badges, 49 questões, 26 flashcards (idêntico ao do Supabase) |

## Como aplicar

```bash
psql "$DATABASE_URL" -f neon/schema.sql
psql "$DATABASE_URL" -f neon/seed.sql
```

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

### Por que não há FK para `neon_auth.users_sync`

O Neon permite a FK, mas a tabela é populada de forma **assíncrona** após o
cadastro. Com FK rígida, uma escrita logo após o signup pode falhar porque o
usuário ainda não sincronizou — e o app cria o profile logo na entrada, então a
corrida é real. Além disso, amarrar o schema à tabela do provedor de auth foi
justamente o que encareceu a saída do Supabase.

O custo é assumido e tratado: `delete_user_data()` substitui o cascade, e os
índices por `user_id` sustentam os filtros do RLS.

## Validação

Aplicado num Postgres 16 limpo com stub de `neon_auth.users_sync` e de
`auth.user_id()`. Verificado com ids em formato texto (`usr_2a9f1c4b7e`):

- schema e seed aplicam sem erro
- upsert de profile idempotente (substituto do trigger)
- trigger de badges concede e revoga corretamente
- RLS isola: um usuário não lê nem grava dados de outro
- `delete_user_data()` limpa tudo do usuário, preserva conteúdo público
  desassociando `created_by`, e não toca em dados de terceiros

## Pendências a confirmar no projeto real

1. **Tipo de `neon_auth.users_sync.id`.** As fontes divergem entre `text` e
   `uuid`. O schema usa `TEXT`, que acomoda os dois formatos, mas confirme
   antes de assumir qualquer join.
2. **`@neondatabase/neon-js` está em `0.7.0-beta`.** API pode mudar.
3. **OAuth do Google no Capacitor.** O deep link `io.concursos.brasil://`
   precisa ser reconfigurado no Neon Auth e testado no Android.
