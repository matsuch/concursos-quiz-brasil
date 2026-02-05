import { useState, useMemo } from 'react';
import { FileText, Plus, Search, Pin, Trash2, Edit3, X, Save, FolderOpen, 
         Bold, Italic, Underline, Heading, List, ListOrdered, AlignLeft, 
         AlignCenter, AlignRight, Code } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardHeader } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogFooter } from '@/components/ui/dialog';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Label } from '@/components/ui/label';
import { Toggle } from '@/components/ui/toggle';
import { ToggleGroup, ToggleGroupItem } from '@/components/ui/toggle-group';
import { Separator } from '@/components/ui/separator';
import { useStudyNotes, StudyNote } from '@/hooks/useStudyNotes';
import { useAuth } from '@/hooks/useAuth';
import { Navigate } from 'react-router-dom';
import { toast } from 'sonner';

const SUBJECTS = [
  'Direito Constitucional',
  'Direito Administrativo',
  'Direito Penal',
  'Direito Civil',
  'Direito Processual',
  'Português',
  'Raciocínio Lógico',
  'Informática',
  'Atualidades',
  'Outros',
];

const SUBJECT_COLORS: Record<string, string> = {
  'Direito Constitucional': 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-200',
  'Direito Administrativo': 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-200',
  'Direito Penal': 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-200',
  'Direito Civil': 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-200',
  'Direito Processual': 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-200',
  'Português': 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-200',
  'Raciocínio Lógico': 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-200',
  'Informática': 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-200',
  'Atualidades': 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-200',
  'Outros': 'bg-gray-100 text-gray-800 dark:bg-gray-700 dark:text-gray-200',
};

