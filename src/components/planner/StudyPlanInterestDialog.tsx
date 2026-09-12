import { useEffect, useState } from 'react';
import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Sparkles, Lock, Loader2, CheckCircle2, Send } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/hooks/useAuth';
import { db } from '@/integrations/neon/client';

/**
 * Entra no lugar do gerador de plano com IA enquanto ele está desligado
 * (ver src/config/features.ts): avisa que o recurso é de plano pago e
 * recolhe o interesse de quem quiser ser avisado, gravando em plan_interest.
 *
 * O upsert é por user_id, que é UNIQUE na tabela — reenviar atualiza a
 * resposta em vez de criar duplicata.
 */

interface PlanInterest {
  id: string;
  email: string;
  whatsapp: string | null;
  concurso: string | null;
  message: string | null;
  created_at: string;
}

export function StudyPlanInterestDialog() {
  const [open, setOpen] = useState(false);
  const [email, setEmail] = useState('');
  const [whatsapp, setWhatsapp] = useState('');
  const [concurso, setConcurso] = useState('');
  const [message, setMessage] = useState('');
  const { user } = useAuth();
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const { data: interesse, isLoading } = useQuery({
    queryKey: ['plan-interest', user?.id],
    queryFn: async () => {
      const { data, error } = await db
        .from('plan_interest')
        .select('*')
        .maybeSingle();
      if (error) throw error;
      return (data as PlanInterest | null) ?? null;
    },
    enabled: !!user && open,
  });

  // Preenche com o que já foi enviado antes; na primeira vez, com o e-mail da conta.
  useEffect(() => {
    if (!open) return;
    setEmail(interesse?.email ?? user?.email ?? '');
    setWhatsapp(interesse?.whatsapp ?? '');
    setConcurso(interesse?.concurso ?? '');
    setMessage(interesse?.message ?? '');
  }, [open, interesse, user?.email]);

  const registrarInteresse = useMutation({
    mutationFn: async () => {
      if (!user) throw new Error('É preciso estar logado para registrar interesse.');
      const { error } = await db.from('plan_interest').upsert(
        {
          user_id: user.id,
          email: email.trim(),
          whatsapp: whatsapp.trim() || null,
          concurso: concurso.trim() || null,
          message: message.trim() || null,
        },
        { onConflict: 'user_id' },
      );
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['plan-interest', user?.id] });
      toast({
        title: 'Interesse registrado! 🙌',
        description: 'Avisamos você assim que os planos pagos abrirem.',
      });
      setOpen(false);
    },
    onError: (e: unknown) => {
      toast({
        title: e instanceof Error ? e.message : 'Não foi possível registrar seu interesse',
        variant: 'destructive',
      });
    },
  });

  const emailValido = /\S+@\S+\.\S+/.test(email.trim());

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        <Button
          size="sm"
          variant="outline"
          className="rounded-lg shadow-sm text-sm px-3 py-2 h-auto border-primary/30 text-primary hover:bg-primary/5"
        >
          <Sparkles className="w-4 h-4 mr-2" />
          <span className="hidden sm:inline">Gerar com IA</span>
          <span className="sm:hidden">IA</span>
          <span className="ml-2 inline-flex items-center gap-1 rounded-md bg-primary/10 px-1.5 py-0.5 text-[10px] font-semibold uppercase tracking-wide">
            <Lock className="w-2.5 h-2.5" />
            Pago
          </span>
        </Button>
      </DialogTrigger>

      <DialogContent className="fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 sm:rounded-lg max-h-[85vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="text-lg font-semibold flex items-center gap-2">
            <Sparkles className="w-5 h-5 text-primary" />
            Plano de estudos com IA
          </DialogTitle>
        </DialogHeader>

        {/* Aviso */}
        <div className="rounded-xl border border-primary/20 bg-primary/5 p-4">
          <div className="flex items-start gap-3">
            <div className="w-9 h-9 rounded-lg bg-primary/10 flex items-center justify-center flex-shrink-0">
              <Lock className="w-4 h-4 text-primary" />
            </div>
            <div className="space-y-1">
              <p className="text-sm font-semibold text-foreground">Somente planos pagos</p>
              <p className="text-sm text-muted-foreground">
                A geração automática de tópicos e cronograma a partir do edital ainda não está
                disponível. Todo o restante do planner — edital, calendário, revisões e ciclos —
                segue gratuito e sem limite.
              </p>
            </div>
          </div>
        </div>

        {!user ? (
          <p className="text-sm text-muted-foreground">
            Entre na sua conta para registrar interesse nos planos pagos.
          </p>
        ) : interesse && !registrarInteresse.isPending ? (
          <div className="space-y-4">
            <div className="flex items-start gap-3 rounded-xl border bg-muted/30 p-4">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <div className="space-y-0.5">
                <p className="text-sm font-medium text-foreground">Seu interesse já está registrado</p>
                <p className="text-sm text-muted-foreground">
                  Avisamos em <span className="font-medium text-foreground">{interesse.email}</span>{' '}
                  quando os planos pagos abrirem. Pode atualizar os dados abaixo se quiser.
                </p>
              </div>
            </div>
            <InteresseForm
              email={email}
              whatsapp={whatsapp}
              concurso={concurso}
              message={message}
              onEmail={setEmail}
              onWhatsapp={setWhatsapp}
              onConcurso={setConcurso}
              onMessage={setMessage}
              onSubmit={() => registrarInteresse.mutate()}
              submitting={registrarInteresse.isPending}
              disabled={!emailValido}
              submitLabel="Atualizar dados"
            />
          </div>
        ) : isLoading ? (
          <div className="flex items-center justify-center py-8">
            <Loader2 className="w-5 h-5 animate-spin text-muted-foreground" />
          </div>
        ) : (
          <div className="space-y-4">
            <p className="text-sm text-muted-foreground">
              Quer usar o gerador quando ele abrir? Deixe seu contato — é o que nos diz se vale a
              pena ligar o recurso.
            </p>
            <InteresseForm
              email={email}
              whatsapp={whatsapp}
              concurso={concurso}
              message={message}
              onEmail={setEmail}
              onWhatsapp={setWhatsapp}
              onConcurso={setConcurso}
              onMessage={setMessage}
              onSubmit={() => registrarInteresse.mutate()}
              submitting={registrarInteresse.isPending}
              disabled={!emailValido}
              submitLabel="Tenho interesse"
            />
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}

interface InteresseFormProps {
  email: string;
  whatsapp: string;
  concurso: string;
  message: string;
  onEmail: (v: string) => void;
  onWhatsapp: (v: string) => void;
  onConcurso: (v: string) => void;
  onMessage: (v: string) => void;
  onSubmit: () => void;
  submitting: boolean;
  disabled: boolean;
  submitLabel: string;
}

function InteresseForm({
  email,
  whatsapp,
  concurso,
  message,
  onEmail,
  onWhatsapp,
  onConcurso,
  onMessage,
  onSubmit,
  submitting,
  disabled,
  submitLabel,
}: InteresseFormProps) {
  return (
    <form
      className="space-y-4"
      onSubmit={(e) => {
        e.preventDefault();
        if (!disabled && !submitting) onSubmit();
      }}
    >
      <div>
        <Label htmlFor="interesse-email">E-mail *</Label>
        <Input
          id="interesse-email"
          type="email"
          value={email}
          onChange={(e) => onEmail(e.target.value)}
          placeholder="voce@email.com"
          className="mt-1"
          required
        />
      </div>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div>
          <Label htmlFor="interesse-whatsapp">WhatsApp (opcional)</Label>
          <Input
            id="interesse-whatsapp"
            type="tel"
            value={whatsapp}
            onChange={(e) => onWhatsapp(e.target.value)}
            placeholder="(11) 90000-0000"
            className="mt-1"
          />
        </div>
        <div>
          <Label htmlFor="interesse-concurso">Concurso alvo (opcional)</Label>
          <Input
            id="interesse-concurso"
            value={concurso}
            onChange={(e) => onConcurso(e.target.value)}
            placeholder="Ex: INSS 2026"
            className="mt-1"
          />
        </div>
      </div>
      <div>
        <Label htmlFor="interesse-mensagem">O que você espera do plano? (opcional)</Label>
        <Textarea
          id="interesse-mensagem"
          value={message}
          onChange={(e) => onMessage(e.target.value)}
          placeholder="Conte o que mais ajudaria no seu estudo."
          className="min-h-[90px] mt-1"
        />
      </div>
      <Button type="submit" disabled={disabled || submitting} className="w-full">
        {submitting ? <Loader2 className="w-4 h-4 mr-2 animate-spin" /> : <Send className="w-4 h-4 mr-2" />}
        {submitting ? 'Enviando...' : submitLabel}
      </Button>
    </form>
  );
}
