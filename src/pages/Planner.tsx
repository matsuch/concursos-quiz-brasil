import { useState } from 'react';
import { CalendarDays, BookOpen, Bell, RotateCcw, Calendar } from 'lucide-react';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { EditalControlTab } from '@/components/planner/EditalControlTab';
import { useAuth } from '@/hooks/useAuth';
import { CalendarTab } from '@/components/planner/CalendarTab';
import { Helmet } from 'react-helmet-async';

export default function Planner() {
  const { user, loading } = useAuth();
  const [activeTab, setActiveTab] = useState('calendar');

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[50vh]">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  // if (!user) {
  //  return <Navigate to="/auth" replace />;
  // }

  return (
  <>
    <Helmet>
      <title>Planner de Estudos para Concursos | Organize seu Cronograma e Edital</title>
      <meta name="description" content="Organize seu cronograma de estudos, controle o edital do concurso e agende revisões. Planner inteligente para maximizar seu aprendizado e aprovação." />
      <link rel="canonical" href="https://passar-concursos.vercel.app/planner" />
      <meta property="og:title" content="Planner de Estudos - Passar Concursos" />
      <meta property="og:description" content="Organize seu cronograma e controle seu edital de forma eficiente." />
      <meta property="og:url" content="https://passar-concursos.vercel.app/planner" />
    </Helmet>

    <div className="min-h-screen bg-muted/30 flex flex-col">
      <div className="container mx-auto px-4 sm:px-6 lg:px-8 py-6 sm:py-8 max-w-5xl flex-grow">
        {/* Header Section */}
        <div className="mb-8">
          <div className="flex items-center gap-3 mb-3">
            <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-primary/10">
              <CalendarDays className="w-5 h-5 text-primary" />
            </div>
            <h1 className="text-2xl sm:text-3xl font-bold text-foreground">Planner de Estudos</h1>
          </div>
          <p className="text-muted-foreground text-sm sm:text-base">
            Organize seu cronograma, controle o edital e agende revisões para maximizar seu aprendizado.
          </p>
        </div>

        {/* Main Content Card */}
        <div className="bg-card rounded-2xl border shadow-sm overflow-hidden">
          <Tabs value={activeTab} onValueChange={setActiveTab}>
            {/* Tabs Navigation */}
            <div className="border-b bg-muted/30 px-4 sm:px-6 pt-4">
              <TabsList className="w-full h-auto p-1 bg-background/60 backdrop-blur-sm rounded-xl grid grid-cols-3 gap-1">
                <TabsTrigger 
                  value="edital" 
                  className="flex items-center justify-center gap-2 py-2.5 px-3 rounded-lg data-[state=active]:bg-card data-[state=active]:shadow-sm transition-all"
                >
                  <BookOpen className="w-4 h-4" />
                  <span className="hidden sm:inline text-sm font-medium">Controle de Edital</span>
                  <span className="sm:hidden text-sm font-medium">Edital</span>
                </TabsTrigger>
                <TabsTrigger 
                value="calendar" 
                className="flex items-center justify-center gap-2 py-2.5 px-3 rounded-lg data-[state=active]:bg-card data-[state=active]:shadow-sm transition-all"
              >
                <Calendar className="w-4 h-4" />
                <span className="hidden sm:inline text-sm font-medium">Calendário</span>
                <span className="sm:hidden text-sm font-medium">Calendário</span>
              </TabsTrigger>
              </TabsList>
            </div>

            {/* Tab Content */}
            <div className="p-4 sm:p-6">
              <TabsContent value="edital" className="mt-0 focus-visible:outline-none">
                <EditalControlTab />
              </TabsContent>

              <TabsContent value="calendar" className="mt-0 focus-visible:outline-none">
                <CalendarTab />
              </TabsContent>
            </div>
          </Tabs>
        </div>
      </div>
    </div>
    </>
  );
}
