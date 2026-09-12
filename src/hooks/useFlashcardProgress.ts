import { useState, useCallback } from "react";
import { db } from "@/integrations/neon/client";
import { useToast } from "@/hooks/use-toast";

interface FlashcardProgress {
  flashcard_id: string;
  times_reviewed: number;
  last_reviewed_at: string;
}

export function useFlashcardProgress() {
  const [progress, setProgress] = useState<Map<string, FlashcardProgress>>(new Map());
  const [isLoading, setIsLoading] = useState(false);
  const { toast } = useToast();

  const fetchProgress = useCallback(async (userId: string) => {
    setIsLoading(true);
    try {
      const { data, error } = await db
        .from("flashcard_progress")
        .select("flashcard_id, times_reviewed, last_reviewed_at")
        .eq("user_id", userId);

      if (error) throw error;

      const progressMap = new Map<string, FlashcardProgress>();
      data?.forEach((p) => {
        progressMap.set(p.flashcard_id, {
          flashcard_id: p.flashcard_id,
          times_reviewed: p.times_reviewed ?? 1,
          last_reviewed_at: p.last_reviewed_at,
        });
      });
      setProgress(progressMap);
    } catch (error) {
      console.error("Error fetching flashcard progress:", error);
    } finally {
      setIsLoading(false);
    }
  }, []);

  const markAsStudied = useCallback(async (flashcardId: string, userId: string) => {
    try {
      const existing = progress.get(flashcardId);

      if (existing) {
        // Update existing progress
        const { error } = await db
          .from("flashcard_progress")
          .update({
            times_reviewed: existing.times_reviewed + 1,
            last_reviewed_at: new Date().toISOString(),
          })
          .eq("user_id", userId)
          .eq("flashcard_id", flashcardId);

        if (error) throw error;

        setProgress((prev) => {
          const next = new Map(prev);
          next.set(flashcardId, {
            ...existing,
            times_reviewed: existing.times_reviewed + 1,
            last_reviewed_at: new Date().toISOString(),
          });
          return next;
        });
      } else {
        // Insert new progress
        const { error } = await db.from("flashcard_progress").insert({
          user_id: userId,
          flashcard_id: flashcardId,
          times_reviewed: 1,
        });

        if (error) throw error;

        // Update profile flashcards_studied count
        const { data: profile } = await db
          .from("profiles")
          .select("flashcards_studied")
          .eq("user_id", userId)
          .maybeSingle();

        if (profile) {
          await db
            .from("profiles")
            .update({ flashcards_studied: (profile.flashcards_studied ?? 0) + 1 })
            .eq("user_id", userId);
        }

        setProgress((prev) => {
          const next = new Map(prev);
          next.set(flashcardId, {
            flashcard_id: flashcardId,
            times_reviewed: 1,
            last_reviewed_at: new Date().toISOString(),
          });
          return next;
        });

        toast({
          title: "Progresso salvo!",
          description: "Flashcard marcado como estudado.",
        });
      }
    } catch (error) {
      console.error("Error saving flashcard progress:", error);
    }
  }, [progress, toast]);

  const getProgress = useCallback((flashcardId: string) => {
    return progress.get(flashcardId);
  }, [progress]);

  const getStudiedCount = useCallback(() => {
    return progress.size;
  }, [progress]);

  return {
    progress,
    isLoading,
    fetchProgress,
    markAsStudied,
    getProgress,
    getStudiedCount,
  };
}
