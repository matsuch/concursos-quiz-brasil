---
# Copie este arquivo para content/guias/<slug>.md e preencha.
# Arquivo comecado por "_" nunca e publicado — este aqui e so o gabarito.
#
# Cada campo abaixo vira meta tag, JSON-LD ou texto visivel. Nenhum e
# decorativo: o que estiver errado aqui sai errado na pagina indexada.

# H1 da pagina e <title>. Padrao: Topico + contexto especifico.
# O "| Passar Concursos" e acrescentado pelo codigo — nao escreva aqui.
titulo: "Como funciona X em concursos publicos"

# URL: /guias/<slug>. So minuscula, numero e hifen.
# Nao mude depois de publicado sem tratar redirecionamento.
slug: "como-funciona-x"

# <meta name="description"> e og:description. Ate ~160 caracteres.
# Descreve o que a pagina entrega, sem linguagem de propaganda.
resumo: "O que e X, quando se aplica e o que muda na pratica para quem presta concurso."

# O campo mais importante para busca com IA.
# 2 a 4 frases que respondem a pergunta do titulo SOZINHAS, sem depender do
# resto da pagina. E o trecho que o modelo cita e que o buscador mostra no
# destaque. Escreva nomeando os termos por extenso ("banca organizadora", nao
# "ela"), porque quem extrai nao tem o paragrafo anterior.
resposta_curta: >
  Texto autossuficiente. Se voce recortar so estas frases e mostrar para
  alguem que nunca viu a pagina, a pessoa entende a resposta completa.

# Agrupa o guia na listagem e forma o cluster de links internos.
# Use uma das existentes antes de criar outra.
categoria: "Antes de comecar"

# Termo principal que a pagina persegue. Serve de conferencia editorial:
# se ele nao aparece com naturalidade no texto, o guia esta desalinhado.
palavra_chave: "como funciona x"

# Entidades do dominio tratadas aqui: banca, orgao, cargo, disciplina, etapa.
# Viram "about" no JSON-LD e ajudam o buscador a ligar esta pagina ao tema.
# So liste o que o texto realmente explica.
entidades:
  - "Banca organizadora"
  - "Edital"

publicado_em: 2026-01-01
atualizado_em: 2026-01-01
autor: "Passar Concursos"

# Opcional: minutos. Sem isto, e calculado a 200 palavras por minuto.
# tempo_leitura: 6

# Vira FAQPage no JSON-LD e uma secao visivel no fim da pagina.
# Regra: so pergunta que alguem realmente digita, com resposta completa em
# uma ou duas frases. FAQ inventada para ocupar espaco e penalizada, e o
# JSON-LD tem de bater com o texto visivel — por isso os dois saem daqui.
perguntas:
  - pergunta: "Pergunta exatamente como o usuario escreveria?"
    resposta: "Resposta direta e completa, sem depender do restante do guia."

# Guias do mesmo cluster. Viram links internos no rodape do texto.
# Slug que nao existe e ignorado na hora de montar a pagina.
relacionados: ["outro-guia"]

# De onde vem a informacao. Aparece visivel no fim da pagina.
# Prefira fonte primaria: gov.br, portal da banca, edital, legislacao.
# Nao liste fonte que nao foi consultada de verdade.
fontes:
  - nome: "Nome da fonte"
    url: "https://exemplo.gov.br/pagina"

# Enquanto true, o guia nao entra em JSON, sitemap, HTML nem llms.txt.
rascunho: true
---

O primeiro paragrafo repete a resposta em prosa e ja entrega o essencial.
Nao abra com rodeio ("Muitos candidatos se perguntam...") — quem chegou aqui
veio de uma busca especifica e o extrator corta o comeco.

## Use titulos que sejam a pergunta do usuario

Cada `##` vira uma ancora estavel (`#use-titulos-que-sejam-a-pergunta-do-usuario`),
e e por ela que uma resposta de IA aponta para o trecho exato em vez do topo da
pagina. Titulo generico ("Consideracoes") desperdica essa ancora.

O primeiro paragrafo de cada secao precisa fazer sentido recortado sozinho.

### Subsecao, quando a secao realmente se divide

Nao use `###` so por causa do tamanho da fonte.

## Tabela quando houver comparacao

| Criterio | Opcao A | Opcao B |
|---|---|---|
| Quando se aplica | ... | ... |

Tabela e o formato que modelo de linguagem cita melhor: a linha inteira ja e
uma afirmacao completa, sem precisar remontar a frase.

## O que nao fazer

- Nao invente numero, data, prazo, banca ou estatistica. Sem fonte, escreva
  que a informacao depende do edital.
- Nao repita a palavra-chave para "reforcar".
- Nao alongue o texto sem informacao nova.
