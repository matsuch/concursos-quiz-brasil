import { waitUntil } from '@vercel/functions';
import { neon } from '@neondatabase/serverless';
import { createRemoteJWKSet, jwtVerify } from 'jose';

/**
 * Gera um plano de estudos por IA. Porte da edge function Deno que rodava no
 * Supabase (supabase/functions/generate-study-plan).
 *
 * Três diferenças em relação ao original:
 *
 * 1. Autenticação: o Supabase validava o token com supabase.auth.getUser().
 *    Aqui o JWT do Neon Auth é verificado contra o JWKS do projeto, e o id do
 *    usuário sai do claim `sub`.
 *
 * 2. Banco: no lugar do client com service role, uma conexão direta como dono
 *    do banco, que não passa por RLS. É o caminho previsto no schema para
 *    escrever em notifications, que não tem policy de INSERT justamente para
 *    impedir que o cliente forje notificações.
 *
 * 3. Background: o original respondia na hora e seguia processando. Num
 *    serverless da Vercel a função morre ao retornar, então o processamento
 *    fica dentro de waitUntil(), que mantém o trabalho vivo após a resposta.
 */

const DATABASE_URL = process.env.DATABASE_URL!;
const NEON_JWKS_URL = process.env.NEON_JWKS_URL!;
const OPENAI_API_KEY = process.env.OPENAI_API_KEY;

const jwks = createRemoteJWKSet(new URL(NEON_JWKS_URL));
const sql = neon(DATABASE_URL);

const SUBJECTS = [
  "Direito Constitucional",
  "Direito Administrativo",
  "Português",
  "Raciocínio Lógico",
  "Atualidades",
  "Informática",
  "Direito Penal",
  "Direito Civil",
  "AFO",
  "Contabilidade",
];

const systemPrompt = `Você é um especialista em concursos públicos brasileiros. Sua tarefa é analisar editais ou informações sobre concursos e gerar:
1. Um plano de estudos estruturado com tópicos organizados por matéria.
2. Um cronograma semanal de estudos distribuindo as matérias nos dias e horários informados.

Regras para tópicos:
- Use APENAS estas matérias quando possível: ${SUBJECTS.join(", ")}. Se o edital mencionar uma matéria que não está na lista, use o nome exato do edital.
- Atribua prioridade de 1 a 3 (1=baixa, 2=média, 3=alta) baseado na recorrência e peso típico em concursos.
- Adicione subtópicos quando relevante.
- Gere entre 10 e 50 tópicos dependendo da complexidade do edital.

Regras para cronograma:
- Distribua as matérias de forma equilibrada nos dias da semana informados.
- Matérias com prioridade alta devem aparecer com mais frequência.
- Cada bloco de estudo deve ter entre 1 e 3 horas.
- Alterne entre matérias diferentes no mesmo dia quando houver tempo suficiente.
- O horário de início (start_hour) deve respeitar o horário preferido informado pelo usuário.
- Gere o cronograma para o número de semanas informado (duration_weeks).
- Cada evento deve ter: day_of_week (0=domingo a 6=sábado), start_hour (0-23), duration_minutes, subject, title.

Quando receber respostas de questionário (não texto de edital), sugira tópicos comuns para o tipo de concurso informado.`;
async function userIdFromRequest(req: Request): Promise<string | null> {
  const header = req.headers.get('Authorization');
  if (!header?.startsWith('Bearer ')) return null;
  try {
    const { payload } = await jwtVerify(header.slice('Bearer '.length), jwks);
    return typeof payload.sub === 'string' ? payload.sub : null;
  } catch {
    return null;
  }
}

function json(body: unknown, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: { 'Content-Type': 'application/json' },
  });
}

export async function POST(req: Request) {
  const userId = await userIdFromRequest(req);
  if (!userId) return json({ error: 'Unauthorized' }, 401);

  try {
    const { mode, editalText, questionnaire } = await req.json();

    const inputData = mode === 'edital'
      ? { editalText, questionnaire }
      : { questionnaire };

    const [proposal] = await sql`
      insert into study_plan_proposals (user_id, mode, input_data, status, topics, schedule)
      values (${userId}, ${mode}, ${JSON.stringify(inputData)}::jsonb, 'pending', '[]'::jsonb, '[]'::jsonb)
      returning id
    `;

    // Mantém o processamento vivo depois que a resposta já foi enviada.
    waitUntil(processStudyPlan(proposal.id, userId, mode, editalText, questionnaire));

    return json({
      message: 'Plano de estudos está sendo gerado em background',
      proposal_id: proposal.id,
      status: 'processing',
    });
  } catch (e) {
    console.error('generate-study-plan error:', e);
    return json({ error: e instanceof Error ? e.message : 'Erro desconhecido' }, 500);
  }
}

