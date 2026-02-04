import { useState, useMemo } from 'react';
import { format, startOfWeek, endOfWeek, addDays, isSameDay, isToday, parseISO, startOfDay, addHours } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { Calendar, Clock, Plus, Trash2, Edit2, ChevronLeft, ChevronRight, MoreVertical, X } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover';
import { Calendar as CalendarComponent } from '@/components/ui/calendar';
import { useStudyPlanner, StudyCalendarEvent } from '@/hooks/useStudyPlanner';
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

const TIME_SLOTS = [
  '06:00', '07:00', '08:00', '09:00', '10:00', '11:00',
  '12:00', '13:00', '14:00', '15:00', '16:00', '17:00',
  '18:00', '19:00', '20:00', '21:00', '22:00', '23:00'
];

const COLORS = [
  { name: 'Azul', value: '#3b82f6', text: 'text-blue-600', bg: 'bg-blue-500/20', border: 'border-blue-500/30' },
  { name: 'Verde', value: '#22c55e', text: 'text-green-600', bg: 'bg-green-500/20', border: 'border-green-500/30' },
  { name: 'Roxo', value: '#a855f7', text: 'text-purple-600', bg: 'bg-purple-500/20', border: 'border-purple-500/30' },
  { name: 'Laranja', value: '#f97316', text: 'text-orange-600', bg: 'bg-orange-500/20', border: 'border-orange-500/30' },
  { name: 'Rosa', value: '#ec4899', text: 'text-pink-600', bg: 'bg-pink-500/20', border: 'border-pink-500/30' },
  { name: 'Amarelo', value: '#eab308', text: 'text-yellow-600', bg: 'bg-yellow-500/20', border: 'border-yellow-500/30' },
];

