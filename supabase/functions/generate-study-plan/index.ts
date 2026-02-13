import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers":
    "authorization, x-client-info, apikey, content-type, x-supabase-client-platform, x-supabase-client-platform-version, x-supabase-client-runtime, x-supabase-client-runtime-version",
};

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

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const authHeader = req.headers.get("Authorization");
    if (!authHeader?.startsWith("Bearer ")) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const supabase = createClient(
      Deno.env.get("SUPABASE_URL")!,
      Deno.env.get("SUPABASE_ANON_KEY")!,
      { global: { headers: { Authorization: authHeader } } }
    );

    const token = authHeader.replace("Bearer ", "");
    const { data: claimsData, error: claimsError } =
      await supabase.auth.getClaims(token);

    if (claimsError || !claimsData?.claims) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const { mode, editalText, questionnaire } = await req.json();

    let userMessage = "";

    if (mode === "edital") {
      const schedule = questionnaire || {};
      userMessage = `Analise o seguinte texto de edital de concurso público e extraia os tópicos de estudo.

Informações de agenda:
- Horas disponíveis por dia: ${schedule.horasPorDia || 4}
- Dias da semana disponíveis: ${schedule.diasSemana?.join(", ") || "Segunda a Sexta"}
- Duração do plano: ${schedule.duracaoSemanas || 4} semanas
- Horário preferido para começar: ${schedule.horarioInicio || "08:00"}

Texto do edital:
${editalText}`;
    } else if (mode === "questionnaire") {
      userMessage = `Com base nas seguintes informações, gere um plano de estudos completo com tópicos E cronograma:
- Concurso: ${questionnaire.concurso}
- Órgão: ${questionnaire.orgao}
- Cargo: ${questionnaire.cargo}
- Matérias que o candidato sabe que caem: ${questionnaire.materias}
- Horas disponíveis por dia: ${questionnaire.horasPorDia}
- Nível atual: ${questionnaire.nivel}
- Dias da semana disponíveis: ${questionnaire.diasSemana?.join(", ") || "Segunda a Sexta"}
- Duração do plano: ${questionnaire.duracaoSemanas || 4} semanas
- Horário preferido para começar: ${questionnaire.horarioInicio || "08:00"}

Gere tópicos detalhados para cada matéria relevante e um cronograma semanal.`;
    } else {
      return new Response(JSON.stringify({ error: "Invalid mode" }), {
        status: 400,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const OPENAI_API_KEY = Deno.env.get("OPENAI_API_KEY");

    if (!OPENAI_API_KEY) {
      throw new Error("OPENAI_API_KEY is not configured");
    }

    const response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${OPENAI_API_KEY}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        model: "gpt-4o-mini",
        temperature: 0.3,
        messages: [
          { role: "system", content: systemPrompt },
          { role: "user", content: userMessage },
        ],
        tools: [
          {
            type: "function",
            function: {
              name: "generate_study_plan",
              description:
                "Generate a structured list of study topics and a weekly schedule.",
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
                        day_of_week: {
                          type: "number",
                          description: "0=Sunday, 1=Monday, ..., 6=Saturday",
                        },
                        start_hour: {
                          type: "number",
                          description: "Hour to start (0-23)",
                        },
                        duration_minutes: {
                          type: "number",
                          description: "Duration in minutes",
                        },
                        subject: { type: "string" },
                        title: {
                          type: "string",
                          description: "Display title for the calendar event",
                        },
                      },
                      required: [
                        "day_of_week",
                        "start_hour",
                        "duration_minutes",
                        "subject",
                        "title",
                      ],
                      additionalProperties: false,
                    },
                  },
                },
                required: ["topics", "schedule"],
                additionalProperties: false,
              },
            },
          },
        ],
        tool_choice: {
          type: "function",
          function: { name: "generate_study_plan" },
        },
      }),
    });

    if (!response.ok) {
      const errText = await response.text();
      console.error("OpenAI error:", response.status, errText);
      return new Response(
        JSON.stringify({ error: "OpenAI error", status: response.status, details: errText }),
        { status: response.status, headers: { ...corsHeaders, "Content-Type": "application/json" } }
      );
    }

    const aiResult = await response.json();
    const toolCall = aiResult.choices?.[0]?.message?.tool_calls?.[0];

    if (!toolCall?.function?.arguments) {
      console.error("No tool call in response:", JSON.stringify(aiResult));
      return new Response(
        JSON.stringify({ error: "A IA não retornou dados estruturados." }),
        { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
      );
    }

    const parsed = JSON.parse(toolCall.function.arguments);

    return new Response(
      JSON.stringify({ topics: parsed.topics, schedule: parsed.schedule || [] }),
      { headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  } catch (e) {
    console.error("generate-study-plan error:", e);
    return new Response(
      JSON.stringify({ error: e instanceof Error ? e.message : "Erro desconhecido" }),
      { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }
});
