#!/usr/bin/env python3
"""
Baixa provas e gabaritos oficiais de concursos bancários e extrai o texto.

Fase 1 da coleta de questões: traz o texto cru de cada PDF para
scratch/provas/<slug>/, para que o parser das questões seja escrito contra a
prova real, e não às cegas (a mesma ideia do recon.py). Roda no runner do
GitHub, que tem rede aberta; a sessão do Claude Code não alcança a banca.

Regras:
- Só fontes listadas em scripts/scrape/provas/fontes.json, todas publicadas
  pela própria banca no portal oficial.
- robots.txt do host consultado antes da primeira requisição.
- Os PDFs não são commitados: só o texto extraído e um manifesto com a página
  pública de onde cada arquivo veio. A URL de download da Cesgranrio leva um
  token temporário, então a fonte registrada é a página do concurso no portal.
"""

import html
import json
import os
import re
import subprocess
import sys
import tempfile
import time
import unicodedata
import urllib.parse
import urllib.request
import urllib.robotparser
from datetime import datetime, timezone

UA = "ConcursosQuizBrasilBot/1.0 (+https://github.com/matsuch/concursos-quiz-brasil; provas oficiais)"
PORTAL = "https://concursos.cesgranrio.org.br"
DESTINO = "scratch/provas"
PAUSA_SEGUNDOS = 2.0
LIMITE_BYTES = 30 * 1024 * 1024


def normalizar(texto: str) -> str:
    sem_acento = unicodedata.normalize("NFKD", texto).encode("ascii", "ignore").decode()
    return re.sub(r"\s+", " ", sem_acento).strip().upper()


def buscar(url: str, timeout: int = 60) -> bytes:
    req = urllib.request.Request(url, headers={"User-Agent": UA, "Accept-Language": "pt-BR,pt;q=0.9"})
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.read(LIMITE_BYTES)


def robots_permite(url: str, cache: dict) -> bool:
    p = urllib.parse.urlparse(url)
    origem = f"{p.scheme}://{p.netloc}"
    if origem not in cache:
        rp = urllib.robotparser.RobotFileParser()
        try:
            texto = buscar(origem + "/robots.txt", timeout=20).decode("utf-8", "replace")
            # Alguns hosts devolvem uma página HTML de erro no lugar do robots.txt.
            # Isso não é um robots: tratamos como ausente (permissivo), como o recon.
            rp.parse([] if "<html" in texto.lower() else texto.splitlines())
        except Exception:
            rp.parse([])
        cache[origem] = rp
    return cache[origem].can_fetch(UA, url)


def links_do_evento(evento: int) -> list[tuple[str, str, str]]:
    """(título do bloco, texto do link, href) de cada link público do evento."""
    dados = json.loads(buscar(f"{PORTAL}/api/PortalEventoConteudos/publico/{evento}"))
    saida = []
    for bloco in dados.get("data", []):
        for href, texto in re.findall(r'<a[^>]+href="([^"]+)"[^>]*>(.*?)</a>', bloco.get("texto") or "", re.S):
            saida.append((bloco.get("titulo", ""), html.unescape(re.sub(r"<[^>]+>", "", texto)), html.unescape(href)))
    return saida


def escolher(links, padroes: list[str]):
    """Um padrão com '*' na frente compara com o título do bloco; sem, com o texto do link."""
    escolhidos = []
    for padrao in padroes:
        pelo_bloco = padrao.startswith("*")
        alvo = normalizar(padrao.lstrip("*"))
        for bloco, texto, href in links:
            campo = normalizar(bloco if pelo_bloco else texto)
            if campo == alvo or (not pelo_bloco and alvo in campo):
                escolhidos.append((texto or bloco, href))
                break
    return escolhidos


def pdf_para_texto(conteudo: bytes) -> str:
    with tempfile.NamedTemporaryFile(suffix=".pdf") as f:
        f.write(conteudo)
        f.flush()
        r = subprocess.run(["pdftotext", "-layout", "-enc", "UTF-8", f.name, "-"],
                           capture_output=True, check=True)
        return r.stdout.decode("utf-8", "replace")


def main() -> int:
    fontes = json.load(open("scripts/scrape/provas/fontes.json", encoding="utf-8"))["fontes"]
    cache_robots: dict = {}
    manifesto = []

    for fonte in fontes:
        pasta = os.path.join(DESTINO, fonte["slug"])
        os.makedirs(pasta, exist_ok=True)
        pagina = f"{PORTAL}/portal/avaliacoes/{fonte['evento']}"
        item = {k: fonte[k] for k in ("slug", "concurso", "cargo", "banca", "ano")}
        item.update({"fonte": pagina, "buscado_em": datetime.now(timezone.utc).isoformat(), "arquivos": []})

        try:
            links = links_do_evento(fonte["evento"])
        except Exception as e:
            item["erro"] = f"{type(e).__name__}: {e}"
            print(f"[erro] {fonte['slug']}: {item['erro']}")
            manifesto.append(item)
            continue

        for tipo in ("provas", "gabaritos"):
            escolhidos = escolher(links, fonte[tipo])
            if len(escolhidos) < len(fonte[tipo]):
                item.setdefault("avisos", []).append(f"{tipo}: {len(escolhidos)} de {len(fonte[tipo])} encontrados")
            for i, (rotulo, href) in enumerate(escolhidos, 1):
                if not robots_permite(href, cache_robots):
                    item["arquivos"].append({"tipo": tipo, "rotulo": rotulo, "resultado": "robots.txt não permite"})
                    continue
                try:
                    texto = pdf_para_texto(buscar(href))
                    nome = f"{tipo[:-1]}-{i}.txt"
                    with open(os.path.join(pasta, nome), "w", encoding="utf-8") as f:
                        f.write(texto)
                    item["arquivos"].append({"tipo": tipo, "rotulo": rotulo, "arquivo": nome, "caracteres": len(texto)})
                    print(f"[ok] {fonte['slug']}/{nome}: {len(texto)} caracteres")
                except Exception as e:
                    item["arquivos"].append({"tipo": tipo, "rotulo": rotulo, "resultado": f"{type(e).__name__}: {e}"})
                    print(f"[erro] {fonte['slug']} {rotulo}: {e}")
                time.sleep(PAUSA_SEGUNDOS)

        if not any(a.get("arquivo") for a in item["arquivos"]):
            # Ajuda a acertar os padrões do fontes.json sem outra rodada às cegas.
            item["links_disponiveis"] = [[b, t] for b, t, _ in links]
        manifesto.append(item)

    os.makedirs(DESTINO, exist_ok=True)
    with open(os.path.join(DESTINO, "manifesto.json"), "w", encoding="utf-8") as f:
        json.dump(manifesto, f, ensure_ascii=False, indent=2)

    resumo = os.environ.get("GITHUB_STEP_SUMMARY")
    if resumo:
        with open(resumo, "a", encoding="utf-8") as f:
            f.write("### Provas oficiais\n\n| Fonte | Arquivos | Avisos |\n|---|---|---|\n")
            for i in manifesto:
                ok = sum(1 for a in i["arquivos"] if a.get("arquivo"))
                f.write(f"| {i['slug']} | {ok} | {'; '.join(i.get('avisos', [])) or i.get('erro', '')} |\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
