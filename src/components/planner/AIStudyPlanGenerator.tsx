import { useState } from 'react';
import { Sparkles, ClipboardPaste, HelpCircle, Loader2, CheckSquare, ArrowLeft, Calendar, Clock } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Textarea } from '@/components/ui/textarea';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Checkbox } from '@/components/ui/checkbox';
import { Card, CardContent } from '@/components/ui/card';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { useToast } from '@/hooks/use-toast';
import { supabase } from '@/integrations/supabase/client';
import { useStudyPlanner } from '@/hooks/useStudyPlanner';
import { addWeeks, setDay, setHours, setMinutes, addMinutes, startOfWeek, format } from 'date-fns';

interface SuggestedTopic {
  subject: string;
  topic: string;
  subtopic?: string;
  priority: number;
  selected: boolean;
}

interface ScheduleBlock {
  day_of_week: number;
  start_hour: number;
  duration_minutes: number;
  subject: string;
  title: string;
  selected: boolean;
}

type Step = 'method' | 'input' | 'proposal';
type Method = 'edital' | 'questionnaire';

const DAY_NAMES = ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];
const DAY_SHORT = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];

interface QuestionnaireData {
  concurso: string;
  orgao: string;
  cargo: string;
  materias: string;
  horasPorDia: string;
  nivel: string;
  diasSemana: number[];
  duracaoSemanas: number;
  horarioInicio: string;
}

const initialQuestionnaire: QuestionnaireData = {
  concurso: '',
  orgao: '',
  cargo: '',
  materias: '',
  horasPorDia: '4',
  nivel: 'intermediario',
  diasSemana: [1, 2, 3, 4, 5], // Mon-Fri
  duracaoSemanas: 4,
  horarioInicio: '08:00',
};

