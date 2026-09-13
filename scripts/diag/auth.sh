#!/usr/bin/env bash
# Tenta um cadastro por origem e mostra o que o servidor responde.
#
# A primeira rodada foi inconclusiva: o controle negativo (origem nao
# cadastrada) voltou HTTP 429 "Too many requests", ou seja, esbarrou no
# limitador de taxa antes de chegar a checagem de origem -- nao provou nada.
# Aqui a ordem inverte (o controle vem primeiro, com o balde cheio) e entra
# pausa entre as tentativas.
#
# O 429 e um achado por si: o Neon Auth limita tentativas de cadastro por IP,
# e quem tentou varias vezes seguidas pode estar esbarrando nisso.
#
# VEREDITO (rodada 2, com o controle valido):
#   origem nao cadastrada -> HTTP 403 {"code":"INVALID_ORIGIN"}
#   passar-concursos.vercel.app -> HTTP 200
# Ou seja: origem fora da lista e recusada, e o dominio de producao estava
# fora da lista. Era essa a causa da falha do cadastro, nos dois caminhos.
set -uo pipefail

SUF="$(date +%s)-$RANDOM"
SENHA="Diag-$SUF-Ab1!"
PAUSA=45

echo "## Diagnóstico do cadastro (rodada 2)" >> "$GITHUB_STEP_SUMMARY"
echo "" >> "$GITHUB_STEP_SUMMARY"
echo "| Ordem | Origin | HTTP | Resposta |" >> "$GITHUB_STEP_SUMMARY"
echo "|---|---|---|---|" >> "$GITHUB_STEP_SUMMARY"

N=0
testar() {
  local rotulo="$1" origem="$2" email resp code corpo
  N=$((N+1))
  email="diag-${SUF}-$(echo "$rotulo" | tr -cd 'a-z0-9')@exemplo-teste.invalid"

  resp=$(curl -sS -X POST "$AUTH_URL/sign-up/email" \
    -H 'Content-Type: application/json' -H "Origin: $origem" \
    -d "{\"email\":\"$email\",\"password\":\"$SENHA\",\"name\":\"Diagnostico\"}" \
    -w '\n%{http_code}' 2>&1)

  code=$(tail -n1 <<<"$resp")
  corpo=$(sed '$d' <<<"$resp" | head -c 220 | tr '\n' ' ')
  echo "[$N $rotulo] Origin='$origem' -> HTTP $code"
  echo "            $corpo"
  echo "| $N | \`$origem\` | $code | \`${corpo//|/\\|}\` |" >> "$GITHUB_STEP_SUMMARY"
}

# Controle negativo PRIMEIRO, sem limitador acumulado: se origem nao cadastrada
# for recusada, aparece aqui limpo.
testar "invalida" "https://origem-nao-cadastrada.invalid"
sleep "$PAUSA"
# E so entao o dominio real, para comparar em igualdade de condicoes.
testar "producao" "https://passar-concursos.vercel.app"

echo "" >> "$GITHUB_STEP_SUMMARY"
echo "Usuários de teste: \`diag-${SUF}-*@exemplo-teste.invalid\`" >> "$GITHUB_STEP_SUMMARY"
