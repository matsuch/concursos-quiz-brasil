import { Toaster } from "@/components/ui/toaster";
import { Toaster as Sonner } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
// BrowserRouter, e nao rota por hash: com "#", tudo depois dele nunca chega
// ao servidor, e o site inteiro vira uma URL so para buscadores -- as
// canonicals e o sitemap apontavam para rotas que ninguem sabia servir.
// O rewrite da Vercel ja manda qualquer caminho para o index.html.
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { AuthProvider } from "@/hooks/useAuth";
import { ProtectedRoute } from "@/components/ProtectedRoute";
import { ThemeProvider } from "@/components/ThemeProvider";
import Navbar from "@/components/Navbar";
import Home from "./pages/Home";
import Quiz from "./pages/Quiz";
import ConcursoDetalhe from "./pages/Concurso";
import Estudo from "./pages/Estudo";
import Auth from "./pages/Auth";
import ConcursosPage from "@/pages/Concursos";
import GuiasPage from "@/pages/Guias";
import GuiaPage from "./pages/Guia";
import NotFound from "./pages/NotFound";
import SimuladoPage from "./pages/Simulado";
import MyAccount from "./pages/MyAccount";
import Planner from "./pages/Planner";
import Anotacoes from "./pages/Anotacoes";
import { HelmetProvider } from 'react-helmet-async';
import { Analytics } from "@vercel/analytics/react";

const queryClient = new QueryClient();

function AppRoutes() {
  return (
    <AuthProvider>
        <div style={{ height: "100vh", display: "flex", flexDirection: "column" }}>
          <Navbar />
          <main style={{ flex: 1, overflow: "auto" }}>
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