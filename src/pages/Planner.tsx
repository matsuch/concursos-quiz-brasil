import { useState } from 'react';
import { CalendarDays, BookOpen, Plus, ChevronLeft, ChevronRight, CheckCircle2, Circle, Clock } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Progress } from '@/components/ui/progress';
import { EditalControlTab } from '@/components/planner/EditalControlTab';
import { useAuth } from '@/hooks/useAuth';
import { CalendarTab } from '@/components/planner/CalendarTab';
import { useStudyPlanner } from '@/hooks/useStudyPlanner';
import { useMediaQuery } from '@/hooks/useMediaQuery';
import { Helmet } from 'react-helmet-async';
import { Calendar } from '@/components/ui/calendar';
import { format, isSameDay, parseISO, isToday as isTodayFn, isFuture } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { cn } from '@/lib/utils';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { ScrollArea } from '@/components/ui/scroll-area';
import { ProposalsTab } from '@/components/planner/ProposalsTab';
import { NotificationsPopover } from '@/components/planner/NotificationsPopover';
import { IA_PLANO_ESTUDOS_HABILITADA } from '@/config/features';

function PlannerSidebar({
  selectedDate,
  onSelectDate,
  onNewEvent,
  activePanel,
  onPanelChange
}: {
  selectedDate: Date;
  onSelectDate: (date: Date) => void;
  onNewEvent: () => void;
  activePanel: string;
  onPanelChange: (panel: string) => void;
}) {
  const { topics, calendarEvents } = useStudyPlanner();

  const completedTopics = topics.filter(t => t.is_completed).length;
  const totalTopics = topics.length;
  const progressPercentage = totalTopics > 0 ? (completedTopics / totalTopics) * 100 : 0;

  // Upcoming events (next 5 future events)
  const upcomingEvents = (calendarEvents || [])
    .filter(e => new Date(e.start_time) >= new Date())
    .sort((a, b) => new Date(a.start_time).getTime() - new Date(b.start_time).getTime())
    .slice(0, 5);

  // Days with events for calendar dots
  const eventDates = (calendarEvents || []).map(e => new Date(e.start_time));

  return (
    <div className="flex flex-col h-full">
      {/* New Event Button */}
      <Button
        onClick={onNewEvent}
        className="mb-5 rounded-xl shadow-md h-11 text-sm font-semibold gap-2"
      >
        <Plus className="w-4 h-4" />
        Novo Evento
      </Button>

      {/* Mini Calendar */}
      <div className="bg-card rounded-xl border shadow-sm mb-4 overflow-hidden">
        <Calendar
          mode="single"
          selected={selectedDate}
          onSelect={(date) => date && onSelectDate(date)}
          locale={ptBR}
          className="p-2"
          modifiers={{ hasEvent: eventDates }}
          modifiersClassNames={{ hasEvent: 'relative after:absolute after:bottom-0.5 after:left-1/2 after:-translate-x-1/2 after:w-1 after:h-1 after:rounded-full after:bg-primary' }}
        />
      </div>

      {/* Panel Toggle */}
      <div className="flex gap-1 mb-4 bg-muted/50 rounded-lg p-1">
        <button
          onClick={() => onPanelChange('upcoming')}
          className={cn(
            "flex-1 text-xs font-medium py-2 px-3 rounded-md transition-colors",
            activePanel === 'upcoming'
              ? "bg-card shadow-sm text-foreground"
              : "text-muted-foreground hover:text-foreground"
          )}
        >
          Próximos
        </button>
        <button
          onClick={() => onPanelChange('edital')}
          className={cn(
            "flex-1 text-xs font-medium py-2 px-3 rounded-md transition-colors",
            activePanel === 'edital'
              ? "bg-card shadow-sm text-foreground"
              : "text-muted-foreground hover:text-foreground"
          )}
        >
          Edital
        </button>
      </div>

      {/* Panel Content */}
      <ScrollArea className="flex-1 -mx-1 px-1">
        {activePanel === 'upcoming' && (
          <div className="space-y-2">
            {upcomingEvents.length === 0 ? (
              <div className="text-center py-8">
                <CalendarDays className="w-8 h-8 mx-auto text-muted-foreground/40 mb-2" />
                <p className="text-xs text-muted-foreground">Nenhum evento futuro</p>
              </div>
            ) : (
              upcomingEvents.map(event => {
                const start = parseISO(event.start_time);
                const isEventToday = isTodayFn(start);
                return (
                  <button
                    key={event.id}
                    onClick={() => onSelectDate(start)}
                    className="w-full text-left p-3 rounded-lg border bg-card hover:bg-muted/50 transition-colors group"
                  >
                    <div className="flex items-start gap-2.5">
                      <div
                        className="w-2 h-2 rounded-full mt-1.5 flex-shrink-0"
                        style={{ backgroundColor: event.color || 'hsl(var(--primary))' }}
                      />
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-medium text-foreground truncate">{event.title}</p>
                        {event.subject && (
                          <p className="text-xs text-muted-foreground truncate">{event.subject}</p>
                        )}
                        <div className="flex items-center gap-1 mt-1">
                          <Clock className="w-3 h-3 text-muted-foreground" />
                          <span className={cn(
                            "text-xs",
                            isEventToday ? "text-primary font-medium" : "text-muted-foreground"
                          )}>
                            {isEventToday ? 'Hoje' : format(start, "dd MMM", { locale: ptBR })}
                            {' · '}
                            {format(start, 'HH:mm')}
                          </span>
                        </div>
                      </div>
                    </div>
                  </button>
                );
              })
            )}
          </div>
        )}

        {activePanel === 'edital' && (
          <div className="space-y-3">
            {/* Edital Progress Summary */}
            <div className="p-3 rounded-lg bg-primary/5 border border-primary/10">
              <div className="flex items-center justify-between mb-2">
                <span className="text-xs font-medium text-foreground">Progresso Geral</span>
                <span className="text-xs font-bold text-primary">{progressPercentage.toFixed(0)}%</span>
              </div>
              <Progress value={progressPercentage} className="h-1.5 bg-primary/20" />
              <p className="text-[11px] text-muted-foreground mt-1.5">
                {completedTopics} de {totalTopics} tópicos
              </p>
            </div>

            {/* Subject breakdown */}
            {Object.entries(
              topics.reduce((acc, t) => {
                if (!acc[t.subject]) acc[t.subject] = { completed: 0, total: 0 };
                acc[t.subject].total++;
                if (t.is_completed) acc[t.subject].completed++;
                return acc;
              }, {} as Record<string, { completed: number; total: number }>)
            ).map(([subject, { completed, total }]) => {
              const pct = total > 0 ? (completed / total) * 100 : 0;
              return (
                <div key={subject} className="flex items-center gap-2 px-1">
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center justify-between mb-0.5">
                      <span className="text-xs font-medium text-foreground truncate">{subject}</span>
                      <span className="text-[10px] text-muted-foreground ml-2">{completed}/{total}</span>
                    </div>
                    <Progress value={pct} className="h-1 bg-muted" />
                  </div>
                </div>
              );
            })}

            {totalTopics === 0 && (
              <div className="text-center py-6">
                <BookOpen className="w-7 h-7 mx-auto text-muted-foreground/40 mb-2" />
                <p className="text-xs text-muted-foreground">Nenhum tópico cadastrado</p>
              </div>
            )}
          </div>
        )}
      </ScrollArea>
    </div>
  );
}

