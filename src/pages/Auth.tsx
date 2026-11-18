import { useState, useEffect } from "react";
import { Link, useNavigate, useSearchParams } from "react-router-dom";
import { track } from "@vercel/analytics";
import { useAuth } from "@/hooks/useAuth";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader } from "@/components/ui/card";
import { useToast } from "@/hooks/use-toast";
import { Loader2 } from "lucide-react";
import { z } from "zod";
import { Helmet } from 'react-helmet-async';

// No login a senha só precisa existir: quem criou conta com a regra antiga
// (6 caracteres) tem de continuar entrando. O mínimo de 8 vale para conta nova.
const loginSchema = z.object({
  email: z.string().email("E-mail inválido"),
  password: z.string().min(1, "Informe a senha"),
});
const cadastroSchema = z.object({
  email: z.string().email("E-mail inválido"),
  password: z.string().min(8, "A senha deve ter pelo menos 8 caracteres"),
});

/**
 * Traduz a falha de auth para algo que a pessoa consiga resolver. O adapter
 * normaliza os erros no formato do supabase-js (status + message), então a
 * checagem vai pelo status e, na falta dele, pelo texto.
 */
function mensagemDeErro(error: Error & { status?: number; code?: string }, acao: "login" | "cadastro") {
  const texto = `${error.code ?? ""} ${error.message ?? ""}`.toLowerCase();
  if (error.status === 429 || texto.includes("too many")) {
    return "Muitas tentativas em pouco tempo. Aguarde um minuto e tente de novo.";
  }
  if (acao === "cadastro" && (texto.includes("already") || texto.includes("exists"))) {
    return "Este e-mail já tem conta. Tente entrar.";
  }
  if (acao === "cadastro" && texto.includes("password")) {
    return "A senha não foi aceita. Use pelo menos 8 caracteres.";
  }
  if (acao === "login" && (error.status === 400 || error.status === 401 || texto.includes("invalid"))) {
    return "E-mail ou senha incorretos.";
  }
  return acao === "login"
    ? "Não foi possível entrar agora. Tente de novo em instantes."
    : "Não foi possível criar a conta agora. Tente de novo em instantes.";
}

