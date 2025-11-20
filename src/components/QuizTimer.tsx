import { useEffect, useState } from "react";
import { cn } from "@/lib/utils";

interface QuizTimerProps {
  duration: number;
  onTimeUp: () => void;
  isActive: boolean;
}

const QuizTimer = ({ duration, onTimeUp, isActive }: QuizTimerProps) => {
  const [timeLeft, setTimeLeft] = useState(duration);

  useEffect(() => {
    setTimeLeft(duration);
  }, [duration]);

  useEffect(() => {
    if (!isActive) return;

    if (timeLeft <= 0) {
      onTimeUp();
      return;
    }

    const timer = setInterval(() => {
      setTimeLeft((prev) => prev - 1);
    }, 1000);

    return () => clearInterval(timer);
  }, [timeLeft, isActive, onTimeUp]);

  const percentage = (timeLeft / duration) * 100;
  const circumference = 2 * Math.PI * 45;
  const strokeDashoffset = circumference - (percentage / 100) * circumference;

  return (
    <div className="relative w-32 h-32">
      <svg className="transform -rotate-90 w-32 h-32">
        <circle
          cx="64"
          cy="64"
          r="45"
          stroke="currentColor"
          strokeWidth="8"
          fill="none"
          className="text-muted"
        />
        <circle
          cx="64"
          cy="64"
          r="45"
          stroke="currentColor"
          strokeWidth="8"
          fill="none"
          strokeDasharray={circumference}
          strokeDashoffset={strokeDashoffset}
          className={cn(
            "transition-all duration-1000 ease-linear",
            timeLeft > 5 ? "text-primary" : "text-destructive"
          )}
          strokeLinecap="round"
        />
      </svg>
      <div className="absolute inset-0 flex items-center justify-center">
        <span className={cn(
          "text-4xl font-bold transition-colors",
          timeLeft > 5 ? "text-foreground" : "text-destructive"
        )}>
          {timeLeft}
        </span>
      </div>
    </div>
  );
};

export default QuizTimer;
