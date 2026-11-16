/**
 * Chaves de recurso.
 *
 * O site roda hoje inteiramente em serviço gratuito — é o objetivo declarado:
 * ficar no ar sem custo para validar se cresce organicamente. Tudo que
 * depende de serviço pago fica desligado por aqui, e não removido, para
 * voltar a ligar com uma linha quando houver plano pago de verdade.
 */

/**
 * Geração de plano de estudos com IA.
 *
 * Desligada: cada geração é uma chamada de LLM cobrada por uso
 * (`api/generate-study-plan.ts` + `OPENAI_API_KEY`). Com a chave desligada o
 * app mostra, no lugar do gerador, o aviso de "somente planos pagos" e o
 * formulário de interesse (`StudyPlanInterestDialog`), que grava em
 * `plan_interest` — é assim que a demanda é medida antes de ligar o custo.
 *
 * Para religar: colocar `true` aqui e cadastrar `OPENAI_API_KEY` e
 * `DATABASE_URL` nas variáveis de ambiente da Vercel.
 */
export const IA_PLANO_ESTUDOS_HABILITADA: boolean = false;

/**
 * Simulados.
 *
 * Desligado: a tabela `simulados` está vazia, e um item de menu que abre uma
 * tela sem conteúdo é pior do que não ter o item. A rota /simulado continua
 * existindo e mostra um aviso para quem chegar por link antigo.
 *
 * Para religar: cadastrar ao menos um simulado com questões e colocar `true`.
 */
export const SIMULADOS_HABILITADOS: boolean = false;

/**
 * Explicação da IA nas questões.
 *
 * Desligada: nenhuma questão do banco tem `ai_explanation` preenchida. Com a
 * chave ligada o visitante vê "disponível para quem tem conta", cria a conta e
 * encontra "não disponível para esta questão" — promessa que o produto não
 * cumpre. Desligada, o bloco só aparece para quem está logado e apenas nas
 * questões que de fato têm explicação.
 *
 * Para religar: preencher as explicações e colocar `true`.
 */
export const EXPLICACAO_IA_HABILITADA: boolean = false;
