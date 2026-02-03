import { useState } from 'react';
import { Plus, Trash2, Clock, RotateCcw } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { useStudyPlanner, StudyCycle, StudyBlock } from '@/hooks/useStudyPlanner';

const SUBJECT_COLORS = [
  { name: 'Azul', value: '#3b82f6' },
  { name: 'Verde', value: '#22c55e' },
  { name: 'Roxo', value: '#a855f7' },
  { name: 'Laranja', value: '#f97316' },
  { name: 'Rosa', value: '#ec4899' },
  { name: 'Amarelo', value: '#eab308' },
  { name: 'Vermelho', value: '#ef4444' },
  { name: 'Ciano', value: '#06b6d4' },
];

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

export function StudyCycleTab() {
  const { cycles, blocks, createCycle, createBlock, deleteBlock } = useStudyPlanner();
  const [newCycleName, setNewCycleName] = useState('');
  const [newCycleDuration, setNewCycleDuration] = useState(7);
  const [selectedCycle, setSelectedCycle] = useState<StudyCycle | null>(null);
  const [newBlockSubject, setNewBlockSubject] = useState('');
  const [newBlockDuration, setNewBlockDuration] = useState(60);
  const [newBlockColor, setNewBlockColor] = useState('#3b82f6');
  const [isAddingCycle, setIsAddingCycle] = useState(false);
  const [isAddingBlock, setIsAddingBlock] = useState(false);

  const activeCycle = cycles.find(c => c.is_active) || cycles[0];
  const cycleBlocks = blocks.filter(b => b.cycle_id === (selectedCycle?.id || activeCycle?.id));

  const totalMinutes = cycleBlocks.reduce((acc, b) => acc + b.duration_minutes, 0);
  const hours = Math.floor(totalMinutes / 60);
  const minutes = totalMinutes % 60;

  const handleCreateCycle = async () => {
    if (!newCycleName.trim()) return;
    await createCycle.mutateAsync({ name: newCycleName, duration_days: newCycleDuration });
    setNewCycleName('');
    setNewCycleDuration(7);
    setIsAddingCycle(false);
  };

  const handleCreateBlock = async () => {
    if (!newBlockSubject.trim() || !activeCycle) return;
    await createBlock.mutateAsync({
      cycle_id: selectedCycle?.id || activeCycle.id,
      subject: newBlockSubject,
      duration_minutes: newBlockDuration,
      order_index: cycleBlocks.length,
      color: newBlockColor,
    });
    setNewBlockSubject('');
    setNewBlockDuration(60);
    setIsAddingBlock(false);
  };

  return (
    <div className="space-y-6">
      {/* Section Header */}
      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
        <div className="space-y-1">
          <h2 className="text-xl sm:text-2xl font-semibold text-foreground">Ciclo de Estudos</h2>
          <p className="text-sm text-muted-foreground">Organize seu cronograma de estudos rotativo</p>
        </div>
        <Dialog open={isAddingCycle} onOpenChange={setIsAddingCycle}>
          <DialogTrigger asChild>
            <Button size="sm" className="rounded-lg shadow-sm">
              <Plus className="w-4 h-4 mr-2" />
              Novo Ciclo
            </Button>
          </DialogTrigger>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Criar Novo Ciclo</DialogTitle>
            </DialogHeader>
            <div className="space-y-4">
              <div>
                <Label>Nome do Ciclo</Label>
                <Input
                  value={newCycleName}
                  onChange={(e) => setNewCycleName(e.target.value)}
                  placeholder="Ex: Ciclo Principal"
                />
              </div>
              <div>
                <Label>Duração (dias)</Label>
                <Select value={String(newCycleDuration)} onValueChange={(v) => setNewCycleDuration(Number(v))}>
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="7">7 dias (semanal)</SelectItem>
                    <SelectItem value="14">14 dias (quinzenal)</SelectItem>
                    <SelectItem value="21">21 dias</SelectItem>
                    <SelectItem value="30">30 dias (mensal)</SelectItem>
                  </SelectContent>
                </Select>
              </div>
              <Button onClick={handleCreateCycle} disabled={createCycle.isPending} className="w-full">
                Criar Ciclo
              </Button>
            </div>
          </DialogContent>
        </Dialog>
      </div>

      {/* Cycle Selection Pills */}
      {cycles.length > 0 && (
        <div className="flex gap-2 flex-wrap">
          {cycles.map((cycle) => (
            <Badge
              key={cycle.id}
              variant={cycle.id === (selectedCycle?.id || activeCycle?.id) ? 'default' : 'outline'}
              className="cursor-pointer py-1.5 px-3 rounded-lg transition-all hover:scale-105"
              onClick={() => setSelectedCycle(cycle)}
            >
              <RotateCcw className="w-3 h-3 mr-1.5" />
              {cycle.name} ({cycle.duration_days}d)
            </Badge>
          ))}
        </div>
      )}

      {/* Active Cycle Card */}
      {activeCycle && (
        <Card className="border-0 shadow-sm bg-muted/30 rounded-xl">
          <CardHeader className="pb-4">
            <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
              <div className="space-y-1">
                <CardTitle className="flex items-center gap-2 text-lg">
                  <div className="flex items-center justify-center w-8 h-8 rounded-lg bg-primary/10">
                    <RotateCcw className="w-4 h-4 text-primary" />
                  </div>
                  {selectedCycle?.name || activeCycle.name}
                </CardTitle>
                <CardDescription className="text-sm">
                  Total: {hours}h {minutes}min por ciclo de {selectedCycle?.duration_days || activeCycle.duration_days} dias
                </CardDescription>
              </div>
              <Dialog open={isAddingBlock} onOpenChange={setIsAddingBlock}>
                <DialogTrigger asChild>
                  <Button size="sm" variant="outline" className="rounded-lg">
                    <Plus className="w-4 h-4 mr-2" />
                    Adicionar Bloco
                  </Button>
                </DialogTrigger>
                <DialogContent>
                  <DialogHeader>
                    <DialogTitle>Adicionar Bloco de Estudo</DialogTitle>
                  </DialogHeader>
                  <div className="space-y-4">
                    <div>
                      <Label>Matéria</Label>
                      <Select value={newBlockSubject} onValueChange={setNewBlockSubject}>
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
                      <Label>Duração (minutos)</Label>
                      <Select value={String(newBlockDuration)} onValueChange={(v) => setNewBlockDuration(Number(v))}>
                        <SelectTrigger>
                          <SelectValue />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="30">30 min</SelectItem>
                          <SelectItem value="45">45 min</SelectItem>
                          <SelectItem value="60">1 hora</SelectItem>
                          <SelectItem value="90">1h 30min</SelectItem>
                          <SelectItem value="120">2 horas</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div>
                      <Label>Cor</Label>
                      <div className="flex gap-2 flex-wrap mt-2">
                        {SUBJECT_COLORS.map((color) => (
                          <button
                            key={color.value}
                            type="button"
                            className={`w-8 h-8 rounded-full border-2 ${newBlockColor === color.value ? 'border-foreground' : 'border-transparent'}`}
                            style={{ backgroundColor: color.value }}
                            onClick={() => setNewBlockColor(color.value)}
                            title={color.name}
                          />
                        ))}
                      </div>
                    </div>
                    <Button onClick={handleCreateBlock} disabled={createBlock.isPending} className="w-full">
                      Adicionar
                    </Button>
                  </div>
                </DialogContent>
              </Dialog>
            </div>
          </CardHeader>
          <CardContent className="pt-2">
            {cycleBlocks.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-10 text-center">
                <div className="w-12 h-12 rounded-full bg-muted flex items-center justify-center mb-3">
                  <Clock className="w-6 h-6 text-muted-foreground" />
                </div>
                <p className="text-muted-foreground text-sm">
                  Nenhum bloco de estudo adicionado.
                </p>
                <p className="text-muted-foreground text-sm">
                  Clique em "Adicionar Bloco" para comecar.
                </p>
              </div>
            ) : (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                {cycleBlocks.map((block, index) => (
                  <div
                    key={block.id}
                    className="flex items-center justify-between p-3.5 rounded-xl bg-card border shadow-sm transition-all hover:shadow-md"
                    style={{ borderLeftWidth: 4, borderLeftColor: block.color }}
                  >
                    <div className="flex items-center gap-3">
                      <span className="flex items-center justify-center w-7 h-7 rounded-lg bg-muted text-xs font-semibold text-muted-foreground">
                        {index + 1}
                      </span>
                      <div>
                        <p className="font-medium text-sm text-foreground">{block.subject}</p>
                        <p className="text-xs text-muted-foreground flex items-center gap-1 mt-0.5">
                          <Clock className="w-3 h-3" />
                          {block.duration_minutes} min
                        </p>
                      </div>
                    </div>
                    <Button
                      variant="ghost"
                      size="icon"
                      className="h-8 w-8 rounded-lg hover:bg-destructive/10"
                      onClick={() => deleteBlock.mutate(block.id)}
                    >
                      <Trash2 className="w-4 h-4 text-destructive" />
                    </Button>
                  </div>
                ))}
              </div>
            )}
          </CardContent>
        </Card>
      )}

      {/* Empty State */}
      {cycles.length === 0 && (
        <Card className="border-dashed border-2 bg-muted/20 rounded-xl">
          <CardContent className="flex flex-col items-center justify-center py-14">
            <div className="w-14 h-14 rounded-2xl bg-primary/10 flex items-center justify-center mb-4">
              <RotateCcw className="w-7 h-7 text-primary" />
            </div>
            <h3 className="text-lg font-semibold text-foreground mb-1">Nenhum ciclo criado</h3>
            <p className="text-muted-foreground text-sm text-center mb-5 max-w-sm">
              Crie seu primeiro ciclo de estudos para organizar suas materias de forma rotativa.
            </p>
            <Button onClick={() => setIsAddingCycle(true)} className="rounded-lg shadow-sm">
              <Plus className="w-4 h-4 mr-2" />
              Criar Primeiro Ciclo
            </Button>
          </CardContent>
        </Card>
      )}
    </div>
  );
}
