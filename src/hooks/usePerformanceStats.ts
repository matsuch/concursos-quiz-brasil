import { useQuery } from '@tanstack/react-query';
import { supabase } from '@/integrations/supabase/client';
import { format, subDays, startOfDay } from 'date-fns';
import { ptBR } from 'date-fns/locale';

export type TimeRange = '7d' | '30d' | '90d' | 'all';

interface QuizAttempt {
  id: string;
  subject: string;
  correct_answers: number;
  total_questions: number;
  points_earned: number;
  time_spent_seconds: number | null;
  created_at: string;
}

export interface SubjectStats {
  subject: string;
  totalQuestions: number;
  correctAnswers: number;
  accuracy: number;
  totalTime: number;
  attempts: number;
}

export interface DailyStats {
  date: string;
  label: string;
  totalQuestions: number;
  correctAnswers: number;
  accuracy: number;
  timeMinutes: number;
}

export function usePerformanceStats(userId: string | undefined, timeRange: TimeRange) {
  return useQuery({
    queryKey: ['performance-stats', userId, timeRange],
    queryFn: async () => {
      if (!userId) return null;

      let query = supabase
        .from('quiz_attempts')
        .select('*')
        .eq('user_id', userId)
        .order('created_at', { ascending: true });

      if (timeRange !== 'all') {
        const days = timeRange === '7d' ? 7 : timeRange === '30d' ? 30 : 90;
        const since = startOfDay(subDays(new Date(), days)).toISOString();
        query = query.gte('created_at', since);
      }

      const { data, error } = await query;
      if (error) throw error;

      const attempts = (data || []) as QuizAttempt[];
      return processStats(attempts, timeRange);
    },
    enabled: !!userId,
  });
}

function processStats(attempts: QuizAttempt[], timeRange: TimeRange) {
  // By subject
  const subjectMap = new Map<string, SubjectStats>();
  for (const a of attempts) {
    const existing = subjectMap.get(a.subject) || {
      subject: a.subject,
      totalQuestions: 0,
      correctAnswers: 0,
      accuracy: 0,
      totalTime: 0,
      attempts: 0,
    };
    existing.totalQuestions += a.total_questions;
    existing.correctAnswers += a.correct_answers;
    existing.totalTime += a.time_spent_seconds || 0;
    existing.attempts += 1;
    existing.accuracy = Math.round((existing.correctAnswers / existing.totalQuestions) * 100);
    subjectMap.set(a.subject, existing);
  }
  const bySubject = Array.from(subjectMap.values()).sort((a, b) => b.attempts - a.attempts);

  // Daily evolution
  const dayMap = new Map<string, DailyStats>();
  for (const a of attempts) {
    const dateKey = format(new Date(a.created_at), 'yyyy-MM-dd');
    const label = format(new Date(a.created_at), 'dd/MM', { locale: ptBR });
    const existing = dayMap.get(dateKey) || {
      date: dateKey,
      label,
      totalQuestions: 0,
      correctAnswers: 0,
      accuracy: 0,
      timeMinutes: 0,
    };
    existing.totalQuestions += a.total_questions;
    existing.correctAnswers += a.correct_answers;
    existing.timeMinutes += Math.round((a.time_spent_seconds || 0) / 60);
    existing.accuracy = Math.round((existing.correctAnswers / existing.totalQuestions) * 100);
    dayMap.set(dateKey, existing);
  }
  const daily = Array.from(dayMap.values()).sort((a, b) => a.date.localeCompare(b.date));

  // Totals
  const totalQuestions = attempts.reduce((s, a) => s + a.total_questions, 0);
  const totalCorrect = attempts.reduce((s, a) => s + a.correct_answers, 0);
  const totalTimeMinutes = Math.round(attempts.reduce((s, a) => s + (a.time_spent_seconds || 0), 0) / 60);
  const overallAccuracy = totalQuestions > 0 ? Math.round((totalCorrect / totalQuestions) * 100) : 0;

  return {
    bySubject,
    daily,
    totals: {
      totalQuestions,
      totalCorrect,
      totalTimeMinutes,
      overallAccuracy,
      totalAttempts: attempts.length,
    },
  };
}
