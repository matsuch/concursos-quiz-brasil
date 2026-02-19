import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from './useAuth';
import { useToast } from './use-toast';

export interface StudyProposal {
  id: string;
  user_id: string;
  status: 'pending' | 'approved' | 'rejected';
  mode: 'edital' | 'questionnaire';
  input_data: any;
  topics: Array<{
    subject: string;
    topic: string;
    subtopic?: string;
    priority: number;
  }>;
  schedule: Array<{
    day_of_week: number;
    start_hour: number;
    duration_minutes: number;
    subject: string;
    title: string;
  }>;
  created_at: string;
  updated_at: string;
  processed_at: string | null;
}

export function useStudyProposals() {
  const { user } = useAuth();
  const queryClient = useQueryClient();
  const { toast } = useToast();

  // Buscar propostas pendentes do usuário
  const pendingProposals = useQuery({
    queryKey: ['study-proposals', 'pending', user?.id],
    queryFn: async () => {
      if (!user) return [];

      const { data, error } = await supabase
        .from('study_plan_proposals')
        .select('*')
        .eq('user_id', user.id)
        .eq('status', 'pending')
        .order('created_at', { ascending: false });

      if (error) throw error;
      return data as StudyProposal[];
    },
    enabled: !!user,
    refetchInterval: 5000, // Reconsultar a cada 5 segundos
  });

  // Buscar histórico de propostas
  const proposalHistory = useQuery({
    queryKey: ['study-proposals', 'history', user?.id],
    queryFn: async () => {
      if (!user) return [];

      const { data, error } = await supabase
        .from('study_plan_proposals')
        .select('*')
        .eq('user_id', user.id)
        .in('status', ['approved', 'rejected'])
        .order('created_at', { ascending: false })
        .limit(20);

      if (error) throw error;
      return data as StudyProposal[];
    },
    enabled: !!user,
  });

  // Aprovar proposta e criar os itens
  const approveProposal = useMutation({
    mutationFn: async ({
      proposalId,
      selectedTopics,
      selectedSchedule,
    }: {
      proposalId: string;
      selectedTopics: number[]; // índices dos tópicos selecionados
      selectedSchedule: number[]; // índices dos blocos selecionados
    }) => {
      if (!user) throw new Error('Usuário não autenticado');

      // Buscar a proposta completa
      const { data: proposal, error: fetchError } = await supabase
        .from('study_plan_proposals')
        .select('*')
        .eq('id', proposalId)
        .single();

      if (fetchError || !proposal) throw new Error('Proposta não encontrada');

      // Criar tópicos
      const topicsToCreate = proposal.topics
        .filter((_, index) => selectedTopics.includes(index))
        .map(topic => ({
          user_id: user.id,
          subject: topic.subject,
          topic: topic.topic,
          subtopic: topic.subtopic || null,
          priority: topic.priority,
          is_completed: false,
        }));

      if (topicsToCreate.length > 0) {
        const { error: topicsError } = await supabase
          .from('edital_topics')
          .insert(topicsToCreate);

        if (topicsError) throw topicsError;
      }

      // Criar eventos de calendário (repetir por N semanas)
      const weeksCount = proposal.input_data?.questionnaire?.duracaoSemanas ||
        proposal.input_data?.editalSchedule?.duracaoSemanas || 4;

      const now = new Date();
      const weekStart = new Date(now);
      weekStart.setDate(now.getDate() - now.getDay()); // Começa no domingo

      const eventsToCreate = [];

      for (const blockIndex of selectedSchedule) {
        const block = proposal.schedule[blockIndex];
        if (!block) continue;

        for (let week = 0; week < weeksCount; week++) {
          const baseDate = new Date(weekStart);
          baseDate.setDate(baseDate.getDate() + week * 7);

          const eventDay = new Date(baseDate);
          eventDay.setDate(baseDate.getDate() + block.day_of_week);

          // Pular datas passadas
          if (eventDay < now && week === 0) continue;

          const startTime = new Date(eventDay);
          startTime.setHours(block.start_hour, 0, 0, 0);

          const endTime = new Date(startTime);
          endTime.setMinutes(startTime.getMinutes() + block.duration_minutes);

          const subjectColors: Record<string, string> = {
            'Direito Constitucional': '#3b82f6',
            'Direito Administrativo': '#8b5cf6',
            'Português': '#10b981',
            'Raciocínio Lógico': '#f59e0b',
            'Atualidades': '#ef4444',
            'Informática': '#06b6d4',
            'Direito Penal': '#ec4899',
            'Direito Civil': '#6366f1',
            'AFO': '#14b8a6',
            'Contabilidade': '#f97316',
          };

          eventsToCreate.push({
            user_id: user.id,
            title: block.title,
            subject: block.subject,
            start_time: startTime.toISOString(),
            end_time: endTime.toISOString(),
            color: subjectColors[block.subject] || '#3b82f6',
            notes: `Gerado por IA - Semana ${week + 1}`,
            is_recurring: false,
            recurrence_rule: null,
          });
        }
      }

      if (eventsToCreate.length > 0) {
        // CORREÇÃO: mudar de 'calendar_events' para 'study_calendar_events'
        const { error: eventsError } = await supabase
          .from('study_calendar_events')  // Nome correto da tabela
          .insert(eventsToCreate);

        if (eventsError) throw eventsError;
      }

      // Atualizar status da proposta
      const { error: updateError } = await supabase
        .from('study_plan_proposals')
        .update({ status: 'approved' })
        .eq('id', proposalId);

      if (updateError) throw updateError;

      return {
        topicsCount: topicsToCreate.length,
        eventsCount: eventsToCreate.length,
      };
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['study-proposals'] });
      queryClient.invalidateQueries({ queryKey: ['edital-topics'] });
      queryClient.invalidateQueries({ queryKey: ['calendar-events'] });

      toast({
        title: 'Plano aprovado! 🎉',
        description: `${data.topicsCount} tópicos e ${data.eventsCount} eventos adicionados.`,
      });
    },
    onError: (error: Error) => {
      toast({
        title: 'Erro ao aprovar plano',
        description: error.message,
        variant: 'destructive',
      });
    },
  });

  // Rejeitar proposta
  const rejectProposal = useMutation({
    mutationFn: async (proposalId: string) => {
      const { error } = await supabase
        .from('study_plan_proposals')
        .update({ status: 'rejected' })
        .eq('id', proposalId);

      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['study-proposals'] });
      toast({
        title: 'Proposta rejeitada',
        description: 'Você pode gerar um novo plano quando quiser.',
      });
    },
  });

  return {
    pendingProposals: pendingProposals.data || [],
    proposalHistory: proposalHistory.data || [],
    isLoading: pendingProposals.isLoading || proposalHistory.isLoading,
    approveProposal,
    rejectProposal,
  };
}