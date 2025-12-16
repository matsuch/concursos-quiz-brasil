import { useState } from "react";
import { z } from "zod";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";
import { Plus, Loader2 } from "lucide-react";

const SUBJECTS = [
  "Direito Constitucional",
  "Direito Administrativo",
  "Português",
  "Raciocínio Lógico",
  "Atualidades",
];

const flashcardSchema = z.object({
  subject: z.string().min(1, "Selecione uma matéria"),
  front_content: z
    .string()
    .trim()
    .min(5, "A pergunta deve ter pelo menos 5 caracteres")
    .max(500, "A pergunta deve ter no máximo 500 caracteres"),
  back_content: z
    .string()
    .trim()
    .min(2, "A resposta deve ter pelo menos 2 caracteres")
    .max(1000, "A resposta deve ter no máximo 1000 caracteres"),
});

type FlashcardFormData = z.infer<typeof flashcardSchema>;

interface CreateFlashcardDialogProps {
  userId: string;
  onSuccess?: () => void;
}

export function CreateFlashcardDialog({ userId, onSuccess }: CreateFlashcardDialogProps) {
  const [open, setOpen] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const { toast } = useToast();

  const form = useForm<FlashcardFormData>({
    resolver: zodResolver(flashcardSchema),
    defaultValues: {
      subject: "",
      front_content: "",
      back_content: "",
    },
  });

  const onSubmit = async (data: FlashcardFormData) => {
    setIsSubmitting(true);
    try {
      const { error } = await supabase.from("flashcards").insert({
        subject: data.subject,
        front_content: data.front_content,
        back_content: data.back_content,
        created_by: userId,
        is_official: false,
      });

      if (error) throw error;

      toast({
        title: "Flashcard criado!",
        description: "Seu flashcard foi adicionado com sucesso.",
      });

      form.reset();
      setOpen(false);
      onSuccess?.();
    } catch (error) {
      console.error("Error creating flashcard:", error);
      toast({
        title: "Erro ao criar flashcard",
        description: "Ocorreu um erro. Tente novamente.",
        variant: "destructive",
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        <Button className="gap-2">
          <Plus className="w-4 h-4" />
          Criar Flashcard
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle>Criar Novo Flashcard</DialogTitle>
        </DialogHeader>

        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
            <FormField
              control={form.control}
              name="subject"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Matéria</FormLabel>
                  <Select onValueChange={field.onChange} defaultValue={field.value}>
                    <FormControl>
                      <SelectTrigger>
                        <SelectValue placeholder="Selecione a matéria" />
                      </SelectTrigger>
                    </FormControl>
                    <SelectContent>
                      {SUBJECTS.map((subject) => (
                        <SelectItem key={subject} value={subject}>
                          {subject}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="front_content"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Pergunta (Frente)</FormLabel>
                  <FormControl>
                    <Textarea
                      placeholder="Digite a pergunta do flashcard..."
                      className="resize-none"
                      rows={3}
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="back_content"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Resposta (Verso)</FormLabel>
                  <FormControl>
                    <Textarea
                      placeholder="Digite a resposta do flashcard..."
                      className="resize-none"
                      rows={3}
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <p className="text-xs text-muted-foreground">
              Flashcards criados por usuários são marcados como não oficiais.
            </p>

            <div className="flex justify-end gap-2">
              <Button
                type="button"
                variant="outline"
                onClick={() => setOpen(false)}
                disabled={isSubmitting}
              >
                Cancelar
              </Button>
              <Button type="submit" disabled={isSubmitting}>
                {isSubmitting ? (
                  <>
                    <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                    Criando...
                  </>
                ) : (
                  "Criar Flashcard"
                )}
              </Button>
            </div>
          </form>
        </Form>
      </DialogContent>
    </Dialog>
  );
}
