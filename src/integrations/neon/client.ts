import { createClient, NeonPostgrestClient, SupabaseAuthAdapter } from '@neondatabase/neon-js';
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
 */
export const db = createClient<Database>({
  auth: {
    adapter: SupabaseAuthAdapter(),
    url: AUTH_URL,
  },
  dataApi: {
    url: DATA_API_URL,
  },
});

/**
 * Cliente sem sessão, para o conteúdo público lido por quem não está logado.
 *
 * O `db` acima injeta o JWT em toda requisição e, quando não há sessão, lança
 * `AuthRequiredError` antes de chegar a sair a requisição — o que derrubava a
 * página de questões para o visitante deslogado (e para os buscadores, que
 * nunca estão logados). Sem header `Authorization` a Data API executa a query
 * como `anonymous`, o db_anon_role do projeto, e o RLS decide o que ele vê.
 *
 * Serve só para leitura de conteúdo público: `anonymous` não tem GRANT de
 * escrita em tabela nenhuma, e nas de conteúdo o GRANT de leitura é por coluna
 * (ver neon/schema.sql), então a query precisa nomear as colunas em vez de
 * pedir `*`.
 */
export const publicDb = new NeonPostgrestClient<Database>({
  dataApiUrl: DATA_API_URL,
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
