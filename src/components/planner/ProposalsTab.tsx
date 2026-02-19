// [file name]: ProposalsTab.tsx
import { useState } from 'react';
import { format } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { 
  Sparkles, 
  CheckCircle2, 
  XCircle, 
  Clock, 
  Calendar, 
  BookOpen,
  ChevronDown,
  ChevronRight,
  CheckSquare,
  AlertCircle,
  Loader2
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Checkbox } from '@/components/ui/checkbox';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Progress } from '@/components/ui/progress';
import { Collapsible, CollapsibleContent, CollapsibleTrigger } from '@/components/ui/collapsible';
import { useStudyProposals } from '@/hooks/useStudyProposals';
import { useToast } from '@/hooks/use-toast';
import { cn } from '@/lib/utils';

const DAY_NAMES = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];

export function ProposalsTab() {
  const { pendingProposals, proposalHistory, approveProposal, rejectProposal } = useStudyProposals();
  const [expandedProposal, setExpandedProposal] = useState<string | null>(null);
  const [selectedTopics, setSelectedTopics] = useState<Record<string, number[]>>({});
  const [selectedSchedule, setSelectedSchedule] = useState<Record<string, number[]>>({});
  const { toast } = useToast();

  const priorityLabel = (p: number) => {
    if (p === 3) return { text: 'Alta', className: 'bg-destructive/10 text-destructive border-destructive/20' };
    if (p === 2) return { text: 'Média', className: 'bg-yellow-500/10 text-yellow-600 border-yellow-500/20' };
    return { text: 'Baixa', className: 'bg-muted text-muted-foreground border-border' };
  };

  const toggleAllTopics = (proposalId: string, topics: any[]) => {
    setSelectedTopics(prev => {
      const current = prev[proposalId] || [];
      const allIndices = topics.map((_, idx) => idx);
      const allSelected = current.length === topics.length;
      return {
        ...prev,
        [proposalId]: allSelected ? [] : allIndices,
      };
    });
  };

  const toggleAllSchedule = (proposalId: string, schedule: any[]) => {
    setSelectedSchedule(prev => {
      const current = prev[proposalId] || [];
      const allIndices = schedule.map((_, idx) => idx);
      const allSelected = current.length === schedule.length;
      return {
        ...prev,
        [proposalId]: allSelected ? [] : allIndices,
      };
    });
  };

  const handleApprove = (proposal: any) => {
    const selectedTopicIndices = selectedTopics[proposal.id] || [];
    const selectedScheduleIndices = selectedSchedule[proposal.id] || [];

    if (selectedTopicIndices.length === 0 && selectedScheduleIndices.length === 0) {
      toast({
        title: 'Nada selecionado',
        description: 'Selecione pelo menos um tópico ou bloco de cronograma para aprovar.',
        variant: 'destructive',
      });
      return;
    }

    approveProposal.mutate({
      proposalId: proposal.id,
      selectedTopics: selectedTopicIndices,
      selectedSchedule: selectedScheduleIndices,
    });
  };

  const ProposalCard = ({ proposal }: { proposal: any }) => {
    const isExpanded = expandedProposal === proposal.id;
    const topics = proposal.topics || [];
    const schedule = proposal.schedule || [];
    const selectedTopicIndices = selectedTopics[proposal.id] || [];
    const selectedScheduleIndices = selectedSchedule[proposal.id] || [];

    const topicsBySubject = topics.reduce((acc: any, topic: any, idx: number) => {
      if (!acc[topic.subject]) acc[topic.subject] = [];
      acc[topic.subject].push({ ...topic, originalIndex: idx });
      return acc;
    }, {});

    const scheduleByDay = schedule.reduce((acc: any, block: any, idx: number) => {
      if (!acc[block.day_of_week]) acc[block.day_of_week] = [];
      acc[block.day_of_week].push({ ...block, originalIndex: idx });
      return acc;
    }, {});

    return (
      <Card className={cn(
        "border shadow-sm transition-all",
        proposal.status === 'pending' ? 'border-primary/30' : 'border-muted'
      )}>
        <CardHeader className="pb-3 cursor-pointer" onClick={() => setExpandedProposal(isExpanded ? null : proposal.id)}>
          <div className="flex items-start justify-between">
            <div className="flex items-start gap-3">
              <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-primary/10 flex-shrink-0">
                <Sparkles className="w-5 h-5 text-primary" />
              </div>
              <div>
                <CardTitle className="text-base font-semibold flex items-center gap-2">
                  Plano gerado em {format(new Date(proposal.created_at), "dd/MM/yyyy 'às' HH:mm")}
                  {proposal.status === 'pending' && (
                    <Badge variant="default" className="ml-2 text-xs bg-primary/20 text-primary border-primary/30">
                      Pendente
                    </Badge>
                  )}
                  {proposal.status === 'approved' && (
                    <Badge variant="default" className="ml-2 text-xs bg-green-500/20 text-green-600 border-green-500/30">
                      Aprovado
                    </Badge>
                  )}
                  {proposal.status === 'rejected' && (
                    <Badge variant="default" className="ml-2 text-xs bg-destructive/20 text-destructive border-destructive/30">
                      Rejeitado
                    </Badge>
                  )}
                </CardTitle>
                <CardDescription className="text-sm mt-1">
                  {proposal.mode === 'edital' ? '📄 Baseado em edital' : '📝 Baseado em questionário'} · 
                  {topics.length} tópicos · {schedule.length} blocos semanais
                </CardDescription>
              </div>
            </div>
            <div className="flex items-center gap-2">
              {isExpanded ? (
                <ChevronDown className="w-5 h-5 text-muted-foreground" />
              ) : (
                <ChevronRight className="w-5 h-5 text-muted-foreground" />
              )}
            </div>
          </div>
        </CardHeader>

        <Collapsible open={isExpanded}>
          <CollapsibleContent>
            <CardContent className="pt-0 space-y-6">
              {/* Estatísticas rápidas */}
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
                <div className="p-3 rounded-lg bg-muted/30">
                  <p className="text-xs text-muted-foreground">Tópicos</p>
                  <p className="text-lg font-semibold">{topics.length}</p>
                </div>
                <div className="p-3 rounded-lg bg-muted/30">
                  <p className="text-xs text-muted-foreground">Blocos/semana</p>
                  <p className="text-lg font-semibold">{schedule.length}</p>
                </div>
                <div className="p-3 rounded-lg bg-muted/30">
                  <p className="text-xs text-muted-foreground">Prioridade Alta</p>
                  <p className="text-lg font-semibold text-destructive">
                    {topics.filter((t: any) => t.priority === 3).length}
                  </p>
                </div>
                <div className="p-3 rounded-lg bg-muted/30">
                  <p className="text-xs text-muted-foreground">Total horas/semana</p>
                  <p className="text-lg font-semibold">
                    {Math.round(schedule.reduce((acc: number, b: any) => acc + b.duration_minutes, 0) / 60)}h
                  </p>
                </div>
              </div>

              {/* Seletores */}
              {proposal.status === 'pending' && (
                <div className="flex flex-wrap gap-2">
                  <Button
                    variant="outline"
                    size="sm"
                    className="text-xs"
                    onClick={() => toggleAllTopics(proposal.id, topics)}
                  >
                    {selectedTopicIndices.length === topics.length ? 'Desmarcar' : 'Selecionar'} todos os tópicos
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    className="text-xs"
                    onClick={() => toggleAllSchedule(proposal.id, schedule)}
                  >
                    {selectedScheduleIndices.length === schedule.length ? 'Desmarcar' : 'Selecionar'} todos os blocos
                  </Button>
                </div>
              )}

              {/* Tópicos */}
              <div>
                <h4 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <BookOpen className="w-4 h-4 text-primary" />
                  Tópicos Sugeridos
                </h4>
                <div className="space-y-4">
                  {Object.entries(topicsBySubject).map(([subject, subjectTopics]: [string, any]) => (
                    <div key={subject}>
                      <h5 className="text-xs font-medium text-muted-foreground mb-2">{subject}</h5>
                      <div className="space-y-1.5">
                        {(subjectTopics as any[]).map((topic) => {
                          const priority = priorityLabel(topic.priority);
                          const isSelected = selectedTopicIndices.includes(topic.originalIndex);
                          return (
                            <div
                              key={topic.originalIndex}
                              className={cn(
                                "flex items-center gap-3 p-2.5 rounded-lg border transition-colors",
                                isSelected ? 'bg-primary/5 border-primary/20' : 'bg-muted/20 border-muted opacity-60'
                              )}
                            >
                              {proposal.status === 'pending' && (
                                <Checkbox
                                  checked={isSelected}
                                  onCheckedChange={() => {
                                    setSelectedTopics(prev => {
                                      const current = prev[proposal.id] || [];
                                      return {
                                        ...prev,
                                        [proposal.id]: current.includes(topic.originalIndex)
                                          ? current.filter(i => i !== topic.originalIndex)
                                          : [...current, topic.originalIndex].sort()
                                      };
                                    });
                                  }}
                                  className="flex-shrink-0"
                                />
                              )}
                              <div className="flex-1 min-w-0">
                                <p className="text-sm font-medium text-foreground truncate">{topic.topic}</p>
                                {topic.subtopic && (
                                  <p className="text-xs text-muted-foreground truncate">{topic.subtopic}</p>
                                )}
                              </div>
                              <Badge variant="outline" className={cn("text-xs", priority.className)}>
                                {priority.text}
                              </Badge>
                            </div>
                          );
                        })}
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Cronograma */}
              <div>
                <h4 className="text-sm font-semibold mb-3 flex items-center gap-2">
                  <Calendar className="w-4 h-4 text-primary" />
                  Cronograma Semanal
                </h4>
                <div className="space-y-4">
                  {Object.entries(scheduleByDay)
                    .sort(([a], [b]) => Number(a) - Number(b))
                    .map(([dayStr, blocks]: [string, any]) => (
                      <div key={dayStr}>
                        <h5 className="text-xs font-medium text-muted-foreground mb-2">{DAY_NAMES[Number(dayStr)]}</h5>
                        <div className="space-y-1.5">
                          {blocks
                            .sort((a: any, b: any) => a.start_hour - b.start_hour)
                            .map((block: any) => {
                              const isSelected = selectedScheduleIndices.includes(block.originalIndex);
                              return (
                                <div
                                  key={block.originalIndex}
                                  className={cn(
                                    "flex items-center gap-3 p-2.5 rounded-lg border transition-colors",
                                    isSelected ? 'bg-primary/5 border-primary/20' : 'bg-muted/20 border-muted opacity-60'
                                  )}
                                >
                                  {proposal.status === 'pending' && (
                                    <Checkbox
                                      checked={isSelected}
                                      onCheckedChange={() => {
                                        setSelectedSchedule(prev => {
                                          const current = prev[proposal.id] || [];
                                          return {
                                            ...prev,
                                            [proposal.id]: current.includes(block.originalIndex)
                                              ? current.filter(i => i !== block.originalIndex)
                                              : [...current, block.originalIndex].sort()
                                          };
                                        });
                                      }}
                                      className="flex-shrink-0"
                                    />
                                  )}
                                  <div className="flex items-center gap-2 text-xs text-muted-foreground flex-shrink-0">
                                    <Clock className="w-3.5 h-3.5" />
                                    <span>
                                      {String(block.start_hour).padStart(2, '0')}:00 -{' '}
                                      {String(block.start_hour + Math.floor(block.duration_minutes / 60)).padStart(2, '0')}:
                                      {String(block.duration_minutes % 60).padStart(2, '0')}
                                    </span>
                                  </div>
                                  <div className="flex-1 min-w-0">
                                    <p className="text-sm font-medium text-foreground truncate">{block.title}</p>
                                    <p className="text-xs text-muted-foreground truncate">{block.subject} · {block.duration_minutes}min</p>
                                  </div>
                                </div>
                              );
                            })}
                        </div>
                      </div>
                    ))}
                </div>
              </div>

              {/* Botões de ação para pendentes */}
              {proposal.status === 'pending' && (
                <div className="flex gap-2 pt-2">
                  <Button
                    variant="default"
                    className="flex-1 gap-2"
                    onClick={() => handleApprove(proposal)}
                    disabled={approveProposal.isPending}
                  >
                    {approveProposal.isPending ? (
                      <Loader2 className="w-4 h-4 animate-spin" />
                    ) : (
                      <CheckCircle2 className="w-4 h-4" />
                    )}
                    Aprovar Selecionados
                  </Button>
                  <Button
                    variant="outline"
                    className="flex-1 gap-2"
                    onClick={() => rejectProposal.mutate(proposal.id)}
                    disabled={rejectProposal.isPending}
                  >
                    <XCircle className="w-4 h-4" />
                    Rejeitar Plano
                  </Button>
                </div>
              )}
            </CardContent>
          </CollapsibleContent>
        </Collapsible>
      </Card>
    );
  };

  return (
    <div className="space-y-6">
      <div className="space-y-1">
        <h2 className="text-xl sm:text-2xl font-semibold text-foreground">Propostas de Estudo</h2>
        <p className="text-sm text-muted-foreground">
          Planos gerados pela IA aguardando sua aprovação
        </p>
      </div>

      <Tabs defaultValue="pending" className="w-full">
        <TabsList className="grid w-full grid-cols-2 mb-4">
          <TabsTrigger value="pending" className="flex items-center gap-2">
            <Clock className="w-4 h-4" />
            Pendentes ({pendingProposals.length})
          </TabsTrigger>
          <TabsTrigger value="history" className="flex items-center gap-2">
            <CheckCircle2 className="w-4 h-4" />
            Histórico ({proposalHistory.length})
          </TabsTrigger>
        </TabsList>

        <TabsContent value="pending" className="space-y-4">
          {pendingProposals.length === 0 ? (
            <Card className="border-dashed border-2 bg-muted/20">
              <CardContent className="flex flex-col items-center justify-center py-12">
                <div className="w-16 h-16 rounded-2xl bg-primary/10 flex items-center justify-center mb-4">
                  <Sparkles className="w-8 h-8 text-primary" />
                </div>
                <h3 className="text-lg font-semibold text-foreground mb-2">Nenhuma proposta pendente</h3>
                <p className="text-muted-foreground text-sm text-center max-w-sm">
                  Quando você gerar um plano de estudos com IA, ele aparecerá aqui para você revisar e aprovar.
                </p>
              </CardContent>
            </Card>
          ) : (
            pendingProposals.map((proposal) => (
              <ProposalCard key={proposal.id} proposal={proposal} />
            ))
          )}
        </TabsContent>

        <TabsContent value="history" className="space-y-4">
          {proposalHistory.length === 0 ? (
            <Card className="border-dashed border-2 bg-muted/20">
              <CardContent className="flex flex-col items-center justify-center py-12">
                <div className="w-16 h-16 rounded-2xl bg-muted flex items-center justify-center mb-4">
                  <AlertCircle className="w-8 h-8 text-muted-foreground" />
                </div>
                <h3 className="text-lg font-semibold text-foreground mb-2">Histórico vazio</h3>
                <p className="text-muted-foreground text-sm text-center max-w-sm">
                  Seu histórico de propostas aprovadas ou rejeitadas aparecerá aqui.
                </p>
              </CardContent>
            </Card>
          ) : (
            proposalHistory.map((proposal) => (
              <ProposalCard key={proposal.id} proposal={proposal} />
            ))
          )}
        </TabsContent>
      </Tabs>
    </div>
  );
}