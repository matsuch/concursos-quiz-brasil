import { createClient, SupabaseAuthAdapter } from '@neondatabase/neon-js';
import type { Database } from './types';

const AUTH_URL = import.meta.env.VITE_NEON_AUTH_URL;
const DATA_API_URL = import.meta.env.VITE_NEON_DATA_API_URL;

if (!AUTH_URL || !DATA_API_URL) {
  throw new Error(
    'VITE_NEON_AUTH_URL e VITE_NEON_DATA_API_URL precisam estar definidas. ' +
    'Veja .env.example.'
  );
}

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