export default function Planner() {
  const { user, loading } = useAuth();
  const [selectedDate, setSelectedDate] = useState(new Date());
  const [sidebarPanel, setSidebarPanel] = useState('upcoming');
  const [triggerNewEvent, setTriggerNewEvent] = useState(0);
  const [activeTab, setActiveTab] = useState('calendar');
  const isMobile = useMediaQuery('(max-width: 768px)');

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[50vh]">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  return (
    <>
      <Helmet>
        <title>Planner de Estudos para Concursos | Organize seu Cronograma e Edital</title>
        <meta name="description" content="Organize seu cronograma de estudos, controle o edital do concurso e agende revisões. Planner inteligente para maximizar seu aprendizado e aprovação." />
        <link rel="canonical" href="https://passar-concursos.vercel.app/planner" />
      </Helmet>

      <div className="min-h-screen bg-muted/30">
        {/* Mobile Layout */}
        {isMobile ? (
          <div className="container mx-auto px-4 py-6 max-w-5xl">
            <div className="mb-6">
              <div className="flex items-center gap-3 mb-2">
                <div className="flex items-center justify-center w-9 h-9 rounded-xl bg-primary/10">
                  <CalendarDays className="w-5 h-5 text-primary" />
                </div>
                <h1 className="text-xl font-bold text-foreground">Planner de Estudos</h1>
              </div>
              <p className="text-muted-foreground text-sm">
                Organize seu cronograma e controle o edital.
              </p>
            </div>
            <div className="bg-card rounded-2xl border shadow-sm overflow-hidden">
              <Tabs value={activeTab} onValueChange={setActiveTab}>
                <div className="border-b bg-muted/30 px-4 pt-4">
                  <TabsList className="w-full h-auto p-1 bg-background/60 backdrop-blur-sm rounded-xl grid grid-cols-2 gap-1">
                    <TabsTrigger value="calendar" className="flex items-center justify-center gap-2 py-2.5 px-3 rounded-lg data-[state=active]:bg-card data-[state=active]:shadow-sm transition-all">
                      <CalendarDays className="w-4 h-4" />
                      <span className="text-sm font-medium">Calendário</span>
                    </TabsTrigger>
                    <TabsTrigger value="edital" className="flex items-center justify-center gap-2 py-2.5 px-3 rounded-lg data-[state=active]:bg-card data-[state=active]:shadow-sm transition-all">
                      <BookOpen className="w-4 h-4" />
                      <span className="text-sm font-medium">Edital</span>
                    </TabsTrigger>
                  </TabsList>
                </div>
                <div className="p-4">
                  <TabsContent value="calendar" className="mt-0 focus-visible:outline-none">
                    <CalendarTab />
                  </TabsContent>
                  <TabsContent value="edital" className="mt-0 focus-visible:outline-none">
                    <EditalControlTab />
                  </TabsContent>
                </div>
              </Tabs>
            </div>
          </div>
        ) : (
          /* Desktop Layout - Google Calendar style */
          <div className="flex h-[calc(100vh-4rem)]">
            {/* Sidebar */}
            <aside className="w-64 xl:w-72 border-r bg-card/50 p-4 flex flex-col flex-shrink-0">
              <PlannerSidebar
                selectedDate={selectedDate}
                onSelectDate={(date) => {
                  setSelectedDate(date);
                  setActiveTab('calendar');
                }}
                onNewEvent={() => setTriggerNewEvent(prev => prev + 1)}
                activePanel={sidebarPanel}
                onPanelChange={setSidebarPanel}
              />
            </aside>

            {/* Main Content */}
            <main className="flex-1 flex flex-col min-w-0 overflow-hidden">
              {/* Top Bar */}
              <div className="border-b bg-card/80 backdrop-blur-sm px-6 py-3 flex items-center justify-between flex-shrink-0">
                <div className="flex items-center gap-4">
                  <div className="flex items-center gap-2">
                    <CalendarDays className="w-5 h-5 text-primary" />
                    <h1 className="text-lg font-semibold text-foreground">Planner de Estudos</h1>
                  </div>
                  <div className="h-5 w-px bg-border" />
                  <div className="flex gap-1 bg-muted/50 rounded-lg p-0.5">
                    <button
                      onClick={() => setActiveTab('calendar')}
                      className={cn(
                        "text-xs font-medium py-1.5 px-3 rounded-md transition-colors",
                        activeTab === 'calendar'
                          ? "bg-card shadow-sm text-foreground"
                          : "text-muted-foreground hover:text-foreground"
                      )}
                    >
                      Calendário
                    </button>
                    <button
                      onClick={() => setActiveTab('edital')}
                      className={cn(
                        "text-xs font-medium py-1.5 px-3 rounded-md transition-colors",
                        activeTab === 'edital'
                          ? "bg-card shadow-sm text-foreground"
                          : "text-muted-foreground hover:text-foreground"
                      )}
                    >
                      Controle de Edital
                    </button>
                    {/* Propostas só existem como saída do gerador de IA, que está
                        desligado por ser recurso pago (src/config/features.ts). */}
                    {IA_PLANO_ESTUDOS_HABILITADA && (
                      <button
                        onClick={() => setActiveTab('proposals')}
                        className={cn(
                          "text-xs font-medium py-1.5 px-3 rounded-md transition-colors",
                          activeTab === 'proposals'
                            ? "bg-card shadow-sm text-foreground"
                            : "text-muted-foreground hover:text-foreground"
                        )}
                      >
                        Propostas
                      </button>
                    )}
                  </div>
                </div>
                <div className="flex items-center gap-2">
                  <NotificationsPopover />
                </div>
              </div>

              {/* Content Area */}
              <div className="flex-1 overflow-auto p-6">
                {activeTab === 'calendar' ? (
                  <CalendarTab
                    selectedDate={selectedDate}
                    onDateChange={setSelectedDate}
                    triggerNewEvent={triggerNewEvent}
                  />
                ) : activeTab === 'proposals' && IA_PLANO_ESTUDOS_HABILITADA ? (
                  <ProposalsTab />
                ) : (
                  <EditalControlTab />
                )}
              </div>
            </main>
          </div>
        )}
      </div>
    </>
  );
}
