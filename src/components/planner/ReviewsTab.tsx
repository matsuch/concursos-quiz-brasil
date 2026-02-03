import { useState } from 'react';
import { Plus, Trash2, CheckCircle2, Circle, Calendar, Clock, Bell } from 'lucide-react';
import { format, isToday, isTomorrow, isPast, addDays } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Calendar as CalendarComponent } from '@/components/ui/calendar';
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover';
import { useStudyPlanner, StudyReview } from '@/hooks/useStudyPlanner';
import { cn } from '@/lib/utils';

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

const REVIEW_TYPES = [
  { value: '24h', label: '24 horas', days: 1, color: 'bg-blue-500' },
  { value: '7d', label: '7 dias', days: 7, color: 'bg-green-500' },
  { value: '30d', label: '30 dias', days: 30, color: 'bg-purple-500' },
];

export function ReviewsTab() {
  const { reviews, topics, createReview, toggleReview, deleteReview } = useStudyPlanner();
  const [isAddingReview, setIsAddingReview] = useState(false);
  const [newSubject, setNewSubject] = useState('');
  const [newTopicName, setNewTopicName] = useState('');
  const [newReviewType, setNewReviewType] = useState<'24h' | '7d' | '30d'>('24h');
  const [selectedDate, setSelectedDate] = useState<Date>();

  // Separate reviews by status
  const todayReviews = reviews.filter(r => isToday(new Date(r.scheduled_date)) && !r.is_completed);
  const upcomingReviews = reviews.filter(r => !isPast(new Date(r.scheduled_date)) && !isToday(new Date(r.scheduled_date)) && !r.is_completed);
  const overdueReviews = reviews.filter(r => isPast(new Date(r.scheduled_date)) && !isToday(new Date(r.scheduled_date)) && !r.is_completed);
  const completedReviews = reviews.filter(r => r.is_completed);

  const handleCreateReview = async () => {
    if (!newSubject || !newTopicName.trim() || !selectedDate) return;
    await createReview.mutateAsync({
      subject: newSubject,
      topic_name: newTopicName,
      review_type: newReviewType,
      scheduled_date: format(selectedDate, 'yyyy-MM-dd'),
    });
    setNewSubject('');
    setNewTopicName('');
    setNewReviewType('24h');
    setSelectedDate(undefined);
    setIsAddingReview(false);
  };

  const handleQuickSchedule = async (topic: { subject: string; topic: string }) => {
    const today = new Date();
    // Schedule all 3 review types automatically
    for (const reviewType of REVIEW_TYPES) {
      const scheduledDate = addDays(today, reviewType.days);
      await createReview.mutateAsync({
        subject: topic.subject,
        topic_name: topic.topic,
        review_type: reviewType.value as '24h' | '7d' | '30d',
        scheduled_date: format(scheduledDate, 'yyyy-MM-dd'),
      });
    }
  };

  const getReviewTypeInfo = (type: string) => {
    return REVIEW_TYPES.find(t => t.value === type) || REVIEW_TYPES[0];
  };

  const getDateLabel = (dateStr: string) => {
    const date = new Date(dateStr);
    if (isToday(date)) return 'Hoje';
    if (isTomorrow(date)) return 'Amanhã';
    if (isPast(date)) return 'Atrasada';
    return format(date, "dd 'de' MMM", { locale: ptBR });
  };

  const ReviewCard = ({ review }: { review: StudyReview }) => {
    const typeInfo = getReviewTypeInfo(review.review_type);
    const isOverdue = isPast(new Date(review.scheduled_date)) && !isToday(new Date(review.scheduled_date));

    return (
      <div
        className={cn(
          "flex items-center justify-between p-3 rounded-lg border",
          review.is_completed && "bg-muted/50",
          isOverdue && !review.is_completed && "border-destructive/50 bg-destructive/5"
        )}
      >
        <div className="flex items-center gap-3">
          <button
            onClick={() => toggleReview.mutate({ id: review.id, is_completed: !review.is_completed })}
            className="focus:outline-none"
          >
            {review.is_completed ? (
              <CheckCircle2 className="w-5 h-5 text-primary" />
            ) : (
              <Circle className={cn("w-5 h-5", isOverdue ? "text-destructive" : "text-muted-foreground")} />
            )}
          </button>
          <div>
            <p className={cn("font-medium", review.is_completed && "line-through text-muted-foreground")}>
              {review.topic_name}
            </p>
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <span>{review.subject}</span>
              <span>•</span>
              <Badge variant="outline" className={cn("text-xs", typeInfo.color.replace('bg-', 'border-'))}>
                {typeInfo.label}
              </Badge>
            </div>
          </div>
        </div>
        <div className="flex items-center gap-2">
          <span className={cn(
            "text-sm",
            isOverdue && !review.is_completed ? "text-destructive font-medium" : "text-muted-foreground"
          )}>
            {getDateLabel(review.scheduled_date)}
          </span>
          <Button
            variant="ghost"
            size="icon"
            onClick={() => deleteReview.mutate(review.id)}
          >
            <Trash2 className="w-4 h-4 text-destructive" />
          </Button>
        </div>
      </div>
    );
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div>
          <h2 className="text-2xl font-bold">Revisões Periódicas</h2>
          <p className="text-muted-foreground">Agende revisões para fixar o conteúdo estudado</p>
        </div>
        <Dialog open={isAddingReview} onOpenChange={setIsAddingReview}>
          <DialogTrigger asChild>
            <Button>
              <Plus className="w-4 h-4 mr-2" />
              Nova Revisão
            </Button>
          </DialogTrigger>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Agendar Revisão</DialogTitle>
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
                  value={newTopicName}
                  onChange={(e) => setNewTopicName(e.target.value)}
                  placeholder="Ex: Princípios Fundamentais"
                />
              </div>
              <div>
                <Label>Tipo de Revisão</Label>
                <Select value={newReviewType} onValueChange={(v) => setNewReviewType(v as '24h' | '7d' | '30d')}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {REVIEW_TYPES.map((type) => (
                      <SelectItem key={type.value} value={type.value}>
                        {type.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div>
                <Label>Data da Revisão</Label>
                <Popover>
                  <PopoverTrigger asChild>
                    <Button variant="outline" className="w-full justify-start text-left font-normal">
                      <Calendar className="mr-2 h-4 w-4" />
                      {selectedDate ? format(selectedDate, "dd 'de' MMMM 'de' yyyy", { locale: ptBR }) : "Selecione a data"}
                    </Button>
                  </PopoverTrigger>
                  <PopoverContent className="w-auto p-0" align="start">
                    <CalendarComponent
                      mode="single"
                      selected={selectedDate}
                      onSelect={setSelectedDate}
                      initialFocus
                    />
                  </PopoverContent>
                </Popover>
              </div>
              <Button onClick={handleCreateReview} disabled={createReview.isPending} className="w-full">
                Agendar Revisão
              </Button>
            </div>
          </DialogContent>
        </Dialog>
      </div>

      {/* Quick Schedule from Topics */}
      {topics.filter(t => t.is_completed).length > 0 && (
        <Card>
          <CardHeader className="pb-2">
            <CardTitle className="text-lg flex items-center gap-2">
              <Clock className="w-5 h-5" />
              Agendamento Rápido
            </CardTitle>
            <CardDescription>
              Agende revisões automáticas (24h, 7d, 30d) para tópicos concluídos
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="flex gap-2 flex-wrap">
              {topics.filter(t => t.is_completed).slice(0, 5).map((topic) => (
                <Button
                  key={topic.id}
                  variant="outline"
                  size="sm"
                  onClick={() => handleQuickSchedule(topic)}
                  disabled={createReview.isPending}
                >
                  <Bell className="w-3 h-3 mr-1" />
                  {topic.topic}
                </Button>
              ))}
            </div>
          </CardContent>
        </Card>
      )}

      {/* Overdue Reviews */}
      {overdueReviews.length > 0 && (
        <Card className="border-destructive/50">
          <CardHeader className="pb-2">
            <CardTitle className="text-lg text-destructive flex items-center gap-2">
              <Clock className="w-5 h-5" />
              Revisões Atrasadas ({overdueReviews.length})
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2">
            {overdueReviews.map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
          </CardContent>
        </Card>
      )}

      {/* Today's Reviews */}
      {todayReviews.length > 0 && (
        <Card>
          <CardHeader className="pb-2">
            <CardTitle className="text-lg flex items-center gap-2">
              <Calendar className="w-5 h-5" />
              Revisões de Hoje ({todayReviews.length})
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2">
            {todayReviews.map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
          </CardContent>
        </Card>
      )}

      {/* Upcoming Reviews */}
      {upcomingReviews.length > 0 && (
        <Card>
          <CardHeader className="pb-2">
            <CardTitle className="text-lg flex items-center gap-2">
              <Bell className="w-5 h-5" />
              Próximas Revisões ({upcomingReviews.length})
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2">
            {upcomingReviews.slice(0, 10).map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
            {upcomingReviews.length > 10 && (
              <p className="text-sm text-muted-foreground text-center py-2">
                +{upcomingReviews.length - 10} revisões agendadas
              </p>
            )}
          </CardContent>
        </Card>
      )}

      {/* Completed Reviews */}
      {completedReviews.length > 0 && (
        <Card>
          <CardHeader className="pb-2">
            <CardTitle className="text-lg flex items-center gap-2">
              <CheckCircle2 className="w-5 h-5 text-primary" />
              Revisões Concluídas ({completedReviews.length})
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-2">
            {completedReviews.slice(0, 5).map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
            {completedReviews.length > 5 && (
              <p className="text-sm text-muted-foreground text-center py-2">
                +{completedReviews.length - 5} revisões concluídas
              </p>
            )}
          </CardContent>
        </Card>
      )}

      {reviews.length === 0 && (
        <Card className="border-dashed">
          <CardContent className="flex flex-col items-center justify-center py-12">
            <Bell className="w-12 h-12 text-muted-foreground mb-4" />
            <h3 className="text-lg font-medium mb-2">Nenhuma revisão agendada</h3>
            <p className="text-muted-foreground text-center mb-4">
              Agende revisões periódicas para fixar melhor o conteúdo estudado.
            </p>
            <Button onClick={() => setIsAddingReview(true)}>
              <Plus className="w-4 h-4 mr-2" />
              Agendar Primeira Revisão
            </Button>
          </CardContent>
        </Card>
      )}
    </div>
  );
}
