// hooks/useQuizData.ts
import { useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";
import { useAuth } from "@/hooks/useAuth";

interface Question {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  subject: string;
  difficulty: string | null;
  is_official: boolean | null;
  assunto: string | null;
  banca: string | null;
  prova: string | null;
  ai_explanation?: string | null;
}

interface Filters {
  subject: string;
  difficulty: string;
  is_official: string;
  assunto: string;
  banca: string;
  prova: string;
}

export function useQuizData() {
  const { user } = useAuth();
  const [questions, setQuestions] = useState<Question[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const fetchQuestions = async (filters: Filters) => {
    setLoading(true);
    setError(null);

    try {
      let query = supabase
        .from("questions")
        .select("*");

      // Aplica filtros apenas se tiverem valor
      if (filters.subject) {
        query = query.eq("subject", filters.subject);
      }
      if (filters.difficulty) {
        query = query.eq("difficulty", filters.difficulty);
      }
      if (filters.is_official) {
        query = query.eq("is_official", filters.is_official === "true");
      }
      if (filters.assunto) {
        query = query.eq("assunto", filters.assunto);
      }
      if (filters.banca) {
        query = query.eq("banca", filters.banca);
      }
      if (filters.prova) {
        query = query.eq("prova", filters.prova);
      }

      const { data, error: fetchError } = await query.limit(100);

      if (fetchError) throw fetchError;

      if (!data || data.length === 0) {
        setQuestions([]);
        return;
      }

      // Parse options from JSON
      const parsed = data.map((q) => ({
        ...q,
        options: typeof q.options === "string" ? JSON.parse(q.options) : q.options,
      }));

      setQuestions(parsed);
    } catch (err: any) {
      console.error("Error fetching questions:", err);
      setError(err.message || "Erro ao carregar questões");
      toast.error("Erro ao carregar questões");
    } finally {
      setLoading(false);
    }
  };

  const saveQuizAttempt = async (score: number, total: number, subject: string, timeSpent: number) => {
    if (!user) return;

    const pointsEarned = score * 10;

    try {
      // Save quiz attempt
      await supabase.from("quiz_attempts").insert({
        user_id: user.id,
        subject: subject,
        correct_answers: score,
        total_questions: total,
        points_earned: pointsEarned,
        time_spent_seconds: timeSpent,
      });

      // Update profile stats
      const { data: profile } = await supabase
        .from("profiles")
        .select("total_points, quizzes_completed")
        .eq("user_id", user.id)
        .maybeSingle();

      if (profile) {
        await supabase
          .from("profiles")
          .update({
            total_points: (profile.total_points || 0) + pointsEarned,
            quizzes_completed: (profile.quizzes_completed || 0) + 1,
          })
          .eq("user_id", user.id);
      }
    } catch (err) {
      console.error("Error saving quiz attempt:", err);
    }
  };

  return {
    questions,
    loading,
    error,
    fetchQuestions,
    saveQuizAttempt,
  };
}