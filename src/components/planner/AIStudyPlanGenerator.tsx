import { useState } from 'react';
import { Sparkles, ClipboardPaste, HelpCircle, Loader2, CheckSquare, Square, ArrowLeft, ArrowRight } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Textarea } from '@/components/ui/textarea';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Checkbox } from '@/components/ui/checkbox';
import { Card, CardContent } from '@/components/ui/card';
import { useToast } from '@/hooks/use-toast';
import { supabase } from '@/integrations/supabase/client';
import { useStudyPlanner } from '@/hooks/useStudyPlanner';

interface SuggestedTopic {
  subject: string;
  topic: string;
  subtopic?: string;
  priority: number;
  selected: boolean;
}

type Step = 'method' | 'input' | 'proposal';
type Method = 'edital' | 'questionnaire';

interface QuestionnaireData {
  concurso: string;
  orgao: string;
  cargo: string;
  materias: string;
  horasPorDia: string;
  nivel: string;
}

const initialQuestionnaire: QuestionnaireData = {
  concurso: '',
  orgao: '',
  cargo: '',
  materias: '',
  horasPorDia: '',
  nivel: 'intermediario',
};

export function AIStudyPlanGenerator() {
  const [open, setOpen] = useState(false);
  const [step, setStep] = useState<Step>('method');
  const [method, setMethod] = useState<Method | null>(null);
  const [editalText, setEditalText] = useState('');
  const [questionnaire, setQuestionnaire] = useState<QuestionnaireData>(initialQuestionnaire);
  const [suggestedTopics, setSuggestedTopics] = useState<SuggestedTopic[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [isSaving, setIsSaving] = useState(false);
  const { toast } = useToast();
  const { createTopic } = useStudyPlanner();

  const reset = () => {
    setStep('method');
    setMethod(null);
    setEditalText('');
    setQuestionnaire(initialQuestionnaire);
    setSuggestedTopics([]);
    setIsLoading(false);
    setIsSaving(false);
  };

  const handleOpenChange = (isOpen: boolean) => {
    setOpen(isOpen);
    if (!isOpen) reset();
  };

  const selectMethod = (m: Method) => {
    setMethod(m);
    setStep('input');
  };

  const handleGenerate = async () => {
    setIsLoading(true);
    try {
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) {
        toast({ title: 'Você precisa estar logado', variant: 'destructive' });
        return;
      }

      const body = method === 'edital'
        ? { mode: 'edital', editalText }
        : { mode: 'questionnaire', questionnaire };

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

  const toggleAll = () => {
    const allSelected = suggestedTopics.every(t => t.selected);
    setSuggestedTopics(prev => prev.map(t => ({ ...t, selected: !allSelected })));
  };

  const handleAccept = async () => {
    const selected = suggestedTopics.filter(t => t.selected);
    if (selected.length === 0) {
      toast({ title: 'Selecione ao menos um tópico', variant: 'destructive' });
      return;
    }

    setIsSaving(true);
    try {
      for (const t of selected) {
        await createTopic.mutateAsync({
          subject: t.subject,
          topic: t.topic,
          subtopic: t.subtopic,
          priority: t.priority,
        });
      }
      toast({ title: `${selected.length} tópicos adicionados com sucesso!` });
      handleOpenChange(false);
    } catch {
      toast({ title: 'Erro ao salvar tópicos', variant: 'destructive' });
    } finally {
      setIsSaving(false);
    }
  };

  const canGenerate = method === 'edital'
    ? editalText.trim().length > 20
    : questionnaire.concurso.trim() && questionnaire.cargo.trim();

  const selectedCount = suggestedTopics.filter(t => t.selected).length;

  const priorityLabel = (p: number) => {
    if (p === 3) return { text: 'Alta', className: 'bg-destructive/10 text-destructive' };
    if (p === 2) return { text: 'Média', className: 'bg-yellow-500/10 text-yellow-600' };
    return { text: 'Baixa', className: 'bg-muted text-muted-foreground' };
  };

  // Group suggested topics by subject
  const topicsBySubject = suggestedTopics.reduce((acc, topic, idx) => {
    if (!acc[topic.subject]) acc[topic.subject] = [];
    acc[topic.subject].push({ ...topic, originalIndex: idx });
    return acc;
  }, {} as Record<string, (SuggestedTopic & { originalIndex: number })[]>);

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
            <Card
              className="cursor-pointer border-2 hover:border-primary/50 transition-colors"
              onClick={() => selectMethod('edital')}
            >
              <CardContent className="flex flex-col items-center text-center p-6 gap-3">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center">
                  <ClipboardPaste className="w-6 h-6 text-primary" />
                </div>
                <h3 className="font-semibold text-foreground">Colar Edital</h3>
                <p className="text-sm text-muted-foreground">
                  Cole o texto do edital e a IA extrairá os tópicos automaticamente
                </p>
              </CardContent>
            </Card>
            <Card
              className="cursor-pointer border-2 hover:border-primary/50 transition-colors"
              onClick={() => selectMethod('questionnaire')}
            >
              <CardContent className="flex flex-col items-center text-center p-6 gap-3">
                <div className="w-12 h-12 rounded-xl bg-primary/10 flex items-center justify-center">
                  <HelpCircle className="w-6 h-6 text-primary" />
                </div>
                <h3 className="font-semibold text-foreground">Questionário Guiado</h3>
                <p className="text-sm text-muted-foreground">
                  Responda perguntas e a IA sugerirá tópicos para seu concurso
                </p>
              </CardContent>
            </Card>
          </div>
        )}

        {/* Step 2: Input */}
        {step === 'input' && method === 'edital' && (
          <div className="space-y-4 mt-2">
            <div>
              <Label>Texto do Edital</Label>
              <Textarea
                value={editalText}
                onChange={(e) => setEditalText(e.target.value)}
                placeholder="Cole aqui o conteúdo programático do edital..."
                className="min-h-[200px] mt-1"
              />
              <p className="text-xs text-muted-foreground mt-1">
                Cole o conteúdo programático completo para melhores resultados.
              </p>
            </div>
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
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <Label>Horas disponíveis por dia</Label>
                <Input
                  type="number"
                  min="1"
                  max="16"
                  value={questionnaire.horasPorDia}
                  onChange={(e) => setQuestionnaire(q => ({ ...q, horasPorDia: e.target.value }))}
                  placeholder="Ex: 4"
                  className="mt-1"
                />
              </div>
              <div>
                <Label>Nível atual</Label>
                <Select
                  value={questionnaire.nivel}
                  onValueChange={(v) => setQuestionnaire(q => ({ ...q, nivel: v }))}
                >
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
            </div>
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
            <div className="flex items-center justify-between">
              <p className="text-sm text-muted-foreground">
                {suggestedTopics.length} tópicos sugeridos · {selectedCount} selecionados
              </p>
              <Button variant="ghost" size="sm" onClick={toggleAll} className="text-xs">
                {suggestedTopics.every(t => t.selected) ? 'Desmarcar Todos' : 'Selecionar Todos'}
              </Button>
            </div>

            <div className="space-y-4 max-h-[400px] overflow-y-auto pr-1">
              {Object.entries(topicsBySubject).map(([subject, topics]) => (
                <div key={subject}>
                  <h4 className="text-sm font-semibold text-foreground mb-2 sticky top-0 bg-background py-1">
                    {subject}
                  </h4>
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
                          <Checkbox
                            checked={topic.selected}
                            onCheckedChange={() => toggleTopic(topic.originalIndex)}
                            className="flex-shrink-0"
                          />
                          <div className="flex-1 min-w-0">
                            <p className="text-sm font-medium text-foreground truncate">{topic.topic}</p>
                            {topic.subtopic && (
                              <p className="text-xs text-muted-foreground truncate">{topic.subtopic}</p>
                            )}
                          </div>
                          <span className={`text-xs px-2 py-0.5 rounded-md font-medium flex-shrink-0 ${p.className}`}>
                            {p.text}
                          </span>
                        </div>
                      );
                    })}
                  </div>
                </div>
              ))}
            </div>

            <div className="flex gap-2 pt-2 border-t">
              <Button variant="outline" onClick={() => setStep('input')} className="flex-1">
                <ArrowLeft className="w-4 h-4 mr-2" /> Voltar
              </Button>
              <Button onClick={handleAccept} disabled={selectedCount === 0 || isSaving} className="flex-1">
                {isSaving ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <CheckSquare className="w-4 h-4 mr-2" />}
                {isSaving ? 'Salvando...' : `Aceitar ${selectedCount} Tópicos`}
              </Button>
            </div>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
