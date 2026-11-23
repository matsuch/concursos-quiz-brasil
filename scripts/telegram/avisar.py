#!/usr/bin/env python3
"""
Avisa no canal do Telegram os concursos bancários novos da coleta semanal.

Roda no scrape.yml logo depois da coleta: compara o public/dados/concursos.json
recém-gerado com a versão do último commit e publica só os concursos que não
estavam lá e que são do nicho bancário. É o motivo para alguém seguir o canal
e voltar ao site, sem custo: a Bot API do Telegram é gratuita.

Sem TELEGRAM_BOT_TOKEN e TELEGRAM_CHAT_ID (secrets do repositório), não envia
nada e não falha: só escreve no resumo o que teria enviado.
"""

import json
import os
import re
import subprocess
import sys
import urllib.parse
import urllib.request

ARQUIVO = "public/dados/concursos.json"
SITE = (os.environ.get("SITE_URL") or "https://passar-concursos.vercel.app").rstrip("/")
LIMITE_POR_RODADA = 10

# Bancos públicos e de economia mista que fazem concurso. Comparado com o
# título e o órgão, sem acento e sem caixa.
BANCARIO = re.compile(
    r"\b(banco|bancari[oa]|caixa economica|banrisul|banestes|banese|basa|bnb|bndes|banpara|brb|bdmg|badesc|desenvolve sp)\b",
    re.I,
)


def sem_acento(texto: str) -> str:
    import unicodedata
    return unicodedata.normalize("NFKD", texto).encode("ascii", "ignore").decode()


# "Banco de talentos" e "banco de dados" aparecem em editais de qualquer órgão.
FALSO_BANCARIO = re.compile(r"\bbanco de (talentos|dados|horas|reserva|cadastro)\b", re.I)


def eh_bancario(c: dict) -> bool:
    texto = FALSO_BANCARIO.sub("", sem_acento(f"{c.get('titulo', '')} {c.get('orgao', '')}"))
    return bool(BANCARIO.search(texto))


def anteriores() -> set[str]:
    try:
        antigo = subprocess.run(["git", "show", f"HEAD:{ARQUIVO}"], capture_output=True, check=True).stdout
        return {c["slug"] for c in json.loads(antigo)["concursos"]}
    except Exception:
        # Sem versão anterior (primeira execução): não dá para saber o que é
        # novo, e mandar a lista inteira seria spam.
        return None


def formatar(c: dict) -> str:
    linhas = [c["titulo"]]
    detalhes = []
    if c.get("vagas"):
        detalhes.append(f"{c['vagas']} vagas")
    if c.get("nivel"):
        detalhes.append(f"nível {c['nivel'].lower()}")
    if c.get("inscricoes_ate"):
        a, m, d = c["inscricoes_ate"].split("-")
        detalhes.append(f"inscrições até {d}/{m}/{a}")
    if detalhes:
        linhas.append(", ".join(detalhes))
    linhas.append(f"{SITE}/concursos/{c['slug']}")
    return "\n".join(linhas)


def enviar(token: str, chat: str, texto: str) -> None:
    dados = urllib.parse.urlencode({"chat_id": chat, "text": texto, "disable_web_page_preview": "false"}).encode()
    with urllib.request.urlopen(f"https://api.telegram.org/bot{token}/sendMessage", data=dados, timeout=20) as r:
        r.read()


def main() -> int:
    vistos = anteriores()
    if vistos is None:
        print("[telegram] sem versão anterior do arquivo; nada a comparar.")
        return 0

    atuais = json.load(open(ARQUIVO, encoding="utf-8"))["concursos"]
    novos = [c for c in atuais if c["slug"] not in vistos and eh_bancario(c)][:LIMITE_POR_RODADA]
    mensagens = [formatar(c) for c in novos]

    token, chat = os.environ.get("TELEGRAM_BOT_TOKEN"), os.environ.get("TELEGRAM_CHAT_ID")
    enviados = 0
    for m in mensagens:
        if token and chat:
            try:
                enviar(token, chat, m)
                enviados += 1
            except Exception as e:
                # Um aviso que falha não pode derrubar a coleta.
                print(f"::warning::Telegram falhou: {e}")
        print(m.replace("\n", " | "))

    resumo = os.environ.get("GITHUB_STEP_SUMMARY")
    if resumo:
        with open(resumo, "a", encoding="utf-8") as f:
            f.write(f"### Telegram\n\n{len(mensagens)} concurso(s) bancário(s) novo(s), {enviados} enviado(s)")
            f.write("" if token and chat else " (secrets TELEGRAM_BOT_TOKEN/TELEGRAM_CHAT_ID ausentes)")
            f.write(".\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
