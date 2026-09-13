# content/guias

Uma pagina de guia por arquivo `.md`. O build faz o resto.

## Publicar um guia

1. `cp _MODELO.md meu-assunto.md`
2. Preencha o cabecalho e escreva o texto.
3. Tire `rascunho: true`.
4. `npm run build` — o guia aparece em `/guias/meu-assunto`.

Arquivo comecado por `_` nunca e publicado.

## O que o build faz com o arquivo

`scripts/gerar-guias.mjs` le este diretorio e escreve:

| Saida | Quem le |
|---|---|
| `public/dados/guias.json` | a listagem `/guias` no navegador |
| `public/dados/guias/<slug>.json` | a pagina do guia no navegador |
| `public/guias/<slug>.md` | quem prefere o Markdown cru (modelos de linguagem) |
| `dist/guias/**/index.html` | rastreadores que nao executam JavaScript |
| `dist/sitemap.xml` | buscadores |

O HTML e gerado uma vez, no build, e a pagina React consome a MESMA string.
Assim o texto que o robo ve e o que a pessoa ve — divergir entre os dois e
cloaking, nao detalhe de implementacao.

## Por que o cabecalho e tao detalhado

Porque e dele que saem `<title>`, `<meta name="description">`, canonical,
Open Graph, `Article`, `FAQPage` e `BreadcrumbList`. Campo vazio ou torto
publica pagina sem descricao ou com dado estruturado invalido — erro que so
aparece semanas depois, no relatorio do buscador.

`scripts/gerar-guias.mjs` recusa o build quando falta campo obrigatorio, o
slug tem formato invalido, a data nao e `AAAA-MM-DD` ou dois guias disputam
o mesmo slug.

## Regras de conteudo

- **Nao invente dado.** Numero de vagas, salario, prazo, banca, estatistica:
  sem fonte, diga que depende do edital. Vale o que esta em `CLAUDE.md`.
- **`resposta_curta` e o campo que mais importa.** E o que a IA cita.
  Tem de fazer sentido recortado, sem o resto da pagina.
- **`perguntas` viram `FAQPage`.** Só pergunta real, com resposta que se
  sustenta sozinha. FAQ inventada para preencher espaco e penalizada.
- **`fontes` aparecem na pagina.** Prefira fonte primaria (gov.br, portal da
  banca, edital, legislacao) e nao liste o que nao foi consultado.
- **`atualizado_em` e visivel.** Guia de concurso envelhece; a data e o que
  permite ao leitor e ao modelo julgar se ainda vale.

## Markdown aceito

Titulo `##` e `###`, paragrafo, lista, lista numerada, citacao, tabela, regra
horizontal, `**negrito**`, `*italico*`, `` `codigo` `` e `[link](url)`.

`#` (h1) e recusado: o h1 da pagina e o campo `titulo`.

O conversor e um subconjunto pequeno, de proposito. Se o conteudo passar a
exigir imagem, nota de rodape ou bloco de codigo, trocar por `marked` e uma
linha em `scripts/gerar-guias.mjs`.
