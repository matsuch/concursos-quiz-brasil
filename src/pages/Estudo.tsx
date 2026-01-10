import { useState, useMemo, useEffect } from "react";
import { useQuery, useQueryClient } from "@tanstack/react-query";
import Navbar from "@/components/Navbar";
import { Flashcard } from "@/components/Flashcard";
import { SubjectCard } from "@/components/SubjectCard";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Badge } from "@/components/ui/badge";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { useSubscription } from "@/hooks/useSubscription";
import { useFlashcardProgress } from "@/hooks/useFlashcardProgress";
import { CreateFlashcardDialog } from "@/components/CreateFlashcardDialog";
import { useToast } from "@/hooks/use-toast";
import { 
  BookOpen, 
  Scale, 
  Building2, 
  Calculator, 
  FileText, 
  Globe,
  ChevronLeft,
  ChevronRight,
  Shuffle,
  RotateCcw,
  Loader2,
  LucideIcon,
  CheckCircle,
  User,
  Pencil,
  Trash2
} from "lucide-react";

const subjectConfig: Record<string, { icon: LucideIcon; color: string; summary: string }> = {
  "Direito Constitucional": {
    icon: Scale,
    color: "#10b981",
    summary: `
## Direito Constitucional

### Princípios Fundamentais (Arts. 1º ao 4º)

**Fundamentos da República (Art. 1º):**
- Soberania
- Cidadania  
- Dignidade da pessoa humana
- Valores sociais do trabalho e da livre iniciativa
- Pluralismo político

**Objetivos Fundamentais (Art. 3º):**
- Construir sociedade livre, justa e solidária
- Garantir o desenvolvimento nacional
- Erradicar a pobreza e a marginalização
- Promover o bem de todos

### Direitos e Garantias Fundamentais

**Art. 5º - Direitos Individuais:**
- Igualdade perante a lei
- Princípio da legalidade
- Vedação à tortura
- Liberdade de expressão
- Inviolabilidade do domicílio

### Organização do Estado

Os entes federativos são: União, Estados, Distrito Federal e Municípios, todos autônomos.
    `
  },
  "Direito Administrativo": {
    icon: Building2,
    color: "#6366f1",
    summary: `
## Direito Administrativo

### Princípios da Administração Pública

**LIMPE (Art. 37, CF):**
- **Legalidade:** A Administração só pode fazer o que a lei permite
- **Impessoalidade:** Atuação imparcial, sem favorecimentos
- **Moralidade:** Conduta ética e honesta
- **Publicidade:** Transparência nos atos
- **Eficiência:** Melhor resultado com menor custo

### Atos Administrativos

**Atributos:**
- Presunção de legitimidade
- Imperatividade
- Autoexecutoriedade
- Tipicidade

**Elementos:**
- Competência
- Finalidade
- Forma
- Motivo
- Objeto

### Licitações (Lei 14.133/2021)

Nova Lei de Licitações e Contratos Administrativos.
    `
  },
  "Português": {
    icon: FileText,
    color: "#f59e0b",
    summary: `
## Língua Portuguesa

### Interpretação de Texto

**Tipos de texto:**
- Narrativo: conta uma história
- Descritivo: caracteriza pessoas, lugares
- Dissertativo: expõe ideias e argumentos
- Injuntivo: instrui, orienta

### Gramática

**Concordância Verbal:**
- Sujeito simples: verbo concorda em número e pessoa
- Sujeito composto: verbo no plural
- Sujeito coletivo: verbo no singular

**Regência Verbal:**
- Aspirar (desejar): aspirar A
- Assistir (ver): assistir A
- Visar (objetivar): visar A

### Redação Oficial

Características: impessoalidade, uso do padrão culto, clareza, concisão e formalidade.
    `
  },
  "Raciocínio Lógico": {
    icon: Calculator,
    color: "#ec4899",
    summary: `
## Raciocínio Lógico

### Proposições

**Conectivos Lógicos:**
- Negação (~): inverte o valor
- Conjunção (∧): E
- Disjunção (∨): OU
- Condicional (→): SE... ENTÃO
- Bicondicional (↔): SE E SOMENTE SE

### Tabelas-Verdade

**Conjunção (E):** só é V quando ambas são V  
**Disjunção (OU):** só é F quando ambas são F  
**Condicional:** só é F quando V→F (Vera Fischer)

### Equivalências Lógicas

- Contrapositiva: p→q ≡ ~q→~p
- Negação da condicional: ~(p→q) ≡ p ∧ ~q
- De Morgan: ~(p∧q) ≡ ~p∨~q e ~(p∨q) ≡ ~p∧~q
    `
  },
  "Atualidades": {
    icon: Globe,
    color: "#14b8a6",
    summary: `
## Atualidades

### Brasil

**Economia:**
- Reforma Tributária (EC 132/2023)
- Novo PAC
- Taxa Selic e política monetária

**Política:**
- Composição do STF
- Reformas em andamento
- Relações internacionais

### Mundo

**Conflitos:**
- Guerra na Ucrânia
- Tensões no Oriente Médio
- Disputas comerciais EUA-China

**Meio Ambiente:**
- Mudanças climáticas
- COP e acordos ambientais
- Transição energética
    `
  },
};

