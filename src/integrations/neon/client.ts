import { createClient, SupabaseAuthAdapter } from '@neondatabase/neon-js';
import type { Database } from './types';

/**
 * Endpoints do projeto Neon.
 *
 * Ficam como padrão no código, e não só em variável de ambiente, porque não
 * são segredo: o Vite os embute no bundle de qualquer forma, e quem protege a
 * Data API é o JWT do usuário somado ao RLS — não o desconhecimento da URL.
 * Deixá-los aqui faz o build funcionar em qualquer ambiente sem configuração,
 * e as variáveis seguem tendo precedência para apontar para outro projeto.
 */
const AUTH_URL =
  import.meta.env.VITE_NEON_AUTH_URL ??
  'https://ep-steep-waterfall-ac5tzxmb.neonauth.sa-east-1.aws.neon.tech/neondb/auth';

const DATA_API_URL =
  import.meta.env.VITE_NEON_DATA_API_URL ??
  'https://ep-steep-waterfall-ac5tzxmb.apirest.sa-east-1.aws.neon.tech/neondb/rest/v1';

/**
 * Cliente do Neon: Data API (compatível com PostgREST) + Managed Better Auth.
 *
 * O SupabaseAuthAdapter expõe a mesma superfície de auth do supabase-js
 * (signUp, signInWithPassword, signInWithOAuth, signOut, getSession,
 * onAuthStateChange), então a migração não alterou as chamadas de auth.
 *
 * As queries `.from(...)` seguem inalteradas: a Data API do Neon é compatível
 * com PostgREST, o mesmo protocolo que o supabase-js falava.
 *
 * `allowAnonymous` é o que mantém a página de questões de pé para quem não
 * está logado — inclusive os buscadores, que nunca estão. Sem ele o cliente
 * lança `AuthRequiredError` antes de a requisição sair, sempre que não há
 * sessão. A Data API sempre exige JWT: acesso anônimo não é requisição sem
 * token, é um token anônimo. Com a opção ligada, o SDK busca um JWT curto em
 * `GET /token/anonymous` na primeira query sem sessão e o mantém em cache até
 * expirar; a Data API então roda a query como o role `anonymous`, que só
 * enxerga o que tem GRANT explícito (ver neon/schema.sql). Havendo sessão,
 * nada muda: o token do usuário tem precedência.
 */
export const db = createClient<Database>({
  auth: {
    adapter: SupabaseAuthAdapter(),
    url: AUTH_URL,
    allowAnonymous: true,
  },
  dataApi: {
    url: DATA_API_URL,
  },
});

/** Campos de usuário e sessão que este app consome. */
export type AuthUser = {
  id: string;
  email?: string | null;
};

export type AuthSession = {
  access_token: string;
  user: AuthUser;
};
