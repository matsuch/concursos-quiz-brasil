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

/** Campos de usuário e sessão que este app consome. */
export type AuthUser = {
  id: string;
  email?: string | null;
};

export type AuthSession = {
  access_token: string;
  user: AuthUser;
};
