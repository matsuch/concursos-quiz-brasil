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