async function processStudyPlan(
  proposalId: string,
  userId: string,
  mode: string,
  editalText: string,
  questionnaire: Record<string, unknown> & { diasSemana?: string[] },
) {
  try {
    if (!OPENAI_API_KEY) throw new Error('OPENAI_API_KEY is not configured');

    const agenda = (questionnaire || {}) as Record<string, unknown>;
    const userMessage = mode === 'edital'
      ? `Analise o seguinte texto de edital de concurso público e extraia os tópicos de estudo.

Informações de agenda:
- Horas disponíveis por dia: ${agenda.horasPorDia || 4}
- Dias da semana disponíveis: ${questionnaire?.diasSemana?.join(', ') || 'Segunda a Sexta'}
- Duração do plano: ${agenda.duracaoSemanas || 4} semanas
- Horário preferido para começar: ${agenda.horarioInicio || '08:00'}

Texto do edital:
${editalText}`
      : `Com base nas seguintes informações, gere um plano de estudos completo com tópicos E cronograma:
- Concurso: ${agenda.concurso}
- Órgão: ${agenda.orgao}
- Cargo: ${agenda.cargo}
- Matérias que o candidato sabe que caem: ${agenda.materias}
- Horas disponíveis por dia: ${agenda.horasPorDia}
- Nível atual: ${agenda.nivel}
- Dias da semana disponíveis: ${questionnaire?.diasSemana?.join(', ') || 'Segunda a Sexta'}
- Duração do plano: ${agenda.duracaoSemanas || 4} semanas
- Horário preferido para começar: ${agenda.horarioInicio || '08:00'}

Gere tópicos detalhados para cada matéria relevante e um cronograma semanal.`;

    const response = await fetch('https://api.openai.com/v1/chat/completions', {
      method: 'POST',
      headers: {
        Authorization: `Bearer ${OPENAI_API_KEY}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        model: 'gpt-4o-mini',
        temperature: 0.3,
        messages: [
          { role: 'system', content: systemPrompt },
          { role: 'user', content: userMessage },
        ],
        tools: [{
          type: "function",
          function: {
            name: "generate_study_plan",
            description: "Generate a structured list of study topics and a weekly schedule.",
            parameters: {
              type: "object",
              properties: {
                topics: {
                  type: "array",
                  items: {
                    type: "object",
                    properties: {
                      subject: { type: "string" },
                      topic: { type: "string" },
                      subtopic: { type: "string" },
                      priority: { type: "number", enum: [1, 2, 3] },
                    },
                    required: ["subject", "topic", "priority"],
                    additionalProperties: false,
                  },
                },
                schedule: {
                  type: "array",
                  description: "Weekly recurring schedule blocks",
                  items: {
                    type: "object",
                    properties: {
                      day_of_week: { type: "number", description: "0=Sunday, 1=Monday, ..., 6=Saturday" },
                      start_hour: { type: "number", description: "Hour to start (0-23)" },
                      duration_minutes: { type: "number", description: "Duration in minutes" },
                      subject: { type: "string" },
                      title: { type: "string", description: "Display title for the calendar event" },
                    },
                    required: ["day_of_week", "start_hour", "duration_minutes", "subject", "title"],
                    additionalProperties: false,
                  },
                },
              },
              required: ["topics", "schedule"],
              additionalProperties: false,
            },
          },
        }],        tool_choice: {
          type: 'function',
          function: { name: 'generate_study_plan' },
        },
      }),
    });

    if (!response.ok) {
      throw new Error(`OpenAI error: ${response.status} - ${await response.text()}`);
    }

    const aiResult = await response.json();
    const args = aiResult.choices?.[0]?.message?.tool_calls?.[0]?.function?.arguments;
    if (!args) throw new Error('A IA não retornou dados estruturados.');

    const parsed = JSON.parse(args);
    const topics = parsed.topics || [];
    const schedule = parsed.schedule || [];

    await sql`
      update study_plan_proposals
         set topics = ${JSON.stringify(topics)}::jsonb,
             schedule = ${JSON.stringify(schedule)}::jsonb,
             status = 'pending',
             processed_at = now(),
             updated_at = now()
       where id = ${proposalId}
    `;

    await sql`
      insert into notifications (user_id, type, title, message, data)
      values (
        ${userId}, 'study_plan_ready', 'Plano de Estudos Pronto! 🎯',
        ${`Seu plano de estudos foi gerado com ${topics.length} tópicos e ${schedule.length} blocos semanais.`},
        ${JSON.stringify({ proposal_id: proposalId })}::jsonb
      )
    `;
  } catch (error) {
    const mensagem = error instanceof Error ? error.message : 'Erro desconhecido';
    console.error(`Error processing proposal ${proposalId}:`, error);

    // Preserva o input_data original e acrescenta o erro, como fazia o original
    await sql`
      update study_plan_proposals
         set status = 'rejected',
             input_data = input_data || ${JSON.stringify({ error: mensagem })}::jsonb,
             processed_at = now()
       where id = ${proposalId}
    `;

    await sql`
      insert into notifications (user_id, type, title, message, data)
      values (
        ${userId}, 'study_plan_error', 'Erro ao gerar plano',
        'Ocorreu um erro ao gerar seu plano de estudos. Tente novamente.',
        ${JSON.stringify({ proposal_id: proposalId, error: mensagem })}::jsonb
      )
    `;
  }
}
