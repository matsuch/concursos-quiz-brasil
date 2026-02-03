import { useState } from 'react';
import { Plus, Trash2, CheckCircle2, Circle, ChevronDown, ChevronRight, BookOpen } from 'lucide-react';
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
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div>
          <h2 className="text-2xl font-bold">Controle de Edital</h2>
          <p className="text-muted-foreground">Acompanhe seu progresso em cada tópico do edital</p>
        </div>
        <Dialog open={isAddingTopic} onOpenChange={setIsAddingTopic}>
          <DialogTrigger asChild>
            <Button>
              <Plus className="w-4 h-4 mr-2" />
              Novo Tópico
            </Button>
          </DialogTrigger>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Adicionar Tópico do Edital</DialogTitle>
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

      {/* Progress Overview */}
      <Card>
        <CardHeader className="pb-2">
          <CardTitle className="text-lg">Progresso Geral</CardTitle>
          <CardDescription>
            {completedTopics} de {totalTopics} tópicos concluídos
          </CardDescription>
        </CardHeader>
        <CardContent>
          <Progress value={progressPercentage} className="h-3" />
          <p className="text-sm text-muted-foreground mt-2 text-right">
            {progressPercentage.toFixed(1)}%
          </p>
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
              <Card>
                <CollapsibleTrigger asChild>
                  <CardHeader className="cursor-pointer hover:bg-muted/50 transition-colors">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center gap-3">
                        {isExpanded ? (
                          <ChevronDown className="w-5 h-5 text-muted-foreground" />
                        ) : (
                          <ChevronRight className="w-5 h-5 text-muted-foreground" />
                        )}
                        <div>
                          <CardTitle className="text-base">{subject}</CardTitle>
                          <CardDescription>
                            {completed}/{total} tópicos • {subjectProgress.toFixed(0)}%
                          </CardDescription>
                        </div>
                      </div>
                      <Progress value={subjectProgress} className="w-24 h-2" />
                    </div>
                  </CardHeader>
                </CollapsibleTrigger>
                <CollapsibleContent>
                  <CardContent className="pt-0">
                    <div className="space-y-2">
                      {subjectTopics.map((topic) => (
                        <div
                          key={topic.id}
                          className={`flex items-center justify-between p-3 rounded-lg border ${
                            topic.is_completed ? 'bg-muted/50' : ''
                          }`}
                        >
                          <div className="flex items-center gap-3">
                            <button
                              onClick={() => toggleTopic.mutate({ id: topic.id, is_completed: !topic.is_completed })}
                              className="focus:outline-none"
                            >
                              {topic.is_completed ? (
                                <CheckCircle2 className="w-5 h-5 text-primary" />
                              ) : (
                                <Circle className="w-5 h-5 text-muted-foreground" />
                              )}
                            </button>
                            <div>
                              <p className={`font-medium ${topic.is_completed ? 'line-through text-muted-foreground' : ''}`}>
                                {topic.topic}
                              </p>
                              {topic.subtopic && (
                                <p className="text-sm text-muted-foreground">{topic.subtopic}</p>
                              )}
                            </div>
                          </div>
                          <div className="flex items-center gap-2">
                            {topic.priority === 3 && (
                              <span className="text-xs bg-destructive/10 text-destructive px-2 py-1 rounded">Alta</span>
                            )}
                            {topic.priority === 2 && (
                              <span className="text-xs bg-yellow-500/10 text-yellow-600 px-2 py-1 rounded">Média</span>
                            )}
                            <Button
                              variant="ghost"
                              size="icon"
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

      {topics.length === 0 && (
        <Card className="border-dashed">
          <CardContent className="flex flex-col items-center justify-center py-12">
            <BookOpen className="w-12 h-12 text-muted-foreground mb-4" />
            <h3 className="text-lg font-medium mb-2">Nenhum tópico adicionado</h3>
            <p className="text-muted-foreground text-center mb-4">
              Adicione os tópicos do edital para acompanhar seu progresso de estudos.
            </p>
            <Button onClick={() => setIsAddingTopic(true)}>
              <Plus className="w-4 h-4 mr-2" />
              Adicionar Primeiro Tópico
            </Button>
          </CardContent>
        </Card>
      )}
    </div>
  );
}
