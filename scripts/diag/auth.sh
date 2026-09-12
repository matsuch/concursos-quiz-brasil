#!/usr/bin/env bash
# Tenta um cadastro por origem e mostra o que o servidor responde.
# O e-mail é descartável e marcado, para ser apagado depois.
set -uo pipefail

SUF="$(date +%s)-$RANDOM"
SENHA="Diag-$SUF-Ab1!"

echo "## Diagnóstico do cadastro" >> "$GITHUB_STEP_SUMMARY"
echo "" >> "$GITHUB_STEP_SUMMARY"
echo "| Origin | HTTP | Resposta |" >> "$GITHUB_STEP_SUMMARY"
echo "|---|---|---|" >> "$GITHUB_STEP_SUMMARY"

testar() {
  local rotulo="$1" origem="$2" email resp code corpo
  email="diag-${SUF}-$(echo "$rotulo" | tr -cd 'a-z0-9')@exemplo-teste.invalid"

  if [ -n "$origem" ]; then
    resp=$(curl -sS -X POST "$AUTH_URL/sign-up/email" \
      -H 'Content-Type: application/json' -H "Origin: $origem" \
      -d "{\"email\":\"$email\",\"password\":\"$SENHA\",\"name\":\"Diagnostico\"}" \
      -w '\n%{http_code}' 2>&1)
  else
    resp=$(curl -sS -X POST "$AUTH_URL/sign-up/email" \
      -H 'Content-Type: application/json' \
      -d "{\"email\":\"$email\",\"password\":\"$SENHA\",\"name\":\"Diagnostico\"}" \
      -w '\n%{http_code}' 2>&1)
  fi

  code=$(tail -n1 <<<"$resp")
  corpo=$(sed '$d' <<<"$resp" | head -c 300 | tr '\n' ' ')
  echo "[$rotulo] Origin='${origem:-<nenhum>}' -> HTTP $code"
  echo "          $corpo"
  echo "| \`${origem:-<nenhum>}\` | $code | \`${corpo//|/\\|}\` |" >> "$GITHUB_STEP_SUMMARY"
}

# O domínio real do site, que estava faltando na lista de origens confiáveis.
testar "producao"  "https://passar-concursos.vercel.app"
# Alias do projeto, também adicionado agora.
testar "alias"     "https://estuda-concursos-matheus-projects-caec23f2.vercel.app"
# Estava cadastrado, mas não serve o site — serve de controle.
testar "antigo"    "https://estuda-concursos.vercel.app"
# Controle negativo: origem que ninguém cadastrou deve ser recusada.
testar "invalida"  "https://origem-nao-cadastrada.invalid"
# Sem Origin: reproduz o MISSING_ORIGIN visto na migração.
testar "sem"       ""

echo "" >> "$GITHUB_STEP_SUMMARY"
echo "Usuários criados usam e-mail \`diag-${SUF}-*@exemplo-teste.invalid\` e são apagados depois." >> "$GITHUB_STEP_SUMMARY"
