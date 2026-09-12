#!/usr/bin/env python3
"""
Reconhecimento de fontes para o scraping.

Existe porque a sessão do Claude Code não alcança a web aberta (a política de
egress do ambiente nega tudo fora de uma allowlist), então escrever um parser
daqui seria escrever às cegas contra um HTML nunca visto. Este script roda no
runner do GitHub, que tem rede aberta, e traz o HTML cru para o repositório —
o parser é escrito depois, contra a página real.

Para cada URL: consulta o robots.txt do host ANTES de buscar, e só busca se o
robots permitir. O veredito de cada uma vai para o relatório.
"""

import json
import os
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
import urllib.robotparser
from datetime import datetime, timezone

UA = "ConcursosQuizBrasilBot/1.0 (+https://github.com/matsuch/concursos-quiz-brasil; recon)"
DESTINO = "scratch/recon"
PAUSA_SEGUNDOS = 2.0
LIMITE_BYTES = 3 * 1024 * 1024


def nome_arquivo(url: str) -> str:
    p = urllib.parse.urlparse(url)
    base = (p.netloc + p.path).strip("/").replace("/", "_").replace(":", "_")
    if p.query:
        base += "_" + urllib.parse.quote(p.query, safe="")
    return (base or "index")[:120]


def buscar(url: str, timeout: int = 30):
    req = urllib.request.Request(url, headers={
        "User-Agent": UA,
        "Accept": "text/html,application/xhtml+xml,application/json;q=0.9,*/*;q=0.8",
        "Accept-Language": "pt-BR,pt;q=0.9",
    })
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.status, dict(r.headers), r.read(LIMITE_BYTES)


def robots_permite(url: str, cache: dict):
    p = urllib.parse.urlparse(url)
    origem = f"{p.scheme}://{p.netloc}"
    if origem not in cache:
        rp = urllib.robotparser.RobotFileParser()
        rp.set_url(origem + "/robots.txt")
        try:
            status, _, corpo = buscar(origem + "/robots.txt", timeout=20)
            texto = corpo.decode("utf-8", "replace")
            rp.parse(texto.splitlines())
            cache[origem] = (rp, texto, None)
        except Exception as e:  # sem robots acessível: trata como permissivo, mas registra
            rp.parse([])
            cache[origem] = (rp, "", f"{type(e).__name__}: {e}")
    rp, texto, erro = cache[origem]
    return rp.can_fetch(UA, url), texto, erro


def main() -> int:
    urls = [u.strip() for u in os.environ.get("URLS", "").splitlines() if u.strip()]
    if not urls:
        print("::error::Nenhuma URL informada no input 'urls'.")
        return 1

    os.makedirs(DESTINO, exist_ok=True)
    cache_robots: dict = {}
    relatorio = []

    for url in urls:
        item = {"url": url, "buscado_em": datetime.now(timezone.utc).isoformat()}
        try:
            permitido, robots_txt, erro_robots = robots_permite(url, cache_robots)
            item["robots_permite"] = permitido
            if erro_robots:
                item["robots_erro"] = erro_robots

            host = urllib.parse.urlparse(url).netloc
            if robots_txt:
                with open(os.path.join(DESTINO, f"robots_{host}.txt"), "w", encoding="utf-8") as f:
                    f.write(robots_txt)

            if not permitido:
                item["resultado"] = "pulado: robots.txt não permite"
                print(f"[robots] BLOQUEADO {url}")
                relatorio.append(item)
                continue

            status, headers, corpo = buscar(url)
            item["status"] = status
            item["content_type"] = headers.get("Content-Type", "")
            item["bytes"] = len(corpo)

            arquivo = nome_arquivo(url)
            ext = ".json" if "json" in item["content_type"] else ".html"
            caminho = os.path.join(DESTINO, arquivo + ext)
            with open(caminho, "wb") as f:
                f.write(corpo)
            item["arquivo"] = caminho
            item["resultado"] = "ok"
            print(f"[ok] {status} {len(corpo)}B -> {caminho}")

        except urllib.error.HTTPError as e:
            item["resultado"] = f"HTTPError {e.code}"
            print(f"[erro] {url}: HTTP {e.code}")
        except Exception as e:
            item["resultado"] = f"{type(e).__name__}: {e}"
            print(f"[erro] {url}: {e}")

        relatorio.append(item)
        time.sleep(PAUSA_SEGUNDOS)

    with open(os.path.join(DESTINO, "relatorio.json"), "w", encoding="utf-8") as f:
        json.dump(relatorio, f, ensure_ascii=False, indent=2)

    resumo = os.environ.get("GITHUB_STEP_SUMMARY")
    if resumo:
        with open(resumo, "a", encoding="utf-8") as f:
            f.write("### Reconhecimento\n\n| URL | robots | resultado | bytes |\n|---|---|---|---|\n")
            for i in relatorio:
                f.write("| {} | {} | {} | {} |\n".format(
                    i["url"], i.get("robots_permite", "?"), i.get("resultado", "?"), i.get("bytes", "-")))

    return 0


if __name__ == "__main__":
    sys.exit(main())
