-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.
-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)
-- Coletado em: 2026-09-12T19:30:23.205704Z
-- Linhas: 530
--
-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,
-- então reaplicar atualiza a linha em vez de duplicar.

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;

INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto com doutorado em Assis - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-09-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-com-doutorado-em-assis-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Frei Rogério - SC divulga retificações de processo seletivo', 'Prefeitura de Frei Rogério', 'SC', 'Fundamental', 0, 36619.86, true, '2026-09-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-frei-rogerio-sc-divulga-retificacoes-de-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('RioSaúde - RJ abre processo seletivo para a contratação de médicos', 'RioSaúde - Empresa Pública de Saúde do Rio de Janeiro S/A', 'RJ', 'Superior', 23, 17151.28, true, '2026-09-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/riosaude-rj-abre-processo-seletivo-para-a-contratacao-de-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Polícia Civil - BA prorroga inscrições do concurso público para Delegado, Investigador e Escrivão', 'PCBA - Polícia Civil da Bahia', 'BA', 'Superior', 750, 16495.67, true, '2026-09-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/policia-civil-ba-prorroga-inscricoes-do-concurso-publico-para-delegado-investigador-e-escrivao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Parnaíba - SP abre concursos para médicos e agentes de trânsito', 'Prefeitura de Santana de Parnaíba', 'SP', 'Médio', 21, 14975.66, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-parnaiba-sp-abre-concursos-para-medicos-e-agentes-de-transito')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Altaneira - CE publica edital de seleção pública com vagas imediatas e cadastro de reserva', 'Prefeitura de Altaneira', 'CE', 'Médio', 65, 13800.0, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-altaneira-ce-publica-edital-de-selecao-publica-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre concurso público para o cargo de Professor do Magistério Superior', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 6, 13288.85, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-concurso-publico-para-o-cargo-de-professor-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cuité de Mamanguape - PB retifica concurso público com salários de até R$ 11.975,00', 'Prefeitura de Cuité de Mamanguape', 'PB', 'Fundamental', 117, 11975.0, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cuite-de-mamanguape-pb-retifica-concurso-publico-com-salarios-de-ate-11975')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Relvado - RS abre concurso para diversos cargos com salários de até R$ 8.297,67', 'Prefeitura de Relvado', 'RS', 'Médio', 1, 8297.67, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-relvado-rs-abre-concurso-para-diversos-cargos-com-salarios-de-ate-8297')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro de Alcântara - SC abre concurso com salários de até R$ 6.460,50', 'Prefeitura de São Pedro de Alcântara', 'SC', 'Fundamental', 2, 6460.5, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-de-alcantara-sc-abre-concurso-com-salarios-de-ate-6460')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPI abre concurso público para cargos técnico-administrativos em educação', 'IFPI - Instituto Federal de Educação, Ciência e Tecnologia do Piauí', 'PI', 'Médio', 52, 6407.39, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpi-abre-concurso-publico-para-cargos-tecnico-administrativos-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conquista D''Oeste - MT abre processo seletivo com salários de até R$ 5.915,21', 'Prefeitura de Conquista D''Oeste', 'MT', 'Fundamental', 2, 5915.21, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conquista-doeste-mt-abre-processo-seletivo-com-salarios-de-ate-5915')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EMDAEP de Dracena - SP abre concurso com vagas imediatas e cadastro de reserva', 'EMDAEP - Empresa de Desenvolvimento, Água, Esgoto e Pavimentação de Dracena', 'SP', 'Fundamental', 9, 5604.96, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/emdaep-de-dracena-sp-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barretos - SP abre processo seletivo para a Secretaria de Saúde', 'Prefeitura do Município da Estância Turística de Barretos', 'SP', 'Superior', 0, 5595.22, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barretos-sp-abre-processo-seletivo-para-a-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pontalinda - SP reabre inscrições do processo seletivo para professores', 'Prefeitura de Pontalinda', 'SP', 'Superior', 0, 4238.06, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pontalinda-sp-reabre-inscricoes-do-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC anuncia processo seletivo para Técnico de Enfermagem no CEPON de Florianópolis', 'FAHECE - Fundação de Apoio ao Hemosc e Cepon', 'SC', 'Médio', 1, 3373.61, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-anuncia-processo-seletivo-para-tecnico-de-enfermagem-no-cepon-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Abaetetuba - PA divulga nova retificação de concurso público', 'Prefeitura de Abaetetuba', 'PA', 'Fundamental', 342, 3242.0, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-abaetetuba-pa-divulga-nova-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fortaleza - CE e IMPARH abrem seleções com vagas imediatas e para cadastro de reserva', 'SDHDS - Secretaria Municipal dos Direitos Humanos e Desenvolvimento Social de Fortaleza', 'CE', 'Médio', 14, 3090.18, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fortaleza-ce-e-imparh-abrem-selecoes-com-vagas-imediatas-e-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAMU 192 - ES publica edital de processo seletivo para Condutor Socorrista', 'SAMU 192/ES - Irmandade da Santa Casa de Misericórdia de Vitória', 'ES', 'Médio', 0, 2655.67, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/samu-192-es-publica-edital-de-processo-seletivo-para-condutor-socorrista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processos seletivos para assistentes administrativos no CEPON de Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Médio', 2, 2519.21, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processos-seletivos-para-assistentes-administrativos-no-cepon-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leopoldina - MG abre seleção para Cuidador e Auxiliar de Enfermagem', 'Prefeitura de Leopoldina', 'MG', 'Médio', 2, 2060.32, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leopoldina-mg-abre-selecao-para-cuidador-e-auxiliar-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Metropolitano Odilon Behrens - MG abre seleção para Técnico em Radiologia', 'HOB - Hospital Metropolitano Odilon Behrens', 'MG', 'Médio', 0, 1956.26, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-metropolitano-odilon-behrens-mg-abre-selecao-para-tecnico-em-radiologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre processo seletivo para professores formadores na modalidade EAD', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 30, 1850.0, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-processo-seletivo-para-professores-formadores-na-modalidade-ead')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Colina - SP abre concursos para assistente educacional e auxiliar operacional de serviços gerais', 'Prefeitura de Colina', 'SP', 'Fundamental', 2, 1721.29, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-colina-sp-abre-concursos-para-assistente-educacional-e-auxiliar-operacional-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC anuncia processo seletivo para o cargo de Médico Regulador das Urgências', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Superior', 1, 138.9, true, '2026-09-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-anuncia-processo-seletivo-para-o-cargo-de-medico-regulador-das-urgencias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Tribunal de Justiça do Paraná abre concurso para o cargo de Contador', 'TJPR - Tribunal de Justiça do Paraná', 'PR', 'Superior', 2, 23264.47, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tribunal-de-justica-do-parana-abre-concurso-para-o-cargo-de-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Imbé - RS abre processo seletivo com salários de até R$ 21.695,07', 'Prefeitura de Imbé', 'RS', 'Fundamental', 0, 21695.07, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-imbe-rs-abre-processo-seletivo-com-salarios-de-ate-21695')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bariri - SP publica retificações do concurso com salários de até R$ 19.593,52', 'Prefeitura de Bariri', 'SP', 'Fundamental', 26, 19593.52, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bariri-sp-publica-retificacoes-do-concurso-com-salarios-de-ate-19593')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Negrinho - SC abre processo seletivo para profissionais de nível superior', 'Prefeitura de Rio Negrinho', 'SC', 'Superior', 6, 18538.78, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-negrinho-sc-abre-processo-seletivo-para-profissionais-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itamonte - MG retifica e reabre inscrições para processo seletivo', 'Prefeitura de Itamonte', 'MG', 'Médio', 47, 17802.73, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itamonte-mg-retifica-e-reabre-inscricoes-para-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piên - PR abre processo seletivo com salários de até R$ 17.253,23', 'Prefeitura de Piên', 'PR', 'Fundamental', 0, 17253.23, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pien-pr-abre-processo-seletivo-com-salarios-de-ate-17253')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Transpetro publica retificações de processos seletivos para diversos cargos', 'Transpetro - Petrobras Transporte S.A.', 'Nacional', 'Médio', 0, 15034.81, true, '2026-09-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/transpetro-publica-retificacoes-de-processos-seletivos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concursos públicos com três vagas para professores', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 3, 13753.96, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concursos-publicos-com-tres-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Miguel do Araguaia - GO retifica edital de concurso público', 'Prefeitura de São Miguel do Araguaia', 'GO', 'Fundamental', 463, 13671.34, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-miguel-do-araguaia-go-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guatambu - SC publica edital de processo seletivo com salários de até R$ 13.125,48', 'Prefeitura de Guatambu', 'SC', 'Fundamental', 0, 13125.48, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guatambu-sc-publica-edital-de-processo-seletivo-com-salarios-de-ate-13125')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Valinhos - SP prorroga inscrições do concurso público para o cargo de Procurador', 'Prefeitura de Valinhos', 'SP', 'Superior', 2, 12995.34, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-valinhos-sp-prorroga-inscricoes-do-concurso-publico-para-o-cargo-de-procurador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Orleans - SC abre processo seletivo com vagas para a secretaria de saúde', 'Prefeitura de Orleans', 'SC', 'Médio', 4, 10606.28, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-orleans-sc-abre-processo-seletivo-com-vagas-para-a-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Calmon - SC abre concurso público com salários de até R$ 7.314,30', 'Prefeitura de Calmon', 'SC', 'Fundamental', 100, 7314.3, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-calmon-sc-abre-concurso-publico-com-salarios-de-ate-7314')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bariri - SP abre concurso público com salários de até R$ 7.297,23', 'Prefeitura de Bariri', 'SP', 'Médio', 0, 7297.23, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bariri-sp-abre-concurso-publico-com-salarios-de-ate-7297')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque - SP retifica edital de concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura da Estância Turística de São Roque', 'SP', 'Médio', 11, 6829.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-sp-retifica-edital-de-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque do Canaã - ES abre vaga para Engenheiro Civil', 'Prefeitura de São Roque do Canaã', 'ES', 'Superior', 1, 6723.7, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-do-canaa-es-abre-vaga-para-engenheiro-civil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juazeiro do Norte - CE abre seleção para Coordenador Pedagógico e Diretor Escolar', 'Prefeitura de Juazeiro do Norte', 'CE', 'Superior', 0, 6326.73, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juazeiro-do-norte-ce-abre-selecao-para-coordenador-pedagogico-e-diretor-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAMESP anuncia processo seletivo para Médico Neurologista Clínico em Botucatu - SP', 'FAMESP - Fundação para o Desenvolvimento Médico e Hospitalar', 'SP', 'Superior', 1, 6077.09, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/famesp-anuncia-processo-seletivo-para-medico-neurologista-clinico-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Santo André - SP retifica edital de concurso público para o cargo de Consultor Jurídico', 'FSA - Fundação Santo André', 'SP', 'Superior', 1, 5771.75, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-santo-andre-sp-retifica-edital-de-concurso-publico-para-o-cargo-de-consultor-juridico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIDENNF - RJ abre concurso público com salários de até R$ 5.637,00', 'CIDENNF - Consórcio Público Intermunicipal de Desenvolvimento do Norte e Noroeste Fluminense', 'RJ', 'Médio', 2, 5637.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cidennf-rj-abre-concurso-publico-com-salarios-de-ate-5637')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tangará - SC publica edital de processo seletivo para diversos cargos', 'Prefeitura de Tangará', 'SC', 'Fundamental', 7, 5191.15, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tangara-sc-publica-edital-de-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre seleções para Servente de Pedreiro, Pintor e Fisioterapeuta Ergonomista', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Fundamental', 3, 5048.81, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-selecoes-para-servente-de-pedreiro-pintor-e-fisioterapeuta-ergonomista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro do Turvo - SP abre concurso público com salários de até R$ 4.957,20', 'Prefeitura de São Pedro do Turvo', 'SP', 'Fundamental', 7, 4957.2, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-do-turvo-sp-abre-concurso-publico-com-salarios-de-ate-4957')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Euclides da Cunha - BA abre processo seletivo para educação', 'Prefeitura de Euclides da Cunha', 'BA', 'Médio', 348, 4868.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-euclides-da-cunha-ba-abre-processo-seletivo-para-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Petrópolis - RS abre processo seletivo para Mecânico', 'Prefeitura de Nova Petrópolis', 'RS', 'Fundamental', 1, 4726.27, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-petropolis-rs-abre-processo-seletivo-para-mecanico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paranapanema - SP abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura da Estância Turística de Paranapanema', 'SP', 'Fundamental', 2, 4099.64, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paranapanema-sp-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre concurso público com vagas imediatas e cadastro de reserva', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 304, 3521.43, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto de Letras em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-letras-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Morro da Fumaça - SC abre processo seletivo para o cargo de Motorista', 'Prefeitura de Morro da Fumaça', 'SC', 'Fundamental', 1, 3359.13, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-morro-da-fumaca-sc-abre-processo-seletivo-para-o-cargo-de-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Beberibe - CE abre processo seletivo para agentes comunitários de saúde', 'Prefeitura de Beberibe', 'CE', 'Médio', 7, 3242.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-beberibe-ce-abre-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Autarquia Municipal de Saúde de Itapecerica da Serra - SP abre vagas para Agente Comunitário de Saúde', 'Autarquia Municipal de Saúde de Itapecerica da Serra', 'SP', 'Médio', 37, 3242.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/autarquia-municipal-de-saude-de-itapecerica-da-serra-sp-abre-vagas-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catas Altas - MG abre seleção para cadastro de reserva na Secretaria de Saúde', 'Prefeitura de Catas Altas', 'MG', 'Médio', 0, 3242.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catas-altas-mg-abre-selecao-para-cadastro-de-reserva-na-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Irupi - ES abre processo seletivo para o cargo de Professor de Língua Portuguesa', 'Prefeitura de Irupi', 'ES', 'Superior', 0, 3232.25, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-irupi-es-abre-processo-seletivo-para-o-cargo-de-professor-de-lingua-portuguesa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Massapê - CE abre concurso público com salários de até R$ 2.800,00', 'Câmara de Massapê', 'CE', 'Fundamental', 13, 2800.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-massape-ce-abre-concurso-publico-com-salarios-de-ate-2800')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre vaga para Marceneiro no Hospital Estadual Sumaré', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Fundamental', 1, 2415.6, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-vaga-para-marceneiro-no-hospital-estadual-sumare')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Montes Claros - MG abre processo seletivo para Coveiro e Educador Cuidador', 'Prefeitura de Montes Claros', 'MG', 'Fundamental', 42, 1853.51, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-montes-claros-mg-abre-processo-seletivo-para-coveiro-e-educador-cuidador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Hidrolândia - CE divulga retificações de concurso público', 'Câmara de Hidrolândia', 'CE', 'Fundamental', 5, 1621.0, true, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-hidrolandia-ce-divulga-retificacoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coronel Bicaco - RS abre vagas para Agente Visitador do PIM', 'Prefeitura de Coronel Bicaco', 'RS', 'Não informado', 2, NULL, false, '2026-09-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coronel-bicaco-rs-abre-vagas-para-agente-visitador-do-pim')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Bárbara - MG abre processo seletivo com salários de até R$ 24.017,23', 'Prefeitura de Santa Bárbara', 'MG', 'Fundamental', 0, 24017.23, true, '2026-09-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-barbara-mg-abre-processo-seletivo-com-salarios-de-ate-24017')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cachoeira do Sul - RS abre concurso com salários de até R$ 19.535,28', 'Prefeitura de Cachoeira do Sul', 'RS', 'Fundamental', 49, 19535.28, true, '2026-09-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cachoeira-do-sul-rs-abre-concurso-com-salarios-de-ate-19535')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para professor doutor na Faculdade de Direito de Ribeirão Preto', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2026-09-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-professor-doutor-na-faculdade-de-direito-de-ribeirao-preto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto de Fonoaudiologia em Marília - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 8532.59, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-fonoaudiologia-em-marilia-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapecó - SC prorroga as inscrições do processo seletivo para professores', 'Prefeitura de Chapecó', 'SC', 'Superior', 0, 7949.45, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapeco-sc-prorroga-as-inscricoes-do-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Saltinho - SC publica edital de concurso público para Auxiliar de Serviços Gerais e Contador', 'Câmara de Saltinho', 'SC', 'Médio', 0, 7447.36, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-saltinho-sc-publica-edital-de-concurso-publico-para-auxiliar-de-servicos-gerais-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES e IASERJ - RJ abrem concurso público com vagas de nível médio e superior', 'SES - Secretaria de Estado de Saúde e IASERJ - Instituto de Assistência dos Servidores do Estado do Rio de Janeiro', 'RJ', 'Médio', 287, 7169.61, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-e-iaserj-rj-abrem-concurso-publico-com-vagas-de-nivel-medio-e-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para o cargo de Assistente Administrativo II', 'UNESP - Universidade Estadual Paulista', 'SP', 'Médio', 1, 6537.74, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-o-cargo-de-assistente-administrativo-ii')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRA-RJ divulga retificação do concurso público com salários até R$ 6.369,00', 'CRA/RJ - Conselho Regional de Administração do Rio de Janeiro', 'RJ', 'Médio', 84, 6369.0, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cra-rj-divulga-retificacao-do-concurso-publico-com-salarios-ate-6369')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capão do Leão - RS retoma concurso público para Assistente Legislativo e Contador', 'Câmara de Capão do Leão', 'RS', 'Médio', 0, 5814.17, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capao-do-leao-rs-retoma-concurso-publico-para-assistente-legislativo-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Balneário Rincão - SC abre concurso público para Agente de Contratação e Motorista', 'Câmara de Balneário Rincão', 'SC', 'Médio', 2, 4680.0, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-balneario-rincao-sc-abre-concurso-publico-para-agente-de-contratacao-e-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação de Apoio ao Idoso Doutor Thomas - AM abre seleção para profissionais da saúde', 'FDT - Fundação de Apoio ao Idoso Doutor Thomas', 'AM', 'Médio', 40, 4626.09, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-de-apoio-ao-idoso-doutor-thomas-am-abre-selecao-para-profissionais-da-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Caparaó - ES abre processo seletivo para cadastro de reserva em diversas áreas', 'Consórcio Caparaó - Consórcio Público Intermunicipal', 'ES', 'Fundamental', 0, 4100.0, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-caparao-es-abre-processo-seletivo-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPREM de Aparecida D''Oeste - SP abre concurso para Procurador Jurídico Previdenciário e Analista Previdenciário', 'IPAM - Instituto de Previdência Municipal de Aparecida D''Oeste', 'SP', 'Superior', 2, 3699.59, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/iprem-de-aparecida-doeste-sp-abre-concurso-para-procurador-juridico-previdenciario-e-analista-previdenciario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação InoversaSul - SC abre concurso público com vagas imediatas e cadastro de reserva', 'Fundação InoversaSul', 'SC', 'Médio', 44, 3658.54, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-inoversasul-sc-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Substituto de Ciências Exatas e da Terra em Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-ciencias-exatas-e-da-terra-em-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto de Ciência da Computação em Bauru - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-ciencia-da-computacao-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para Técnico de Manutenção Industrial', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp / Hospital Estadual Sumaré - HES', 'SP', 'Médio', 1, 3395.57, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-tecnico-de-manutencao-industrial')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre vaga para Eletricista no Hospital Estadual Sumaré', 'HES - Hospital Estadual Sumaré (FUNCAMP)', 'SP', 'Médio', 1, 2882.99, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-vaga-para-eletricista-no-hospital-estadual-sumare')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tuparendi - RS abre seleção para Atendente da Educação', 'Prefeitura de Tuparendi', 'RS', 'Médio', 0, 2537.09, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tuparendi-rs-abre-selecao-para-atendente-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundo Municipal de Saúde de Silvânia - GO abre processo seletivo para diversos cargos', 'FMS - Fundo Municipal de Saúde de Silvânia', 'GO', 'Fundamental', 59, 2014.41, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundo-municipal-de-saude-de-silvania-go-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tocantins - MG abre vaga para Auxiliar de Serviços Escolar', 'Prefeitura de Tocantins', 'MG', 'Fundamental', 1, 1621.0, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tocantins-mg-abre-vaga-para-auxiliar-de-servicos-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Bananal - ES abre processo seletivo para o cargo de atendente', 'Prefeitura de Rio Bananal', 'ES', 'Fundamental', 0, 1591.31, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-bananal-es-abre-processo-seletivo-para-o-cargo-de-atendente')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre seleção para mediadores pedagógicos em Ciências Sociais e Pedagogia', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 2, 1100.0, true, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-selecao-para-mediadores-pedagogicos-em-ciencias-sociais-e-pedagogia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vazante - MG abre seleção para cargos de Diretor e Vice-Diretor escolar', 'Prefeitura de Vazante', 'MG', 'Superior', 0, NULL, false, '2026-09-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vazante-mg-abre-selecao-para-cargos-de-diretor-e-vice-diretor-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lucas do Rio Verde - MT abre processo seletivo com salários de até R$ 23.684,41', 'Prefeitura de Lucas do Rio Verde', 'MT', 'Fundamental', 0, 23684.41, true, '2026-09-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lucas-do-rio-verde-mt-abre-processo-seletivo-com-salarios-de-ate-23684')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('INVESTSP abre processo seletivo com vaga para Consultor Pleno', 'INVESTSP - Agência Paulista de Promoção de Investimentos e Competitividade', 'SP', 'Superior', 1, 19496.0, true, '2026-09-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/investsp-abre-processo-seletivo-com-vaga-para-consultor-pleno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para Professor Doutor no Instituto de Matemática, Estatística e Computação Científica', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-09-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-no-instituto-de-matematica-estatistica-e-computacao-cientifica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP anuncia novos processos seletivos com salários de até R$ 11.999,68', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Fundamental', 3, 11999.68, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-anuncia-novos-processos-seletivos-com-salarios-de-ate-11999')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre processo seletivo com vagas para professores colaboradores', 'UEM - Universidade Estadual de Maringá', 'PR', 'Superior', 76, 11221.64, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-processo-seletivo-com-vagas-para-professores-colaboradores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre seleção para médicos em Blumenau, Joaçaba e Lages', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Superior', 3, 10581.16, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-selecao-para-medicos-em-blumenau-joacaba-e-lages')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de José Bonifácio - SP divulga retificação de concurso público', 'Câmara de José Bonifácio', 'SP', 'Superior', 4, 6100.0, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jose-bonifacio-sp-divulga-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Terra Nova do Norte - MT abre seleção para a Secretaria de Educação', 'Prefeitura de Terra Nova do Norte', 'MT', 'Fundamental', 0, 5760.65, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-terra-nova-do-norte-mt-abre-selecao-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIM Polinorte - ES abre processo seletivo com salários de até R$ 4.870,14', 'CIM Polinorte - Consórcio Público da Região Polinorte', 'ES', 'Médio', 5, 4870.14, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cim-polinorte-es-abre-processo-seletivo-com-salarios-de-ate-4870')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cruz do Espírito Santo - PB abre concurso público com vagas para diversas áreas', 'Prefeitura de Cruz do Espírito Santo', 'PB', 'Fundamental', 202, 3847.97, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cruz-do-espirito-santo-pb-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cezarina - GO retifica edital de concurso público para Fiscal de Tributos Municipais', 'Prefeitura de Cezarina', 'GO', 'Superior', 1, 3271.7, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cezarina-go-retifica-edital-de-concurso-publico-para-fiscal-de-tributos-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porangatu - GO abre processo seletivo para a Secretaria de Assistência Social', 'Prefeitura de Porangatu', 'GO', 'Fundamental', 20, 3242.0, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porangatu-go-abre-processo-seletivo-para-a-secretaria-de-assistencia-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pelotas - RS abre seleção para Agente Redutor de Danos', 'Prefeitura de Pelotas', 'RS', 'Médio', 6, 1884.75, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pelotas-rs-abre-selecao-para-agente-redutor-de-danos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre seleções para o cargo de Auxiliar Penitenciário em Açailândia', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 0, 1822.34, true, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-selecoes-para-o-cargo-de-auxiliar-penitenciario-em-acailandia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação InoversaSul - SC abre processo seletivo para auxiliares de sala', 'Fundação InoversaSul', 'SC', 'Superior', 2, NULL, false, '2026-09-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-inoversasul-sc-abre-processo-seletivo-para-auxiliares-de-sala')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Governo do Tocantins - TO retifica edital de concurso público e prorroga período de inscrição', 'SES/TO - Secretaria de Estado da Saúde e SECAD/TO - Secretaria da Administração', 'TO', 'Médio', 952, 17727.63, true, '2026-09-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/governo-do-tocantins-to-retifica-edital-de-concurso-publico-e-prorroga-periodo-de-inscricao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brasilândia - MS abre processo seletivo para formação de cadastro de reserva em diversos cargos', 'Prefeitura de Brasilândia', 'MS', 'Fundamental', 0, 17721.95, true, '2026-09-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brasilandia-ms-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCDF anuncia retificação do concurso público para o cargo de Analista Administrativo', 'TCDF - Tribunal de Contas do Distrito Federal', 'DF', 'Superior', 10, 14990.41, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/tcdf-anuncia-retificacao-do-concurso-publico-para-o-cargo-de-analista-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Psicólogo em São José do Rio Preto - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 10649.28, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-psicologo-em-sao-jose-do-rio-preto-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para Médico Radiologista no CAISM', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Superior', 1, 8223.68, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-medico-radiologista-no-caism')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Patos de Minas - MG abre processo seletivo com vagas para médicos', 'Prefeitura de Patos de Minas', 'MG', 'Superior', 3, 5822.27, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-patos-de-minas-mg-abre-processo-seletivo-com-vagas-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vidal Ramos - SC abre concurso público com salários de até R$ 5.760,69', 'Prefeitura de Vidal Ramos', 'SC', 'Fundamental', 12, 5760.69, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vidal-ramos-sc-abre-concurso-publico-com-salarios-de-ate-5760')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRRJ - RJ abre concurso público para cargos técnico-administrativos de nível superior', 'UFRRJ - Universidade Federal Rural do Rio de Janeiro', 'RJ', 'Superior', 12, 5215.39, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrrj-rj-abre-concurso-publico-para-cargos-tecnico-administrativos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa Santa - MG abre seleção com salários de até R$ 5.021,11', 'Prefeitura de Lagoa Santa', 'MG', 'Médio', 5, 5021.11, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-santa-mg-abre-selecao-com-salarios-de-ate-5021')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Equador - RN abre concurso público com salários de até R$ 4.875,71', 'Prefeitura e Câmara de Equador', 'RN', 'Médio', 62, 4875.71, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-equador-rn-abre-concurso-publico-com-salarios-de-ate-4875')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarulhos - SP abre quatro concursos públicos com salários de até R$ 4.297,75', 'Prefeitura de Guarulhos', 'SP', 'Fundamental', 22, 4297.75, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guarulhos-sp-abre-quatro-concursos-publicos-com-salarios-de-ate-4297')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Engenheiro Paulo de Frontin - RJ abre concurso com salários de até R$ 4.277,48', 'Prefeitura de Engenheiro Paulo de Frontin', 'RJ', 'Fundamental', 143, 4277.48, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-engenheiro-paulo-de-frontin-rj-abre-concurso-com-salarios-de-ate-4277')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conselheiro Pena - MG retifica o processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Conselheiro Pena', 'MG', 'Médio', 47, 3242.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conselheiro-pena-mg-retifica-o-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio do Itambé - MG abre processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Santo Antônio do Itambé', 'MG', 'Médio', 5, 3242.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-do-itambe-mg-abre-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Geraldo do Baixio - MG abre seleção para Agentes de Saúde e de Endemias', 'Prefeitura de São Geraldo do Baixio', 'MG', 'Médio', 12, 3242.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-geraldo-do-baixio-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uruana de Minas - MG abre processo seletivo para cargos de nível médio', 'Prefeitura de Uruana de Minas', 'MG', 'Médio', 5, 3242.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uruana-de-minas-mg-abre-processo-seletivo-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Itaperiú - SC abre seleção para agentes comunitários de saúde', 'Prefeitura de São João do Itaperiú', 'SC', 'Médio', 2, 3242.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-itaperiu-sc-abre-selecao-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sonora - MS abre processo seletivo para o cargo de Aplicador ABA', 'Prefeitura de Sonora', 'MS', 'Médio', 10, 2887.73, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sonora-ms-abre-processo-seletivo-para-o-cargo-de-aplicador-aba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juazeiro do Norte - CE abre seleção para formação de cadastro de reserva de professores', 'Prefeitura de Juazeiro do Norte', 'CE', 'Superior', 0, 2565.32, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juazeiro-do-norte-ce-abre-selecao-para-formacao-de-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Nossa Senhora das Dores - SE anuncia edital de concurso público com cinco vagas', 'Câmara de Nossa Senhora das Dores', 'SE', 'Fundamental', 5, 2500.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-nossa-senhora-das-dores-se-anuncia-edital-de-concurso-publico-com-cinco-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fraiburgo - SC abre processo seletivo para Professor de Musicalização e Auxiliar Educacional', 'Prefeitura de Fraiburgo', 'SC', 'Médio', 0, 2292.77, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fraiburgo-sc-abre-processo-seletivo-para-professor-de-musicalizacao-e-auxiliar-educacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mauá - SP abre processo seletivo para médicos de diversas áreas', 'Prefeitura de Mauá', 'SP', 'Superior', 3, 130.0, true, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maua-sp-abre-processo-seletivo-para-medicos-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DECEx - Brasil divulga retificação de processo seletivo para colégios militares', 'DEPA - Diretoria de Educação Preparatória e Assistencial (Exército)', 'Nacional', 'Não informado', 355, NULL, false, '2026-09-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/decex-brasil-divulga-retificacao-de-processo-seletivo-para-colegios-militares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre vaga em concurso público para Professor Titular na Escola de Enfermagem', 'EEUSP - Escola de Enfermagem da Universidade de São Paulo', 'SP', 'Superior', 1, 24309.11, true, '2026-09-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-vaga-em-concurso-publico-para-professor-titular-na-escola-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conceição da Barra de Minas - MG retifica edital de concurso público com salários de até R$ 16.016,13', 'Prefeitura de Conceição da Barra de Minas', 'MG', 'Fundamental', 30, 16016.13, true, '2026-09-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conceicao-da-barra-de-minas-mg-retifica-edital-de-concurso-publico-com-salarios-de-ate-16016')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São Miguel do Guaporé - RO retifica concurso com salários de até R$ 12.022,51', 'Câmara de São Miguel do Guaporé', 'RO', 'Fundamental', 5, 12022.51, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-miguel-do-guapore-ro-retifica-concurso-com-salarios-de-ate-12022')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Concórdia - SC abre concurso público para Contador', 'Câmara de Concórdia', 'SC', 'Superior', 1, 9900.22, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-concordia-sc-abre-concurso-publico-para-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Estrela - RS abre concurso público com salários de até R$ 8.058,13', 'Prefeitura de Estrela', 'RS', 'Médio', 63, 8058.13, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-estrela-rs-abre-concurso-publico-com-salarios-de-ate-8058')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIMPS - SP abre concurso público para Auxiliar Administrativo e Gerente Administrativo', 'CIMPS - Consórcio Intermunicipal de Políticas Sociais', 'SP', 'Médio', 2, 7500.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cimps-sp-abre-concurso-publico-para-auxiliar-administrativo-e-gerente-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Negra - SP retifica edital de concurso público', 'Prefeitura da Estância Hidromineral de Serra Negra', 'SP', 'Médio', 61, 5571.2, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-negra-sp-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibiá - MG abre concurso público com salários de até R$ 5.261,53', 'Prefeitura de Ibiá', 'MG', 'Médio', 17, 5261.53, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibia-mg-abre-concurso-publico-com-salarios-de-ate-5261')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova União - RO reabre inscrições do processo seletivo com vagas para professores', 'Prefeitura de Nova União', 'RO', 'Superior', 13, 5130.63, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-uniao-ro-reabre-inscricoes-do-processo-seletivo-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Licínio de Almeida - BA prorroga inscrições do concurso público com vagas de nível médio e superior', 'Prefeitura de Licínio de Almeida', 'BA', 'Médio', 6, 4848.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-licinio-de-almeida-ba-prorroga-inscricoes-do-concurso-publico-com-vagas-de-nivel-medio-e-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vagas para professores substitutos no campus de Franca - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vagas-para-professores-substitutos-no-campus-de-franca-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para o cargo de Técnico em Química', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Médio', 1, 3503.97, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-o-cargo-de-tecnico-em-quimica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cachoeira Dourada - GO anuncia processo seletivo com salários de até R$ 3.500,00', 'Prefeitura de Cachoeira Dourada', 'GO', 'Fundamental', 7, 3500.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cachoeira-dourada-go-anuncia-processo-seletivo-com-salarios-de-ate-3500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Abre Campo - MG abre seleção para profissionais de nível médio', 'Prefeitura de Abre Campo', 'MG', 'Médio', 11, 3242.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-abre-campo-mg-abre-selecao-para-profissionais-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra Longa - MG abre processo seletivo com 7 vagas para Agente Comunitário de Saúde', 'Prefeitura de Barra Longa', 'MG', 'Médio', 7, 3242.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-longa-mg-abre-processo-seletivo-com-7-vagas-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conceição da Barra de Minas - MG abre processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Conceição da Barra de Minas', 'MG', 'Médio', 4, 3242.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conceicao-da-barra-de-minas-mg-abre-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Negra - SP retifica edital de concurso com vagas imediatas e cadastro de reserva', 'Prefeitura da Estância Hidromineral de Serra Negra', 'SP', 'Fundamental', 99, 2815.61, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-negra-sp-retifica-edital-de-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fundão - ES abre processo seletivo para cadastro de reserva em diversos cargos', 'Prefeitura de Fundão', 'ES', 'Fundamental', 0, 2756.25, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fundao-es-abre-processo-seletivo-para-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio da Patrulha - RS abre seleção para Cuidador Social e Supervisor Educacional', 'Prefeitura de Santo Antônio da Patrulha', 'RS', 'Médio', 0, 2565.32, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-da-patrulha-rs-abre-selecao-para-cuidador-social-e-supervisor-educacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Riachão do Poço - PB abre concurso público com cinco vagas imediatas', 'Câmara de Riachão do Poço', 'PB', 'Fundamental', 5, 2500.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-riachao-do-poco-pb-abre-concurso-publico-com-cinco-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Negra - SP abre concurso público para Guarda Civil Municipal', 'Prefeitura de Serra Negra', 'SP', 'Médio', 10, 2130.06, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-negra-sp-abre-concurso-publico-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre seleções para Auxiliar de Limpeza e Auxiliar de Serviços Gerais', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Fundamental', 2, 1980.0, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-selecoes-para-auxiliar-de-limpeza-e-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio da Patrulha - RS abre seleção para Motorista, Operário e Operador de Máquinas Rodoviárias', 'Prefeitura de Santo Antônio da Patrulha', 'RS', 'Fundamental', 0, 1778.53, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-da-patrulha-rs-abre-selecao-para-motorista-operario-e-operador-de-maquinas-rodoviarias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre vaga para Técnico Desportivo', 'Prefeitura de Cláudio', 'MG', 'Médio', 1, 1745.62, true, '2026-09-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-vaga-para-tecnico-desportivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso para Professor Titular na área de Desenvolvimento Econômico', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 25261.98, true, '2026-09-20'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-para-professor-titular-na-area-de-desenvolvimento-economico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREMERS - RS reabre inscrições do concurso público para Médico Fiscal e Agente Fiscal', 'CREMERS - Conselho Regional de Medicina do Estado do Rio Grande do Sul', 'RS', 'Médio', 60, 18847.08, true, '2026-09-20'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/cremers-rs-reabre-inscricoes-do-concurso-publico-para-medico-fiscal-e-agente-fiscal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CONSMEPI - MG abre processo seletivo com salários de até R$ 13.762,94', 'CONSMEPI - Consórcio Intermunicipal Multissetorial do Médio Rio Piracicaba', 'MG', 'Médio', 0, 13762.94, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consmepi-mg-abre-processo-seletivo-com-salarios-de-ate-13762')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFEI - MG abre concurso para professores com salários de R$ 13.753,69', 'UNIFEI - Universidade Federal de Itajubá', 'MG', 'Superior', 2, 13753.96, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifei-mg-abre-concurso-para-professores-com-salarios-de-13753')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarabira - PB abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Guarabira', 'PB', 'Médio', 170, 8472.0, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guarabira-pb-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Horizonte - CE abre concurso público com salários de até R$ 5.620,27', 'Prefeitura de Horizonte', 'CE', 'Médio', 15, 5620.27, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-horizonte-ce-abre-concurso-publico-com-salarios-de-ate-5620')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cotia - SP abre processo seletivo com vagas na área da educação', 'Prefeitura de Cotia', 'SP', 'Médio', 73, 5149.44, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cotia-sp-abre-processo-seletivo-com-vagas-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guapimirim - RJ prorroga inscrições do concurso público para professores', 'Prefeitura de Guapimirim', 'RJ', 'Médio', 125, 2983.47, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guapimirim-rj-prorroga-inscricoes-do-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Meruoca - CE abre concurso público com vagas imediatas e cadastro de reserva', 'Câmara de Meruoca', 'CE', 'Médio', 15, 2500.0, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-meruoca-ce-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Aragarças - GO abre concurso público com vagas de nível fundamental e médio', 'Câmara de Aragarças', 'GO', 'Fundamental', 8, 2400.0, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-aragarcas-go-abre-concurso-publico-com-vagas-de-nivel-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Gravatal - SC abre seleção para Técnico de Enfermagem na Motolância do SAMU', 'Prefeitura de Gravatal', 'SC', 'Médio', 0, 2296.63, true, '2026-09-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-gravatal-sc-abre-selecao-para-tecnico-de-enfermagem-na-motolancia-do-samu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maravilha - SC abre seleções com salários de até R$ 25.094,13', 'Prefeitura de Maravilha', 'SC', 'Fundamental', 0, 25094.13, true, '2026-09-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maravilha-sc-abre-selecoes-com-salarios-de-ate-25094')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para Professor Assistente de Educação Física no Campus de Rio Claro - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 16994.01, true, '2026-09-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-assistente-de-educacao-fisica-no-campus-de-rio-claro-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISOP - PR abre concurso público com salários de até R$ 15.471,12', 'CISOP - Consórcio Intermunicipal de Saúde do Oeste do Paraná', 'PR', 'Fundamental', 31, 15471.12, true, '2026-09-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/cisop-pr-abre-concurso-publico-com-salarios-de-ate-15471')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaguaribe - CE abre concursos públicos com vagas imediatas e cadastro de reserva', 'Prefeitura de Jaguaribe', 'CE', 'Fundamental', 183, 12948.01, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jaguaribe-ce-abre-concursos-publicos-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Limeira - SP prorroga inscrições de concursos com vagas em diversas áreas', 'Prefeitura de Limeira', 'SP', 'Fundamental', 248, 12873.46, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-limeira-sp-prorroga-inscricoes-de-concursos-com-vagas-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Senar - GO abre processo seletivo com salários de até R$ 11.863,90', 'Senar/AR - Serviço Nacional de Aprendizagem Rural - Administração Regional de Goiás', 'GO', 'Médio', 2, 11863.9, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/senar-go-abre-processo-seletivo-com-salarios-de-ate-11863')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAEB - BA abre concurso com vagas para Oficiais Médicos e Odontólogos na PM e Bombeiros', 'PMBA - Polícia Militar da Bahia e CBMBA - Corpo de Bombeiros Militar da Bahia', 'BA', 'Superior', 40, 9973.34, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saeb-ba-abre-concurso-com-vagas-para-oficiais-medicos-e-odontologos-na-pm-e-bombeiros')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRECI - SP anuncia concurso público com salários de até R$ 9.940,00', 'CRECI - Conselho Regional de Corretores de Imóveis do Estado de São Paulo', 'SP', 'Médio', 34, 9940.0, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/creci-sp-anuncia-concurso-publico-com-salarios-de-ate-9940')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRN abre processo seletivo para professores do Magistério Superior e EBTT', 'UFRN - Universidade Federal do Rio Grande do Norte', 'RN', 'Superior', 2, 9532.33, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrn-abre-processo-seletivo-para-professores-do-magisterio-superior-e-ebtt')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Verde - GO abre concursos públicos com salários de até R$ 7.241,14', 'Câmara de Rio Verde', 'GO', 'Fundamental', 68, 7241.14, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-verde-go-abre-concursos-publicos-com-salarios-de-ate-7241')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra do Bugres - MT abre processo seletivo com remuneração de R$ 7.025,36', 'Prefeitura de Barra do Bugres', 'MT', 'Superior', 6, 7025.36, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-do-bugres-mt-abre-processo-seletivo-com-remuneracao-de-7025')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibiraçu - ES abre processo seletivo para professores', 'Prefeitura de Ibiraçu', 'ES', 'Superior', 1, 5857.0, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibiracu-es-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIOESTE - PR retifica processo seletivo para professores de ensino superior', 'UNIOESTE - Universidade Estadual do Oeste do Paraná', 'PR', 'Superior', 0, 5610.83, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unioeste-pr-retifica-processo-seletivo-para-professores-de-ensino-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREF20 - SE abre concurso público com salários de até R$ 5.416,20 em Aracaju', 'CREF20/SE - Conselho Regional de Educação Física da 20ª Região', 'SE', 'Médio', 5, 5416.2, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cref20-se-abre-concurso-publico-com-salarios-de-ate-5416-em-aracaju')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Gavião Peixoto - SP abre concurso público para Motorista Plantonista e Técnico em Enfermagem', 'Prefeitura de Gavião Peixoto', 'SP', 'Médio', 2, 4292.22, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-gaviao-peixoto-sp-abre-concurso-publico-para-motorista-plantonista-e-tecnico-em-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Embu das Artes - SP reabre inscrições de concurso público com vagas na educação', 'Prefeitura de Embu das Artes', 'SP', 'Médio', 74, 4166.79, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-embu-das-artes-sp-reabre-inscricoes-de-concurso-publico-com-vagas-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Moreilândia - PE abre dois concursos com vagas imediatas e cadastro de reserva', 'Prefeitura de Moreilândia', 'PE', 'Médio', 115, 3847.97, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-moreilandia-pe-abre-dois-concursos-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Corumbiara - RO abre processo seletivo com vagas para diversos cargos', 'Prefeitura de Corumbiara', 'RO', 'Fundamental', 59, 3569.14, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-corumbiara-ro-abre-processo-seletivo-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ariranha - SP abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Ariranha', 'SP', 'Fundamental', 14, 2655.64, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ariranha-sp-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pires Ferreira - CE abre concurso para Agente Administrativo e Auxiliar de Serviços Gerais', 'Câmara de Pires Ferreira', 'CE', 'Fundamental', 2, 1621.0, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-pires-ferreira-ce-abre-concurso-para-agente-administrativo-e-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paulo de Faria - SP abre processo seletivo para professores de diversas áreas', 'Prefeitura de Paulo de Faria', 'SP', 'Superior', 0, 30.0, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paulo-de-faria-sp-abre-processo-seletivo-para-professores-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CBMRS - RS abre seleções para guarda-vidas civis temporários', 'CBMRS - Corpo de Bombeiros Militar do Rio Grande do Sul', 'RS', 'Não informado', 440, NULL, false, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cbmrs-rs-abre-selecoes-para-guarda-vidas-civis-temporarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Analista de Informática na área de Redes e Infraestrutura', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 10649.28, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-analista-de-informatica-na-area-de-redes-e-infraestrutura')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AgSUS retifica processo seletivo para formação de cadastro de reserva no projeto SESMT', 'AgSUS - Agência Brasileira de Apoio à Gestão do SUS', 'Nacional', 'Médio', 0, 10302.0, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/agsus-retifica-processo-seletivo-para-formacao-de-cadastro-de-reserva-no-projeto-sesmt')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Redentora - RS prorrogam inscrições para concurso público e processo seletivo', 'Prefeitura e Câmara de Redentora', 'RS', 'Fundamental', 54, 10198.4, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-redentora-rs-prorrogam-inscricoes-para-concurso-publico-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paracatu - MG prorroga inscrições do concurso público com salários de até R$ 9.600,00', 'IBGP - Prefeitura de Paracatu', 'MG', 'Fundamental', 342, 9600.0, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paracatu-mg-prorroga-inscricoes-do-concurso-publico-com-salarios-de-ate-9600')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Olímpia - SP reabre inscrições para o concurso público com salários de até R$ 9 mil', 'Prefeitura da Estância Turística de Olímpia', 'SP', 'Fundamental', 70, 9581.64, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-olimpia-sp-reabre-inscricoes-para-o-concurso-publico-com-salarios-de-ate-9-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professor substituto de matemática', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 0, 8058.29, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-substituto-de-matematica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapadão do Sul - MS abre processo seletivo para diretores de escola', 'Prefeitura de Chapadão do Sul', 'MS', 'Superior', 24, 7840.04, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapadao-do-sul-ms-abre-processo-seletivo-para-diretores-de-escola')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Divinópolis - MG abre vagas para Agente de Administração e Engenheiro Agrimensor', 'Prefeitura de Divinópolis', 'MG', 'Médio', 11, 6882.97, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-divinopolis-mg-abre-vagas-para-agente-de-administracao-e-engenheiro-agrimensor')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para Perfusionista no HC', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Superior', 1, 6731.71, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-perfusionista-no-hc')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Olímpia - SP reabre inscrições do concurso público para Historiador e Museólogo', 'Prefeitura da Estância Turística de Olímpia', 'SP', 'Superior', 2, 6506.88, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-olimpia-sp-reabre-inscricoes-do-concurso-publico-para-historiador-e-museologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('ITABIRAPREV - MG abre concurso público com salários de até R$ 6.280,77', 'ITABIRAPREV - Instituto de Previdência de Itabira', 'MG', 'Médio', 5, 6280.77, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/itabiraprev-mg-abre-concurso-publico-com-salarios-de-ate-6280')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Bom Despacho - MG abre concurso com salários de até R$ 6.210,20', 'Câmara de Bom Despacho', 'MG', 'Médio', 3, 6210.2, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-bom-despacho-mg-abre-concurso-com-salarios-de-ate-6210')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIDES - MG abre seleção para Analista Ambiental e Fiscal de Defesa do Consumidor', 'CIDES - Consórcio Público Intermunicipal de Desenvolvimento Sustentável do Triângulo Mineiro e Alto Paranaíba', 'MG', 'Médio', 1, 3541.67, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cides-mg-abre-selecao-para-analista-ambiental-e-fiscal-de-defesa-do-consumidor')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vaga para professor substituto na área de anatomia veterinária em Botucatu - SP', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vaga-para-professor-substituto-na-area-de-anatomia-veterinaria-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Jerônimo da Serra - PR abre vaga para Médico da Estratégia Saúde da Família', 'Prefeitura de São Jerônimo da Serra', 'PR', 'Superior', 1, 16490.22, true, '2026-09-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jeronimo-da-serra-pr-abre-vaga-para-medico-da-estrategia-saude-da-familia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSM - RS abre concurso público com vagas para Professores do Magistério Superior', 'UFSM - Universidade Federal de Santa Maria', 'RS', 'Superior', 9, 13753.98, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufsm-rs-abre-concurso-publico-com-vagas-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Colômbia - SP publica edital retificado de concurso público', 'Câmara de Colômbia', 'SP', 'Fundamental', 8, 7825.0, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-colombia-sp-publica-edital-retificado-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Andradina - SP retifica concurso público para profissionais da educação', 'Prefeitura de Andradina', 'SP', 'Médio', 19, 7341.23, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-andradina-sp-retifica-concurso-publico-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIGAMVALI - SC abre processo seletivo para Analistas Ambientais', 'CIGAMVALI - Consórcio Intermunicipal de Gestão Pública do Vale do Itapocu', 'SC', 'Superior', 1, 7186.23, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cigamvali-sc-abre-processo-seletivo-para-analistas-ambientais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Celesc - SC abre concurso público para cadastro de reserva em diversos cargos', 'Celesc - Celesc Distribuição S.A.', 'SC', 'Médio', 0, 6905.11, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/celesc-sc-abre-concurso-publico-para-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIOESTE - PR abre processo seletivo com 100 vagas para técnicos de enfermagem', 'UNIOESTE - Universidade Estadual do Oeste do Paraná', 'PR', 'Médio', 100, 5659.63, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unioeste-pr-abre-processo-seletivo-com-100-vagas-para-tecnicos-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José - SC abre processo seletivo para a secretaria de educação', 'SME - Secretaria Municipal de Educação de São José', 'SC', 'Médio', 0, 5355.59, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-sc-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Centro Universitário de Adamantina - SP abre vaga para Analista Jurídico', 'UNIFAI - Centro Universitário de Adamantina', 'SP', 'Superior', 1, 4494.0, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/centro-universitario-de-adamantina-sp-abre-vaga-para-analista-juridico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município de Mesquita - MG abre seleção para agentes de saúde e de endemias', 'Prefeitura de Mesquita', 'MG', 'Médio', 18, 3036.0, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-de-mesquita-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Augusto de Lima - MG abre concurso para Motorista e Auxiliar Administrativo e Legislativo', 'Câmara de Augusto de Lima', 'MG', 'Fundamental', 2, 2742.96, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-augusto-de-lima-mg-abre-concurso-para-motorista-e-auxiliar-administrativo-e-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leopoldina - MG abre processo seletivo para o cargo de Motorista', 'Prefeitura de Leopoldina', 'MG', 'Fundamental', 1, 2714.19, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leopoldina-mg-abre-processo-seletivo-para-o-cargo-de-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de União de Minas - MG abre vagas para motoristas de veículos leves e pesados', 'Prefeitura de União de Minas', 'MG', 'Fundamental', 3, 2596.25, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uniao-de-minas-mg-abre-vagas-para-motoristas-de-veiculos-leves-e-pesados')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Epagri - SC abre concurso público com salários iniciais de até R$ 16.990,33', 'EPAGRI - Empresa de Pesquisa Agropecuária e Extensão Rural de Santa Catarina', 'SC', 'Médio', 40, 16990.33, true, '2026-09-24'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/epagri-sc-abre-concurso-publico-com-salarios-iniciais-de-ate-16990')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNDACI de Ilhabela - SP abre concurso público para cargos de nível superior', 'FUNDACI - Fundação Arte e Cultura de Ilhabela', 'SP', 'Superior', 2, 12814.86, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundaci-de-ilhabela-sp-abre-concurso-publico-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unimontes - MG publica edital de concurso público para professores de educação superior', 'UNIMONTES - Universidade Estadual de Montes Claros', 'MG', 'Superior', 7, 8257.49, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unimontes-mg-publica-edital-de-concurso-publico-para-professores-de-educacao-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ publica edital de concurso para o cargo de Professor Adjunto na área de Ensino de Geografia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 2, 6581.01, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-publica-edital-de-concurso-para-o-cargo-de-professor-adjunto-na-area-de-ensino-de-geografia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AMVAP Saúde - MG abre seleção com salários de até R$ 5.838,48', 'AMVAP Saúde - Consórcio Público Intermunicipal de Saúde do Triângulo Mineiro', 'MG', 'Médio', 12, 5838.48, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/amvap-saude-mg-abre-selecao-com-salarios-de-ate-5838')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de União do Oeste - SC abre seleção para professores', 'Prefeitura de União do Oeste', 'SC', 'Superior', 2, 5516.11, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uniao-do-oeste-sc-abre-selecao-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Comodoro - MT abre processo seletivo com salários de até R$ 4.342,06', 'Prefeitura de Comodoro', 'MT', 'Fundamental', 19, 4342.06, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-comodoro-mt-abre-processo-seletivo-com-salarios-de-ate-4342')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Castro - PR abre concurso público para o cargo de técnico em enfermagem', 'Prefeitura de Castro', 'PR', 'Médio', 32, 3136.69, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-castro-pr-abre-concurso-publico-para-o-cargo-de-tecnico-em-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tamandaré - PE retifica edital do concurso para Guarda Civil Municipal', 'Prefeitura de Tamandaré', 'PE', 'Médio', 30, 1800.0, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tamandare-pe-retifica-edital-do-concurso-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catanduva - SP abre processo seletivo para professores', 'Prefeitura de Catanduva', 'SP', 'Médio', 0, 32.41, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catanduva-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anhembi - SP abre concurso público com salários de até R$ 6.407,17', 'Prefeitura de Anhembi', 'SP', 'Fundamental', 23, 6407.17, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anhembi-sp-abre-concurso-publico-com-salarios-de-ate-6407')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAMESP - SP abre quatro processos seletivos com vagas para Botucatu', 'FAMESP - Fundação para o Desenvolvimento Médico e Hospitalar', 'SP', 'Médio', 4, 6077.09, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/famesp-sp-abre-quatro-processos-seletivos-com-vagas-para-botucatu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPMS de Suzano - SP retifica edital de concurso público com salários de até R$ 5.186,89', 'IPMS - Instituto de Previdência do Município de Suzano', 'SP', 'Médio', 5, 5186.89, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipms-de-suzano-sp-retifica-edital-de-concurso-publico-com-salarios-de-ate-5186')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nossa Senhora das Graças - PR abre processo seletivo com salários de até R$ 4.752,95', 'Prefeitura de Nossa Senhora das Graças', 'PR', 'Fundamental', 8, 4752.95, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nossa-senhora-das-gracas-pr-abre-processo-seletivo-com-salarios-de-ate-4752')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jahu - SP abre concurso público com salários de até R$ 4.751,52', 'Prefeitura da Estância Turística de Jahu', 'SP', 'Fundamental', 10, 4751.52, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jahu-sp-abre-concurso-publico-com-salarios-de-ate-4751')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itaju - SP abre concurso público para Agente Administrativo', 'Câmara de Itaju', 'SP', 'Médio', 1, 3242.0, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-itaju-sp-abre-concurso-publico-para-agente-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEDUC - TO abre processo seletivo para professores e tutores de polo', 'SEDUC - Secretaria da Educação do Estado do Tocantins', 'TO', 'Superior', 46, 30.0, false, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seduc-to-abre-processo-seletivo-para-professores-e-tutores-de-polo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvorada - RS anuncia concurso público com salários de até R$ 18.974,55', 'Prefeitura de Alvorada', 'RS', 'Fundamental', 0, 18974.55, true, '2026-09-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvorada-rs-anuncia-concurso-publico-com-salarios-de-ate-18974')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Otacílio Costa - SC abre seleção para a área da Educação', 'Prefeitura de Otacílio Costa', 'SC', 'Médio', 0, 5130.94, true, '2026-09-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-otacilio-costa-sc-abre-selecao-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRJ abre concurso público para Professor na área de Canto Coral', 'UFRJ - Universidade Federal do Rio de Janeiro', 'RJ', 'Superior', 1, 13753.96, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrj-abre-concurso-publico-para-professor-na-area-de-canto-coral')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São Joaquim - SC retifica o edital de concurso público com salários de até R$ 9.870,45', 'Câmara de Vereadores de São Joaquim', 'SC', 'Médio', 2, 9870.45, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-joaquim-sc-retifica-o-edital-de-concurso-publico-com-salarios-de-ate-9870')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vitória - ES abre processos seletivos para professores', 'PMV - Prefeitura de Vitória', 'ES', 'Superior', 335, 7338.21, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vitoria-es-abre-processos-seletivos-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISAN Central - RO abre processo seletivo com salários de até R$ 7.130,13', 'CISAN Central - Consórcio Intermunicipal de Saneamento da Região Central de Rondônia', 'RO', 'Médio', 9, 7130.13, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cisan-central-ro-abre-processo-seletivo-com-salarios-de-ate-7130')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Martinópolis - SP abre processo seletivo para formação de cadastro de reserva', 'Câmara de Martinópolis', 'SP', 'Fundamental', 0, 5995.65, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-martinopolis-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaiçara - SP abre processo seletivo para diversos níveis de escolaridade', 'Prefeitura de Guaiçara', 'SP', 'Fundamental', 20, 3913.82, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaicara-sp-abre-processo-seletivo-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Icapuí - CE abre concurso público com oito vagas', 'Câmara de Icapuí', 'CE', 'Médio', 8, 3865.51, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-icapui-ce-abre-concurso-publico-com-oito-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vera Cruz - SP retifica edital de concurso público para professores e psicopedagogos', 'Prefeitura de Vera Cruz', 'SP', 'Superior', 13, 3847.8, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vera-cruz-sp-retifica-edital-de-concurso-publico-para-professores-e-psicopedagogos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Paramoti - CE abre concurso público com cinco vagas imediatas', 'Câmara de Paramoti', 'CE', 'Fundamental', 5, 3000.0, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-paramoti-ce-abre-concurso-publico-com-cinco-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Delmiro Gouveia - AL abre seleção com 9 vagas para odontólogos', 'Prefeitura de Delmiro Gouveia', 'AL', 'Superior', 9, 2220.0, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-delmiro-gouveia-al-abre-selecao-com-9-vagas-para-odontologos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TRF 5ª Região abre concurso público com vagas para Juiz Federal Substituto', 'TRF5 - Tribunal Regional Federal da 5ª Região', 'Nacional', 'Superior', 11, 37765.55, true, '2026-09-28'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/trf-5-regiao-abre-concurso-publico-com-vagas-para-juiz-federal-substituto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Princesa - SC abre processo seletivo com salários de até R$ 23.457,36', 'Prefeitura de Princesa', 'SC', 'Fundamental', 0, 23457.36, true, '2026-09-28'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-princesa-sc-abre-processo-seletivo-com-salarios-de-ate-23457')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Bento do Sul - SC abre processo seletivo com salários de até R$ 20.795,15', 'Prefeitura de São Bento do Sul', 'SC', 'Fundamental', 40, 20795.15, true, '2026-09-28'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-bento-do-sul-sc-abre-processo-seletivo-com-salarios-de-ate-20795')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaipulândia - PR abre concurso público com salários de até R$ 15.073,26', 'Prefeitura de Itaipulândia', 'PR', 'Médio', 36, 15073.26, true, '2026-09-28'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itaipulandia-pr-abre-concurso-publico-com-salarios-de-ate-15073')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sapezal - MT abre seleção com salários de até R$ 13.097,38', 'Prefeitura de Sapezal', 'MT', 'Fundamental', 8, 13097.38, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sapezal-mt-abre-selecao-com-salarios-de-ate-13097')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre processo seletivo para professores na área da medicina', 'UEM - Universidade Estadual de Maringá', 'PR', 'Superior', 11, 11221.64, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-processo-seletivo-para-professores-na-area-da-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Corumbataí - SP abre concurso público com salários de até R$ 10.381,76', 'Prefeitura de Corumbataí', 'SP', 'Fundamental', 11, 10381.76, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-corumbatai-sp-abre-concurso-publico-com-salarios-de-ate-10381')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Rio Pardo - SP abre concurso com salários de até R$ 7.549,51', 'Prefeitura de São José do Rio Pardo', 'SP', 'Fundamental', 4, 7549.51, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-rio-pardo-sp-abre-concurso-com-salarios-de-ate-7549')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara e Prefeitura de Trindade - GO divulgam retificações do processo seletivo e do concurso público', 'Prefeitura e Câmara de Trindade', 'GO', 'Fundamental', 215, 7500.0, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-e-prefeitura-de-trindade-go-divulgam-retificacoes-do-processo-seletivo-e-do-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Enéas Marques - PR abre processo seletivo com salários de até R$ 5.986,32', 'Prefeitura de Enéas Marques', 'PR', 'Fundamental', 0, 5986.32, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-eneas-marques-pr-abre-processo-seletivo-com-salarios-de-ate-5986')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria Municipal de Educação de Cuiabá - MT abre processo seletivo com salários de até R$ 5.599,94', 'SME - Secretaria Municipal de Educação de Cuiabá', 'MT', 'Médio', 0, 5599.94, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-municipal-de-educacao-de-cuiaba-mt-abre-processo-seletivo-com-salarios-de-ate-5599')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação João Pinheiro - MG abre concurso público para Especialista em Políticas Públicas e Gestão Governamental', 'FJP - Fundação João Pinheiro', 'MG', 'Superior', 30, 5226.6, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-joao-pinheiro-mg-abre-concurso-publico-para-especialista-em-politicas-publicas-e-gestao-governamental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Blumenau - SC publica editais de processos seletivos para profissionais da educação', 'Prefeitura de Blumenau', 'SC', 'Médio', 0, 5130.63, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-blumenau-sc-publica-editais-de-processos-seletivos-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraíso - SC abre processo seletivo para diversos cargos', 'Prefeitura de Paraíso', 'SC', 'Fundamental', 0, 5130.63, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraiso-sc-abre-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Ludgero - SC abre seleção para cadastro de reserva na saúde', 'Prefeitura de São Ludgero', 'SC', 'Fundamental', 0, 4914.85, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-ludgero-sc-abre-selecao-para-cadastro-de-reserva-na-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Poranga - CE publica editais de concursos públicos com salários de até R$ 4.750,00', 'Prefeitura de Poranga', 'CE', 'Fundamental', 98, 4750.0, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-poranga-ce-publica-editais-de-concursos-publicos-com-salarios-de-ate-4750')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Guaporé - RS abre concurso público para Agente Administrativo e Técnico Legislativo', 'Câmara de Guaporé', 'RS', 'Médio', 2, 4523.47, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-guapore-rs-abre-concurso-publico-para-agente-administrativo-e-tecnico-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guabiruba - SC abre processo seletivo para cadastro de reserva em diversos cargos', 'Prefeitura de Guabiruba', 'SC', 'Fundamental', 0, 3523.8, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guabiruba-sc-abre-processo-seletivo-para-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Matupá - MT abre processo seletivo para agentes comunitários de saúde', 'Prefeitura de Matupá', 'MT', 'Médio', 13, 3242.0, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-matupa-mt-abre-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Centro Universitário Fundação Santo André - SP abre concurso público para Eletricista', 'FSA - Centro Universitário Fundação Santo André', 'SP', 'Médio', 1, 2955.77, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/centro-universitario-fundacao-santo-andre-sp-abre-concurso-publico-para-eletricista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fraiburgo - SC abre processo seletivo para a contratação de Agente Operacional', 'Prefeitura de Fraiburgo', 'SC', 'Fundamental', 0, 1494.01, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fraiburgo-sc-abre-processo-seletivo-para-a-contratacao-de-agente-operacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Oliveira Fortes - MG publica retificação de concurso público', 'Prefeitura de Oliveira Fortes', 'MG', 'Fundamental', 67, 10331.93, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-oliveira-fortes-mg-publica-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Manaus Previdência - AM abre concurso público com salários de até R$ 9.175,25', 'MANAUSPREV - Manaus Previdência', 'AM', 'Médio', 17, 9175.25, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/manaus-previdencia-am-abre-concurso-publico-com-salarios-de-ate-9175')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lontras - SC abre concurso com salários de até R$ 8.105,36', 'Prefeitura de Lontras', 'SC', 'Fundamental', 27, 8105.36, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lontras-sc-abre-concurso-com-salarios-de-ate-8105')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para Professor Assistente de Odontologia em São José dos Campos - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 7477.48, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-assistente-de-odontologia-em-sao-jose-dos-campos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente em Zootecnia no Campus de Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 7477.48, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-em-zootecnia-no-campus-de-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CaraguaPrev - SP abre concurso público com salários de até R$ 7.104,30', 'CaraguaPrev - Instituto de Previdência do Município de Caraguatatuba', 'SP', 'Fundamental', 7, 7104.3, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/caraguaprev-sp-abre-concurso-publico-com-salarios-de-ate-7104')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Graça - CE publica edital de concurso público com salários de até R$ 4.300,00', 'Câmara de Graça', 'CE', 'Fundamental', 22, 4300.0, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-graca-ce-publica-edital-de-concurso-publico-com-salarios-de-ate-4300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Sebastião do Oeste - MG abre processo seletivo para cargos de nível médio', 'Prefeitura de São Sebastião do Oeste', 'MG', 'Médio', 22, 3242.0, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-sebastiao-do-oeste-mg-abre-processo-seletivo-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itanhaém - SP abre concurso com 20 vagas para guardas civis municipais', 'Prefeitura da Estância Balneária de Itanhaém', 'SP', 'Médio', 20, 2662.0, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itanhaem-sp-abre-concurso-com-20-vagas-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular em São José dos Campos - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-09-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-em-sao-jose-dos-campos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concursos para professores doutores na Faculdade de Medicina', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 16994.01, true, '2026-09-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concursos-para-professores-doutores-na-faculdade-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para o cargo de Professor Doutor no Departamento de Ciência da Computação', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16353.01, true, '2026-09-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-o-cargo-de-professor-doutor-no-departamento-de-ciencia-da-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Poço Dantas - PB abre concurso público com salários de até R$ 15.000,00', 'Prefeitura de Poço Dantas', 'PB', 'Fundamental', 84, 15000.0, true, '2026-09-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-poco-dantas-pb-abre-concurso-publico-com-salarios-de-ate-15000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tamarana - PR abre concurso e processo seletivo na área da saúde', 'Prefeitura de Tamarana', 'PR', 'Médio', 5, 8752.26, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tamarana-pr-abre-concurso-e-processo-seletivo-na-area-da-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR - PR abre processo seletivo para professores substitutos em Dois Vizinhos', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 2, 8340.33, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-pr-abre-processo-seletivo-para-professores-substitutos-em-dois-vizinhos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sapezal - MT abre processo seletivo com salários de até R$ 7.313,43', 'Prefeitura de Sapezal', 'MT', 'Fundamental', 0, 7313.43, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sapezal-mt-abre-processo-seletivo-com-salarios-de-ate-7313')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concursos para professores assistentes e adjuntos em diversas áreas', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 9, 6950.85, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concursos-para-professores-assistentes-e-adjuntos-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Buri - SP abre processos seletivos com salários de até R$ 6.208,41', 'Prefeitura de Buri', 'SP', 'Médio', 2, 6208.41, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-buri-sp-abre-processos-seletivos-com-salarios-de-ate-6208')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santa Bárbara do Sul - RS abre concurso público para Servente Interna', 'Câmara de Vereadores de Santa Bárbara do Sul', 'RS', 'Fundamental', 1, 2264.25, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santa-barbara-do-sul-rs-abre-concurso-publico-para-servente-interna')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para Professor Titular no campus de Assis - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-no-campus-de-assis-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Balneário Piçarras - SC abre seleções com salários de até R$ 22.936,56', 'Prefeitura de Balneário Piçarras', 'SC', 'Fundamental', 0, 22936.56, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-balneario-picarras-sc-abre-selecoes-com-salarios-de-ate-22936')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso para Professor Doutor na Faculdade de Engenharia Mecânica', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-para-professor-doutor-na-faculdade-de-engenharia-mecanica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para o cargo de Professor Doutor no Instituto de Física', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16353.01, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-o-cargo-de-professor-doutor-no-instituto-de-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e SAMAE de Jaraguá do Sul - SC abrem concursos públicos com salários de até R$ 15.605,92', 'PMJS - Prefeitura de Jaraguá do Sul e SAMAE - Serviço Autônomo Municipal de Água e Esgoto', 'SC', 'Fundamental', 44, 15605.92, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-samae-de-jaragua-do-sul-sc-abrem-concursos-publicos-com-salarios-de-ate-15605')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraíso - SC abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Paraíso', 'SC', 'Fundamental', 11, 15118.82, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraiso-sc-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Floresta - PE publica edital de concurso público com diversas vagas', 'Prefeitura de Floresta', 'PE', 'Fundamental', 432, 15005.27, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-floresta-pe-publica-edital-de-concurso-publico-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRM - PR abre concurso público com salários de até R$ 6.994,40', 'CRM - Conselho Regional de Medicina do Estado do Paraná', 'PR', 'Médio', 2, 6994.4, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crm-pr-abre-concurso-publico-com-salarios-de-ate-6994')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itanhaém - SP abre concurso público com salários de até R$ 6.592,00', 'Prefeitura de Itanhaém', 'SP', 'Fundamental', 106, 6592.0, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itanhaem-sp-abre-concurso-publico-com-salarios-de-ate-6592')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEPLAD e SEDUC - PA abrem concurso público com vagas para diversas áreas de atuação', 'SEPLAD - Secretaria de Estado de Planejamento e Administração e SEDUC - Secretaria de Estado de Educação do Pará', 'PA', 'Médio', 376, 6590.47, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seplad-e-seduc-pa-abrem-concurso-publico-com-vagas-para-diversas-areas-de-atuacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUJAMA - SC abre concurso público para Fiscal de Bem-estar Animal', 'FUJAMA - Fundação Jaraguaense de Meio Ambiente', 'SC', 'Superior', 1, 5856.24, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fujama-sc-abre-concurso-publico-para-fiscal-de-bem-estar-animal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ouro - SC abre concurso público com salários de até R$ 5.595,07', 'Prefeitura de Ouro', 'SC', 'Fundamental', 0, 5595.07, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ouro-sc-abre-concurso-publico-com-salarios-de-ate-5595')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Piratini - RS abre concurso público para Contador, Oficial Legislativo e Servente', 'Câmara de Piratini', 'RS', 'Fundamental', 3, 5471.63, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-piratini-rs-abre-concurso-publico-para-contador-oficial-legislativo-e-servente')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Urânia - SP abre concurso público para Coordenador e Orientador Social do CRAS', 'Prefeitura de Urânia', 'SP', 'Superior', 2, 3562.8, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-urania-sp-abre-concurso-publico-para-coordenador-e-orientador-social-do-cras')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catanduva - SP abre processo seletivo para profissionais de apoio escolar', 'Prefeitura de Catanduva', 'SP', 'Médio', 66, NULL, false, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catanduva-sp-abre-processo-seletivo-para-profissionais-de-apoio-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto no Instituto de Física', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, NULL, false, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-no-instituto-de-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Associação das Pioneiras Sociais abre seleção para Médico Neurofisiologista', 'APS - Associação das Pioneiras Sociais (Rede SARAH)', 'DF', 'Superior', 1, 32348.41, true, '2026-10-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/associacao-das-pioneiras-sociais-abre-selecao-para-medico-neurofisiologista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Dores do Indaiá - MG retifica edital de concurso público com salários de até R$ 18.702,17', 'Prefeitura de Dores do Indaiá', 'MG', 'Fundamental', 150, 18702.17, true, '2026-10-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-dores-do-indaia-mg-retifica-edital-de-concurso-publico-com-salarios-de-ate-18702')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concursos públicos para o cargo de Professor Doutor na Faculdade de Medicina', 'USP - Universidade de São Paulo', 'SP', 'Superior', 2, 16994.01, true, '2026-10-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concursos-publicos-para-o-cargo-de-professor-doutor-na-faculdade-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP - SP abre concurso público para professor doutor na área de Esporte Paralímpico', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16353.01, true, '2026-10-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-sp-abre-concurso-publico-para-professor-doutor-na-area-de-esporte-paralimpico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canguçu - RS abre concurso público com salários de até R$ 7.470,46', 'Prefeitura de Canguçu', 'RS', 'Fundamental', 92, 7470.46, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cangucu-rs-abre-concurso-publico-com-salarios-de-ate-7470')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carmo da Mata - MG divulga retificação de concurso público', 'Prefeitura de Carmo da Mata', 'MG', 'Fundamental', 21, 3886.53, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carmo-da-mata-mg-divulga-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campanário - MG retifica edital de concurso público', 'Prefeitura de Campanário', 'MG', 'Fundamental', 108, 3820.21, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campanario-mg-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSJ - MG abre concurso público com 12 vagas para professores do magistério superior', 'UFSJ - Universidade Federal de São João del-Rei', 'MG', 'Superior', 12, 13753.96, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufsj-mg-abre-concurso-publico-com-12-vagas-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para cadastro de reserva de professor visitante e estrangeiro', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 0, 13288.85, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-cadastro-de-reserva-de-professor-visitante-e-estrangeiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professor substituto de Música e Tecnologia', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 1, 8058.29, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-substituto-de-musica-e-tecnologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professor substituto de Ciência da Computação', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 1, 8058.29, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-substituto-de-ciencia-da-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ponte Alta - SC abre concurso público com salários de até R$ 5.905,61', 'Câmara de Ponte Alta', 'SC', 'Superior', 3, 5905.61, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ponte-alta-sc-abre-concurso-publico-com-salarios-de-ate-5905')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belo Jardim - PE abre concurso público com vagas para diversas secretarias', 'Prefeitura de Belo Jardim', 'PE', 'Fundamental', 151, 4813.5, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belo-jardim-pe-abre-concurso-publico-com-vagas-para-diversas-secretarias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Roseira - SP abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Roseira', 'SP', 'Fundamental', 17, 3242.0, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-roseira-sp-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Mirandiba - PE abre concurso público com vagas para diversos cargos', 'Câmara de Mirandiba', 'PE', 'Fundamental', 10, 2500.0, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-mirandiba-pe-abre-concurso-publico-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEFAZ - SC abre concurso público para o cargo de Auditor Estadual de Finanças Públicas', 'SEFAZ - Secretaria de Estado da Fazenda de Santa Catarina', 'SC', 'Superior', 50, 25337.61, true, '2026-10-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sefaz-sc-abre-concurso-publico-para-o-cargo-de-auditor-estadual-de-financas-publicas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Verê - PR abre concurso público com salários de até R$ 18.900,00', 'Prefeitura de Verê', 'PR', 'Fundamental', 0, 18900.0, true, '2026-10-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vere-pr-abre-concurso-publico-com-salarios-de-ate-18900')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAD e SSP - MA divulgam retificação de concurso para perícia oficial', 'SEAD/MA - Secretaria de Estado da Administração e Secretaria de Segurança Pública', 'MA', 'Superior', 76, 14675.58, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sead-e-ssp-ma-divulgam-retificacao-de-concurso-para-pericia-oficial')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CASAN - SC abre concursos públicos com salários de até R$ 12.600,62', 'CASAN - Companhia Catarinense de Águas e Saneamento', 'SC', 'Médio', 0, 12600.62, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/casan-sc-abre-concursos-publicos-com-salarios-de-ate-12600')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cabreúva - SP abre concurso público com salários de até R$ 11.735,45', 'Prefeitura de Cabreúva', 'SP', 'Fundamental', 9, 11735.45, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cabreuva-sp-abre-concurso-publico-com-salarios-de-ate-11735')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Joaquim - SC abre concurso público com salários de até R$ 10.330,35', 'Prefeitura de São Joaquim', 'SC', 'Fundamental', 7, 10330.35, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joaquim-sc-abre-concurso-publico-com-salarios-de-ate-10330')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cruzeta - RN abre três concursos públicos com diversas vagas e cadastro de reserva', 'Prefeitura e Câmara de Cruzeta', 'RN', 'Fundamental', 132, 9867.47, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cruzeta-rn-abre-tres-concursos-publicos-com-diversas-vagas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana do Mundaú - AL abre concurso com salários de até R$ 8.354,00', 'Prefeitura de Santana do Mundaú', 'AL', 'Fundamental', 101, 8354.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-do-mundau-al-abre-concurso-com-salarios-de-ate-8354')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barra Bonita - SC abre concurso com salários de até R$ 8.344,63', 'Prefeitura de Barra Bonita', 'SC', 'Fundamental', 6, 8344.63, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barra-bonita-sc-abre-concurso-com-salarios-de-ate-8344')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre vaga para professor substituto em Engenharia Ambiental e Sanitária', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 1, 8340.33, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-vaga-para-professor-substituto-em-engenharia-ambiental-e-sanitaria')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caçapava - SP abre concurso público com salários de até R$ 6.871,92', 'Prefeitura de Caçapava', 'SP', 'Médio', 51, 6871.92, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cacapava-sp-abre-concurso-publico-com-salarios-de-ate-6871')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araçariguama - SP abre seleção para professores em diversas áreas', 'Prefeitura de Araçariguama', 'SP', 'Superior', 0, 5655.43, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracariguama-sp-abre-selecao-para-professores-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Oeste - SC abre concurso público e processo seletivo para diversos cargos', 'Prefeitura de São João do Oeste', 'SC', 'Médio', 0, 5578.25, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-oeste-sc-abre-concurso-publico-e-processo-seletivo-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Acaraú - CE abre concurso com vagas para diversos níveis de escolaridade', 'Prefeitura de Acaraú', 'CE', 'Fundamental', 266, 5000.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-acarau-ce-abre-concurso-com-vagas-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Valença - RJ abre concurso público para professores', 'Prefeitura de Valença', 'RJ', 'Médio', 100, 4468.62, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-valenca-rj-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Rosa de Viterbo - SP abre seleção para Professores e Auxiliares de Educação', 'Prefeitura de Santa Rosa de Viterbo', 'SP', 'Médio', 0, 3947.97, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-rosa-de-viterbo-sp-abre-selecao-para-professores-e-auxiliares-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRF - ES abre concurso público para o cargo de Advogado', 'CRF/ES - Conselho Regional de Farmácia do Estado do Espírito Santo', 'ES', 'Superior', 1, 3000.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crf-es-abre-concurso-publico-para-o-cargo-de-advogado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bom Despacho - MG abre seleção para cargos de nível superior', 'Prefeitura de Bom Despacho', 'MG', 'Superior', 2, 2865.61, true, '2026-10-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bom-despacho-mg-abre-selecao-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unimontes - MG anuncia seleção simplificada para o Hospital Universitário Clemente de Faria', 'HUCF - Hospital Universitário Clemente de Faria da Unimontes', 'MG', 'Médio', 211, 1979.42, true, '2026-10-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unimontes-mg-anuncia-selecao-simplificada-para-o-hospital-universitario-clemente-de-faria')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Reriutaba - CE abre concurso público para Guarda Municipal', 'Prefeitura de Reriutaba', 'CE', 'Médio', 9, NULL, false, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-reriutaba-ce-abre-concurso-publico-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Faculdade Felício Rocho - MG abre processo seletivo para especialização médica e fellowship', 'Faculdade Felício Rocho', 'MG', 'Superior', 74, NULL, false, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/faculdade-felicio-rocho-mg-abre-processo-seletivo-para-especializacao-medica-e-fellowship')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AFECC/HSRC - ES abre processo seletivo para o Programa de Especialização Médica em Cirurgia Plástica', 'AFECC - Associação Feminina de Educação e Combate ao Câncer', 'ES', 'Superior', 2, NULL, false, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/afecc-hsrc-es-abre-processo-seletivo-para-o-programa-de-especializacao-medica-em-cirurgia-plastica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Santa Rita de Cássia - ES abre seleção para Residência Médica em diversas áreas', 'AFECC - Hospital Santa Rita de Cássia', 'ES', 'Superior', 13, NULL, false, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-santa-rita-de-cassia-es-abre-selecao-para-residencia-medica-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio das Pedras - SP abre concurso com salários de até R$ 5.856,50.', 'Câmara de Rio das Pedras', 'SP', 'Fundamental', 4, 5856.5, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-das-pedras-sp-abre-concurso-com-salarios-de-ate-5856-50')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Educação de Cristalina - GO abre seleção para professores substitutos', 'SME - Secretaria Municipal de Educação de Cristalina', 'GO', 'Superior', 0, NULL, false, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/secretaria-de-educacao-de-cristalina-go-abre-selecao-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente na área de Sistemas de Computação em Sorocaba - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-10-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-na-area-de-sistemas-de-computacao-em-sorocaba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mirador - PR abre concurso público com salários de até R$ 15.159,36', 'Prefeitura de Mirador', 'PR', 'Fundamental', 27, 15159.36, true, '2026-10-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mirador-pr-abre-concurso-publico-com-salarios-de-ate-15159')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público para professores', 'Prefeitura de Anchieta', 'ES', 'Superior', 64, 8640.0, true, '2026-10-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFAL - MG anuncia processo seletivo para professor substituto de Linguística e Literatura', 'UNIFAL - Universidade Federal de Alfenas', 'MG', 'Superior', 1, 8340.33, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifal-mg-anuncia-processo-seletivo-para-professor-substituto-de-linguistica-e-literatura')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Pedro da Serra - RS abre concurso público com salários de até R$ 7.907,66', 'Prefeitura de São Pedro da Serra', 'RS', 'Fundamental', 29, 7907.66, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-pedro-da-serra-rs-abre-concurso-publico-com-salarios-de-ate-7907')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Portão - RS abrem concursos públicos para diversos cargos', 'Prefeitura e Câmara de Portão', 'RS', 'Fundamental', 11, 7039.98, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-portao-rs-abrem-concursos-publicos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DETRAN - SP abre concurso com 145 vagas para agentes estaduais de trânsito', 'DETRAN - Departamento Estadual de Trânsito de São Paulo', 'SP', 'Superior', 145, 5702.18, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/detran-sp-abre-concurso-com-145-vagas-para-agentes-estaduais-de-transito')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tangará - RN publica edital de concurso público para diversos cargos', 'Prefeitura de Tangará', 'RN', 'Fundamental', 85, 4675.5, true, '2026-10-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tangara-rn-publica-edital-de-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conchal - SP abre concurso público com vagas para diversos cargos', 'Prefeitura de Conchal', 'SP', 'Fundamental', 26, 3809.23, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conchal-sp-abre-concurso-publico-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itacarambi - MG abre concurso público para diversos cargos', 'Câmara de Itacarambi', 'MG', 'Fundamental', 5, 3737.48, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-itacarambi-mg-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barão - RS abre concurso para Fiscal e Professores', 'Prefeitura de Barão', 'RS', 'Médio', 1, 3501.8, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barao-rs-abre-concurso-para-fiscal-e-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Garça - SP abre concurso público para Técnico Legislativo', 'Câmara de Garça', 'SP', 'Médio', 1, 3378.77, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-garca-sp-abre-concurso-publico-para-tecnico-legislativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piumhi - MG abre concurso para Guarda Civil Municipal', 'Prefeitura de Piumhi', 'MG', 'Médio', 24, 3248.0, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piumhi-mg-abre-concurso-para-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Senador Modestino Gonçalves - MG abre vagas para cargos de nível médio', 'Prefeitura de Senador Modestino Gonçalves', 'MG', 'Médio', 3, 3242.0, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-senador-modestino-goncalves-mg-abre-vagas-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coronel Vivida - PR retifica edital de concurso público com salários de até R$ 21.525,56', 'Prefeitura de Coronel Vivida', 'PR', 'Fundamental', 65, 21525.56, true, '2026-10-08'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coronel-vivida-pr-retifica-edital-de-concurso-publico-com-salarios-de-ate-21525')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEPLAG - RJ publica retificações do concurso com 60 vagas para cargos de nível superior', 'SEPLAG - Secretaria de Estado de Planejamento e Gestão', 'RJ', 'Superior', 60, 14387.75, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seplag-rj-publica-retificacoes-do-concurso-com-60-vagas-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre processo seletivo para professores colaboradores em diversas áreas', 'UEM - Universidade Estadual de Maringá', 'PR', 'Superior', 4, 11221.64, true, '2026-10-08'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-processo-seletivo-para-professores-colaboradores-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Embu das Artes - SP divulga retificação de concurso com diversas vagas e cadastro de reserva', 'Prefeitura de Embu das Artes', 'SP', 'Fundamental', 94, 9745.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-embu-das-artes-sp-divulga-retificacao-de-concurso-com-diversas-vagas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Assis - SP abre concurso público com salários de até R$ 8.510,00', 'Câmara de Assis', 'SP', 'Fundamental', 8, 8510.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-assis-sp-abre-concurso-publico-com-salarios-de-ate-8510')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coromandel - MG abre concurso público com salários de até R$ 7.821,98', 'Prefeitura de Coromandel', 'MG', 'Fundamental', 37, 7821.98, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coromandel-mg-abre-concurso-publico-com-salarios-de-ate-7821')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Metropolitano Odilon Behrens - MG abre concurso público com salários de até R$ 7.397,55', 'HOB - Hospital Metropolitano Odilon Behrens', 'MG', 'Médio', 230, 7397.55, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-metropolitano-odilon-behrens-mg-abre-concurso-publico-com-salarios-de-ate-7397')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coronel Martins - SC abre processo seletivo com salários de até R$ 7.207,55', 'Prefeitura de Coronel Martins', 'SC', 'Fundamental', 7, 7207.55, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coronel-martins-sc-abre-processo-seletivo-com-salarios-de-ate-7207')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caruaru - PE abre concurso público para auditores e analistas fiscais', 'Prefeitura de Caruaru', 'PE', 'Superior', 20, 6000.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caruaru-pe-abre-concurso-publico-para-auditores-e-analistas-fiscais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('São Sebastião Prev - SP abre concurso público com salários de até R$ 5.712,95', 'SÃO SEBASTIÃO PREV - Instituto Previdenciário do Município de São Sebastião', 'SP', 'Médio', 4, 5712.95, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sao-sebastiao-prev-sp-abre-concurso-publico-com-salarios-de-ate-5712')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ipaba - MG retifica edital de concurso público com salários de até R$ 5.275,34', 'Prefeitura de Ipaba', 'MG', 'Fundamental', 240, 5275.34, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipaba-mg-retifica-edital-de-concurso-publico-com-salarios-de-ate-5275')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Mutunópolis - GO abre concurso com salários de até R$ 5.000,00', 'Câmara de Mutunópolis', 'GO', 'Fundamental', 7, 5000.0, true, '2026-10-08'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-mutunopolis-go-abre-concurso-com-salarios-de-ate-5000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paulínia - SP retifica concurso com 40 vagas para Guarda Municipal', 'Prefeitura de Paulínia', 'SP', 'Médio', 40, 4676.85, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paulinia-sp-retifica-concurso-com-40-vagas-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Gertrudes - SP abre seleção para cadastro de reserva na educação', 'Prefeitura de Santa Gertrudes', 'SP', 'Médio', 0, 4073.36, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-gertrudes-sp-abre-selecao-para-cadastro-de-reserva-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pirpirituba - PB abre concurso público para Procurador Jurídico', 'Prefeitura de Pirpirituba', 'PB', 'Superior', 1, 4000.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pirpirituba-pb-abre-concurso-publico-para-procurador-juridico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapira - SP abre concurso para professores de diversas áreas', 'Prefeitura de Itapira', 'SP', 'Superior', 0, 3847.97, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapira-sp-abre-concurso-para-professores-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mauá - SP abre concurso com 100 vagas para guardas civis municipais', 'Prefeitura do Município de Mauá', 'SP', 'Médio', 100, 3823.39, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maua-sp-abre-concurso-com-100-vagas-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guimarânia - MG abre concurso público para fiscal tributário', 'Prefeitura de Guimarânia', 'MG', 'Superior', 1, 3145.52, true, '2026-10-08'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guimarania-mg-abre-concurso-publico-para-fiscal-tributario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itatinga - SP abre concurso público para a Guarda Civil Municipal', 'Prefeitura de Itatinga', 'SP', 'Médio', 2, 3137.66, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itatinga-sp-abre-concurso-publico-para-a-guarda-civil-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Marcelândia - MT publica edital de processo seletivo para agentes de saúde e de endemias', 'Prefeitura de Marcelândia', 'MT', 'Médio', 3, 3036.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-marcelandia-mt-publica-edital-de-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Trindade - PE abre concurso público com salários de até R$ 2.500,00', 'Câmara de Trindade', 'PE', 'Fundamental', 11, 2500.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-trindade-pe-abre-concurso-publico-com-salarios-de-ate-2500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Birigui - SP abre concurso público com vagas para professores auxiliares', 'Prefeitura de Birigui', 'SP', 'Superior', 10, 30.53, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-birigui-sp-abre-concurso-publico-com-vagas-para-professores-auxiliares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Massaranduba - SC abre concurso com salários de até R$ 24.722,94', 'Prefeitura de Massaranduba', 'SC', 'Fundamental', 47, 24722.94, true, '2026-10-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-massaranduba-sc-abre-concurso-com-salarios-de-ate-24722')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EPTC - Porto Alegre/RS abre concurso público com salários de até R$ 9.780,90', 'EPTC - Empresa Pública de Transporte e Circulação S/A', 'RS', 'Fundamental', 3, 9780.9, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/eptc-porto-alegre-rs-abre-concurso-publico-com-salarios-de-ate-9780')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Ibirama - SC abre concurso público com salários de até R$ 8.500,00', 'Câmara de Ibirama', 'SC', 'Fundamental', 4, 8500.0, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-ibirama-sc-abre-concurso-publico-com-salarios-de-ate-8500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canarana - MT abre processo seletivo com salários de até R$ 8.214,61', 'Prefeitura de Canarana', 'MT', 'Fundamental', 0, 8214.61, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-canarana-mt-abre-processo-seletivo-com-salarios-de-ate-8214')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapoá - SC abre processo seletivo para fonoaudiólogo', 'SME - Secretaria Municipal de Educação de Itapoá', 'SC', 'Superior', 0, 7838.82, true, '2026-10-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapoa-sc-abre-processo-seletivo-para-fonoaudiologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barão de Cotegipe - RS abre concurso público com salários de até R$ 7.499,45', 'Prefeitura de Barão de Cotegipe', 'RS', 'Fundamental', 26, 7499.45, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barao-de-cotegipe-rs-abre-concurso-publico-com-salarios-de-ate-7499')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso para professor adjunto na área de nefrologia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-para-professor-adjunto-na-area-de-nefrologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ publica edital de concurso público para Professor Adjunto de Nefrologia em Cabo Frio', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-publica-edital-de-concurso-publico-para-professor-adjunto-de-nefrologia-em-cabo-frio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pedra Dourada - MG divulga retificações do concurso público e do processo seletivo', 'Prefeitura de Pedra Dourada', 'MG', 'Fundamental', 47, 6057.95, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pedra-dourada-mg-divulga-retificacoes-do-concurso-publico-e-do-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Riolândia - SP abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Riolândia', 'SP', 'Médio', 7, 1983.02, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-riolandia-sp-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fraiburgo - SC abre seleção para o cargo de Motorista', 'Prefeitura de Fraiburgo', 'SC', 'Fundamental', 0, 1927.71, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fraiburgo-sc-abre-selecao-para-o-cargo-de-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São José do Sabugi - PB abre concurso público com 11 vagas', 'Câmara de São José do Sabugi', 'PB', 'Fundamental', 11, 1621.0, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-jose-do-sabugi-pb-abre-concurso-publico-com-11-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação Santo André - SP abre concurso público para o cargo de Professor Colaborador Nível I', 'FSA - Fundação Santo André', 'SP', 'Superior', 10, 42.48, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-santo-andre-sp-abre-concurso-publico-para-o-cargo-de-professor-colaborador-nivel-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cajamar - SP abre seleção para cadastro de reserva de professores', 'Prefeitura de Cajamar', 'SP', 'Superior', 0, 35.99, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cajamar-sp-abre-selecao-para-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Empresas DME - MG abre seleção para aprendizes na área administrativa', 'DME - Empresas DME', 'MG', 'Médio', 4, NULL, false, '2026-10-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/empresas-dme-mg-abre-selecao-para-aprendizes-na-area-administrativa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAEB de Brotas - SP abre concurso público com salários de até R$ 6.139,03', 'SAAEB - Serviço Autônomo de Água e Esgoto de Brotas', 'SP', 'Fundamental', 7, 6139.03, true, '2026-10-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saaeb-de-brotas-sp-abre-concurso-publico-com-salarios-de-ate-6139')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Petrolina de Goiás - GO abre concurso público com salários de até R$ 11.919,01', 'Prefeitura de Petrolina de Goiás', 'GO', 'Fundamental', 100, 11919.01, true, '2026-10-12'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-petrolina-de-goias-go-abre-concurso-publico-com-salarios-de-ate-11919')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arealva - SP abre concurso público com salários de até R$ 9.826,50', 'Prefeitura de Arealva', 'SP', 'Fundamental', 9, 9826.5, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arealva-sp-abre-concurso-publico-com-salarios-de-ate-9826')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coxixola - PB abre concurso público com salários de até R$ 5.000,00', 'Prefeitura de Coxixola', 'PB', 'Fundamental', 25, 5000.0, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coxixola-pb-abre-concurso-publico-com-salarios-de-ate-5000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Teotônio Vilela - AL retifica edital de concurso público com vagas na área da educação', 'Prefeitura de Teotônio Vilela', 'AL', 'Médio', 205, 4989.12, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-teotonio-vilela-al-retifica-edital-de-concurso-publico-com-vagas-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Areia - PB publica edital de concurso público com salários de até R$ 4.782,72', 'Prefeitura de Areia', 'PB', 'Fundamental', 195, 4782.72, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-areia-pb-publica-edital-de-concurso-publico-com-salarios-de-ate-4782')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piquet Carneiro - CE abre concurso público para diversos níveis de escolaridade', 'Prefeitura de Piquet Carneiro', 'CE', 'Fundamental', 100, 3242.0, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piquet-carneiro-ce-abre-concurso-publico-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tanguá - RJ abre novo concurso público com salários de até R$ 2.992,50', 'Prefeitura de Tanguá', 'RJ', 'Médio', 23, 2992.5, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tangua-rj-abre-novo-concurso-publico-com-salarios-de-ate-2992')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR abre concurso público com salários de até R$ 18.106,37', 'Prefeitura de Ivaiporã', 'PR', 'Fundamental', 15, 18106.37, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-abre-concurso-publico-com-salarios-de-ate-18106')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para Professor Doutor na Faculdade de Engenharia Mecânica', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-na-faculdade-de-engenharia-mecanica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor assistente de Medicina em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-medicina-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor assistente na área de engenharia de bioprocessos em Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-assistente-na-area-de-engenharia-de-bioprocessos-em-araraquara-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso para Professor Doutor na Faculdade de Educação', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-para-professor-doutor-na-faculdade-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraíso - SC publica edital de concurso público com salários de até R$ 15.126,65', 'Prefeitura de Paraíso', 'SC', 'Fundamental', 11, 15126.65, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraiso-sc-publica-edital-de-concurso-publico-com-salarios-de-ate-15126')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRPE abre concurso com vagas para professores do magistério superior', 'UFRPE - Universidade Federal Rural de Pernambuco', 'PE', 'Superior', 14, 13288.85, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufrpe-abre-concurso-com-vagas-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Queimados - RJ abre concurso público com salários de até R$ 11.567,11', 'Prefeitura de Queimados', 'RJ', 'Médio', 463, 11567.11, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-queimados-rj-abre-concurso-publico-com-salarios-de-ate-11567')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Governo do Estado do Amapá - AP publica edital de concurso com salários de até R$ 11.116,42', 'SESA - Secretaria de Estado da Saúde do Amapá', 'AP', 'Médio', 4210, 11116.42, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/governo-do-estado-do-amapa-ap-publica-edital-de-concurso-com-salarios-de-ate-11116')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Saltinho - SP abre concurso público com salários de até R$ 8.962,00', 'Prefeitura de Saltinho', 'SP', 'Fundamental', 20, 8962.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-saltinho-sp-abre-concurso-publico-com-salarios-de-ate-8962')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Branco - AC abre concurso público com 13 vagas imediatas', 'Câmara de Rio Branco', 'AC', 'Médio', 13, 6300.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-branco-ac-abre-concurso-publico-com-13-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Piracicaba - MG abre concurso público com salários de até R$ 4.000,00', 'Câmara de Rio Piracicaba', 'MG', 'Fundamental', 5, 4000.0, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-piracicaba-mg-abre-concurso-publico-com-salarios-de-ate-4000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Saltinho - SP abre processo seletivo para Agente Comunitário de Saúde', 'Prefeitura de Saltinho', 'SP', 'Médio', 1, 3352.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-saltinho-sp-abre-processo-seletivo-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vilhena - RO retifica o edital de processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Vilhena', 'RO', 'Médio', 30, 3242.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vilhena-ro-retifica-o-edital-de-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR abre concurso público para agentes de saúde e de endemias', 'Prefeitura de Ivaiporã', 'PR', 'Médio', 0, 3242.0, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-abre-concurso-publico-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tatuí - SP abre concurso público para cargos de nível fundamental e médio', 'Prefeitura de Tatuí', 'SP', 'Fundamental', 107, 2193.73, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tatui-sp-abre-concurso-publico-para-cargos-de-nivel-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nísia Floresta - RN abre concurso público para Guarda Municipal', 'Prefeitura de Nísia Floresta', 'RN', 'Médio', 30, 1800.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nisia-floresta-rn-abre-concurso-publico-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJRS abre concurso público com 30 vagas para o cargo de Juiz de Direito Substituto', 'TJRS - Tribunal de Justiça do Estado do Rio Grande do Sul', 'RS', 'Superior', 30, 30505.36, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/tjrs-abre-concurso-publico-com-30-vagas-para-o-cargo-de-juiz-de-direito-substituto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para Professor Doutor na área de Projeto Mecânico', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-na-area-de-projeto-mecanico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público com vaga para Professor Doutor na Faculdade de Ciências Médicas', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-com-vaga-para-professor-doutor-na-faculdade-de-ciencias-medicas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso público para professor de magistério superior na área de Antropologia do Desenvolvimento', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13288.85, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-publico-para-professor-de-magisterio-superior-na-area-de-antropologia-do-desenvolvimento')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEMA - MT abre concurso para Analistas de Meio Ambiente e de Desenvolvimento Econômico e Social', 'SEMA - Secretaria de Meio Ambiente de Mato Grosso', 'MT', 'Superior', 0, 10491.97, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/sema-mt-abre-concurso-para-analistas-de-meio-ambiente-e-de-desenvolvimento-economico-e-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto na área de hematologia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-na-area-de-hematologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Instituto Cultural de São Lourenço - SC abre concurso com salários de até R$ 5.855,06', 'ICSL - Instituto Cultural de São Lourenço', 'SC', 'Médio', 13, 5855.06, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/instituto-cultural-de-sao-lourenco-sc-abre-concurso-com-salarios-de-ate-5855')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dom Silvério - MG abre concurso com vagas imediatas e cadastro de reserva', 'Câmara de Dom Silvério', 'MG', 'Fundamental', 5, 3008.62, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-dom-silverio-mg-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Prudente de Morais - MG abre concurso para Auxiliar Administrativo e Auxiliar de Serviços Gerais', 'Câmara de Prudente de Morais', 'MG', 'Fundamental', 3, 2600.0, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-prudente-de-morais-mg-abre-concurso-para-auxiliar-administrativo-e-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor titular na Faculdade de Medicina de Botucatu', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, NULL, false, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-titular-na-faculdade-de-medicina-de-botucatu')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Tebas - PR abre concurso público com salários de até R$ 20.616,83', 'Prefeitura de Nova Tebas', 'PR', 'Fundamental', 37, 20616.83, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-tebas-pr-abre-concurso-publico-com-salarios-de-ate-20616')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jarinu - SP abre concurso público com salários de até R$ 11.267,00', 'Prefeitura de Jarinu', 'SP', 'Fundamental', 4, 11267.0, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jarinu-sp-abre-concurso-publico-com-salarios-de-ate-11267')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREA - PR publica edital de concurso público com vagas imediatas e formação de cadastro de reserva', 'CREA - Conselho Regional de Engenharia e Agronomia do Paraná', 'PR', 'Médio', 7, 7234.12, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crea-pr-publica-edital-de-concurso-publico-com-vagas-imediatas-e-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEDUC e SEPLAG - CE abrem concurso público com vagas para professores', 'SEDUC - Secretaria da Educação do Estado do Ceará', 'CE', 'Superior', 2000, 7181.41, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/seduc-e-seplag-ce-abrem-concurso-publico-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pau dos Ferros - RN abre concurso público com salários de até R$ 4.714,65', 'Câmara de Pau dos Ferros', 'RN', 'Médio', 5, 4714.65, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-pau-dos-ferros-rn-abre-concurso-publico-com-salarios-de-ate-4714')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Intermunicipal de Saúde 08 de Abril - SP abre processo seletivo para diversas áreas', 'Consórcio Intermunicipal de Saúde "08 de Abril"', 'SP', 'Fundamental', 45, 4567.06, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/consorcio-intermunicipal-de-saude-08-de-abril-sp-abre-processo-seletivo-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRA - AM abre concurso público com salários de até R$ 3.683,95 em Manaus', 'CRA - Conselho Regional de Administração do Amazonas', 'AM', 'Médio', 10, 3683.95, true, '2026-10-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cra-am-abre-concurso-publico-com-salarios-de-ate-3683-em-manaus')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarulhos - SP abre concurso público com 200 vagas para guardas civis municipais', 'Prefeitura de Guarulhos', 'SP', 'Médio', 200, 2445.06, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guarulhos-sp-abre-concurso-publico-com-200-vagas-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular no Departamento de Ciências Biológicas de Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-10-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-no-departamento-de-ciencias-biologicas-de-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PM-AL reabre concurso para Soldado do Quadro de Praças e Oficial de Estado-Maior', 'PMAL - Polícia Militar do Estado de Alagoas', 'AL', 'Médio', 530, 11563.77, true, '2026-10-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/pm-al-reabre-concurso-para-soldado-do-quadro-de-pracas-e-oficial-de-estado-maior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AgSUS retifica processo seletivo para psicólogos', 'AgSUS - Agência Brasileira de Apoio à Gestão do SUS', 'Nacional', 'Superior', 0, 8800.0, true, '2026-10-16'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/agsus-retifica-processo-seletivo-para-psicologos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vale Real - RS abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Vale Real', 'RS', 'Fundamental', 27, 7717.63, true, '2026-10-16'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vale-real-rs-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capinópolis - MG abre concurso público com salários de até R$ 5.800,00', 'Câmara de Capinópolis', 'MG', 'Fundamental', 5, 5800.0, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capinopolis-mg-abre-concurso-publico-com-salarios-de-ate-5800')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de João Monlevade - MG abre concurso público para cargos de nível médio', 'Câmara de João Monlevade', 'MG', 'Médio', 12, 3564.47, true, '2026-10-16'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-joao-monlevade-mg-abre-concurso-publico-para-cargos-de-nivel-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFPE abre concurso para docente na área de Eletromagnetismo/Fotônica', 'UFPE - Universidade Federal de Pernambuco', 'PE', 'Superior', 1, 26326.81, true, '2026-10-17'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ufpe-abre-concurso-para-docente-na-area-de-eletromagnetismo-fotonica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para Professor Visitante na área de Química', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 0, 13288.85, true, '2026-10-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-visitante-na-area-de-quimica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Joaquim - SC abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de São Joaquim', 'SC', 'Fundamental', 1, 5681.54, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joaquim-sc-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Estrela do Norte - SP abre concurso público para Contínuo e Encarregado Administrativo', 'Câmara de Estrela do Norte', 'SP', 'Fundamental', 2, 3627.34, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-estrela-do-norte-sp-abre-concurso-publico-para-continuo-e-encarregado-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores titulares na Faculdade de Odontologia de Araçatuba - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 2, 25261.98, true, '2026-10-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-titulares-na-faculdade-de-odontologia-de-aracatuba-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Sebastião do Rio Verde - MG abre concurso público com salários de até R$ 12.642,00', 'Prefeitura de São Sebastião do Rio Verde', 'MG', 'Fundamental', 15, 12642.0, true, '2026-10-19'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-sebastiao-do-rio-verde-mg-abre-concurso-publico-com-salarios-de-ate-12642')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itanhaém - SP abre concurso público com salários de até R$ 7.097,00', 'Câmara da Estância Balneária de Itanhaém', 'SP', 'Médio', 27, 7097.0, true, '2026-10-19'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-itanhaem-sp-abre-concurso-publico-com-salarios-de-ate-7097')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concursos para professores adjuntos no Departamento de Engenharia Elétrica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 2, 6950.85, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concursos-para-professores-adjuntos-no-departamento-de-engenharia-eletrica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trindade - PE publica edital de concurso com vagas para diversos níveis', 'Prefeitura de Trindade', 'PE', 'Médio', 353, 6600.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trindade-pe-publica-edital-de-concurso-com-vagas-para-diversos-niveis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Nossa Senhora da Conceição - SC abre seleção para residência médica em diversas especialidades', 'IMAS - Hospital Nossa Senhora da Conceição (HNSC)', 'SC', 'Superior', 24, 4106.09, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-nossa-senhora-da-conceicao-sc-abre-selecao-para-residencia-medica-em-diversas-especialidades')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Verde - GO abre concurso para Agente de Trânsito e Vistoriador de Veículos', 'Prefeitura de Rio Verde', 'GO', 'Médio', 8, 3588.55, true, '2026-10-19'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-verde-go-abre-concurso-para-agente-de-transito-e-vistoriador-de-veiculos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG - MG abre concurso para cargo de professor na área de Citologia', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13288.85, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-mg-abre-concurso-para-cargo-de-professor-na-area-de-citologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Heitoraí - GO abre concurso público com vagas para diversas áreas', 'Prefeitura de Heitoraí', 'GO', 'Fundamental', 82, 9383.4, true, '2026-10-20'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-heitorai-go-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('ADEAL abre concurso público para cargos de Fiscal Estadual Agropecuário', 'ADEAL - Agência de Defesa e Inspeção Agropecuária de Alagoas', 'AL', 'Superior', 20, 7320.42, true, '2026-10-20'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/adeal-abre-concurso-publico-para-cargos-de-fiscal-estadual-agropecuario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ - RJ abre vaga para professor adjunto de cardiologia em Cabo Frio', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-20'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/uerj-rj-abre-vaga-para-professor-adjunto-de-cardiologia-em-cabo-frio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Hidrolina - GO abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Hidrolina', 'GO', 'Fundamental', 80, 3847.97, true, '2026-10-20'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-hidrolina-go-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itanhandu - MG abre seleção para Agente de Combate às Endemias', 'Prefeitura de Itanhandu', 'MG', 'Médio', 1, 3242.0, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itanhandu-mg-abre-selecao-para-agente-de-combate-as-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Sefaz - AL abre concurso público com vagas para o cargo de Auditor Fiscal', 'SEFAZ - Secretaria de Estado da Fazenda de Alagoas', 'AL', 'Superior', 40, 25270.68, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/sefaz-al-abre-concurso-publico-com-vagas-para-o-cargo-de-auditor-fiscal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araquari - SC abre vagas em processo seletivo para professores', 'Prefeitura de Araquari', 'SC', 'Superior', 2, 5443.19, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-araquari-sc-abre-vagas-em-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capelinha - MG retifica edital do concurso público com salários de até R$ 4.527,60', 'Câmara de Capelinha', 'MG', 'Fundamental', 27, 4527.6, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-capelinha-mg-retifica-edital-do-concurso-publico-com-salarios-de-ate-4527')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Maria de Jetibá - ES abre concurso público com vagas para guardas municipais', 'Prefeitura de Santa Maria de Jetibá', 'ES', 'Médio', 30, 3763.26, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-maria-de-jetiba-es-abre-concurso-publico-com-vagas-para-guardas-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arraial do Cabo - RJ retifica processo seletivo para agentes de saúde e de endemias', 'Prefeitura de Arraial do Cabo', 'RJ', 'Médio', 100, 3242.0, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arraial-do-cabo-rj-retifica-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belo Vale - MG publica edital de processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Belo Vale', 'MG', 'Médio', 30, 3242.0, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belo-vale-mg-publica-edital-de-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor titular na Faculdade de Odontologia de Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 25261.98, true, '2026-10-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-titular-na-faculdade-de-odontologia-de-araraquara-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Verde - GO abre concurso público para Auditor Fiscal da Receita Municipal', 'Prefeitura de Rio Verde', 'GO', 'Superior', 5, 4809.0, true, '2026-10-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-verde-go-abre-concurso-publico-para-auditor-fiscal-da-receita-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Inaciolândia - GO publicam edital de concurso com vagas imediatas e cadastro de reserva', 'Prefeitura e Câmara de Inaciolândia', 'GO', 'Fundamental', 67, 4070.2, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-inaciolandia-go-publicam-edital-de-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Taquarituba - SP divulga retificação do concurso público com salários de até R$ 22.537,36', 'Prefeitura de Taquarituba', 'SP', 'Fundamental', 22, 22537.36, true, '2026-10-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-taquarituba-sp-divulga-retificacao-do-concurso-publico-com-salarios-de-ate-22537')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carmo do Rio Verde - GO abre concurso público com vagas para professores', 'Prefeitura de Carmo do Rio Verde', 'GO', 'Superior', 6, 3847.97, true, '2026-10-26'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carmo-do-rio-verde-go-abre-concurso-publico-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unimontes - MG abre concurso público para professores na área de educação física', 'UNIMONTES - Universidade Estadual de Montes Claros', 'MG', 'Superior', 17, 8257.49, true, '2026-10-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unimontes-mg-abre-concurso-publico-para-professores-na-area-de-educacao-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uruana - GO abre concurso público para analista ambiental', 'Prefeitura de Uruana', 'GO', 'Superior', 2, 2500.0, true, '2026-10-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uruana-go-abre-concurso-publico-para-analista-ambiental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para professor doutor na área de ortodontia', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-29'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-na-area-de-ortodontia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFAP abre concurso para cargos de Técnico-Administrativo em Educação', 'IFAP - Instituto Federal de Educação, Ciência e Tecnologia do Amapá', 'AP', 'Médio', 23, 5215.39, true, '2026-10-29'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ifap-abre-concurso-para-cargos-de-tecnico-administrativo-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EMATER - MG anuncia concurso público com salários de até R$ 7.321,75', 'EMATER - Empresa de Assistência Técnica e Extensão Rural do Estado de Minas Gerais', 'MG', 'Médio', 120, 7321.75, true, '2026-10-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/emater-mg-anuncia-concurso-publico-com-salarios-de-ate-7321')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público com vaga para professor adjunto de Bioquímica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-com-vaga-para-professor-adjunto-de-bioquimica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso para professor adjunto na área de engenharia econômica', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-para-professor-adjunto-na-area-de-engenharia-economica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso para Professor Adjunto de Metodologia e Técnicas de Computação', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-para-professor-adjunto-de-metodologia-e-tecnicas-de-computacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pedro Teixeira - MG publica edital de concurso público com salários de até R$ 5.494,76', 'Prefeitura de Pedro Teixeira', 'MG', 'Fundamental', 120, 5494.76, true, '2026-10-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pedro-teixeira-mg-publica-edital-de-concurso-publico-com-salarios-de-ate-5494')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa da Prata - MG altera período de inscrições do concurso público com salários de até R$ 21 mil', 'Prefeitura de Lagoa da Prata', 'MG', 'Fundamental', 105, 21489.7, true, '2026-11-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-da-prata-mg-altera-periodo-de-inscricoes-do-concurso-publico-com-salarios-de-ate-21-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belo Vale - MG abre concurso público com diversas vagas e salários de até R$ 8.000,00', 'Prefeitura de Belo Vale', 'MG', 'Fundamental', 179, 8000.0, true, '2026-11-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belo-vale-mg-abre-concurso-publico-com-diversas-vagas-e-salarios-de-ate-8000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dores do Indaiá - MG abre concurso público com salários de até R$ 4.500,00', 'Câmara de Dores do Indaiá', 'MG', 'Fundamental', 5, 4500.0, true, '2026-11-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-dores-do-indaia-mg-abre-concurso-publico-com-salarios-de-ate-4500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pedras de Maria da Cruz - MG abre concurso público para níveis fundamental e médio', 'Câmara de Pedras de Maria da Cruz', 'MG', 'Fundamental', 4, 1621.0, true, '2026-11-04'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-pedras-de-maria-da-cruz-mg-abre-concurso-publico-para-niveis-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Vicente de Minas - MG abre concurso público com salários de até R$ 15.142,28', 'Prefeitura de São Vicente de Minas', 'MG', 'Fundamental', 35, 15142.28, true, '2026-11-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-vicente-de-minas-mg-abre-concurso-publico-com-salarios-de-ate-15142')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISICOM - MG anuncia concurso público com vaga para médico veterinário', 'CISICOM - Consórcio Intermunicipal dos Serviços de Inspeção do Centro-Oeste Mineiro', 'MG', 'Superior', 1, 3500.0, true, '2026-11-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cisicom-mg-anuncia-concurso-publico-com-vaga-para-medico-veterinario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Conceição do Mato Dentro - MG retifica edital de concurso público', 'Prefeitura de Conceição do Mato Dentro', 'MG', 'Médio', 264, 21138.26, true, '2026-11-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-conceicao-do-mato-dentro-mg-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCE - GO abre concurso público para técnicos de controle externo', 'TCE - Tribunal de Contas do Estado de Goiás', 'GO', 'Médio', 16, 11862.19, true, '2026-11-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/tce-go-abre-concurso-publico-para-tecnicos-de-controle-externo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aracati - CE abre concurso público com salários de até R$ 5.431,00', 'Prefeitura de Aracati', 'CE', 'Fundamental', 127, 5431.0, true, '2026-11-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracati-ce-abre-concurso-publico-com-salarios-de-ate-5431')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caldas Novas - GO divulga retificação do concurso público para guardas civis municipais', 'Prefeitura de Caldas Novas', 'GO', 'Médio', 15, 3100.0, true, '2026-11-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caldas-novas-go-divulga-retificacao-do-concurso-publico-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Pirapama - MG abre concurso com salários de até R$ 6.221,41', 'Prefeitura de Santana de Pirapama', 'MG', 'Fundamental', 79, 6221.41, true, '2026-11-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-pirapama-mg-abre-concurso-com-salarios-de-ate-6221')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Divisa Nova - MG abre concurso público para Agente de Contratação e Contador', 'Câmara de Divisa Nova', 'MG', 'Superior', 2, 3868.2, true, '2026-11-10'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-divisa-nova-mg-abre-concurso-publico-para-agente-de-contratacao-e-contador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei - MG abre concurso público com salários de até R$ 15.164,56', 'Prefeitura de São João del-Rei', 'MG', 'Médio', 74, 15164.56, true, '2026-11-12'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-mg-abre-concurso-publico-com-salarios-de-ate-15164')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei e DAMAE - MG abrem concursos com salários de até R$ 6.469,28', 'Prefeitura de São João del-Rei e DAMAE - Departamento Autônomo Municipal de Água e Esgoto', 'MG', 'Fundamental', 116, 6469.28, true, '2026-11-12'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-e-damae-mg-abrem-concursos-com-salarios-de-ate-6469')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Baldim - MG abre concurso público para profissionais de saúde', 'Prefeitura de Baldim', 'MG', 'Médio', 10, 5037.73, true, '2026-11-12'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-baldim-mg-abre-concurso-publico-para-profissionais-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Berizal - MG abre 11 vagas em processo seletivo para agentes comunitários de saúde', 'Prefeitura de Berizal', 'MG', 'Médio', 11, 3242.0, true, '2026-11-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-berizal-mg-abre-11-vagas-em-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Indaiabira - MG retifica o edital do processo seletivo para agentes de saúde e de endemias', 'Prefeitura de Indaiabira', 'MG', 'Médio', 10, 3242.0, true, '2026-11-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-indaiabira-mg-retifica-o-edital-do-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João do Paraíso - MG retifica o edital do processo seletivo para agentes comunitários de saúde', 'Prefeitura de São João do Paraíso', 'MG', 'Médio', 14, 3242.0, true, '2026-11-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-do-paraiso-mg-retifica-o-edital-do-processo-seletivo-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Contagem - MG abre concurso público com salários de até R$ 13.305,57', 'Prefeitura de Contagem', 'MG', 'Médio', 272, 13305.57, true, '2026-11-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-contagem-mg-abre-concurso-publico-com-salarios-de-ate-13305')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piracema - MG abre concurso e processo seletivo com diversas vagas', 'Prefeitura de Piracema', 'MG', 'Fundamental', 132, 18647.01, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piracema-mg-abre-concurso-e-processo-seletivo-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paiva - MG abre concurso público com salários de até R$ 11.715,84', 'Prefeitura de Paiva', 'MG', 'Fundamental', 13, 11715.84, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paiva-mg-abre-concurso-publico-com-salarios-de-ate-11715')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pires do Rio - GO abre concurso público com salários de até R$ 6.523,44', 'Câmara de Pires do Rio', 'GO', 'Fundamental', 12, 6523.44, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-pires-do-rio-go-abre-concurso-publico-com-salarios-de-ate-6523')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Lambari - MG abre concurso público com salários de até R$ 5.500,00', 'Câmara de Lambari', 'MG', 'Fundamental', 8, 5500.0, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-lambari-mg-abre-concurso-publico-com-salarios-de-ate-5500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE de Pirapora - MG abre concurso público com salários de até R$ 4.848,48', 'SAAE - Serviço Autônomo de Água e Esgoto do Município de Pirapora', 'MG', 'Fundamental', 9, 4848.48, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/saae-de-pirapora-mg-abre-concurso-publico-com-salarios-de-ate-4848')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cajuri - MG abre concurso público com vagas de nível fundamental e médio', 'Câmara de Cajuri', 'MG', 'Fundamental', 4, 2667.19, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-cajuri-mg-abre-concurso-publico-com-vagas-de-nivel-fundamental-e-medio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUMEP de Sete Lagoas - MG abre concurso público para diversos níveis de escolaridade', 'FUMEP - Fundação Municipal de Ensino Profissionalizante de Sete Lagoas', 'MG', 'Fundamental', 39, 2530.56, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/fumep-de-sete-lagoas-mg-abre-concurso-publico-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso para Professor de Magistério Superior na área de Medicina', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 2, 13753.96, true, '2026-11-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-para-professor-de-magisterio-superior-na-area-de-medicina')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIMAG abre concurso público para médicos veterinários com salários de até R$ 8.300,00', 'CIMAG - Consórcio Público Intermunicipal Multifinalitário da Microrregião do Circuito das Águas', 'MG', 'Superior', 2, 8300.0, true, '2026-11-23'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cimag-abre-concurso-publico-para-medicos-veterinarios-com-salarios-de-ate-8300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tocos do Moji - MG abre seleção para Agente Comunitário de Saúde', 'Prefeitura de Tocos do Moji', 'MG', 'Médio', 1, 3242.0, true, '2026-11-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tocos-do-moji-mg-abre-selecao-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Acima - MG abre seleção para Agentes de Saúde e de Endemias', 'Prefeitura de Rio Acima', 'MG', 'Médio', 10, 3242.0, true, '2026-11-24'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-acima-mg-abre-selecao-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Tiradentes - MG abre concurso público para Controlador Interno e Tesoureiro', 'Câmara de Tiradentes', 'MG', 'Superior', 2, 2952.86, true, '2026-11-24'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-tiradentes-mg-abre-concurso-publico-para-controlador-interno-e-tesoureiro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAAE Itambacuri - MG publica edital de concurso público com seis vagas imediatas', 'SAAE - Serviço Autônomo de Água e Esgoto de Itambacuri', 'MG', 'Fundamental', 6, 1757.28, true, '2026-11-26'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/saae-itambacuri-mg-publica-edital-de-concurso-publico-com-seis-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Bocaina de Minas - MG abre concurso público com salários de R$ 1.621,00', 'Câmara de Bocaina de Minas', 'MG', 'Fundamental', 3, 1621.0, true, '2026-11-26'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-bocaina-de-minas-mg-abre-concurso-publico-com-salarios-de-1621')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Unaí - MG abre concurso público com remuneração de R$ 9.193,89', 'Câmara de Unaí', 'MG', 'Superior', 2, 9193.89, true, '2026-12-01'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-unai-mg-abre-concurso-publico-com-remuneracao-de-9193')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Antônio Prado de Minas - MG abre concurso público para diversos cargos', 'Prefeitura de Antônio Prado de Minas', 'MG', 'Fundamental', 33, 3576.46, true, '2026-12-02'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-antonio-prado-de-minas-mg-abre-concurso-publico-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Tupaciguara - MG abre concurso público com 10 vagas', 'Câmara de Tupaciguara', 'MG', 'Fundamental', 10, 5627.27, true, '2026-12-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-tupaciguara-mg-abre-concurso-publico-com-10-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Natércia - MG abre concurso público para Auxiliar de Serviços Gerais e Oficial Legislativo', 'Câmara de Natércia', 'MG', 'Fundamental', 1, 1668.22, true, '2026-12-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-natercia-mg-abre-concurso-publico-para-auxiliar-de-servicos-gerais-e-oficial-legislativo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Prata - MG abre seleção para cadastro de reserva de professores', 'Prefeitura de Prata', 'MG', 'Superior', 0, NULL, false, '2026-12-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-prata-mg-abre-selecao-para-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvinópolis - MG publica edital de concurso público com salários de até R$ 17.954,23', 'Prefeitura de Alvinópolis', 'MG', 'Fundamental', 172, 17954.23, true, '2026-12-15'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvinopolis-mg-publica-edital-de-concurso-publico-com-salarios-de-ate-17954')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso para docente na área de Nutrição em Esporte e Exercício Físico', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13753.96, true, '2026-12-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-para-docente-na-area-de-nutricao-em-esporte-e-exercicio-fisico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG divulga Processo Seletivo para Fisioterapeuta', 'Prefeitura de Cláudio', 'MG', 'Superior', 0, 3463.55, true, '2026-12-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-divulga-processo-seletivo-para-fisioterapeuta')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP - SP abre concurso público para o cargo de Professor Titular na área de Sistemas de Computação', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 24309.11, true, '2027-01-08'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-sp-abre-concurso-publico-para-o-cargo-de-professor-titular-na-area-de-sistemas-de-computacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itinga do Maranhão - MA abre processo seletivo para professores', 'Prefeitura de Itinga do Maranhão', 'MA', 'Superior', 33, NULL, false, '2027-01-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itinga-do-maranhao-ma-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto de Ciência da Computação', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2027-01-31'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-de-ciencia-da-computacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG divulga retificações do concurso público para Professores do Ensino Básico, Técnico e Tecnológico', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais', 'MG', 'Superior', 4, 14945.96, true, '2029-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-divulga-retificacoes-do-concurso-publico-para-professores-do-ensino-basico-tecnico-e-tecnologico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