export function AIStudyPlanGenerator() {
  const [open, setOpen] = useState(false);
  const [step, setStep] = useState<Step>('method');
  const [method, setMethod] = useState<Method | null>(null);
  const [editalText, setEditalText] = useState('');
  const [questionnaire, setQuestionnaire] = useState<QuestionnaireData>(initialQuestionnaire);
  const [suggestedTopics, setSuggestedTopics] = useState<SuggestedTopic[]>([]);
  const [scheduleBlocks, setScheduleBlocks] = useState<ScheduleBlock[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [isSaving, setIsSaving] = useState(false);
  const [proposalTab, setProposalTab] = useState('topics');
  const { toast } = useToast();
  const { createTopic, createCalendarEvent } = useStudyPlanner();

  // Schedule config used for edital mode too
  const [editalSchedule, setEditalSchedule] = useState({
    horasPorDia: '4',
    diasSemana: [1, 2, 3, 4, 5],
    duracaoSemanas: 4,
    horarioInicio: '08:00',
  });

  const reset = () => {
    setStep('method');
    setMethod(null);
    setEditalText('');
    setQuestionnaire(initialQuestionnaire);
    setSuggestedTopics([]);
    setScheduleBlocks([]);
    setIsLoading(false);
    setIsSaving(false);
    setProposalTab('topics');
    setEditalSchedule({ horasPorDia: '4', diasSemana: [1, 2, 3, 4, 5], duracaoSemanas: 4, horarioInicio: '08:00' });
  };

  const handleOpenChange = (isOpen: boolean) => {
    setOpen(isOpen);
    if (!isOpen) reset();
  };

  const selectMethod = (m: Method) => {
    setMethod(m);
    setStep('input');
  };

  const toggleDay = (day: number, isEdital: boolean) => {
    if (isEdital) {
      setEditalSchedule(prev => ({
        ...prev,
        diasSemana: prev.diasSemana.includes(day)
          ? prev.diasSemana.filter(d => d !== day)
          : [...prev.diasSemana, day].sort(),
      }));
    } else {
      setQuestionnaire(prev => ({
        ...prev,
        diasSemana: prev.diasSemana.includes(day)
          ? prev.diasSemana.filter(d => d !== day)
          : [...prev.diasSemana, day].sort(),
      }));
    }
  };

  const handleGenerate = async () => {
    setIsLoading(true);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) {
        toast({ title: 'Você precisa estar logado', variant: 'destructive' });
        return;
      }

      const scheduleData = method === 'edital' ? editalSchedule : {
        horasPorDia: questionnaire.horasPorDia,
        diasSemana: questionnaire.diasSemana.map(d => DAY_NAMES[d]),
        duracaoSemanas: questionnaire.duracaoSemanas,
        horarioInicio: questionnaire.horarioInicio,
      };

      const body = method === 'edital'
        ? {
            mode: 'edital',
            editalText,
            questionnaire: {
              ...editalSchedule,
              diasSemana: editalSchedule.diasSemana.map(d => DAY_NAMES[d]),
            },
          }
        : {
            mode: 'questionnaire',
            questionnaire: {
              ...questionnaire,
              diasSemana: questionnaire.diasSemana.map(d => DAY_NAMES[d]),
            },
          };

      const response = await fetch(
        `${import.meta.env.VITE_SUPABASE_URL}/functions/v1/generate-study-plan`,
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            Authorization: `Bearer ${session.access_token}`,
          },
          body: JSON.stringify(body),
        }
      );

      if (!response.ok) {
        const err = await response.json();
        throw new Error(err.error || 'Erro ao gerar plano');
      }

      const data = await response.json();
      setSuggestedTopics(
        (data.topics || []).map((t: any) => ({ ...t, selected: true }))
      );
      setScheduleBlocks(
        (data.schedule || []).map((s: any) => ({ ...s, selected: true }))
      );
      setStep('proposal');
    } catch (e: any) {
      toast({ title: e.message || 'Erro ao gerar plano de estudos', variant: 'destructive' });
    } finally {
      setIsLoading(false);
    }
  };

  const toggleTopic = (index: number) => {
    setSuggestedTopics(prev =>
      prev.map((t, i) => (i === index ? { ...t, selected: !t.selected } : t))
    );
  };

  const toggleScheduleBlock = (index: number) => {
    setScheduleBlocks(prev =>
      prev.map((s, i) => (i === index ? { ...s, selected: !s.selected } : s))
    );
  };

  const toggleAllTopics = () => {
    const allSelected = suggestedTopics.every(t => t.selected);
    setSuggestedTopics(prev => prev.map(t => ({ ...t, selected: !allSelected })));
  };

  const toggleAllSchedule = () => {
    const allSelected = scheduleBlocks.every(s => s.selected);
    setScheduleBlocks(prev => prev.map(s => ({ ...s, selected: !allSelected })));
  };

  const handleAccept = async () => {
    const selectedTopics = suggestedTopics.filter(t => t.selected);
    const selectedSchedule = scheduleBlocks.filter(s => s.selected);

    if (selectedTopics.length === 0 && selectedSchedule.length === 0) {
      toast({ title: 'Selecione ao menos um tópico ou evento', variant: 'destructive' });
      return;
    }

    setIsSaving(true);
    try {
      // Create topics
      for (const t of selectedTopics) {
        await createTopic.mutateAsync({
          subject: t.subject,
          topic: t.topic,
          subtopic: t.subtopic,
          priority: t.priority,
        });
      }

      // Create calendar events
      const weeksCount = method === 'edital' ? editalSchedule.duracaoSemanas : questionnaire.duracaoSemanas;
      const now = new Date();
      const weekStart = startOfWeek(now, { weekStartsOn: 0 });

      for (const block of selectedSchedule) {
        for (let week = 0; week < weeksCount; week++) {
          const baseDate = addWeeks(weekStart, week);
          const eventDay = setDay(baseDate, block.day_of_week, { weekStartsOn: 0 });
          
          // Skip past dates
          if (eventDay < now && week === 0) continue;

          const startTime = setMinutes(setHours(eventDay, block.start_hour), 0);
          const endTime = addMinutes(startTime, block.duration_minutes);

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

          await createCalendarEvent.mutateAsync({
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

      const totalItems = selectedTopics.length + selectedSchedule.length * weeksCount;
      toast({ title: `Plano criado! ${selectedTopics.length} tópicos e ${selectedSchedule.length * weeksCount} eventos adicionados.` });
      handleOpenChange(false);
    } catch {
      toast({ title: 'Erro ao salvar plano', variant: 'destructive' });
    } finally {
      setIsSaving(false);
    }
  };

  const canGenerate = method === 'edital'
    ? editalText.trim().length > 20
    : questionnaire.concurso.trim() && questionnaire.cargo.trim();

  const selectedTopicCount = suggestedTopics.filter(t => t.selected).length;
  const selectedScheduleCount = scheduleBlocks.filter(s => s.selected).length;

  const priorityLabel = (p: number) => {
    if (p === 3) return { text: 'Alta', className: 'bg-destructive/10 text-destructive' };
    if (p === 2) return { text: 'Média', className: 'bg-yellow-500/10 text-yellow-600' };
    return { text: 'Baixa', className: 'bg-muted text-muted-foreground' };
  };

  const topicsBySubject = suggestedTopics.reduce((acc, topic, idx) => {
    if (!acc[topic.subject]) acc[topic.subject] = [];
    acc[topic.subject].push({ ...topic, originalIndex: idx });
    return acc;
  }, {} as Record<string, (SuggestedTopic & { originalIndex: number })[]>);

  const scheduleByDay = scheduleBlocks.reduce((acc, block, idx) => {
    if (!acc[block.day_of_week]) acc[block.day_of_week] = [];
    acc[block.day_of_week].push({ ...block, originalIndex: idx });
    return acc;
  }, {} as Record<number, (ScheduleBlock & { originalIndex: number })[]>);

  const ScheduleFields = ({ isEdital }: { isEdital: boolean }) => {
    const data = isEdital ? editalSchedule : questionnaire;
    const setData = isEdital
      ? (fn: (prev: typeof editalSchedule) => typeof editalSchedule) => setEditalSchedule(fn)
      : (fn: (prev: QuestionnaireData) => QuestionnaireData) => setQuestionnaire(fn as any);

    return (
      <div className="space-y-4 border-t pt-4 mt-4">
        <h4 className="text-sm font-semibold text-foreground flex items-center gap-2">
          <Calendar className="w-4 h-4 text-primary" />
          Configuração do Cronograma
        </h4>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div>
            <Label>Horas por dia</Label>
            <Input
              type="number"
              min="1"
              max="16"
              value={data.horasPorDia}
              onChange={(e) => setData((prev: any) => ({ ...prev, horasPorDia: e.target.value }))}
              placeholder="Ex: 4"
              className="mt-1"
            />
          </div>
          <div>
            <Label>Horário de início</Label>
            <Input
              type="time"
              value={data.horarioInicio}
              onChange={(e) => setData((prev: any) => ({ ...prev, horarioInicio: e.target.value }))}
              className="mt-1"
            />
          </div>
        </div>
        <div>
          <Label>Dias da semana disponíveis</Label>
          <div className="flex flex-wrap gap-2 mt-2">
            {DAY_SHORT.map((day, idx) => {
              const isSelected = data.diasSemana.includes(idx);
              return (
                <button
                  key={idx}
                  type="button"
                  onClick={() => toggleDay(idx, isEdital)}
                  className={`px-3 py-1.5 rounded-lg text-xs font-medium border transition-colors ${
                    isSelected
                      ? 'bg-primary text-primary-foreground border-primary'
                      : 'bg-muted/30 text-muted-foreground border-border hover:bg-muted/50'
                  }`}
                >
                  {day}
                </button>
              );
            })}
          </div>
        </div>
        <div>
          <Label>Duração do plano (semanas)</Label>
          <Select
            value={String(data.duracaoSemanas)}
            onValueChange={(v) => setData((prev: any) => ({ ...prev, duracaoSemanas: Number(v) }))}
          >
            <SelectTrigger className="mt-1">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              {[1, 2, 3, 4, 6, 8, 12].map(w => (
                <SelectItem key={w} value={String(w)}>
                  {w} {w === 1 ? 'semana' : 'semanas'}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>
      </div>
    );
  };

  return (
    <Dialog open={open} onOpenChange={handleOpenChange}>
      <DialogTrigger asChild>
        <Button size="sm" variant="outline" className="rounded-lg shadow-sm text-sm px-3 py-2 h-auto border-primary/30 text-primary hover:bg-primary/5">
          <Sparkles className="w-4 h-4 mr-2" />
          <span className="hidden sm:inline">Gerar com IA</span>
          <span className="sm:hidden">IA</span>
        </Button>
      </DialogTrigger>
      <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-2xl translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="text-lg font-semibold flex items-center gap-2">
            <Sparkles className="w-5 h-5 text-primary" />
            {step === 'method' && 'Gerar Plano de Estudos com IA'}
            {step === 'input' && (method === 'edital' ? 'Colar Texto do Edital' : 'Questionário Guiado')}
            {step === 'proposal' && 'Proposta de Plano de Estudos'}
          </DialogTitle>
        </DialogHeader>

        {/* Step 1: Method Selection */}
        {step === 'method' && (
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mt-2">
            <Card className="cursor-pointer border-2 hover:border-primary/50 transition-colors" onClick={() => selectMethod('edital')}>
              <CardContent className="flex flex-col items-center text-center p-6 gap-3">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center">
                  <ClipboardPaste className="w-6 h-6 text-primary" />
                </div>
                <h3 className="font-semibold text-foreground">Colar Edital</h3>
                <p className="text-sm text-muted-foreground">Cole o texto do edital e a IA extrairá os tópicos e criará um cronograma</p>
              </CardContent>
            </Card>
            <Card className="cursor-pointer border-2 hover:border-primary/50 transition-colors" onClick={() => selectMethod('questionnaire')}>
              <CardContent className="flex flex-col items-center text-center p-6 gap-3">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center">
                  <HelpCircle className="w-6 h-6 text-primary" />
                </div>
                <h3 className="font-semibold text-foreground">Questionário Guiado</h3>
                <p className="text-sm text-muted-foreground">Responda perguntas e a IA sugerirá tópicos e cronograma para seu concurso</p>
              </CardContent>
            </Card>
          </div>
        )}

        {/* Step 2: Input - Edital */}
        {step === 'input' && method === 'edital' && (
          <div className="space-y-4 mt-2">
            <div>
              <Label>Texto do Edital</Label>
              <Textarea
                value={editalText}
                onChange={(e) => setEditalText(e.target.value)}
                placeholder="Cole aqui o conteúdo programático do edital..."
                className="min-h-[160px] mt-1"
              />
              <p className="text-xs text-muted-foreground mt-1">Cole o conteúdo programático completo para melhores resultados.</p>
            </div>
            <ScheduleFields isEdital={true} />
            <div className="flex gap-2">
              <Button variant="outline" onClick={() => setStep('method')} className="flex-1">
                <ArrowLeft className="w-4 h-4 mr-2" /> Voltar
              </Button>
              <Button onClick={handleGenerate} disabled={!canGenerate || isLoading} className="flex-1">
                {isLoading ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <Sparkles className="w-4 h-4 mr-2" />}
                {isLoading ? 'Analisando...' : 'Analisar Edital'}
              </Button>
            </div>
          </div>
        )}

        {/* Step 2: Input - Questionnaire */}
        {step === 'input' && method === 'questionnaire' && (
          <div className="space-y-4 mt-2">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <Label>Nome do Concurso *</Label>
                <Input
                  value={questionnaire.concurso}
                  onChange={(e) => setQuestionnaire(q => ({ ...q, concurso: e.target.value }))}
                  placeholder="Ex: Concurso INSS 2025"
                  className="mt-1"
                />
              </div>
              <div>
                <Label>Órgão</Label>
                <Input
                  value={questionnaire.orgao}
                  onChange={(e) => setQuestionnaire(q => ({ ...q, orgao: e.target.value }))}
                  placeholder="Ex: INSS"
                  className="mt-1"
                />
              </div>
            </div>
            <div>
              <Label>Cargo *</Label>
              <Input
                value={questionnaire.cargo}
                onChange={(e) => setQuestionnaire(q => ({ ...q, cargo: e.target.value }))}
                placeholder="Ex: Técnico do Seguro Social"
                className="mt-1"
              />
            </div>
            <div>
              <Label>Matérias que você sabe que caem</Label>
              <Input
                value={questionnaire.materias}
                onChange={(e) => setQuestionnaire(q => ({ ...q, materias: e.target.value }))}
                placeholder="Ex: Português, Direito Constitucional, Informática"
                className="mt-1"
              />
            </div>
            <div>
              <Label>Nível atual</Label>
              <Select value={questionnaire.nivel} onValueChange={(v) => setQuestionnaire(q => ({ ...q, nivel: v }))}>
                <SelectTrigger className="mt-1">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="iniciante">Iniciante</SelectItem>
                  <SelectItem value="intermediario">Intermediário</SelectItem>
                  <SelectItem value="avancado">Avançado</SelectItem>
                </SelectContent>
              </Select>
            </div>
            <ScheduleFields isEdital={false} />
            <div className="flex gap-2">
              <Button variant="outline" onClick={() => setStep('method')} className="flex-1">
                <ArrowLeft className="w-4 h-4 mr-2" /> Voltar
              </Button>
              <Button onClick={handleGenerate} disabled={!canGenerate || isLoading} className="flex-1">
                {isLoading ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <Sparkles className="w-4 h-4 mr-2" />}
                {isLoading ? 'Gerando...' : 'Gerar Plano'}
              </Button>
            </div>
          </div>
        )}

        {/* Step 3: Proposal */}
        {step === 'proposal' && (
          <div className="space-y-4 mt-2">
            <Tabs value={proposalTab} onValueChange={setProposalTab}>
              <TabsList className="w-full">
                <TabsTrigger value="topics" className="flex-1 gap-1.5">
                  <Sparkles className="w-3.5 h-3.5" />
                  Tópicos ({selectedTopicCount}/{suggestedTopics.length})
                </TabsTrigger>
                <TabsTrigger value="schedule" className="flex-1 gap-1.5">
                  <Calendar className="w-3.5 h-3.5" />
                  Cronograma ({selectedScheduleCount}/{scheduleBlocks.length})
                </TabsTrigger>
              </TabsList>

              <TabsContent value="topics" className="mt-3">
                <div className="flex items-center justify-between mb-3">
                  <p className="text-sm text-muted-foreground">
                    {suggestedTopics.length} tópicos sugeridos
                  </p>
                  <Button variant="ghost" size="sm" onClick={toggleAllTopics} className="text-xs">
                    {suggestedTopics.every(t => t.selected) ? 'Desmarcar Todos' : 'Selecionar Todos'}
                  </Button>
                </div>
                <div className="space-y-4 max-h-[350px] overflow-y-auto pr-1">
                  {Object.entries(topicsBySubject).map(([subject, topics]) => (
                    <div key={subject}>
                      <h4 className="text-sm font-semibold text-foreground mb-2 sticky top-0 bg-background py-1">{subject}</h4>
                      <div className="space-y-1.5">
                        {topics.map((topic) => {
                          const p = priorityLabel(topic.priority);
                          return (
                            <div
                              key={topic.originalIndex}
                              className={`flex items-center gap-3 p-2.5 rounded-lg border transition-colors cursor-pointer ${
                                topic.selected ? 'bg-primary/5 border-primary/20' : 'bg-muted/20 border-muted opacity-60'
                              }`}
                              onClick={() => toggleTopic(topic.originalIndex)}
                            >
                              <Checkbox checked={topic.selected} onCheckedChange={() => toggleTopic(topic.originalIndex)} className="flex-shrink-0" />
                              <div className="flex-1 min-w-0">
                                <p className="text-sm font-medium text-foreground truncate">{topic.topic}</p>
                                {topic.subtopic && <p className="text-xs text-muted-foreground truncate">{topic.subtopic}</p>}
                              </div>
                              <span className={`text-xs px-2 py-0.5 rounded-md font-medium flex-shrink-0 ${p.className}`}>{p.text}</span>
                            </div>
                          );
                        })}
                      </div>
                    </div>
                  ))}
                </div>
              </TabsContent>

              <TabsContent value="schedule" className="mt-3">
                <div className="flex items-center justify-between mb-3">
                  <p className="text-sm text-muted-foreground">
                    {scheduleBlocks.length} blocos semanais · repetidos por{' '}
                    {method === 'edital' ? editalSchedule.duracaoSemanas : questionnaire.duracaoSemanas} semanas
                  </p>
                  <Button variant="ghost" size="sm" onClick={toggleAllSchedule} className="text-xs">
                    {scheduleBlocks.every(s => s.selected) ? 'Desmarcar Todos' : 'Selecionar Todos'}
                  </Button>
                </div>
                <div className="space-y-4 max-h-[350px] overflow-y-auto pr-1">
                  {Object.entries(scheduleByDay)
                    .sort(([a], [b]) => Number(a) - Number(b))
                    .map(([dayStr, blocks]) => (
                      <div key={dayStr}>
                        <h4 className="text-sm font-semibold text-foreground mb-2 sticky top-0 bg-background py-1">
                          {DAY_NAMES[Number(dayStr)]}
                        </h4>
                        <div className="space-y-1.5">
                          {blocks
                            .sort((a, b) => a.start_hour - b.start_hour)
                            .map((block) => (
                              <div
                                key={block.originalIndex}
                                className={`flex items-center gap-3 p-2.5 rounded-lg border transition-colors cursor-pointer ${
                                  block.selected ? 'bg-primary/5 border-primary/20' : 'bg-muted/20 border-muted opacity-60'
                                }`}
                                onClick={() => toggleScheduleBlock(block.originalIndex)}
                              >
                                <Checkbox checked={block.selected} onCheckedChange={() => toggleScheduleBlock(block.originalIndex)} className="flex-shrink-0" />
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
                            ))}
                        </div>
                      </div>
                    ))}
                  {scheduleBlocks.length === 0 && (
                    <p className="text-sm text-muted-foreground text-center py-8">Nenhum bloco de cronograma gerado.</p>
                  )}
                </div>
              </TabsContent>
            </Tabs>

            <div className="flex gap-2 pt-2 border-t">
              <Button variant="outline" onClick={() => setStep('input')} className="flex-1">
                <ArrowLeft className="w-4 h-4 mr-2" /> Voltar
              </Button>
              <Button onClick={handleAccept} disabled={(selectedTopicCount === 0 && selectedScheduleCount === 0) || isSaving} className="flex-1">
                {isSaving ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <CheckSquare className="w-4 h-4 mr-2" />}
                {isSaving ? 'Salvando...' : `Aceitar Plano`}
              </Button>
            </div>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
