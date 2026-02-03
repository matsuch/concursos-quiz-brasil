import { useState } from 'react';
import { format, startOfWeek, addDays, isSameDay, isToday, parseISO } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { Calendar, Clock, Plus, ChevronLeft, ChevronRight, X, MoreVertical } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Tabs, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { useStudyPlanner } from '@/hooks/useStudyPlanner';
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
  '08:00', '09:00', '10:00', '11:00', '12:00', '13:00', 
  '14:00', '15:00', '16:00', '17:00', '18:00', '19:00'
];

export function MobileCalendarView() {
  const { calendarEvents } = useStudyPlanner();
  const [currentDate, setCurrentDate] = useState(new Date());
  const [selectedDay, setSelectedDay] = useState(new Date());
  const [view, setView] = useState<'day' | 'week'>('day');
  const [showEventModal, setShowEventModal] = useState(false);
  const [selectedEvent, setSelectedEvent] = useState<any>(null);

  // Navegação de datas
  const navigateDay = (direction: 'prev' | 'next') => {
    setCurrentDate(prev => addDays(prev, direction === 'prev' ? -1 : 1));
    setSelectedDay(prev => addDays(prev, direction === 'prev' ? -1 : 1));
  };

  const navigateWeek = (direction: 'prev' | 'next') => {
    setCurrentDate(prev => addDays(prev, direction === 'prev' ? -7 : 7));
  };

  // Calcular semana
  const weekStart = startOfWeek(currentDate, { weekStartsOn: 0 });
  const weekDays = Array.from({ length: 7 }).map((_, i) => addDays(weekStart, i));

  // Filtrar eventos do dia selecionado
  const dayEvents = calendarEvents?.filter(event => 
    isSameDay(parseISO(event.start_time), selectedDay)
  ) || [];

  // Filtrar eventos da semana
  const weekEvents = calendarEvents?.filter(event => {
    const eventDate = parseISO(event.start_time);
    return eventDate >= weekStart && eventDate <= addDays(weekStart, 6);
  }) || [];

  // Agrupar eventos por hora
  const eventsByHour = TIME_SLOTS.reduce((acc, hour) => {
    acc[hour] = dayEvents.filter(event => {
      const eventHour = format(parseISO(event.start_time), 'HH:00');
      return eventHour === hour;
    });
    return acc;
  }, {} as Record<string, any[]>);

  return (
    <div className="space-y-4 p-4">
      {/* Header com navegação */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2">
          <Button variant="ghost" size="icon" onClick={() => navigateDay('prev')}>
            <ChevronLeft className="w-4 h-4" />
          </Button>
          <div className="text-center">
            <h2 className="text-lg font-semibold">
              {format(selectedDay, "dd 'de' MMMM", { locale: ptBR })}
            </h2>
            <p className="text-sm text-muted-foreground">
              {format(selectedDay, "EEEE", { locale: ptBR })}
            </p>
          </div>
          <Button variant="ghost" size="icon" onClick={() => navigateDay('next')}>
            <ChevronRight className="w-4 h-4" />
          </Button>
        </div>
        <Button 
          variant="default" 
          size="sm" 
          className="rounded-full h-8 w-8 p-0"
          onClick={() => setShowEventModal(true)}
        >
          <Plus className="w-4 h-4" />
        </Button>
      </div>

      {/* Quick Navigation Tabs */}
      <Tabs value={view} onValueChange={(v) => setView(v as 'day' | 'week')}>
        <TabsList className="grid grid-cols-2 w-full">
          <TabsTrigger value="day" className="text-xs">Dia</TabsTrigger>
          <TabsTrigger value="week" className="text-xs">Semana</TabsTrigger>
        </TabsList>
      </Tabs>

      {/* Visualização por Dia */}
      {view === 'day' && (
        <div className="space-y-3">
          {/* Indicador de hoje */}
          {isToday(selectedDay) && (
            <div className="bg-primary/10 border border-primary/20 rounded-lg p-2 flex items-center gap-2">
              <div className="w-2 h-2 rounded-full bg-primary animate-pulse" />
              <span className="text-xs font-medium text-primary">Hoje</span>
            </div>
          )}

          {/* Timeline do dia */}
          <div className="relative">
            {TIME_SLOTS.map((hour, index) => (
              <div key={hour} className="flex min-h-[60px] border-b last:border-b-0">
                {/* Hora */}
                <div className="w-16 flex-shrink-0 pt-3">
                  <span className="text-xs text-muted-foreground">
                    {hour}
                  </span>
                </div>
                
                {/* Linha do tempo */}
                <div className="flex-1 relative">
                  {/* Marcador de hora atual */}
                  {isToday(selectedDay) && 
                    format(new Date(), 'HH:00') === hour && (
                    <div className="absolute left-0 right-0 h-0.5 bg-red-500 z-10">
                      <div className="absolute -top-1.5 -left-1.5 w-3 h-3 rounded-full bg-red-500" />
                    </div>
                  )}

                  {/* Eventos nesta hora */}
                  <div className="absolute inset-0">
                    {eventsByHour[hour]?.map((event, eventIndex) => {
                      const startTime = parseISO(event.start_time);
                      const endTime = parseISO(event.end_time);
                      const durationHours = (endTime.getTime() - startTime.getTime()) / (1000 * 60 * 60);
                      const height = Math.max(40, durationHours * 60); // Altura proporcional
                      
                      return (
                        <div
                          key={event.id}
                          className="absolute left-1 right-1 rounded-lg p-2 shadow-sm"
                          style={{
                            top: `${eventIndex * 5}px`,
                            height: `${height}px`,
                            backgroundColor: event.color || '#3b82f6',
                            borderLeft: `3px solid ${event.color || '#3b82f6'}`
                          }}
                          onClick={() => setSelectedEvent(event)}
                        >
                          <div className="text-white text-xs font-medium truncate">
                            {event.title}
                          </div>
                          <div className="text-white/90 text-[10px] mt-0.5 truncate">
                            {event.subject}
                          </div>
                          <div className="flex items-center gap-1 mt-1">
                            <Clock className="w-2.5 h-2.5 text-white/70" />
                            <span className="text-[10px] text-white/70">
                              {format(startTime, 'HH:mm')}
                            </span>
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Visualização por Semana */}
      {view === 'week' && (
        <div className="space-y-3">
          {/* Cabeçalho da semana */}
          <div className="flex justify-between items-center">
            <Button variant="ghost" size="sm" onClick={() => navigateWeek('prev')}>
              <ChevronLeft className="w-4 h-4" />
            </Button>
            <span className="text-sm font-medium">
              Semana {format(weekStart, 'w')}
            </span>
            <Button variant="ghost" size="sm" onClick={() => navigateWeek('next')}>
              <ChevronRight className="w-4 h-4" />
            </Button>
          </div>

          {/* Dias da semana */}
          <div className="grid grid-cols-7 gap-1">
            {weekDays.map((day, index) => {
              const dayEventsCount = weekEvents.filter(event => 
                isSameDay(parseISO(event.start_time), day)
              ).length;
              
              return (
                <button
                  key={index}
                  className={cn(
                    "flex flex-col items-center justify-center p-2 rounded-lg",
                    isSameDay(day, selectedDay) 
                      ? "bg-primary text-primary-foreground" 
                      : isToday(day)
                      ? "bg-primary/10 text-primary"
                      : "bg-muted/50 hover:bg-muted"
                  )}
                  onClick={() => {
                    setSelectedDay(day);
                    setView('day');
                  }}
                >
                  <span className="text-xs">
                    {format(day, 'EEE', { locale: ptBR }).slice(0, 1)}
                  </span>
                  <span className={cn(
                    "text-lg font-bold",
                    isSameDay(day, selectedDay) && "text-primary-foreground"
                  )}>
                    {format(day, 'd')}
                  </span>
                  {dayEventsCount > 0 && (
                    <div className="w-2 h-2 rounded-full bg-primary mt-1" />
                  )}
                </button>
              );
            })}
          </div>

          {/* Resumo da semana */}
          <Card>
            <CardContent className="p-3">
              <div className="space-y-2">
                {weekEvents.slice(0, 3).map((event) => {
                  const eventDate = parseISO(event.start_time);
                  return (
                    <div
                      key={event.id}
                      className="flex items-center gap-3 p-2 rounded-lg bg-card border"
                      onClick={() => {
                        setSelectedEvent(event);
                        setSelectedDay(eventDate);
                        setView('day');
                      }}
                    >
                      <div 
                        className="w-3 h-3 rounded-full flex-shrink-0"
                        style={{ backgroundColor: event.color || '#3b82f6' }}
                      />
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-medium truncate">{event.title}</p>
                        <div className="flex items-center gap-1 text-xs text-muted-foreground">
                          <Calendar className="w-3 h-3" />
                          <span>{format(eventDate, 'dd/MM')}</span>
                          <Clock className="w-3 h-3 ml-1" />
                          <span>{format(eventDate, 'HH:mm')}</span>
                        </div>
                      </div>
                      {event.subject && (
                        <span className="text-xs bg-muted px-2 py-0.5 rounded-full truncate max-w-[80px]">
                          {event.subject}
                        </span>
                      )}
                    </div>
                  );
                })}
              </div>
              {weekEvents.length > 3 && (
                <div className="text-center text-xs text-muted-foreground mt-2">
                  +{weekEvents.length - 3} mais
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      )}

      {/* Botão flutuante para adicionar evento */}
      <Button 
        className="fixed bottom-6 right-6 h-12 w-12 rounded-full shadow-lg z-50"
        size="icon"
        onClick={() => setShowEventModal(true)}
      >
        <Plus className="w-5 h-5" />
      </Button>

      {/* Modal de detalhes do evento */}
      <Dialog open={!!selectedEvent} onOpenChange={() => setSelectedEvent(null)}>
        <DialogContent className="sm:max-w-md w-[90vw] rounded-2xl">
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <div 
                className="w-3 h-3 rounded-full"
                style={{ backgroundColor: selectedEvent?.color || '#3b82f6' }}
              />
              <span className="truncate">{selectedEvent?.title}</span>
            </DialogTitle>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <h4 className="text-sm font-medium text-muted-foreground mb-1">Horário</h4>
              <div className="flex items-center gap-2">
                <Clock className="w-4 h-4 text-muted-foreground" />
                <span className="text-sm">
                  {selectedEvent && format(parseISO(selectedEvent.start_time), 'dd/MM HH:mm')} -{' '}
                  {selectedEvent && format(parseISO(selectedEvent.end_time), 'HH:mm')}
                </span>
              </div>
            </div>
            {selectedEvent?.subject && (
              <div>
                <h4 className="text-sm font-medium text-muted-foreground mb-1">Matéria</h4>
                <span className="text-sm">{selectedEvent.subject}</span>
              </div>
            )}
            {selectedEvent?.notes && (
              <div>
                <h4 className="text-sm font-medium text-muted-foreground mb-1">Notas</h4>
                <p className="text-sm">{selectedEvent.notes}</p>
              </div>
            )}
            <div className="flex gap-2 pt-4">
              <Button variant="outline" className="flex-1" onClick={() => setSelectedEvent(null)}>
                Fechar
              </Button>
              <Button variant="destructive" className="flex-1">
                Excluir
              </Button>
            </div>
          </div>
        </DialogContent>
      </Dialog>

      {/* Modal para criar evento rápido */}
      <Dialog open={showEventModal} onOpenChange={setShowEventModal}>
        <DialogContent className="sm:max-w-md w-[90vw] rounded-2xl">
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <Calendar className="w-5 h-5" />
              Nova Sessão de Estudo
            </DialogTitle>
          </DialogHeader>
          <QuickEventForm 
            selectedDay={selectedDay} 
            onClose={() => setShowEventModal(false)} 
          />
        </DialogContent>
      </Dialog>
    </div>
  );
}

// Componente para formulário rápido (simplificado para mobile)
function QuickEventForm({ selectedDay, onClose }: { selectedDay: Date; onClose: () => void }) {
  const { createCalendarEvent } = useStudyPlanner();
  const [formData, setFormData] = useState({
    title: '',
    subject: '',
    duration: '60', // minutos
  });

  const handleSubmit = async () => {
    if (!formData.title.trim()) return;

    const startTime = new Date(selectedDay);
    startTime.setHours(9, 0, 0, 0); // 09:00 por padrão
    
    const endTime = new Date(startTime);
    endTime.setMinutes(endTime.getMinutes() + parseInt(formData.duration));

    await createCalendarEvent.mutateAsync({
      title: formData.title,
      subject: formData.subject || null,
      start_time: startTime.toISOString(),
      end_time: endTime.toISOString(),
      color: '#3b82f6',
      notes: null,
      is_recurring: false,
      recurrence_rule: null,
    });

    onClose();
  };

  return (
    <div className="space-y-4">
      <div>
        <label className="text-sm font-medium mb-1 block">O que vai estudar?</label>
        <input
          type="text"
          className="w-full p-3 rounded-lg border bg-background"
          placeholder="Ex: Direito Constitucional - Princípios"
          value={formData.title}
          onChange={(e) => setFormData({ ...formData, title: e.target.value })}
          autoFocus
        />
      </div>
      
      <div>
        <label className="text-sm font-medium mb-1 block">Matéria</label>
        <div className="flex gap-2 flex-wrap">
          {SUBJECTS.slice(0, 5).map((subject) => (
            <button
              key={subject}
              type="button"
              className={cn(
                "px-3 py-1.5 rounded-full text-xs border transition-colors",
                formData.subject === subject 
                  ? "bg-primary text-primary-foreground border-primary" 
                  : "bg-muted hover:bg-muted/80"
              )}
              onClick={() => setFormData({ ...formData, subject })}
            >
              {subject.split(' ')[0]}
            </button>
          ))}
        </div>
      </div>

      <div>
        <label className="text-sm font-medium mb-1 block">Duração</label>
        <div className="grid grid-cols-3 gap-2">
          {['30', '60', '90', '120', '150', '180'].map((minutes) => (
            <button
              key={minutes}
              type="button"
              className={cn(
                "py-2 rounded-lg border text-sm transition-colors",
                formData.duration === minutes
                  ? "bg-primary text-primary-foreground border-primary"
                  : "bg-muted hover:bg-muted/80"
              )}
              onClick={() => setFormData({ ...formData, duration: minutes })}
            >
              {minutes} min
            </button>
          ))}
        </div>
      </div>

      <div className="flex gap-2 pt-4">
        <Button variant="outline" className="flex-1" onClick={onClose}>
          Cancelar
        </Button>
        <Button 
          className="flex-1" 
          onClick={handleSubmit}
          disabled={!formData.title.trim() || createCalendarEvent.isPending}
        >
          Agendar
        </Button>
      </div>
    </div>
  );
}