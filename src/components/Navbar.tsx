import { NavLink } from "@/components/NavLink";
import { Trophy, Brain, Swords, Home, BookOpen, Award } from "lucide-react";

const Navbar = () => {
  return (
    <nav className="sticky top-0 z-50 bg-card/80 backdrop-blur-lg border-b border-border">
      <div className="container mx-auto px-4">
        <div className="flex items-center justify-between h-16">
          <div className="flex items-center gap-2">
            <div className="w-10 h-10 rounded-lg bg-gradient-to-br from-primary to-secondary flex items-center justify-center">
              <Trophy className="w-6 h-6 text-white" />
            </div>
            <span className="text-xl font-bold bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent">
              Concursos Brasil
            </span>
          </div>
          
          <div className="flex gap-1">
            <NavLink
              to="/"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <Home className="w-4 h-4" />
              Início
            </NavLink>
            <NavLink
              to="/quiz"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <Brain className="w-4 h-4" />
              Quiz
            </NavLink>
            <NavLink
              to="/duelo"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <Swords className="w-4 h-4" />
              Duelo
            </NavLink>
            <NavLink
              to="/estudo"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <BookOpen className="w-4 h-4" />
              Estudo
            </NavLink>
            <NavLink
              to="/conquistas"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <Award className="w-4 h-4" />
              Conquistas
            </NavLink>
            <NavLink
              to="/ranking"
              className="px-4 py-2 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-all flex items-center gap-2"
              activeClassName="!text-primary !bg-primary/10"
            >
              <Trophy className="w-4 h-4" />
              Ranking
            </NavLink>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
