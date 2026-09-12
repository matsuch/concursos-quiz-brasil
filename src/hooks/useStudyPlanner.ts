import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { db } from '@/integrations/neon/client';
import { useAuth } from './useAuth';
import { useToast } from './use-toast';

export type StudyCalendarEvent = {
  id: string;
  user_id: string;
  title: string;
  subject: string | null;
  start_time: string;
  end_time: string;
  color: string | null;
  notes: string | null;
  is_recurring: boolean | null;
  recurrence_rule: string | null;
  created_at: string;
  updated_at: string;
};

export interface StudyCycle {
  id: string;
  user_id: string;
  name: string;
  duration_days: number;
  is_active: boolean;
  created_at: string;
  updated_at: string;
}

export interface StudyBlock {
  id: string;
  cycle_id: string;
  subject: string;
  duration_minutes: number;
  order_index: number;
  color: string;
  created_at: string;
}

export interface EditalTopic {
  id: string;
  user_id: string;
  subject: string;
  topic: string;
  subtopic: string | null;
  is_completed: boolean;
  completed_at: string | null;
  notes: string | null;
  priority: number;
  created_at: string;
  updated_at: string;
}

export interface StudyReview {
  id: string;
  user_id: string;
  topic_id: string | null;
  subject: string;
  topic_name: string;
  review_type: '24h' | '7d' | '30d';
  scheduled_date: string;
  is_completed: boolean;
  completed_at: string | null;
  created_at: string;
}

