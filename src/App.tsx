import { Toaster } from "@/components/ui/toaster";
import { Toaster as Sonner } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
// BrowserRouter, e nao rota por hash: com "#", tudo depois dele nunca chega
// ao servidor, e o site inteiro vira uma URL so para buscadores -- as
// canonicals e o sitemap apontavam para rotas que ninguem sabia servir.
// O rewrite da Vercel ja manda qualquer caminho para o index.html.
import { lazy, Suspense } from "react";
import { BrowserRouter, Routes, Route, useLocation } from "react-router-dom";
import { Loader2 } from "lucide-react";
import { AuthProvider } from "@/hooks/useAuth";
import { ProtectedRoute } from "@/components/ProtectedRoute";
import { ThemeProvider } from "@/components/ThemeProvider";
import Navbar from "@/components/Navbar";
import Home from "./pages/Home";
import Quiz from "./pages/Quiz";
import ConcursoDetalhe from "./pages/Concurso";
import Auth from "./pages/Auth";
import ConcursosPage from "@/pages/Concursos";
import GuiasPage from "@/pages/Guias";
import GuiaPage from "./pages/Guia";
import NotFound from "./pages/NotFound";
import Privacidade from "./pages/Privacidade";
import Termos from "./pages/Termos";
import Footer from "@/components/Footer";
import { HelmetProvider } from 'react-helmet-async';
import { Analytics } from "@vercel/analytics/react";

// Áreas que só abrem com login carregam sob demanda. São as mais pesadas
// (calendário, gráficos, editor) e quem chega do buscador para ler um guia ou
// um concurso não precisa baixá-las.
const Estudo = lazy(() => import("./pages/Estudo"));
const SimuladoPage = lazy(() => import("./pages/Simulado"));
const MyAccount = lazy(() => import("./pages/MyAccount"));
const Planner = lazy(() => import("./pages/Planner"));
const Anotacoes = lazy(() => import("./pages/Anotacoes"));

const queryClient = new QueryClient();

// Telas de ferramenta, de altura cheia: o rodapé nelas só empurraria a
// ferramenta. Os links de privacidade e termos ficam em Minha Conta.
const ROTAS_SEM_RODAPE = ["/planner", "/estudo", "/simulado", "/anotacoes"];

const Carregando = () => (
  <div className="flex min-h-[50vh] items-center justify-center" role="status" aria-live="polite">
    <Loader2 className="h-8 w-8 animate-spin text-primary" aria-hidden="true" />
    <span className="sr-only">Carregando…</span>
  </div>
);

function AppRoutes() {
  const { pathname } = useLocation();
  const mostrarRodape = !ROTAS_SEM_RODAPE.some((r) => pathname.startsWith(r));

  return (
    <AuthProvider>
        <a
          href="#conteudo"
          className="sr-only focus:not-sr-only focus:fixed focus:left-3 focus:top-3 focus:z-[60] focus:rounded-md focus:bg-card focus:px-4 focus:py-2 focus:text-sm focus:font-medium focus:text-foreground focus:shadow-lg"
        >
          Pular para o conteúdo
        </a>
        <div style={{ height: "100vh", display: "flex", flexDirection: "column" }}>
          <Navbar />
          <main id="conteudo" tabIndex={-1} style={{ flex: 1, overflow: "auto" }} className="focus:outline-none">
            <Suspense fallback={<Carregando />}>
            <Routes>
              <Route path="/" element={<Home />} />

              {/* Rotas públicas */}
              <Route path="/concursos" element={<ConcursosPage />} />
              {/* Uma URL por concurso: e o unico conteudo proprio e factual
                  do site, e sem endereco proprio nao ha o que indexar nem citar. */}
              <Route path="/concursos/:slug" element={<ConcursoDetalhe />} />
              {/* Guias: conteudo editorial, publico para logado e deslogado.
                  Uma URL por guia, como nos concursos — sem endereco proprio
                  nao ha o que indexar nem o que citar. */}
              <Route path="/guias" element={<GuiasPage />} />
              <Route path="/guias/:slug" element={<GuiaPage />} />
              <Route path="/quiz" element={<Quiz />} />
              <Route path="/anotacoes" element={<Anotacoes />} />
              <Route path="/auth" element={<Auth />} />
              <Route path="/privacidade" element={<Privacidade />} />
              <Route path="/termos" element={<Termos />} />

              {/* Rotas protegidas */}
              <Route
                path="/planner"
                element={
                  <ProtectedRoute>
                    <Planner />
                  </ProtectedRoute>
                }
              />
              <Route
                path="/estudo"
                element={
                  <ProtectedRoute>
                    <Estudo />
                  </ProtectedRoute>
                }
              />
              <Route
                path="/simulado"
                element={
                  <ProtectedRoute>
                    <SimuladoPage />
                  </ProtectedRoute>
                }
              />
              <Route
                path="/minha-conta"
                element={
                  <ProtectedRoute>
                    <MyAccount />
                  </ProtectedRoute>
                }
              />

              {/* Rota 404 */}
              <Route path="*" element={<NotFound />} />
            </Routes>
            </Suspense>
            {mostrarRodape && <Footer />}
          </main>
        </div>
    </AuthProvider>
  );
}

const App = () => (
  <QueryClientProvider client={queryClient}>
    <HelmetProvider>
      <ThemeProvider attribute="class" defaultTheme="system" enableSystem>
        <TooltipProvider>
          <Toaster />
          <Sonner />
          <BrowserRouter>
            <AppRoutes />
          </BrowserRouter>

          <Analytics />

        </TooltipProvider>
      </ThemeProvider>
    </HelmetProvider>
  </QueryClientProvider>
);

export default App;