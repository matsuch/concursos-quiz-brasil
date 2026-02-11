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

const systemPrompt = `Você é um especialista em concursos públicos brasileiros. Sua tarefa é analisar editais ou informações sobre concursos e gerar um plano de estudos estruturado com tópicos organizados por matéria.

Regras:
- Use APENAS estas matérias quando possível: ${SUBJECTS.join(", ")}. Se o edital mencionar uma matéria que não está na lista, use o nome exato do edital.
- Atribua prioridade de 1 a 3 (1=baixa, 2=média, 3=alta) baseado na recorrência e peso típico em concursos.
- Adicione subtópicos quando relevante (ex: artigos específicos, temas dentro do tópico).
- Gere entre 10 e 50 tópicos dependendo da complexidade do edital.
- Organize de forma clara e prática para o estudo.
- Quando receber respostas de questionário (não texto de edital), sugira tópicos comuns para o tipo de concurso informado.`;

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    // Validate JWT
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
    const { data: claimsData, error: claimsError } = await supabase.auth.getClaims(token);
    if (claimsError || !claimsData?.claims) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const { mode, editalText, questionnaire } = await req.json();

    let userMessage = "";
    if (mode === "edital") {
      userMessage = `Analise o seguinte texto de edital de concurso público e extraia os tópicos de estudo:\n\n${editalText}`;
    } else if (mode === "questionnaire") {
      userMessage = `Com base nas seguintes informações, gere um plano de estudos completo:
- Concurso: ${questionnaire.concurso}
- Órgão: ${questionnaire.orgao}
- Cargo: ${questionnaire.cargo}
- Matérias que o candidato sabe que caem: ${questionnaire.materias}
- Horas disponíveis por dia: ${questionnaire.horasPorDia}
- Nível atual: ${questionnaire.nivel}

Gere tópicos detalhados para cada matéria relevante para este tipo de concurso.`;
    } else {
      return new Response(JSON.stringify({ error: "Invalid mode" }), {
        status: 400,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const LOVABLE_API_KEY = Deno.env.get("LOVABLE_API_KEY");
    if (!LOVABLE_API_KEY) {
      throw new Error("LOVABLE_API_KEY is not configured");
    }

    const response = await fetch("https://ai.gateway.lovable.dev/v1/chat/completions", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${LOVABLE_API_KEY}`,
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        model: "google/gemini-3-flash-preview",
        messages: [
          { role: "system", content: systemPrompt },
          { role: "user", content: userMessage },
        ],
        tools: [
          {
            type: "function",
            function: {
              name: "generate_study_topics",
              description: "Generate a structured list of study topics from an edital or questionnaire.",
              parameters: {
                type: "object",
                properties: {
                  topics: {
                    type: "array",
                    items: {
                      type: "object",
                      properties: {
                        subject: { type: "string", description: "Subject/matéria name" },
                        topic: { type: "string", description: "Main topic name" },
                        subtopic: { type: "string", description: "Optional subtopic detail" },
                        priority: { type: "number", enum: [1, 2, 3], description: "1=low, 2=medium, 3=high" },
                      },
                      required: ["subject", "topic", "priority"],
                      additionalProperties: false,
                    },
                  },
                },
                required: ["topics"],
                additionalProperties: false,
              },
            },
          },
        ],
        tool_choice: { type: "function", function: { name: "generate_study_topics" } },
      }),
    });

    if (!response.ok) {
      if (response.status === 429) {
        return new Response(
          JSON.stringify({ error: "Limite de requisições excedido. Tente novamente em alguns minutos." }),
          { status: 429, headers: { ...corsHeaders, "Content-Type": "application/json" } }
        );
      }
      if (response.status === 402) {
        return new Response(
          JSON.stringify({ error: "Créditos insuficientes. Adicione créditos à sua workspace." }),
          { status: 402, headers: { ...corsHeaders, "Content-Type": "application/json" } }
        );
      }
      const errText = await response.text();
      console.error("AI gateway error:", response.status, errText);
      return new Response(
        JSON.stringify({ error: "Erro ao processar com IA. Tente novamente." }),
        { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
      );
    }

    const aiResult = await response.json();
    const toolCall = aiResult.choices?.[0]?.message?.tool_calls?.[0];

    if (!toolCall?.function?.arguments) {
      console.error("No tool call in response:", JSON.stringify(aiResult));
      return new Response(
        JSON.stringify({ error: "A IA não retornou dados estruturados. Tente novamente." }),
        { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
      );
    }

    const parsed = JSON.parse(toolCall.function.arguments);

    return new Response(JSON.stringify({ topics: parsed.topics }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  } catch (e) {
    console.error("generate-study-plan error:", e);
    return new Response(
      JSON.stringify({ error: e instanceof Error ? e.message : "Erro desconhecido" }),
      { status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" } }
    );
  }
});