export function useStudyPlanner() {
  const { user } = useAuth();
  const { toast } = useToast();
  const queryClient = useQueryClient();

  // Study Cycles
  const { data: cycles = [], isLoading: cyclesLoading } = useQuery({
    queryKey: ['study-cycles', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('study_cycles')
        .select('*')
        .order('created_at', { ascending: false });
      if (error) throw error;
      return data as StudyCycle[];
    },
    enabled: !!user,
  });

  const { data: blocks = [], isLoading: blocksLoading } = useQuery({
    queryKey: ['study-blocks', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('study_blocks')
        .select('*')
        .order('order_index', { ascending: true });
      if (error) throw error;
      return data as StudyBlock[];
    },
    enabled: !!user,
  });

  // Edital Topics
  const { data: topics = [], isLoading: topicsLoading } = useQuery({
    queryKey: ['edital-topics', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('edital_topics')
        .select('*')
        .order('subject', { ascending: true })
        .order('priority', { ascending: false });
      if (error) throw error;
      return data as EditalTopic[];
    },
    enabled: !!user,
  });

  // Study Reviews
  const { data: reviews = [], isLoading: reviewsLoading } = useQuery({
    queryKey: ['study-reviews', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('study_reviews')
        .select('*')
        .order('scheduled_date', { ascending: true });
      if (error) throw error;
      return data as StudyReview[];
    },
    enabled: !!user,
  });

  // Mutations
  const createCycle = useMutation({
    mutationFn: async (cycle: { name: string; duration_days: number }) => {
      const { data, error } = await db
        .from('study_cycles')
        .insert({ ...cycle, user_id: user!.id })
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-cycles'] });
      toast({ title: 'Ciclo criado com sucesso!' });
    },
    onError: () => {
      toast({ title: 'Erro ao criar ciclo', variant: 'destructive' });
    },
  });

  const createBlock = useMutation({
    mutationFn: async (block: { cycle_id: string; subject: string; duration_minutes: number; order_index: number; color: string }) => {
      const { data, error } = await db
        .from('study_blocks')
        .insert(block)
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-blocks'] });
      toast({ title: 'Bloco adicionado!' });
    },
    onError: () => {
      toast({ title: 'Erro ao adicionar bloco', variant: 'destructive' });
    },
  });

  const deleteBlock = useMutation({
    mutationFn: async (blockId: string) => {
      const { error } = await db
        .from('study_blocks')
        .delete()
        .eq('id', blockId);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-blocks'] });
      toast({ title: 'Bloco removido!' });
    },
  });

  const createTopic = useMutation({
    mutationFn: async (topic: { subject: string; topic: string; subtopic?: string; priority?: number }) => {
      const { data, error } = await db
        .from('edital_topics')
        .insert({ ...topic, user_id: user!.id })
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['edital-topics'] });
      toast({ title: 'Tópico adicionado!' });
    },
    onError: () => {
      toast({ title: 'Erro ao adicionar tópico', variant: 'destructive' });
    },
  });

  const toggleTopic = useMutation({
    mutationFn: async ({ id, is_completed }: { id: string; is_completed: boolean }) => {
      const { error } = await db
        .from('edital_topics')
        .update({ 
          is_completed, 
          completed_at: is_completed ? new Date().toISOString() : null 
        })
        .eq('id', id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['edital-topics'] });
    },
  });

  const deleteTopic = useMutation({
    mutationFn: async (topicId: string) => {
      const { error } = await db
        .from('edital_topics')
        .delete()
        .eq('id', topicId);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['edital-topics'] });
      toast({ title: 'Tópico removido!' });
    },
  });

  const createReview = useMutation({
    mutationFn: async (review: { subject: string; topic_name: string; review_type: '24h' | '7d' | '30d'; scheduled_date: string; topic_id?: string }) => {
      const { data, error } = await db
        .from('study_reviews')
        .insert({ ...review, user_id: user!.id })
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-reviews'] });
      toast({ title: 'Revisão agendada!' });
    },
    onError: () => {
      toast({ title: 'Erro ao agendar revisão', variant: 'destructive' });
    },
  });

  const toggleReview = useMutation({
    mutationFn: async ({ id, is_completed }: { id: string; is_completed: boolean }) => {
      const { error } = await db
        .from('study_reviews')
        .update({ 
          is_completed, 
          completed_at: is_completed ? new Date().toISOString() : null 
        })
        .eq('id', id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-reviews'] });
    },
  });

  const deleteReview = useMutation({
    mutationFn: async (reviewId: string) => {
      const { error } = await db
        .from('study_reviews')
        .delete()
        .eq('id', reviewId);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-reviews'] });
      toast({ title: 'Revisão removida!' });
    },
  });

  // Buscar eventos do calendário
  const { data: calendarEvents, refetch: refetchCalendarEvents } = useQuery({
    queryKey: ['calendarEvents', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('study_calendar_events')
        .select('*')
        .eq('user_id', user?.id)
        .order('start_time', { ascending: true });
      if (error) throw error;
      return data as StudyCalendarEvent[];
    },
    enabled: !!user,
  });

  // Criar evento
  const createCalendarEvent = useMutation({
    mutationFn: async (event: Omit<StudyCalendarEvent, 'id' | 'user_id' | 'created_at' | 'updated_at'>) => {
      const { data, error } = await db
        .from('study_calendar_events')
        .insert([{ ...event, user_id: user?.id }])
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['calendarEvents'] });
    },
  });

  // Atualizar evento
  const updateCalendarEvent = useMutation({
    mutationFn: async ({ id, ...updates }: Partial<StudyCalendarEvent> & { id: string }) => {
      const { data, error } = await db
        .from('study_calendar_events')
        .update(updates)
        .eq('id', id)
        .select()
        .single();
      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['calendarEvents'] });
    },
  });

  // Deletar evento
  const deleteCalendarEvent = useMutation({
    mutationFn: async (id: string) => {
      const { error } = await db
        .from('study_calendar_events')
        .delete()
        .eq('id', id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['calendarEvents'] });
    },
  });

  return {
    // Data
    cycles,
    blocks,
    topics,
    reviews,
    // Loading states
    isLoading: cyclesLoading || blocksLoading || topicsLoading || reviewsLoading,
    // Mutations
    createCycle,
    createBlock,
    deleteBlock,
    createTopic,
    toggleTopic,
    deleteTopic,
    createReview,
    toggleReview,
    deleteReview,
    calendarEvents,
    createCalendarEvent,
    updateCalendarEvent,
    deleteCalendarEvent,
  };
}
