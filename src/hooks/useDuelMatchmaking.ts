import { useState, useEffect, useCallback } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';
import { toast } from 'sonner';

interface DuelState {
  duelId: string | null;
  status: 'idle' | 'searching' | 'matched' | 'playing' | 'finished';
  opponentId: string | null;
  opponentName: string | null;
  isPlayer1: boolean;
  currentQuestion: number;
  myScore: number;
  opponentScore: number;
  myAnswer: number | null;
  opponentAnswered: boolean;
  questions: any[];
}

export const useDuelMatchmaking = () => {
  const { user } = useAuth();
  const [state, setState] = useState<DuelState>({
    duelId: null,
    status: 'idle',
    opponentId: null,
    opponentName: null,
    isPlayer1: false,
    currentQuestion: 0,
    myScore: 0,
    opponentScore: 0,
    myAnswer: null,
    opponentAnswered: false,
    questions: []
  });

  // Search for an available duel or create one
  const startMatchmaking = useCallback(async (subject: string) => {
    if (!user) {
      toast.error('Você precisa estar logado para jogar duelos online');
      return;
    }

    setState(prev => ({ ...prev, status: 'searching' }));

    try {
      // Look for waiting duels
      const { data: waitingDuels, error: searchError } = await supabase
        .from('duels')
        .select('*')
        .eq('status', 'waiting')
        .eq('subject', subject)
        .neq('player1_id', user.id)
        .order('created_at', { ascending: true })
        .limit(1);

      if (searchError) throw searchError;

      if (waitingDuels && waitingDuels.length > 0) {
        // Join existing duel
        const duel = waitingDuels[0];
        
        const { error: joinError } = await supabase
          .from('duels')
          .update({ 
            player2_id: user.id, 
            status: 'playing' 
          })
          .eq('id', duel.id)
          .eq('status', 'waiting');

        if (joinError) throw joinError;

        // Get opponent profile
        const { data: opponentProfile } = await supabase
          .from('profiles')
          .select('display_name')
          .eq('user_id', duel.player1_id)
          .single();

        // Fetch questions for this duel
        const { data: duelQuestions } = await supabase
          .from('duel_questions')
          .select(`
            question_order,
            questions (*)
          `)
          .eq('duel_id', duel.id)
          .order('question_order', { ascending: true });

        const questions = duelQuestions?.map(dq => dq.questions) || [];

        setState(prev => ({
          ...prev,
          duelId: duel.id,
          status: 'matched',
          opponentId: duel.player1_id,
          opponentName: opponentProfile?.display_name || 'Oponente',
          isPlayer1: false,
          questions
        }));

        toast.success('Oponente encontrado!');
      } else {
        // Create new duel
        const { data: newDuel, error: createError } = await supabase
          .from('duels')
          .insert({
            player1_id: user.id,
            subject,
            status: 'waiting'
          })
          .select()
          .single();

        if (createError) throw createError;

        // Fetch random questions for the duel
        const { data: randomQuestions, error: questionsError } = await supabase
          .from('questions')
          .select('*')
          .eq('subject', subject)
          .limit(5);

        if (questionsError) throw questionsError;

        // Shuffle and pick 5 questions
        const shuffled = (randomQuestions || []).sort(() => Math.random() - 0.5).slice(0, 5);

        // Insert duel questions
        for (let i = 0; i < shuffled.length; i++) {
          await supabase
            .from('duel_questions')
            .insert({
              duel_id: newDuel.id,
              question_id: shuffled[i].id,
              question_order: i
            });
        }

        setState(prev => ({
          ...prev,
          duelId: newDuel.id,
          status: 'searching',
          isPlayer1: true,
          questions: shuffled
        }));

        toast.info('Aguardando oponente...');
      }
    } catch (error) {
      console.error('Matchmaking error:', error);
      toast.error('Erro ao buscar partida');
      setState(prev => ({ ...prev, status: 'idle' }));
    }
  }, [user]);

  // Cancel matchmaking
  const cancelMatchmaking = useCallback(async () => {
    if (state.duelId && state.status === 'searching') {
      await supabase
        .from('duels')
        .delete()
        .eq('id', state.duelId)
        .eq('player1_id', user?.id);
    }
    
    setState({
      duelId: null,
      status: 'idle',
      opponentId: null,
      opponentName: null,
      isPlayer1: false,
      currentQuestion: 0,
      myScore: 0,
      opponentScore: 0,
      myAnswer: null,
      opponentAnswered: false,
      questions: []
    });
  }, [state.duelId, state.status, user?.id]);

  // Submit answer
  const submitAnswer = useCallback(async (answerIndex: number) => {
    if (!state.duelId || state.myAnswer !== null) return;

    setState(prev => ({ ...prev, myAnswer: answerIndex }));

    // Update score in database
    const isCorrect = state.questions[state.currentQuestion]?.correct_answer === answerIndex;
    const scoreField = state.isPlayer1 ? 'player1_score' : 'player2_score';
    
    if (isCorrect) {
      const { data: currentDuel } = await supabase
        .from('duels')
        .select(scoreField)
        .eq('id', state.duelId)
        .single();

      const currentScore = currentDuel?.[scoreField] || 0;

      await supabase
        .from('duels')
        .update({ [scoreField]: currentScore + 1 })
        .eq('id', state.duelId);

      setState(prev => ({ ...prev, myScore: prev.myScore + 1 }));
    }
  }, [state.duelId, state.myAnswer, state.questions, state.currentQuestion, state.isPlayer1]);

  // Move to next question
  const nextQuestion = useCallback(() => {
    if (state.currentQuestion < 4) {
      setState(prev => ({
        ...prev,
        currentQuestion: prev.currentQuestion + 1,
        myAnswer: null,
        opponentAnswered: false
      }));
    } else {
      setState(prev => ({ ...prev, status: 'finished' }));
    }
  }, [state.currentQuestion]);

  // Start playing
  const startPlaying = useCallback(() => {
    setState(prev => ({ ...prev, status: 'playing' }));
  }, []);

  // Listen for duel updates (realtime)
  useEffect(() => {
    if (!state.duelId) return;

    const channel = supabase
      .channel(`duel-${state.duelId}`)
      .on(
        'postgres_changes',
        {
          event: 'UPDATE',
          schema: 'public',
          table: 'duels',
          filter: `id=eq.${state.duelId}`
        },
        async (payload) => {
          const updatedDuel = payload.new as any;

          // If we're player1 waiting and player2 joined
          if (state.status === 'searching' && updatedDuel.player2_id && state.isPlayer1) {
            const { data: opponentProfile } = await supabase
              .from('profiles')
              .select('display_name')
              .eq('user_id', updatedDuel.player2_id)
              .single();

            setState(prev => ({
              ...prev,
              status: 'matched',
              opponentId: updatedDuel.player2_id,
              opponentName: opponentProfile?.display_name || 'Oponente'
            }));

            toast.success('Oponente encontrado!');
          }

          // Update opponent score
          const opponentScoreField = state.isPlayer1 ? 'player2_score' : 'player1_score';
          setState(prev => ({
            ...prev,
            opponentScore: updatedDuel[opponentScoreField] || 0
          }));
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [state.duelId, state.status, state.isPlayer1]);

  // Get my profile name
  const [myName, setMyName] = useState<string>('Você');
  useEffect(() => {
    if (user) {
      supabase
        .from('profiles')
        .select('display_name')
        .eq('user_id', user.id)
        .single()
        .then(({ data }) => {
          if (data?.display_name) setMyName(data.display_name);
        });
    }
  }, [user]);

  return {
    ...state,
    myName,
    startMatchmaking,
    cancelMatchmaking,
    submitAnswer,
    nextQuestion,
    startPlaying,
    isAuthenticated: !!user
  };
};
