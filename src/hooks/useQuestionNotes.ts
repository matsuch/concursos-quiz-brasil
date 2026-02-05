import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

export interface QuestionNote {
  id: string;
  user_id: string;
  question_id: string;
  content: string;
  created_at: string;
  updated_at: string;
}

export function useQuestionNotes(questionId?: string) {
  const { user } = useAuth();
  const queryClient = useQueryClient();

  // Get note for a specific question
  const noteQuery = useQuery({
    queryKey: ['question-note', questionId, user?.id],
    queryFn: async () => {
      if (!user || !questionId) return null;
      const { data, error } = await supabase
        .from('question_notes')
        .select('*')
        .eq('user_id', user.id)
        .eq('question_id', questionId)
        .maybeSingle();
      
      if (error) throw error;
      return data as QuestionNote | null;
    },
    enabled: !!user && !!questionId,
  });

  // Get all user's question notes
  const allNotesQuery = useQuery({
    queryKey: ['all-question-notes', user?.id],
    queryFn: async () => {
      if (!user) return [];
      const { data, error } = await supabase
        .from('question_notes')
        .select('*, questions(id, question, subject)')
        .eq('user_id', user.id)
        .order('updated_at', { ascending: false });
      
      if (error) throw error;
      return data;
    },
    enabled: !!user,
  });

  const saveNote = useMutation({
    mutationFn: async ({ questionId, content }: { questionId: string; content: string }) => {
      if (!user) throw new Error('User not authenticated');
      
      // Upsert - insert or update
      const { data, error } = await supabase
        .from('question_notes')
        .upsert(
          { user_id: user.id, question_id: questionId, content },
          { onConflict: 'user_id,question_id' }
        )
        .select()
        .single();
      
      if (error) throw error;
      return data;
    },
    onSuccess: (_, variables) => {
      queryClient.invalidateQueries({ queryKey: ['question-note', variables.questionId] });
      queryClient.invalidateQueries({ queryKey: ['all-question-notes'] });
    },
  });

  const deleteNote = useMutation({
    mutationFn: async (noteId: string) => {
      const { error } = await supabase
        .from('question_notes')
        .delete()
        .eq('id', noteId);
      
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['question-note'] });
      queryClient.invalidateQueries({ queryKey: ['all-question-notes'] });
    },
  });

  return {
    note: noteQuery.data,
    allNotes: allNotesQuery.data ?? [],
    isLoading: noteQuery.isLoading,
    isLoadingAll: allNotesQuery.isLoading,
    saveNote,
    deleteNote,
  };
}