// Componente de Editor de Texto Rico
function RichTextEditor({ value, onChange }: { value: string; onChange: (value: string) => void }) {
  const [isPreview, setIsPreview] = useState(false);

  const handleFormat = (format: string) => {
    const textarea = document.getElementById('rich-text-editor') as HTMLTextAreaElement;
    if (!textarea) return;

    const start = textarea.selectionStart;
    const end = textarea.selectionEnd;
    const selectedText = value.substring(start, end);
    let newText = value;

    switch (format) {
      case 'bold':
        newText = value.substring(0, start) + `**${selectedText}**` + value.substring(end);
        break;
      case 'italic':
        newText = value.substring(0, start) + `*${selectedText}*` + value.substring(end);
        break;
      case 'underline':
        newText = value.substring(0, start) + `<u>${selectedText}</u>` + value.substring(end);
        break;
      case 'h1':
        newText = value.substring(0, start) + `\n# ${selectedText}\n` + value.substring(end);
        break;
      case 'h2':
        newText = value.substring(0, start) + `\n## ${selectedText}\n` + value.substring(end);
        break;
      case 'h3':
        newText = value.substring(0, start) + `\n### ${selectedText}\n` + value.substring(end);
        break;
      case 'bullet':
        newText = value.substring(0, start) + `\n- ${selectedText}\n` + value.substring(end);
        break;
      case 'numbered':
        newText = value.substring(0, start) + `\n1. ${selectedText}\n` + value.substring(end);
        break;
      case 'code':
        newText = value.substring(0, start) + `\`${selectedText}\`` + value.substring(end);
        break;
      case 'link':
        const url = prompt('Digite a URL:');
        if (url) {
          newText = value.substring(0, start) + `[${selectedText}](${url})` + value.substring(end);
        }
        break;
    }

    onChange(newText);
    setTimeout(() => {
      textarea.focus();
      textarea.setSelectionRange(start, start + newText.length - value.length + selectedText.length);
    }, 0);
  };

  const parseMarkdown = (text: string) => {
    return text
      .replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
      .replace(/\*(.*?)\*/g, '<em>$1</em>')
      .replace(/<u>(.*?)<\/u>/g, '<u>$1</u>')
      .replace(/# (.*?)(\n|$)/g, '<h1 class="text-2xl font-bold mt-4 mb-2">$1</h1>')
      .replace(/## (.*?)(\n|$)/g, '<h2 class="text-xl font-bold mt-3 mb-2">$1</h2>')
      .replace(/### (.*?)(\n|$)/g, '<h3 class="text-lg font-bold mt-2 mb-1">$1</h3>')
      .replace(/- (.*?)(\n|$)/g, '<li class="ml-4">$1</li>')
      .replace(/1\. (.*?)(\n|$)/g, '<li class="ml-4 list-decimal">$1</li>')
      .replace(/`(.*?)`/g, '<code class="bg-muted px-1 rounded text-sm">$1</code>')
      .replace(/\[(.*?)\]\((.*?)\)/g, '<a href="$2" class="text-primary hover:underline" target="_blank">$1</a>')
      .replace(/\n/g, '<br>');
  };

  return (
    <div className="border rounded-lg overflow-hidden">
      {/* Toolbar */}
      <div className="flex items-center gap-1 p-2 border-b bg-muted/50 flex-wrap">
        <ToggleGroup type="multiple" className="flex gap-1">
          <Toggle size="sm" onClick={() => handleFormat('bold')} aria-label="Negrito">
            <Bold className="h-4 w-4" />
          </Toggle>
          <Toggle size="sm" onClick={() => handleFormat('italic')} aria-label="Itálico">
            <Italic className="h-4 w-4" />
          </Toggle>
          <Toggle size="sm" onClick={() => handleFormat('underline')} aria-label="Sublinhado">
            <Underline className="h-4 w-4" />
          </Toggle>
        </ToggleGroup>

        <Separator orientation="vertical" className="h-6 mx-1" />

        <ToggleGroup type="single" className="flex gap-1">
          <Toggle size="sm" onClick={() => handleFormat('h1')} aria-label="Título 1">
            <Heading className="h-4 w-4" />
            <span className="ml-1 text-xs">1</span>
          </Toggle>
          <Toggle size="sm" onClick={() => handleFormat('h2')} aria-label="Título 2">
            <Heading className="h-4 w-4" />
            <span className="ml-1 text-xs">2</span>
          </Toggle>
          <Toggle size="sm" onClick={() => handleFormat('h3')} aria-label="Título 3">
            <Heading className="h-4 w-4" />
            <span className="ml-1 text-xs">3</span>
          </Toggle>
        </ToggleGroup>

        <Separator orientation="vertical" className="h-6 mx-1" />

        <ToggleGroup type="single" className="flex gap-1">
          <Toggle size="sm" onClick={() => handleFormat('bullet')} aria-label="Lista com marcadores">
            <List className="h-4 w-4" />
          </Toggle>
          <Toggle size="sm" onClick={() => handleFormat('numbered')} aria-label="Lista numerada">
            <ListOrdered className="h-4 w-4" />
          </Toggle>
        </ToggleGroup>

        <Separator orientation="vertical" className="h-6 mx-1" />

        <Toggle size="sm" onClick={() => handleFormat('code')} aria-label="Código">
          <Code className="h-4 w-4" />
        </Toggle>

        <Toggle size="sm" onClick={() => handleFormat('link')} aria-label="Link">
          🔗
        </Toggle>

        <div className="flex-1" />

        <ToggleGroup type="single" className="flex gap-1">
          <Toggle
            size="sm"
            pressed={!isPreview}
            onClick={() => setIsPreview(false)}
            aria-label="Modo edição"
          >
            Editar
          </Toggle>
          <Toggle
            size="sm"
            pressed={isPreview}
            onClick={() => setIsPreview(true)}
            aria-label="Modo visualização"
          >
            Visualizar
          </Toggle>
        </ToggleGroup>
      </div>

      {/* Editor/Preview */}
      {isPreview ? (
        <div 
          className="p-4 min-h-[250px] bg-background prose prose-sm dark:prose-invert max-w-none"
          dangerouslySetInnerHTML={{ __html: parseMarkdown(value) || '<p class="text-muted-foreground">Digite algo para visualizar...</p>' }}
        />
      ) : (
        <textarea
          id="rich-text-editor"
          value={value}
          onChange={(e) => onChange(e.target.value)}
          placeholder="Digite suas anotações aqui... Use os botões acima para formatar o texto."
          className="w-full min-h-[250px] p-4 bg-background resize-none focus:outline-none font-mono text-sm"
          spellCheck="true"
        />
      )}

      {/* Dicas */}
      <div className="px-3 py-2 border-t bg-muted/30 text-xs text-muted-foreground">
        <div className="flex flex-wrap gap-2">
          <span className="flex items-center gap-1">
            <kbd className="px-1.5 py-0.5 bg-background border rounded text-xs">**negrito**</kbd>
            <span>Negrito</span>
          </span>
          <span className="flex items-center gap-1">
            <kbd className="px-1.5 py-0.5 bg-background border rounded text-xs">*itálico*</kbd>
            <span>Itálico</span>
          </span>
          <span className="flex items-center gap-1">
            <kbd className="px-1.5 py-0.5 bg-background border rounded text-xs"># Título</kbd>
            <span>Título</span>
          </span>
          <span className="flex items-center gap-1">
            <kbd className="px-1.5 py-0.5 bg-background border rounded text-xs">- item</kbd>
            <span>Lista</span>
          </span>
        </div>
      </div>
    </div>
  );
}

export default function Anotacoes() {
  const { user, loading: authLoading } = useAuth();
  const { notes, isLoading, createNote, updateNote, deleteNote, togglePin } = useStudyNotes();
  
  const [searchTerm, setSearchTerm] = useState('');
  const [filterSubject, setFilterSubject] = useState<string>('all');
  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [editingNote, setEditingNote] = useState<StudyNote | null>(null);
  const [formData, setFormData] = useState({ subject: '', title: '', content: '' });

  const filteredNotes = useMemo(() => {
    return notes.filter(note => {
      const matchesSearch = 
        note.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
        note.content.toLowerCase().includes(searchTerm.toLowerCase());
      const matchesSubject = filterSubject === 'all' || note.subject === filterSubject;
      return matchesSearch && matchesSubject;
    });
  }, [notes, searchTerm, filterSubject]);

  const groupedNotes = useMemo(() => {
    const groups: Record<string, StudyNote[]> = {};
    filteredNotes.forEach(note => {
      if (!groups[note.subject]) groups[note.subject] = [];
      groups[note.subject].push(note);
    });
    return groups;
  }, [filteredNotes]);

  const openCreateDialog = () => {
    setEditingNote(null);
    setFormData({ subject: SUBJECTS[0], title: '', content: '' });
    setIsDialogOpen(true);
  };

  const openEditDialog = (note: StudyNote) => {
    setEditingNote(note);
    setFormData({ subject: note.subject, title: note.title, content: note.content });
    setIsDialogOpen(true);
  };

  const handleSubmit = async () => {
    if (!formData.subject || !formData.title.trim()) {
      toast.error('Preencha a matéria e o título');
      return;
    }

    try {
      if (editingNote) {
        await updateNote.mutateAsync({ id: editingNote.id, ...formData });
        toast.success('Anotação atualizada!');
      } else {
        await createNote.mutateAsync(formData);
        toast.success('Anotação criada!');
      }
      setIsDialogOpen(false);
    } catch (error) {
      toast.error('Erro ao salvar anotação');
    }
  };

  const handleDelete = async (id: string) => {
    if (confirm('Tem certeza que deseja excluir esta anotação?')) {
      try {
        await deleteNote.mutateAsync(id);
        toast.success('Anotação excluída!');
      } catch {
        toast.error('Erro ao excluir');
      }
    }
  };

  const handleTogglePin = async (note: StudyNote) => {
    try {
      await togglePin.mutateAsync({ id: note.id, is_pinned: note.is_pinned });
      toast.success(note.is_pinned ? 'Anotação desafixada' : 'Anotação fixada');
    } catch {
      toast.error('Erro ao atualizar');
    }
  };

  if (authLoading) {
    return (
      <div className="flex items-center justify-center min-h-[50vh]">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary" />
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/auth" replace />;
  }

  return (
    <div className="min-h-screen bg-muted/30">
      <div className="container mx-auto px-4 py-6 max-w-6xl">
        {/* Header */}
        <div className="mb-8">
          <div className="flex items-center gap-3 mb-3">
            <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-primary/10">
              <FileText className="w-5 h-5 text-primary" />
            </div>
            <h1 className="text-2xl sm:text-3xl font-bold text-foreground">Anotações e Resumos</h1>
          </div>
          <p className="text-muted-foreground text-sm sm:text-base">
            Organize suas anotações por matéria e acesse seu material de estudo de forma prática.
          </p>
        </div>

        {/* Toolbar */}
        <div className="flex flex-col sm:flex-row gap-3 mb-6">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
            <Input
              placeholder="Buscar anotações..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              className="pl-10"
            />
          </div>
          <Select value={filterSubject} onValueChange={setFilterSubject}>
            <SelectTrigger className="w-full sm:w-[200px]">
              <SelectValue placeholder="Filtrar por matéria" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todas as Matérias</SelectItem>
              {SUBJECTS.map(s => (
                <SelectItem key={s} value={s}>{s}</SelectItem>
              ))}
            </SelectContent>
          </Select>
          <Button onClick={openCreateDialog} className="gap-2">
            <Plus className="w-4 h-4" />
            Nova Anotação
          </Button>
        </div>

        {/* Content */}
        {isLoading ? (
          <div className="flex items-center justify-center py-12">
            <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary" />
          </div>
        ) : filteredNotes.length === 0 ? (
          <Card className="border-dashed">
            <CardContent className="flex flex-col items-center justify-center py-12 text-center">
              <FolderOpen className="w-12 h-12 text-muted-foreground mb-4" />
              <h3 className="text-lg font-medium text-foreground mb-2">
                {searchTerm || filterSubject !== 'all' ? 'Nenhuma anotação encontrada' : 'Nenhuma anotação ainda'}
              </h3>
              <p className="text-muted-foreground text-sm mb-4">
                {searchTerm || filterSubject !== 'all' 
                  ? 'Tente ajustar os filtros de busca' 
                  : 'Crie sua primeira anotação para começar'}
              </p>
              {!searchTerm && filterSubject === 'all' && (
                <Button onClick={openCreateDialog} variant="outline" className="gap-2">
                  <Plus className="w-4 h-4" />
                  Criar Anotação
                </Button>
              )}
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-8">
            {Object.entries(groupedNotes).map(([subject, subjectNotes]) => (
              <div key={subject}>
                <div className="flex items-center gap-2 mb-4">
                  <Badge className={SUBJECT_COLORS[subject] || SUBJECT_COLORS['Outros']}>
                    {subject}
                  </Badge>
                  <span className="text-sm text-muted-foreground">
                    {subjectNotes.length} {subjectNotes.length === 1 ? 'anotação' : 'anotações'}
                  </span>
                </div>
                <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                  {subjectNotes.map(note => (
                    <Card 
                      key={note.id} 
                      className={`group hover:shadow-md transition-shadow cursor-pointer ${
                        note.is_pinned ? 'ring-2 ring-primary/50' : ''
                      }`}
                      onClick={() => openEditDialog(note)}
                    >
                      <CardHeader className="pb-2">
                        <div className="flex items-start justify-between gap-2">
                          <h3 className="font-semibold text-foreground line-clamp-2 flex-1">
                            {note.is_pinned && <Pin className="inline w-4 h-4 mr-1 text-primary" />}
                            {note.title}
                          </h3>
                          <div className="flex gap-1 opacity-0 group-hover:opacity-100 transition-opacity">
                            <Button
                              size="icon"
                              variant="ghost"
                              className="h-8 w-8"
                              onClick={(e) => { e.stopPropagation(); handleTogglePin(note); }}
                            >
                              <Pin className={`w-4 h-4 ${note.is_pinned ? 'text-primary' : ''}`} />
                            </Button>
                            <Button
                              size="icon"
                              variant="ghost"
                              className="h-8 w-8 text-destructive hover:text-destructive"
                              onClick={(e) => { e.stopPropagation(); handleDelete(note.id); }}
                            >
                              <Trash2 className="w-4 h-4" />
                            </Button>
                          </div>
                        </div>
                      </CardHeader>
                      <CardContent>
                        <div 
                          className="text-sm text-muted-foreground line-clamp-3 prose prose-sm dark:prose-invert max-w-none"
                          dangerouslySetInnerHTML={{ 
                            __html: note.content 
                              ? note.content
                                  .replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
                                  .replace(/\*(.*?)\*/g, '<em>$1</em>')
                                  .replace(/<u>(.*?)<\/u>/g, '<u>$1</u>')
                                  .replace(/# (.*?)(\n|$)/g, '<h3 class="font-bold text-base mt-1">$1</h3>')
                                  .replace(/## (.*?)(\n|$)/g, '<h4 class="font-semibold text-sm mt-1">$1</h4>')
                                  .replace(/- (.*?)(\n|$)/g, '• $1<br>')
                                  .replace(/1\. (.*?)(\n|$)/g, '1. $1<br>')
                                  .replace(/\n/g, '<br>')
                              : '<span class="text-muted-foreground/50">Sem conteúdo</span>' 
                          }}
                        />
                        <p className="text-xs text-muted-foreground mt-3">
                          Atualizado em {new Date(note.updated_at).toLocaleDateString('pt-BR')}
                        </p>
                      </CardContent>
                    </Card>
                  ))}
                </div>
              </div>
            ))}
          </div>
        )}

        {/* Dialog */}
        <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
          <DialogContent className="max-w-4xl max-h-[90vh] overflow-y-auto">
            <DialogHeader>
              <DialogTitle className="flex items-center gap-2">
                {editingNote ? <Edit3 className="w-5 h-5" /> : <Plus className="w-5 h-5" />}
                {editingNote ? 'Editar Anotação' : 'Nova Anotação'}
              </DialogTitle>
            </DialogHeader>
            <div className="space-y-4 py-4">
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <Label>Matéria *</Label>
                  <Select value={formData.subject} onValueChange={(v) => setFormData(p => ({ ...p, subject: v }))}>
                    <SelectTrigger>
                      <SelectValue placeholder="Selecione a matéria" />
                    </SelectTrigger>
                    <SelectContent>
                      {SUBJECTS.map(s => (
                        <SelectItem key={s} value={s}>{s}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>
                <div>
                  <Label>Título *</Label>
                  <Input 
                    value={formData.title}
                    onChange={(e) => setFormData(p => ({ ...p, title: e.target.value }))}
                    placeholder="Ex: Princípios Fundamentais"
                  />
                </div>
              </div>
              <div>
                <Label>Conteúdo</Label>
                <RichTextEditor
                  value={formData.content}
                  onChange={(content) => setFormData(p => ({ ...p, content }))}
                />
                <p className="text-xs text-muted-foreground mt-2">
                  Dica: Você pode usar atalhos de teclado como <kbd>Ctrl</kbd> + <kbd>B</kbd> para negrito
                </p>
              </div>
            </div>
            <DialogFooter>
              <Button variant="outline" onClick={() => setIsDialogOpen(false)}>
                <X className="w-4 h-4 mr-2" />
                Cancelar
              </Button>
              <Button onClick={handleSubmit} disabled={createNote.isPending || updateNote.isPending}>
                <Save className="w-4 h-4 mr-2" />
                {editingNote ? 'Salvar' : 'Criar'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </div>
  );
}