import { useState } from "react";
import { NavLink } from "@/components/NavLink";
import { useAuth } from "@/hooks/useAuth";
import { Trophy, Notebook, Swords, Home, BookOpen, Award, Menu, LogIn, LogOut, User, Landmark, Scale, CreditCard, Map } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { useNavigate } from "react-router-dom";
import { ThemeToggle } from "@/components/ThemeToggle";

const publicNavItems = [
  { to: "/", icon: Home, label: "Início" },
  { to: "/quiz", icon: Notebook, label: "Questões" },
  { to: "/mindmaps", icon: Map, label: "Mapas Mentais" },
];

const guestOnlyNavItems = [
  { to: "/planos", icon: CreditCard, label: "Planos" },
];

const authOnlyNavItems = [
  { to: "/estudo", icon: BookOpen, label: "Estudo" },
  { to: "/aulas", icon: BookOpen, label: "Aulas" },
  { to: "/duelo", icon: Swords, label: "Duelo" },
  { to: "/conquistas", icon: Award, label: "Conquistas" },
  { to: "/ranking", icon: Trophy, label: "Ranking" },
  { to: "/simulado", icon: BookOpen, label: "Simulado" },
  { to: "/minha-conta", icon: Landmark, label: "Minha Conta" },
];

const Navbar = () => {
  const [open, setOpen] = useState(false);
  const { user, signOut } = useAuth();
  const navigate = useNavigate();

  // Itens públicos + itens exclusivos por estado de login
  const navItems = user
    ? [...publicNavItems, ...authOnlyNavItems]
    : [...publicNavItems, ...guestOnlyNavItems];

  const handleAuthClick = async () => {
    if (user) {
      await signOut();
    } else {
      navigate("/auth");
    }
  };

  return (
    <nav className="sticky top-0 z-50 w-full bg-card/95 backdrop-blur-lg border-b border-border shadow-sm">
      <div className="container mx-auto px-3 sm:px-4">
        <div className="flex items-center justify-between h-14 sm:h-16">
          <div className="flex items-center gap-2 min-w-0">
            <div className="w-8 h-8 sm:w-10 sm:h-10 rounded-lg bg-[#2563eb] flex items-center justify-center flex-shrink-0">
              <Scale className="w-5 h-5 sm:w-6 sm:h-6 text-white" />
            </div>
            <span className="text-base sm:text-lg lg:text-xl font-bold text-blue-600 truncate">
              Concursos Brasil
            </span>
          </div>
          
          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center gap-1">
            {navItems.map((item) => (
              <NavLink
                key={item.to}
                to={item.to}
                className="px-3 lg:px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
                activeClassName="!text-primary !bg-primary/10"
              >
                <item.icon className="w-4 h-4" />
                <span className="hidden lg:inline">{item.label}</span>
              </NavLink>
            ))}
            
            <ThemeToggle />
            
            <Button 
              variant={user ? "ghost" : "default"}
              size="sm"
              onClick={handleAuthClick}
              className={user 
                ? "ml-2 text-blue-600 hover:bg-blue-50" 
                : "ml-2 bg-[#2563eb] hover:bg-[#1d4ed8]"
              }
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
            <Sheet open={open} onOpenChange={setOpen}>
              <SheetTrigger asChild>
                <Button variant="ghost" size="icon" className="hover:text-blue-600 hover:bg-blue-50">
                  <Menu className="w-5 h-5 sm:w-6 sm:h-6" />
                </Button>
              </SheetTrigger>
              <SheetContent side="right" className="w-[280px] p-0">
                <div className="flex flex-col h-full">
                  <div className="flex items-center gap-2 p-4 border-b border-border">
                    <div className="w-10 h-10 rounded-lg bg-[#2563eb] flex items-center justify-center">
                      <Scale className="w-6 h-6 text-white" />
                    </div>
                    <span className="text-lg font-bold text-blue-600">
                      Concursos Brasil
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
                        className="flex items-center gap-3 px-4 py-3 rounded-lg text-muted-foreground hover:text-foreground hover:bg-muted transition-all"
                        activeClassName="!text-blue-600 !bg-blue-600/10"
                      >
                        <item.icon className="w-5 h-5" />
                        {item.label}
                      </NavLink>
                    ))}
                  </nav>
                  
                  <div className="p-4 border-t border-border">
                    <Button 
                      variant={user ? "outline" : "default"}
                      className={user 
                        ? "w-full border-blue-600 text-blue-600 hover:bg-blue-600 hover:text-white" 
                        : "w-full bg-[#2563eb] hover:bg-[#1d4ed8]"
                      }
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