const Auth = () => {
  // /auth abre no login; /auth?modo=cadastro abre direto no cadastro, que é
  // para onde apontam as chamadas de "criar conta" espalhadas pelo site.
  const [searchParams] = useSearchParams();
  const [isLogin, setIsLogin] = useState(searchParams.get("modo") !== "cadastro");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isGoogleLoading, setIsGoogleLoading] = useState(false);
  const { signIn, signUp, signInWithGoogle, user, loading } = useAuth();
  const navigate = useNavigate();
  const { toast } = useToast();

  useEffect(() => {
    if (!loading && user) {
      navigate("/");
    }
  }, [user, loading, navigate]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    const validation = (isLogin ? loginSchema : cadastroSchema).safeParse({ email, password });
    if (!validation.success) {
      toast({
        title: "Erro de validação",
        description: validation.error.errors[0].message,
        variant: "destructive",
      });
      return;
    }

    setIsSubmitting(true);

    try {
      if (isLogin) {
        const { error } = await signIn(email, password);
        if (error) {
          toast({ title: "Não foi possível entrar", description: mensagemDeErro(error, "login"), variant: "destructive" });
        } else {
          track("login", { metodo: "email" });
          toast({ title: "Bem-vindo!", description: "Login realizado com sucesso" });
        }
      } else {
        const { error } = await signUp(email, password);
        if (error) {
          toast({ title: "Não foi possível criar a conta", description: mensagemDeErro(error, "cadastro"), variant: "destructive" });
        } else {
          track("cadastro", { metodo: "email" });
          // Sem "verifique seu e-mail": a confirmação por e-mail não está
          // ligada no Neon Auth, e a conta já entra em uso.
          toast({ title: "Conta criada!", description: "Você já pode começar a estudar." });
        }
      }
    } finally {
      setIsSubmitting(false);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <>
    <Helmet>
      <title>{isLogin ? 'Entrar' : 'Criar Conta'} | Passar Concursos</title>
      <meta name="description" content={isLogin ? 'Entre na sua conta para acessar questões, flashcards e plano de estudos personalizado.' : 'Crie sua conta grátis e comece a estudar para concursos públicos.'} />
      <link rel="canonical" href="https://passar-concursos.vercel.app/auth" />
      <meta name="robots" content="noindex, nofollow" />
    </Helmet>

    <div className="min-h-screen bg-background flex items-center justify-center p-4">
      <Card className="w-full max-w-md">
        <CardHeader className="text-center space-y-4">
          <div className="flex justify-center">
          </div>
          <div>
            <h1 className="text-2xl font-bold leading-none tracking-tight">
              {isLogin ? "Entrar" : "Criar conta gratuita"}
            </h1>
            <CardDescription className="mt-2">
              {isLogin 
                ? "Entre na sua conta para continuar" 
                : "Crie sua conta para começar a estudar"}
            </CardDescription>
          </div>
        </CardHeader>
        <CardContent>
          <Button 
            variant="outline" 
            className="w-full mb-4"
            onClick={async () => {
              setIsGoogleLoading(true);
              track(isLogin ? "login" : "cadastro", { metodo: "google" });
              const { error } = await signInWithGoogle();
              if (error) {
                toast({
                  title: "Erro",
                  description: "Erro ao fazer login com Google",
                  variant: "destructive",
                });
                setIsGoogleLoading(false);
              }
            }}
            disabled={isGoogleLoading || isSubmitting}
          >
            {isGoogleLoading ? (
              <Loader2 className="w-4 h-4 mr-2 animate-spin" />
            ) : (
              <svg className="w-5 h-5 mr-2" viewBox="0 0 24 24">
                <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
              </svg>
            )}
            Continuar com Google
          </Button>

          <div className="relative mb-4">
            <div className="absolute inset-0 flex items-center">
              <span className="w-full border-t border-border" />
            </div>
            <div className="relative flex justify-center text-xs">
              <span className="bg-card px-2 text-muted-foreground">ou</span>
            </div>
          </div>

          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="space-y-2">
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                autoComplete="email"
                placeholder="seu@email.com"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                disabled={isSubmitting || isGoogleLoading}
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="password">Senha</Label>
              <Input
                id="password"
                type="password"
                placeholder="••••••••"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                disabled={isSubmitting || isGoogleLoading}
                minLength={isLogin ? undefined : 8}
                autoComplete={isLogin ? "current-password" : "new-password"}
              />
            </div>
            <Button 
              type="submit" 
              className="w-full"
              disabled={isSubmitting || isGoogleLoading}
            >
              {isSubmitting ? (
                <>
                  <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  Aguarde...
                </>
              ) : isLogin ? (
                "Entrar"
              ) : (
                "Criar Conta"
              )}
            </Button>
          </form>
          
          {!isLogin && (
            <p className="mt-4 text-xs text-muted-foreground text-center">
              Ao criar a conta você concorda com os{" "}
              <Link to="/termos" className="underline hover:text-foreground">Termos de uso</Link> e com a{" "}
              <Link to="/privacidade" className="underline hover:text-foreground">Política de privacidade</Link>.
            </p>
          )}

          <div className="mt-6 text-center">
            <button
              type="button"
              onClick={() => setIsLogin(!isLogin)}
              className="text-sm text-muted-foreground hover:text-primary transition-colors"
              disabled={isSubmitting}
            >
              {isLogin 
                ? "Não tem conta? Criar conta" 
                : "Já tem conta? Entrar"}
            </button>
          </div>
        </CardContent>
      </Card>
    </div>
  </>
  );
};

export default Auth;
