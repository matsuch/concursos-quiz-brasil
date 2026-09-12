#!/usr/bin/env python3
"""
Extrai concursos abertos do PCI Concursos e gera neon/seed/concursos.sql.

Por que esta fonte
------------------
O robots.txt do pciconcursos.com.br libera /concursos/ (bloqueia /pdf/, /adm/,
/*.php e afins, que não são tocados aqui). O que se extrai é dado factual —
órgão, vagas, salário, nível, prazo de inscrição — e cada linha guarda o link
de volta para a página de origem, que é onde está o edital.

O que NÃO se extrai: texto de notícia, descrição editorial ou qualquer conteúdo
autoral do site. Fato não tem direito autoral; redação tem.

Estrutura da página (conferida no HTML real em scratch/recon/)
-------------------------------------------------------------
    <div id="concursos">
      <div id="SP" class="ua"><div class="uf">SÃO PAULO</div></div>  <- marca a UF
      <div class="da|na" data-url="...">                  <- um concurso
        <div class="ca"><a title="TÍTULO">ÓRGÃO</a>
          <div class="cd">355 vagas | Cargo | Médio / Superior</div>
          <div class="ce">16/09 a 16/10/2026</div>
        </div>
      </div>
      ...

Os itens vêm depois do marcador de UF, como irmãos — daí a varredura em ordem
mantendo a UF corrente, em vez de aninhamento.
"""

import json
import os
import re
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
import urllib.robotparser
import unicodedata
from datetime import date, datetime

from bs4 import BeautifulSoup

UA = "ConcursosQuizBrasilBot/1.0 (+https://github.com/matsuch/concursos-quiz-brasil)"
PAUSA_SEGUNDOS = 2.0
SAIDA = "neon/seed/concursos.sql"
SAIDA_JSON = "scratch/concursos.json"
# Instantâneo que a aplicação lê em produção (ver src/dados/concursos.ts).
# É ele que faz sitemap, páginas pré-renderizadas e site concordarem sobre o
# que existe, sem nenhum deles precisar de credencial de banco.
SAIDA_APP = "public/dados/concursos.json"

PAGINAS = [
    "https://www.pciconcursos.com.br/concursos/nacional/",
    "https://www.pciconcursos.com.br/concursos/norte/",
    "https://www.pciconcursos.com.br/concursos/nordeste/",
    "https://www.pciconcursos.com.br/concursos/centrooeste/",
    "https://www.pciconcursos.com.br/concursos/sudeste/",
    "https://www.pciconcursos.com.br/concursos/sul/",
]

UFS = {
    "AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MG", "MS",
    "MT", "PA", "PB", "PE", "PI", "PR", "RJ", "RN", "RO", "RR", "RS", "SC",
    "SE", "SP", "TO",
}

# As paginas regionais escrevem o estado por extenso no marcador visivel
# ("SAO PAULO"), enquanto o id do mesmo elemento traz a sigla -- as ancoras
# do indice (#SP) provam isso. A primeira coleta leu so o texto, nao achou
# sigla nenhuma e carimbou os 530 registros como "Nacional", matando o filtro
# por estado. Agora o id vem primeiro e o nome por extenso e o segundo caminho.
NOME_PARA_UF = {
    "ACRE": "AC", "ALAGOAS": "AL", "AMAZONAS": "AM", "AMAPA": "AP",
    "BAHIA": "BA", "CEARA": "CE", "DISTRITO FEDERAL": "DF",
    "ESPIRITO SANTO": "ES", "GOIAS": "GO", "MARANHAO": "MA",
    "MINAS GERAIS": "MG", "MATO GROSSO DO SUL": "MS", "MATO GROSSO": "MT",
    "PARA": "PA", "PARAIBA": "PB", "PERNAMBUCO": "PE", "PIAUI": "PI",
    "PARANA": "PR", "RIO DE JANEIRO": "RJ", "RIO GRANDE DO NORTE": "RN",
    "RONDONIA": "RO", "RORAIMA": "RR", "RIO GRANDE DO SUL": "RS",
    "SANTA CATARINA": "SC", "SERGIPE": "SE", "SAO PAULO": "SP",
    "TOCANTINS": "TO",
}