export function CalendarTab() {
  const { calendarEvents, createCalendarEvent, updateCalendarEvent, deleteCalendarEvent } = useStudyPlanner();
  const [currentDate, setCurrentDate] = useState(new Date());
  const [view, setView] = useState<'week' | 'month'>('week');
  const [isAddingEvent, setIsAddingEvent] = useState(false);
  const [editingEvent, setEditingEvent] = useState<StudyCalendarEvent | null>(null);
  const [selectedEvent, setSelectedEvent] = useState<StudyCalendarEvent | null>(null);
  
  const [formData, setFormData] = useState({
    title: '',
    subject: '',
    start_date: format(new Date(), 'yyyy-MM-dd'),
    start_time: '09:00',
    end_time: '10:00',
    color: COLORS[0].value,
    notes: '',
    is_recurring: false,
    recurrence_rule: 'none',
  });

  // Calcular semana atual
  const weekStart = startOfWeek(currentDate, { weekStartsOn: 0 });
  const weekEnd = endOfWeek(currentDate, { weekStartsOn: 0 });
  const weekDays = Array.from({ length: 7 }).map((_, i) => addDays(weekStart, i));

  // Filtrar eventos da semana
  const weekEvents = useMemo(() => {
    return calendarEvents?.filter(event => {
      const eventDate = parseISO(event.start_time);
      return eventDate >= weekStart && eventDate <= weekEnd;
    }) || [];
  }, [calendarEvents, weekStart, weekEnd]);

  // Agrupar eventos por dia e hora
  const eventsByDayAndTime = useMemo(() => {
    const eventsByDay: Record<string, Record<string, StudyCalendarEvent[]>> = {};
    
    weekDays.forEach(day => {
      const dayKey = format(day, 'yyyy-MM-dd');
      eventsByDay[dayKey] = {};
      
      TIME_SLOTS.forEach(time => {
        eventsByDay[dayKey][time] = weekEvents.filter(event => {
          const eventDate = parseISO(event.start_time);
          const eventTime = format(eventDate, 'HH:00');
          return isSameDay(eventDate, day) && eventTime === time;
        });
      });
    });
    
    return eventsByDay;
  }, [weekDays, weekEvents]);

  const navigateWeek = (direction: 'prev' | 'next') => {
    setCurrentDate(prev => addDays(prev, direction === 'prev' ? -7 : 7));
  };

  const handleCreateEvent = async () => {
    if (!formData.title.trim()) return;

    const startDateTime = new Date(`${formData.start_date}T${formData.start_time}`);
    const endDateTime = new Date(`${formData.start_date}T${formData.end_time}`);

    try {
      if (editingEvent) {
        await updateCalendarEvent.mutateAsync({
          id: editingEvent.id,
          title: formData.title,
          subject: formData.subject || null,
          start_time: startDateTime.toISOString(),
          end_time: endDateTime.toISOString(),
          color: formData.color,
          notes: formData.notes || null,
          is_recurring: formData.is_recurring,
          recurrence_rule: formData.recurrence_rule === 'none' ? null : formData.recurrence_rule,
        });
      } else {
        await createCalendarEvent.mutateAsync({
          title: formData.title,
          subject: formData.subject || null,
          start_time: startDateTime.toISOString(),
          end_time: endDateTime.toISOString(),
          color: formData.color,
          notes: formData.notes || null,
          is_recurring: formData.is_recurring,
          recurrence_rule: formData.recurrence_rule === 'none' ? null : formData.recurrence_rule,
        });
      }
      
      setIsAddingEvent(false);
      setEditingEvent(null);
      resetForm();
    } catch (error) {
      console.error('Erro ao salvar evento:', error);
    }
  };

  const handleDeleteEvent = async (id: string) => {
    if (window.confirm('Tem certeza que deseja excluir este evento?')) {
      await deleteCalendarEvent.mutateAsync(id);
      setSelectedEvent(null);
    }
  };

  const resetForm = () => {
    setFormData({
      title: '',
      subject: '',
      start_date: format(new Date(), 'yyyy-MM-dd'),
      start_time: '09:00',
      end_time: '10:00',
      color: COLORS[0].value,
      notes: '',
      is_recurring: false,
      recurrence_rule: 'none',
    });
    setEditingEvent(null);
  };

  const getEventsForDay = (day: Date) => {
    return weekEvents.filter(event => 
      isSameDay(parseISO(event.start_time), day)
    );
  };

  const getColorClass = (colorValue: string) => {
    const color = COLORS.find(c => c.value === colorValue) || COLORS[0];
    return color;
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <Card className="border-border/40 bg-card/50 backdrop-blur-sm shadow-sm">
        <CardHeader className="pb-4">
          <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
            <div className="space-y-1">
              <CardTitle className="text-2xl font-bold text-foreground">
                Calendário de Estudos
              </CardTitle>
              <CardDescription className="text-foreground/70">
                Visualize e organize seus horários de estudo na semana
              </CardDescription>
            </div>
            <div className="flex items-center gap-3">
              <div className="flex items-center gap-2">
                <Button
                  variant="outline"
                  size="sm"
                  className="border-border hover:bg-accent"
                  onClick={() => navigateWeek('prev')}
                >
                  <ChevronLeft className="w-4 h-4" />
                  <span className="ml-1 hidden sm:inline">Anterior</span>
                </Button>
                
                <Button
                  variant="outline"
                  size="sm"
                  className="border-border hover:bg-accent"
                  onClick={() => setCurrentDate(new Date())}
                >
                  <span className={cn(
                    "px-2 py-1 rounded text-sm font-medium",
                    isToday(currentDate) 
                      ? "bg-primary text-primary-foreground" 
                      : "bg-muted text-foreground"
                  )}>
                    Hoje
                  </span>
                </Button>
                
                <Button
                  variant="outline"
                  size="sm"
                  className="border-border hover:bg-accent"
                  onClick={() => navigateWeek('next')}
                >
                  <span className="mr-1 hidden sm:inline">Próximo</span>
                  <ChevronRight className="w-4 h-4" />
                </Button>
              </div>
              
              <Dialog open={isAddingEvent} onOpenChange={(open) => {
                setIsAddingEvent(open);
                if (!open) {
                  setEditingEvent(null);
                  resetForm();
                }
              }}>
                <DialogTrigger asChild>
                  <Button className="bg-primary hover:bg-primary/90 shadow-sm">
                    <Plus className="w-4 h-4 mr-2" />
                    Novo Evento
                  </Button>
                </DialogTrigger>
                <DialogContent className="sm:max-w-lg bg-card border-border">
                  <DialogHeader>
                    <DialogTitle className="text-lg font-semibold text-foreground">
                      {editingEvent ? 'Editar Evento' : 'Novo Evento de Estudo'}
                    </DialogTitle>
                  </DialogHeader>
                  <EventForm 
                    formData={formData}
                    setFormData={setFormData}
                    onSubmit={handleCreateEvent}
                    isPending={createCalendarEvent.isPending || updateCalendarEvent.isPending}
                    editingEvent={editingEvent}
                  />
                </DialogContent>
              </Dialog>
            </div>
          </div>
        </CardHeader>
      </Card>

      {/* Calendar View */}
      <Card className="border-border/40 bg-card/50 shadow-sm">
        <CardContent className="p-0">
          {/* Days Header */}
          <div className="grid grid-cols-8 border-b border-border/40">
            {/* Time column header */}
            <div className="p-3 border-r border-border/40 bg-muted/20">
              <div className="h-8"></div>
            </div>
            
            {/* Day headers */}
            {weekDays.map((day, index) => {
              const dayEvents = getEventsForDay(day);
              const isCurrentDay = isToday(day);
              
              return (
                <div 
                  key={index} 
                  className={cn(
                    "p-3 border-r border-border/40 text-center",
                    index === 6 && "border-r-0",
                    isCurrentDay && "bg-primary/10"
                  )}
                >
                  <div className="space-y-1">
                    <div className={cn(
                      "text-sm font-medium",
                      isCurrentDay ? "text-primary" : "text-foreground/70"
                    )}>
                      {format(day, 'EEE', { locale: ptBR })}
                    </div>
                    <div className={cn(
                      "text-xl font-bold rounded-full w-10 h-10 flex items-center justify-center mx-auto",
                      isCurrentDay 
                        ? "bg-primary text-primary-foreground" 
                        : "text-foreground"
                    )}>
                      {format(day, 'd')}
                    </div>
                    {dayEvents.length > 0 && (
                      <div className="text-xs text-foreground/60">
                        {dayEvents.length} evento{dayEvents.length !== 1 ? 's' : ''}
                      </div>
                    )}
                  </div>
                </div>
              );
            })}
          </div>

          {/* Time Slots */}
          <div className="max-h-[600px] overflow-y-auto">
            {TIME_SLOTS.map((timeSlot, timeIndex) => (
              <div key={timeSlot} className="grid grid-cols-8 min-h-[80px] border-b border-border/40 last:border-b-0">
                {/* Time Label */}
                <div className="border-r border-border/40 p-3 bg-muted/20">
                  <div className="text-sm font-medium text-foreground/70 text-right pr-4 sticky top-0">
                    {timeSlot}
                  </div>
                </div>
                
                {/* Day Columns */}
                {weekDays.map((day, dayIndex) => {
                  const dayKey = format(day, 'yyyy-MM-dd');
                  const eventsInSlot = eventsByDayAndTime[dayKey]?.[timeSlot] || [];
                  const isCurrentDay = isToday(day);
                  
                  return (
                    <div
                      key={dayIndex}
                      className={cn(
                        "border-r border-border/40 p-1 min-h-[80px] relative group",
                        dayIndex === 6 && "border-r-0",
                        isCurrentDay && "bg-primary/5"
                      )}
                      onClick={() => {
                        setFormData(prev => ({
                          ...prev,
                          start_date: format(day, 'yyyy-MM-dd'),
                          start_time: timeSlot,
                          end_time: format(addHours(new Date(`${format(day, 'yyyy-MM-dd')}T${timeSlot}`), 1), 'HH:00')
                        }));
                        setIsAddingEvent(true);
                      }}
                    >
                      <div className="absolute inset-0 opacity-0 group-hover:opacity-100 transition-opacity">
                        <div className="absolute inset-0 bg-primary/5 border border-primary/20 rounded-md pointer-events-none"></div>
                        <div className="absolute top-2 right-2">
                          <Plus className="w-4 h-4 text-primary/60" />
                        </div>
                      </div>
                      
                      {/* Events in this time slot */}
                      <div className="space-y-1">
                        {eventsInSlot.map((event) => {
                          const colorClass = getColorClass(event.color || COLORS[0].value);
                          const startTime = parseISO(event.start_time);
                          const endTime = parseISO(event.end_time);
                          
                          return (
                            <div
                              key={event.id}
                              className={cn(
                                "p-2 rounded-md cursor-pointer transition-all hover:shadow-md border-l-4",
                                colorClass.bg,
                                colorClass.border
                              )}
                              style={{ borderLeftColor: event.color || COLORS[0].value }}
                              onClick={(e) => {
                                e.stopPropagation();
                                setSelectedEvent(event);
                              }}
                            >
                              <div className="flex items-start justify-between">
                                <div className="min-w-0">
                                  <p className="text-sm font-medium text-foreground truncate">
                                    {event.title}
                                  </p>
                                  {event.subject && (
                                    <p className="text-xs text-foreground/60 mt-0.5 truncate">
                                      {event.subject}
                                    </p>
                                  )}
                                  <div className="flex items-center gap-1 mt-1">
                                    <Clock className="w-3 h-3 text-foreground/50" />
                                    <span className="text-xs text-foreground/60">
                                      {format(startTime, 'HH:mm')} - {format(endTime, 'HH:mm')}
                                    </span>
                                  </div>
                                </div>
                              </div>
                            </div>
                          );
                        })}
                      </div>
                    </div>
                  );
                })}
              </div>
            ))}
          </div>
        </CardContent>
      </Card>

      {/* Event Detail Modal */}
      <Dialog open={!!selectedEvent} onOpenChange={() => setSelectedEvent(null)}>
        <DialogContent className="sm:max-w-md bg-card border-border">
          {selectedEvent && (
            <>
              <DialogHeader>
                <div className="flex items-center gap-3">
                  <div 
                    className="w-3 h-3 rounded-full flex-shrink-0"
                    style={{ backgroundColor: selectedEvent.color || COLORS[0].value }}
                  />
                  <DialogTitle className="text-lg font-semibold text-foreground truncate">
                    {selectedEvent.title}
                  </DialogTitle>
                </div>
              </DialogHeader>
              <div className="space-y-4">
                <div>
                  <h4 className="text-sm font-medium text-foreground/70 mb-2">Detalhes</h4>
                  <div className="space-y-3">
                    <div className="flex items-center gap-3">
                      <Calendar className="w-4 h-4 text-foreground/50" />
                      <div>
                        <p className="text-sm text-foreground">
                          {format(parseISO(selectedEvent.start_time), "EEEE, dd 'de' MMMM 'de' yyyy", { locale: ptBR })}
                        </p>
                      </div>
                    </div>
                    <div className="flex items-center gap-3">
                      <Clock className="w-4 h-4 text-foreground/50" />
                      <p className="text-sm text-foreground">
                        {format(parseISO(selectedEvent.start_time), 'HH:mm')} -{' '}
                        {format(parseISO(selectedEvent.end_time), 'HH:mm')}
                      </p>
                    </div>
                    {selectedEvent.subject && (
                      <div className="flex items-center gap-3">
                        <div className="w-4 h-4 flex items-center justify-center text-foreground/50">
                          📚
                        </div>
                        <p className="text-sm text-foreground">{selectedEvent.subject}</p>
                      </div>
                    )}
                  </div>
                </div>
                
                {selectedEvent.notes && (
                  <div>
                    <h4 className="text-sm font-medium text-foreground/70 mb-2">Notas</h4>
                    <p className="text-sm text-foreground/80 bg-muted/30 p-3 rounded-md">
                      {selectedEvent.notes}
                    </p>
                  </div>
                )}
                
                <div className="flex gap-2 pt-4">
                  <Button 
                    variant="outline" 
                    className="flex-1 border-border hover:bg-accent"
                    onClick={() => {
                      setSelectedEvent(null);
                      setEditingEvent(selectedEvent);
                      setFormData({
                        title: selectedEvent.title,
                        subject: selectedEvent.subject || '',
                        start_date: format(parseISO(selectedEvent.start_time), 'yyyy-MM-dd'),
                        start_time: format(parseISO(selectedEvent.start_time), 'HH:mm'),
                        end_time: format(parseISO(selectedEvent.end_time), 'HH:mm'),
                        color: selectedEvent.color || COLORS[0].value,
                        notes: selectedEvent.notes || '',
                        is_recurring: selectedEvent.is_recurring || false,
                        recurrence_rule: selectedEvent.recurrence_rule || 'none',
                      });
                      setIsAddingEvent(true);
                    }}
                  >
                    <Edit2 className="w-4 h-4 mr-2" />
                    Editar
                  </Button>
                  <Button 
                    variant="destructive" 
                    className="flex-1"
                    onClick={() => handleDeleteEvent(selectedEvent.id)}
                  >
                    <Trash2 className="w-4 h-4 mr-2" />
                    Excluir
                  </Button>
                </div>
              </div>
            </>
          )}
        </DialogContent>
      </Dialog>

      {/* Quick Stats */}
      {weekEvents.length > 0 && (
        <Card className="border-border/40 bg-card/50 shadow-sm">
          <CardHeader>
            <CardTitle className="text-base font-medium text-foreground">
              Resumo da Semana
            </CardTitle>
            <CardDescription className="text-foreground/70">
              {weekEvents.length} sessões de estudo programadas
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              {weekDays.map((day, index) => {
                const dayEvents = getEventsForDay(day);
                if (dayEvents.length === 0) return null;
                
                const totalMinutes = dayEvents.reduce((acc, event) => {
                  const start = parseISO(event.start_time);
                  const end = parseISO(event.end_time);
                  return acc + (end.getTime() - start.getTime()) / (1000 * 60);
                }, 0);
                
                return (
                  <div key={index} className="p-3 rounded-lg bg-muted/30 border border-border/40">
                    <div className="flex items-center justify-between mb-2">
                      <span className={cn(
                        "text-sm font-medium",
                        isToday(day) ? "text-primary" : "text-foreground"
                      )}>
                        {format(day, "EEEE", { locale: ptBR })}
                      </span>
                      <span className="text-xs px-2 py-1 rounded-full bg-primary/10 text-primary">
                        {dayEvents.length} sessões
                      </span>
                    </div>
                    <div className="space-y-2">
                      {dayEvents.slice(0, 2).map((event) => (
                        <div key={event.id} className="flex items-center gap-2 text-sm">
                          <div 
                            className="w-2 h-2 rounded-full flex-shrink-0"
                            style={{ backgroundColor: event.color || COLORS[0].value }}
                          />
                          <span className="truncate text-foreground/80">{event.title}</span>
                          <span className="text-xs text-foreground/60 ml-auto">
                            {format(parseISO(event.start_time), 'HH:mm')}
                          </span>
                        </div>
                      ))}
                      {dayEvents.length > 2 && (
                        <div className="text-xs text-foreground/60 text-center">
                          +{dayEvents.length - 2} mais
                        </div>
                      )}
                    </div>
                    <div className="text-xs text-foreground/60 mt-2 pt-2 border-t border-border/40">
                      Total: {Math.floor(totalMinutes / 60)}h {totalMinutes % 60}min
                    </div>
                  </div>
                );
              }).filter(Boolean)}
            </div>
          </CardContent>
        </Card>
      )}
    </div>
  );
}

