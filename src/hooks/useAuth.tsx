import { useState, useEffect, useRef, createContext, useContext, ReactNode } from 'react';
import { db, type AuthUser, type AuthSession } from '@/integrations/neon/client';

interface AuthContextType {
  user: AuthUser | null;
  session: AuthSession | null;
  loading: boolean;
  signUp: (email: string, password: string) => Promise<{ error: Error | null }>;
  signIn: (email: string, password: string) => Promise<{ error: Error | null }>;
  signInWithGoogle: () => Promise<{ error: Error | null }>;
  signOut: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [session, setSession] = useState<AuthSession | null>(null);
  const [loading, setLoading] = useState(true);

  // Evita repetir o upsert de profile a cada evento de auth do mesmo usuário
  const profileGarantidoPara = useRef<string | null>(null);

  useEffect(() => {
    /**
     * Garante a linha em profiles no primeiro acesso autenticado.
     *
     * No Supabase isso era um trigger em auth.users. O Neon não tem tabela de
     * auth própria para pendurar trigger, então a responsabilidade passou para
     * o app (ver neon/schema.sql). Sem isso o usuário fica sem profile, e todo
     * o fluxo de pontos e badges — que lê o profile antes de atualizar — nunca
     * começa a contar.
     *
     * user_id é UNIQUE, então o upsert é idempotente; a policy de INSERT já
     * permite (auth.user_id() = user_id).
     */
    const garantirProfile = async (u: AuthUser) => {
      if (profileGarantidoPara.current === u.id) return;
      profileGarantidoPara.current = u.id;

      const { error } = await db
        .from('profiles')
        .upsert(
          { user_id: u.id, display_name: u.email?.split('@')[0] ?? null },
          { onConflict: 'user_id', ignoreDuplicates: true },
        );

      if (error) {
        // Não bloqueia a sessão: o app segue utilizável e a próxima entrada
        // tenta de novo.
        profileGarantidoPara.current = null;
        console.error('Falha ao garantir profile do usuário:', error);
      }
    };

    const aplicarSessao = (session: AuthSession | null) => {
      setSession(session);
      setUser(session?.user ?? null);
      setLoading(false);
      if (session?.user) {
        void garantirProfile(session.user);
      } else {
        profileGarantidoPara.current = null;
      }
    };

    // Set up auth state listener FIRST
    const { data: { subscription } } = db.auth.onAuthStateChange(
      (_event, session) => aplicarSessao(session),
    );

    // THEN check for existing session
    db.auth.getSession().then(({ data: { session } }) => aplicarSessao(session));

    return () => {
      subscription.unsubscribe();
    };
  }, []);

  const signUp = async (email: string, password: string) => {
    const redirectUrl = `${window.location.origin}/`;
    
    const { error } = await db.auth.signUp({
      email,
      password,
      options: {
        emailRedirectTo: redirectUrl
      }
    });
    return { error };
  };

  const signIn = async (email: string, password: string) => {
    const { error } = await db.auth.signInWithPassword({
      email,
      password,
    });
    return { error };
  };

  const signInWithGoogle = async () => {
    const { error } = await db.auth.signInWithOAuth({
      provider: 'google',
      options: {
        redirectTo: window.location.origin,
      }
    });
    return { error };
  };

  const signOut = async () => {
    await db.auth.signOut();
  };

  return (
    <AuthContext.Provider value={{ user, session, loading, signUp, signIn, signInWithGoogle, signOut }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}
