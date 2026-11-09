-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.
-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)
-- Coletado em: 2026-11-09T19:19:20.445932Z
-- Linhas: 615
--
-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,
-- então reaplicar atualiza a linha em vez de duplicar.

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;

INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFES abre processo seletivo para professor visitante estrangeiro no Programa de Pós-Graduação em Educação', 'UFES - Universidade Federal do Espírito Santo', 'ES', 'Superior', 1, 26326.81, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ufes-abre-processo-seletivo-para-professor-visitante-estrangeiro-no-programa-de-pos-graduacao-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piedade - SP publica edital de concurso público com salários de até R$ 17.397,46', 'Prefeitura de Piedade', 'SP', 'Fundamental', 20, 17397.46, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piedade-sp-publica-edital-de-concurso-publico-com-salarios-de-ate-17397')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Piauí - PI abre processos seletivos com salários de até R$ 16.800,00', 'Prefeitura de São João do Piauí', 'PI', 'Fundamental', 590, 16800.0, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-piaui-pi-abre-processos-seletivos-com-salarios-de-ate-16800')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Apucarana - PR abre concurso público com salários de até R$ 16.381,41', 'Prefeitura de Apucarana', 'PR', 'Médio', 9, 16381.41, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-apucarana-pr-abre-concurso-publico-com-salarios-de-ate-16381')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professores substitutos no campus Sabará', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 2, 15964.45, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professores-substitutos-no-campus-sabara')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CBMERJ - RJ retifica edital de processo seletivo para 1º tenente temporário', 'CBMERJ - Corpo de Bombeiros Militar do Estado do Rio de Janeiro', 'RJ', 'Superior', 192, 12279.71, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cbmerj-rj-retifica-edital-de-processo-seletivo-para-1-tenente-temporario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Conselho de Arquitetura e Urbanismo do Amapá abre concurso público em Macapá', 'CAU - Conselho de Arquitetura e Urbanismo do Amapá', 'AP', 'Médio', 2, 9726.66, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/conselho-de-arquitetura-e-urbanismo-do-amapa-abre-concurso-publico-em-macapa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CAU - TO abre concurso público com salários de até R$ 9.726,00', 'CAU - Conselho de Arquitetura e Urbanismo do Tocantins', 'TO', 'Médio', 3, 9726.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cau-to-abre-concurso-publico-com-salarios-de-ate-9726')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Boituva - SP abre concursos com salários de até R$ 8.595,15', 'Câmara de Boituva', 'SP', 'Fundamental', 7, 8595.15, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-boituva-sp-abre-concursos-com-salarios-de-ate-8595')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professores visitantes em Gestão e Negócios', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 3, 8340.33, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professores-visitantes-em-gestao-e-negocios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFJF - MG abre seleções para professores substitutos na Faculdade de Medicina', 'UFJF - Universidade Federal de Juiz de Fora', 'MG', 'Superior', 3, 8058.29, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufjf-mg-abre-selecoes-para-professores-substitutos-na-faculdade-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Firmino Alves - BA abre seleção com salários de até R$ 8.000,00', 'Prefeitura de Firmino Alves', 'BA', 'Fundamental', 50, 8000.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-firmino-alves-ba-abre-selecao-com-salarios-de-ate-8000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Francisco Beltrão - PR abre processo seletivo para diversos cargos', 'Prefeitura de Francisco Beltrão', 'PR', 'Fundamental', 0, 6749.53, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-francisco-beltrao-pr-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaramirim - SC abre processo seletivo com salários de até R$ 6.522,86', 'Prefeitura de Guaramirim', 'SC', 'Médio', 0, 6522.86, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaramirim-sc-abre-processo-seletivo-com-salarios-de-ate-6522')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nobres - MT abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Nobres', 'MT', 'Fundamental', 0, 6397.65, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nobres-mt-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio das Pedras - SP abre seleção para cadastro reserva de professores', 'Prefeitura de Rio das Pedras', 'SP', 'Superior', 0, 5130.63, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-das-pedras-sp-abre-selecao-para-cadastro-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Catarinense de Cultura - SC abre processo seletivo para Analista Contador', 'FCC - Fundação Catarinense de Cultura', 'SC', 'Superior', 8, 5108.86, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-catarinense-de-cultura-sc-abre-processo-seletivo-para-analista-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Firmino Alves - BA abre concurso público com salários de até R$ 4.867,77', 'Prefeitura de Firmino Alves', 'BA', 'Fundamental', 210, 4867.77, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-firmino-alves-ba-abre-concurso-publico-com-salarios-de-ate-4867')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Várzea Grande - MT retifica processo seletivo com vagas para a educação', 'Prefeitura de Várzea Grande - Secretaria Municipal de Educação, Cultura, Esporte e Lazer (SMECEL)', 'MT', 'Médio', 5156, 4670.03, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-varzea-grande-mt-retifica-processo-seletivo-com-vagas-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('MGS - ES abre processo seletivo com salários de até R$ 4.508,11', 'MGS - Minas Gerais Administração e Serviços S.A.', 'ES', 'Médio', 0, 4508.11, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/mgs-es-abre-processo-seletivo-com-salarios-de-ate-4508')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Xangri-Lá - RS abre processo seletivo para o SAMU', 'Prefeitura de Xangri-Lá', 'RS', 'Médio', 8, 4484.89, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-xangri-la-rs-abre-processo-seletivo-para-o-samu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Santa Lúcia abre vagas para residência médica em diversas especialidades', 'HSL - Hospital Santa Lúcia', 'DF', 'Superior', 22, 4106.09, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-santa-lucia-abre-vagas-para-residencia-medica-em-diversas-especialidades')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('MGS abre processo seletivo com vagas imediatas e cadastro de reserva em diversas áreas', 'MGS - Minas Gerais Administração e Serviços S.A.', 'Nacional', 'Fundamental', 643, 3911.17, true, '2026-11-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/mgs-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cabreúva - SP abre concurso público para Guarda Municipal', 'Prefeitura de Cabreúva', 'SP', 'Médio', 2, 3846.34, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cabreuva-sp-abre-concurso-publico-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Aurora - GO abre concurso público com vagas de até R$ 3.737,65', 'Prefeitura de Nova Aurora', 'GO', 'Médio', 4, 3737.65, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-aurora-go-abre-concurso-publico-com-vagas-de-ate-3737')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para Professor Substituto de Medicina Veterinária em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-de-medicina-veterinaria-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Substituto de Medicina Veterinária em Araçatuba - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-medicina-veterinaria-em-aracatuba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para Professor Substituto de Letras em Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-de-letras-em-araraquara-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre seleção para o cargo de Fonoaudiólogo no CEPON de Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e ao CEPON', 'SC', 'Superior', 1, 3409.85, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-selecao-para-o-cargo-de-fonoaudiologo-no-cepon-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaguara - MG abre processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Itaguara', 'MG', 'Médio', 7, 3242.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itaguara-mg-abre-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caldas Novas - GO divulga retificação do concurso público para guardas civis municipais', 'Prefeitura de Caldas Novas', 'GO', 'Médio', 15, 3100.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caldas-novas-go-divulga-retificacao-do-concurso-publico-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CMDCA de Arabutã - SC abre processo para escolha suplementar de conselheiro tutelar', 'CMDCA - Conselho Municipal dos Direitos da Criança e do Adolescente de Arabutã', 'SC', 'Médio', 1, 2735.45, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cmdca-de-arabuta-sc-abre-processo-para-escolha-suplementar-de-conselheiro-tutelar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aracatu - BA abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Aracatu', 'BA', 'Fundamental', 245, 2565.32, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracatu-ba-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Elisiário - SP abre processo seletivo para profissionais de diversas áreas', 'Prefeitura de Elisiário', 'SP', 'Médio', 0, 2317.18, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-elisiario-sp-abre-processo-seletivo-para-profissionais-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana - AP publica edital de concurso público para guardas civis municipais', 'Prefeitura de Santana', 'AP', 'Médio', 50, 2100.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-ap-publica-edital-de-concurso-publico-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trindade do Sul - RS abre seleção para Motorista de Ambulância do SAMU', 'Prefeitura de Trindade do Sul', 'RS', 'Médio', 1, 2020.9, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trindade-do-sul-rs-abre-selecao-para-motorista-de-ambulancia-do-samu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('ECOPS - AC abre vagas para o cargo de servente de limpeza', 'ECOPS - Empresa Cruzeirense de Obras Públicas, Serviços e Urbanização', 'AC', 'Fundamental', 14, 1621.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ecops-ac-abre-vagas-para-o-cargo-de-servente-de-limpeza')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maraú - BA abre processo seletivo para agentes comunitários de saúde', 'Prefeitura de Maraú', 'BA', 'Médio', 8, NULL, false, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-marau-ba-abre-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Faculdade Sebrae - SP abre vaga para professor adjunto de Engenharia de Software', 'Faculdade Sebrae', 'SP', 'Superior', 1, 19522.83, true, '2026-11-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/faculdade-sebrae-sp-abre-vaga-para-professor-adjunto-de-engenharia-de-software')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Dores do Rio Preto - ES abre seleção com salários de até R$ 17.087,37', 'Prefeitura de Dores do Rio Preto', 'ES', 'Fundamental', 176, 17087.37, true, '2026-11-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-dores-do-rio-preto-es-abre-selecao-com-salarios-de-ate-17087')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('ABDI - DF: Processo seletivo abre vagas para analistas de produtividade e inovação', 'ABDI - Agência Brasileira de Desenvolvimento Industrial', 'DF', 'Superior', 20, 16034.7, true, '2026-11-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/abdi-df-processo-seletivo-abre-vagas-para-analistas-de-produtividade-e-inovacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Florestópolis - PR abre concurso público com salários de até R$ 15.389,87', 'Prefeitura de Florestópolis', 'PR', 'Médio', 46, 15389.87, true, '2026-11-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-florestopolis-pr-abre-concurso-publico-com-salarios-de-ate-15389')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Onça de Pitangui - MG abre processo seletivo com salários de até R$ 14.829,31', 'Prefeitura de Onça de Pitangui', 'MG', 'Médio', 11, 14829.31, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-onca-de-pitangui-mg-abre-processo-seletivo-com-salarios-de-ate-14829')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Boa Vista - RS abre concurso público com salários de até R$ 12.039,12', 'Prefeitura de Nova Boa Vista', 'RS', 'Médio', 20, 12039.12, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-boa-vista-rs-abre-concurso-publico-com-salarios-de-ate-12039')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PRUDENPREV - SP abre concurso público com salários de até R$ 11.102,06', 'PRUDENPREV - Sistema de Previdência do Município de Presidente Prudente', 'SP', 'Fundamental', 10, 11102.06, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prudenprev-sp-abre-concurso-publico-com-salarios-de-ate-11102')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juquiá - SP abre concurso público com salários de até R$ 8.653,17', 'Prefeitura de Juquiá', 'SP', 'Fundamental', 13, 8653.17, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juquia-sp-abre-concurso-publico-com-salarios-de-ate-8653')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMA abre processo seletivo para professores substitutos no campus Araioses', 'IFMA - Instituto Federal de Educação, Ciência e Tecnologia do Maranhão', 'MA', 'Superior', 4, 8340.33, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifma-abre-processo-seletivo-para-professores-substitutos-no-campus-araioses')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRECI - ES abre concurso público com salários de até R$ 8.250,00', 'CRECI - Conselho Regional de Corretores de Imóveis da 13ª Região', 'ES', 'Médio', 24, 8250.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/creci-es-abre-concurso-publico-com-salarios-de-ate-8250')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paracatu - MG abre seleção para diretor e vice-diretor de unidade escolar', 'Prefeitura de Paracatu', 'MG', 'Superior', 0, 7210.64, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paracatu-mg-abre-selecao-para-diretor-e-vice-diretor-de-unidade-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFC - CE abre concurso com vagas para professores de ensino básico, técnico e tecnológico', 'UFC - Universidade Federal do Ceará', 'CE', 'Superior', 5, 6397.19, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufc-ce-abre-concurso-com-vagas-para-professores-de-ensino-basico-tecnico-e-tecnologico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Pirapama - MG abre concurso com salários de até R$ 6.221,41', 'Prefeitura de Santana de Pirapama', 'MG', 'Fundamental', 79, 6221.41, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-pirapama-mg-abre-concurso-com-salarios-de-ate-6221')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Beneficente Dr. César Santos - RS abre processo seletivo com quatro vagas', 'HBCS - Hospital Beneficente Dr. César Santos', 'RS', 'Médio', 4, 6050.19, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-beneficente-dr-cesar-santos-rs-abre-processo-seletivo-com-quatro-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Beneficente Dr. César Santos - RS abre seleção com remunerações de até R$ 6.050,19', 'Hospital Beneficente Dr. César Santos', 'RS', 'Médio', 4, 6050.19, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-beneficente-dr-cesar-santos-rs-abre-selecao-com-remuneracoes-de-ate-6050')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Bassano - RS abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Nova Bassano', 'RS', 'Fundamental', 45, 5933.7, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-bassano-rs-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capinópolis - MG retifica edital de concurso público com salários de até R$ 5.800,00', 'Câmara de Capinópolis', 'MG', 'Fundamental', 5, 5800.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capinopolis-mg-retifica-edital-de-concurso-publico-com-salarios-de-ate-5800')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Roseira - SP abre processo seletivo com salários de até R$ 5.130,63', 'Prefeitura de Roseira', 'SP', 'Fundamental', 0, 5130.63, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-roseira-sp-abre-processo-seletivo-com-salarios-de-ate-5130')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tijucas do Sul - PR abre vagas para Psicólogo e Técnico em Segurança do Trabalho', 'Prefeitura de Tijucas do Sul', 'PR', 'Médio', 2, 4976.61, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tijucas-do-sul-pr-abre-vagas-para-psicologo-e-tecnico-em-seguranca-do-trabalho')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para o HEMOSC em Chapecó', 'HEMOSC - Centro de Hematologia e Hemoterapia de Santa Catarina', 'SC', 'Superior', 1, 4946.9, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-o-hemosc-em-chapeco')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Poranga - CE reabre inscrições para concursos públicos', 'Prefeitura de Poranga', 'CE', 'Fundamental', 98, 4750.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-poranga-ce-reabre-inscricoes-para-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Capão Bonito do Sul - RS abre vaga para engenheiro civil', 'Prefeitura de Capão Bonito do Sul', 'RS', 'Superior', 1, 4673.49, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-capao-bonito-do-sul-rs-abre-vaga-para-engenheiro-civil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Murici dos Portelas - PI abre vagas para técnicos e enfermeiros socorristas', 'Prefeitura de Murici dos Portelas', 'PI', 'Médio', 4, 4518.16, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-murici-dos-portelas-pi-abre-vagas-para-tecnicos-e-enfermeiros-socorristas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unifesp - SP abre processo seletivo para Docente na área de Educação Infantil e Ensino Fundamental', 'UNIFESP - Universidade Federal de São Paulo', 'SP', 'Superior', 1, 3998.24, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifesp-sp-abre-processo-seletivo-para-docente-na-area-de-educacao-infantil-e-ensino-fundamental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Divisa Nova - MG abre concurso público para Agente de Contratação e Contador', 'Câmara de Divisa Nova', 'MG', 'Superior', 2, 3868.2, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-divisa-nova-mg-abre-concurso-publico-para-agente-de-contratacao-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Deodápolis - MS prorroga inscrições de processo seletivo para professores', 'SEMECET - Secretaria Municipal de Educação, Cultura, Esporte e Turismo de Deodápolis', 'MS', 'Superior', 0, 3849.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-deodapolis-ms-prorroga-inscricoes-de-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trairão - PA abre seleção para brigadistas de incêndio.', 'Prefeitura de Trairão', 'PA', 'Fundamental', 6, 3777.94, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trairao-pa-abre-selecao-para-brigadistas-de-incendio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto na área de artes em São Paulo', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 3511.9, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-na-area-de-artes-em-sao-paulo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE de Iconha - ES abre concurso público com salários de até R$ 3.236,14', 'SAAE - Serviço Autônomo de Água e Esgoto de Iconha', 'ES', 'Fundamental', 14, 3236.14, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saae-de-iconha-es-abre-concurso-publico-com-salarios-de-ate-3236')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Santo - CE retifica concurso para cargos de nível superior', 'Prefeitura de Alto Santo', 'CE', 'Superior', 4, 3000.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-santo-ce-retifica-concurso-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Torres - RS abre seleções para cadastro de reserva em diversas áreas', 'Prefeitura de Torres', 'RS', 'Fundamental', 0, 2562.23, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-torres-rs-abre-selecoes-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('RioSaúde - RJ abre vagas para maqueiro, auxiliar de suprimentos e instrumentador cirúrgico', 'RioSaúde - Empresa Pública de Saúde do Rio de Janeiro S/A', 'RJ', 'Médio', 3, 2513.73, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/riosaude-rj-abre-vagas-para-maqueiro-auxiliar-de-suprimentos-e-instrumentador-cirurgico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Igrejinha - RS abre vagas para Auxiliar de Farmácia de Manipulação e Auxiliar de Serviços Gerais', 'Prefeitura de Igrejinha', 'RS', 'Fundamental', 3, 2211.47, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-igrejinha-rs-abre-vagas-para-auxiliar-de-farmacia-de-manipulacao-e-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aracruz - ES abre seleção para guarda-vidas', 'Prefeitura de Aracruz', 'ES', 'Fundamental', 60, 2181.48, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracruz-es-abre-selecao-para-guarda-vidas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Capitólio - MG abre processos seletivos para os cargos de Guarda e Operário', 'Prefeitura de Capitólio', 'MG', 'Fundamental', 3, 2163.56, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-capitolio-mg-abre-processos-seletivos-para-os-cargos-de-guarda-e-operario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIS-VERDE - MG abre processo seletivo para o cargo de Motorista', 'CIS-VERDE - Consórcio Intermunicipal Multifinalitário', 'MG', 'Fundamental', 4, 1980.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cis-verde-mg-abre-processo-seletivo-para-o-cargo-de-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sabino - SP abre concurso público para monitor de transporte escolar', 'Prefeitura de Sabino', 'SP', 'Médio', 1, 1572.65, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sabino-sp-abre-concurso-publico-para-monitor-de-transporte-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEDEC João Pessoa - PB abre seleção para educadores sociais voluntários', 'SEDEC - Secretaria Municipal de Educação e Cultura de João Pessoa', 'PB', 'Médio', 0, 918.39, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sedec-joao-pessoa-pb-abre-selecao-para-educadores-sociais-voluntarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para docentes no Colégio Técnico Agrícola José Bonifácio', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 0, 34.22, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-docentes-no-colegio-tecnico-agricola-jose-bonifacio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapeva - SP abre processo seletivo para professores', 'Prefeitura de Itapeva', 'SP', 'Médio', 5000, 33.4, true, '2026-11-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapeva-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP prorroga inscrições de concurso público para docente de nível médio em Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 0, 31.04, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-prorroga-inscricoes-de-concurso-publico-para-docente-de-nivel-medio-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Comando do 1º Distrito Naval - RJ/MG abre vagas para oficiais temporários de nível superior', 'Com1ºDN - Comando do 1º Distrito Naval da Marinha do Brasil', 'Nacional', 'Superior', 171, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/comando-do-1-distrito-naval-rj-mg-abre-vagas-para-oficiais-temporarios-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - AM e RO abre processo seletivo para Oficiais Temporários de nível superior', 'Com9ºDN - Comando do 9º Distrito Naval da Marinha do Brasil', 'Nacional', 'Superior', 23, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-am-e-ro-abre-processo-seletivo-para-oficiais-temporarios-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 3º Distrito Naval abre vagas para Oficiais Temporários', 'Marinha do Brasil - Comando do 3º Distrito Naval', 'Nacional', 'Superior', 35, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-3-distrito-naval-abre-vagas-para-oficiais-temporarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 4º Distrito Naval abre seleção para oficiais temporários com vagas em diferentes estados', 'Marinha do Brasil - Comando do 4º Distrito Naval', 'Nacional', 'Superior', 25, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-4-distrito-naval-abre-selecao-para-oficiais-temporarios-com-vagas-em-diferentes-estados')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 7º Distrito Naval: edital de processo seletivo oferece vagas de nível superior para oficiais temporários', 'Marinha do Brasil - Comando do 7º Distrito Naval', 'Nacional', 'Superior', 17, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-7-distrito-naval-edital-de-processo-seletivo-oferece-vagas-de-nivel-superior-para-oficiais-temporarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 2º Distrito Naval abre seleção para oficiais temporários RM2 na Bahia', 'Comando do 2º Distrito Naval da Marinha do Brasil', 'BA', 'Superior', 18, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-2-distrito-naval-abre-selecao-para-oficiais-temporarios-rm2-na-bahia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 8º Distrito Naval abre vagas para Oficiais RM2 em SP', 'Marinha do Brasil - Comando do 8º Distrito Naval', 'SP', 'Superior', 36, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-8-distrito-naval-abre-vagas-para-oficiais-rm2-em-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Marinha do Brasil - 5º Distrito Naval abre seleção para Oficiais Médicos Temporários no RS', 'Comando do 5º Distrito Naval da Marinha do Brasil', 'RS', 'Superior', 5, NULL, false, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/marinha-do-brasil-5-distrito-naval-abre-selecao-para-oficiais-medicos-temporarios-no-rs')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaiçara - SP abre concurso público com salários de até R$ 17.716,50', 'Prefeitura de Guaiçara', 'SP', 'Fundamental', 33, 17716.5, true, '2026-11-11'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaicara-sp-abre-concurso-publico-com-salarios-de-ate-17716')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP prorroga inscrições de concurso público para Professor Doutor na Faculdade de Engenharia Mecânica', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-11-11'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-prorroga-inscricoes-de-concurso-publico-para-professor-doutor-na-faculdade-de-engenharia-mecanica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor assistente de Engenharia Sanitária em Rio Claro - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-11-11'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-engenharia-sanitaria-em-rio-claro-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaguaribe - CE reabre inscrições para concursos públicos', 'Prefeitura de Jaguaribe', 'CE', 'Fundamental', 183, 12948.01, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaguaribe-ce-reabre-inscricoes-para-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ituporanga - SC abre processo seletivo para Procurador Legislativo', 'Câmara de Vereadores de Ituporanga', 'SC', 'Superior', 1, 11580.97, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ituporanga-sc-abre-processo-seletivo-para-procurador-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAEB - BA abre concurso público para Especialista em Políticas Públicas e Gestão Governamental', 'SRH - Superintendência de Recursos Humanos e SAEB - Secretaria de Administração', 'BA', 'Superior', 50, 10860.62, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saeb-ba-abre-concurso-publico-para-especialista-em-politicas-publicas-e-gestao-governamental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre processo seletivo para a Maternidade Dona Catarina Kuss em Mafra', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Médio', 4, 10581.16, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-processo-seletivo-para-a-maternidade-dona-catarina-kuss-em-mafra')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Velho - RO retifica concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Porto Velho', 'RO', 'Fundamental', 2098, 9828.19, true, '2026-11-11'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-velho-ro-retifica-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital de Clínicas de Porto Alegre - RS abre seleções para diversos cargos', 'HCPA - Hospital de Clínicas de Porto Alegre', 'RS', 'Médio', 0, 9763.8, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-de-clinicas-de-porto-alegre-rs-abre-selecoes-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Major Vieira - SC retifica edital de concurso público', 'Prefeitura de Major Vieira', 'SC', 'Fundamental', 12, 8442.71, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-major-vieira-sc-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('INB retifica concurso público para cadastro de reserva em diversas áreas de atuação', 'INB - Indústrias Nucleares do Brasil S.A.', 'Nacional', 'Médio', 0, 8374.0, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/inb-retifica-concurso-publico-para-cadastro-de-reserva-em-diversas-areas-de-atuacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapecó - SC abre processo seletivo para professores', 'Prefeitura de Chapecó', 'SC', 'Médio', 0, 7949.45, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapeco-sc-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mostardas - RS abre processo seletivo para diversos cargos', 'Prefeitura de Mostardas', 'RS', 'Fundamental', 0, 7034.16, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mostardas-rs-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processos seletivos para professor substituto em São Luís, Coelho Neto e São Bento', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 9, 6886.82, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processos-seletivos-para-professor-substituto-em-sao-luis-coelho-neto-e-sao-bento')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processo seletivo para professores substitutos em Coelho Neto', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 4, 6886.82, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processo-seletivo-para-professores-substitutos-em-coelho-neto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro de Alcântara - SC abre seleção para a Secretaria de Educação', 'Prefeitura de São Pedro de Alcântara', 'SC', 'Fundamental', 0, 5545.75, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-de-alcantara-sc-abre-selecao-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Altair - SP abre concurso público com salários de até R$ 5.500,00', 'Câmara de Altair', 'SP', 'Fundamental', 2, 5500.0, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-altair-sp-abre-concurso-publico-com-salarios-de-ate-5500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Luzia d''Oeste - RO abre seleção com salários de até R$ 5.130,63', 'Prefeitura de Santa Luzia d''Oeste', 'RO', 'Fundamental', 34, 5130.63, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-luzia-doeste-ro-abre-selecao-com-salarios-de-ate-5130')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Imbituba - SC abre concurso público com salários de até R$ 4.807,49', 'Prefeitura de Imbituba', 'SC', 'Médio', 8, 4807.49, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-imbituba-sc-abre-concurso-publico-com-salarios-de-ate-4807')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Educação de Batayporã - MS abre processo seletivo para diversos cargos', 'Prefeitura de Batayporã - Secretaria Municipal de Educação, Cultura, Esporte e Lazer', 'MS', 'Fundamental', 9, 4568.53, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-de-educacao-de-bataypora-ms-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro do Turvo - SP abre processos seletivos para diversos níveis', 'Prefeitura de São Pedro do Turvo', 'SP', 'Fundamental', 0, 4082.72, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-do-turvo-sp-abre-processos-seletivos-para-diversos-niveis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pradópolis - SP divulga edital de processo seletivo para professores', 'Prefeitura de Pradópolis', 'SP', 'Superior', 0, 3888.34, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pradopolis-sp-divulga-edital-de-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Velho - RO retifica concurso com vagas para a educação', 'Prefeitura de Porto Velho', 'RO', 'Médio', 265, 3847.97, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-velho-ro-retifica-concurso-com-vagas-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seleções para o cargo de professor substituto em Zé Doca e Pinheiro', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 8, 3624.64, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-selecoes-para-o-cargo-de-professor-substituto-em-ze-doca-e-pinheiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra do Turvo - SP abre vaga para Assistente da Procuradoria-Geral', 'Prefeitura de Barra do Turvo', 'SP', 'Superior', 1, 3610.85, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-do-turvo-sp-abre-vaga-para-assistente-da-procuradoria-geral')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Marcos - RS abre concurso público para professores', 'Prefeitura de São Marcos', 'RS', 'Superior', 14, 2693.65, true, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-marcos-rs-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Defensoria Pública de SP abre concurso para Defensor Público', 'Defensoria Pública do Estado de São Paulo', 'SP', 'Superior', 70, NULL, false, '2026-11-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/defensoria-publica-de-sp-abre-concurso-para-defensor-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Confins - MG divulga retificações de processo seletivo', 'Prefeitura de Confins', 'MG', 'Fundamental', 153, 23298.67, true, '2026-11-12'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-confins-mg-divulga-retificacoes-de-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaraguá do Sul - SC abre processos seletivos com salários de até R$ 15.606,92', 'Prefeitura de Jaraguá do Sul', 'SC', 'Médio', 10, 15606.92, true, '2026-11-12'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaragua-do-sul-sc-abre-processos-seletivos-com-salarios-de-ate-15606')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei - MG abre concurso público com salários de até R$ 15.164,56', 'Prefeitura de São João del-Rei', 'MG', 'Médio', 74, 15164.56, true, '2026-11-12'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-mg-abre-concurso-publico-com-salarios-de-ate-15164')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapuca - RS retifica concurso público com salários de até R$ 9.495,82', 'Prefeitura de Itapuca', 'RS', 'Médio', 51, 9495.82, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapuca-rs-retifica-concurso-publico-com-salarios-de-ate-9495')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação José Pedro de Oliveira - SP abre concurso público com salários de até R$ 8.991,96', 'FJPO - Fundação José Pedro de Oliveira', 'SP', 'Fundamental', 4, 8991.96, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-jose-pedro-de-oliveira-sp-abre-concurso-publico-com-salarios-de-ate-8991')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Mossoró - RN abre concurso público com salários de até R$ 8.810,69', 'Câmara de Mossoró', 'RN', 'Médio', 24, 8810.69, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-mossoro-rn-abre-concurso-publico-com-salarios-de-ate-8810')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFU - MG abre processos seletivos para professores substitutos', 'UFU - Universidade Federal de Uberlândia', 'MG', 'Superior', 9, 8340.32, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufu-mg-abre-processos-seletivos-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Floresta - PE publica retificação de concurso público', 'Prefeitura de Floresta', 'PE', 'Fundamental', 431, 8000.0, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-floresta-pe-publica-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Cemmil - SP abre processo seletivo com vagas em Carapicuíba', 'Cemmil - Consórcio Intermunicipal Cemmil para o Desenvolvimento Sustentável', 'SP', 'Fundamental', 28, 6889.64, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-cemmil-sp-abre-processo-seletivo-com-vagas-em-carapicuiba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei e DAMAE - MG abrem concursos com salários de até R$ 6.469,28', 'Prefeitura de São João del-Rei e DAMAE - Departamento Autônomo Municipal de Água e Esgoto', 'MG', 'Fundamental', 116, 6469.28, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-e-damae-mg-abrem-concursos-com-salarios-de-ate-6469')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Colatina - ES abre processo seletivo com salários de até R$ 6.217,20', 'Prefeitura de Colatina', 'ES', 'Fundamental', 72, 6217.2, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-colatina-es-abre-processo-seletivo-com-salarios-de-ate-6217')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Passo de Torres - SC abre processo seletivo para diversos cargos na educação', 'Prefeitura de Passo de Torres', 'SC', 'Fundamental', 181, 5959.62, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-passo-de-torres-sc-abre-processo-seletivo-para-diversos-cargos-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Embaúba - SP retifica concurso público com salários de até R$ 5.600,00', 'Prefeitura de Embaúba', 'SP', 'Fundamental', 51, 5600.0, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-embauba-sp-retifica-concurso-publico-com-salarios-de-ate-5600')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Balsa Nova - PR abre processo seletivo para educadores', 'Prefeitura de Balsa Nova', 'PR', 'Médio', 4, 5130.63, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-balsa-nova-pr-abre-processo-seletivo-para-educadores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araçuaí - MG abre processo seletivo para diversos cargos', 'Prefeitura de Araçuaí', 'MG', 'Fundamental', 13, 5122.14, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracuai-mg-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Baldim - MG abre concurso público para profissionais de saúde', 'Prefeitura de Baldim', 'MG', 'Médio', 10, 5037.73, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-baldim-mg-abre-concurso-publico-para-profissionais-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catu - BA prorroga inscrições do concurso público para diversos cargos', 'Prefeitura de Catu', 'BA', 'Médio', 148, 4690.16, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catu-ba-prorroga-inscricoes-do-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bujaru - PA abre concurso público com salários de até R$ 4.543,83', 'Prefeitura de Bujaru', 'PA', 'Fundamental', 100, 4543.83, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bujaru-pa-abre-concurso-publico-com-salarios-de-ate-4543')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Instituto IMS - RJ prorroga inscrições de processo seletivo para o Programa de Residência Médica em Dermatologia', 'Instituto IMS - Instituto de Pós-Graduação em Ciências da Saúde Izamar Milidiu da Silva', 'RJ', 'Superior', 5, 4106.09, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/instituto-ims-rj-prorroga-inscricoes-de-processo-seletivo-para-o-programa-de-residencia-medica-em-dermatologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraguaçu Paulista - SP divulga processo seletivo para professores', 'Prefeitura de Paraguaçu Paulista', 'SP', 'Superior', 0, 4083.17, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraguacu-paulista-sp-divulga-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Três Coroas - RS abre seleção para Técnico de Enfermagem', 'Prefeitura de Três Coroas', 'RS', 'Médio', 0, 3909.29, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tres-coroas-rs-abre-selecao-para-tecnico-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Camocim - CE abre concurso público com 11 vagas', 'Câmara de Camocim', 'CE', 'Fundamental', 11, 3800.0, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-camocim-ce-abre-concurso-publico-com-11-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para técnico de enfermagem em Santa Bárbara d''Oeste', 'AME - Ambulatório Médico de Especialidades de Santa Bárbara d''Oeste', 'SP', 'Médio', 1, 3590.25, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-tecnico-de-enfermagem-em-santa-barbara-doeste')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria Municipal de Educação de Sonora - MS abre seleção para professores com salário de R$ 3.538,85', 'Secretaria Municipal de Educação de Sonora', 'MS', 'Superior', 41, 3538.85, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-municipal-de-educacao-de-sonora-ms-abre-selecao-para-professores-com-salario-de-3538')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professores substitutos em São José dos Campos - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professores-substitutos-em-sao-jose-dos-campos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pratânia - SP abre processo seletivo com vagas para diversos cargos', 'Prefeitura de Pratânia', 'SP', 'Fundamental', 20, 3242.0, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pratania-sp-abre-processo-seletivo-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei - MG abre seleção para agentes comunitários de saúde', 'Prefeitura de São João del-Rei', 'MG', 'Médio', 66, 3242.0, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-mg-abre-selecao-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itatinga - SP abre processo seletivo para a área da educação', 'Prefeitura de Itatinga', 'SP', 'Médio', 13, 2558.75, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itatinga-sp-abre-processo-seletivo-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Videira - SC abre processo seletivo para agente social', 'Prefeitura de Videira', 'SC', 'Médio', 0, 2486.38, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-videira-sc-abre-processo-seletivo-para-agente-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre seleção para Auxiliar de Higienização no SAMU de Blumenau', 'SAMU - Serviço de Atendimento Móvel de Urgência de Blumenau', 'SC', 'Fundamental', 0, 2228.21, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-selecao-para-auxiliar-de-higienizacao-no-samu-de-blumenau')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPSEMG retifica processo seletivo com vagas para residência médica', 'IPSEMG - Instituto de Previdência dos Servidores do Estado de Minas Gerais', 'MG', 'Superior', 99, NULL, false, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipsemg-retifica-processo-seletivo-com-vagas-para-residencia-medica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Hortêncio - RS abre processo seletivo para Técnico em Enfermagem', 'Prefeitura de São José do Hortêncio', 'RS', 'Médio', 0, NULL, false, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-hortencio-rs-abre-processo-seletivo-para-tecnico-em-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJAP - AP abre concurso público para o cargo de juiz de direito substituto', 'TJAP - Tribunal de Justiça do Estado do Amapá', 'AP', 'Superior', 15, 35877.27, true, '2026-11-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tjap-ap-abre-concurso-publico-para-o-cargo-de-juiz-de-direito-substituto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trindade do Sul - RS abre processo seletivo para médicos', 'Prefeitura de Trindade do Sul', 'RS', 'Superior', 3, 16500.0, true, '2026-11-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trindade-do-sul-rs-abre-processo-seletivo-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG retifica concurso público para o cargo de Professor do Ensino Básico, Técnico e Tecnológico', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 33, 14945.96, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-retifica-concurso-publico-para-o-cargo-de-professor-do-ensino-basico-tecnico-e-tecnologico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMS abre processos seletivos para professores visitantes', 'UFMS - Fundação Universidade Federal de Mato Grosso do Sul', 'MS', 'Superior', 79, 13753.96, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufms-abre-processos-seletivos-para-professores-visitantes')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IGESDF - DF anuncia seleções para terapeuta ocupacional e médico cirurgião geral', 'IGESDF - Instituto de Gestão Estratégica de Saúde do Distrito Federal', 'DF', 'Superior', 0, 13359.56, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/igesdf-df-anuncia-selecoes-para-terapeuta-ocupacional-e-medico-cirurgiao-geral')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Montenegro - RS abre concurso público com salários de até R$ 9.848,34', 'Prefeitura de Montenegro', 'RS', 'Fundamental', 84, 9848.34, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-montenegro-rs-abre-concurso-publico-com-salarios-de-ate-9848')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSP retifica processo seletivo com vagas para professores substitutos', 'IFSP - Instituto Federal de Educação, Ciência e Tecnologia de São Paulo', 'SP', 'Superior', 79, 8340.33, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifsp-retifica-processo-seletivo-com-vagas-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSul - RS abre seleção para professores substitutos em Bagé', 'IFSul - Instituto Federal de Educação, Ciência e Tecnologia Sul-rio-grandense', 'RS', 'Superior', 2, 8340.33, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifsul-rs-abre-selecao-para-professores-substitutos-em-bage')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processo seletivo para professores substitutos em Balsas', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 3, 6886.82, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processo-seletivo-para-professores-substitutos-em-balsas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dom Inocêncio - PI abre concurso público com salários de até R$ 6.000,00', 'Câmara de Dom Inocêncio', 'PI', 'Médio', 6, 6000.0, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dom-inocencio-pi-abre-concurso-publico-com-salarios-de-ate-6000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('MOBI-Rio - RJ abre processo seletivo para educador e motorista orientador', 'MOBI-Rio - Companhia Municipal de Transportes Coletivos', 'RJ', 'Médio', 5, 5960.63, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/mobi-rio-rj-abre-processo-seletivo-para-educador-e-motorista-orientador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Xavantina - MT divulga edital retificado de processo seletivo para a educação', 'Prefeitura de Nova Xavantina', 'MT', 'Fundamental', 137, 5786.28, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-xavantina-mt-divulga-edital-retificado-de-processo-seletivo-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio do Campo - SC abre processo seletivo para profissionais da educação', 'Prefeitura de Rio do Campo', 'SC', 'Médio', 0, 5500.0, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-do-campo-sc-abre-processo-seletivo-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Domingos - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de São Domingos', 'SC', 'Fundamental', 0, 5354.54, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-domingos-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor assistente na área de Pediatria em Cabo Frio', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 5236.22, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-assistente-na-area-de-pediatria-em-cabo-frio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DPE - PB abre concurso público com salários de até R$ 5.197,50', 'DPE - Defensoria Pública do Estado da Paraíba', 'PB', 'Médio', 20, 5197.5, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/dpe-pb-abre-concurso-publico-com-salarios-de-ate-5197')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Instituto Sócrates Guanaes - GO abre processo seletivo para cadastro de reserva', 'ISG - Instituto Sócrates Guanaes', 'GO', 'Médio', 0, 4431.4, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/instituto-socrates-guanaes-go-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rodeio - SC abre processos seletivos para diversos cargos', 'Prefeitura de Rodeio', 'SC', 'Fundamental', 4, 4299.34, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rodeio-sc-abre-processos-seletivos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tijucas - SC abre concurso público com vagas para a educação', 'Prefeitura de Tijucas', 'SC', 'Médio', 250, 3847.97, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tijucas-sc-abre-concurso-publico-com-vagas-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto de matemática em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-matematica-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no campus de Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 8, 3511.9, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-campus-de-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos públicos para professores substitutos no campus de Assis - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 5, 3511.9, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-publicos-para-professores-substitutos-no-campus-de-assis-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor substituto na Faculdade de Filosofia e Ciências de Marília - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3361.39, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-substituto-na-faculdade-de-filosofia-e-ciencias-de-marilia-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Indaiabira - MG retifica o edital do processo seletivo para agentes de saúde e de endemias', 'Prefeitura de Indaiabira', 'MG', 'Médio', 10, 3242.0, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-indaiabira-mg-retifica-o-edital-do-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Paraíso - MG retifica o edital do processo seletivo para agentes comunitários de saúde', 'Prefeitura de São João do Paraíso', 'MG', 'Médio', 14, 3242.0, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-paraiso-mg-retifica-o-edital-do-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Formiga - MG abre processo seletivo para professores', 'Prefeitura de Formiga', 'MG', 'Superior', 0, 3078.38, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-formiga-mg-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HCFMRP-USP - SP abre concursos públicos para Técnico de Enfermagem e Biologista', 'HCFMRP-USP - Hospital das Clínicas da Faculdade de Medicina de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Médio', 2, 2978.36, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hcfmrp-usp-sp-abre-concursos-publicos-para-tecnico-de-enfermagem-e-biologista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HCFMRP-USP - SP abre concursos públicos para Fisioterapeuta e Terapeuta Ocupacional', 'HCFMRP-USP - Hospital das Clínicas da Faculdade de Medicina de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Superior', 2, 2978.36, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hcfmrp-usp-sp-abre-concursos-publicos-para-fisioterapeuta-e-terapeuta-ocupacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Schroeder - SC abre seleção para auxiliar de consultório dentário', 'SEMSA - Secretaria Municipal de Saúde de Schroeder', 'SC', 'Médio', 1, 2412.97, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-schroeder-sc-abre-selecao-para-auxiliar-de-consultorio-dentario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio da Patrulha - RS divulga processo seletivo para instrutores educacionais', 'Prefeitura de Santo Antônio da Patrulha', 'RS', 'Médio', 0, 2367.2, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-da-patrulha-rs-divulga-processo-seletivo-para-instrutores-educacionais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araçoiaba da Serra - SP abre processo seletivo para cuidador', 'Prefeitura de Araçoiaba da Serra', 'SP', 'Médio', 1, 2220.76, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracoiaba-da-serra-sp-abre-processo-seletivo-para-cuidador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Varginha - MG abre seleção para Auxiliar de Educador/Cuidador Residente', 'Prefeitura de Varginha - Secretaria Municipal de Habitação e Desenvolvimento Social (SEHAD)', 'MG', 'Fundamental', 8, 1701.3, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-varginha-mg-abre-selecao-para-auxiliar-de-educador-cuidador-residente')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Estiva - MG abre processo seletivo com sete vagas', 'Prefeitura de Estiva', 'MG', 'Fundamental', 7, 1689.78, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-estiva-mg-abre-processo-seletivo-com-sete-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pelotas - RS abre processos seletivos para médicos', 'Prefeitura de Pelotas', 'RS', 'Superior', 2, 80.0, true, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pelotas-rs-abre-processos-seletivos-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arvorezinha - RS retoma concurso público para Fiscal Ambiental e Fiscal Sanitário', 'Prefeitura de Arvorezinha', 'RS', 'Superior', 0, NULL, false, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arvorezinha-rs-retoma-concurso-publico-para-fiscal-ambiental-e-fiscal-sanitario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ilhota - SC publica edital de concurso público com salários de até R$ 21.113,16', 'Prefeitura de Ilhota', 'SC', 'Fundamental', 36, 21113.16, true, '2026-11-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ilhota-sc-publica-edital-de-concurso-publico-com-salarios-de-ate-21113')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFV - MG abre concursos públicos para professores de magistério superior', 'UFV - Universidade Federal de Viçosa', 'MG', 'Superior', 3, 14081.78, true, '2026-11-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufv-mg-abre-concursos-publicos-para-professores-de-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFCE abre processo seletivo para Professor Substituto de Aquicultura em Acaraú', 'IFCE - Instituto Federal de Educação, Ciência e Tecnologia do Ceará', 'CE', 'Superior', 1, 8340.33, true, '2026-11-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifce-abre-processo-seletivo-para-professor-substituto-de-aquicultura-em-acarau')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFTM - MG abre seleção para professores substitutos no campus Uberlândia Centro', 'IFTM - Instituto Federal de Educação, Ciência e Tecnologia do Triângulo Mineiro', 'MG', 'Superior', 2, 8340.33, true, '2026-11-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/iftm-mg-abre-selecao-para-professores-substitutos-no-campus-uberlandia-centro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Francisco Macedo - PI abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Francisco Macedo', 'PI', 'Fundamental', 49, 4318.18, true, '2026-11-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-francisco-macedo-pi-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Negrinho - SC e órgãos municipais abrem novos concursos públicos', 'Prefeitura de Rio Negrinho, FMC, IPRERIO e SAMAE', 'SC', 'Fundamental', 27, 18538.78, true, '2026-11-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-negrinho-sc-e-orgaos-municipais-abrem-novos-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Paraguaçu Paulista - SP abre concurso público com salários de até R$ 11.065,27', 'Câmara da Estância Turística de Paraguaçu Paulista', 'SP', 'Fundamental', 0, 11065.27, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-paraguacu-paulista-sp-abre-concurso-publico-com-salarios-de-ate-11065')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vitor Meireles - SC abre concurso público e processo seletivo com salários de até R$ 11.050,85', 'Prefeitura de Vitor Meireles', 'SC', 'Fundamental', 3, 11050.85, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vitor-meireles-sc-abre-concurso-publico-e-processo-seletivo-com-salarios-de-ate-11050')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Groaíras - CE reabre inscrições para concursos públicos', 'Prefeitura de Groaíras', 'CE', 'Fundamental', 72, 11000.0, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-groairas-ce-reabre-inscricoes-para-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Luís Eduardo Magalhães - BA abre processo seletivo para diversos cargos', 'Prefeitura de Luís Eduardo Magalhães', 'BA', 'Fundamental', 2355, 9216.9, true, '2026-11-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-luis-eduardo-magalhaes-ba-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPA abre seleção para professores substitutos de Engenharia Elétrica e Engenharia Mecânica', 'IFPA - Instituto Federal de Educação, Ciência e Tecnologia do Pará', 'PA', 'Superior', 2, 6526.73, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpa-abre-selecao-para-professores-substitutos-de-engenharia-eletrica-e-engenharia-mecanica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('RioSaúde - RJ abre processo seletivo para enfermeiros', 'RioSaúde - Empresa Pública de Saúde do Rio de Janeiro S/A', 'RJ', 'Superior', 15, 5239.4, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/riosaude-rj-abre-processo-seletivo-para-enfermeiros')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Bonifácio - SC abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de São Bonifácio', 'SC', 'Superior', 0, 5159.83, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-bonifacio-sc-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lençóis Paulista - SP abre concurso público com salários de até R$ 5.044,35', 'Prefeitura de Lençóis Paulista', 'SP', 'Fundamental', 14, 5044.35, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lencois-paulista-sp-abre-concurso-publico-com-salarios-de-ate-5044')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de João Ramalho - SP abre concurso público para cargos de nível médio', 'Câmara de João Ramalho', 'SP', 'Médio', 2, 4813.83, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-joao-ramalho-sp-abre-concurso-publico-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Maria de Jetibá - ES abre processos seletivos para cadastro de reserva', 'Prefeitura de Santa Maria de Jetibá', 'ES', 'Fundamental', 0, 4727.46, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-maria-de-jetiba-es-abre-processos-seletivos-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Portel - PA abre concurso público com salários de até R$ 4.723,31', 'Câmara de Portel', 'PA', 'Fundamental', 27, 4723.31, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-portel-pa-abre-concurso-publico-com-salarios-de-ate-4723')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREF16 - RN abre concurso público para profissionais de nível superior', 'CREF16/RN - Conselho Regional de Educação Física da 16ª Região', 'RN', 'Superior', 3, 4169.55, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cref16-rn-abre-concurso-publico-para-profissionais-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Groaíras - CE reabre inscrições de concurso para agentes de saúde e de endemias', 'Prefeitura de Groaíras', 'CE', 'Médio', 9, 3242.0, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-groairas-ce-reabre-inscricoes-de-concurso-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Branca - PB republica editais de concursos públicos', 'Prefeitura de Água Branca', 'PB', 'Médio', 24, 3242.0, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-branca-pb-republica-editais-de-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Piauí - PI revoga suspensão de processo seletivo para Agente de Endemias e de Saúde', 'Prefeitura de São João do Piauí', 'PI', 'Médio', 80, 1621.0, true, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-piaui-pi-revoga-suspensao-de-processo-seletivo-para-agente-de-endemias-e-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CEFET-MG: Processo seletivo abre vaga para professor substituto em Divinópolis', 'CEFET - Centro Federal de Educação Tecnológica de Minas Gerais', 'MG', 'Superior', 1, NULL, false, '2026-11-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cefet-mg-processo-seletivo-abre-vaga-para-professor-substituto-em-divinopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mirassol d''Oeste - MT abre processo seletivo com salários de até R$ 27.645,05', 'Prefeitura de Mirassol d''Oeste', 'MT', 'Fundamental', 205, 27645.05, true, '2026-11-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mirassol-doeste-mt-abre-processo-seletivo-com-salarios-de-ate-27645')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Iporã do Oeste - SC abre concurso público e processos seletivos com salários de até R$ 19.265,80', 'Prefeitura de Iporã do Oeste', 'SC', 'Fundamental', 5, 19265.8, true, '2026-11-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipora-do-oeste-sc-abre-concurso-publico-e-processos-seletivos-com-salarios-de-ate-19265')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para Professor Substituto de Matemática em Itabirito', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 12536.98, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professor-substituto-de-matematica-em-itabirito')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tio Hugo - RS abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Tio Hugo', 'RS', 'Fundamental', 66, 11943.11, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tio-hugo-rs-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Louveira - SP abre concursos com vagas imediatas e cadastro de reserva', 'Prefeitura de Louveira', 'SP', 'Fundamental', 19, 8738.0, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-louveira-sp-abre-concursos-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMSC retifica concurso para Soldados do Quadro de Praças Policial Militar', 'PMSC - Polícia Militar de Santa Catarina', 'SC', 'Superior', 500, 8505.0, true, '2026-11-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/pmsc-retifica-concurso-para-soldados-do-quadro-de-pracas-policial-militar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Votorantim - SP abre concursos públicos com salários de até R$ 8.377,33', 'Prefeitura de Votorantim', 'SP', 'Fundamental', 37, 8377.33, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-votorantim-sp-abre-concursos-publicos-com-salarios-de-ate-8377')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre vaga para professor visitante no campus Ouro Branco', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 8340.33, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-vaga-para-professor-visitante-no-campus-ouro-branco')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Hospital Santa Lydia - SP abre seleção com salários de até R$ 7.310,37', 'FHSL - Fundação Hospital Santa Lydia', 'SP', 'Médio', 8, 7310.37, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-hospital-santa-lydia-sp-abre-selecao-com-salarios-de-ate-7310')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lages - SC abre seleção para diversos cargos na Secretaria da Saúde', 'Prefeitura de Lages - Secretaria da Saúde', 'SC', 'Fundamental', 14, 5883.29, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lages-sc-abre-selecao-para-diversos-cargos-na-secretaria-da-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ibiúna - SP abre concurso público para Assistente Administrativo e Controlador Interno', 'Câmara da Estância Turística de Ibiúna', 'SP', 'Fundamental', 2, 5570.09, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ibiuna-sp-abre-concurso-publico-para-assistente-administrativo-e-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Murutinga do Sul - SP publica retificações de concurso público', 'Prefeitura de Murutinga do Sul', 'SP', 'Fundamental', 15, 5118.2, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-murutinga-do-sul-sp-publica-retificacoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre processo seletivo para cadastro de reserva na educação', 'Prefeitura de Cláudio - Secretaria Municipal de Educação', 'MG', 'Fundamental', 0, 4748.99, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-processo-seletivo-para-cadastro-de-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Presidente Alves - SP abre concurso público com salários de até R$ 4.246,41', 'Prefeitura de Presidente Alves', 'SP', 'Fundamental', 3, 4246.41, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-presidente-alves-sp-abre-concurso-publico-com-salarios-de-ate-4246')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pradópolis - SP abre seleção para professores substitutos', 'Prefeitura de Pradópolis', 'SP', 'Superior', 0, 3888.34, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pradopolis-sp-abre-selecao-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Joca Marques - PI abre concurso público com oito vagas imediatas', 'Câmara de Joca Marques', 'PI', 'Fundamental', 8, 3800.0, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-joca-marques-pi-abre-concurso-publico-com-oito-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Apiacá - ES abre seleção para cadastro de reserva de professores e pedagogos', 'Prefeitura de Apiacá', 'ES', 'Superior', 0, 3206.64, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-apiaca-es-abre-selecao-para-cadastro-de-reserva-de-professores-e-pedagogos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Quixadá - CE abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Quixadá', 'CE', 'Fundamental', 411, 3138.0, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-quixada-ce-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conchal - SP abre processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Conchal', 'SP', 'Médio', 3, 2277.89, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conchal-sp-abre-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Toropi - RS abre concurso público para Agente de Serviços Complementares', 'Câmara de Toropi', 'RS', 'Fundamental', 1, 1654.47, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-toropi-rs-abre-concurso-publico-para-agente-de-servicos-complementares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro do Sul - RS abre seleção para visitadores dos programas Criança Feliz e Primeira Infância Melhor', 'Prefeitura de São Pedro do Sul', 'RS', 'Médio', 6, 1621.0, true, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-do-sul-rs-abre-selecao-para-visitadores-dos-programas-crianca-feliz-e-primeira-infancia-melhor')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Formosa da Serra Negra - MA abre concurso público com vagas para professores', 'Prefeitura de Formosa da Serra Negra', 'MA', 'Superior', 60, NULL, false, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-formosa-da-serra-negra-ma-abre-concurso-publico-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unemat abre processo seletivo para professores de nível superior em Nova Monte Verde', 'UNEMAT - Universidade do Estado de Mato Grosso', 'MT', 'Superior', 12, NULL, false, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unemat-abre-processo-seletivo-para-professores-de-nivel-superior-em-nova-monte-verde')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para o cargo de Professor Titular na Faculdade de Medicina de Botucatu - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, NULL, false, '2026-11-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-o-cargo-de-professor-titular-na-faculdade-de-medicina-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara dos Deputados retifica concurso público para analistas legislativos', 'Câmara dos Deputados', 'Nacional', 'Superior', 184, 32070.88, true, '2026-11-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/camara-dos-deputados-retifica-concurso-publico-para-analistas-legislativos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre seleção para professor substituto de Direito em Arcos', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 15964.45, true, '2026-11-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-selecao-para-professor-substituto-de-direito-em-arcos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Entre Rios do Oeste - PR abre processo seletivo para cargos de nível superior', 'Prefeitura de Entre Rios do Oeste', 'PR', 'Superior', 4, 14045.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-entre-rios-do-oeste-pr-abre-processo-seletivo-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFCSPA - RS abre concurso público com vagas para professores do magistério superior', 'UFCSPA - Fundação Universidade Federal de Ciências da Saúde de Porto Alegre', 'RS', 'Superior', 10, 13753.96, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufcspa-rs-abre-concurso-publico-com-vagas-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Contagem - MG retifica edital de concurso público', 'Prefeitura de Contagem', 'MG', 'Médio', 272, 13305.57, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-contagem-mg-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Atalanta - SC abre processo seletivo com salários de até R$ 9.751,15', 'Prefeitura de Atalanta', 'SC', 'Fundamental', 1, 9751.15, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-atalanta-sc-abre-processo-seletivo-com-salarios-de-ate-9751')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Goiana - PE retifica edital de seleção pública', 'Prefeitura de Goiana', 'PE', 'Médio', 166, 8926.43, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-goiana-pe-retifica-edital-de-selecao-publica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professor substituto de Geografia no campus Sabará', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 8840.74, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professor-substituto-de-geografia-no-campus-sabara')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFESP abre seleção para professor substituto de Química Analítica em Diadema - SP', 'UNIFESP - Universidade Federal de São Paulo', 'SP', 'Superior', 2, 8340.33, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifesp-abre-selecao-para-professor-substituto-de-quimica-analitica-em-diadema-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unifesp abre vaga para professor substituto na área de Linguística em Guarulhos - SP', 'UNIFESP - Universidade Federal de São Paulo', 'SP', 'Superior', 1, 8340.33, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifesp-abre-vaga-para-professor-substituto-na-area-de-linguistica-em-guarulhos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Garuva - SC abre processo seletivo para cadastro de reserva em diversos cargos', 'Prefeitura de Garuva', 'SC', 'Fundamental', 0, 7162.96, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-garuva-sc-abre-processo-seletivo-para-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Francisco do Brejão - MA abre concurso público para Professor de Educação Infantil', 'Prefeitura de São Francisco do Brejão', 'MA', 'Superior', 13, 6867.5, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-francisco-do-brejao-ma-abre-concurso-publico-para-professor-de-educacao-infantil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSP retifica edital de concurso público para o cargo de Professor do Ensino Básico, Técnico e Tecnológico', 'IFSP - Instituto Federal de Educação, Ciência e Tecnologia de São Paulo', 'SP', 'Superior', 45, 6397.19, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifsp-retifica-edital-de-concurso-publico-para-o-cargo-de-professor-do-ensino-basico-tecnico-e-tecnologico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Iaras - SP abre concurso público e processo seletivo', 'Prefeitura de Iaras', 'SP', 'Fundamental', 19, 6142.0, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-iaras-sp-abre-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre seleções para cadastro de reserva em várias unidades prisionais', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 0, 3952.58, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-selecoes-para-cadastro-de-reserva-em-varias-unidades-prisionais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Óleo - SP abre processo seletivo para diversos cargos', 'Prefeitura de Óleo', 'SP', 'Fundamental', 0, 3951.25, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-oleo-sp-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto de Letras em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-de-letras-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no campus de São João da Boa Vista - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-campus-de-sao-joao-da-boa-vista-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos públicos para professores substitutos na Faculdade de Odontologia de Araçatuba - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 4, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-publicos-para-professores-substitutos-na-faculdade-de-odontologia-de-aracatuba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professores substitutos na Faculdade de Medicina de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professores-substitutos-na-faculdade-de-medicina-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre três concursos para professores substitutos no campus de Guaratinguetá - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 6, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-tres-concursos-para-professores-substitutos-no-campus-de-guaratingueta-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos na Faculdade de Ciências de Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-na-faculdade-de-ciencias-de-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no Instituto de Artes', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 2, 3511.9, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-instituto-de-artes')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Marapoama - SP abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Marapoama', 'SP', 'Fundamental', 34, 3242.0, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-marapoama-sp-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canoas - RS abre concurso público para a área da educação', 'Prefeitura de Canoas', 'RS', 'Médio', 76, 3206.27, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canoas-rs-abre-concurso-publico-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lima Duarte - MG abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Lima Duarte', 'MG', 'Fundamental', 98, 3078.38, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lima-duarte-mg-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ouro Fino - MG abre processo seletivo para Assistente Social', 'Prefeitura de Ouro Fino', 'MG', 'Superior', 1, 2779.28, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ouro-fino-mg-abre-processo-seletivo-para-assistente-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Rita de Cássia - BA abre concurso público com 12 vagas', 'Câmara de Santa Rita de Cássia', 'BA', 'Fundamental', 12, 1728.0, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-rita-de-cassia-ba-abre-concurso-publico-com-12-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SESDEC - RO abre seleção para prestadores voluntários na Polícia Militar e no Corpo de Bombeiros', 'SESDEC - Secretaria de Estado da Segurança, Defesa e Cidadania', 'RO', 'Médio', 332, 1350.0, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sesdec-ro-abre-selecao-para-prestadores-voluntarios-na-policia-militar-e-no-corpo-de-bombeiros')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USCS - SP abre concurso para professores do curso de Medicina em Itapetininga', 'USCS - Universidade Municipal de São Caetano do Sul', 'SP', 'Superior', 0, 79.58, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uscs-sp-abre-concurso-para-professores-do-curso-de-medicina-em-itapetininga')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para contratação de professor de ensino médio e técnico em Bauru', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 0, 31.04, true, '2026-11-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-contratacao-de-professor-de-ensino-medio-e-tecnico-em-bauru')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor titular em Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-11-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-em-araraquara-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piracema - MG abre concurso e processo seletivo com diversas vagas', 'Prefeitura de Piracema', 'MG', 'Fundamental', 132, 18647.01, true, '2026-11-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piracema-mg-abre-concurso-e-processo-seletivo-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Teutônia - RS abre concurso público com salários de até R$ 13.844,56', 'Prefeitura de Teutônia', 'RS', 'Fundamental', 12, 13844.56, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-teutonia-rs-abre-concurso-publico-com-salarios-de-ate-13844')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EBSERH - Brasil: processo seletivo oferece vagas para médicos em diversas especialidades', 'EBSERH - Empresa Brasileira de Serviços Hospitalares', 'Nacional', 'Superior', 80, 11971.07, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ebserh-brasil-processo-seletivo-oferece-vagas-para-medicos-em-diversas-especialidades')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paiva - MG abre concurso público com salários de até R$ 11.715,84', 'Prefeitura de Paiva', 'MG', 'Fundamental', 13, 11715.84, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paiva-mg-abre-concurso-publico-com-salarios-de-ate-11715')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Matão - SP abre concurso público com salários de até R$ 9.717,96', 'Prefeitura de Matão', 'SP', 'Fundamental', 28, 9717.96, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-matao-sp-abre-concurso-publico-com-salarios-de-ate-9717')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre seleção para professor substituto de Engenharia Elétrica e Eletrônica em Ibirité', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 8840.74, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-selecao-para-professor-substituto-de-engenharia-eletrica-e-eletronica-em-ibirite')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cristalina - GO retifica concurso público com salários de até R$ 8.383,20', 'Câmara de Cristalina', 'GO', 'Fundamental', 36, 8383.2, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-cristalina-go-retifica-concurso-publico-com-salarios-de-ate-8383')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSul - RS abre seleção para professor substituto de Sociologia em Passo Fundo', 'IFSul - Instituto Federal de Educação, Ciência e Tecnologia Sul-rio-grandense', 'RS', 'Superior', 1, 8340.33, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifsul-rs-abre-selecao-para-professor-substituto-de-sociologia-em-passo-fundo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJPB retifica concurso público para analistas judiciários', 'TJPB - Tribunal de Justiça do Estado da Paraíba', 'PB', 'Superior', 50, 7526.14, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/tjpb-retifica-concurso-publico-para-analistas-judiciarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre 9 processos seletivos para professores substitutos', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 29, 6886.82, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-9-processos-seletivos-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seleção para professores substitutos no Departamento de Geografia em São Luís', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 5, 6886.82, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-selecao-para-professores-substitutos-no-departamento-de-geografia-em-sao-luis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pires do Rio - GO retifica edital de concurso público', 'Câmara de Pires do Rio', 'GO', 'Fundamental', 12, 6523.44, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-pires-do-rio-go-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra Bonita - SC abre processo seletivo com vaga para Farmacêutico', 'Prefeitura de Barra Bonita', 'SC', 'Superior', 1, 6240.38, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-bonita-sc-abre-processo-seletivo-com-vaga-para-farmaceutico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Lambari - MG abre concurso público com salários de até R$ 5.500,00', 'Câmara de Lambari', 'MG', 'Fundamental', 8, 5500.0, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-lambari-mg-abre-concurso-publico-com-salarios-de-ate-5500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPR abre processos seletivos para professor substituto no campus Jacarezinho', 'IFPR - Instituto Federal de Educação, Ciência e Tecnologia do Paraná', 'PR', 'Superior', 2, 5037.78, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpr-abre-processos-seletivos-para-professor-substituto-no-campus-jacarezinho')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPREARROIO - SC abre concurso público para o cargo de Agente Previdenciário', 'IPREARROIO - Instituto de Previdência Social dos Servidores Públicos do Município de Arroio Trinta', 'SC', 'Superior', 1, 5025.59, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/iprearroio-sc-abre-concurso-publico-para-o-cargo-de-agente-previdenciario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAMESP - SP abre processos seletivos para diversas áreas em Bauru', 'FAMESP - Fundação para o Desenvolvimento Médico e Hospitalar', 'SP', 'Fundamental', 19, 4934.38, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/famesp-sp-abre-processos-seletivos-para-diversas-areas-em-bauru')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE de Pirapora - MG abre concurso público com salários de até R$ 4.848,48', 'SAAE - Serviço Autônomo de Água e Esgoto do Município de Pirapora', 'MG', 'Fundamental', 9, 4848.48, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saae-de-pirapora-mg-abre-concurso-publico-com-salarios-de-ate-4848')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Gonçalo - RJ abre concursos para Guardas Municipais', 'Prefeitura de São Gonçalo', 'RJ', 'Médio', 101, 4535.54, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-goncalo-rj-abre-concursos-para-guardas-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piraju - SP abre processo seletivo para a área da educação', 'Prefeitura da Estância Turística de Piraju', 'SP', 'Médio', 0, 4193.9, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piraju-sp-abre-processo-seletivo-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Teutônia - RS abre processo seletivo com três vagas', 'Prefeitura de Teutônia', 'RS', 'Médio', 3, 3917.88, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-teutonia-rs-abre-processo-seletivo-com-tres-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José da Lapa - MG abre seleção para cadastro de reserva na educação', 'Prefeitura de São José da Lapa', 'MG', 'Fundamental', 0, 3689.99, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-da-lapa-mg-abre-selecao-para-cadastro-de-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Vila Boa - GO abre concurso público com vagas imediatas e cadastro de reserva', 'Câmara de Vila Boa', 'GO', 'Fundamental', 6, 3674.71, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-vila-boa-go-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seleções para professores substitutos no campus São Luís', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 11, 3624.64, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-selecoes-para-professores-substitutos-no-campus-sao-luis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para Professor Substituto de Física Geral em Araraquara', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-professor-substituto-de-fisica-geral-em-araraquara')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP prorroga inscrições de concurso para professor substituto de Zoologia em Jaboticabal - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-prorroga-inscricoes-de-concurso-para-professor-substituto-de-zoologia-em-jaboticabal-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISAB Zona da Mata - MG abre processo seletivo para Auxiliar de Laboratório', 'CISAB Zona da Mata - Consórcio Intermunicipal de Saneamento Básico da Zona da Mata de Minas Gerais', 'MG', 'Médio', 1, 2770.3, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cisab-zona-da-mata-mg-abre-processo-seletivo-para-auxiliar-de-laboratorio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cajuri - MG abre concurso público com vagas de nível fundamental e médio', 'Câmara de Cajuri', 'MG', 'Fundamental', 4, 2667.19, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-cajuri-mg-abre-concurso-publico-com-vagas-de-nivel-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUMEP de Sete Lagoas - MG retifica concurso público para diversos níveis de escolaridade', 'FUMEP - Fundação Municipal de Ensino Profissionalizante de Sete Lagoas', 'MG', 'Fundamental', 39, 2530.56, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fumep-de-sete-lagoas-mg-retifica-concurso-publico-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio CEMMIL abre processo seletivo para o cargo de Serviços Gerais em Amparo - SP', 'CEMMIL - Consórcio Intermunicipal CEMMIL para o Desenvolvimento Sustentável', 'SP', 'Fundamental', 0, 1880.28, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-cemmil-abre-processo-seletivo-para-o-cargo-de-servicos-gerais-em-amparo-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ibiapina - CE abre concurso público para cargos de nível médio', 'Câmara de Ibiapina', 'CE', 'Médio', 6, 1788.77, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ibiapina-ce-abre-concurso-publico-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre vaga para Auxiliar Administrativo no AME de Santa Bárbara d''Oeste', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Médio', 1, 1713.1, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-vaga-para-auxiliar-administrativo-no-ame-de-santa-barbara-doeste')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canitar - SP abre processo seletivo para a área da educação', 'Prefeitura de Canitar', 'SP', 'Médio', 0, 1621.0, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canitar-sp-abre-processo-seletivo-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ijuí - RS abre concurso público com salários de até R$ 21.312,22', 'Prefeitura de Ijuí', 'RS', 'Fundamental', 157, 21312.22, true, '2026-11-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ijui-rs-abre-concurso-publico-com-salarios-de-ate-21312')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professores substitutos em São João Evangelista', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 8, 15964.45, true, '2026-11-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professores-substitutos-em-sao-joao-evangelista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Vicente de Minas - MG retifica edital de concurso público', 'Prefeitura de São Vicente de Minas', 'MG', 'Fundamental', 35, 15142.28, true, '2026-11-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-vicente-de-minas-mg-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Pádua - RS abre concurso para cadastro de reserva em diversas áreas', 'Prefeitura de Nova Pádua', 'RS', 'Fundamental', 0, 10809.66, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-padua-rs-abre-concurso-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Piúma - ES abre concurso público com salários de até R$ 9.018,78', 'Câmara de Piúma', 'ES', 'Médio', 7, 9018.78, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-piuma-es-abre-concurso-publico-com-salarios-de-ate-9018')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PREVIJUÍ - RS anuncia concurso público com salários de até R$ 8.983,80', 'PREVIJUÍ - Instituto de Previdência dos Servidores Públicos do Município de Ijuí', 'RS', 'Médio', 1, 8983.8, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/previjui-rs-anuncia-concurso-publico-com-salarios-de-ate-8983')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cerro Negro - SC abre concurso público com salários de até R$ 7.660,98', 'Prefeitura de Cerro Negro', 'SC', 'Fundamental', 11, 7660.98, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cerro-negro-sc-abre-concurso-publico-com-salarios-de-ate-7660')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cerro Negro - SC abre processo seletivo com salários de até R$ 7.474,01', 'Prefeitura de Cerro Negro', 'SC', 'Fundamental', 20, 7474.01, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cerro-negro-sc-abre-processo-seletivo-com-salarios-de-ate-7474')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo Mundo - MT abre processo seletivo com salários de até R$ 7.342,35', 'Prefeitura de Novo Mundo', 'MT', 'Fundamental', 132, 7342.35, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-mundo-mt-abre-processo-seletivo-com-salarios-de-ate-7342')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto de História', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-de-historia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Passo Fundo - RS abre processo seletivo para Bibliotecário', 'Prefeitura de Passo Fundo', 'RS', 'Superior', 1, 6050.19, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-passo-fundo-rs-abre-processo-seletivo-para-bibliotecario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Iperó - SP abre concursos públicos e processo seletivo', 'Prefeitura de Iperó', 'SP', 'Fundamental', 55, 5350.53, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipero-sp-abre-concursos-publicos-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Xaxim - SC abre processo seletivo para professores', 'Prefeitura de Xaxim', 'SC', 'Médio', 0, 5137.52, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-xaxim-sc-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEL - PR abre processo seletivo para técnicos em higiene dental e em laboratório/planetário', 'UEL - Universidade Estadual de Londrina', 'PR', 'Médio', 2, 4443.18, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uel-pr-abre-processo-seletivo-para-tecnicos-em-higiene-dental-e-em-laboratorio-planetario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ferreiros - PE abre concurso público com vagas para diversas áreas', 'Prefeitura de Ferreiros', 'PE', 'Fundamental', 57, 4179.47, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ferreiros-pe-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FEG - SP retifica edital de concurso público para professores', 'FEG - Fundação Educacional Guaçuana', 'SP', 'Superior', 9, 3799.83, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/feg-sp-retifica-edital-de-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos na Faculdade de Engenharia de Ilha Solteira - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-na-faculdade-de-engenharia-de-ilha-solteira-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaporé - RS abre concurso público para formação de cadastro de reserva', 'Prefeitura de Guaporé', 'RS', 'Fundamental', 0, 3404.76, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guapore-rs-abre-concurso-publico-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Tomás de Aquino - MG abre processo seletivo na área da educação', 'Prefeitura de São Tomás de Aquino', 'MG', 'Superior', 4, 3388.85, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-tomas-de-aquino-mg-abre-processo-seletivo-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ijuí - RS abre concurso público para auxiliar legislativo', 'Câmara de Ijuí', 'RS', 'Médio', 1, 3162.91, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ijui-rs-abre-concurso-publico-para-auxiliar-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Antônio Carlos - MG abre processo seletivo para a Secretaria Municipal de Educação', 'Prefeitura de Antônio Carlos', 'MG', 'Fundamental', 158, 3078.38, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-antonio-carlos-mg-abre-processo-seletivo-para-a-secretaria-municipal-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Educacional Guaçuana - SP abre concurso público para Bibliotecário e Técnico em Informática', 'FEG - Fundação Educacional Guaçuana', 'SP', 'Médio', 2, 2969.41, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-educacional-guacuana-sp-abre-concurso-publico-para-bibliotecario-e-tecnico-em-informatica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEG - GO abre processo seletivo para professores de apoio', 'UEG - Universidade Estadual de Goiás', 'GO', 'Superior', 0, 2498.67, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ueg-go-abre-processo-seletivo-para-professores-de-apoio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mongaguá - SP abre processo seletivo para Profissional de Apoio Escolar e Atendente de Educação I', 'Prefeitura de Mongaguá', 'SP', 'Médio', 90, 1968.83, true, '2026-11-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mongagua-sp-abre-processo-seletivo-para-profissional-de-apoio-escolar-e-atendente-de-educacao-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso público para professor assistente na Faculdade de Letras', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13753.96, true, '2026-11-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-publico-para-professor-assistente-na-faculdade-de-letras')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapororoca - PB abre concurso com salários de até R$ 10.000,00', 'Prefeitura de Itapororoca', 'PB', 'Fundamental', 175, 10000.0, true, '2026-11-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapororoca-pb-abre-concurso-com-salarios-de-ate-10000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Erval Velho - SC abre concurso público com salários de até R$ 6.497,10', 'Câmara de Vereadores de Erval Velho', 'SC', 'Fundamental', 3, 6497.1, true, '2026-11-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-erval-velho-sc-abre-concurso-publico-com-salarios-de-ate-6497')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leopoldina - MG abre seleção com salários de até R$ 4.462,11', 'Prefeitura de Leopoldina', 'MG', 'Fundamental', 9, 4462.11, true, '2026-11-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leopoldina-mg-abre-selecao-com-salarios-de-ate-4462')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor substituto de Psicologia no campus de Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-substituto-de-psicologia-no-campus-de-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cunha - SP abre concurso público com salários de até R$ 9.147,62', 'Prefeitura de Cunha', 'SP', 'Fundamental', 0, 9147.62, true, '2026-11-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cunha-sp-abre-concurso-publico-com-salarios-de-ate-9147')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor titular na Faculdade de Filosofia e Ciências de Marília - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-11-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-titular-na-faculdade-de-filosofia-e-ciencias-de-marilia-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Rita do Trivelato - MT abre seleção com salários de até R$ 21.825,31', 'Prefeitura de Santa Rita do Trivelato', 'MT', 'Fundamental', 0, 21825.31, true, '2026-11-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-rita-do-trivelato-mt-abre-selecao-com-salarios-de-ate-21825')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pontes e Lacerda - MT abre processo seletivo com salários de até R$ 11.308,36', 'Prefeitura de Pontes e Lacerda', 'MT', 'Médio', 47, 11308.36, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pontes-e-lacerda-mt-abre-processo-seletivo-com-salarios-de-ate-11308')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFEI - MG abre processo seletivo para professores substitutos', 'UNIFEI - Universidade Federal de Itajubá', 'MG', 'Superior', 5, 8340.33, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifei-mg-abre-processo-seletivo-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR - PR abre processo seletivo para professores substitutos no campus Pato Branco', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 3, 8340.33, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-pr-abre-processo-seletivo-para-professores-substitutos-no-campus-pato-branco')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMA abre processo seletivo para professores substitutos no campus Coelho Neto', 'IFMA - Instituto Federal de Educação, Ciência e Tecnologia do Maranhão', 'MA', 'Superior', 3, 8058.29, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifma-abre-processo-seletivo-para-professores-substitutos-no-campus-coelho-neto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Praia Grande - SC abre seleções com salários de até R$ 7.921,65', 'Prefeitura de Praia Grande e Fundo Municipal de Saúde', 'SC', 'Fundamental', 79, 7921.65, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-praia-grande-sc-abre-selecoes-com-salarios-de-ate-7921')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mariluz - PR abre concurso público com salários de até R$ 5.358,58', 'Prefeitura de Mariluz', 'PR', 'Fundamental', 13, 5358.58, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mariluz-pr-abre-concurso-publico-com-salarios-de-ate-5358')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guamiranga - PR abre dois novos concursos públicos para diversas áreas', 'Prefeitura de Guamiranga', 'PR', 'Fundamental', 18, 5130.63, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guamiranga-pr-abre-dois-novos-concursos-publicos-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itiúba - BA abre processo seletivo para profissionais de saúde', 'Prefeitura de Itiúba', 'BA', 'Médio', 65, 4318.18, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itiuba-ba-abre-processo-seletivo-para-profissionais-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Orós - CE abre concurso público com vagas para diversas áreas', 'Prefeitura de Orós', 'CE', 'Fundamental', 95, 3606.93, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-oros-ce-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Guarabira - PB abre concurso público com salários de até R$ 3.354,70', 'Câmara de Guarabira', 'PB', 'Fundamental', 5, 3354.7, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-guarabira-pb-abre-concurso-publico-com-salarios-de-ate-3354')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mercedes - PR abre processo seletivo para Vigilante Sanitário', 'Prefeitura de Mercedes', 'PR', 'Médio', 0, 2555.58, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mercedes-pr-abre-processo-seletivo-para-vigilante-sanitario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itápolis - SP abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Itápolis', 'SP', 'Médio', 0, 1908.44, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapolis-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ipê - RS abre concurso público com salários de até R$ 20.745,08', 'Prefeitura de Ipê', 'RS', 'Fundamental', 28, 20745.08, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipe-rs-abre-concurso-publico-com-salarios-de-ate-20745')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bom Retiro - SC abre concurso público com salários de até R$ 20.138,46', 'Prefeitura de Bom Retiro', 'SC', 'Fundamental', 66, 20138.46, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bom-retiro-sc-abre-concurso-publico-com-salarios-de-ate-20138')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TRF3 - SP/MS retifica concurso público para analistas e técnicos judiciários', 'TRF3 - Tribunal Regional Federal da 3ª Região', 'Nacional', 'Médio', 11, 20013.11, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/trf3-sp-ms-retifica-concurso-publico-para-analistas-e-tecnicos-judiciarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo Cabrais - RS abre concurso público com salários de até R$ 19.089,94', 'Prefeitura de Novo Cabrais', 'RS', 'Fundamental', 9, 19089.94, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-cabrais-rs-abre-concurso-publico-com-salarios-de-ate-19089')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso para Professor de Magistério Superior na área de Medicina', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 2, 13753.96, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-para-professor-de-magisterio-superior-na-area-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Defesa Social - PE retifica concurso com 570 vagas para Bombeiros', 'CBM - Corpo de Bombeiros Militar', 'PE', 'Médio', 570, 12937.33, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/secretaria-de-defesa-social-pe-retifica-concurso-com-570-vagas-para-bombeiros')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMPE altera período de inscrição para concurso público de soldados e oficiais', 'PMPE - Polícia Militar de Pernambuco', 'PE', 'Médio', 1320, 12937.33, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/pmpe-altera-periodo-de-inscricao-para-concurso-publico-de-soldados-e-oficiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Inhacorá - RS abre concurso público com salários de até R$ 9.885,71', 'Prefeitura de São José do Inhacorá', 'RS', 'Fundamental', 22, 9885.71, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-inhacora-rs-abre-concurso-publico-com-salarios-de-ate-9885')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Luiz Alves - SC abre concurso público com salários de até R$ 8.889,30', 'Prefeitura de Luiz Alves', 'SC', 'Fundamental', 63, 8889.3, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-luiz-alves-sc-abre-concurso-publico-com-salarios-de-ate-8889')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFAL - MG abre vaga para professor substituto de Ciências Atuariais em Varginha', 'UNIFAL - Universidade Federal de Alfenas', 'MG', 'Superior', 1, 8340.33, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifal-mg-abre-vaga-para-professor-substituto-de-ciencias-atuariais-em-varginha')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIMAG abre concurso público para médicos veterinários com salários de até R$ 8.300,00', 'CIMAG - Consórcio Público Intermunicipal Multifinalitário da Microrregião do Circuito das Águas', 'MG', 'Superior', 2, 8300.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cimag-abre-concurso-publico-para-medicos-veterinarios-com-salarios-de-ate-8300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Monsenhor Gil - PI abre concurso público com salários de até R$ 8.000,00', 'Prefeitura de Monsenhor Gil', 'PI', 'Fundamental', 101, 8000.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-monsenhor-gil-pi-abre-concurso-publico-com-salarios-de-ate-8000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Monteiro Lobato - SP abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Monteiro Lobato', 'SP', 'Fundamental', 64, 7408.75, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-monteiro-lobato-sp-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alumínio - SP abre processo seletivo na área da educação', 'Prefeitura de Alumínio', 'SP', 'Fundamental', 0, 7285.25, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aluminio-sp-abre-processo-seletivo-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pirapozinho - SP abre concurso público para formação de cadastro de reserva', 'Prefeitura de Pirapozinho', 'SP', 'Fundamental', 0, 6464.59, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pirapozinho-sp-abre-concurso-publico-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Funcamp - SP abre processo seletivo para Enfermeiro C.C.I.H. no Hospital Estadual Sumaré', 'HES - Hospital Estadual Sumaré', 'SP', 'Superior', 1, 5973.89, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-enfermeiro-ccih-no-hospital-estadual-sumare')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sarapuí - SP abre concurso público e processo seletivo com salários de até R$ 5.906,38', 'Prefeitura de Sarapuí', 'SP', 'Fundamental', 1, 5906.38, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sarapui-sp-abre-concurso-publico-e-processo-seletivo-com-salarios-de-ate-5906')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Banestes e Banestes Seguros - ES retificam concursos para cadastro de reserva', 'Banestes - Banco do Estado do Espírito Santo e Banestes Seguros', 'ES', 'Médio', 0, 5618.71, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/banestes-e-banestes-seguros-es-retificam-concursos-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tuiuti - SP retifica edital de concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Tuiuti', 'SP', 'Fundamental', 11, 5209.01, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tuiuti-sp-retifica-edital-de-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Torre de Pedra - SP abre concurso público para Procurador Legislativo', 'Câmara de Torre de Pedra', 'SP', 'Superior', 1, 5015.07, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-torre-de-pedra-sp-abre-concurso-publico-para-procurador-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapiranga - SC divulga editais de concursos públicos e processo seletivo', 'Prefeitura de Itapiranga', 'SC', 'Fundamental', 4, 4992.82, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapiranga-sc-divulga-editais-de-concursos-publicos-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cristalândia do Piauí - PI abre concurso público para diversos cargos', 'Prefeitura de Cristalândia do Piauí', 'PI', 'Médio', 50, 4750.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cristalandia-do-piaui-pi-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaí - PR abre processo seletivo com salários de até R$ 4.464,64', 'Prefeitura de Ivaí', 'PR', 'Fundamental', 8, 4464.64, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivai-pr-abre-processo-seletivo-com-salarios-de-ate-4464')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alambari - SP abre processo seletivo para Monitor de Transporte Escolar e Professor I', 'Prefeitura de Alambari', 'SP', 'Fundamental', 0, 4306.4, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alambari-sp-abre-processo-seletivo-para-monitor-de-transporte-escolar-e-professor-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapoá - SC abre seleção para instrutores escolares', 'Prefeitura de Itapoá', 'SC', 'Não informado', 0, 3841.41, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapoa-sc-abre-selecao-para-instrutores-escolares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre novos concursos para professores substitutos no campus de Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 2, 3511.9, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-novos-concursos-para-professores-substitutos-no-campus-de-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto na Faculdade de Odontologia de Araçatuba - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 3511.9, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-na-faculdade-de-odontologia-de-aracatuba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Inhacorá - RS abre seleção para Agentes de Saúde e de Endemias', 'Prefeitura de São José do Inhacorá', 'RS', 'Médio', 0, 3265.28, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-inhacora-rs-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mairi - BA abre concurso público com vagas na saúde e educação', 'Prefeitura de Mairi', 'BA', 'Médio', 20, 3242.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mairi-ba-abre-concurso-publico-com-vagas-na-saude-e-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Bananal - ES abre concurso público para professores e pedagogos', 'Prefeitura de Rio Bananal', 'ES', 'Superior', 120, 3208.18, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-bananal-es-abre-concurso-publico-para-professores-e-pedagogos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São Geraldo do Araguaia - PA abre concurso público com salários de até R$ 3.000,00', 'Câmara de São Geraldo do Araguaia', 'PA', 'Fundamental', 5, 3000.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-geraldo-do-araguaia-pa-abre-concurso-publico-com-salarios-de-ate-3000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque - SP prorroga inscrições de concurso público para Guarda Civil Municipal', 'Prefeitura da Estância Turística de São Roque', 'SP', 'Médio', 30, 2220.94, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-sp-prorroga-inscricoes-de-concurso-publico-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pirapora do Bom Jesus - SP abre processo seletivo para cadastro de reserva', 'Prefeitura de Pirapora do Bom Jesus', 'SP', 'Fundamental', 0, 1621.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pirapora-do-bom-jesus-sp-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paranapanema - SP abre processo seletivo para professores de diversas áreas', 'Prefeitura da Estância Turística de Paranapanema', 'SP', 'Superior', 0, 23.47, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paranapanema-sp-abre-processo-seletivo-para-professores-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRRJ abre concurso público para professores do Magistério Superior', 'UFRRJ - Universidade Federal Rural do Rio de Janeiro', 'RJ', 'Superior', 23, 13298.85, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrrj-abre-concurso-publico-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pomerode - SC abre concurso público para Assistente Legislativo e Analista Administrativo', 'Câmara de Pomerode', 'SC', 'Médio', 2, 7491.77, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-pomerode-sc-abre-concurso-publico-para-assistente-legislativo-e-analista-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Quatro Barras - PR reabre inscrições para concurso público', 'Câmara de Quatro Barras', 'PR', 'Médio', 17, 5403.69, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-quatro-barras-pr-reabre-inscricoes-para-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP divulga concursos públicos para professores substitutos em Jaboticabal - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-divulga-concursos-publicos-para-professores-substitutos-em-jaboticabal-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto na Faculdade de Ciências e Letras de Assis - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-na-faculdade-de-ciencias-e-letras-de-assis-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto na área de Ciências Agrárias em Dracena - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-na-area-de-ciencias-agrarias-em-dracena-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Acima - MG abre seleção para Agentes de Saúde e de Endemias', 'Prefeitura de Rio Acima', 'MG', 'Médio', 10, 3242.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-acima-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Tiradentes - MG abre concurso público para Controlador Interno e Tesoureiro', 'Câmara de Tiradentes', 'MG', 'Superior', 2, 2952.86, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-tiradentes-mg-abre-concurso-publico-para-controlador-interno-e-tesoureiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre processo seletivo para professor na área de Filosofia e Sociologia do Direito em Ribeirão Preto', 'USP - Faculdade de Direito de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Superior', 1, 2945.73, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/usp-abre-processo-seletivo-para-professor-na-area-de-filosofia-e-sociologia-do-direito-em-ribeirao-preto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João da Boa Vista - SP abre seleção para cadastro de reserva', 'Prefeitura de São João da Boa Vista', 'SP', 'Fundamental', 0, 2866.86, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-da-boa-vista-sp-abre-selecao-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SANEAGO - GO abre processo seletivo para o Programa Jovem Aprendiz', 'SANEAGO - Saneamento de Goiás S.A.', 'GO', 'Fundamental', 0, NULL, false, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saneago-go-abre-processo-seletivo-para-o-programa-jovem-aprendiz')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Fundação Cultural de Navegantes - SC abrem seleções com salários de até R$ 19.199,16', 'Prefeitura e Fundação Cultural de Navegantes', 'SC', 'Fundamental', 0, 19199.16, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-fundacao-cultural-de-navegantes-sc-abrem-selecoes-com-salarios-de-ate-19199')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TRT4 - RS abre concurso público para analistas e técnicos judiciários', 'TRT 4 - Tribunal Regional do Trabalho da 4ª Região', 'RS', 'Superior', 0, 16040.88, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/trt4-rs-abre-concurso-publico-para-analistas-e-tecnicos-judiciarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Suzano - SP abre concurso público com salários de até R$ 12.062,91', 'Prefeitura de Suzano', 'SP', 'Fundamental', 73, 12062.91, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-suzano-sp-abre-concurso-publico-com-salarios-de-ate-12062')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belém do Piauí - PI abre concurso com remunerações de até R$ 12.000,00', 'Prefeitura de Belém do Piauí', 'PI', 'Fundamental', 49, 12000.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belem-do-piaui-pi-abre-concurso-com-remuneracoes-de-ate-12000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Quedas do Iguaçu - PR abre concurso público com salários de até R$ 11.998,88', 'Prefeitura de Quedas do Iguaçu', 'PR', 'Médio', 140, 11998.88, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-quedas-do-iguacu-pr-abre-concurso-publico-com-salarios-de-ate-11998')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Terezinha do Progresso - SC abre concurso com salários de até R$ 10.000,00', 'Prefeitura de Santa Terezinha do Progresso', 'SC', 'Fundamental', 8, 10000.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-terezinha-do-progresso-sc-abre-concurso-com-salarios-de-ate-10000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campo Grande do Piauí - PI abre concurso público para diversos cargos e cadastro de reserva', 'Prefeitura de Campo Grande do Piauí', 'PI', 'Fundamental', 90, 8257.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campo-grande-do-piaui-pi-abre-concurso-publico-para-diversos-cargos-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piratini - RS abre concurso público com salários de até R$ 7.462,95', 'Prefeitura de Piratini', 'RS', 'Fundamental', 115, 7462.95, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piratini-rs-abre-concurso-publico-com-salarios-de-ate-7462')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Luís de Montes Belos - GO abre concurso público com salários de até R$ 5.559,33', 'Prefeitura de São Luís de Montes Belos', 'GO', 'Fundamental', 138, 5559.33, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-luis-de-montes-belos-go-abre-concurso-publico-com-salarios-de-ate-5559')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mairiporã - SP abre concurso público para professores', 'Prefeitura de Mairiporã', 'SP', 'Superior', 2, 4641.47, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mairipora-sp-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IBGE: Processo Seletivo oferece 27.279 vagas para Recenseador', 'IBGE - Fundação Instituto Brasileiro de Geografia e Estatística', 'Nacional', 'Fundamental', 27279, 4370.0, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ibge-processo-seletivo-oferece-27279-vagas-para-recenseador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos na Faculdade de Ciências Agronômicas de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-na-faculdade-de-ciencias-agronomicas-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Leopoldina - MG abre seleção para agentes de saúde e de endemias', 'Prefeitura de Leopoldina', 'MG', 'Médio', 20, 3242.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-leopoldina-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFPR abre concurso público para Professor de Ciência da Computação', 'UFPR - Universidade Federal do Paraná', 'PR', 'Superior', 1, 3198.59, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufpr-abre-concurso-publico-para-professor-de-ciencia-da-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Foz do Jordão - PR abre processo seletivo para professores', 'Prefeitura de Foz do Jordão', 'PR', 'Superior', 13, 2621.55, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-foz-do-jordao-pr-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dobrada - SP abre concurso público para o cargo de servente geral legislativo', 'Câmara de Dobrada', 'SP', 'Fundamental', 1, 2576.74, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dobrada-sp-abre-concurso-publico-para-o-cargo-de-servente-geral-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapipoca - CE abre processo seletivo para a educação', 'Prefeitura de Itapipoca', 'CE', 'Médio', 688, 2565.32, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapipoca-ce-abre-processo-seletivo-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJSC abre concurso público para o cargo de Juiz Substituto', 'TJSC - Tribunal de Justiça do Estado de Santa Catarina', 'SC', 'Superior', 15, 35874.14, true, '2026-11-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tjsc-abre-concurso-publico-para-o-cargo-de-juiz-substituto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente de Ciências Agrárias em Dracena - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-11-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-ciencias-agrarias-em-dracena-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canto do Buriti - PI retifica edital de concurso público', 'Prefeitura de Canto do Buriti', 'PI', 'Fundamental', 257, 16210.0, true, '2026-11-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canto-do-buriti-pi-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFEI - MG abre concurso público para professores do magistério superior', 'UNIFEI - Universidade Federal de Itajubá', 'MG', 'Superior', 27, 13753.96, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifei-mg-abre-concurso-publico-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SECITECI - MT abre seleção para formação de cadastro de reserva', 'SECITECI - Secretaria de Estado de Ciência, Tecnologia e Inovação de Mato Grosso', 'MT', 'Médio', 0, 12937.29, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seciteci-mt-abre-selecao-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAMASA de Três Barras - SC divulga retificações de concurso público', 'SAMASA - Serviço Autônomo Municipal de Água e Saneamento Ambiental', 'SC', 'Médio', 8, 9500.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/samasa-de-tres-barras-sc-divulga-retificacoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brasnorte - MT abre processo seletivo para cadastro de reserva', 'Prefeitura de Brasnorte', 'MT', 'Fundamental', 0, 6697.17, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brasnorte-mt-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brasnorte - MT abre concurso público para profissionais da educação', 'Prefeitura de Brasnorte', 'MT', 'Médio', 28, 5771.72, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brasnorte-mt-abre-concurso-publico-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Nova Ponte - MG reabre concurso público para profissionais de nível médio e superior', 'Câmara de Nova Ponte', 'MG', 'Médio', 5, 5200.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-nova-ponte-mg-reabre-concurso-publico-para-profissionais-de-nivel-medio-e-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Matos Costa - SC abre concurso público com salários de até R$ 4.209,63', 'Câmara de Vereadores de Matos Costa', 'SC', 'Fundamental', 3, 4209.63, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-matos-costa-sc-abre-concurso-publico-com-salarios-de-ate-4209')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre três concursos para professores substitutos no campus de Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-tres-concursos-para-professores-substitutos-no-campus-de-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos públicos para professores substitutos na Faculdade de Ciências Agronômicas de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-publicos-para-professores-substitutos-na-faculdade-de-ciencias-agronomicas-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professores substitutos no campus de São José dos Campos - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 2, 3511.9, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professores-substitutos-no-campus-de-sao-jose-dos-campos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE Itambacuri - MG publica edital de concurso público com seis vagas imediatas', 'SAAE - Serviço Autônomo de Água e Esgoto de Itambacuri', 'MG', 'Fundamental', 6, 1757.28, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saae-itambacuri-mg-publica-edital-de-concurso-publico-com-seis-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Borá - SP abre concurso público para Auxiliar de Transporte Escolar', 'Prefeitura de Borá', 'SP', 'Médio', 4, 1674.95, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bora-sp-abre-concurso-publico-para-auxiliar-de-transporte-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Bocaina de Minas - MG abre concurso público com salários de R$ 1.621,00', 'Câmara de Bocaina de Minas', 'MG', 'Fundamental', 3, 1621.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-bocaina-de-minas-mg-abre-concurso-publico-com-salarios-de-1621')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFJ - GO abre concurso público para Professores do Magistério Superior', 'UFJ - Universidade Federal de Jataí', 'GO', 'Superior', 22, 13854.96, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufj-go-abre-concurso-publico-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HCFMRP - USP abre concurso público para médico na área de alergia e imunologia', 'HCFMRP - Hospital das Clínicas da Faculdade de Medicina de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Superior', 1, 5979.93, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hcfmrp-usp-abre-concurso-publico-para-medico-na-area-de-alergia-e-imunologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HCFMRP-USP abre três concursos públicos para médicos', 'HCFMRP-USP - Hospital das Clínicas da Faculdade de Medicina de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Superior', 3, 5979.93, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hcfmrp-usp-abre-tres-concursos-publicos-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concursos para professores substitutos na Faculdade de Ciências e Letras de Assis', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-para-professores-substitutos-na-faculdade-de-ciencias-e-letras-de-assis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor substituto de Genética em Ilha Solteira - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 3511.9, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-substituto-de-genetica-em-ilha-solteira-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Santo André - SP abre concurso público para o cargo de Secretário Executivo', 'FSA - Fundação Santo André', 'SP', 'Superior', 0, 3399.13, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-santo-andre-sp-abre-concurso-publico-para-o-cargo-de-secretario-executivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Nova Trento - SC abre três novos processos seletivos com salários de até R$ 14.189,97', 'Prefeitura de Nova Trento', 'SC', 'Fundamental', 0, 14189.97, true, '2026-11-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-nova-trento-sc-abre-tres-novos-processos-seletivos-com-salarios-de-ate-14189')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Armazém - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de Armazém', 'SC', 'Fundamental', 0, 4674.45, true, '2026-11-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-armazem-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibirama - SC abre concurso público com salários de até R$ 20.364,15', 'Prefeitura de Ibirama', 'SC', 'Fundamental', 10, 20364.15, true, '2026-11-29'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibirama-sc-abre-concurso-publico-com-salarios-de-ate-20364')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caxias do Sul - RS divulga editais de concurso público', 'Prefeitura de Caxias do Sul', 'RS', 'Médio', 24, 19787.77, true, '2026-11-29'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caxias-do-sul-rs-divulga-editais-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFV - MG abre concurso público para Docente na área de Representação Gráfica', 'UFV - Universidade Federal de Viçosa', 'MG', 'Superior', 1, 13288.85, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufv-mg-abre-concurso-publico-para-docente-na-area-de-representacao-grafica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pinhalzinho - SP abre concurso público com salários de até R$ 7.723,14', 'Prefeitura de Pinhalzinho', 'SP', 'Fundamental', 19, 7723.14, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pinhalzinho-sp-abre-concurso-publico-com-salarios-de-ate-7723')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Tambaú - SP abre concurso público com salários de até R$ 6.423,46', 'Câmara de Tambaú', 'SP', 'Fundamental', 1, 6423.46, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-tambau-sp-abre-concurso-publico-com-salarios-de-ate-6423')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CONSCENSUL - CE abre concurso público com vagas de nível superior em Lavras da Mangabeira', 'CONSCENSUL - Consórcio Público da Região Sertão Centro Sul', 'CE', 'Superior', 9, 5500.0, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/conscensul-ce-abre-concurso-publico-com-vagas-de-nivel-superior-em-lavras-da-mangabeira')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Grande - PB retifica concurso público com vagas para diversos cargos', 'Prefeitura de Serra Grande', 'PB', 'Fundamental', 41, 3651.0, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-grande-pb-retifica-concurso-publico-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cristais Paulista - SP abre concurso público para cadastro de reserva', 'Prefeitura de Cristais Paulista', 'SP', 'Fundamental', 0, 2344.97, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cristais-paulista-sp-abre-concurso-publico-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Areia - PB abre concurso para Auxiliar de Serviços Gerais e Auxiliar Administrativo', 'Câmara de Areia', 'PB', 'Fundamental', 4, 1621.0, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-areia-pb-abre-concurso-para-auxiliar-de-servicos-gerais-e-auxiliar-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular na Faculdade de Ciências e Tecnologia de Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 25261.98, true, '2026-11-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-na-faculdade-de-ciencias-e-tecnologia-de-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araújos - MG abre processos seletivos com salários de até R$ 13.865,67', 'Prefeitura de Araújos', 'MG', 'Fundamental', 0, 13865.67, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-araujos-mg-abre-processos-seletivos-com-salarios-de-ate-13865')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso público para professor na Faculdade de Medicina', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13753.96, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-publico-para-professor-na-faculdade-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leme - SP abre concurso público com salários de até R$ 13.359,44', 'Prefeitura de Leme', 'SP', 'Fundamental', 29, 13359.44, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leme-sp-abre-concurso-publico-com-salarios-de-ate-13359')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cuiabá - MT abre concurso público com salários de até R$ 11.629,67', 'Câmara de Cuiabá', 'MT', 'Médio', 26, 11629.67, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-cuiaba-mt-abre-concurso-publico-com-salarios-de-ate-11629')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo Xingu - RS abre concurso público com salários de até R$ 8.797,52', 'Prefeitura de Novo Xingu', 'RS', 'Fundamental', 12, 8797.52, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-xingu-rs-abre-concurso-publico-com-salarios-de-ate-8797')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professores visitantes em Artes e Enfermagem', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 2, 8340.33, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professores-visitantes-em-artes-e-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIOESTE - PR abre processo seletivo para agentes universitários no HUOP', 'UNIOESTE - Universidade Estadual do Oeste do Paraná', 'PR', 'Médio', 15, 7997.72, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unioeste-pr-abre-processo-seletivo-para-agentes-universitarios-no-huop')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cáceres - MT abre processo seletivo com salários de até R$ 7.226,74', 'Prefeitura de Cáceres', 'MT', 'Fundamental', 30, 7226.74, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caceres-mt-abre-processo-seletivo-com-salarios-de-ate-7226')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Aracruz - ES abre concurso público com salários de até R$ 6.614,93', 'Câmara de Aracruz', 'ES', 'Médio', 9, 6614.93, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-aracruz-es-abre-concurso-publico-com-salarios-de-ate-6614')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campo Novo do Parecis - MT abre processo seletivo para a educação', 'Prefeitura de Campo Novo do Parecis', 'MT', 'Médio', 0, 6464.98, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campo-novo-do-parecis-mt-abre-processo-seletivo-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Francisco do Sul - SC abre seleção para professores e técnicos pedagógicos', 'Prefeitura de São Francisco do Sul', 'SC', 'Médio', 0, 5198.96, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-francisco-do-sul-sc-abre-selecao-para-professores-e-tecnicos-pedagogicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Terezinha do Progresso - SC abre concurso público com salários de até R$ 4.566,00', 'Câmara de Vereadores de Santa Terezinha do Progresso', 'SC', 'Fundamental', 4, 4566.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-terezinha-do-progresso-sc-abre-concurso-publico-com-salarios-de-ate-4566')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uirapuru - GO abre concurso público com salários de até R$ 4.428,13', 'Prefeitura de Uirapuru', 'GO', 'Fundamental', 21, 4428.13, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uirapuru-go-abre-concurso-publico-com-salarios-de-ate-4428')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São João do Piauí - PI abre concurso público para Controlador Interno', 'Câmara de São João do Piauí', 'PI', 'Superior', 1, 4052.5, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-joao-do-piaui-pi-abre-concurso-publico-para-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Schroeder - SC abre processo seletivo para a Secretaria de Saneamento e Gestão Ambiental', 'Prefeitura de Schroeder', 'SC', 'Fundamental', 3, 3955.28, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-schroeder-sc-abre-processo-seletivo-para-a-secretaria-de-saneamento-e-gestao-ambiental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Terezinha do Progresso - SC abre seleção para diversos cargos', 'Prefeitura de Santa Terezinha do Progresso', 'SC', 'Fundamental', 0, 3800.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-terezinha-do-progresso-sc-abre-selecao-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto de Odontologia em Araçatuba - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-de-odontologia-em-aracatuba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre dois concursos públicos para professores na área de odontologia em Araçatuba', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-dois-concursos-publicos-para-professores-na-area-de-odontologia-em-aracatuba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Paraíso de Goiás - GO abre seleção para agentes de saúde e de endemias', 'Prefeitura de Alto Paraíso de Goiás', 'GO', 'Médio', 15, 3242.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-paraiso-de-goias-go-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Professor Jamil - GO abre concurso para Agente de Fiscalização Pública', 'Prefeitura de Professor Jamil', 'GO', 'Médio', 6, 2802.07, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-professor-jamil-go-abre-concurso-para-agente-de-fiscalizacao-publica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Monte Mor - SP abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Monte Mor', 'SP', 'Médio', 0, 1806.4, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-monte-mor-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Oliveira de Fátima - TO abre concurso público com cinco vagas imediatas', 'Câmara de Oliveira de Fátima', 'TO', 'Fundamental', 5, 1800.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-oliveira-de-fatima-to-abre-concurso-publico-com-cinco-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pontal - SP abre processo seletivo para professores e psicopedagogos', 'Prefeitura de Pontal', 'SP', 'Superior', 0, 21.59, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pontal-sp-abre-processo-seletivo-para-professores-e-psicopedagogos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Unaí - MG abre concurso público com remuneração de R$ 9.193,89', 'Câmara de Unaí', 'MG', 'Superior', 2, 9193.89, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-unai-mg-abre-concurso-publico-com-remuneracao-de-9193')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ribeirãozinho do Maranhão - MA publica editais de concurso e processo seletivo', 'Prefeitura de Ribeirãozinho do Maranhão', 'MA', 'Fundamental', 211, 6500.0, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ribeiraozinho-do-maranhao-ma-publica-editais-de-concurso-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carlinda - MT abre processo seletivo para professores', 'Prefeitura de Carlinda', 'MT', 'Superior', 26, 4413.91, true, '2026-12-01'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carlinda-mt-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarujá do Sul - SC abre concurso e seleções com salários de até R$ 30,7 mil', 'Prefeitura de Guarujá do Sul', 'SC', 'Fundamental', 5, 30761.75, true, '2026-12-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaruja-do-sul-sc-abre-concurso-e-selecoes-com-salarios-de-ate-30-7-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fraiburgo - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de Fraiburgo', 'SC', 'Fundamental', 0, 25103.42, true, '2026-12-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fraiburgo-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSM - RS abre concurso para professores do magistério superior', 'UFSM - Universidade Federal de Santa Maria', 'RS', 'Superior', 6, 13753.98, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufsm-rs-abre-concurso-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso com duas vagas para professores de ensino fundamental e médio', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 11778.84, true, '2026-12-02'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-com-duas-vagas-para-professores-de-ensino-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SANEFRAI - SC abre processo seletivo para formação de cadastro de reserva', 'SANEFRAI - Autarquia Municipal de Saneamento de Fraiburgo', 'SC', 'Fundamental', 0, 6747.15, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sanefrai-sc-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FURB - SC abre processo seletivo com salários de até R$ 5.906,88', 'FURB - Fundação Universidade Regional de Blumenau', 'SC', 'Médio', 0, 5906.88, true, '2026-12-02'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/furb-sc-abre-processo-seletivo-com-salarios-de-ate-5906')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Antônio Prado de Minas - MG abre concurso público para diversos cargos', 'Prefeitura de Antônio Prado de Minas', 'MG', 'Fundamental', 33, 3576.46, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-antonio-prado-de-minas-mg-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jumirim - SP abre concurso público para Motorista Plantonista', 'Prefeitura de Jumirim', 'SP', 'Fundamental', 1, 2523.65, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jumirim-sp-abre-concurso-publico-para-motorista-plantonista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor titular em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, NULL, false, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP de Bauru - SP abre concurso público para professor titular na Faculdade de Ciências', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-12-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-de-bauru-sp-abre-concurso-publico-para-professor-titular-na-faculdade-de-ciencias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Luzerna - SC abre concurso público com salários de até R$ 14.004,25', 'Prefeitura de Luzerna', 'SC', 'Fundamental', 4, 14004.25, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-luzerna-sc-abre-concurso-publico-com-salarios-de-ate-14004')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Faina - GO reabrem concurso público com diversas vagas', 'Prefeitura e Câmara de Faina', 'GO', 'Fundamental', 70, 13530.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-faina-go-reabrem-concurso-publico-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Moreilândia - PE retifica dois concursos públicos', 'Prefeitura de Moreilândia', 'PE', 'Médio', 381, 10000.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-moreilandia-pe-retifica-dois-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Realeza - PR abre concurso público para Controlador Interno e Procurador Jurídico', 'Prefeitura de Realeza', 'PR', 'Superior', 2, 8800.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-realeza-pr-abre-concurso-publico-para-controlador-interno-e-procurador-juridico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José da Bela Vista - SP prorroga inscrições de concurso público', 'Prefeitura de São José da Bela Vista', 'SP', 'Médio', 0, 7078.72, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-da-bela-vista-sp-prorroga-inscricoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre vaga para professor adjunto na área de cirurgia ortopédica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-vaga-para-professor-adjunto-na-area-de-cirurgia-ortopedica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Concórdia - SC abre concurso público com salários de até R$ 6.057,51', 'Prefeitura de Concórdia', 'SC', 'Médio', 8, 6057.51, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-concordia-sc-abre-concurso-publico-com-salarios-de-ate-6057')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cubatão - SP abre concurso público com salários de até R$ 5.565,00', 'Prefeitura de Cubatão', 'SP', 'Médio', 19, 5565.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cubatao-sp-abre-concurso-publico-com-salarios-de-ate-5565')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cubatão - SP abre concurso público para Procurador Jurídico Administrativo I', 'Prefeitura de Cubatão', 'SP', 'Superior', 1, 5565.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cubatao-sp-abre-concurso-publico-para-procurador-juridico-administrativo-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Colíder - MT abre concurso público com salários de até R$ 4.778,09', 'Câmara de Colíder', 'MT', 'Fundamental', 1, 4778.09, true, '2026-12-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-colider-mt-abre-concurso-publico-com-salarios-de-ate-4778')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fontoura Xavier - RS anuncia editais de concurso público e processo seletivo', 'Prefeitura de Fontoura Xavier', 'RS', 'Fundamental', 3, 3242.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fontoura-xavier-rs-anuncia-editais-de-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Agronômica - SC abre concurso público com salários de até R$ 19.660,06', 'Prefeitura de Agronômica', 'SC', 'Fundamental', 17, 19660.06, true, '2026-12-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agronomica-sc-abre-concurso-publico-com-salarios-de-ate-19660')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Hospitalar Getúlio Vargas - RS abre processo seletivo para médicos', 'FHGV - Fundação Hospitalar Getúlio Vargas', 'RS', 'Superior', 0, 16937.78, true, '2026-12-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/fundacao-hospitalar-getulio-vargas-rs-abre-processo-seletivo-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFV - MG abre concurso para docente na área de Língua Brasileira de Sinais', 'UFV - Universidade Federal de Viçosa', 'MG', 'Superior', 1, 13753.96, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufv-mg-abre-concurso-para-docente-na-area-de-lingua-brasileira-de-sinais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Grupo Hospitalar Conceição - RS abre concurso para cadastro de reserva em diversas áreas', 'GHC - Grupo Hospitalar Conceição', 'RS', 'Fundamental', 0, 12974.4, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/grupo-hospitalar-conceicao-rs-abre-concurso-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SETEC Campinas - SP abre concurso público para o cargo de Procurador', 'SETEC - Serviços Técnicos Gerais', 'SP', 'Superior', 1, 11427.98, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/setec-campinas-sp-abre-concurso-publico-para-o-cargo-de-procurador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SETEC Campinas - SP abre concurso público com salários de até R$ 10.428,05', 'SETEC - Serviços Técnicos Gerais de Campinas', 'SP', 'Fundamental', 39, 10428.05, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/setec-campinas-sp-abre-concurso-publico-com-salarios-de-ate-10428')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Braço do Trombudo - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de Braço do Trombudo', 'SC', 'Fundamental', 0, 5615.5, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-braco-do-trombudo-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor assistente na área de ginecologia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 5236.22, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-assistente-na-area-de-ginecologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMS abre concurso público para cargos técnico-administrativos em educação', 'UFMS - Fundação Universidade Federal de Mato Grosso do Sul', 'MS', 'Médio', 154, 5215.39, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufms-abre-concurso-publico-para-cargos-tecnico-administrativos-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canitar - SP abre concurso público para diversos cargos', 'Prefeitura de Canitar', 'SP', 'Fundamental', 12, 3077.29, true, '2026-12-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canitar-sp-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Iraceminha - SC abre processo seletivo para cadastro de reserva em diversas áreas', 'Prefeitura de Iraceminha', 'SC', 'Fundamental', 0, 2923.12, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-iraceminha-sc-abre-processo-seletivo-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Petrolina - PE abre concurso público com salários de até R$ 8.561,42', 'Câmara de Petrolina', 'PE', 'Médio', 17, 8561.42, true, '2026-12-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-petrolina-pe-abre-concurso-publico-com-salarios-de-ate-8561')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Urussanga - SC abre seleção para cadastro de reserva na educação', 'Prefeitura de Urussanga', 'SC', 'Médio', 0, 5685.6, true, '2026-12-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-urussanga-sc-abre-selecao-para-cadastro-de-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Rufino - SC abre seleções para cadastro de reserva em diversas áreas', 'Prefeitura do Município de Rio Rufino', 'SC', 'Fundamental', 0, 5339.5, true, '2026-12-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-rufino-sc-abre-selecoes-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Inhapim - MG abre concurso público com salários de até R$ 11.232,59', 'Prefeitura de Inhapim', 'MG', 'Fundamental', 301, 11232.59, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-inhapim-mg-abre-concurso-publico-com-salarios-de-ate-11232')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IDAF - ES abre concurso público com salários de até R$ 8.477,66', 'IDAF - Instituto de Defesa Agropecuária e Florestal do Espírito Santo', 'ES', 'Médio', 14, 8477.66, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/idaf-es-abre-concurso-publico-com-salarios-de-ate-8477')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sandovalina - SP abre concurso público para técnicos de enfermagem', 'Prefeitura de Sandovalina', 'SP', 'Médio', 4, 1365.13, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sandovalina-sp-abre-concurso-publico-para-tecnicos-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAUSCS - SP abre seleção para residência médica em diversas áreas', 'USCS - Universidade Municipal de São Caetano do Sul, HFASP e Barueri', 'SP', 'Superior', 58, NULL, false, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fauscs-sp-abre-selecao-para-residencia-medica-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Boa Viagem - CE abre concurso público com vagas para diversas áreas de atuação', 'Prefeitura de Boa Viagem', 'CE', 'Fundamental', 1001, 14718.92, true, '2026-12-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-boa-viagem-ce-abre-concurso-publico-com-vagas-para-diversas-areas-de-atuacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São Francisco do Sul - SC retifica edital de concurso público', 'Câmara de São Francisco do Sul', 'SC', 'Fundamental', 17, 10924.72, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-francisco-do-sul-sc-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIS Itu - SP abre concurso público com salários de até R$ 7.553,69', 'CIS - Companhia Ituana de Saneamento', 'SP', 'Fundamental', 28, 7553.69, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cis-itu-sp-abre-concurso-publico-com-salarios-de-ate-7553')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Faxinal dos Guedes - SC abre concurso público e processo seletivo com salários de até R$ 7.454,79', 'Prefeitura de Faxinal dos Guedes', 'SC', 'Fundamental', 12, 7454.79, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-faxinal-dos-guedes-sc-abre-concurso-publico-e-processo-seletivo-com-salarios-de-ate-7454')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Sete Barras - SP abre concurso público com salários de até R$ 7.434,85', 'Câmara de Sete Barras', 'SP', 'Médio', 3, 7434.85, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sete-barras-sp-abre-concurso-publico-com-salarios-de-ate-7434')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Tupaciguara - MG abre concurso público com 10 vagas', 'Câmara de Tupaciguara', 'MG', 'Fundamental', 10, 5627.27, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-tupaciguara-mg-abre-concurso-publico-com-10-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cerquilho - SP abre concurso público com salários de até R$ 5.078,62', 'Prefeitura de Cerquilho', 'SP', 'Fundamental', 35, 5078.62, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cerquilho-sp-abre-concurso-publico-com-salarios-de-ate-5078')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPAM de Porto Velho - RO abre concurso público com salários de até R$ 5.000,00', 'IPAM - Instituto de Previdência e Assistência dos Servidores do Município de Porto Velho', 'RO', 'Médio', 71, 5000.0, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipam-de-porto-velho-ro-abre-concurso-publico-com-salarios-de-ate-5000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Odessa - SP abre concurso público para o cargo de guarda municipal', 'Prefeitura de Nova Odessa', 'SP', 'Médio', 6, 3336.58, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-odessa-sp-abre-concurso-publico-para-o-cargo-de-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Escola Técnica Liberato Salzano Vieira da Cunha - RS abre concurso público para diversos cargos', 'Fundação Escola Técnica Liberato Salzano Vieira da Cunha', 'RS', 'Médio', 34, 10370.94, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-escola-tecnica-liberato-salzano-vieira-da-cunha-rs-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Criciúma - SC abre processo seletivo para professores', 'Prefeitura de Criciúma', 'SC', 'Superior', 11, 5765.6, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-criciuma-sc-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Marituba - PA reabre inscrições de concurso público para Guarda Civil', 'Prefeitura de Marituba', 'PA', 'Médio', 60, 1800.0, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-marituba-pa-reabre-inscricoes-de-concurso-publico-para-guarda-civil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-12-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Patrocínio Paulista - SP divulga editais de concurso público e processo seletivo', 'Prefeitura de Patrocínio Paulista', 'SP', 'Fundamental', 2, 21296.07, true, '2026-12-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-patrocinio-paulista-sp-divulga-editais-de-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unilab - CE abre concurso público com vagas para professores do magistério superior', 'Unilab - Universidade da Integração Internacional da Lusofonia Afro-Brasileira', 'CE', 'Superior', 16, 13753.96, true, '2026-12-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unilab-ce-abre-concurso-publico-com-vagas-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CAU - SC abre concurso público para cadastro de reserva em Florianópolis', 'CAU - Conselho de Arquitetura e Urbanismo de Santa Catarina', 'SC', 'Médio', 0, 12383.88, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cau-sc-abre-concurso-publico-para-cadastro-de-reserva-em-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Parari - PB abre concurso público com salários de até R$ 10.000,00', 'Prefeitura de Parari', 'PB', 'Fundamental', 29, 10000.0, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-parari-pb-abre-concurso-publico-com-salarios-de-ate-10000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto na Faculdade de Educação', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-na-faculdade-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Blumenau - SC abre concurso público para a área da educação', 'Prefeitura de Blumenau', 'SC', 'Superior', 18, 5130.63, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-blumenau-sc-abre-concurso-publico-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aparecida de Goiânia - GO abre concurso público com vagas na área da educação', 'Prefeitura de Aparecida de Goiânia', 'GO', 'Médio', 2956, 4508.28, true, '2026-12-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aparecida-de-goiania-go-abre-concurso-publico-com-vagas-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Soledade - RS abre concurso público com salários de até R$ 4.381,00', 'Câmara de Soledade', 'RS', 'Médio', 5, 4381.0, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-soledade-rs-abre-concurso-publico-com-salarios-de-ate-4381')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Santo André - SP abre concurso para Analista Administrativo Acadêmico', 'FSA - Fundação Santo André', 'SP', 'Superior', 1, 2215.41, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-santo-andre-sp-abre-concurso-para-analista-administrativo-academico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor assistente em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-12-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Birigui - SP abre concurso público com salários de até R$ 13.881,85', 'Prefeitura de Birigui', 'SP', 'Fundamental', 171, 13881.85, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-birigui-sp-abre-concurso-publico-com-salarios-de-ate-13881')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMMG abre concurso com 90 vagas para o Curso de Formação de Oficiais', 'PMMG - Polícia Militar de Minas Gerais', 'MG', 'Superior', 90, 12170.61, true, '2026-12-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/pmmg-abre-concurso-com-90-vagas-para-o-curso-de-formacao-de-oficiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJSP abre concursos para Oficial de Justiça e Escrevente Técnico Judiciário', 'TJSP - Tribunal de Justiça do Estado de São Paulo', 'SP', 'Médio', 132, 9856.95, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/tjsp-abre-concursos-para-oficial-de-justica-e-escrevente-tecnico-judiciario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Branca - SP abre concurso público com salários de até R$ 6.892,33', 'Prefeitura de Santa Branca', 'SP', 'Fundamental', 6, 6892.33, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-branca-sp-abre-concurso-publico-com-salarios-de-ate-6892')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Osasco - SP abre seleção com salários de até R$ 6.781,42', 'Prefeitura do Município de Osasco', 'SP', 'Médio', 23, 6781.42, true, '2026-12-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-osasco-sp-abre-selecao-com-salarios-de-ate-6781')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Caetano - PE abre concurso público com salários de até R$ 3.242,00', 'Prefeitura de São Caetano', 'PE', 'Médio', 46, 3242.0, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-caetano-pe-abre-concurso-publico-com-salarios-de-ate-3242')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cosmópolis - SP abre concurso público para profissionais da educação', 'Prefeitura de Cosmópolis', 'SP', 'Superior', 1, 37.05, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cosmopolis-sp-abre-concurso-publico-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Tomás de Aquino - MG abre processo seletivo com salários de até R$ 4.978,60', 'Prefeitura de São Tomás de Aquino', 'MG', 'Médio', 19, 4978.6, true, '2026-12-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-tomas-de-aquino-mg-abre-processo-seletivo-com-salarios-de-ate-4978')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Natércia - MG abre concurso público para Auxiliar de Serviços Gerais e Oficial Legislativo', 'Câmara de Natércia', 'MG', 'Fundamental', 1, 1668.22, true, '2026-12-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-natercia-mg-abre-concurso-publico-para-auxiliar-de-servicos-gerais-e-oficial-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor titular em Jaboticabal - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-12-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-em-jaboticabal-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concursos públicos para professores titulares em diversas áreas de atuação', 'USP - Universidade de São Paulo', 'SP', 'Superior', 3, 24309.11, true, '2026-12-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concursos-publicos-para-professores-titulares-em-diversas-areas-de-atuacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Polícia Civil do Estado do Acre (PCAC) e SEAD - AC abrem concurso público com salários de até R$ 19.505,66', 'PCAC - Polícia Civil do Estado do Acre', 'AC', 'Superior', 139, 19505.66, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/policia-civil-do-estado-do-acre-pcac-e-sead-ac-abrem-concurso-publico-com-salarios-de-ate-19505')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente de Arquitetura e Urbanismo em Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-arquitetura-e-urbanismo-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público com salários de até R$ 14.000,00', 'Prefeitura de Anchieta', 'ES', 'Médio', 25, 14000.0, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-com-salarios-de-ate-14000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IMA - SC abre concurso público com salários de até R$ 12.300,00', 'IMA - Instituto do Meio Ambiente do Estado de Santa Catarina', 'SC', 'Médio', 18, 12300.0, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ima-sc-abre-concurso-publico-com-salarios-de-ate-12300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público com salários de até R$ 7.362,50', 'Prefeitura de Anchieta', 'ES', 'Médio', 33, 7362.5, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-com-salarios-de-ate-7362')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Prata - MG abre seleção para cadastro de reserva de professores', 'Prefeitura de Prata', 'MG', 'Superior', 0, NULL, false, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-prata-mg-abre-selecao-para-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaratinguetá - SP abre concurso público com salários de até R$ 18.540,71', 'Prefeitura da Estância Turística de Guaratinguetá', 'SP', 'Fundamental', 107, 18540.71, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaratingueta-sp-abre-concurso-publico-com-salarios-de-ate-18540')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvinópolis - MG publica retificações de concurso público com salários de até R$ 17.954,23', 'Prefeitura de Alvinópolis', 'MG', 'Fundamental', 172, 17954.23, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvinopolis-mg-publica-retificacoes-de-concurso-publico-com-salarios-de-ate-17954')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPREJUN de Jundiaí - SP abre concurso público com salários de até R$ 15.123,99', 'IPREJUN - Instituto de Previdência do Município de Jundiaí', 'SP', 'Médio', 4, 15123.99, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/iprejun-de-jundiai-sp-abre-concurso-publico-com-salarios-de-ate-15123')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Defesa Social e de Administração - PE abrem concurso com 1.315 vagas para a Polícia Civil', 'PC - Polícia Civil', 'PE', 'Superior', 1315, 13560.0, true, '2026-12-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/secretaria-de-defesa-social-e-de-administracao-pe-abrem-concurso-com-1315-vagas-para-a-policia-civil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para Professor Titular na Faculdade de Ciências Humanas e Sociais de Franca - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-12-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-na-faculdade-de-ciencias-humanas-e-sociais-de-franca-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cachoeiro de Itapemirim - ES abre concurso público com salários de até R$ 7.046,62', 'Câmara de Cachoeiro de Itapemirim', 'ES', 'Superior', 15, 7046.62, true, '2026-12-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-cachoeiro-de-itapemirim-es-abre-concurso-publico-com-salarios-de-ate-7046')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Firme - MG abre novo concurso público com salários de até R$ 3.873,30', 'Prefeitura de Porto Firme', 'MG', 'Fundamental', 19, 3873.3, true, '2026-12-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-firme-mg-abre-novo-concurso-publico-com-salarios-de-ate-3873')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carmo da Cachoeira - MG abre seleção para agentes de saúde e de endemias', 'Prefeitura de Carmo da Cachoeira', 'MG', 'Médio', 2, 3242.0, true, '2026-12-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carmo-da-cachoeira-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular na Faculdade de Medicina de Botucatu - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, NULL, false, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-na-faculdade-de-medicina-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular na Faculdade de Filosofia e Ciências de Marília - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-12-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-na-faculdade-de-filosofia-e-ciencias-de-marilia-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPA - SP abre concurso público para pesquisadores científicos', 'IPA - Instituto de Pesquisas Ambientais', 'SP', 'Superior', 98, 9052.47, true, '2026-12-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ipa-sp-abre-concurso-publico-para-pesquisadores-cientificos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Polícia Militar - SP abre 2.000 vagas para Aluno-Soldado', 'PM - Polícia Militar do Estado de São Paulo', 'SP', 'Médio', 2000, 5482.21, true, '2026-12-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/policia-militar-sp-abre-2000-vagas-para-aluno-soldado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Munhoz - MG abre concurso público para cargos de nível superior', 'Prefeitura de Munhoz', 'MG', 'Superior', 6, 1621.0, true, '2026-12-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-munhoz-mg-abre-concurso-publico-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pedra Branca do Amapari - AP abre concurso público com salários de até R$ 6.000,00', 'Prefeitura de Pedra Branca do Amapari', 'AP', 'Médio', 171, 6000.0, true, '2026-12-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pedra-branca-do-amapari-ap-abre-concurso-publico-com-salarios-de-ate-6000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro da União - MG abre concurso público com salários de até R$ 17.612,87', 'Prefeitura de São Pedro da União', 'MG', 'Fundamental', 29, 17612.87, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-da-uniao-mg-abre-concurso-publico-com-salarios-de-ate-17612')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso para docente na área de Nutrição em Esporte e Exercício Físico', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13753.96, true, '2026-12-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-para-docente-na-area-de-nutricao-em-esporte-e-exercicio-fisico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Municipal Dr. Gil Alves - MG abre concurso com salários de até R$ 7.950,00', 'Hospital Municipal Dr. Gil Alves', 'MG', 'Fundamental', 183, 7950.0, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/hospital-municipal-dr-gil-alves-mg-abre-concurso-com-salarios-de-ate-7950')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Nova Módica - MG abre concurso público para Ouvidor', 'Câmara de Nova Módica', 'MG', 'Superior', 1, 4200.0, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-nova-modica-mg-abre-concurso-publico-para-ouvidor')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ponte Nova - MG abre processo seletivo para profissionais da educação básica', 'Prefeitura de Ponte Nova', 'MG', 'Médio', 0, 4193.92, true, '2026-12-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ponte-nova-mg-abre-processo-seletivo-para-profissionais-da-educacao-basica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Lajinha - MG abre concurso público para o cargo de Controlador Interno', 'Câmara de Lajinha', 'MG', 'Superior', 1, 3800.0, true, '2026-12-29'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-lajinha-mg-abre-concurso-publico-para-o-cargo-de-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Patis - MG abre concurso público com salários de até R$ 13.500,00', 'Prefeitura de Patis', 'MG', 'Fundamental', 154, 13500.0, true, '2026-12-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-patis-mg-abre-concurso-publico-com-salarios-de-ate-13500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG divulga Processo Seletivo para Fisioterapeuta', 'Prefeitura de Cláudio', 'MG', 'Superior', 0, 3463.55, true, '2026-12-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-divulga-processo-seletivo-para-fisioterapeuta')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Romão - MG abre seleção para agentes de saúde e agentes de combate às endemias', 'Prefeitura de São Romão', 'MG', 'Médio', 0, 3242.0, true, '2026-12-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-romao-mg-abre-selecao-para-agentes-de-saude-e-agentes-de-combate-as-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tocos do Moji - MG retifica edital de processo seletivo para Agente Comunitário de Saúde', 'Prefeitura de Tocos do Moji', 'MG', 'Médio', 1, 3242.0, true, '2026-12-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tocos-do-moji-mg-retifica-edital-de-processo-seletivo-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brotas - SP abre concurso público para Guarda Civil Municipal', 'Prefeitura da Estância Turística de Brotas', 'SP', 'Médio', 1, 2614.88, true, '2027-01-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brotas-sp-abre-concurso-publico-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor titular no Instituto de Biociências de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2027-01-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-no-instituto-de-biociencias-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jandira - SP abre três concursos públicos para diversos cargos', 'Prefeitura de Jandira', 'SP', 'Fundamental', 1072, 12213.03, true, '2027-01-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jandira-sp-abre-tres-concursos-publicos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo São Joaquim - MT abre concurso com salários de até R$ 11.979,03', 'Prefeitura de Novo São Joaquim', 'MT', 'Fundamental', 266, 11979.03, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-sao-joaquim-mt-abre-concurso-com-salarios-de-ate-11979')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DPE - AM abre concurso público com salários de até R$ 8.006,38', 'DPE - Defensoria Pública do Estado do Amazonas', 'AM', 'Médio', 5, 8006.38, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/dpe-am-abre-concurso-publico-com-salarios-de-ate-8006')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jandira - SP abre concurso público com salários de até R$ 6.812,14', 'Prefeitura de Jandira', 'SP', 'Fundamental', 308, 6812.14, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jandira-sp-abre-concurso-publico-com-salarios-de-ate-6812')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - PE abre concurso público com 700 vagas para policial penal', 'SEAP - Secretaria de Administração Penitenciária e Ressocialização', 'PE', 'Superior', 700, 5667.92, true, '2027-01-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/seap-pe-abre-concurso-publico-com-700-vagas-para-policial-penal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre concurso público para cargos de nível superior na educação', 'Prefeitura de Cláudio', 'MG', 'Superior', 35, 4748.99, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-concurso-publico-para-cargos-de-nivel-superior-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HFASP - SP abre seleção para residência multiprofissional', 'HFASP - Hospital de Força Aérea de São Paulo', 'SP', 'Superior', 12, 4106.09, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hfasp-sp-abre-selecao-para-residencia-multiprofissional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Serranos - MG abre vagas para Agente Administrativo, Auxiliar Técnico Legislativo e Contador', 'Câmara de Serranos', 'MG', 'Médio', 3, 3280.6, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-serranos-mg-abre-vagas-para-agente-administrativo-auxiliar-tecnico-legislativo-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Salto da Divisa - MG abre seleção para Agentes de Saúde e de Endemias', 'Prefeitura de Salto da Divisa', 'MG', 'Médio', 21, 3242.0, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-salto-da-divisa-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Caratinga - MG abre concurso público para o cargo de Contador', 'Câmara de Caratinga', 'MG', 'Superior', 1, 5182.9, true, '2027-01-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-caratinga-mg-abre-concurso-publico-para-o-cargo-de-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor titular na Faculdade de Arquitetura, Artes, Comunicação e Design de Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25152.67, true, '2027-01-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-titular-na-faculdade-de-arquitetura-artes-comunicacao-e-design-de-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Luislândia - MG abre concurso público com vagas em diversas áreas', 'Prefeitura de Luislândia', 'MG', 'Fundamental', 88, 10000.0, true, '2027-01-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-luislandia-mg-abre-concurso-publico-com-vagas-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor assistente na área de Anatomia em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2027-01-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-assistente-na-area-de-anatomia-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP - SP abre 10 novos concursos públicos para diversos cargos', 'USP - Universidade de São Paulo', 'SP', 'Médio', 10, 11778.84, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/usp-sp-abre-10-novos-concursos-publicos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DPDF abre concurso público para Analista de Apoio à Assistência Judiciária', 'DPDF - Defensoria Pública do Distrito Federal', 'DF', 'Superior', 7, 11514.95, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/dpdf-abre-concurso-publico-para-analista-de-apoio-a-assistencia-judiciaria')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Francisco de Goiás - GO abre concurso público com salários de até R$ 10.500,00', 'Prefeitura de São Francisco de Goiás', 'GO', 'Fundamental', 86, 10500.0, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-francisco-de-goias-go-abre-concurso-publico-com-salarios-de-ate-10500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aracati - CE abre concursos para Agente Comunitário de Saúde e Intérprete de Libras', 'Prefeitura de Aracati', 'CE', 'Médio', 60, 3242.0, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracati-ce-abre-concursos-para-agente-comunitario-de-saude-e-interprete-de-libras')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP - SP abre concurso público para o cargo de Professor Titular na área de Sistemas de Computação', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 24309.11, true, '2027-01-08'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-sp-abre-concurso-publico-para-o-cargo-de-professor-titular-na-area-de-sistemas-de-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Tomás de Aquino - MG abre processo seletivo para diversos níveis de escolaridade', 'Prefeitura de São Tomás de Aquino', 'MG', 'Fundamental', 10, 3074.11, true, '2027-01-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-tomas-de-aquino-mg-abre-processo-seletivo-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Helena de Goiás - GO abre concurso público com salários de até R$ 3.386,33', 'Câmara de Santa Helena de Goiás', 'GO', 'Fundamental', 25, 3386.33, true, '2027-01-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-helena-de-goias-go-abre-concurso-publico-com-salarios-de-ate-3386')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capela Nova - MG abre concurso público para diferentes níveis de escolaridade', 'Câmara de Capela Nova', 'MG', 'Fundamental', 3, 3076.92, true, '2027-01-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capela-nova-mg-abre-concurso-publico-para-diferentes-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Carmo da Cachoeira - MG abre vaga para Agente de Apoio Operacional', 'Câmara de Carmo da Cachoeira', 'MG', 'Médio', 1, 2729.95, true, '2027-01-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-carmo-da-cachoeira-mg-abre-vaga-para-agente-de-apoio-operacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para o cargo de Professor Titular no Instituto de Relações Internacionais', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 24309.11, true, '2027-01-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-o-cargo-de-professor-titular-no-instituto-de-relacoes-internacionais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Luzia - MG abre concurso público com salários de até R$ 8.628,87', 'Prefeitura de Santa Luzia', 'MG', 'Fundamental', 454, 8628.87, true, '2027-01-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-luzia-mg-abre-concurso-publico-com-salarios-de-ate-8628')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itinga do Maranhão - MA abre processo seletivo para professores', 'Prefeitura de Itinga do Maranhão', 'MA', 'Superior', 33, NULL, false, '2027-01-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itinga-do-maranhao-ma-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para professor doutor na Escola de Engenharia de São Carlos - SP', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2027-01-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-professor-doutor-na-escola-de-engenharia-de-sao-carlos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa Santa - MG abre concurso público com salários de até R$ 8.860,79', 'Prefeitura de Lagoa Santa', 'MG', 'Fundamental', 79, 8860.79, true, '2027-01-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-santa-mg-abre-concurso-publico-com-salarios-de-ate-8860')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraguaçu - MG abre concurso público com salários de até R$ 20.128,27', 'Prefeitura de Paraguaçu', 'MG', 'Fundamental', 100, 20128.27, true, '2027-01-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraguacu-mg-abre-concurso-publico-com-salarios-de-ate-20128')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso para professor doutor na Faculdade de Ciências Farmacêuticas', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2027-01-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-para-professor-doutor-na-faculdade-de-ciencias-farmaceuticas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria Municipal de Educação de Belo Horizonte - MG abre concurso para Professor Municipal', 'SME - Secretaria Municipal de Educação de Belo Horizonte', 'MG', 'Superior', 112, 3660.96, true, '2027-01-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-municipal-de-educacao-de-belo-horizonte-mg-abre-concurso-para-professor-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Rita de Jacutinga - MG abre concurso público com salários de até R$ 10.207,61', 'Prefeitura de Santa Rita de Jacutinga', 'MG', 'Fundamental', 73, 10207.61, true, '2027-01-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-rita-de-jacutinga-mg-abre-concurso-publico-com-salarios-de-ate-10207')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana dos Montes - MG abre concurso público com salários de até R$ 20.418,44', 'Prefeitura de Santana dos Montes', 'MG', 'Fundamental', 43, 20418.44, true, '2027-01-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-dos-montes-mg-abre-concurso-publico-com-salarios-de-ate-20418')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Resende Costa - MG abre concurso público para Contínuo e Motorista', 'Câmara de Resende Costa', 'MG', 'Fundamental', 2, 2617.43, true, '2027-01-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-resende-costa-mg-abre-concurso-publico-para-continuo-e-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para professor doutor na área de enfermagem em saúde coletiva', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2027-01-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-professor-doutor-na-area-de-enfermagem-em-saude-coletiva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Rita do Sapucaí - MG abre concurso público para diversos níveis', 'Câmara de Santa Rita do Sapucaí', 'MG', 'Fundamental', 12, 4842.55, true, '2027-01-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-rita-do-sapucai-mg-abre-concurso-publico-para-diversos-niveis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFABC - SP abre concurso público para professores', 'UFABC - Fundação Universidade Federal do ABC', 'SP', 'Superior', 79, 13753.96, true, '2027-01-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufabc-sp-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Caxambu - MG abre concurso público para cinco vagas imediatas', 'Câmara de Caxambu', 'MG', 'Médio', 5, 3457.85, true, '2027-01-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-caxambu-mg-abre-concurso-publico-para-cinco-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Curral de Dentro - MG abre concurso público com cinco vagas', 'Câmara de Curral de Dentro', 'MG', 'Fundamental', 5, 2500.0, true, '2027-01-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-curral-de-dentro-mg-abre-concurso-publico-com-cinco-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto de Ciência da Computação', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2027-01-31'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-de-ciencia-da-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jacutinga - MG abre concurso público com salários de até R$ 8.054,31', 'Câmara de Jacutinga', 'MG', 'Fundamental', 4, 8054.31, true, '2027-02-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jacutinga-mg-abre-concurso-publico-com-salarios-de-ate-8054')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Laranjal - MG abre concurso com salários de até R$ 5.296,39', 'Câmara de Laranjal', 'MG', 'Médio', 4, 5296.39, true, '2027-02-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-laranjal-mg-abre-concurso-com-salarios-de-ate-5296')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pains - MG divulga editais de concurso público e processo seletivo', 'Prefeitura de Pains', 'MG', 'Médio', 18, 3847.97, true, '2027-02-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pains-mg-divulga-editais-de-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Coronel Xavier Chaves - MG abre concurso público para Analista Administrativo e Contador', 'Câmara de Coronel Xavier Chaves', 'MG', 'Médio', 3, 3569.14, true, '2027-02-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-coronel-xavier-chaves-mg-abre-concurso-publico-para-analista-administrativo-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para Professor Titular nas áreas de Lepidoptera e Diptera', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 24309.11, true, '2027-02-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-professor-titular-nas-areas-de-lepidoptera-e-diptera')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Divino - MG abre concurso público para diversos cargos', 'Prefeitura de São José do Divino', 'MG', 'Fundamental', 64, 3242.0, true, '2027-02-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-divino-mg-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Boa - MG abre concurso público com salários de até R$ 13.945,21', 'Prefeitura de Água Boa', 'MG', 'Fundamental', 91, 13945.21, true, '2027-02-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-boa-mg-abre-concurso-publico-com-salarios-de-ate-13945')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaúna - MG abre concurso público para Agente de Trânsito', 'Prefeitura de Itaúna', 'MG', 'Médio', 6, 3697.06, true, '2027-02-24'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itauna-mg-abre-concurso-publico-para-agente-de-transito')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itueta - MG abre concurso público para diversos cargos', 'Prefeitura de Itueta', 'MG', 'Fundamental', 79, 3751.46, true, '2027-02-25'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itueta-mg-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concursos para Professores Titulares nas áreas de Psicologia Clínica e Experimental', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 25261.98, true, '2027-02-27'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concursos-para-professores-titulares-nas-areas-de-psicologia-clinica-e-experimental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para o cargo de Professor Titular na FAU', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 25261.98, true, '2027-03-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-o-cargo-de-professor-titular-na-fau')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre vaga para professor titular no Instituto de Química de São Carlos', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 25261.98, true, '2027-04-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-vaga-para-professor-titular-no-instituto-de-quimica-de-sao-carlos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concursos para professores na Faculdade de Economia, Administração e Contabilidade de Ribeirão Preto - SP', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 25261.98, true, '2027-04-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concursos-para-professores-na-faculdade-de-economia-administracao-e-contabilidade-de-ribeirao-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
