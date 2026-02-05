import { useState } from 'react';
import { StickyNote, Save, X, Trash2, Loader2 } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover';
import { useQuestionNotes } from '@/hooks/useQuestionNotes';
import { useAuth } from '@/hooks/useAuth';
import { toast } from 'sonner';

interface QuestionNoteButtonProps {
  questionId: string;
}

export function QuestionNoteButton({ questionId }: QuestionNoteButtonProps) {
  const { user } = useAuth();
  const { note, isLoading, saveNote, deleteNote } = useQuestionNotes(questionId);
  const [isOpen, setIsOpen] = useState(false);
  const [content, setContent] = useState('');

  const handleOpen = (open: boolean) => {
    setIsOpen(open);
    if (open) {
      setContent(note?.content ?? '');
    }
  };

  const handleSave = async () => {
    if (!content.trim()) {
      toast.error('Digite uma anotação');
      return;
    }
    try {
      await saveNote.mutateAsync({ questionId, content: content.trim() });
      toast.success('Anotação salva!');
      setIsOpen(false);
    } catch {
      toast.error('Erro ao salvar anotação');
    }
  };

  const handleDelete = async () => {
    if (!note) return;
    try {
      await deleteNote.mutateAsync(note.id);
      toast.success('Anotação removida');
      setContent('');
      setIsOpen(false);
    } catch {
      toast.error('Erro ao remover anotação');
    }
  };

  if (!user) return null;

  const hasNote = !!note?.content;

  return (
    <Popover open={isOpen} onOpenChange={handleOpen}>
      <PopoverTrigger asChild>
        <Button
          variant="ghost"
          size="sm"
          className={`gap-2 text-blue-600 hover:text-yellow-500 hover:bg-yellow-50/80 ${hasNote ? 'text-blue-600' : 'text-muted-foreground'}`}
        >
          <StickyNote className={`w-4 h-4 ${hasNote ? 'fill-blue-500/20' : ''}`} />
          <span className="hidden sm:inline">
            {hasNote ? 'Ver Anotação' : 'Anotar'}
          </span>
        </Button>
      </PopoverTrigger>
      <PopoverContent className="w-80 p-4" align="end">
        <div className="space-y-3">
          <div className="flex items-center justify-between">
            <h4 className="font-medium text-sm text-foreground">Anotação da Questão</h4>
            {hasNote && (
              <Button
                variant="ghost"
                size="icon"
                className="h-7 w-7 text-destructive hover:text-destructive"
                onClick={handleDelete}
                disabled={deleteNote.isPending}
              >
                {deleteNote.isPending ? (
                  <Loader2 className="w-4 h-4 animate-spin" />
                ) : (
                  <Trash2 className="w-4 h-4" />
                )}
              </Button>
            )}
          </div>
          
          {isLoading ? (
            <div className="flex justify-center py-4">
              <Loader2 className="w-5 h-5 animate-spin text-muted-foreground" />
            </div>
          ) : (
            <>
              <Textarea
                value={content}
                onChange={(e) => setContent(e.target.value)}
                placeholder="Escreva sua anotação sobre esta questão..."
                className="min-h-[120px] resize-none text-sm"
              />
              <div className="flex justify-end gap-2">
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setIsOpen(false)}
                >
                  <X className="w-4 h-4 mr-1" />
                  Cancelar
                </Button>
                <Button
                  size="sm"
                  onClick={handleSave}
                  disabled={saveNote.isPending || !content.trim()}
                >
                  {saveNote.isPending ? (
                    <Loader2 className="w-4 h-4 mr-1 animate-spin" />
                  ) : (
                    <Save className="w-4 h-4 mr-1" />
                  )}
                  Salvar
                </Button>
              </div>
            </>
          )}
        </div>
      </PopoverContent>
    </Popover>
  );
}
