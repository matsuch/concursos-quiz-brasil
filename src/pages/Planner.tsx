import { useState } from 'react';
import { CalendarDays, BookOpen, Bell, RotateCcw } from 'lucide-react';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { StudyCycleTab } from '@/components/planner/StudyCycleTab';
import { EditalControlTab } from '@/components/planner/EditalControlTab';
import { ReviewsTab } from '@/components/planner/ReviewsTab';
import { useAuth } from '@/hooks/useAuth';
import { Navigate } from 'react-router-dom';

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

 /*if (!user) {
    return <Navigate to="/auth" replace />;
  } */

  return (
    <div className="container mx-auto px-4 py-6 max-w-6xl">
      <div className="mb-6">
        <h1 className="text-3xl font-bold mb-2">Planner de Estudos</h1>
        <p className="text-muted-foreground">
          Organize seu cronograma, controle o edital e agende revisões para maximizar seu aprendizado.
        </p>
      </div>

      <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-6">
        <TabsList className="grid w-full grid-cols-3">
          <TabsTrigger value="cycle" className="flex items-center gap-2">
            <RotateCcw className="w-4 h-4" />
            <span className="hidden sm:inline">Ciclo de Estudos</span>
            <span className="sm:hidden">Ciclo</span>
          </TabsTrigger>
          <TabsTrigger value="edital" className="flex items-center gap-2">
            <BookOpen className="w-4 h-4" />
            <span className="hidden sm:inline">Controle de Edital</span>
            <span className="sm:hidden">Edital</span>
          </TabsTrigger>
          <TabsTrigger value="reviews" className="flex items-center gap-2">
            <Bell className="w-4 h-4" />
            <span className="hidden sm:inline">Revisões</span>
            <span className="sm:hidden">Revisões</span>
          </TabsTrigger>
        </TabsList>

        <TabsContent value="cycle">
          <StudyCycleTab />
        </TabsContent>

        <TabsContent value="edital">
          <EditalControlTab />
        </TabsContent>

        <TabsContent value="reviews">
          <ReviewsTab />
        </TabsContent>
      </Tabs>
    </div>
  );
}