// Componente separado para o formulário
function EventForm({ 
  formData, 
  setFormData, 
  onSubmit, 
  isPending,
  editingEvent 
}: { 
  formData: any;
  setFormData: (data: any) => void;
  onSubmit: () => Promise<void>;
  isPending: boolean;
  editingEvent: StudyCalendarEvent | null;
}) {
  const timeOptions = useMemo(() => {
    const options = [];
    for (let hour = 6; hour <= 22; hour++) {
      for (let minute = 0; minute < 60; minute += 30) {
        const time = `${hour.toString().padStart(2, '0')}:${minute.toString().padStart(2, '0')}`;
        options.push(time);
      }
    }
    return options;
  }, []);

  return (
    <div className="space-y-4">
      <div>
        <label className="text-sm font-medium text-foreground mb-1 block">Título *</label>
        <input
          type="text"
          className="w-full p-3 rounded-lg border border-input bg-background text-foreground"
          placeholder="Ex: Direito Constitucional - Princípios"
          value={formData.title}
          onChange={(e) => setFormData({ ...formData, title: e.target.value })}
          autoFocus
        />
      </div>
      
      <div>
        <label className="text-sm font-medium text-foreground mb-1 block">Matéria</label>
        <Select value={formData.subject} onValueChange={(value) => setFormData({ ...formData, subject: value })}>
          <SelectTrigger className="border-input bg-background text-foreground">
            <SelectValue placeholder="Selecione a matéria" />
          </SelectTrigger>
          <SelectContent className="bg-card border-input">
            {SUBJECTS.map((subject) => (
              <SelectItem key={subject} value={subject} className="text-foreground hover:bg-accent">
                {subject}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>
      </div>
      
      <div className="grid grid-cols-2 gap-4">
        <div>
          <label className="text-sm font-medium text-foreground mb-1 block">Data</label>
          <Popover>
            <PopoverTrigger asChild>
              <Button variant="outline" className="w-full justify-start text-left font-normal border-input bg-background text-foreground">
                <Calendar className="mr-2 h-4 w-4 text-foreground/70" />
                {format(new Date(formData.start_date), "dd 'de' MMMM", { locale: ptBR })}
              </Button>
            </PopoverTrigger>
            <PopoverContent className="w-auto p-0 bg-card border-input" align="start">
              <CalendarComponent
                mode="single"
                selected={new Date(formData.start_date)}
                onSelect={(date) => date && setFormData({ ...formData, start_date: format(date, 'yyyy-MM-dd') })}
                initialFocus
              />
            </PopoverContent>
          </Popover>
        </div>
        
        <div className="grid grid-cols-2 gap-2">
          <div>
            <label className="text-sm font-medium text-foreground mb-1 block">Início</label>
            <Select value={formData.start_time} onValueChange={(value) => setFormData({ ...formData, start_time: value })}>
              <SelectTrigger className="border-input bg-background text-foreground">
                <SelectValue />
              </SelectTrigger>
              <SelectContent className="bg-card border-input">
                {timeOptions.map((time) => (
                  <SelectItem key={time} value={time} className="text-foreground hover:bg-accent">
                    {time}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
          
          <div>
            <label className="text-sm font-medium text-foreground mb-1 block">Fim</label>
            <Select value={formData.end_time} onValueChange={(value) => setFormData({ ...formData, end_time: value })}>
              <SelectTrigger className="border-input bg-background text-foreground">
                <SelectValue />
              </SelectTrigger>
              <SelectContent className="bg-card border-input">
                {timeOptions.map((time) => (
                  <SelectItem key={time} value={time} className="text-foreground hover:bg-accent">
                    {time}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </div>
      </div>
      
      <div>
        <label className="text-sm font-medium text-foreground mb-1 block">Cor</label>
        <div className="flex gap-2 flex-wrap">
          {COLORS.map((color) => (
            <button
              key={color.value}
              type="button"
              className={cn(
                "w-8 h-8 rounded-full border-2 transition-transform hover:scale-110",
                formData.color === color.value ? 'border-foreground' : 'border-transparent'
              )}
              style={{ backgroundColor: color.value }}
              onClick={() => setFormData({ ...formData, color: color.value })}
              title={color.name}
            />
          ))}
        </div>
      </div>
      
      <div>
        <label className="text-sm font-medium text-foreground mb-1 block">Notas (opcional)</label>
        <textarea
          className="w-full p-3 rounded-lg border border-input bg-background text-foreground min-h-[80px]"
          placeholder="Adicione notas ou objetivos para esta sessão..."
          value={formData.notes}
          onChange={(e) => setFormData({ ...formData, notes: e.target.value })}
        />
      </div>
      
      <Button 
        onClick={onSubmit} 
        disabled={!formData.title.trim() || isPending}
        className="w-full"
      >
        {editingEvent ? 'Atualizar Evento' : 'Criar Evento'}
        {isPending && (
          <div className="ml-2 h-4 w-4 animate-spin rounded-full border-2 border-current border-t-transparent" />
        )}
      </Button>
    </div>
  );
}