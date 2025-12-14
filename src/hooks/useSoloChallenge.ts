import { useState, useCallback, useEffect } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';
import { toast } from 'sonner';

interface Question {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  difficulty?: string;
  is_official?: boolean;
  subject: string;
}

interface SoloState {
  status: 'idle' | 'playing' | 'finished';
  questions: Question[];
  currentQuestion: number;
  score: number;
  totalTime: number;
  correctAnswers: number;
  currentAnswer: number | null;
  showResult: boolean;
}

export const useSoloChallenge = () => {
  const { user } = useAuth();
  const [state, setState] = useState<SoloState>({
    status: 'idle',
    questions: [],
    currentQuestion: 0,
    score: 0,
    totalTime: 0,
    correctAnswers: 0,
    currentAnswer: null,
    showResult: false
  });
  const [startTime, setStartTime] = useState<number>(0);

  const startChallenge = useCallback(async (subject: string) => {
    try {
      const { data: questions, error } = await supabase
        .from('questions')
        .select('*')
        .eq('subject', subject)
        .limit(10);

      if (error) throw error;

      if (!questions || questions.length === 0) {
        toast.error('Nenhuma questão disponível para este assunto');
        return;
      }

      const shuffled = questions.sort(() => Math.random() - 0.5).slice(0, 5);
      
      // Parse options from JSONB
      const parsedQuestions = shuffled.map(q => ({
        ...q,
        options: Array.isArray(q.options) ? q.options : JSON.parse(q.options as string)
      }));

      setState({
        status: 'playing',
        questions: parsedQuestions,
        currentQuestion: 0,
        score: 0,
        totalTime: 0,
        correctAnswers: 0,
        currentAnswer: null,
        showResult: false
      });
      setStartTime(Date.now());
    } catch (error) {
      console.error('Error starting challenge:', error);
      toast.error('Erro ao iniciar desafio');
    }
  }, []);

  const submitAnswer = useCallback((answerIndex: number) => {
    if (state.currentAnswer !== null) return;

    const question = state.questions[state.currentQuestion];
    const isCorrect = question.correct_answer === answerIndex;

    setState(prev => ({
      ...prev,
      currentAnswer: answerIndex,
      showResult: true,
      correctAnswers: isCorrect ? prev.correctAnswers + 1 : prev.correctAnswers,
      score: isCorrect ? prev.score + calculatePoints(question.difficulty) : prev.score
    }));
  }, [state.currentAnswer, state.questions, state.currentQuestion]);

  const nextQuestion = useCallback(() => {
    if (state.currentQuestion < state.questions.length - 1) {
      setState(prev => ({
        ...prev,
        currentQuestion: prev.currentQuestion + 1,
        currentAnswer: null,
        showResult: false
      }));
    } else {
      const endTime = Date.now();
      const totalSeconds = Math.floor((endTime - startTime) / 1000);
      
      setState(prev => ({
        ...prev,
        status: 'finished',
        totalTime: totalSeconds
      }));

      // Save to database if logged in
      if (user) {
        saveAttempt(state.questions[0]?.subject || 'Geral', state.correctAnswers + (state.questions[state.currentQuestion].correct_answer === state.currentAnswer ? 1 : 0), state.questions.length, state.score, totalSeconds);
      }
    }
  }, [state.currentQuestion, state.questions, startTime, user, state.correctAnswers, state.currentAnswer, state.score]);

  const handleTimeUp = useCallback(() => {
    setState(prev => ({
      ...prev,
      showResult: true
    }));
  }, []);

  const saveAttempt = async (subject: string, correct: number, total: number, points: number, time: number) => {
    if (!user) return;

    try {
      await supabase.from('quiz_attempts').insert({
        user_id: user.id,
        subject,
        correct_answers: correct,
        total_questions: total,
        points_earned: points,
        time_spent_seconds: time
      });

      // Update profile points

      const { data: profile } = await supabase
        .from('profiles')
        .select('total_points, quizzes_completed')
        .eq('user_id', user.id)
        .single();

      if (profile) {
        await supabase
          .from('profiles')
          .update({
            total_points: (profile.total_points || 0) + points,
            quizzes_completed: (profile.quizzes_completed || 0) + 1
          })
          .eq('user_id', user.id);
      }
    } catch (error) {
      console.error('Error saving attempt:', error);
    }
  };

  const reset = useCallback(() => {
    setState({
      status: 'idle',
      questions: [],
      currentQuestion: 0,
      score: 0,
      totalTime: 0,
      correctAnswers: 0,
      currentAnswer: null,
      showResult: false
    });
  }, []);

  return {
    ...state,
    startChallenge,
    submitAnswer,
    nextQuestion,
    handleTimeUp,
    reset
  };
};

function calculatePoints(difficulty?: string): number {
  switch (difficulty) {
    case 'easy': return 10;
    case 'medium': return 15;
    case 'hard': return 25;
    default: return 15;
  }
}
