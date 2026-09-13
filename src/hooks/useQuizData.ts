// hooks/useQuizData.ts
import { useState } from "react";
import { db, publicDb } from "@/integrations/neon/client";
import { toast } from "sonner";
import { useAuth } from "@/hooks/useAuth";

/** Quantas questões o visitante sem conta recebe por vez. */
export const QUESTOES_SEM_CONTA = 5;

/**
 * Colunas que o role `anonymous` pode ler (ver o GRANT em neon/schema.sql).
 * Pedir "*" sem sessão volta negado, porque `ai_explanation` e `created_by`
 * ficaram de fora do GRANT de propósito.
 */
const COLUNAS_PUBLICAS =
  "id, question, options, correct_answer, subject, difficulty, is_official, assunto, banca, prova";

/** Amostra sem repetição, por Fisher-Yates sobre uma cópia da lista. */
function amostraAleatoria<T>(itens: T[], quantidade: number): T[] {
  const copia = [...itens];
  const tamanho = Math.min(quantidade, copia.length);

  for (let i = 0; i < tamanho; i++) {
    const j = i + Math.floor(Math.random() * (copia.length - i));
    [copia[i], copia[j]] = [copia[j], copia[i]];
  }

  return copia.slice(0, tamanho);
}

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

    // Sem sessão a leitura vai pelo cliente sem token: o `db` exigiria JWT e
    // lançaria AuthRequiredError antes mesmo de sair a requisição.
    const semSessao = !user;

    try {
      let query = semSessao
        ? publicDb.from("questions").select(COLUNAS_PUBLICAS)
        : db.from("questions").select("*");

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

      const { data, error: fetchError } = await query;

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

      // Quem não tem conta recebe uma amostra do banco, sorteada a cada
      // carregamento; a lista completa é o que a conta gratuita entrega.
      setQuestions(semSessao ? amostraAleatoria(parsed, QUESTOES_SEM_CONTA) : parsed);
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
      await db.from("quiz_attempts").insert({
        user_id: user.id,
        subject: subject,
        correct_answers: score,
        total_questions: total,
        points_earned: pointsEarned,
        time_spent_seconds: timeSpent,
      });

      // Update profile stats
      const { data: profile } = await db
        .from("profiles")
        .select("total_points, quizzes_completed")
        .eq("user_id", user.id)
        .maybeSingle();

      if (profile) {
        await db
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