
# Plano de Estudos com IA no Controle de Edital

## Resumo

Adicionar um assistente de IA dentro do "Controle de Edital" que gera planos de estudo personalizados. O usuario pode colar o conteudo do edital em texto ou responder um questionario guiado. A IA analisa as informacoes e propoe topicos organizados por materia e prioridade. O usuario revisa a proposta e pode aceitar (criando os topicos no banco) ou rejeitar.

## Fluxo do Usuario

```text
Controle de Edital
    |
    +-- Botao "Gerar Plano com IA"
    |
    +-- Dialog/Wizard com 2 opcoes:
    |     |
    |     +-- Opcao 1: Colar texto do edital
    |     |     -> Campo de texto grande
    |     |     -> Botao "Analisar Edital"
    |     |
    |     +-- Opcao 2: Questionario guiado
    |           -> Qual concurso? (nome, orgao)
    |           -> Qual cargo?
    |           -> Quais materias voce sabe que caem?
    |           -> Quantas horas/dia para estudar?
    |           -> Nivel atual (iniciante/intermediario/avancado)?
    |           -> Botao "Gerar Plano"
    |
    +-- Tela de Proposta da IA
    |     -> Lista de topicos organizados por materia
    |     -> Cada topico com prioridade sugerida
    |     -> Checkboxes para selecionar/deselecionar
    |     -> Botoes "Aceitar Selecionados" / "Cancelar"
    |
    +-- Ao aceitar: insere topicos no edital_topics
```

## Implementacao Tecnica

### 1. Edge Function: `generate-study-plan`

- Recebe o texto do edital OU as respostas do questionario
- Fazer uma chamada na API da OpenAI (criar chave genérico, depois admin irá informar)
- Modelo: `gpt-4o-mini`
- Retorna lista de topicos no formato `{ subject, topic, subtopic, priority }`
- Valida JWT do usuario para seguranca
- Trata erros 429 (rate limit) e 402 (creditos)

### 2. Componente: `AIStudyPlanGenerator.tsx`

- Dialog com stepper de 3 etapas:
  1. **Escolha do metodo** (colar edital vs questionario)
  2. **Entrada de dados** (textarea ou formulario com perguntas)
  3. **Proposta da IA** (lista de topicos para revisar e aceitar)
- Feedback de loading enquanto a IA processa
- Permitir ao usuario desmarcar topicos indesejados antes de aceitar

### 3. Integracao no EditalControlTab

- Adicionar botao "Gerar com IA" ao lado do botao "Novo Topico" existente
- Ao aceitar a proposta, chamar `createTopic.mutateAsync` para cada topico selecionado

### 4. Config do Supabase

- Adicionar entrada `[functions.generate-study-plan]` no `config.toml` com `verify_jwt = false`
- Verificar JWT manualmente na edge function com `getClaims()`
- Usar `AI_API_KEY` (auto-provisionado) para chamar o gateway

### 5. Estrutura de arquivos

- `supabase/functions/generate-study-plan/index.ts` - Edge function
- `src/components/planner/AIStudyPlanGenerator.tsx` - Componente do wizard
- Editar `src/components/planner/EditalControlTab.tsx` - Adicionar botao de IA
- Editar `supabase/config.toml` - Registrar a funcao

### Detalhes da IA

O prompt do sistema instruira a IA a:
- Extrair materias e topicos do edital colado
- Atribuir prioridades (1-3) baseado na recorrencia e peso tipico em concursos
- Adicionar subtopicos quando relevante
- Organizar por materia de forma consistente com a lista SUBJECTS ja existente
- Quando via questionario, sugerir topicos comuns para o tipo de concurso informado

O retorno sera via tool calling com schema definido, garantindo dados estruturados sem parsing manual de JSON.