interface DbFlashcard {
  id: string;
  subject: string;
  front_content: string;
  back_content: string;
  is_official: boolean | null;
  created_by: string | null;
}

export default function Estudo() {
  const [selectedSubjectName, setSelectedSubjectName] = useState<string | null>(null);
  const [currentCardIndex, setCurrentCardIndex] = useState(0);
  const { user } = useAuth();
  const { hasFeature, subscribed } = useSubscription();
  const { progress, fetchProgress, markAsStudied, getProgress } = useFlashcardProgress();
  const queryClient = useQueryClient();
  const { toast } = useToast();

  const { data: flashcards = [], isLoading } = useQuery({
    queryKey: ["flashcards"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("flashcards")
        .select("id, subject, front_content, back_content, is_official, created_by")
        .order("subject", { ascending: true });
      if (error) throw error;
      return data as DbFlashcard[];
    },
  });

  const handleFlashcardCreated = () => {
    queryClient.invalidateQueries({ queryKey: ["flashcards"] });
  };

  // Fetch user progress when authenticated
  useEffect(() => {
    if (user?.id) {
      fetchProgress(user.id);
    }
  }, [user?.id, fetchProgress]);

  const subjects = useMemo(() => {
    const subjectGroups = flashcards.reduce((acc, fc) => {
      if (!acc[fc.subject]) acc[fc.subject] = [];
      acc[fc.subject].push(fc);
      return acc;
    }, {} as Record<string, DbFlashcard[]>);

    return Object.entries(subjectGroups).map(([name, cards]) => ({
      id: name.toLowerCase().replace(/\s+/g, "-"),
      name,
      flashcards: cards,
      config: subjectConfig[name] || { icon: BookOpen, color: "#6366f1", summary: "" },
    }));
  }, [flashcards]);

  const selectedSubject = selectedSubjectName 
    ? subjects.find(s => s.name === selectedSubjectName) 
    : subjects[0];

  const currentFlashcards = selectedSubject?.flashcards || [];
  const totalCards = currentFlashcards.length;

  // Calculate studied cards based on actual progress from DB
  const studiedCardsInSubject = useMemo(() => {
    const studiedSet = new Set<number>();
    currentFlashcards.forEach((fc, index) => {
      if (progress.has(fc.id)) {
        studiedSet.add(index);
      }
    });
    return studiedSet;
  }, [currentFlashcards, progress]);

  const handleFlip = () => {
    if (!user?.id || totalCards === 0) return;
    const currentCard = currentFlashcards[currentCardIndex];
    markAsStudied(currentCard.id, user.id);
  };

  const handleNext = () => {
    if (totalCards === 0) return;
    setCurrentCardIndex((prev) => (prev + 1) % totalCards);
  };

  const handlePrev = () => {
    if (totalCards === 0) return;
    setCurrentCardIndex((prev) => (prev - 1 + totalCards) % totalCards);
  };

  const handleShuffle = () => {
    if (totalCards === 0) return;
    const randomIndex = Math.floor(Math.random() * totalCards);
    setCurrentCardIndex(randomIndex);
  };

  const handleReset = () => {
    setCurrentCardIndex(0);
  };

  const handleSubjectChange = (subjectName: string) => {
    setSelectedSubjectName(subjectName);
    setCurrentCardIndex(0);
  };

  const handleDeleteFlashcard = async (flashcardId: string) => {
    try {
      const { error } = await supabase
        .from("flashcards")
        .delete()
        .eq("id", flashcardId);

      if (error) throw error;

      toast({
        title: "Flashcard excluído",
        description: "Seu flashcard foi removido com sucesso.",
      });

      // Adjust current index if needed
      if (currentCardIndex >= totalCards - 1 && currentCardIndex > 0) {
        setCurrentCardIndex(currentCardIndex - 1);
      }

      queryClient.invalidateQueries({ queryKey: ["flashcards"] });
    } catch (error) {
      console.error("Error deleting flashcard:", error);
      toast({
        title: "Erro ao excluir",
        description: "Não foi possível excluir o flashcard.",
        variant: "destructive",
      });
    }
  };

  const currentFlashcard = currentFlashcards[currentCardIndex];
  const isUserOwned = currentFlashcard && user?.id && currentFlashcard.created_by === user.id;

  if (isLoading) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="flex items-center justify-center h-[60vh]">
          <Loader2 className="w-8 h-8 animate-spin text-primary" />
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <main className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="text-center mb-8">
          <h1 className="text-3xl md:text-4xl font-bold text-foreground mb-2">
            Flashcards e Resumos
          </h1>
          <p className="text-muted-foreground max-w-2xl mx-auto mb-4">
            Estude as principais matérias de concursos públicos com flashcards interativos e resumos objetivos
          </p>
          {user && subscribed && hasFeature("flashcardsCustom") && (
            <CreateFlashcardDialog userId={user.id} onSuccess={handleFlashcardCreated} />
          )}
          {user && (!subscribed || !hasFeature("flashcardsCustom")) && (
            <p className="text-sm text-muted-foreground">
              Faça upgrade para o plano Padrão para criar flashcards personalizados
            </p>
          )}
        </div>

        {subjects.length === 0 ? (
          <div className="text-center py-12">
            <BookOpen className="w-16 h-16 mx-auto text-muted-foreground/50 mb-4" />
            <p className="text-muted-foreground">Nenhum flashcard disponível ainda.</p>
          </div>
        ) : (
          <div className="grid lg:grid-cols-12 gap-8">
            {/* Sidebar - Subjects */}
            <div className="lg:col-span-4 space-y-3">
              <h2 className="text-lg font-semibold text-foreground mb-4">Matérias</h2>
              {subjects.map((subject) => (
                <SubjectCard
                  key={subject.id}
                  title={subject.name}
                  description={`${subject.flashcards.length} flashcards`}
                  icon={subject.config.icon}
                  flashcardsCount={subject.flashcards.length}
                  color={subject.config.color}
                  onClick={() => handleSubjectChange(subject.name)}
                  isSelected={selectedSubject?.name === subject.name}
                />
              ))}
            </div>

            {/* Main Content */}
            <div className="lg:col-span-8">
              {selectedSubject && totalCards > 0 && (
                <Tabs defaultValue="flashcards" className="w-full">
                  <TabsList className="grid w-full grid-cols-2 mb-6">
                    <TabsTrigger value="flashcards">Flashcards</TabsTrigger>
                    <TabsTrigger value="resumo">Resumo</TabsTrigger>
                  </TabsList>

                  <TabsContent value="flashcards" className="space-y-6">
                    {/* Progress */}
                    <div className="flex items-center justify-between text-sm">
                      <span className="text-muted-foreground">
                        Card {currentCardIndex + 1} de {totalCards}
                      </span>
                      <span className="text-primary font-medium flex items-center gap-1">
                        {studiedCardsInSubject.size > 0 && <CheckCircle className="w-4 h-4" />}
                        {studiedCardsInSubject.size} estudados
                        {!user && <span className="text-muted-foreground text-xs ml-1">(faça login para salvar)</span>}
                      </span>
                    </div>

                    {/* Progress bar */}
                    <div className="h-2 bg-muted rounded-full overflow-hidden">
                      <div 
                        className="h-full bg-gradient-to-r from-primary to-accent transition-all duration-300"
                        style={{ width: `${(studiedCardsInSubject.size / totalCards) * 100}%` }}
                      />
                    </div>

                    {/* Flashcard */}
                    <div className="relative">
                      <div className="absolute -top-2 right-2 z-10 flex items-center gap-2">
                        {isUserOwned && (
                          <div className="flex gap-1">
                            <CreateFlashcardDialog
                              userId={user!.id}
                              flashcard={currentFlashcard}
                              onSuccess={() => queryClient.invalidateQueries({ queryKey: ["flashcards"] })}
                              trigger={
                                <Button variant="outline" size="icon" className="h-7 w-7">
                                  <Pencil className="w-3 h-3" />
                                </Button>
                              }
                            />
                            <AlertDialog>
                              <AlertDialogTrigger asChild>
                                <Button variant="outline" size="icon" className="h-7 w-7 text-destructive hover:text-destructive">
                                  <Trash2 className="w-3 h-3" />
                                </Button>
                              </AlertDialogTrigger>
                              <AlertDialogContent>
                                <AlertDialogHeader>
                                  <AlertDialogTitle>Excluir flashcard?</AlertDialogTitle>
                                  <AlertDialogDescription>
                                    Esta ação não pode ser desfeita. O flashcard será permanentemente removido.
                                  </AlertDialogDescription>
                                </AlertDialogHeader>
                                <AlertDialogFooter>
                                  <AlertDialogCancel>Cancelar</AlertDialogCancel>
                                  <AlertDialogAction onClick={() => handleDeleteFlashcard(currentFlashcard.id)}>
                                    Excluir
                                  </AlertDialogAction>
                                </AlertDialogFooter>
                              </AlertDialogContent>
                            </AlertDialog>
                          </div>
                        )}
                        <Badge 
                          variant={currentFlashcards[currentCardIndex].is_official ? "default" : "secondary"}
                          className="text-xs"
                        >
                          {currentFlashcards[currentCardIndex].is_official ? (
                            <>
                              <CheckCircle className="w-3 h-3 mr-1" />
                              Oficial
                            </>
                          ) : (
                            <>
                              <User className="w-3 h-3 mr-1" />
                              Usuário
                            </>
                          )}
                        </Badge>
                      </div>
                      <Flashcard
                        front={currentFlashcards[currentCardIndex].front_content}
                        back={currentFlashcards[currentCardIndex].back_content}
                        category={selectedSubject.name}
                        onFlip={handleFlip}
                      />
                    </div>

                    {/* Controls */}
                    <div className="flex items-center justify-center gap-3">
                      <Button
                        variant="outline"
                        size="icon"
                        onClick={handlePrev}
                      >
                        <ChevronLeft className="w-5 h-5" />
                      </Button>
                      
                      <Button
                        variant="outline"
                        onClick={handleShuffle}
                        className="gap-2"
                      >
                        <Shuffle className="w-4 h-4" />
                        Aleatório
                      </Button>

                      <Button
                        variant="outline"
                        onClick={handleReset}
                        className="gap-2"
                      >
                        <RotateCcw className="w-4 h-4" />
                        Reiniciar
                      </Button>

                      <Button
                        variant="outline"
                        size="icon"
                        onClick={handleNext}
                      >
                        <ChevronRight className="w-5 h-5" />
                      </Button>
                    </div>

                    {/* Quick nav dots */}
                    <div className="flex items-center justify-center gap-2 flex-wrap">
                      {currentFlashcards.map((fc, index) => (
                        <button
                          key={fc.id}
                          onClick={() => setCurrentCardIndex(index)}
                          className={`w-3 h-3 rounded-full transition-all ${
                            index === currentCardIndex
                              ? "bg-primary scale-125"
                              : studiedCardsInSubject.has(index)
                              ? "bg-accent"
                              : "bg-muted hover:bg-muted-foreground/50"
                          }`}
                          title={progress.has(fc.id) ? `Estudado ${getProgress(fc.id)?.times_reviewed}x` : "Não estudado"}
                        />
                      ))}
                    </div>
                  </TabsContent>

                  <TabsContent value="resumo">
                    <div className="bg-card border border-border rounded-2xl p-6 md:p-8">
                      <div 
                        className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-sm font-medium mb-6"
                        style={{ 
                          backgroundColor: `${selectedSubject.config.color}20`,
                          color: selectedSubject.config.color 
                        }}
                      >
                        <selectedSubject.config.icon className="w-4 h-4" />
                        {selectedSubject.name}
                      </div>
                      
                      <div className="prose prose-sm md:prose-base max-w-none dark:prose-invert prose-headings:text-foreground prose-p:text-muted-foreground prose-strong:text-foreground prose-li:text-muted-foreground">
                        {selectedSubject.config.summary ? (
                          selectedSubject.config.summary.split('\n').map((line, i) => {
                            if (line.startsWith('## ')) {
                              return <h2 key={i} className="text-2xl font-bold mt-0 mb-4">{line.replace('## ', '')}</h2>;
                            }
                            if (line.startsWith('### ')) {
                              return <h3 key={i} className="text-xl font-semibold mt-6 mb-3">{line.replace('### ', '')}</h3>;
                            }
                            if (line.startsWith('**') && line.endsWith('**')) {
                              return <p key={i} className="font-semibold text-foreground mt-4 mb-2">{line.replace(/\*\*/g, '')}</p>;
                            }
                            if (line.startsWith('- ')) {
                              return <li key={i} className="ml-4">{line.replace('- ', '')}</li>;
                            }
                            if (line.trim()) {
                              return <p key={i}>{line}</p>;
                            }
                            return null;
                          })
                        ) : (
                          <p className="text-muted-foreground">Resumo não disponível para esta matéria.</p>
                        )}
                      </div>
                    </div>
                  </TabsContent>
                </Tabs>
              )}
            </div>
          </div>
        )}
      </main>
    </div>
  );
}
