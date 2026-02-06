import { Toaster } from "@/components/ui/toaster";
import { Toaster as Sonner } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { AuthProvider } from "@/hooks/useAuth";
import { SubscriptionProvider } from "@/hooks/useSubscription";
import { ProtectedRoute } from "@/components/ProtectedRoute";
import { ThemeProvider } from "@/components/ThemeProvider";
import Navbar from "@/components/Navbar";
import Home from "./pages/Home";
import Quiz from "./pages/Quiz";
import Estudo from "./pages/Estudo";
import Auth from "./pages/Auth";
import ConcursosPage from "@/pages/Concursos";
import NotFound from "./pages/NotFound";
import SimuladoPage from "./pages/Simulado";
import MyAccount from "./pages/MyAccount";
import Planos from "./pages/Planos";
import Planner from "./pages/Planner";
import Anotacoes from "./pages/Anotacoes";
import { HelmetProvider } from 'react-helmet-async';

const queryClient = new QueryClient();

const App = () => (
  <QueryClientProvider client={queryClient}>
    <HelmetProvider>
      <ThemeProvider attribute="class" defaultTheme="system" enableSystem>
        <TooltipProvider>
          <Toaster />
          <Sonner />
          <BrowserRouter> 
            <AuthProvider>
              <SubscriptionProvider>
                <div style={{ height: "100vh", display: "flex", flexDirection: "column" }}>
                  <Navbar />
                  <main style={{ flex: 1, overflow: "auto" }}>
                    <Routes>
                      <Route path="/" element={<Home />} />
                      
                      {/* Rotas públicas */}
                      <Route path="/concursos" element={<ConcursosPage />} />
                      <Route path="/quiz" element={<Quiz />} />
                      <Route path="/planos" element={<Planos />} />
                      <Route path="/anotacoes" element={<Anotacoes />} />
                      <Route path="/auth" element={<Auth />} />
                      
                      {/* Rotas protegidas */}
                      <Route 
                        path="/planner" 
                        element={
                          <ProtectedRoute requiredPlan="Basic">
                            <Planner />
                          </ProtectedRoute>
                        } 
                      />
                      <Route 
                        path="/estudo" 
                        element={
                          <ProtectedRoute requiredPlan="Standard">
                            <Estudo />
                          </ProtectedRoute>
                        } 
                      />
                      <Route 
                        path="/simulado" 
                        element={
                          <ProtectedRoute requiredPlan="Standard">
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
              </SubscriptionProvider>
            </AuthProvider>
          </BrowserRouter>
        </TooltipProvider>
      </ThemeProvider>
    </HelmetProvider>
  </QueryClientProvider>
);

export default App;