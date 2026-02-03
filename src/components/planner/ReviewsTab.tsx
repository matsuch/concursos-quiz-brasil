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
          "flex items-center justify-between p-3.5 rounded-xl border bg-card transition-all hover:shadow-sm",
          review.is_completed && "bg-muted/30 border-muted",
          isOverdue && !review.is_completed && "border-destructive/30 bg-destructive/5"
        )}
      >
        <div className="flex items-center gap-3 min-w-0 flex-1">
          <button
            onClick={() => toggleReview.mutate({ id: review.id, is_completed: !review.is_completed })}
            className="focus:outline-none transition-transform hover:scale-110 flex-shrink-0"
          >
            {review.is_completed ? (
              <CheckCircle2 className="w-5 h-5 text-primary" />
            ) : (
              <Circle className={cn("w-5 h-5 hover:text-primary transition-colors", isOverdue ? "text-destructive" : "text-muted-foreground")} />
            )}
          </button>
          <div className="min-w-0 flex-1">
            <p className={cn("text-sm font-medium truncate", review.is_completed ? "line-through text-muted-foreground" : "text-foreground")}>
              {review.topic_name}
            </p>
            <div className="flex items-center gap-2 text-xs text-muted-foreground mt-0.5 flex-wrap">
              <span className="truncate">{review.subject}</span>
              <span className="hidden sm:inline">-</span>
              <Badge variant="outline" className={cn("text-[10px] px-1.5 py-0 rounded-md", typeInfo.color.replace('bg-', 'border-'))}>
                {typeInfo.label}
              </Badge>
            </div>
          </div>
        </div>
        <div className="flex items-center gap-2 flex-shrink-0 ml-2">
          <span className={cn(
            "text-xs whitespace-nowrap",
            isOverdue && !review.is_completed ? "text-destructive font-medium" : "text-muted-foreground"
          )}>
            {getDateLabel(review.scheduled_date)}
          </span>
          <Button
            variant="ghost"
            size="icon"
            className="h-8 w-8 rounded-lg hover:bg-destructive/10"
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
      {/* Section Header */}
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div className="space-y-1">
          <h2 className="text-xl sm:text-2xl font-semibold text-foreground">Revisões Periódicas</h2>
          <p className="text-sm text-muted-foreground">Agende revisões para fixar o conteúdo estudado</p>
        </div>
        <Dialog open={isAddingReview} onOpenChange={setIsAddingReview}>
          <DialogTrigger asChild>
            <Button size="sm" className="rounded-lg shadow-sm text-sm px-3 py-2 h-auto">
              <Plus className="w-4 h-4 mr-2" />
              <span className="hidden sm:inline">Nova Revisão</span>
              <span className="sm:hidden">Revisão</span>
            </Button>
          </DialogTrigger>
          <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto data-[state=open]:animate-in data-[state=open]:fade-in-0 data-[state=open]:zoom-in-95 data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%]">
            <DialogHeader>
              <DialogTitle className="text-lg font-semibold text-center sm:text-left">
                Agendar Revisão
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
                  <PopoverContent className="w-auto p-0 z-50" align="center" sideOffset={5}>
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
        <Card className="border-0 shadow-sm bg-gradient-to-br from-secondary/5 to-secondary/10 rounded-xl">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2">
              <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-secondary/10">
                <Clock className="w-4 h-4 text-secondary" />
              </div>
              <div>
                <CardTitle className="text-base font-medium text-foreground">Agendamento Rápido</CardTitle>
                <CardDescription className="text-xs">
                  Agende revisões automáticas (24h, 7d, 30d) para tópicos concluídos
                </CardDescription>
              </div>
            </div>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="flex gap-2 flex-wrap">
              {topics.filter(t => t.is_completed).slice(0, 5).map((topic) => (
                <Button
                  key={topic.id}
                  variant="outline"
                  size="sm"
                  className="rounded-lg text-xs h-auto py-1.5 px-3"
                  onClick={() => handleQuickSchedule(topic)}
                  disabled={createReview.isPending}
                >
                  <Bell className="w-3 h-3 mr-1.5" />
                  <span className="truncate max-w-[120px]">{topic.topic}</span>
                </Button>
              ))}
            </div>
          </CardContent>
        </Card>
      )}

      {/* Overdue Reviews */}
      {overdueReviews.length > 0 && (
        <Card className="border-destructive/30 bg-destructive/5 rounded-xl shadow-sm">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2">
              <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-destructive/10">
                <Clock className="w-4 h-4 text-destructive" />
              </div>
              <CardTitle className="text-base font-medium text-destructive">
                Revisões Atrasadas ({overdueReviews.length})
              </CardTitle>
            </div>
          </CardHeader>
          <CardContent className="space-y-2 pt-0">
            {overdueReviews.map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
          </CardContent>
        </Card>
      )}

      {/* Today's Reviews */}
      {todayReviews.length > 0 && (
        <Card className="border shadow-sm rounded-xl">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2">
              <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-primary/10">
                <Calendar className="w-4 h-4 text-primary" />
              </div>
              <CardTitle className="text-base font-medium text-foreground">
                Revisões de Hoje ({todayReviews.length})
              </CardTitle>
            </div>
          </CardHeader>
          <CardContent className="space-y-2 pt-0">
            {todayReviews.map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
          </CardContent>
        </Card>
      )}

      {/* Upcoming Reviews */}
      {upcomingReviews.length > 0 && (
        <Card className="border shadow-sm rounded-xl">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2">
              <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-muted">
                <Bell className="w-4 h-4 text-muted-foreground" />
              </div>
              <CardTitle className="text-base font-medium text-foreground">
                Próximas Revisões ({upcomingReviews.length})
              </CardTitle>
            </div>
          </CardHeader>
          <CardContent className="space-y-2 pt-0">
            {upcomingReviews.slice(0, 10).map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
            {upcomingReviews.length > 10 && (
              <p className="text-xs text-muted-foreground text-center py-2">
                +{upcomingReviews.length - 10} revisões agendadas
              </p>
            )}
          </CardContent>
        </Card>
      )}

      {/* Completed Reviews */}
      {completedReviews.length > 0 && (
        <Card className="border shadow-sm rounded-xl bg-muted/20">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2">
              <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-primary/10">
                <CheckCircle2 className="w-4 h-4 text-primary" />
              </div>
              <CardTitle className="text-base font-medium text-foreground">
                Revisões Concluídas ({completedReviews.length})
              </CardTitle>
            </div>
          </CardHeader>
          <CardContent className="space-y-2 pt-0">
            {completedReviews.slice(0, 5).map((review) => (
              <ReviewCard key={review.id} review={review} />
            ))}
            {completedReviews.length > 5 && (
              <p className="text-xs text-muted-foreground text-center py-2">
                +{completedReviews.length - 5} revisões concluídas
              </p>
            )}
          </CardContent>
        </Card>
      )}

      {/* Empty State */}
      {reviews.length === 0 && (
        <Card className="border-dashed border-2 bg-muted/20 rounded-xl">
          <CardContent className="flex flex-col items-center justify-center py-14">
            <div className="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center mb-4">
              <Bell className="w-7 h-7 text-primary" />
            </div>
            <h3 className="text-lg font-semibold text-foreground mb-1">Nenhuma revisão agendada</h3>
            <p className="text-muted-foreground text-sm text-center mb-5 max-w-sm">
              Agende revisões periódicas para fixar melhor o conteúdo estudado.
            </p>
            <Dialog open={isAddingReview} onOpenChange={setIsAddingReview}>
              <DialogTrigger asChild>
                <Button className="rounded-lg shadow-sm">
                  <Plus className="w-4 h-4 mr-2" />
                  Agendar Primeira Revisão
                </Button>
              </DialogTrigger>
              <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto data-[state=open]:animate-in data-[state=open]:fade-in-0 data-[state=open]:zoom-in-95 data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=closed]:zoom-out-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%]">
                <DialogHeader>
                  <DialogTitle className="text-lg font-semibold text-center sm:text-left">
                    Agendar Revisão
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
                      <PopoverContent className="w-auto p-0 z-50" align="center" sideOffset={5}>
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
          </CardContent>
        </Card>
      )}
    </div>
  );
}