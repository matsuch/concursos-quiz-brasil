import { useState } from "react";
import { NavLink } from "@/components/NavLink";
import { useAuth } from "@/hooks/useAuth";
import { Notebook, Home, BookOpen, Menu, LogIn, LogOut, User, Landmark, Scale, CalendarDays, FileText, Library, Timer, Briefcase } from "lucide-react";
import { Link } from "react-router-dom";
import { SIMULADOS_HABILITADOS } from "@/config/features";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { useNavigate } from "react-router-dom";
import { ThemeToggle } from "@/components/ThemeToggle";

// Itens publicos aparecem para visitante e para quem esta logado. E aqui que
// os guias entram: conteudo editorial nao se esconde atras de login, e o link
// no menu e o que da caminho de rastreio para a secao inteira.
const publicNavItems = [
  { to: "/", icon: Home, label: "Início" },
  { to: "/concursos", icon: Briefcase, label: "Concursos" },
  { to: "/guias", icon: Library, label: "Guias" },
  { to: "/quiz", icon: Notebook, label: "Questões" },
];

const authOnlyNavItems = [
  { to: "/anotacoes", icon: FileText, label: "Anotações" },
  { to: "/planner", icon: CalendarDays, label: "Planner" },
  { to: "/estudo", icon: BookOpen, label: "Flashcards" },
  // Fora do menu enquanto não houver simulado cadastrado (ver features.ts).
  ...(SIMULADOS_HABILITADOS ? [{ to: "/simulado", icon: Timer, label: "Simulado" }] : []),
  { to: "/minha-conta", icon: Landmark, label: "Minha Conta" },
];

const Navbar = () => {
  const [open, setOpen] = useState(false);
  const { user, signOut } = useAuth();
  const navigate = useNavigate();

  // Itens públicos + itens exclusivos por estado de login
  const navItems = user
    ? [...publicNavItems, ...authOnlyNavItems]
    : publicNavItems;

  const handleAuthClick = async () => {
    if (user) {
      await signOut();
    } else {
      navigate("/auth");
    }
  };

  return (
    <nav className="sticky top-0 z-50 w-full bg-card border-b border-border">
      <div className="container mx-auto px-3 sm:px-4">
        <div className="flex items-center justify-between h-14 sm:h-16">
          <Link to="/" className="flex items-center gap-2 min-w-0 rounded-lg" aria-label="Passar Concursos — página inicial">
            <div className="w-8 h-8 rounded-md bg-primary flex items-center justify-center flex-shrink-0">
              <Scale className="w-5 h-5 text-primary-foreground" aria-hidden="true" />
            </div>
            <span className="text-base sm:text-lg font-bold tracking-tight text-foreground truncate">
              Passar Concursos
            </span>
          </Link>
          
          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center gap-1">
            {navItems.map((item) => (
              <NavLink
                key={item.to}
                to={item.to}
                title={item.label}
                className="relative px-3 py-2 rounded-md text-sm font-medium text-muted-foreground hover:text-foreground transition-colors flex items-center gap-2"
                activeClassName="!text-foreground after:absolute after:inset-x-3 after:-bottom-[13px] after:h-0.5 after:bg-primary"
              >
                {/* Entre md e lg só o ícone aparece: o rótulo segue no DOM
                    para leitor de tela e vira dica ao passar o mouse. */}
                <item.icon className="w-4 h-4" aria-hidden="true" />
                <span className="sr-only lg:not-sr-only">{item.label}</span>
              </NavLink>
            ))}
            
            <ThemeToggle />
            
            <Button 
              variant={user ? "ghost" : "default"}
              size="sm"
              onClick={handleAuthClick}
              aria-label={user ? "Sair" : "Entrar"}
className="ml-2"
            >
              {user ? (
                <>
                  <LogOut className="w-4 h-4 mr-2" />
                  <span className="hidden lg:inline">Sair</span>
                </>
              ) : (
                <>
                  <LogIn className="w-4 h-4 mr-2" />
                  <span className="hidden lg:inline">Entrar</span>
                </>
              )}
            </Button>
          </div>

          {/* Mobile Navigation */}
          <div className="flex items-center gap-2 md:hidden">
            <ThemeToggle />
            
            {/* Botão de Login/Auth visível no mobile */}
            <Button 
              variant={user ? "ghost" : "default"}
              size="sm"
              onClick={handleAuthClick}
              aria-label={user ? "Sair" : "Entrar"}

            >
              {user ? (
                <LogOut className="w-4 h-4" />
              ) : (
                <LogIn className="w-4 h-4" />
              )}
            </Button>
            
            {/* Menu hamburguer */}
            <Sheet open={open} onOpenChange={setOpen}>
              <SheetTrigger asChild>
                <Button variant="ghost" size="icon" aria-label="Abrir menu" >
                  <Menu className="w-5 h-5 sm:w-6 sm:h-6" />
                </Button>
              </SheetTrigger>
              <SheetContent side="right" className="w-[280px] p-0">
                <div className="flex flex-col h-full">
                  <div className="flex items-center gap-2 p-4 border-b border-border">
                    <div className="w-8 h-8 rounded-md bg-primary flex items-center justify-center">
                      <Scale className="w-5 h-5 text-primary-foreground" aria-hidden="true" />
                    </div>
                    <span className="text-lg font-bold tracking-tight text-foreground">
                      Passar Concursos
                    </span>
                  </div>
                  
                  {user && (
                    <div className="px-4 py-3 border-b border-border bg-muted/50">
                      <div className="flex items-center gap-2 text-sm text-muted-foreground">
                        <User className="w-4 h-4" />
                        <span className="truncate">{user.email}</span>
                      </div>
                    </div>
                  )}
                  
                  <nav className="flex-1 p-4 space-y-2 overflow-y-auto">
                    {navItems.map((item) => (
                      <NavLink
                        key={item.to}
                        to={item.to}
                        onClick={() => setOpen(false)}
                        className="flex items-center gap-3 px-4 py-3 rounded-md text-muted-foreground hover:text-foreground hover:bg-muted transition-colors"
                        activeClassName="!text-foreground !bg-muted font-medium"
                      >
                        <item.icon className="w-5 h-5" />
                        {item.label}
                      </NavLink>
                    ))}
                  </nav>
                  
                  <div className="p-4 border-t border-border">
                    <Button 
                      variant={user ? "outline" : "default"}
                      className="w-full"
                      onClick={() => {
                        setOpen(false);
                        handleAuthClick();
                      }}
                    >
                      {user ? (
                        <>
                          <LogOut className="w-4 h-4 mr-2" />
                          Sair
                        </>
                      ) : (
                        <>
                          <LogIn className="w-4 h-4 mr-2" />
                          Entrar
                        </>
                      )}
                    </Button>
                  </div>
                </div>
              </SheetContent>
            </Sheet>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;