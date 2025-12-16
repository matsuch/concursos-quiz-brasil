import { useState } from "react";
import { cn } from "@/lib/utils";
import { RotateCcw } from "lucide-react";

interface FlashcardProps {
  front: string;
  back: string;
  category: string;
  onFlip?: () => void;
}

export function Flashcard({ front, back, category, onFlip }: FlashcardProps) {
  const [isFlipped, setIsFlipped] = useState(false);

  const handleFlip = () => {
    const newFlipped = !isFlipped;
    setIsFlipped(newFlipped);
    // Only trigger onFlip when showing the back (answer)
    if (newFlipped && onFlip) {
      onFlip();
    }
  };

  return (
    <div 
      className="perspective-1000 w-full h-64 cursor-pointer"
      onClick={handleFlip}
    >
      <div
        className={cn(
          "relative w-full h-full transition-transform duration-500 transform-style-3d",
          isFlipped && "rotate-y-180"
        )}
      >
        {/* Front */}
        <div className="absolute inset-0 backface-hidden bg-gradient-to-br from-primary/20 to-secondary/20 border border-border rounded-2xl p-6 flex flex-col justify-between">
          <span className="text-xs font-semibold text-primary uppercase tracking-wider">
            {category}
          </span>
          <p className="text-lg font-medium text-foreground text-center leading-relaxed">
            {front}
          </p>
          <div className="flex items-center justify-center gap-2 text-muted-foreground text-sm">
            <RotateCcw className="w-4 h-4" />
            Clique para ver a resposta
          </div>
        </div>

        {/* Back */}
        <div className="absolute inset-0 backface-hidden rotate-y-180 bg-gradient-to-br from-accent/30 to-primary/10 border border-primary/30 rounded-2xl p-6 flex flex-col justify-between">
          <span className="text-xs font-semibold text-accent-foreground uppercase tracking-wider">
            Resposta
          </span>
          <p className="text-base text-foreground text-center leading-relaxed">
            {back}
          </p>
          <div className="flex items-center justify-center gap-2 text-muted-foreground text-sm">
            <RotateCcw className="w-4 h-4" />
            Clique para voltar
          </div>
        </div>
      </div>
    </div>
  );
}
