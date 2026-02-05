import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/hooks/useAuth';

export interface StudyNote {
  id: string;
  user_id: string;
  subject: string;
  title: string;
  content: string;
  is_pinned: boolean;
  created_at: string;
  updated_at: string;
}

export function useStudyNotes() {
  const { user } = useAuth();
  const queryClient = useQueryClient();

  const notesQuery = useQuery({
    queryKey: ['study-notes', user?.id],
    queryFn: async () => {
      if (!user) return [];
      const { data, error } = await supabase
        .from('study_notes')
        .select('*')
        .eq('user_id', user.id)
        .order('is_pinned', { ascending: false })
        .order('updated_at', { ascending: false });
      
      if (error) throw error;
      return data as StudyNote[];
    },
    enabled: !!user,
  });

  const createNote = useMutation({
    mutationFn: async (note: { subject: string; title: string; content?: string }) => {
      if (!user) throw new Error('User not authenticated');
      const { data, error } = await supabase
        .from('study_notes')
        .insert({ ...note, user_id: user.id })
        .select()
        .single();
      
      if (error) throw error;
      return data;
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['study-notes'] }),
  });

  const updateNote = useMutation({
    mutationFn: async ({ id, ...updates }: Partial<StudyNote> & { id: string }) => {
      const { data, error } = await supabase
        .from('study_notes')
        .update(updates)
        .eq('id', id)
        .select()
        .single();
      
      if (error) throw error;
      return data;
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['study-notes'] }),
  });

  const deleteNote = useMutation({
    mutationFn: async (id: string) => {
      const { error } = await supabase
        .from('study_notes')
        .delete()
        .eq('id', id);
      
      if (error) throw error;
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['study-notes'] }),
  });

  const togglePin = useMutation({
    mutationFn: async ({ id, is_pinned }: { id: string; is_pinned: boolean }) => {
      const { error } = await supabase
        .from('study_notes')
        .update({ is_pinned: !is_pinned })
        .eq('id', id);
      
      if (error) throw error;
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['study-notes'] }),
  });

  return {
    notes: notesQuery.data ?? [],
    isLoading: notesQuery.isLoading,
    createNote,
    updateNote,
    deleteNote,
    togglePin,
  };
}
