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
import Aulas from "./pages/Aulas";
import Duelo from "./pages/Duelo";
import Ranking from "./pages/Ranking";
import Estudo from "./pages/Estudo";
import Conquistas from "./pages/Conquistas";
import Auth from "./pages/Auth";
import NotFound from "./pages/NotFound";
import SimuladoPage from "./pages/Simulado";
import MyAccount from "./pages/MyAccount";
import Planos from "./pages/Planos";
import Planner from "./pages/Planner";

const queryClient = new QueryClient();

const App = () => (
  <QueryClientProvider client={queryClient}>
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
                    <Route path="/quiz" element={<Quiz />} />
                    <Route path="/aulas" element={<Aulas />} />
                    <Route path="/estudo" element={<Estudo />} />
                    <Route path="/planos" element={<Planos />} />
                    <Route path="/planner" element={<Planner />} />
                    <Route path="/auth" element={<Auth />} />
                    
                    <Route 
                      path="/quiz" 
                      element={
                        <ProtectedRoute requiredPlan="Basic">
                          <SimuladoPage />
                        </ProtectedRoute>
                      } 
                    />
                    <Route 
                      path="/planner" 
                      element={
                        <ProtectedRoute requiredPlan="Basic">
                          <SimuladoPage />
                        </ProtectedRoute>
                      } 
                    />
                    <Route 
                      path="/estudo" 
                      element={
                        <ProtectedRoute requiredPlan="Standard">
                          <SimuladoPage />
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

                    <Route path="*" element={<NotFound />} />
                  </Routes>
                </main>
              </div>
            </SubscriptionProvider>
          </AuthProvider>
        </BrowserRouter>
      </TooltipProvider>
    </ThemeProvider>
  </QueryClientProvider>
);

export default App;