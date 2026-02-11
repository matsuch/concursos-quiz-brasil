import { useState } from 'react';
import { Plus, Trash2, CheckCircle2, Circle, ChevronDown, ChevronRight, BookOpen } from 'lucide-react';
import { AIStudyPlanGenerator } from './AIStudyPlanGenerator';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Progress } from '@/components/ui/progress';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Collapsible, CollapsibleContent, CollapsibleTrigger } from '@/components/ui/collapsible';
import { useStudyPlanner, EditalTopic } from '@/hooks/useStudyPlanner';

const SUBJECTS = [
  'Direito Constitucional',
  'Direito Administrativo',
  'Português',
  'Raciocínio Lógico',
  'Atualidades',
  'Informática',
  'Direito Penal',
  'Direito Civil',
  'AFO',
  'Contabilidade',
];

export function EditalControlTab() {
  const { topics, createTopic, toggleTopic, deleteTopic } = useStudyPlanner();
  const [isAddingTopic, setIsAddingTopic] = useState(false);
  const [newSubject, setNewSubject] = useState('');
  const [newTopic, setNewTopic] = useState('');
  const [newSubtopic, setNewSubtopic] = useState('');
  const [newPriority, setNewPriority] = useState(1);
  const [expandedSubjects, setExpandedSubjects] = useState<string[]>([]);

  // Group topics by subject
  const topicsBySubject = topics.reduce((acc, topic) => {
    if (!acc[topic.subject]) {
      acc[topic.subject] = [];
    }
    acc[topic.subject].push(topic);
    return acc;
  }, {} as Record<string, EditalTopic[]>);

  const totalTopics = topics.length;
  const completedTopics = topics.filter(t => t.is_completed).length;
  const progressPercentage = totalTopics > 0 ? (completedTopics / totalTopics) * 100 : 0;

  const toggleSubject = (subject: string) => {
    setExpandedSubjects(prev =>
      prev.includes(subject)
        ? prev.filter(s => s !== subject)
        : [...prev, subject]
    );
  };

  const handleCreateTopic = async () => {
    if (!newSubject || !newTopic.trim()) return;
    await createTopic.mutateAsync({
      subject: newSubject,
      topic: newTopic,
      subtopic: newSubtopic || undefined,
      priority: newPriority,
    });
    setNewTopic('');
    setNewSubtopic('');
    setNewPriority(1);
    setIsAddingTopic(false);
  };

  const getSubjectProgress = (subject: string) => {
    const subjectTopics = topicsBySubject[subject] || [];
    const completed = subjectTopics.filter(t => t.is_completed).length;
    return { completed, total: subjectTopics.length };
  };

  return (
    <div className="space-y-6">
      {/* Section Header */}
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div className="space-y-1">
          <h2 className="text-xl sm:text-2xl font-semibold text-foreground">Controle de Edital</h2>
          <p className="text-sm text-muted-foreground">Acompanhe seu progresso em cada tópico do edital</p>
        </div>
        <div className="flex gap-2">
          <AIStudyPlanGenerator />
          <Dialog open={isAddingTopic} onOpenChange={setIsAddingTopic}>
            <DialogTrigger asChild>
              <Button size="sm" className="rounded-lg shadow-sm text-sm px-3 py-2 h-auto">
                <Plus className="w-4 h-4 mr-2" />
                <span className="hidden sm:inline">Novo Tópico</span>
                <span className="sm:hidden">Tópico</span>
              </Button>
            </DialogTrigger>
          <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto data-[state=open]:animate-in data-[state=open]:fade-in-0 data-[state=open]:zoom-in-95 data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%]">
            <DialogHeader>
              <DialogTitle className="text-lg font-semibold text-center sm:text-left">
                Adicionar Tópico do Edital
              </DialogTitle>
            </DialogHeader>
            <div className="space-y-4">
              <div>
                <Label>Matéria</Label>
                <Select value={newSubject} onValueChange={setNewSubject}>
                  <SelectTrigger>
                    <SelectValue placeholder="Selecione a matéria" />
                  </SelectTrigger>
                  <SelectContent>
                    {SUBJECTS.map((subject) => (
                      <SelectItem key={subject} value={subject}>
                        {subject}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div>
                <Label>Tópico</Label>
                <Input
                  value={newTopic}
                  onChange={(e) => setNewTopic(e.target.value)}
                  placeholder="Ex: Princípios Fundamentais"
                />
              </div>
              <div>
                <Label>Subtópico (opcional)</Label>
                <Input
                  value={newSubtopic}
                  onChange={(e) => setNewSubtopic(e.target.value)}
                  placeholder="Ex: Art. 1º ao 4º"
                />
              </div>
              <div>
                <Label>Prioridade</Label>
                <Select value={String(newPriority)} onValueChange={(v) => setNewPriority(Number(v))}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="3">Alta</SelectItem>
                    <SelectItem value="2">Média</SelectItem>
                    <SelectItem value="1">Baixa</SelectItem>
                  </SelectContent>
                </Select>
              </div>
              <Button onClick={handleCreateTopic} disabled={createTopic.isPending} className="w-full">
                Adicionar Tópico
              </Button>
            </div>
          </DialogContent>
        </Dialog>
        </div>
      </div>

      {/* Progress Overview Card */}
      <Card className="border-0 shadow-sm bg-gradient-to-br from-primary/5 to-primary/10 rounded-xl overflow-hidden">
        <CardHeader className="pb-3">
          <div className="flex items-center justify-between">
            <div className="space-y-1">
              <CardTitle className="text-base font-medium text-foreground">Progresso Geral</CardTitle>
              <CardDescription className="text-sm">
                {completedTopics} de {totalTopics} tópicos concluídos
              </CardDescription>
            </div>
            <div className="text-2xl font-bold text-primary">
              {progressPercentage.toFixed(0)}%
            </div>
          </div>
        </CardHeader>
        <CardContent className="pt-0">
          <Progress value={progressPercentage} className="h-2.5 bg-primary/20" />
        </CardContent>
      </Card>

      {/* Topics by Subject */}
      <div className="space-y-3">
        {Object.entries(topicsBySubject).map(([subject, subjectTopics]) => {
          const { completed, total } = getSubjectProgress(subject);
          const isExpanded = expandedSubjects.includes(subject);
          const subjectProgress = total > 0 ? (completed / total) * 100 : 0;

          return (
            <Collapsible key={subject} open={isExpanded} onOpenChange={() => toggleSubject(subject)}>
              <Card className="border shadow-sm rounded-xl overflow-hidden">
                <CollapsibleTrigger asChild>
                  <CardHeader className="cursor-pointer hover:bg-muted/30 transition-colors py-4">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center gap-3">
                        <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-muted">
                          {isExpanded ? (
                            <ChevronDown className="w-4 h-4 text-muted-foreground" />
                          ) : (
                            <ChevronRight className="w-4 h-4 text-muted-foreground" />
                          )}
                        </div>
                        <div>
                          <CardTitle className="text-sm font-medium text-foreground">{subject}</CardTitle>
                          <CardDescription className="text-xs">
                            {completed}/{total} tópicos - {subjectProgress.toFixed(0)}%
                          </CardDescription>
                        </div>
                      </div>
                      <Progress value={subjectProgress} className="w-20 h-1.5 hidden sm:block" />
                    </div>
                  </CardHeader>
                </CollapsibleTrigger>
                <CollapsibleContent>
                  <CardContent className="pt-0 pb-4">
                    <div className="space-y-2">
                      {subjectTopics.map((topic) => (
                        <div
                          key={topic.id}
                          className={`flex items-center justify-between p-3 rounded-xl border transition-colors ${
                            topic.is_completed ? 'bg-muted/30 border-muted' : 'bg-card hover:bg-muted/20'
                          }`}
                        >
                          <div className="flex items-center gap-3 min-w-0 flex-1">
                            <button
                              onClick={() => toggleTopic.mutate({ id: topic.id, is_completed: !topic.is_completed })}
                              className="focus:outline-none transition-transform hover:scale-110 flex-shrink-0"
                            >
                              {topic.is_completed ? (
                                <CheckCircle2 className="w-5 h-5 text-primary" />
                              ) : (
                                <Circle className="w-5 h-5 text-muted-foreground hover:text-primary" />
                              )}
                            </button>
                            <div className="min-w-0 flex-1">
                              <p className={`text-sm font-medium truncate ${topic.is_completed ? 'line-through text-muted-foreground' : 'text-foreground'}`}>
                                {topic.topic}
                              </p>
                              {topic.subtopic && (
                                <p className="text-xs text-muted-foreground mt-0.5 truncate">{topic.subtopic}</p>
                              )}
                            </div>
                          </div>
                          <div className="flex items-center gap-2 flex-shrink-0 ml-2">
                            {topic.priority === 3 && (
                              <span className="text-xs bg-destructive/10 text-destructive px-2 py-0.5 rounded-md font-medium hidden sm:inline">
                                Alta
                              </span>
                            )}
                            {topic.priority === 2 && (
                              <span className="text-xs bg-yellow-500/10 text-yellow-600 px-2 py-0.5 rounded-md font-medium hidden sm:inline">
                                Média
                              </span>
                            )}
                            <Button
                              variant="ghost"
                              size="icon"
                              className="h-8 w-8 rounded-lg hover:bg-destructive/10"
                              onClick={() => deleteTopic.mutate(topic.id)}
                            >
                              <Trash2 className="w-4 h-4 text-destructive" />
                            </Button>
                          </div>
                        </div>
                      ))}
                    </div>
                  </CardContent>
                </CollapsibleContent>
              </Card>
            </Collapsible>
          );
        })}
      </div>

      {/* Empty State */}
      {topics.length === 0 && (
        <Card className="border-dashed border-2 bg-muted/20 rounded-xl">
          <CardContent className="flex flex-col items-center justify-center py-14">
            <div className="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center mb-4">
              <BookOpen className="w-7 h-7 text-primary" />
            </div>
            <h3 className="text-lg font-semibold text-foreground mb-1">Nenhum tópico adicionado</h3>
            <p className="text-muted-foreground text-sm text-center mb-5 max-w-sm">
              Adicione os tópicos do edital para acompanhar seu progresso de estudos.
            </p>
            <Dialog open={isAddingTopic} onOpenChange={setIsAddingTopic}>
              <DialogTrigger asChild>
                <Button className="rounded-lg shadow-sm">
                  <Plus className="w-4 h-4 mr-2" />
                  Adicionar Primeiro Tópico
                </Button>
              </DialogTrigger>
              <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto data-[state=open]:animate-in data-[state=open]:fade-in-0 data-[state=open]:zoom-in-95 data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%]">
                <DialogHeader>
                  <DialogTitle className="text-lg font-semibold text-center sm:text-left">
                    Adicionar Tópico do Edital
                  </DialogTitle>
                </DialogHeader>
                <div className="space-y-4">
                  <div>
                    <Label>Matéria</Label>
                    <Select value={newSubject} onValueChange={setNewSubject}>
                      <SelectTrigger>
                        <SelectValue placeholder="Selecione a matéria" />
                      </SelectTrigger>
                      <SelectContent>
                        {SUBJECTS.map((subject) => (
                          <SelectItem key={subject} value={subject}>
                            {subject}
                          </SelectItem>
                        ))}
                      </SelectContent>
                    </Select>
                  </div>
                  <div>
                    <Label>Tópico</Label>
                    <Input
                      value={newTopic}
                      onChange={(e) => setNewTopic(e.target.value)}
                      placeholder="Ex: Princípios Fundamentais"
                    />
                  </div>
                  <div>
                    <Label>Subtópico (opcional)</Label>
                    <Input
                      value={newSubtopic}
                      onChange={(e) => setNewSubtopic(e.target.value)}
                      placeholder="Ex: Art. 1º ao 4º"
                    />
                  </div>
                  <div>
                    <Label>Prioridade</Label>
                    <Select value={String(newPriority)} onValueChange={(v) => setNewPriority(Number(v))}>
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="3">Alta</SelectItem>
                        <SelectItem value="2">Média</SelectItem>
                        <SelectItem value="1">Baixa</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                  <Button onClick={handleCreateTopic} disabled={createTopic.isPending} className="w-full">
                    Adicionar Tópico
                  </Button>
                </div>
              </DialogContent>
            </Dialog>
          </CardContent>
        </Card>
      )}
    </div>
  );
}