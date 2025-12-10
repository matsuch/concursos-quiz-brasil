import { useState } from "react";
import Navbar from "@/components/Navbar";
import { Flashcard } from "@/components/Flashcard";
import { SubjectCard } from "@/components/SubjectCard";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
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
  RotateCcw
} from "lucide-react";

const subjects = [
  {
    id: "direito-constitucional",
    title: "Direito Constitucional",
    description: "Princípios fundamentais, direitos e garantias, organização do Estado",
    icon: Scale,
    color: "#10b981",
    flashcards: [
      { front: "Quais são os fundamentos da República Federativa do Brasil?", back: "Soberania, cidadania, dignidade da pessoa humana, valores sociais do trabalho e da livre iniciativa, e pluralismo político (Art. 1º, CF)." },
      { front: "Quais são os objetivos fundamentais da República?", back: "Construir uma sociedade livre, justa e solidária; garantir o desenvolvimento nacional; erradicar a pobreza; promover o bem de todos (Art. 3º, CF)." },
      { front: "O que é o princípio da legalidade?", back: "Ninguém será obrigado a fazer ou deixar de fazer alguma coisa senão em virtude de lei (Art. 5º, II, CF)." },
      { front: "Quais são os Poderes da União?", back: "Legislativo, Executivo e Judiciário, independentes e harmônicos entre si (Art. 2º, CF)." },
      { front: "O que são cláusulas pétreas?", back: "São limitações materiais ao poder de reforma da Constituição, previstas no Art. 60, §4º: forma federativa, voto direto/secreto/universal/periódico, separação dos Poderes e direitos e garantias individuais." },
    ],
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
  {
    id: "direito-administrativo",
    title: "Direito Administrativo",
    description: "Princípios, atos administrativos, licitações e contratos",
    icon: Building2,
    color: "#6366f1",
    flashcards: [
      { front: "Quais são os princípios expressos da Administração Pública?", back: "LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência (Art. 37, CF)." },
      { front: "O que é ato administrativo?", back: "É toda manifestação unilateral de vontade da Administração Pública que, agindo nessa qualidade, tenha por fim imediato adquirir, resguardar, transferir, modificar, extinguir e declarar direitos." },
      { front: "Quais são os atributos do ato administrativo?", back: "Presunção de legitimidade, imperatividade, autoexecutoriedade e tipicidade." },
      { front: "Quais são as modalidades de licitação na Lei 14.133/2021?", back: "Pregão, concorrência, concurso, leilão e diálogo competitivo." },
      { front: "O que é o princípio da autotutela?", back: "A Administração pode anular seus próprios atos quando ilegais, ou revogá-los por conveniência e oportunidade (Súmula 473, STF)." },
    ],
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
  {
    id: "portugues",
    title: "Língua Portuguesa",
    description: "Interpretação de texto, gramática, redação oficial",
    icon: FileText,
    color: "#f59e0b",
    flashcards: [
      { front: "O que é coesão textual?", back: "É a conexão entre os elementos do texto através de mecanismos linguísticos como pronomes, conjunções, sinônimos e elipses." },
      { front: "Qual a diferença entre 'a fim de' e 'afim'?", back: "'A fim de' indica finalidade (para). 'Afim' significa semelhante, parecido." },
      { front: "Quando usar 'por que', 'por quê', 'porque' e 'porquê'?", back: "Por que (início/pergunta), por quê (final de frase), porque (resposta/causa), porquê (substantivo = motivo)." },
      { front: "O que é voz passiva sintética?", back: "É formada com verbo transitivo direto + pronome 'se' (partícula apassivadora). Ex: Vendem-se casas." },
      { front: "Quando usar crase?", back: "Usa-se crase (à) quando há fusão da preposição 'a' com o artigo 'a' ou com pronomes demonstrativos." },
    ],
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
  {
    id: "raciocinio-logico",
    title: "Raciocínio Lógico",
    description: "Proposições, conectivos lógicos, argumentação",
    icon: Calculator,
    color: "#ec4899",
    flashcards: [
      { front: "O que é uma proposição?", back: "É uma sentença declarativa que pode ser classificada como verdadeira (V) ou falsa (F), mas nunca ambas simultaneamente." },
      { front: "Qual a tabela-verdade da conjunção (E)?", back: "A conjunção (p ∧ q) só é verdadeira quando ambas as proposições são verdadeiras. V∧V=V, V∧F=F, F∧V=F, F∧F=F." },
      { front: "Qual a tabela-verdade da disjunção (OU)?", back: "A disjunção (p ∨ q) só é falsa quando ambas as proposições são falsas. V∨V=V, V∨F=V, F∨V=V, F∨F=F." },
      { front: "O que é a condicional (SE... ENTÃO)?", back: "A condicional (p → q) só é falsa quando p é verdadeira e q é falsa. É a famosa 'Vera Fischer': V→F=F." },
      { front: "O que é contrapositiva?", back: "É logicamente equivalente à condicional original. Se p → q, então a contrapositiva é ~q → ~p." },
    ],
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
  {
    id: "atualidades",
    title: "Atualidades",
    description: "Acontecimentos relevantes do Brasil e do mundo",
    icon: Globe,
    color: "#14b8a6",
    flashcards: [
      { front: "O que é o Marco Legal das Garantias?", back: "Lei 14.711/2023 que moderniza o sistema de garantias no Brasil, facilitando o uso de imóveis como garantia em empréstimos." },
      { front: "O que é o Novo PAC?", back: "Programa de Aceleração do Crescimento relançado em 2023, com foco em infraestrutura, mobilidade urbana, educação e saúde." },
      { front: "O que é a Reforma Tributária de 2023?", back: "EC 132/2023 que simplifica o sistema tributário, criando o IBS (estadual/municipal) e CBS (federal) em substituição a vários tributos." },
      { front: "O que são os ODS?", back: "Objetivos de Desenvolvimento Sustentável da ONU - 17 metas globais para erradicar a pobreza, proteger o planeta e garantir paz e prosperidade até 2030." },
      { front: "O que é o Marco Legal da IA no Brasil?", back: "PL 2338/2023 que regulamenta o uso da inteligência artificial no Brasil, estabelecendo direitos e deveres." },
    ],
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
];

export default function Estudo() {
  const [selectedSubject, setSelectedSubject] = useState(subjects[0]);
  const [currentCardIndex, setCurrentCardIndex] = useState(0);
  const [studiedCards, setStudiedCards] = useState<Set<number>>(new Set());

  const currentFlashcards = selectedSubject.flashcards;
  const totalCards = currentFlashcards.length;

  const handleNext = () => {
    setStudiedCards(prev => new Set([...prev, currentCardIndex]));
    setCurrentCardIndex((prev) => (prev + 1) % totalCards);
  };

  const handlePrev = () => {
    setCurrentCardIndex((prev) => (prev - 1 + totalCards) % totalCards);
  };

  const handleShuffle = () => {
    const randomIndex = Math.floor(Math.random() * totalCards);
    setCurrentCardIndex(randomIndex);
  };

  const handleReset = () => {
    setCurrentCardIndex(0);
    setStudiedCards(new Set());
  };

  const handleSubjectChange = (subject: typeof subjects[0]) => {
    setSelectedSubject(subject);
    setCurrentCardIndex(0);
    setStudiedCards(new Set());
  };

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <main className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="text-center mb-8">
          <div className="inline-flex items-center gap-2 bg-primary/10 text-primary px-4 py-2 rounded-full text-sm font-medium mb-4">
            <BookOpen className="w-4 h-4" />
            Modo de Estudo
          </div>
          <h1 className="text-3xl md:text-4xl font-bold text-foreground mb-2">
            Flashcards e Resumos
          </h1>
          <p className="text-muted-foreground max-w-2xl mx-auto">
            Estude as principais matérias de concursos públicos com flashcards interativos e resumos objetivos
          </p>
        </div>

        <div className="grid lg:grid-cols-12 gap-8">
          {/* Sidebar - Subjects */}
          <div className="lg:col-span-4 space-y-3">
            <h2 className="text-lg font-semibold text-foreground mb-4">Matérias</h2>
            {subjects.map((subject) => (
              <SubjectCard
                key={subject.id}
                title={subject.title}
                description={subject.description}
                icon={subject.icon}
                flashcardsCount={subject.flashcards.length}
                color={subject.color}
                onClick={() => handleSubjectChange(subject)}
                isSelected={selectedSubject.id === subject.id}
              />
            ))}
          </div>

          {/* Main Content */}
          <div className="lg:col-span-8">
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
                  <span className="text-primary font-medium">
                    {studiedCards.size} estudados
                  </span>
                </div>

                {/* Progress bar */}
                <div className="h-2 bg-muted rounded-full overflow-hidden">
                  <div 
                    className="h-full bg-gradient-to-r from-primary to-accent transition-all duration-300"
                    style={{ width: `${(studiedCards.size / totalCards) * 100}%` }}
                  />
                </div>

                {/* Flashcard */}
                <Flashcard
                  front={currentFlashcards[currentCardIndex].front}
                  back={currentFlashcards[currentCardIndex].back}
                  category={selectedSubject.title}
                />

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
                  {currentFlashcards.map((_, index) => (
                    <button
                      key={index}
                      onClick={() => setCurrentCardIndex(index)}
                      className={`w-3 h-3 rounded-full transition-all ${
                        index === currentCardIndex
                          ? "bg-primary scale-125"
                          : studiedCards.has(index)
                          ? "bg-accent"
                          : "bg-muted hover:bg-muted-foreground/50"
                      }`}
                    />
                  ))}
                </div>
              </TabsContent>

              <TabsContent value="resumo">
                <div className="bg-card border border-border rounded-2xl p-6 md:p-8">
                  <div 
                    className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-sm font-medium mb-6"
                    style={{ 
                      backgroundColor: `${selectedSubject.color}20`,
                      color: selectedSubject.color 
                    }}
                  >
                    <selectedSubject.icon className="w-4 h-4" />
                    {selectedSubject.title}
                  </div>
                  
                  <div className="prose prose-sm md:prose-base max-w-none dark:prose-invert prose-headings:text-foreground prose-p:text-muted-foreground prose-strong:text-foreground prose-li:text-muted-foreground">
                    {selectedSubject.summary.split('\n').map((line, i) => {
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
                    })}
                  </div>
                </div>
              </TabsContent>
            </Tabs>
          </div>
        </div>
      </main>
    </div>
  );
}
