import { useState, useEffect } from 'react';
import { Calendar, momentLocalizer, View, SlotInfo } from 'react-big-calendar';
import withDragAndDrop, { EventInteractionArgs } from 'react-big-calendar/lib/addons/dragAndDrop';
import moment from 'moment';
import 'react-big-calendar/lib/css/react-big-calendar.css';
import 'react-big-calendar/lib/addons/dragAndDrop/styles.css';
import { Plus, Trash2, Edit2, BookOpen } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Textarea } from '@/components/ui/textarea';
import { useStudyPlanner, StudyCalendarEvent } from '@/hooks/useStudyPlanner';
import { cn } from '@/lib/utils';
import { useMediaQuery } from '@/hooks/useMediaQuery';
import { MobileCalendarView } from './MobileCalendarView';

const localizer = momentLocalizer(moment);
const DnDCalendar = withDragAndDrop(Calendar);

const SUBJECTS = ['Direito Constitucional', 'Direito Administrativo', 'Português', 'Raciocínio Lógico', 'Atualidades', 'Informática', 'Direito Penal', 'Direito Civil', 'AFO', 'Contabilidade'];

const THEME_COLORS = [
  { name: 'Primary', value: 'hsl(var(--primary))' },
  { name: 'Secondary', value: 'hsl(var(--secondary))' },
  { name: 'Destructive', value: 'hsl(var(--destructive))' },
  { name: 'Success', value: 'hsl(var(--success))' },
  { name: 'Accent', value: 'hsl(var(--accent))' },
  { name: 'Muted', value: 'hsl(var(--muted))' },
  { name: 'Blue', value: 'hsl(217 91% 48%)' },
  { name: 'Purple', value: 'hsl(270 95% 60%)' },
];

const BORDER_COLORS = [
  { name: 'Primary Light', value: 'hsl(var(--primary) / 0.8)' },
  { name: 'Secondary Light', value: 'hsl(var(--secondary) / 0.8)' },
  { name: 'Destructive Light', value: 'hsl(var(--destructive) / 0.8)' },
  { name: 'Success Light', value: 'hsl(var(--success) / 0.8)' },
  { name: 'Accent Light', value: 'hsl(var(--accent) / 0.8)' },
  { name: 'Muted Light', value: 'hsl(var(--muted) / 0.8)' },
  { name: 'Blue Light', value: 'hsl(217 91% 60%)' },
  { name: 'Purple Light', value: 'hsl(270 95% 70%)' },
];

interface CalendarTabProps {
  selectedDate?: Date;
  onDateChange?: (date: Date) => void;
  triggerNewEvent?: number;
}

