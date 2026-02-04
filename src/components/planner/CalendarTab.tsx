import { useState } from 'react';
import { Calendar, momentLocalizer, View, SlotInfo } from 'react-big-calendar';
import moment from 'moment';
import 'react-big-calendar/lib/css/react-big-calendar.css';
import { Plus, Trash2, Edit2, BookOpen } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Textarea } from '@/components/ui/textarea';
import { useStudyPlanner, StudyCalendarEvent } from '@/hooks/useStudyPlanner';
import { cn } from '@/lib/utils';
import { useMediaQuery } from '@/hooks/useMediaQuery';
import { MobileCalendarView } from './MobileCalendarView';

const localizer = momentLocalizer(moment);

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

// Usando as cores do tema Tailwind com melhor contraste
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

// Cores de borda correspondentes (versões mais claras)
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

export function CalendarTab() {
  const { calendarEvents, createCalendarEvent, updateCalendarEvent, deleteCalendarEvent } = useStudyPlanner();
  const [selectedEvent, setSelectedEvent] = useState<StudyCalendarEvent | null>(null);
  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [isEditing, setIsEditing] = useState(false);
  const [view, setView] = useState<View>('week');
  const [date, setDate] = useState(new Date());

  const [formData, setFormData] = useState({
    subject: '',
    topic: '',
    start_time: '',
    end_time: '',
    color: THEME_COLORS[0].value,
    notes: '',
  });

  const handleSelectSlot = (slotInfo: SlotInfo) => {
    const start = moment(slotInfo.start).format('YYYY-MM-DDTHH:mm');
    const end = moment(slotInfo.end).format('YYYY-MM-DDTHH:mm');
    setFormData({
      subject: '',
      topic: '',
      start_time: start,
      end_time: end,
      color: THEME_COLORS[0].value,
      notes: '',
    });
    setSelectedEvent(null);
    setIsEditing(false);
    setIsDialogOpen(true);
  };

  const handleSelectEvent = (event: StudyCalendarEvent) => {
    setSelectedEvent(event);
    setFormData({
      subject: event.subject,
      topic: event.title,
      start_time: moment(event.start_time).format('YYYY-MM-DDTHH:mm'),
      end_time: moment(event.end_time).format('YYYY-MM-DDTHH:mm'),
      color: event.color || THEME_COLORS[0].value,
      notes: event.notes || '',
    });
    setIsEditing(true);
    setIsDialogOpen(true);
  };

  const handleSubmit = async () => {
    if (!formData.subject || !formData.topic || !formData.start_time || !formData.end_time) {
      alert('Preencha todos os campos obrigatórios.');
      return;
    }

    if (isEditing && selectedEvent) {
      await updateCalendarEvent.mutateAsync({
        id: selectedEvent.id,
        ...formData,
        start_time: moment(formData.start_time).toISOString(),
        end_time: moment(formData.end_time).toISOString(),
      });
    } else {
      await createCalendarEvent.mutateAsync({
        ...formData,
        title: formData.topic,
        is_recurring: false,
        recurrence_rule: null,
        start_time: moment(formData.start_time).toISOString(),
        end_time: moment(formData.end_time).toISOString(),
      });
    }

    setIsDialogOpen(false);
    resetForm();
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
      topic: '',
      start_time: '',
      end_time: '',
      color: THEME_COLORS[0].value,
      notes: '',
    });
    setSelectedEvent(null);
    setIsEditing(false);
  };

  const events = calendarEvents?.map(event => ({
    ...event,
    start: new Date(event.start_time),
    end: new Date(event.end_time),
    title: `${event.subject}: ${event.title}`,
  })) || [];

  const isMobile = useMediaQuery('(max-width: 640px)');

  if (isMobile) {
    return <MobileCalendarView />;
  }

  // Função para obter cor de borda correspondente
  const getBorderColor = (mainColor: string) => {
    const colorIndex = THEME_COLORS.findIndex(color => color.value === mainColor);
    if (colorIndex >= 0 && colorIndex < BORDER_COLORS.length) {
      return BORDER_COLORS[colorIndex].value;
    }
    return BORDER_COLORS[0].value;
  };

  // Função para determinar cor de texto baseada no brilho da cor de fundo
  const getTextColor = (bgColor: string) => {
    // Para cores do tema, assumimos que as cores primárias têm foreground claro
    if (bgColor.includes('var(--primary)') || 
        bgColor.includes('var(--secondary)') || 
        bgColor.includes('var(--destructive)') ||
        bgColor.includes('var(--success)')) {
      return 'hsl(var(--primary-foreground))';
    }
    return 'hsl(var(--foreground))';
  };

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div className="space-y-1">
          <h2 className="text-xl sm:text-2xl font-semibold text-foreground">Calendário de Estudos</h2>
          <p className="text-sm text-muted-foreground">Visualize e organize seus horários de estudo na semana</p>
        </div>
        <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
          <DialogTrigger asChild>
            <Button size="sm" className="rounded-lg shadow-sm text-sm px-3 py-2 h-auto">
              <Plus className="w-4 h-4 mr-2" />
              <span className="hidden sm:inline">Novo Evento</span>
              <span className="sm:hidden">Evento</span>
            </Button>
          </DialogTrigger>
          <DialogContent className="sm:max-w-lg max-h-[85vh] overflow-y-auto">
            <DialogHeader>
              <DialogTitle className="text-lg font-semibold">
                {isEditing ? 'Editar Evento' : 'Novo Evento de Estudo'}
              </DialogTitle>
            </DialogHeader>
            <div className="space-y-4">
              <div>
                <Label>Matéria *</Label>
                <Select value={formData.subject} onValueChange={(value) => setFormData({ ...formData, subject: value })}>
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
                <Label>Tópico *</Label>
                <Input
                  value={formData.topic}
                  onChange={(e) => setFormData({ ...formData, topic: e.target.value })}
                  placeholder="Ex: Princípios Fundamentais"
                />
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <Label>Início *</Label>
                  <Input
                    type="datetime-local"
                    value={formData.start_time}
                    onChange={(e) => setFormData({ ...formData, start_time: e.target.value })}
                  />
                </div>
                <div>
                  <Label>Fim *</Label>
                  <Input
                    type="datetime-local"
                    value={formData.end_time}
                    onChange={(e) => setFormData({ ...formData, end_time: e.target.value })}
                  />
                </div>
              </div>
              <div>
                <Label>Cor</Label>
                <div className="flex gap-2 flex-wrap mt-2">
                  {THEME_COLORS.map((color) => (
                    <button
                      key={color.value}
                      type="button"
                      className={cn(
                        "w-8 h-8 rounded-full border-2 transition-transform hover:scale-110",
                        formData.color === color.value 
                          ? "border-foreground ring-2 ring-primary/30" 
                          : "border-transparent"
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
                <Textarea
                  value={formData.notes}
                  onChange={(e) => setFormData({ ...formData, notes: e.target.value })}
                  placeholder="Adicione anotações, links, etc."
                  rows={3}
                />
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
      </div>

      <div className="bg-card rounded-2xl border shadow-sm p-4 sm:p-6">
        <div className="h-[600px]">
          <Calendar
            localizer={localizer}
            events={events}
            startAccessor="start"
            endAccessor="end"
            style={{ height: '100%' }}
            view={view}
            onView={setView}
            date={date}
            onNavigate={setDate}
            onSelectSlot={handleSelectSlot}
            onSelectEvent={handleSelectEvent}
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
              noEventsInRange: 'Nenhum evento neste intervalo.',
            }}
            eventPropGetter={(event) => {
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
                  boxShadow: '0 1px 3px rgba(0,0,0,0.1)',
                },
              };
            }}
            dayPropGetter={(date) => {
              return {
                style: {
                  backgroundColor: 'hsl(var(--card))',
                  borderColor: 'hsl(var(--border))',
                },
              };
            }}
          />
        </div>
      </div>

      {/* Instruções */}
      <div className="text-sm text-muted-foreground">
        <p className="flex items-center gap-2">
          <BookOpen className="w-4 h-4" />
          <span>Clique e arraste no calendário para criar um novo evento de estudo.</span>
        </p>
        <p className="flex items-center gap-2 mt-1">
          <Edit2 className="w-4 h-4" />
          <span>Clique em um evento para editá-lo ou excluí-lo.</span>
        </p>
      </div>
    </div>
  );
}