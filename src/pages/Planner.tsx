import { useState } from 'react';
import { CalendarDays, BookOpen, Bell, RotateCcw, Calendar } from 'lucide-react';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { StudyCycleTab } from '@/components/planner/StudyCycleTab';
import { EditalControlTab } from '@/components/planner/EditalControlTab';
import { ReviewsTab } from '@/components/planner/ReviewsTab';
import { useAuth } from '@/hooks/useAuth';
import { Navigate } from 'react-router-dom';
import { CalendarTab } from '@/components/planner/CalendarTab';

export default function Planner() {
  const { user, loading } = useAuth();
  const [activeTab, setActiveTab] = useState('cycle');

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
          <p className="text-muted-foreground text-sm sm:text-base max-w-2xl">
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
  );
}
