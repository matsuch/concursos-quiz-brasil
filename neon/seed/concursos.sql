-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.
-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)
-- Coletado em: 2026-11-23T18:13:19.023741Z
-- Linhas: 616
--
-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,
-- então reaplicar atualiza a linha em vez de duplicar.

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;

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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio do Oeste - SC abre processo seletivo com salários de até R$ 15.337,90', 'Prefeitura de Rio do Oeste', 'SC', 'Fundamental', 0, 15337.9, true, '2026-11-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-do-oeste-sc-abre-processo-seletivo-com-salarios-de-ate-15337')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Parnaíba - SP abre seleção para médicos', 'Prefeitura de Santana de Parnaíba', 'SP', 'Superior', 0, 13087.86, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-parnaiba-sp-abre-selecao-para-medicos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFB - DF abre seleção para professor substituto no campus Planaltina', 'IFB - Instituto Federal de Brasília', 'DF', 'Superior', 1, 8340.33, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifb-df-abre-selecao-para-professor-substituto-no-campus-planaltina')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fhemig - MG abre processos seletivos em Betim e Belo Horizonte', 'FHEMIG - Fundação Hospitalar do Estado de Minas Gerais', 'MG', 'Médio', 10, 7040.85, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fhemig-mg-abre-processos-seletivos-em-betim-e-belo-horizonte')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Gramado dos Loureiros - RS abre processo seletivo com salários de até R$ 5.899,08', 'Prefeitura de Gramado dos Loureiros', 'RS', 'Médio', 31, 5899.08, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-gramado-dos-loureiros-rs-abre-processo-seletivo-com-salarios-de-ate-5899')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ibiúna - SP prorroga inscrições de concurso público para Assistente Administrativo e Controlador Interno', 'Câmara da Estância Turística de Ibiúna', 'SP', 'Fundamental', 2, 5570.09, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ibiuna-sp-prorroga-inscricoes-de-concurso-publico-para-assistente-administrativo-e-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FASCAMP - SP abre processos seletivos para o Hospital Regional de Piracicaba', 'FASCAMP - Fundação da Área da Saúde de Campinas', 'SP', 'Médio', 2, 5297.44, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fascamp-sp-abre-processos-seletivos-para-o-hospital-regional-de-piracicaba')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Umuarama - PR abre seleção com salários de até R$ 5.130,62', 'Prefeitura de Umuarama', 'PR', 'Fundamental', 5, 5130.62, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-umuarama-pr-abre-selecao-com-salarios-de-ate-5130')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Casa Lar Pequeno Príncipe - SC abre seleção para Psicóloga', 'Consórcio Intermunicipal do Serviço Socioassistencial de Alta Complexidade Casa Lar Pequeno Príncipe', 'SC', 'Superior', 1, 4942.63, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/casa-lar-pequeno-principe-sc-abre-selecao-para-psicologa')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arroio do Padre - RS abre processo seletivo para terapeuta ocupacional', 'Prefeitura de Arroio do Padre', 'RS', 'Superior', 1, 4427.71, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arroio-do-padre-rs-abre-processo-seletivo-para-terapeuta-ocupacional')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vitória - ES abre processo seletivo para o cargo de Psicólogo', 'Prefeitura de Vitória', 'ES', 'Superior', 1, 3236.23, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vitoria-es-abre-processo-seletivo-para-o-cargo-de-psicologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Bananal - ES divulga retificação de concurso público para professores e pedagogos', 'Prefeitura de Rio Bananal', 'ES', 'Superior', 120, 3208.18, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-bananal-es-divulga-retificacao-de-concurso-publico-para-professores-e-pedagogos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibertioga - MG abre seleção para operadores de máquinas e tratoristas', 'Prefeitura de Ibertioga', 'MG', 'Fundamental', 5, 2703.55, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibertioga-mg-abre-selecao-para-operadores-de-maquinas-e-tratoristas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cordisburgo - MG abre processo seletivo para Assistente Social', 'Prefeitura de Cordisburgo', 'MG', 'Superior', 1, 2507.45, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cordisburgo-mg-abre-processo-seletivo-para-assistente-social')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Montes Claros - MG abre processo seletivo para motoristas', 'Prefeitura de Montes Claros', 'MG', 'Fundamental', 59, 2213.38, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-montes-claros-mg-abre-processo-seletivo-para-motoristas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre processo seletivo para professor de Física no COTIL', 'COTIL - Colégio Técnico de Limeira', 'SP', 'Superior', 1, NULL, false, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-processo-seletivo-para-professor-de-fisica-no-cotil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFCIMG - MG abre processo seletivo para professor substituto de Matemática em Timóteo', 'UFCIMG - Universidade Federal de Ciência e Inovação de Minas Gerais', 'MG', 'Superior', 1, NULL, false, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufcimg-mg-abre-processo-seletivo-para-professor-substituto-de-matematica-em-timoteo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ijuí - RS retifica edital de concurso público', 'Prefeitura de Ijuí', 'RS', 'Fundamental', 157, 21312.22, true, '2026-11-24'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ijui-rs-retifica-edital-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Terezinha do Progresso - SC abre concurso público com salários de até R$ 10.000,00', 'Prefeitura de Santa Terezinha do Progresso', 'SC', 'Fundamental', 8, 10000.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-terezinha-do-progresso-sc-abre-concurso-publico-com-salarios-de-ate-10000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Sebrae - SP abre processo seletivo para Analista de Marketing Pleno', 'Sebrae - Serviço de Apoio às Micro e Pequenas Empresas de São Paulo', 'SP', 'Superior', 1, 9365.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sebrae-sp-abre-processo-seletivo-para-analista-de-marketing-pleno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSC abre processo seletivo com vagas para professor substituto em diferentes cidades', 'UFSC - Universidade Federal de Santa Catarina', 'SC', 'Superior', 40, 8340.33, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufsc-abre-processo-seletivo-com-vagas-para-professor-substituto-em-diferentes-cidades')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fhemig - MG abre seleção para médico no Instituto Raul Soares', 'Fhemig - Fundação Hospitalar do Estado de Minas Gerais', 'MG', 'Superior', 1, 7040.85, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fhemig-mg-abre-selecao-para-medico-no-instituto-raul-soares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Estado da Saúde - SC abre vagas para motorista socorrista e psicólogo', 'SES - Secretaria de Estado da Saúde', 'SC', 'Médio', 6, 5670.38, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-de-estado-da-saude-sc-abre-vagas-para-motorista-socorrista-e-psicologo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapada - RS abre processo seletivo com salários de até R$ 4.863,00', 'Prefeitura de Chapada', 'RS', 'Médio', 0, 4863.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapada-rs-abre-processo-seletivo-com-salarios-de-ate-4863')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Céu Azul - PR abre processo seletivo com salários de até R$ 4.552,48', 'Prefeitura de Céu Azul', 'PR', 'Médio', 7, 4552.48, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ceu-azul-pr-abre-processo-seletivo-com-salarios-de-ate-4552')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibirama - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de Ibirama', 'SC', 'Fundamental', 0, 4531.43, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibirama-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Upanema - RN abre seleção para profissionais da educação', 'Prefeitura de Upanema', 'RN', 'Médio', 92, 3610.2, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-upanema-rn-abre-selecao-para-profissionais-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uiramutã - RR abre seleção para agentes de saúde e endemias', 'Prefeitura de Uiramutã', 'RR', 'Fundamental', 26, 3242.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uiramuta-rr-abre-selecao-para-agentes-de-saude-e-endemias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para o cargo de Rádio Operador em Balneário Camboriú', 'SAMU - Serviço de Atendimento Móvel de Urgência', 'SC', 'Médio', 1, 2808.42, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-o-cargo-de-radio-operador-em-balneario-camboriu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Torres - RS abre processo seletivo para Cuidador de Pessoas com Deficiência', 'Prefeitura de Torres', 'RS', 'Médio', 0, 2400.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-torres-rs-abre-processo-seletivo-para-cuidador-de-pessoas-com-deficiencia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Torres - RS abre processo seletivo para Monitor PSR', 'Prefeitura de Torres', 'RS', 'Médio', 0, 2100.0, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-torres-rs-abre-processo-seletivo-para-monitor-psr')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pelotas - RS abre processo seletivo para o cargo de Mecânico', 'Prefeitura de Pelotas', 'RS', 'Fundamental', 0, 1884.75, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pelotas-rs-abre-processo-seletivo-para-o-cargo-de-mecanico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP prorroga inscrições de concurso para professor de ensino médio e técnico em Bauru', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 0, 31.04, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-prorroga-inscricoes-de-concurso-para-professor-de-ensino-medio-e-tecnico-em-bauru')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tarumã - SP abre processo seletivo para professores', 'Prefeitura de Tarumã', 'SP', 'Superior', 0, 25.9, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-taruma-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Manuel - SP abre processo seletivo para professores', 'Prefeitura de São Manuel', 'SP', 'Médio', 0, 24.77, true, '2026-11-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-manuel-sp-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curitibanos - SC abre seleções com salários de até R$ 26.193,56', 'Prefeitura do Município de Curitibanos', 'SC', 'Fundamental', 0, 26193.56, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curitibanos-sc-abre-selecoes-com-salarios-de-ate-26193')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Quedas do Iguaçu - PR retifica edital de concurso público', 'Prefeitura de Quedas do Iguaçu', 'PR', 'Médio', 140, 11998.88, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-quedas-do-iguacu-pr-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unifesp - SP abre vaga para professor na área de ecologia de paisagem', 'Unifesp - Universidade Federal de São Paulo', 'SP', 'Superior', 1, 8340.33, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifesp-sp-abre-vaga-para-professor-na-area-de-ecologia-de-paisagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFTM - MG abre processo seletivo para docente substituto no campus Sete Lagoas', 'IFTM - Instituto Federal de Educação, Ciência e Tecnologia do Triângulo Mineiro', 'MG', 'Superior', 1, 8340.33, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/iftm-mg-abre-processo-seletivo-para-docente-substituto-no-campus-sete-lagoas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFC - SC abre vaga para professor substituto de Letras em Blumenau', 'IFC - Instituto Federal Catarinense', 'SC', 'Superior', 1, 8340.33, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifc-sc-abre-vaga-para-professor-substituto-de-letras-em-blumenau')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processos seletivos para professores substitutos em quatro campi', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 21, 6886.82, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processos-seletivos-para-professores-substitutos-em-quatro-campi')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seletivo para professores substitutos no campus São Bento', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 4, 6886.82, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-seletivo-para-professores-substitutos-no-campus-sao-bento')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seleções para professores substitutos em Bacabal e Zé Doca', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 11, 6886.82, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-selecoes-para-professores-substitutos-em-bacabal-e-ze-doca')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Marilândia - ES abre seleção para controlador interno', 'Câmara de Marilândia', 'ES', 'Superior', 1, 5348.97, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-marilandia-es-abre-selecao-para-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uru - SP abre concurso público com vagas em diversas áreas de atuação', 'Prefeitura de Uru', 'SP', 'Fundamental', 6, 5217.7, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uru-sp-abre-concurso-publico-com-vagas-em-diversas-areas-de-atuacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Rita de Cássia - BA retifica edital de concurso público', 'Câmara de Santa Rita de Cássia', 'BA', 'Fundamental', 13, 4400.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-rita-de-cassia-ba-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IBGE retifica processo seletivo com 27.279 vagas para Recenseador', 'IBGE - Fundação Instituto Brasileiro de Geografia e Estatística', 'Nacional', 'Fundamental', 27279, 4370.0, true, '2026-11-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ibge-retifica-processo-seletivo-com-27279-vagas-para-recenseador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre seletivo para professores substitutos no curso de Psicologia em Coroatá', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 3, 3624.64, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-seletivo-para-professores-substitutos-no-curso-de-psicologia-em-coroata')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processos seletivos para professores substitutos em Coroatá e São Luís', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 2, 3624.64, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processos-seletivos-para-professores-substitutos-em-coroata-e-sao-luis')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sumidouro - RJ abre seleção com salários de até R$ 3.206,64', 'Prefeitura de Sumidouro', 'RJ', 'Médio', 65, 3206.64, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sumidouro-rj-abre-selecao-com-salarios-de-ate-3206')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre seleções para o CEPON e o SAMU com salários de até R$ 3.066,92', 'FAHECE - Fundação de Apoio ao HEMOSC/CEPON', 'SC', 'Médio', 2, 3066.92, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-selecoes-para-o-cepon-e-o-samu-com-salarios-de-ate-3066')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tucano - BA abre processo seletivo com 83 vagas', 'Prefeitura de Tucano', 'BA', 'Médio', 83, 3000.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tucano-ba-abre-processo-seletivo-com-83-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundo Municipal de Saúde de Anicuns - GO abre processo seletivo com quatro vagas', 'Fundo Municipal de Saúde de Anicuns', 'GO', 'Fundamental', 4, 2200.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundo-municipal-de-saude-de-anicuns-go-abre-processo-seletivo-com-quatro-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAFIA - ES abre processos seletivos para docentes e agentes administrativos', 'FAFIA - Faculdade de Filosofia, Ciências e Letras de Alegre', 'ES', 'Médio', 10, 1621.0, true, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fafia-es-abre-processos-seletivos-para-docentes-e-agentes-administrativos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEMED de Timon - MA abre processo seletivo para professores com diversas especialidades', 'SEMED - Secretaria Municipal de Educação de Timon', 'MA', 'Superior', 327, NULL, false, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/semed-de-timon-ma-abre-processo-seletivo-para-professores-com-diversas-especialidades')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Gerência de Educação de Naviraí - MS abre processo seletivo para professores', 'GEMED - Gerência Municipal de Educação e Cultura de Naviraí', 'MS', 'Superior', 0, NULL, false, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/gerencia-de-educacao-de-navirai-ms-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vila Pavão - ES abre processo seletivo para professor bolsista do PAES', 'Prefeitura de Vila Pavão', 'ES', 'Superior', 1, NULL, false, '2026-11-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vila-pavao-es-abre-processo-seletivo-para-professor-bolsista-do-paes')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pouso Redondo - SC abre processo seletivo com salários de até R$ 21.091,49', 'Prefeitura de Pouso Redondo', 'SC', 'Fundamental', 0, 21091.49, true, '2026-11-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pouso-redondo-sc-abre-processo-seletivo-com-salarios-de-ate-21091')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre processo seletivo com vaga para Médico de ESF', 'Prefeitura de Cláudio', 'MG', 'Superior', 1, 20743.06, true, '2026-11-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-processo-seletivo-com-vaga-para-medico-de-esf')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Corumbataí - SP abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Corumbataí', 'SP', 'Fundamental', 13, 14955.58, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-corumbatai-sp-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SECITECI - MT retifica edital de processo seletivo para formação de cadastro de reserva', 'SECITECI - Secretaria de Estado de Ciência, Tecnologia e Inovação de Mato Grosso', 'MT', 'Médio', 0, 12937.29, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seciteci-mt-retifica-edital-de-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre seleção para profissionais de saúde em Joinville', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Superior', 12, 10581.16, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-selecao-para-profissionais-de-saude-em-joinville')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFTM - MG abre processo seletivo com seis vagas para professores substitutos', 'UFTM - Universidade Federal do Triângulo Mineiro', 'MG', 'Superior', 6, 8340.33, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uftm-mg-abre-processo-seletivo-com-seis-vagas-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFRS abre processo seletivo para professor substituto de Zootecnia em Sertão', 'IFRS - Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Sul', 'RS', 'Superior', 1, 8340.33, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifrs-abre-processo-seletivo-para-professor-substituto-de-zootecnia-em-sertao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Desidério - BA abre seleção com salários de até R$ 8.032,62', 'Prefeitura de São Desidério', 'BA', 'Médio', 236, 8032.62, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-desiderio-ba-abre-selecao-com-salarios-de-ate-8032')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEDU - ES abre processo seletivo para professores de Inglês e Espanhol', 'SEDU - Secretaria de Estado da Educação', 'ES', 'Superior', 0, 7064.01, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sedu-es-abre-processo-seletivo-para-professores-de-ingles-e-espanhol')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Florianópolis - SC abre seleção para a Secretaria de Educação', 'Prefeitura de Florianópolis', 'SC', 'Médio', 0, 6493.56, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-florianopolis-sc-abre-selecao-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itupeva - SP abre processo seletivo para professores', 'Prefeitura de Itupeva', 'SP', 'Superior', 33, 6348.24, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itupeva-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMG - MG abre processo seletivo para professores de educação superior', 'UEMG - Universidade do Estado de Minas Gerais', 'MG', 'Superior', 91, 5875.83, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uemg-mg-abre-processo-seletivo-para-professores-de-educacao-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre processo seletivo para técnicos em enfermagem e enfermeiros em Joinville', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Médio', 3, 5670.38, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-processo-seletivo-para-tecnicos-em-enfermagem-e-enfermeiros-em-joinville')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPR - PR abre processos seletivos para professores substitutos no campus Cascavel', 'IFPR - Instituto Federal de Educação, Ciência e Tecnologia do Paraná', 'PR', 'Superior', 2, 4478.03, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpr-pr-abre-processos-seletivos-para-professores-substitutos-no-campus-cascavel')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Piquiri - PR abre processo seletivo para cadastro de reserva em diversas áreas', 'Prefeitura de Alto Piquiri', 'PR', 'Fundamental', 0, 4403.97, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-piquiri-pr-abre-processo-seletivo-para-cadastro-de-reserva-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fhemig - MG abre processo seletivo para enfermeiro em Belo Horizonte', 'Fhemig - Fundação Hospitalar do Estado de Minas Gerais', 'MG', 'Superior', 1, 4204.52, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fhemig-mg-abre-processo-seletivo-para-enfermeiro-em-belo-horizonte')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNESA - SE abre seleção para Cirurgião-Dentista e Auxiliar em Saúde Bucal', 'FUNESA - Fundação Estadual de Saúde', 'SE', 'Médio', 5, 3957.26, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funesa-se-abre-selecao-para-cirurgiao-dentista-e-auxiliar-em-saude-bucal')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarantã do Norte - MT abre processo seletivo para Agentes de Saúde e Endemias', 'Prefeitura de Guarantã do Norte', 'MT', 'Médio', 7, 3242.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaranta-do-norte-mt-abre-processo-seletivo-para-agentes-de-saude-e-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Poconé - MT abre seleção para agentes de saúde e endemias', 'Prefeitura de Poconé', 'MT', 'Médio', 12, 3242.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pocone-mt-abre-selecao-para-agentes-de-saude-e-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Igrejinha - RS abre seleção para professor de atendimento educacional especializado', 'Prefeitura de Igrejinha', 'RS', 'Superior', 1, 2683.38, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-igrejinha-rs-abre-selecao-para-professor-de-atendimento-educacional-especializado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coronel José Dias - PI abre processo seletivo com seis vagas', 'Prefeitura de Coronel José Dias', 'PI', 'Fundamental', 6, 2434.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coronel-jose-dias-pi-abre-processo-seletivo-com-seis-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Belo - SC abre processo seletivo para o cargo de Fiscal de Temporada', 'Prefeitura de Porto Belo', 'SC', 'Médio', 14, 1999.76, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-belo-sc-abre-processo-seletivo-para-o-cargo-de-fiscal-de-temporada')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de João Neiva - ES abre seleção para Auxiliar de Secretaria Escolar', 'Prefeitura de João Neiva', 'ES', 'Médio', 0, 1633.04, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-joao-neiva-es-abre-selecao-para-auxiliar-de-secretaria-escolar')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catas Altas - MG abre seleção para Auxiliar de Serviços Gerais', 'Prefeitura de Catas Altas', 'MG', 'Não informado', 0, 1621.0, true, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catas-altas-mg-abre-selecao-para-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coronel Sapucaia - MS abre processo seletivo para a Secretaria Municipal de Saúde', 'Prefeitura de Coronel Sapucaia', 'MS', 'Fundamental', 14, NULL, false, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coronel-sapucaia-ms-abre-processo-seletivo-para-a-secretaria-municipal-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FURB - SC abre processo seletivo para aprimoramento profissional em medicina veterinária', 'FURB - Fundação Universidade Regional de Blumenau', 'SC', 'Superior', 3, NULL, false, '2026-11-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/furb-sc-abre-processo-seletivo-para-aprimoramento-profissional-em-medicina-veterinaria')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Coronel Freitas - SC anunciam processo seletivo para diversos cargos', 'Prefeitura de Coronel Freitas e Câmara de Coronel Freitas', 'SC', 'Fundamental', 10, 22662.75, true, '2026-11-27'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-coronel-freitas-sc-anunciam-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Sebrae - SP abre seleção para Analista com salário de R$ 13.814,000', 'Sebrae - Serviço de Apoio às Micro e Pequenas Empresas de São Paulo', 'SP', 'Superior', 1, 13814.0, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sebrae-sp-abre-selecao-para-analista-com-salario-de-13814-000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fhemig - MG abre seleção para médicos em Belo Horizonte', 'Fhemig - Fundação Hospitalar do Estado de Minas Gerais', 'MG', 'Superior', 36, 13212.64, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fhemig-mg-abre-selecao-para-medicos-em-belo-horizonte')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unicamp - SP abre processos seletivos para Enfermeiro e Técnico de Enfermagem', 'Unicamp - Universidade Estadual de Campinas', 'SP', 'Médio', 3, 9659.46, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-processos-seletivos-para-enfermeiro-e-tecnico-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPR - PR abre seleção para professor substituto de Matemática em Cascavel', 'IFPR - Instituto Federal de Educação, Ciência e Tecnologia do Paraná', 'PR', 'Superior', 1, 8340.33, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpr-pr-abre-selecao-para-professor-substituto-de-matematica-em-cascavel')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Presidente Lucena - RS abre processo seletivo para o cargo de Enfermeiro', 'Prefeitura de Presidente Lucena', 'RS', 'Superior', 1, 6710.73, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-presidente-lucena-rs-abre-processo-seletivo-para-o-cargo-de-enfermeiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mogi Guaçu - SP abre três novos concursos para cadastro de reserva em diversas áreas', 'Prefeitura de Mogi Guaçu', 'SP', 'Fundamental', 0, 6316.43, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mogi-guacu-sp-abre-tres-novos-concursos-para-cadastro-de-reserva-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro do Iguaçu - PR abre processo seletivo com 14 vagas para professores', 'Prefeitura de São Pedro do Iguaçu', 'PR', 'Superior', 14, 5162.98, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-do-iguacu-pr-abre-processo-seletivo-com-14-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Orleans - SC abre processo seletivo para o setor da educação em 2027', 'Prefeitura de Orleans', 'SC', 'Fundamental', 0, 5130.63, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-orleans-sc-abre-processo-seletivo-para-o-setor-da-educacao-em-2027')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trairão - PA abre três processos seletivos para diversas áreas', 'Prefeitura de Trairão', 'PA', 'Fundamental', 589, 4258.76, true, '2026-11-27'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trairao-pa-abre-tres-processos-seletivos-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de João Neiva - ES abre processo seletivo com salários de até R$ 4.233,80', 'Prefeitura de João Neiva', 'ES', 'Médio', 1, 4233.8, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-joao-neiva-es-abre-processo-seletivo-com-salarios-de-ate-4233')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Espírito Santo do Dourado - MG abre seleção com salários de até R$ 4.132,19', 'Prefeitura de Espírito Santo do Dourado', 'MG', 'Médio', 39, 4132.19, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-espirito-santo-do-dourado-mg-abre-selecao-com-salarios-de-ate-4132')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraisópolis - MG abre seleção com 15 vagas', 'Prefeitura de Paraisópolis', 'MG', 'Fundamental', 15, 3901.24, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraisopolis-mg-abre-selecao-com-15-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concursos públicos para professores substitutos no campus de Sorocaba', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-publicos-para-professores-substitutos-no-campus-de-sorocaba')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curiúva - PR abre processo seletivo para Técnico de Enfermagem', 'Prefeitura de Curiúva', 'PR', 'Médio', 1, 3022.73, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curiuva-pr-abre-processo-seletivo-para-tecnico-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAMAE de Nova Trento - SC abre processo seletivo para Operador de ETE/ETA', 'SAMAE - Serviço Autônomo de Água e Esgoto de Nova Trento', 'SC', 'Médio', 1, 2785.85, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/samae-de-nova-trento-sc-abre-processo-seletivo-para-operador-de-ete-eta')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRBM 4ª Região - AM abre processo seletivo para agente administrativo em Manaus', 'CRBM-4 - Conselho Regional de Biomedicina da 4ª Região', 'AM', 'Médio', 1, 2765.11, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crbm-4-regiao-am-abre-processo-seletivo-para-agente-administrativo-em-manaus')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Surubim - PE abre processo seletivo para a Secretaria de Saúde', 'Prefeitura de Surubim', 'PE', 'Fundamental', 9, 2600.0, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-surubim-pe-abre-processo-seletivo-para-a-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaxupé - MG abre vagas para Auxiliar de Desenvolvimento Infantil e Auxiliar de Professor de Educação Infantil', 'Prefeitura de Guaxupé', 'MG', 'Médio', 10, 2588.3, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaxupe-mg-abre-vagas-para-auxiliar-de-desenvolvimento-infantil-e-auxiliar-de-professor-de-educacao-infantil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Funcamp - SP abre vaga para Camareiro na Casa do Professor Visitante', 'Funcamp - Fundação de Desenvolvimento da Unicamp', 'SP', 'Fundamental', 1, 2178.0, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-vaga-para-camareiro-na-casa-do-professor-visitante')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arambaré - RS abre processo seletivo para Vigia, Operário e Entrevistador', 'Prefeitura de Arambaré', 'RS', 'Fundamental', 8, 1770.38, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arambare-rs-abre-processo-seletivo-para-vigia-operario-e-entrevistador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Croatá - CE abre concurso público com vagas imediatas e cadastro de reserva', 'Câmara de Croatá', 'CE', 'Fundamental', 15, 1621.0, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-croata-ce-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CPGI de Andradas - MG abre processo seletivo para Auxiliar de Limpeza', 'CPGI - Consórcio Público para Gestão Integrada', 'MG', 'Fundamental', 1, 550.0, true, '2026-11-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cpgi-de-andradas-mg-abre-processo-seletivo-para-auxiliar-de-limpeza')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMS - MS abre vagas para professores substitutos no campus Jardim', 'IFMS - Instituto Federal de Educação, Ciência e Tecnologia de Mato Grosso do Sul', 'MS', 'Superior', 2, 9532.33, true, '2026-11-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifms-ms-abre-vagas-para-professores-substitutos-no-campus-jardim')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itanhaém - SP abre processos seletivos para níveis fundamental e médio', 'Prefeitura da Estância Balneária de Itanhaém', 'SP', 'Fundamental', 33, 2662.0, true, '2026-11-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itanhaem-sp-abre-processos-seletivos-para-niveis-fundamental-e-medio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvinlândia - SP abre processo seletivo com salários de até R$ 9.742,35', 'Prefeitura de Alvinlândia', 'SP', 'Médio', 0, 9742.35, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvinlandia-sp-abre-processo-seletivo-com-salarios-de-ate-9742')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMS - MS abre seleção para professores substitutos no campus Três Lagoas', 'IFMS - Instituto Federal de Educação, Ciência e Tecnologia de Mato Grosso do Sul', 'MS', 'Superior', 4, 9532.33, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifms-ms-abre-selecao-para-professores-substitutos-no-campus-tres-lagoas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFTO abre processo seletivo para professores substitutos em Lagoa da Confusão', 'IFTO - Instituto Federal de Educação, Ciência e Tecnologia do Tocantins', 'TO', 'Superior', 0, 8992.93, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifto-abre-processo-seletivo-para-professores-substitutos-em-lagoa-da-confusao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFCE abre seleção para professor substituto de Língua Portuguesa em Tianguá', 'IFCE - Instituto Federal de Educação, Ciência e Tecnologia do Ceará', 'CE', 'Superior', 1, 8340.33, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifce-abre-selecao-para-professor-substituto-de-lingua-portuguesa-em-tiangua')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre seleção para professores substitutos em Apucarana', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 2, 8340.33, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-selecao-para-professores-substitutos-em-apucarana')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mirim Doce - SC abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Mirim Doce', 'SC', 'Fundamental', 6, 5998.72, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mirim-doce-sc-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Ibirama - SC abre concurso público para cadastro de reserva', 'Prefeitura de Ibirama', 'SC', 'Médio', 0, 5724.76, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-ibirama-sc-abre-concurso-publico-para-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rancho Queimado - SC abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Rancho Queimado', 'SC', 'Fundamental', 0, 5111.16, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rancho-queimado-sc-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Portel - PA retifica edital de concurso público', 'Câmara de Portel', 'PA', 'Fundamental', 27, 4723.31, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-portel-pa-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPB abre seleção para professor substituto de informática no campus Monteiro', 'IFPB - Instituto Federal de Educação, Ciência e Tecnologia da Paraíba', 'PB', 'Superior', 1, 4326.6, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpb-abre-selecao-para-professor-substituto-de-informatica-no-campus-monteiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMASUL - MA abre processos seletivos para professores substitutos em diversas áreas', 'UEMASUL - Universidade Estadual da Região Tocantina do Maranhão', 'MA', 'Superior', 3, 4216.81, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uemasul-ma-abre-processos-seletivos-para-professores-substitutos-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Onda Verde - SP abre processo seletivo com salários de até R$ 4.104,00', 'Prefeitura de Onda Verde', 'SP', 'Fundamental', 4, 4104.0, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-onda-verde-sp-abre-processo-seletivo-com-salarios-de-ate-4104')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Negro - PR abre seleção para Auxiliar de Saúde Bucal', 'Prefeitura de Rio Negro', 'PR', 'Fundamental', 1, 3783.76, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-negro-pr-abre-selecao-para-auxiliar-de-saude-bucal')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Teodoro Sampaio - SP abre processos seletivos para cadastro reserva', 'Prefeitura de Teodoro Sampaio', 'SP', 'Fundamental', 0, 3229.78, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-teodoro-sampaio-sp-abre-processos-seletivos-para-cadastro-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIOP - SP abre concurso público para motoristas e técnicos em enfermagem', 'CIOP - Consórcio Intermunicipal do Oeste Paulista', 'SP', 'Médio', 21, 2522.36, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ciop-sp-abre-concurso-publico-para-motoristas-e-tecnicos-em-enfermagem')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Formosa do Rio Preto - BA abre processo seletivo para profissionais da saúde', 'Prefeitura de Formosa do Rio Preto', 'BA', 'Médio', 68, 1808.33, true, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-formosa-do-rio-preto-ba-abre-processo-seletivo-para-profissionais-da-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERGS - RS abre processo seletivo para professores voluntários em Alegrete', 'UERGS - Universidade Estadual do Rio Grande do Sul', 'RS', 'Superior', 2, NULL, false, '2026-11-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uergs-rs-abre-processo-seletivo-para-professores-voluntarios-em-alegrete')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Carlos - SC abre processos seletivos para cadastro de reserva', 'Prefeitura de São Carlos', 'SC', 'Fundamental', 0, 22623.36, true, '2026-11-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-carlos-sc-abre-processos-seletivos-para-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPR abre seleção para professor visitante em Medicina Tradicional Chinesa', 'IFPR - Instituto Federal do Paraná', 'PR', 'Superior', 1, 8340.33, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpr-abre-selecao-para-professor-visitante-em-medicina-tradicional-chinesa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unespar - PR abre processo seletivo para agente universitário profissional', 'Unespar - Universidade Estadual do Paraná', 'PR', 'Superior', 13, 7997.72, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unespar-pr-abre-processo-seletivo-para-agente-universitario-profissional')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Adib Jatene - SP abre seleção com salários de até R$ 7.000,00 na enfermagem', 'FAJ - Fundação Adib Jatene', 'SP', 'Médio', 5, 7000.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-adib-jatene-sp-abre-selecao-com-salarios-de-ate-7000-na-enfermagem')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Ubiratã - MT abre seleção com vagas e cadastro de reserva em diversos cargos', 'Prefeitura de Nova Ubiratã', 'MT', 'Fundamental', 66, 6562.12, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-ubirata-mt-abre-selecao-com-vagas-e-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guabiju - RS abre concurso público com salários de até R$ 6.483,36', 'Prefeitura de Guabiju', 'RS', 'Fundamental', 5, 6483.36, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guabiju-rs-abre-concurso-publico-com-salarios-de-ate-6483')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Salete - SC abre processo seletivo com salários de até R$ 6.347,69', 'Prefeitura de Salete', 'SC', 'Fundamental', 0, 6347.69, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-salete-sc-abre-processo-seletivo-com-salarios-de-ate-6347')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMG - MG abre seleção com 19 vagas para professor de educação superior em Guanhães', 'UEMG - Universidade do Estado de Minas Gerais', 'MG', 'Superior', 19, 6193.12, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uemg-mg-abre-selecao-com-19-vagas-para-professor-de-educacao-superior-em-guanhaes')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Montes Claros - MG abre processo seletivo com 123 vagas na saúde', 'Prefeitura de Montes Claros', 'MG', 'Médio', 104, 5551.46, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-montes-claros-mg-abre-processo-seletivo-com-123-vagas-na-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cocal do Sul - SC abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Cocal do Sul', 'SC', 'Médio', 0, 5208.14, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cocal-do-sul-sc-abre-processo-seletivo-para-a-secretaria-de-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Correia Pinto - SC abre concurso público na área da educação', 'Prefeitura de Correia Pinto', 'SC', 'Médio', 29, 5180.14, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-correia-pinto-sc-abre-concurso-publico-na-area-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Herval d''Oeste - SC abre vagas para diversos cargos na área da educação', 'Prefeitura de Herval d''Oeste', 'SC', 'Médio', 10, 3900.16, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-herval-doeste-sc-abre-vagas-para-diversos-cargos-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaraci - SP abre processo seletivo para cadastro de reserva', 'Prefeitura de Guaraci', 'SP', 'Médio', 0, 3855.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaraci-sp-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bofete - SP abre concurso público com vagas em diversas áreas de atuação', 'Prefeitura de Bofete', 'SP', 'Fundamental', 8, 3820.32, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bofete-sp-abre-concurso-publico-com-vagas-em-diversas-areas-de-atuacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre três concursos para professores substitutos na área da Educação', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-tres-concursos-para-professores-substitutos-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre quatro concursos públicos para professores substitutos em Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 5, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-quatro-concursos-publicos-para-professores-substitutos-em-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos públicos para professores substitutos de Matemática em Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 6, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-publicos-para-professores-substitutos-de-matematica-em-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto na área de Educação em Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-na-area-de-educacao-em-presidente-prudente-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Metropolitano Odilon Behrens - MG abre seleções para Técnico em Nutrição e Agente Executivo Governamental', 'HOB - Hospital Metropolitano Odilon Behrens', 'MG', 'Médio', 0, 2608.39, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-metropolitano-odilon-behrens-mg-abre-selecoes-para-tecnico-em-nutricao-e-agente-executivo-governamental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cristino Castro - PI abre processo seletivo para diversas áreas', 'Prefeitura de Cristino Castro', 'PI', 'Médio', 132, 2565.31, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cristino-castro-pi-abre-processo-seletivo-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curvelo - MG abre processo seletivo para o cargo de Laçador/Manejador de Animais', 'Prefeitura de Curvelo', 'MG', 'Fundamental', 1, 2100.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curvelo-mg-abre-processo-seletivo-para-o-cargo-de-lacador-manejador-de-animais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José da Lagoa Tapada - PB abre processo seletivo para a Secretaria de Educação', 'Prefeitura de São José da Lagoa Tapada', 'PB', 'Médio', 68, 1621.0, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-da-lagoa-tapada-pb-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tupi Paulista - SP abre processo seletivo para professores', 'Prefeitura de Tupi Paulista', 'SP', 'Médio', 0, 25.65, true, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tupi-paulista-sp-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP anuncia processo seletivo para docente no Colégio Técnico de Limeira', 'Unicamp - Universidade Estadual de Campinas - Colégio Técnico de Limeira', 'SP', 'Superior', 1, NULL, false, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-anuncia-processo-seletivo-para-docente-no-colegio-tecnico-de-limeira')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Cefet/RJ - RJ abre processo seletivo com 310 vagas para cursos técnicos subsequentes', 'Cefet/RJ - Centro Federal de Educação Tecnológica Celso Suckow da Fonseca', 'RJ', 'Não informado', 310, NULL, false, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cefet-rj-rj-abre-processo-seletivo-com-310-vagas-para-cursos-tecnicos-subsequentes')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaguaruna - SC abre seleção para professor atuar na APAE', 'Secretaria Municipal de Educação e Cultura de Jaguaruna', 'SC', 'Superior', 1, NULL, false, '2026-11-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaguaruna-sc-abre-selecao-para-professor-atuar-na-apae')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Carlos - SP abre concurso público com salários de até R$ 9.701,00', 'Prefeitura de São Carlos', 'SP', 'Médio', 21, 9701.0, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-carlos-sp-abre-concurso-publico-com-salarios-de-ate-9701')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tabaporã - MT abre seleção com salários de até R$ 9.677,25', 'Prefeitura de Tabaporã', 'MT', 'Fundamental', 165, 9677.25, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tabapora-mt-abre-selecao-com-salarios-de-ate-9677')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMS abre processo seletivo para professores substitutos de Física em Campo Grande', 'IFMS - Instituto Federal de Educação, Ciência e Tecnologia de Mato Grosso do Sul', 'MS', 'Superior', 3, 9532.33, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifms-abre-processo-seletivo-para-professores-substitutos-de-fisica-em-campo-grande')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Comodoro - MT abre seleção para formação de cadastro de reserva na saúde', 'Prefeitura de Comodoro', 'MT', 'Fundamental', 31, 7929.74, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-comodoro-mt-abre-selecao-para-formacao-de-cadastro-de-reserva-na-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapadão do Sul - MS abre seleção para profissionais da educação', 'Prefeitura de Chapadão do Sul', 'MS', 'Fundamental', 46, 6101.43, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapadao-do-sul-ms-abre-selecao-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carlinda - MT abre processo seletivo para professores', 'Prefeitura de Carlinda', 'MT', 'Superior', 26, 4413.91, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carlinda-mt-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para professor substituto de Matemática em Presidente Prudente', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-professor-substituto-de-matematica-em-presidente-prudente')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Olinda - PB abre processo seletivo para professores da EJA', 'Prefeitura de Nova Olinda', 'PB', 'Superior', 11, 2565.31, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-olinda-pb-abre-processo-seletivo-para-professores-da-eja')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ouroeste - SP abre seleção para agentes coletores de lixo e professores', 'Prefeitura de Ouroeste', 'SP', 'Fundamental', 6, 1980.0, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ouroeste-sp-abre-selecao-para-agentes-coletores-de-lixo-e-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sales - SP abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Sales', 'SP', 'Fundamental', 0, 1573.78, true, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sales-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IBFC - SP abre seleção para curso gratuito de capacitação profissional em Taboão da Serra', 'IBFC - Instituto Brasileiro de Formação e Capacitação', 'SP', 'Não informado', 40, NULL, false, '2026-12-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ibfc-sp-abre-selecao-para-curso-gratuito-de-capacitacao-profissional-em-taboao-da-serra')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEED - PR abre processo seletivo para profissionais da educação', 'SEED - Secretaria de Estado da Educação', 'PR', 'Médio', 1000, NULL, false, '2026-12-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/seed-pr-abre-processo-seletivo-para-profissionais-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Umuarama - PR abre concurso público para médicos generalistas', 'Prefeitura de Umuarama', 'PR', 'Superior', 4, 14994.61, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-umuarama-pr-abre-concurso-publico-para-medicos-generalistas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso com duas vagas para professores de ensino fundamental e médio', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 11778.84, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-com-duas-vagas-para-professores-de-ensino-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMS abre processo seletivo para professores substitutos no campus Ponta Porã', 'IFMS - Instituto Federal de Educação, Ciência e Tecnologia de Mato Grosso do Sul', 'MS', 'Superior', 4, 9532.33, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifms-abre-processo-seletivo-para-professores-substitutos-no-campus-ponta-pora')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Lima - MG abre processo seletivo com salários de até R$ 8.106,76', 'SEMSA - Secretaria Municipal de Saúde de Nova Lima', 'MG', 'Médio', 24, 8106.76, true, '2026-12-02'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-lima-mg-abre-processo-seletivo-com-salarios-de-ate-8106')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Rosa de Lima - SC abre processo seletivo para cadastro de reserva em diversas áreas', 'Prefeitura de Santa Rosa de Lima', 'SC', 'Fundamental', 0, 6311.11, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-rosa-de-lima-sc-abre-processo-seletivo-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FURB - SC abre processo seletivo com salários de até R$ 5.906,88', 'FURB - Fundação Universidade Regional de Blumenau', 'SC', 'Médio', 0, 5906.88, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/furb-sc-abre-processo-seletivo-com-salarios-de-ate-5906')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FURB - SC abre processo seletivo para formação de cadastro reserva com ganhos de até R$ 5.906,88', 'FURB - Fundação Universidade Regional de Blumenau', 'SC', 'Médio', 0, 5906.88, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/furb-sc-abre-processo-seletivo-para-formacao-de-cadastro-reserva-com-ganhos-de-ate-5906')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Abelardo Luz - SC abre processo seletivo com 12 vagas e cadastro reserva', 'Prefeitura de Abelardo Luz', 'SC', 'Fundamental', 13, 5467.13, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-abelardo-luz-sc-abre-processo-seletivo-com-12-vagas-e-cadastro-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Nova Veneza - SC abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Nova Veneza', 'SC', 'Fundamental', 40, 5130.63, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-nova-veneza-sc-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cotriguaçu - MT abre processo seletivo para cadastro de reserva', 'Prefeitura de Cotriguaçu', 'MT', 'Fundamental', 0, 4749.42, true, '2026-12-02'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cotriguacu-mt-abre-processo-seletivo-para-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP prorroga inscrições de concurso para professor substituto de Engenharia Aeroespacial', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-prorroga-inscricoes-de-concurso-para-professor-substituto-de-engenharia-aeroespacial')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso público para professores substitutos em Araraquara', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-publico-para-professores-substitutos-em-araraquara')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CORECA - SP abre concurso público com vagas na Casa Abrigo de Jales', 'CORECA - Consórcio Intermunicipal de Direitos da Criança e do Adolescente do Noroeste Paulista', 'SP', 'Fundamental', 2, 3243.6, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/coreca-sp-abre-concurso-publico-com-vagas-na-casa-abrigo-de-jales')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alfenas - MG abre processo seletivo para a área da educação', 'Prefeitura de Alfenas', 'MG', 'Fundamental', 90, 3078.38, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alfenas-mg-abre-processo-seletivo-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Mercedes - PR abre seleção para professores substitutos', 'Prefeitura de Mercedes', 'PR', 'Médio', 0, 2811.93, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-mercedes-pr-abre-selecao-para-professores-substitutos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bandeirantes - PR abre seleção com 29 vagas para Motorista e Vigia', 'Prefeitura de Bandeirantes', 'PR', 'Fundamental', 29, 2250.92, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bandeirantes-pr-abre-selecao-com-29-vagas-para-motorista-e-vigia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIM Expandida Sul - ES abre processo seletivo com vagas imediatas e cadastro de reserva', 'CIM Expandida Sul - Consórcio Público da Região Expandida Sul', 'ES', 'Fundamental', 10, 2100.0, true, '2026-12-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cim-expandida-sul-es-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Contagem - MG retifica edital de concurso público', 'Prefeitura de Contagem', 'MG', 'Médio', 269, 13305.57, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-contagem-mg-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Major Gercino - SC abre processo seletivo com salários de até R$ 13.301,74', 'Prefeitura de Major Gercino', 'SC', 'Fundamental', 26, 13301.74, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-major-gercino-sc-abre-processo-seletivo-com-salarios-de-ate-13301')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vila Bela da Santíssima Trindade - MT abre seleção com vagas imediatas e cadastro de reserva', 'Prefeitura de Vila Bela da Santíssima Trindade', 'MT', 'Fundamental', 54, 7700.67, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vila-bela-da-santissima-trindade-mt-abre-selecao-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para assistente administrativo II na área de Materiais em Araçatuba - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Médio', 1, 6537.74, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-assistente-administrativo-ii-na-area-de-materiais-em-aracatuba-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bernardino de Campos - SP abre processo seletivo para a educação', 'Prefeitura de Bernardino de Campos', 'SP', 'Médio', 0, 5130.0, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bernardino-de-campos-sp-abre-processo-seletivo-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Bandeirantes - MT abre seleção com salários de até R$ 4.928,75', 'Prefeitura de Nova Bandeirantes', 'MT', 'Fundamental', 189, 4928.75, true, '2026-12-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-bandeirantes-mt-abre-selecao-com-salarios-de-ate-4928')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Colíder - MT abre concurso público com salários de até R$ 4.778,09', 'Câmara de Colíder', 'MT', 'Fundamental', 1, 4778.09, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-colider-mt-abre-concurso-publico-com-salarios-de-ate-4778')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Confins - MG abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Confins', 'MG', 'Fundamental', 171, 3812.56, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-confins-mg-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Encruzilhada do Sul - RS abre processo seletivo para cadastro reserva em diversas áreas', 'Prefeitura de Encruzilhada do Sul', 'RS', 'Fundamental', 0, 3552.97, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-encruzilhada-do-sul-rs-abre-processo-seletivo-para-cadastro-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto na Faculdade de Ciências de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-na-faculdade-de-ciencias-de-botucatu-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cândido Rodrigues - SP abre concurso público com salários de até R$ 8.862,24', 'Prefeitura de Cândido Rodrigues', 'SP', 'Fundamental', 27, 8862.24, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-candido-rodrigues-sp-abre-concurso-publico-com-salarios-de-ate-8862')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professor visitante na área de Segurança do Trabalho em Santa Luzia', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 8340.33, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professor-visitante-na-area-de-seguranca-do-trabalho-em-santa-luzia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itambaracá - PR abre seleção com salários de até R$ 6.800,00', 'Prefeitura de Itambaracá', 'PR', 'Fundamental', 6, 6800.0, true, '2026-12-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itambaraca-pr-abre-selecao-com-salarios-de-ate-6800')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rosana - SP abre processo seletivo para profissionais da educação', 'Prefeitura de Rosana', 'SP', 'Médio', 0, 3578.0, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rosana-sp-abre-processo-seletivo-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para professor substituto na área de Matemática em Rio Claro', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-professor-substituto-na-area-de-matematica-em-rio-claro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leopoldina - MG abre processo seletivo para médico veterinário', 'Prefeitura de Leopoldina', 'MG', 'Superior', 1, 3422.89, true, '2026-12-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leopoldina-mg-abre-processo-seletivo-para-medico-veterinario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canitar - SP abre concurso público para diversos cargos', 'Prefeitura de Canitar', 'SP', 'Fundamental', 12, 3077.29, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canitar-sp-abre-concurso-publico-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itu - SP abre concurso público com vagas para cuidador e educador social', 'Prefeitura da Estância Turística de Itu', 'SP', 'Médio', 5, 2738.09, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itu-sp-abre-concurso-publico-com-vagas-para-cuidador-e-educador-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Verê - PR abre seleção com 11 vagas para professores', 'Prefeitura de Verê', 'PR', 'Médio', 11, 2568.41, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vere-pr-abre-selecao-com-11-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio da Patrulha - RS abre seleção para o cargo de Cuidador Social', 'Prefeitura de Santo Antônio da Patrulha', 'RS', 'Médio', 0, 2367.2, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-da-patrulha-rs-abre-selecao-para-o-cargo-de-cuidador-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Toritama - PE abre seleção com vagas para diversos cargos', 'Prefeitura de Toritama', 'PE', 'Fundamental', 61, 1800.0, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-toritama-pe-abre-selecao-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Grão-Pará - SC abre seleção para agente de serviços gerais', 'Prefeitura de Grão-Pará', 'SC', 'Fundamental', 1, 1788.61, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-grao-para-sc-abre-selecao-para-agente-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Guataporanga - SP abre processo seletivo para professores', 'Prefeitura de Nova Guataporanga', 'SP', 'Superior', 0, 25.66, true, '2026-12-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-guataporanga-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lebon Régis - SC abre seleções com 85 vagas e salários de até R$ 24,4 mil', 'Prefeitura de Lebon Régis e Secretaria Municipal de Educação', 'SC', 'Fundamental', 85, 24488.28, true, '2026-12-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lebon-regis-sc-abre-selecoes-com-85-vagas-e-salarios-de-ate-24-4-mil')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital e Maternidade Santo Antônio - SC abre processo seletivo com 21 vagas e cadastro de reserva', 'Hospital e Maternidade Santo Antônio', 'SC', 'Fundamental', 21, 8492.43, true, '2026-12-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-e-maternidade-santo-antonio-sc-abre-processo-seletivo-com-21-vagas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araripina - PE abre 1.099 vagas em processos seletivos', 'Prefeitura de Araripina', 'PE', 'Fundamental', 1099, 16100.0, true, '2026-12-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-araripina-pe-abre-1099-vagas-em-processos-seletivos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araranguá - SC abre processos seletivos para diferentes áreas', 'Prefeitura de Araranguá', 'SC', 'Fundamental', 0, 11219.13, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ararangua-sc-abre-processos-seletivos-para-diferentes-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Altair - SP abre três editais com 41 vagas e cadastro reserva', 'Prefeitura de Altair', 'SP', 'Fundamental', 41, 11000.0, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-altair-sp-abre-tres-editais-com-41-vagas-e-cadastro-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brusque - SC abre seleção com 20 vagas e cadastro reserva na Educação', 'Prefeitura de Brusque', 'SC', 'Fundamental', 20, 5780.1, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brusque-sc-abre-selecao-com-20-vagas-e-cadastro-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Schroeder - SC abre seleção para a Secretaria Municipal de Educação', 'Prefeitura de Schroeder', 'SC', 'Fundamental', 16, 5643.69, true, '2026-12-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-schroeder-sc-abre-selecao-para-a-secretaria-municipal-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Carapicuíba - SP abre concurso público para Oficial de Manutenção e Técnico em Tecnologia da Informação', 'Câmara de Carapicuíba', 'SP', 'Médio', 2, 5295.09, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-carapicuiba-sp-abre-concurso-publico-para-oficial-de-manutencao-e-tecnico-em-tecnologia-da-informacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Joaquim - SC abre seleção para cadastro reserva em diversas áreas', 'Prefeitura de São Joaquim', 'SC', 'Fundamental', 0, 5130.63, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joaquim-sc-abre-selecao-para-cadastro-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vidal Ramos - SC abre processo seletivo para cadastro de reserva', 'Prefeitura de Vidal Ramos', 'SC', 'Fundamental', 0, 4302.78, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vidal-ramos-sc-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Feliz - RS abre processo seletivo para diversos cargos', 'Prefeitura de Feliz', 'RS', 'Fundamental', 2, 3126.59, true, '2026-12-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-feliz-rs-abre-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Miguel do Oeste - SC abre seleção para cadastro de reserva em diversas áreas', 'Prefeitura de São Miguel do Oeste', 'SC', 'Médio', 0, 26375.18, true, '2026-12-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-miguel-do-oeste-sc-abre-selecao-para-cadastro-de-reserva-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFC - CE abre concurso público para professores do magistério superior', 'UFC - Universidade Federal do Ceará', 'CE', 'Superior', 11, 13753.96, true, '2026-12-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufc-ce-abre-concurso-publico-para-professores-do-magisterio-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FURG - RS abre processo seletivo para 13 vagas de professor substituto', 'FURG - Universidade Federal do Rio Grande', 'RS', 'Superior', 13, 8340.33, true, '2026-12-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/furg-rs-abre-processo-seletivo-para-13-vagas-de-professor-substituto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Sete Barras - SP abre concurso público com salários de até R$ 7.434,85', 'Câmara de Sete Barras', 'SP', 'Médio', 3, 7434.85, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sete-barras-sp-abre-concurso-publico-com-salarios-de-ate-7434')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Biguaçu - SC abre seleções para a Secretaria de Educação', 'Prefeitura de Biguaçu', 'SC', 'Fundamental', 0, 7002.84, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-biguacu-sc-abre-selecoes-para-a-secretaria-de-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Mateus do Maranhão - MA abre três concursos públicos com diversas vagas', 'Prefeitura de São Mateus do Maranhão', 'MA', 'Fundamental', 314, 5130.65, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-mateus-do-maranhao-ma-abre-tres-concursos-publicos-com-diversas-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEMEC de Nova Serrana - MG abre processo seletivo para diversos cargos na educação', 'SEMEC - Secretaria Municipal de Educação', 'MG', 'Fundamental', 0, 4527.55, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/semec-de-nova-serrana-mg-abre-processo-seletivo-para-diversos-cargos-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Estiva Gerbi - SP abre processo seletivo para área da educação', 'Prefeitura de Estiva Gerbi', 'SP', 'Médio', 12, 3890.27, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-estiva-gerbi-sp-abre-processo-seletivo-para-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos públicos para professores doutores no Instituto de Biociências de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-publicos-para-professores-doutores-no-instituto-de-biociencias-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concursos para professores substitutos na Faculdade de Odontologia de Araçatuba', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-para-professores-substitutos-na-faculdade-de-odontologia-de-aracatuba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto na Faculdade de Engenharia em Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-na-faculdade-de-engenharia-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Inhacorá - RS abre seleção para cadastro de reserva na educação', 'Prefeitura de São José do Inhacorá', 'RS', 'Médio', 0, 3498.52, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-inhacora-rs-abre-selecao-para-cadastro-de-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre seleção para nível superior no CEPON em Florianópolis', 'FAHECE', 'SC', 'Superior', 1, 3409.85, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-selecao-para-nivel-superior-no-cepon-em-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre oito concursos públicos para professores substitutos em Marília', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 8, 3361.39, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-oito-concursos-publicos-para-professores-substitutos-em-marilia')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chopinzinho - PR abre seleção para Professor de Educação Física', 'Prefeitura de Chopinzinho', 'PR', 'Superior', 0, 2281.84, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chopinzinho-pr-abre-selecao-para-professor-de-educacao-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Presidente Venceslau - SP abre seleção para profissionais da educação', 'Prefeitura de Presidente Venceslau', 'SP', 'Médio', 0, 1621.0, true, '2026-12-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-presidente-venceslau-sp-abre-selecao-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catiguá - SP abre vagas para professores em diversas especialidades', 'Prefeitura de Catiguá', 'SP', 'Superior', 0, 25.66, true, '2026-12-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catigua-sp-abre-vagas-para-professores-em-diversas-especialidades')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaiópolis - SC abre processo seletivo para cadastro reserva em diversas áreas', 'Prefeitura de Itaiópolis', 'SC', 'Fundamental', 0, 16487.72, true, '2026-12-08'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itaiopolis-sc-abre-processo-seletivo-para-cadastro-reserva-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Parnaíba - SP abre concurso público com salários de até R$ 7.497,97', 'Prefeitura do Município de Santana de Parnaíba', 'SP', 'Fundamental', 76, 7497.97, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-parnaiba-sp-abre-concurso-publico-com-salarios-de-ate-7497')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaguaruna - SC abre concurso público com salários de até R$ 6.675,91', 'Prefeitura de Jaguaruna', 'SC', 'Fundamental', 114, 6675.91, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaguaruna-sc-abre-concurso-publico-com-salarios-de-ate-6675')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaraguá do Sul - SC abre processo seletivo para diversos cargos na educação', 'Prefeitura de Jaraguá do Sul', 'SC', 'Fundamental', 18, 5130.63, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaragua-do-sul-sc-abre-processo-seletivo-para-diversos-cargos-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Muqui - ES abre concurso público com diversas vagas', 'Prefeitura de Muqui', 'ES', 'Fundamental', 157, 4554.0, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-muqui-es-abre-concurso-publico-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre quatro concursos para professores substitutos na Faculdade de Ciências e Letras de Assis - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 5, 3511.9, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-quatro-concursos-para-professores-substitutos-na-faculdade-de-ciencias-e-letras-de-assis-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Boa Vista do Incra - RS abre concurso público para Agente Administrativo e Agente de Apoio', 'Câmara de Boa Vista do Incra', 'RS', 'Médio', 2, 2072.69, true, '2026-12-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-boa-vista-do-incra-rs-abre-concurso-publico-para-agente-administrativo-e-agente-de-apoio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Patrocínio Paulista - SP divulga editais de concurso público e processo seletivo', 'Prefeitura de Patrocínio Paulista', 'SP', 'Fundamental', 2, 21296.07, true, '2026-12-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-patrocinio-paulista-sp-divulga-editais-de-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unilab - CE abre concurso público com vagas para professores do magistério superior', 'Unilab - Universidade da Integração Internacional da Lusofonia Afro-Brasileira', 'CE', 'Superior', 16, 13753.96, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unilab-ce-abre-concurso-publico-com-vagas-para-professores-do-magisterio-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Antônio Prado - RS abre concurso público com salários de até R$ 10.352,30', 'Prefeitura de Antônio Prado', 'RS', 'Fundamental', 21, 10352.3, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-antonio-prado-rs-abre-concurso-publico-com-salarios-de-ate-10352')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unifesp - SP abre vaga para professor substituto de Terapia Ocupacional no campus da Baixada Santista', 'Unifesp - Universidade Federal de São Paulo', 'SP', 'Superior', 1, 6157.29, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifesp-sp-abre-vaga-para-professor-substituto-de-terapia-ocupacional-no-campus-da-baixada-santista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fhemig - MG abre processo seletivo para biomédicos, farmacêuticos e fonoaudiólogos', 'Fhemig - Fundação Hospitalar do Estado de Minas Gerais', 'MG', 'Superior', 10, 6145.37, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fhemig-mg-abre-processo-seletivo-para-biomedicos-farmaceuticos-e-fonoaudiologos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Águas de Chapecó - SC abre concurso com salários de até R$ 5.147,24', 'Prefeitura de Águas de Chapecó', 'SC', 'Médio', 2, 5147.24, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aguas-de-chapeco-sc-abre-concurso-com-salarios-de-ate-5147')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Águas de Chapecó - SC abre processo seletivo para a área da educação', 'Secretaria de Educação e Cultura do Município de Águas de Chapecó', 'SC', 'Médio', 0, 5147.24, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aguas-de-chapeco-sc-abre-processo-seletivo-para-a-area-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Blumenau - SC abre concurso com 19 vagas e cadastro de reserva no magistério', 'Prefeitura de Blumenau', 'SC', 'Superior', 19, 5130.63, true, '2026-12-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-blumenau-sc-abre-concurso-com-19-vagas-e-cadastro-de-reserva-no-magisterio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor substituto na Faculdade de Ciências Farmacêuticas de Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-12-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-substituto-na-faculdade-de-ciencias-farmaceuticas-de-araraquara-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lutécia - SP abre concurso e processo seletivo para cadastro reserva', 'Prefeitura de Lutécia', 'SP', 'Médio', 0, 15538.96, true, '2026-12-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lutecia-sp-abre-concurso-e-processo-seletivo-para-cadastro-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFV - MG abre concurso público para professor de Ensino de Geografia', 'UFV - Universidade Federal de Viçosa', 'MG', 'Superior', 1, 13753.96, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufv-mg-abre-concurso-publico-para-professor-de-ensino-de-geografia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMMG abre concurso com 90 vagas para o Curso de Formação de Oficiais', 'PMMG - Polícia Militar de Minas Gerais', 'MG', 'Superior', 90, 12170.61, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/pmmg-abre-concurso-com-90-vagas-para-o-curso-de-formacao-de-oficiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juazeiro do Norte - CE abre processo seletivo para a Secretaria de Saúde', 'Prefeitura de Juazeiro do Norte', 'CE', 'Fundamental', 672, 12000.0, true, '2026-12-10'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juazeiro-do-norte-ce-abre-processo-seletivo-para-a-secretaria-de-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Osasco - SP abre seleção com salários de até R$ 6.781,42', 'Prefeitura do Município de Osasco', 'SP', 'Médio', 23, 6781.42, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-osasco-sp-abre-selecao-com-salarios-de-ate-6781')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Praia Grande - SP abre concurso público para professores', 'Município da Estância Balneária de Praia Grande', 'SP', 'Superior', 23, 6573.49, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-praia-grande-sp-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canarana - MT abre processo seletivo para professores', 'Prefeitura de Canarana', 'MT', 'Superior', 0, 5771.98, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canarana-mt-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Santa Casa de Dracena - SP abre processo seletivo com salários de até R$ 5.231,08', 'Irmandade da Santa Casa de Misericórdia e Maternidade de Dracena', 'SP', 'Médio', 15, 5231.08, true, '2026-12-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/santa-casa-de-dracena-sp-abre-processo-seletivo-com-salarios-de-ate-5231')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unesp - SP abre vagas para professor substituto em Botucatu', 'Unesp - Universidade Estadual Paulista', 'SP', 'Superior', 2, 3511.9, true, '2026-12-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-vagas-para-professor-substituto-em-botucatu')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professores substitutos no campus Bambuí', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 3, 15964.45, true, '2026-12-11'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professores-substitutos-no-campus-bambui')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Corpo de Bombeiros Militar - PB: Concurso abre vagas para Curso de Formação de Oficiais', 'CBMPB - Corpo de Bombeiros Militar da Paraíba', 'PB', 'Superior', 20, 11142.96, true, '2026-12-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/corpo-de-bombeiros-militar-pb-concurso-abre-vagas-para-curso-de-formacao-de-oficiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Banestes - ES abre concurso público para cargos de nível superior', 'Banestes - Banco do Estado do Espírito Santo', 'ES', 'Superior', 0, 6393.38, true, '2026-12-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/banestes-es-abre-concurso-publico-para-cargos-de-nivel-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Banestes Corretora - ES abre concurso para assistente securitário', 'Banescor - Banestes Corretora', 'ES', 'Médio', 0, 4444.43, true, '2026-12-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/banestes-corretora-es-abre-concurso-para-assistente-securitario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concursos para professores substitutos em Ilha Solteira', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-12-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-para-professores-substitutos-em-ilha-solteira')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Japaraíba - MG abre seleções com nove vagas e salários de até R$ 3.227,60', 'Prefeitura de Japaraíba', 'MG', 'Fundamental', 9, 3227.6, true, '2026-12-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-japaraiba-mg-abre-selecoes-com-nove-vagas-e-salarios-de-ate-3227')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Natércia - MG abre concurso público para Auxiliar de Serviços Gerais e Oficial Legislativo', 'Câmara de Natércia', 'MG', 'Fundamental', 1, 1668.22, true, '2026-12-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-natercia-mg-abre-concurso-publico-para-auxiliar-de-servicos-gerais-e-oficial-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Palmitos - SC abre processo seletivo com salários de até R$ 26.258,84', 'Prefeitura de Palmitos', 'SC', 'Fundamental', 0, 26258.84, true, '2026-12-12'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-palmitos-sc-abre-processo-seletivo-com-salarios-de-ate-26258')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Natuba - PB abre concurso público para diversos cargos', 'Prefeitura de Natuba', 'PB', 'Fundamental', 141, 3988.96, true, '2026-12-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-natuba-pb-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Alto do Rodrigues - RN abre concurso público com 12 vagas', 'Câmara de Alto do Rodrigues', 'RN', 'Fundamental', 12, 2500.0, true, '2026-12-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-alto-do-rodrigues-rn-abre-concurso-publico-com-12-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Polícia Civil do Estado do Acre (PCAC) e SEAD - AC abrem concurso público com salários de até R$ 19.505,66', 'PCAC - Polícia Civil do Estado do Acre', 'AC', 'Superior', 139, 19505.66, true, '2026-12-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/policia-civil-do-estado-do-acre-pcac-e-sead-ac-abrem-concurso-publico-com-salarios-de-ate-19505')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente de Arquitetura e Urbanismo em Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-12-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-arquitetura-e-urbanismo-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público com salários de até R$ 14.000,00', 'Prefeitura de Anchieta', 'ES', 'Médio', 25, 14000.0, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-com-salarios-de-ate-14000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IMA - SC abre concurso público com salários de até R$ 12.300,00', 'IMA - Instituto do Meio Ambiente do Estado de Santa Catarina', 'SC', 'Médio', 18, 12300.0, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ima-sc-abre-concurso-publico-com-salarios-de-ate-12300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAA MS abre processo seletivo com salários de até R$ 10.354,29', 'Ministério da Saúde', 'Nacional', 'Superior', 300, 10354.29, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saa-ms-abre-processo-seletivo-com-salarios-de-ate-10354')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CETESB - SP abre concursos públicos para diversos cargos', 'CETESB - Companhia Ambiental do Estado de São Paulo', 'SP', 'Médio', 107, 8971.98, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cetesb-sp-abre-concursos-publicos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tapiraí - SP abre concurso público com salários de até R$ 7.991,27', 'Prefeitura de Tapiraí', 'SP', 'Fundamental', 24, 7991.27, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tapirai-sp-abre-concurso-publico-com-salarios-de-ate-7991')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público com salários de até R$ 7.362,50', 'Prefeitura de Anchieta', 'ES', 'Médio', 33, 7362.5, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-com-salarios-de-ate-7362')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unesp - SP abre concursos para professor substituto em Araçatuba', 'Unesp - Universidade Estadual Paulista', 'SP', 'Superior', 2, 3511.9, true, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-para-professor-substituto-em-aracatuba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Alegre - RS abre seleção para Programa de Residência Técnico-Superior', 'Prefeitura de Porto Alegre', 'RS', 'Superior', 37, 2500.0, true, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-alegre-rs-abre-selecao-para-programa-de-residencia-tecnico-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Prata - MG abre seleção para cadastro de reserva de professores', 'Prefeitura de Prata', 'MG', 'Superior', 0, NULL, false, '2026-12-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-prata-mg-abre-selecao-para-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaratinguetá - SP abre concurso público com salários de até R$ 18.540,71', 'Prefeitura da Estância Turística de Guaratinguetá', 'SP', 'Fundamental', 107, 18540.71, true, '2026-12-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaratingueta-sp-abre-concurso-publico-com-salarios-de-ate-18540')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvinópolis - MG publica retificações de concurso público com salários de até R$ 17.954,23', 'Prefeitura de Alvinópolis', 'MG', 'Fundamental', 172, 17954.23, true, '2026-12-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvinopolis-mg-publica-retificacoes-de-concurso-publico-com-salarios-de-ate-17954')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPREJUN de Jundiaí - SP abre concurso público com salários de até R$ 15.123,99', 'IPREJUN - Instituto de Previdência do Município de Jundiaí', 'SP', 'Médio', 4, 15123.99, true, '2026-12-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/iprejun-de-jundiai-sp-abre-concurso-publico-com-salarios-de-ate-15123')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vargem Grande do Sul - SP abre concurso público com salários de até R$ 10.788,32', 'Prefeitura de Vargem Grande do Sul', 'SP', 'Médio', 2, 10788.32, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vargem-grande-do-sul-sp-abre-concurso-publico-com-salarios-de-ate-10788')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professor visitante de Educação Física em Ouro Branco', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 1, 8340.33, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professor-visitante-de-educacao-fisica-em-ouro-branco')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Parnaíba - SP abre concurso para vice-diretor de escola', 'Prefeitura do Município de Santana de Parnaíba', 'SP', 'Superior', 2, 6020.35, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-parnaiba-sp-abre-concurso-para-vice-diretor-de-escola')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor assistente de cirurgia pediátrica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 5530.48, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-assistente-de-cirurgia-pediatrica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso para professor assistente na área de Anatomia Patológica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 2, 5236.22, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-para-professor-assistente-na-area-de-anatomia-patologica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Gonçalo - RJ abre concursos para Guardas Municipais', 'Prefeitura de São Gonçalo', 'RJ', 'Médio', 101, 4535.54, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-goncalo-rj-abre-concursos-para-guardas-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canelinha - SC abre novo concurso público para diversos cargos', 'Prefeitura de Canelinha', 'SC', 'Fundamental', 27, 4182.55, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canelinha-sc-abre-novo-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre três concursos públicos para professores substitutos em Rio Claro', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-tres-concursos-publicos-para-professores-substitutos-em-rio-claro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USCS - SP abre concurso público para cadastro de reserva de professores do ensino médio e técnico', 'USCS - Universidade Municipal de São Caetano do Sul', 'SP', 'Superior', 0, 27.0, true, '2026-12-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uscs-sp-abre-concurso-publico-para-cadastro-de-reserva-de-professores-do-ensino-medio-e-tecnico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Inúbia Paulista - SP abre concurso público e processo seletivo para diversos cargos', 'Prefeitura de Inúbia Paulista', 'SP', 'Fundamental', 0, 14980.0, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-inubia-paulista-sp-abre-concurso-publico-e-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Defesa Social e de Administração - PE retificam concurso para a Polícia Civil', 'PC - Polícia Civil', 'PE', 'Superior', 1315, 13560.0, true, '2026-12-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/secretaria-de-defesa-social-e-de-administracao-pe-retificam-concurso-para-a-policia-civil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curitibanos - SC abre concurso público com salários de até R$ 13.096,78', 'Prefeitura do Município de Curitibanos', 'SC', 'Fundamental', 14, 13096.78, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curitibanos-sc-abre-concurso-publico-com-salarios-de-ate-13096')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Italva - RJ abre concurso público com salários de até R$ 12.132,37', 'Prefeitura de Italva', 'RJ', 'Médio', 137, 12132.37, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-italva-rj-abre-concurso-publico-com-salarios-de-ate-12132')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Baía da Traição - PB abre concurso público com vagas em diversos cargos', 'Prefeitura de Baía da Traição', 'PB', 'Fundamental', 117, 10000.0, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-baia-da-traicao-pb-abre-concurso-publico-com-vagas-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itararé - SP abre processo seletivo para profissionais da educação com salários de até R$ 5.905,92', 'Prefeitura de Itararé', 'SP', 'Médio', 0, 5905.92, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itarare-sp-abre-processo-seletivo-para-profissionais-da-educacao-com-salarios-de-ate-5905')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pinheiro Machado - RS abre concurso público para Motorista e Servente', 'Câmara de Vereadores de Pinheiro Machado', 'RS', 'Fundamental', 2, 1816.88, true, '2026-12-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-pinheiro-machado-rs-abre-concurso-publico-para-motorista-e-servente')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Associação das Pioneiras Sociais abre processo seletivo para analista de tecnologia da informação', 'APS - Associação das Pioneiras Sociais', 'Nacional', 'Superior', 11, 14972.56, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/associacao-das-pioneiras-sociais-abre-processo-seletivo-para-analista-de-tecnologia-da-informacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Associação das Pioneiras Sociais (APS) abre processo seletivo para estatístico', 'APS - Associação das Pioneiras Sociais', 'DF', 'Superior', 2, 14700.93, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/associacao-das-pioneiras-sociais-aps-abre-processo-seletivo-para-estatistico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SP-Águas - SP abre concurso público com salários de até R$ 12.070,00', 'SP-Águas - Agência de Águas do Estado de São Paulo', 'SP', 'Superior', 190, 12070.0, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sp-aguas-sp-abre-concurso-publico-com-salarios-de-ate-12070')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Terminais Aéreos de Maringá - PR abrem concurso público com salários de até R$ 9.921,22', 'SBMG S.A. - Terminais Aéreos de Maringá', 'PR', 'Médio', 5, 9921.22, true, '2026-12-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/terminais-aereos-de-maringa-pr-abrem-concurso-publico-com-salarios-de-ate-9921')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRP 05 - RJ abre concurso público com salários de até R$ 7.313,35', 'CRP/05 - Conselho Regional de Psicologia da 5ª Região', 'RJ', 'Médio', 37, 7313.35, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crp-05-rj-abre-concurso-publico-com-salarios-de-ate-7313')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cachoeiro de Itapemirim - ES abre concurso público com salários de até R$ 7.046,62', 'Câmara de Cachoeiro de Itapemirim', 'ES', 'Superior', 15, 7046.62, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-cachoeiro-de-itapemirim-es-abre-concurso-publico-com-salarios-de-ate-7046')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cubatão - SP abre concurso público para assistente social', 'Prefeitura de Cubatão', 'SP', 'Superior', 0, 5565.0, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cubatao-sp-abre-concurso-publico-para-assistente-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISPAR - MG abre concurso público para profissionais de nível superior', 'CISPAR - Consórcio Público Intermunicipal de Desenvolvimento Sustentável do Alto Paranaíba', 'MG', 'Superior', 11, 4786.59, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cispar-mg-abre-concurso-publico-para-profissionais-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Firme - MG abre novo concurso público com salários de até R$ 3.873,30', 'Prefeitura de Porto Firme', 'MG', 'Fundamental', 19, 3873.3, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-firme-mg-abre-novo-concurso-publico-com-salarios-de-ate-3873')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carmo da Cachoeira - MG abre seleção para agentes de saúde e de endemias', 'Prefeitura de Carmo da Cachoeira', 'MG', 'Médio', 2, 3242.0, true, '2026-12-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carmo-da-cachoeira-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Fundação Cultural de São Bento do Sul - SC abrem processo seletivo com salários de até R$ 20.795,15', 'Prefeitura de São Bento do Sul e Fundação Cultural de São Bento do Sul', 'SC', 'Fundamental', 6, 20795.15, true, '2026-12-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-fundacao-cultural-de-sao-bento-do-sul-sc-abrem-processo-seletivo-com-salarios-de-ate-20795')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCE - ES abre processo seletivo com vagas na área de tecnologia', 'TCEES - Tribunal de Contas do Estado do Espírito Santo', 'ES', 'Superior', 16, 17645.21, true, '2026-12-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tce-es-abre-processo-seletivo-com-vagas-na-area-de-tecnologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRA - PA abre concurso público para professores do magistério superior', 'UFRA - Universidade Federal Rural da Amazônia', 'PA', 'Superior', 57, 13733.96, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufra-pa-abre-concurso-publico-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIM-AMFRI - SC abre processo seletivo para profissionais de nível superior', 'CIM-AMFRI - Consórcio Intermunicipal Multifinalitário da Região da AMFRI', 'SC', 'Superior', 0, 11569.13, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cim-amfri-sc-abre-processo-seletivo-para-profissionais-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sede Nova - RS abre concurso público e processo seletivo com diversas vagas', 'Prefeitura de Sede Nova', 'RS', 'Fundamental', 45, 9339.29, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sede-nova-rs-abre-concurso-publico-e-processo-seletivo-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Custódia - PE abre concurso público com diversas vagas', 'Prefeitura de Custódia', 'PE', 'Fundamental', 384, 8000.0, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-custodia-pe-abre-concurso-publico-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque do Canaã - ES abre concurso público com salários de até R$ 6.723,72', 'Prefeitura de São Roque do Canaã', 'ES', 'Fundamental', 114, 6723.72, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-do-canaa-es-abre-concurso-publico-com-salarios-de-ate-6723')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Paraíso do Tocantins - TO retifica concurso público com salários de até R$ 6.244,07', 'Câmara de Paraíso do Tocantins', 'TO', 'Fundamental', 14, 6244.07, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-paraiso-do-tocantins-to-retifica-concurso-publico-com-salarios-de-ate-6244')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SMS de São Miguel do Guamá - PA abre seleção com 85 vagas para agente de saúde', 'SMS - Secretaria Municipal de Saúde de São Miguel do Guamá', 'PA', 'Médio', 19, 3242.0, true, '2026-12-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sms-de-sao-miguel-do-guama-pa-abre-selecao-com-85-vagas-para-agente-de-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre processo seletivo para professores substitutos no campus Dois Vizinhos', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 2, 8340.33, true, '2026-12-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-processo-seletivo-para-professores-substitutos-no-campus-dois-vizinhos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Iepê - SP abre concurso com salários de até R$ 6.520,36', 'Prefeitura de Iepê', 'SP', 'Fundamental', 5, 6520.36, true, '2026-12-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-iepe-sp-abre-concurso-com-salarios-de-ate-6520')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Urânia - SP abre concurso público com salários de até R$ 4.252,53', 'Prefeitura de Urânia', 'SP', 'Fundamental', 3, 4252.53, true, '2026-12-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-urania-sp-abre-concurso-publico-com-salarios-de-ate-4252')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João de Meriti - RJ abre concurso público para professores', 'Prefeitura de São João de Meriti', 'RJ', 'Médio', 649, 3078.38, true, '2026-12-20'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-de-meriti-rj-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Águas Frias - SC abre concurso para Tesoureiro, Contador e Controle Interno', 'Câmara de Águas Frias', 'SC', 'Médio', 3, 2903.27, true, '2026-12-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-aguas-frias-sc-abre-concurso-para-tesoureiro-contador-e-controle-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Praia Grande - SP abre concurso público para diversos cargos', 'Município da Estância Balneária de Praia Grande', 'SP', 'Fundamental', 33, 25000.0, true, '2026-12-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-praia-grande-sp-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catiguá - SP abre concurso público com salários de até R$ 14.750,00', 'Prefeitura de Catiguá', 'SP', 'Fundamental', 36, 14750.0, true, '2026-12-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catigua-sp-abre-concurso-publico-com-salarios-de-ate-14750')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE de Águas de Lindóia - SP abre concurso com salários de até R$ 6.112,00', 'SAAE - Saneamento Ambiental de Águas de Lindóia', 'SP', 'Fundamental', 7, 6112.0, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saae-de-aguas-de-lindoia-sp-abre-concurso-com-salarios-de-ate-6112')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Adolfo - SP abre concurso público para o cargo de contador', 'Prefeitura de Adolfo', 'SP', 'Superior', 1, 5710.25, true, '2026-12-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-adolfo-sp-abre-concurso-publico-para-o-cargo-de-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sengés - PR abre concurso público para Guarda Civil Municipal', 'Prefeitura de Sengés', 'PR', 'Médio', 13, 5097.76, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-senges-pr-abre-concurso-publico-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFFar - RS abre concurso público com vagas para diversas áreas', 'IFFar - Instituto Federal de Educação, Ciência e Tecnologia Farroupilha', 'RS', 'Médio', 30, 4976.27, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/iffar-rs-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cravinhos - SP abre processo seletivo para professores', 'Prefeitura de Cravinhos', 'SP', 'Superior', 0, 3972.0, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cravinhos-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Angra dos Reis - RJ abre concurso público com 200 vagas para Guarda Civil Municipal', 'Prefeitura de Angra dos Reis', 'RJ', 'Médio', 200, 3872.27, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-angra-dos-reis-rj-abre-concurso-publico-com-200-vagas-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapecerica da Serra - SP abre concurso público para Pedreiro', 'Prefeitura do Município de Itapecerica da Serra', 'SP', 'Médio', 1, 2250.49, true, '2026-12-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapecerica-da-serra-sp-abre-concurso-publico-para-pedreiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMT - MT abre concurso público para professores do magistério superior', 'UFMT - Universidade Federal de Mato Grosso', 'MT', 'Superior', 4, 14288.85, true, '2026-12-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufmt-mt-abre-concurso-publico-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFS - SE abre concurso para Professor Titular-Livre', 'UFS - Fundação Universidade Federal de Sergipe', 'SE', 'Superior', 2, 14081.78, true, '2026-12-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufs-se-abre-concurso-para-professor-titular-livre')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPA - SP abre concurso público para pesquisadores científicos', 'IPA - Instituto de Pesquisas Ambientais', 'SP', 'Superior', 98, 9052.47, true, '2026-12-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipa-sp-abre-concurso-publico-para-pesquisadores-cientificos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tio Hugo - RS abre concurso público para o cargo de Tesoureiro', 'Prefeitura de Tio Hugo', 'RS', 'Superior', 1, 5573.07, true, '2026-12-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tio-hugo-rs-abre-concurso-publico-para-o-cargo-de-tesoureiro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Saquarema - RJ abre seleção para agentes de saúde e endemias', 'Prefeitura de Saquarema', 'RJ', 'Médio', 217, 3242.0, true, '2026-12-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-saquarema-rj-abre-selecao-para-agentes-de-saude-e-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Munhoz - MG abre concurso público para cargos de nível superior', 'Prefeitura de Munhoz', 'MG', 'Superior', 6, 1621.0, true, '2026-12-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-munhoz-mg-abre-concurso-publico-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapadão do Lageado - SC abre processo seletivo com salários de até R$ 21.291,71', 'Prefeitura de Chapadão do Lageado', 'SC', 'Fundamental', 9, 21291.71, true, '2026-12-23'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapadao-do-lageado-sc-abre-processo-seletivo-com-salarios-de-ate-21291')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Miguel dos Milagres - AL abre concurso com 232 vagas e salários de até R$ 10 mil', 'Prefeitura de São Miguel dos Milagres', 'AL', 'Fundamental', 232, 10000.0, true, '2026-12-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-miguel-dos-milagres-al-abre-concurso-com-232-vagas-e-salarios-de-ate-10-mil')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFG - GO abre concurso público para técnicos-administrativos em educação', 'IFG - Instituto Federal de Educação, Ciência e Tecnologia de Goiás', 'GO', 'Médio', 36, 5215.39, true, '2026-12-23'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ifg-go-abre-concurso-publico-para-tecnicos-administrativos-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Tomás de Aquino - MG abre vagas para Secretaria de Desenvolvimento Social', 'Prefeitura de São Tomás de Aquino', 'MG', 'Médio', 4, 2664.25, true, '2026-12-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-tomas-de-aquino-mg-abre-vagas-para-secretaria-de-desenvolvimento-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Palmital - PR abre concurso público com salários de até R$ 22.836,51', 'Prefeitura de Palmital', 'PR', 'Fundamental', 126, 22836.51, true, '2026-12-27'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-palmital-pr-abre-concurso-publico-com-salarios-de-ate-22836')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itupeva - SP abre concurso com salários de até R$ 13.289,01', 'Prefeitura de Itupeva', 'SP', 'Fundamental', 72, 13289.01, true, '2026-12-27'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itupeva-sp-abre-concurso-com-salarios-de-ate-13289')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ribeirão Corrente - SP abre processo seletivo para diversos cargos', 'Prefeitura de Ribeirão Corrente', 'SP', 'Fundamental', 0, 5798.33, true, '2026-12-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ribeirao-corrente-sp-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Picuí - PB abre concurso público com salários de até R$ 3.900,00', 'Câmara de Picuí', 'PB', 'Fundamental', 7, 3900.0, true, '2026-12-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-picui-pb-abre-concurso-publico-com-salarios-de-ate-3900')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pilar do Sul - SP abre concurso público com salários de até R$ 6.593,75', 'Prefeitura de Pilar do Sul', 'SP', 'Fundamental', 5, 6593.75, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pilar-do-sul-sp-abre-concurso-publico-com-salarios-de-ate-6593')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piraquara - PR abre concurso com 50 vagas para professores', 'Prefeitura de Piraquara', 'PR', 'Médio', 50, 2565.32, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piraquara-pr-abre-concurso-com-50-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Marabá - PA abre concurso público para Guarda Municipal', 'Prefeitura de Marabá', 'PA', 'Médio', 60, 2076.4, true, '2026-12-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maraba-pa-abre-concurso-publico-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ipubi - PE abre concurso público com 7 vagas imediatas', 'Câmara de Ipubi', 'PE', 'Fundamental', 7, 1700.0, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-ipubi-pe-abre-concurso-publico-com-7-vagas-imediatas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor assistente na área de Manejo Florestal em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2027-01-04'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-assistente-na-area-de-manejo-florestal-em-botucatu-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Braço do Trombudo - SC abre concurso com salários de até R$ 8.981,90', 'Prefeitura de Braço do Trombudo', 'SC', 'Fundamental', 1, 8981.9, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-braco-do-trombudo-sc-abre-concurso-com-salarios-de-ate-8981')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSP abre concurso público para cargos técnico-administrativos', 'IFSP - Instituto Federal de Educação, Ciência e Tecnologia de São Paulo', 'SP', 'Médio', 6, 5215.39, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifsp-abre-concurso-publico-para-cargos-tecnico-administrativos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor substituto de Matemática no campus de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-substituto-de-matematica-no-campus-de-botucatu-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tijucas - SC abre concursos públicos com salários de até R$ 9.941,61', 'Prefeitura de Tijucas', 'SC', 'Fundamental', 97, 9941.61, true, '2027-01-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tijucas-sc-abre-concursos-publicos-com-salarios-de-ate-9941')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso público para professor titular na Faculdade de Engenharia de Bauru', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2027-01-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-publico-para-professor-titular-na-faculdade-de-engenharia-de-bauru')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Gurjão - PB abre concurso público com 40 vagas e salários de até R$ 14.000,00', 'Prefeitura de Gurjão', 'PB', 'Fundamental', 42, 14000.0, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-gurjao-pb-abre-concurso-publico-com-40-vagas-e-salarios-de-ate-14000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra do Garças - MT abre concurso público para médicos', 'Prefeitura de Barra do Garças', 'MT', 'Superior', 6, 13800.0, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-do-garcas-mt-abre-concurso-publico-para-medicos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra do Garças - MT abre concurso público com vagas na educação', 'Prefeitura de Barra do Garças', 'MT', 'Médio', 387, 5771.96, true, '2027-01-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-do-garcas-mt-abre-concurso-publico-com-vagas-na-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para professor titular no Instituto de Ciência e Tecnologia de Sorocaba', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2027-01-08'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-professor-titular-no-instituto-de-ciencia-e-tecnologia-de-sorocaba')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campinas - SP abre 100 vagas para Guarda Municipal de 3ª Classe', 'Prefeitura de Campinas', 'SP', 'Médio', 100, 3796.61, true, '2027-01-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campinas-sp-abre-100-vagas-para-guarda-municipal-de-3-classe')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mirante do Paranapanema - SP abre seleção para profissionais da educação', 'Prefeitura de Mirante do Paranapanema', 'SP', 'Médio', 0, 25.65, true, '2027-01-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mirante-do-paranapanema-sp-abre-selecao-para-profissionais-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unesp - SP: Concurso Público oferece vaga para professor titular com salário de R$ 25.261,98', 'Unesp - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 25261.98, true, '2027-01-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-sp-concurso-publico-oferece-vaga-para-professor-titular-com-salario-de-25261')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São José do Alegre - MG abre concurso para Controlador Interno', 'Câmara de São José do Alegre', 'MG', 'Superior', 1, 3131.31, true, '2027-01-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-jose-do-alegre-mg-abre-concurso-para-controlador-interno')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto no Instituto de Medicina Social', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2027-01-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-no-instituto-de-medicina-social')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Campo Limpo de Goiás - GO anunciam concurso público com diversas vagas', 'Prefeitura de Campo Limpo de Goiás e Câmara de Campo Limpo de Goiás', 'GO', 'Fundamental', 105, 4042.61, true, '2027-01-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-campo-limpo-de-goias-go-anunciam-concurso-publico-com-diversas-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAD - MA abre concurso público com salários de até R$ 14.950,78', 'SEAD - Secretaria de Estado da Administração', 'MA', 'Médio', 2317, 14950.78, true, '2027-01-29'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sead-ma-abre-concurso-publico-com-salarios-de-ate-14950')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Estrela do Sul - MG abre concurso público com sete vagas', 'Câmara de Estrela do Sul', 'MG', 'Fundamental', 7, 2250.0, true, '2027-02-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-estrela-do-sul-mg-abre-concurso-publico-com-sete-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Seduc - SP abre concurso público com 5.000 vagas para professores de ensino fundamental e médio', 'Seduc - Secretaria da Educação do Estado de São Paulo', 'SP', 'Superior', 5000, 5565.0, true, '2027-02-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/seduc-sp-abre-concurso-publico-com-5000-vagas-para-professores-de-ensino-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Olímpio Noronha - MG abre seleção para Agente Comunitário de Saúde', 'Prefeitura de Olímpio Noronha', 'MG', 'Médio', 3, 3242.0, true, '2027-02-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-olimpio-noronha-mg-abre-selecao-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Ponte - MG abre concurso público para docentes', 'Prefeitura de Nova Ponte', 'MG', 'Superior', 89, 2862.85, true, '2027-02-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-ponte-mg-abre-concurso-publico-para-docentes')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESC - SC abre processo seletivo para mestrado em Ciência e Engenharia de Materiais com oferta de bolsas', 'UNESC - Universidade do Extremo Sul Catarinense', 'SC', 'Superior', 25, NULL, false, '2027-02-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesc-sc-abre-processo-seletivo-para-mestrado-em-ciencia-e-engenharia-de-materiais-com-oferta-de-bolsas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESC - SC abre processo seletivo para doutorado em Ciência e Engenharia de Materiais', 'UNESC - Universidade do Extremo Sul Catarinense', 'SC', 'Superior', 21, NULL, false, '2027-02-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesc-sc-abre-processo-seletivo-para-doutorado-em-ciencia-e-engenharia-de-materiais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP Bauru - SP abre concursos para 22 vagas de professor titular', 'FMB-USP - Faculdade de Medicina de Bauru da Universidade de São Paulo', 'SP', 'Superior', 22, 25261.98, true, '2027-06-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-bauru-sp-abre-concursos-para-22-vagas-de-professor-titular')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