export function CalendarTab({ selectedDate, onDateChange, triggerNewEvent }: CalendarTabProps) {
  const {
    calendarEvents,
    createCalendarEvent,
    updateCalendarEvent,
    deleteCalendarEvent
  } = useStudyPlanner();
  const [selectedEvent, setSelectedEvent] = useState<StudyCalendarEvent | null>(null);
  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [isEditing, setIsEditing] = useState(false);
  const [view, setView] = useState<View>('week');
  const [date, setDate] = useState(selectedDate || new Date());
  const [formData, setFormData] = useState({
    subject: '',
    title: '',
    start_time: '',
    end_time: '',
    color: THEME_COLORS[0].value,
    notes: ''
  });

  // Sync date from parent
  useEffect(() => {
    if (selectedDate) {
      setDate(selectedDate);
    }
  }, [selectedDate]);

  // Trigger new event from sidebar
  useEffect(() => {
    if (triggerNewEvent && triggerNewEvent > 0) {
      const now = new Date();
      const start = moment(now).add(1, 'hour').startOf('hour').format('YYYY-MM-DDTHH:mm');
      const end = moment(now).add(2, 'hour').startOf('hour').format('YYYY-MM-DDTHH:mm');
      setFormData({
        subject: '',
        title: '',
        start_time: start,
        end_time: end,
        color: THEME_COLORS[0].value,
        notes: ''
      });
      setSelectedEvent(null);
      setIsEditing(false);
      setIsDialogOpen(true);
    }
  }, [triggerNewEvent]);

  const handleNavigate = (newDate: Date) => {
    setDate(newDate);
    onDateChange?.(newDate);
  };

  const handleSelectSlot = (slotInfo: SlotInfo) => {
    const start = moment(slotInfo.start).format('YYYY-MM-DDTHH:mm');
    const end = moment(slotInfo.end).format('YYYY-MM-DDTHH:mm');
    setFormData({
      subject: '',
      title: '',
      start_time: start,
      end_time: end,
      color: THEME_COLORS[0].value,
      notes: ''
    });
    setSelectedEvent(null);
    setIsEditing(false);
    setIsDialogOpen(true);
  };

  const handleSelectEvent = (event: StudyCalendarEvent) => {
    setSelectedEvent(event);
    setFormData({
      subject: event.subject,
      title: event.title,
      start_time: moment(event.start_time).format('YYYY-MM-DDTHH:mm'),
      end_time: moment(event.end_time).format('YYYY-MM-DDTHH:mm'),
      color: event.color || THEME_COLORS[0].value,
      notes: event.notes || ''
    });
    setIsEditing(true);
    setIsDialogOpen(true);
  };

  const handleSubmit = async () => {
    if (!formData.subject || !formData.title || !formData.start_time || !formData.end_time) {
      alert('Preencha todos os campos obrigatórios.');
      return;
    }
    if (isEditing && selectedEvent) {
      await updateCalendarEvent.mutateAsync({
        id: selectedEvent.id,
        ...formData,
        start_time: moment(formData.start_time).toISOString(),
        end_time: moment(formData.end_time).toISOString()
      });
    } else {
      await createCalendarEvent.mutateAsync({
        ...formData,
        title: formData.title,
        is_recurring: false,
        recurrence_rule: null,
        start_time: moment(formData.start_time).toISOString(),
        end_time: moment(formData.end_time).toISOString()
      });
    }
    setIsDialogOpen(false);
    resetForm();
  };

  const handleEventDrop = async ({ event, start, end }: EventInteractionArgs<object>) => {
    const e = event as any;
    await updateCalendarEvent.mutateAsync({
      id: e.id,
      subject: e.subject,
      title: e.title,
      start_time: moment(start).toISOString(),
      end_time: moment(end).toISOString(),
      color: e.color || THEME_COLORS[0].value,
      notes: e.notes || ''
    });
  };

  const handleEventResize = async ({ event, start, end }: EventInteractionArgs<object>) => {
    const e = event as any;
    await updateCalendarEvent.mutateAsync({
      id: e.id,
      subject: e.subject,
      title: e.title,
      start_time: moment(start).toISOString(),
      end_time: moment(end).toISOString(),
      color: e.color || THEME_COLORS[0].value,
      notes: e.notes || ''
    });
  };

  const handleDelete = async () => {
    if (selectedEvent) {
      if (window.confirm('Tem certeza que deseja excluir este evento?')) {
        await deleteCalendarEvent.mutateAsync(selectedEvent.id);
        setIsDialogOpen(false);
        resetForm();
      }
    }
  };

  const resetForm = () => {
    setFormData({
      subject: '',
      title: '',
      start_time: '',
      end_time: '',
      color: THEME_COLORS[0].value,
      notes: ''
    });
    setSelectedEvent(null);
    setIsEditing(false);
  };

  const events = calendarEvents?.map(event => ({
    ...event,
    start: new Date(event.start_time),
    end: new Date(event.end_time),
    title: event.subject
  })) || [];

  const isMobile = useMediaQuery('(max-width: 640px)');
  if (isMobile) {
    return <MobileCalendarView />;
  }

  const getBorderColor = (mainColor: string) => {
    const colorIndex = THEME_COLORS.findIndex(color => color.value === mainColor);
    if (colorIndex >= 0 && colorIndex < BORDER_COLORS.length) {
      return BORDER_COLORS[colorIndex].value;
    }
    return BORDER_COLORS[0].value;
  };

  const getTextColor = (bgColor: string) => {
    if (bgColor.includes('var(--primary)') || bgColor.includes('var(--secondary)') || bgColor.includes('var(--destructive)') || bgColor.includes('var(--success)')) {
      return 'hsl(var(--primary-foreground))';
    }
    return 'hsl(var(--foreground))';
  };

  return (
    <div className="h-full flex flex-col">
      {/* Event Dialog */}
      <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
        <DialogContent className="sm:max-w-lg max-h-[85vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle className="text-lg font-semibold">
              {isEditing ? 'Editar Evento' : 'Novo Evento de Estudo'}
            </DialogTitle>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <Label>Matéria *</Label>
              <Select value={formData.subject} onValueChange={value => setFormData({ ...formData, subject: value })}>
                <SelectTrigger>
                  <SelectValue placeholder="Selecione a matéria" />
                </SelectTrigger>
                <SelectContent>
                  {SUBJECTS.map(subject => (
                    <SelectItem key={subject} value={subject}>{subject}</SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div>
              <Label>Tópico *</Label>
              <Input value={formData.title} onChange={e => setFormData({ ...formData, title: e.target.value })} placeholder="Ex: Princípios Fundamentais" />
            </div>
            <div className="grid grid-cols-2 gap-4">
              <div>
                <Label>Início *</Label>
                <Input type="datetime-local" value={formData.start_time} onChange={e => setFormData({ ...formData, start_time: e.target.value })} />
              </div>
              <div>
                <Label>Fim *</Label>
                <Input type="datetime-local" value={formData.end_time} onChange={e => setFormData({ ...formData, end_time: e.target.value })} />
              </div>
            </div>
            <div>
              <Label>Cor</Label>
              <div className="flex gap-2 flex-wrap mt-2">
                {THEME_COLORS.map(color => (
                  <button
                    key={color.value}
                    type="button"
                    className={cn(
                      "w-7 h-7 rounded-full border-2 transition-transform hover:scale-110",
                      formData.color === color.value ? "border-foreground ring-2 ring-primary/30" : "border-transparent"
                    )}
                    style={{ backgroundColor: color.value }}
                    onClick={() => setFormData({ ...formData, color: color.value })}
                    title={color.name}
                  />
                ))}
              </div>
            </div>
            <div>
              <Label>Anotações</Label>
              <Textarea value={formData.notes} onChange={e => setFormData({ ...formData, notes: e.target.value })} placeholder="Adicione anotações, links, etc." rows={3} />
            </div>
            <div className="flex gap-2 pt-2">
              <Button onClick={handleSubmit} className="flex-1" disabled={createCalendarEvent.isPending || updateCalendarEvent.isPending}>
                {isEditing ? 'Atualizar' : 'Criar'}
              </Button>
              {isEditing && (
                <Button variant="destructive" onClick={handleDelete} disabled={deleteCalendarEvent.isPending}>
                  <Trash2 className="w-4 h-4" />
                </Button>
              )}
            </div>
          </div>
        </DialogContent>
      </Dialog>

      {/* Calendar */}
      <div className="flex-1 min-h-[600px] bg-card rounded-xl border shadow-sm p-4">
        <DnDCalendar
          localizer={localizer}
          events={events}
          startAccessor="start"
          endAccessor="end"
          style={{ height: '100%' }}
          view={view}
          onView={setView}
          date={date}
          onNavigate={handleNavigate}
          onSelectSlot={handleSelectSlot}
          onSelectEvent={handleSelectEvent}
          onEventDrop={handleEventDrop}
          onEventResize={handleEventResize}
          resizable
          selectable
          messages={{
            next: 'Próximo',
            previous: 'Anterior',
            today: 'Hoje',
            month: 'Mês',
            week: 'Semana',
            day: 'Dia',
            agenda: 'Agenda',
            date: 'Data',
            time: 'Hora',
            event: 'Evento',
            noEventsInRange: 'Nenhum evento neste intervalo.'
          }}
          eventPropGetter={event => {
            const mainColor = (event as any).color || THEME_COLORS[0].value;
            const borderColor = getBorderColor(mainColor);
            const textColor = getTextColor(mainColor);
            return {
              style: {
                backgroundColor: mainColor,
                border: `2px solid ${borderColor}`,
                color: textColor,
                fontWeight: 500,
                fontSize: '13px',
                borderRadius: '6px',
                boxShadow: '0 1px 3px rgba(0,0,0,0.1)'
              }
            };
          }}
          dayPropGetter={() => ({
            style: {
              backgroundColor: 'hsl(var(--card))',
              borderColor: 'hsl(var(--border))'
            }
          })}
          formats={{
            eventTimeRangeFormat: () => '',
            timeGutterFormat: (date, culture, localizer) =>
              localizer.format(date, 'HH:mm', culture),
          }}
          components={{
            event: ({ event }) => (
              <div className="w-full h-full flex items-center justify-center">
                <span className="font-medium text-center truncate px-1">
                  {event.title}
                </span>
              </div>
            ),
            toolbar: props => (
              <div className="rbc-toolbar mb-4">
                <span className="rbc-btn-group">
                  <button type="button" onClick={() => props.onNavigate('PREV')} className="rbc-btn transition-colors text-foreground hover:text-primary">
                    {props.localizer.messages.previous}
                  </button>
                  <button type="button" onClick={() => props.onNavigate('TODAY')} className="rbc-btn rbc-btn-today transition-colors text-foreground hover:text-primary">
                    {props.localizer.messages.today}
                  </button>
                  <button type="button" onClick={() => props.onNavigate('NEXT')} className="rbc-btn transition-colors text-foreground hover:text-primary">
                    {props.localizer.messages.next}
                  </button>
                </span>
                <span className="rbc-toolbar-label text-lg font-semibold text-foreground">
                  {props.label}
                </span>
                <span className="rbc-btn-group">
                  {(['month', 'week', 'day', 'agenda'] as const).map(v => (
                    <button
                      key={v}
                      type="button"
                      onClick={() => props.onView(v)}
                      className={cn(
                        "rbc-btn text-sm font-medium transition-colors",
                        props.view === v
                          ? "rbc-active bg-primary text-primary-foreground"
                          : "text-foreground hover:text-primary hover:bg-muted"
                      )}
                    >
                      {props.localizer.messages[v]}
                    </button>
                  ))}
                </span>
              </div>
            ),
          }}
        />
      </div>

      <div className="text-sm text-muted-foreground mt-4 flex items-center gap-4">
        <p className="flex items-center gap-2">
          <BookOpen className="w-4 h-4" />
          <span>Clique e arraste para criar um evento.</span>
        </p>
        <p className="flex items-center gap-2">
          <Edit2 className="w-4 h-4" />
          <span>Clique em um evento para editar.</span>
        </p>
      </div>
    </div>
  );
}
