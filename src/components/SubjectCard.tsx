import { LucideIcon } from "lucide-react";
import { cn } from "@/lib/utils";

interface SubjectCardProps {
  title: string;
  description: string;
  icon: LucideIcon;
  flashcardsCount: number;
  color: string;
  onClick: () => void;
  isSelected?: boolean;
}

export function SubjectCard({ 
  title, 
  description, 
  icon: Icon, 
  flashcardsCount, 
  color,
  onClick,
  isSelected 
}: SubjectCardProps) {
  return (
    <button
      onClick={onClick}
      className={cn(
        "w-full p-4 rounded-xl border text-left transition-all duration-300 hover:scale-[1.02]",
        isSelected 
          ? "bg-primary/10 border-primary shadow-lg shadow-primary/20" 
          : "bg-card border-border hover:border-primary/50"
      )}
    >
      <div className="flex items-start gap-4">
        <div 
          className="p-3 rounded-lg"
          style={{ backgroundColor: `${color}20` }}
        >
          <Icon className="w-6 h-6" style={{ color }} />
        </div>
        <div className="flex-1">
          <h3 className="font-semibold text-foreground">{title}</h3>
          <p className="text-sm text-muted-foreground mt-1 line-clamp-2">{description}</p>
          <span className="inline-block mt-2 text-xs font-medium text-primary">
            {flashcardsCount} flashcards
          </span>
        </div>
      </div>
    </button>
  );
}