def sem_acento(t: str) -> str:
    return "".join(c for c in unicodedata.normalize("NFD", t)
                   if unicodedata.category(c) != "Mn")


def resolver_uf(el) -> str:
    """UF de um marcador de secao, pelo id (sigla) ou pelo nome por extenso."""
    ident = (el.get("id") or "").strip().upper()
    if ident in UFS:
        return ident
    marca = el.find("div", class_="uf")
    texto = sem_acento(marca.get_text(strip=True)).upper() if marca else ""
    if texto in UFS:
        return texto
    return NOME_PARA_UF.get(texto, "Nacional")

# Um concurso de porte vira "destaque" na home. O critério é numérico e fica
# registrado aqui para não virar curadoria informal: muitas vagas ou salário alto.
DESTAQUE_VAGAS = 500
DESTAQUE_SALARIO = 15000.0


def buscar(url: str, timeout: int = 30) -> str:
    req = urllib.request.Request(url, headers={
        "User-Agent": UA,
        "Accept": "text/html,application/xhtml+xml",
        "Accept-Language": "pt-BR,pt;q=0.9",
    })
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return r.read(5 * 1024 * 1024).decode("utf-8", "replace")


def robots_permite(url: str, cache: dict) -> bool:
    p = urllib.parse.urlparse(url)
    origem = f"{p.scheme}://{p.netloc}"
    if origem not in cache:
        rp = urllib.robotparser.RobotFileParser()
        try:
            rp.parse(buscar(origem + "/robots.txt", timeout=20).splitlines())
        except Exception:
            rp.parse([])
        cache[origem] = rp
    return cache[origem].can_fetch(UA, url)


def parse_salario(texto: str):
    """'Vagas até R$ 15.034,81' -> 15034.81 ; sem R$ -> None"""
    m = re.search(r"R\$\s*([\d.]+,\d{2})", texto)
    if not m:
        return None
    try:
        return float(m.group(1).replace(".", "").replace(",", "."))
    except ValueError:
        return None


def parse_vagas(texto: str) -> int:
    """'355 vagas' -> 355. 'Cadastro de reserva' e 'Vagas até R$ x' -> 0,
    que é o honesto: a fonte não informa número."""
    m = re.match(r"\s*([\d.]+)\s+vaga", texto, re.I)
    if not m:
        return 0
    try:
        return int(m.group(1).replace(".", ""))
    except ValueError:
        return 0


def parse_nivel(texto: str) -> str:
    """A UI filtra por um único nível (Fundamental/Médio/Superior) e a fonte traz
    faixas ('Médio / Técnico / Superior'). Fica o MENOR nível exigido: é a
    barreira real de entrada, e é o que a pessoa filtrando por 'Médio' quer ver."""
    t = texto.lower()
    if "fundamental" in t:
        return "Fundamental"
    if "médio" in t or "medio" in t or "técnico" in t or "tecnico" in t:
        return "Médio"
    if "superior" in t:
        return "Superior"
    return "Não informado"


def parse_datas(texto: str):
    """'16/09 a 16/10/2026' -> (inicio, fim) ; '14/09/2026' -> (None, fim)."""
    completas = re.findall(r"(\d{2})/(\d{2})/(\d{4})", texto)
    if not completas:
        return None, None
    d, m, a = completas[-1]
    try:
        fim = date(int(a), int(m), int(d))
    except ValueError:
        return None, None

    inicio = None
    parcial = re.match(r"\s*(\d{2})/(\d{2})\s+a\s", texto)
    if parcial:
        di, mi = int(parcial.group(1)), int(parcial.group(2))
        # O ano do início é o do fim, ou o anterior se a janela virar o ano.
        for ano in (fim.year, fim.year - 1):
            try:
                cand = date(ano, mi, di)
            except ValueError:
                continue
            if cand <= fim:
                inicio = cand
                break
    return inicio, fim


