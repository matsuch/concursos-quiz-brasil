import { cn } from "@/lib/utils";
import { LucideIcon } from "lucide-react";

interface BadgeCardProps {
  icon: LucideIcon;
  name: string;
  description: string;
  progress: number;
  maxProgress: number;
  unlocked: boolean;
  rarity: "comum" | "raro" | "epico" | "lendario";
}

const rarityStyles = {
  comum: "from-zinc-400 to-zinc-600 border-zinc-400/30",
  raro: "from-blue-400 to-blue-600 border-blue-400/30",
  epico: "from-purple-400 to-purple-600 border-purple-400/30",
  lendario: "from-amber-400 to-amber-600 border-amber-400/30",
};

const rarityLabels = {
  comum: "Comum",
  raro: "Raro",
  epico: "Épico",
  lendario: "Lendário",
};

const BadgeCard = ({
  icon: Icon,
  name,
  description,
  progress,
  maxProgress,
  unlocked,
  rarity,
}: BadgeCardProps) => {
  const percentage = Math.min((progress / maxProgress) * 100, 100);

  return (
    <div
      className={cn(
        "relative p-4 rounded-xl border-2 transition-all duration-300",
        unlocked
          ? "bg-card hover:scale-105 shadow-lg"
          : "bg-muted/30 opacity-60"
      )}
      style={{
        borderColor: unlocked ? undefined : "hsl(var(--border))",
      }}
    >
      {/* Rarity Badge */}
      <div
        className={cn(
          "absolute -top-2 -right-2 px-2 py-0.5 rounded-full text-[10px] font-bold text-white bg-gradient-to-r",
          rarityStyles[rarity]
        )}
      >
        {rarityLabels[rarity]}
      </div>

      <div className="flex items-start gap-4">
        {/* Icon */}
        <div
          className={cn(
            "w-14 h-14 rounded-xl flex items-center justify-center bg-gradient-to-br shrink-0",
            unlocked ? rarityStyles[rarity] : "from-muted to-muted-foreground/20"
          )}
        >
          <Icon
            className={cn(
              "w-7 h-7",
              unlocked ? "text-white" : "text-muted-foreground"
            )}
          />
        </div>

        {/* Content */}
        <div className="flex-1 min-w-0">
          <h3
            className={cn(
              "font-bold text-sm truncate",
              unlocked ? "text-foreground" : "text-muted-foreground"
            )}
          >
            {name}
          </h3>
          <p className="text-xs text-muted-foreground mt-0.5 line-clamp-2">
            {description}
          </p>

          {/* Progress */}
          {!unlocked && (
            <div className="mt-2">
              <div className="flex justify-between text-[10px] text-muted-foreground mb-1">
                <span>Progresso</span>
                <span>
                  {progress}/{maxProgress}
                </span>
              </div>
              <div className="h-1.5 bg-muted rounded-full overflow-hidden">
                <div
                  className={cn(
                    "h-full bg-gradient-to-r transition-all duration-500",
                    rarityStyles[rarity]
                  )}
                  style={{ width: `${percentage}%` }}
                />
              </div>
            </div>
          )}

          {unlocked && (
            <div className="mt-2 flex items-center gap-1">
              <span className="text-[10px] font-medium text-emerald-500">
                ✓ Desbloqueada
              </span>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default BadgeCard;