def extrair_pagina(html: str, url_origem: str) -> list:
    sopa = BeautifulSoup(html, "lxml")
    cont = sopa.find(id="concursos")
    if not cont:
        print(f"[aviso] sem #concursos em {url_origem}")
        return []

    hoje = date.today()
    uf_atual = "Nacional"
    itens = []

    for el in cont.find_all("div", recursive=True):
        classes = el.get("class") or []

        if "ua" in classes:
            uf_atual = resolver_uf(el)
            continue

        if not ({"da", "na"} & set(classes)):
            continue

        ca = el.find("div", class_="ca")
        a = ca.find("a") if ca else None
        if not a:
            continue

        orgao = a.get_text(" ", strip=True)
        titulo = (a.get("title") or "").strip() or orgao
        url = el.get("data-url") or a.get("href")

        cd = el.find("div", class_="cd")
        ce = el.find("div", class_="ce")
        if not cd or not ce:
            continue

        # cd traz "vagas/salário", "cargo" e "nível" separados por <br>/<span>
        partes = [p.strip() for p in cd.get_text("\n", strip=True).split("\n") if p.strip()]
        cabeca = partes[0] if partes else ""
        nivel_txt = partes[-1] if len(partes) > 1 else ""

        inicio, fim = parse_datas(ce.get_text(" ", strip=True))
        if not fim:
            continue  # inscricoes_ate é NOT NULL: sem data, a linha não entra
        if fim < hoje:
            continue  # inscrição encerrada não serve para quem está procurando

        vagas = parse_vagas(cabeca)
        salario = parse_salario(cabeca)
        # "Vagas ate R$ X" e teto da faixa do concurso, nao salario de cargo.
        salario_ate = bool(salario) and bool(re.search(r"at[ée]\s*R\$", cabeca, re.I))

        status = "aberto"
        if inicio and inicio > hoje:
            status = "breve"
        elif vagas >= DESTAQUE_VAGAS or (salario or 0) >= DESTAQUE_SALARIO:
            status = "destaque"

        itens.append({
            "titulo": titulo,
            "orgao": orgao,
            "local": uf_atual,
            "nivel": parse_nivel(nivel_txt),
            "vagas": vagas,
            "salario": salario,
            "salario_ate": salario_ate,
            "inscricoes_ate": fim.isoformat(),
            "status": status,
            "url_edital": url,
        })

    return itens


def sql_texto(v) -> str:
    if v is None:
        return "NULL"
    return "'" + str(v).replace("'", "''") + "'"


def gerar_sql(itens: list) -> str:
    linhas = [
        "-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.",
        f"-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)",
        f"-- Coletado em: {datetime.utcnow().isoformat()}Z",
        f"-- Linhas: {len(itens)}",
        "--",
        "-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,",
        "-- então reaplicar atualiza a linha em vez de duplicar.",
        "",
        "CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital",
        "  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;",
        "",
    ]
    for i in itens:
        linhas.append(
            "INSERT INTO public.concursos "
            "(titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ("
            f"{sql_texto(i['titulo'])}, {sql_texto(i['orgao'])}, {sql_texto(i['local'])}, "
            f"{sql_texto(i['nivel'])}, {i['vagas']}, "
            f"{i['salario'] if i['salario'] is not None else 'NULL'}, {str(i['salario_ate']).lower()}, "
            f"{sql_texto(i['inscricoes_ate'])}::date, {sql_texto(i['status'])}, {sql_texto(i['url_edital'])})\n"
            "ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET\n"
            "  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,\n"
            "  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,\n"
            "  salario_ate = EXCLUDED.salario_ate,\n"
            "  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;"
        )
    return "\n".join(linhas) + "\n"


def main() -> int:
    local = os.environ.get("HTML_LOCAL")  # teste contra o HTML salvo, sem rede
    cache: dict = {}
    todos = []

    if local:
        for caminho in local.split(","):
            print(f"[local] {caminho}")
            with open(caminho, encoding="utf-8", errors="replace") as f:
                todos += extrair_pagina(f.read(), caminho)
    else:
        for url in PAGINAS:
            if not robots_permite(url, cache):
                print(f"[robots] BLOQUEADO {url}")
                continue
            try:
                html = buscar(url)
            except urllib.error.HTTPError as e:
                print(f"[erro] {url}: HTTP {e.code}")
                continue
            itens = extrair_pagina(html, url)
            com_uf = sum(1 for i in itens if i["local"] != "Nacional")
            print(f"[ok] {url}: {len(itens)} concursos ({com_uf} com UF)")
            # Numa pagina regional, nenhum item com UF significa que o marcador
            # de secao mudou de forma e todos cairiam como "Nacional" -- foi o
            # que aconteceu na primeira coleta, calado. Aqui isso e falha.
            if itens and com_uf == 0 and "nacional" not in url:
                print(f"::error::{url}: nenhum item recebeu UF. "
                      "O marcador de secao mudou; conferir antes de gravar.")
                return 1
            todos += itens
            time.sleep(PAUSA_SEGUNDOS)

    # A mesma vaga aparece em mais de uma página; url_edital é a identidade.
    vistos, unicos = set(), []
    for i in todos:
        if i["url_edital"] in vistos:
            continue
        vistos.add(i["url_edital"])
        unicos.append(i)

    unicos.sort(key=lambda i: (i["inscricoes_ate"], -(i["salario"] or 0)))

    if not unicos:
        print("::error::Nenhum concurso extraído — a página pode ter mudado de estrutura.")
        return 1

    os.makedirs(os.path.dirname(SAIDA), exist_ok=True)
    os.makedirs(os.path.dirname(SAIDA_JSON), exist_ok=True)
    os.makedirs(os.path.dirname(SAIDA_APP), exist_ok=True)

    prefixo = "https://www.pciconcursos.com.br/noticias/"
    para_app = [{
        "slug": i["url_edital"][len(prefixo):],
        "titulo": i["titulo"], "orgao": i["orgao"], "local": i["local"],
        "nivel": i["nivel"], "vagas": i["vagas"], "salario": i["salario"],
        "salario_ate": i["salario_ate"], "inscricoes_ate": i["inscricoes_ate"],
        "status": i["status"], "url_edital": i["url_edital"],
    } for i in unicos if i["url_edital"].startswith(prefixo)]
    with open(SAIDA_APP, "w", encoding="utf-8") as f:
        json.dump({"gerado_em": date.today().isoformat(), "fonte": "pciconcursos.com.br",
                   "total": len(para_app), "concursos": para_app},
                  f, ensure_ascii=False, separators=(",", ":"))
    print(f"[app] {len(para_app)} concursos -> {SAIDA_APP}")
    with open(SAIDA, "w", encoding="utf-8") as f:
        f.write(gerar_sql(unicos))
    with open(SAIDA_JSON, "w", encoding="utf-8") as f:
        json.dump(unicos, f, ensure_ascii=False, indent=2)

    por_status: dict = {}
    por_nivel: dict = {}
    for i in unicos:
        por_status[i["status"]] = por_status.get(i["status"], 0) + 1
        por_nivel[i["nivel"]] = por_nivel.get(i["nivel"], 0) + 1
    por_local: dict = {}
    for i in unicos:
        por_local[i["local"]] = por_local.get(i["local"], 0) + 1
    print(f"\nTotal: {len(unicos)} | status: {por_status} | nível: {por_nivel}")
    print(f"Por UF: {dict(sorted(por_local.items()))}")

    resumo = os.environ.get("GITHUB_STEP_SUMMARY")
    if resumo:
        with open(resumo, "a", encoding="utf-8") as f:
            f.write(f"### Concursos extraídos\n\n- Total: **{len(unicos)}**\n")
            f.write(f"- Por status: `{por_status}`\n- Por nível: `{por_nivel}`\n")
            f.write(f"- Por UF: `{dict(sorted(por_local.items()))}`\n\n")
            f.write("| Órgão | UF | Vagas | Salário | Até |\n|---|---|---|---|---|\n")
            for i in unicos[:25]:
                f.write(f"| {i['orgao'][:50]} | {i['local']} | {i['vagas']} | "
                        f"{i['salario'] or '-'} | {i['inscricoes_ate']} |\n")

    return 0


if __name__ == "__main__":
    sys.exit(main())
