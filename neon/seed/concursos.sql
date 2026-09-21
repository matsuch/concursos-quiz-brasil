-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.
-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)
-- Coletado em: 2026-09-21T15:28:08.330773Z
-- Linhas: 507
--
-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,
-- então reaplicar atualiza a linha em vez de duplicar.

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;

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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Transpetro publica retificações de processos seletivos para diversos cargos', 'Transpetro - Petrobras Transporte S.A.', 'Nacional', 'Médio', 0, 15034.81, true, '2026-09-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/transpetro-publica-retificacoes-de-processos-seletivos-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ipatinga - MG abre vagas para Médico Ginecologista e Educador Físico', 'Prefeitura de Ipatinga', 'MG', 'Superior', 6, 7359.74, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipatinga-mg-abre-vagas-para-medico-ginecologista-e-educador-fisico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ascurra - SC abre processo seletivo para diversos níveis de escolaridade', 'Prefeitura de Ascurra', 'SC', 'Fundamental', 0, 6255.6, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ascurra-sc-abre-processo-seletivo-para-diversos-niveis-de-escolaridade')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pantano Grande - RS abre seleções para a Secretaria de Saúde', 'Prefeitura de Pantano Grande', 'RS', 'Médio', 1, 2585.0, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pantano-grande-rs-abre-selecoes-para-a-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Delfinópolis - MG abre processo seletivo para o cargo de Pedreiro', 'Prefeitura de Delfinópolis', 'MG', 'Fundamental', 1, 2548.58, true, '2026-09-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-delfinopolis-mg-abre-processo-seletivo-para-o-cargo-de-pedreiro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Varginha - MG abre vagas para médicos ginecologistas, reumatologistas e cardiologistas', 'SEMUS - Secretaria Municipal de Saúde de Varginha', 'MG', 'Superior', 7, 9237.12, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-varginha-mg-abre-vagas-para-medicos-ginecologistas-reumatologistas-e-cardiologistas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Canguçu - RS abre seleção para Engenheiro Civil e Geólogo', 'Prefeitura de Canguçu', 'RS', 'Superior', 3, 7470.46, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cangucu-rs-abre-selecao-para-engenheiro-civil-e-geologo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Trento - SC abre processo seletivo com salários de até R$ 5.130,63', 'Prefeitura de Nova Trento', 'SC', 'Fundamental', 11, 5130.63, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-trento-sc-abre-processo-seletivo-com-salarios-de-ate-5130')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João del-Rei - MG abre processo seletivo para as secretarias de saúde e meio ambiente', 'Prefeitura de São João del-Rei', 'MG', 'Fundamental', 6, 3530.49, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-del-rei-mg-abre-processo-seletivo-para-as-secretarias-de-saude-e-meio-ambiente')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porangatu - GO abre processo seletivo para profissionais de nível superior', 'Prefeitura de Porangatu', 'GO', 'Superior', 16, 3242.0, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porangatu-go-abre-processo-seletivo-para-profissionais-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('RIOSAUDE - RJ abre processo seletivo com 65 vagas para técnicos de enfermagem', 'RIOSAUDE - Empresa Pública de Saúde do Rio de Janeiro S.A.', 'RJ', 'Médio', 65, 3077.89, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/riosaude-rj-abre-processo-seletivo-com-65-vagas-para-tecnicos-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Cerrito - SC abre processo seletivo para Professor de LIBRAS', 'Prefeitura de São José do Cerrito', 'SC', 'Superior', 1, 2821.84, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-cerrito-sc-abre-processo-seletivo-para-professor-de-libras')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Alegre - RS abre seleção para Professor de Português e Inglês', 'Prefeitura de Alto Alegre', 'RS', 'Superior', 1, 2284.86, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-alegre-rs-abre-selecao-para-professor-de-portugues-e-ingles')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre vaga para Psicólogo no HEMOSC de Florianópolis', 'FAHECE - Fundação de Apoio ao Hemosc e Cepon', 'SC', 'Superior', 1, 2273.23, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-vaga-para-psicologo-no-hemosc-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Senador Georgino Avelino - RN abre seleção para Assistente Social e Psicólogo', 'Prefeitura de Senador Georgino Avelino', 'RN', 'Superior', 2, 2200.0, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-senador-georgino-avelino-rn-abre-selecao-para-assistente-social-e-psicologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arroio do Padre - RS abre seleção para Agente Visitador do PIM', 'Prefeitura de Arroio do Padre', 'RS', 'Médio', 1, 2011.53, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arroio-do-padre-rs-abre-selecao-para-agente-visitador-do-pim')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curvelo - MG abre seleção para Auxiliar de Serviços I', 'Prefeitura de Curvelo', 'MG', 'Fundamental', 10, 1621.0, true, '2026-09-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curvelo-mg-abre-selecao-para-auxiliar-de-servicos-i')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('POLITEC - MT abre processo seletivo para assistente administrativo e assistente social', 'POLITEC - Perícia Oficial e Identificação Técnica', 'MT', 'Médio', 36, 8269.16, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/politec-mt-abre-processo-seletivo-para-assistente-administrativo-e-assistente-social')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Doutor Maurício Cardoso - RS abre vaga para Enfermeiro', 'Prefeitura de Doutor Maurício Cardoso', 'RS', 'Superior', 1, 6766.34, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-doutor-mauricio-cardoso-rs-abre-vaga-para-enfermeiro')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coqueiros do Sul - RS abre seleção para profissionais de nível superior', 'Prefeitura de Coqueiros do Sul', 'RS', 'Superior', 0, 6300.0, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coqueiros-do-sul-rs-abre-selecao-para-profissionais-de-nivel-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José - SC retifica processo seletivo para a secretaria de educação', 'SME - Secretaria Municipal de Educação de São José', 'SC', 'Médio', 0, 5355.59, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-sc-retifica-processo-seletivo-para-a-secretaria-de-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caparaó - MG abre seleção para agentes comunitários de saúde', 'Prefeitura de Caparaó', 'MG', 'Médio', 2, 3242.0, true, '2026-09-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caparao-mg-abre-selecao-para-agentes-comunitarios-de-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Torres - RS anuncia processos seletivos para cadastro de reserva', 'Prefeitura de Torres', 'RS', 'Fundamental', 0, 7883.04, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-torres-rs-anuncia-processos-seletivos-para-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juara - MT abre seleção para técnicos em enfermagem e odontólogos', 'Prefeitura de Juara - Secretaria Municipal de Saúde', 'MT', 'Médio', 0, 5871.56, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juara-mt-abre-selecao-para-tecnicos-em-enfermagem-e-odontologos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Vicente Férrer - PE abre 35 vagas para profissionais de apoio escolar', 'Prefeitura de São Vicente Férrer', 'PE', 'Médio', 35, 1621.0, true, '2026-09-24'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-vicente-ferrer-pe-abre-35-vagas-para-profissionais-de-apoio-escolar')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEJURI - SC abre processo seletivo para Médico Clínico Geral', 'SEJURI - Secretaria de Estado de Justiça e Reintegração Social', 'SC', 'Superior', 1, 15006.4, true, '2026-09-25'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sejuri-sc-abre-processo-seletivo-para-medico-clinico-geral')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre processos seletivos com vagas para Florianópolis e Lages', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Médio', 4, 10581.16, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-processos-seletivos-com-vagas-para-florianopolis-e-lages')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Montenegro - RS abre vaga para Fonoaudiólogo', 'Prefeitura de Montenegro', 'RS', 'Superior', 1, 9549.9, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-montenegro-rs-abre-vaga-para-fonoaudiologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaúna - MG abre seleção para formação de cadastro de reserva em diversos cargos', 'Prefeitura de Itaúna', 'MG', 'Fundamental', 0, 8227.35, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itauna-mg-abre-selecao-para-formacao-de-cadastro-de-reserva-em-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo Horizonte do Oeste - RO abre seleção com vagas para a saúde', 'Prefeitura de Novo Horizonte do Oeste', 'RO', 'Fundamental', 39, 7956.15, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-horizonte-do-oeste-ro-abre-selecao-com-vagas-para-a-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Funai retifica processo seletivo para Especialistas Temporários em Proteção Territorial', 'FUNAI - Fundação Nacional dos Povos Indígenas', 'Nacional', 'Superior', 0, 7647.2, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funai-retifica-processo-seletivo-para-especialistas-temporarios-em-protecao-territorial')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Negra - SP prorroga inscrições de concurso público', 'Prefeitura da Estância Hidromineral de Serra Negra', 'SP', 'Médio', 61, 5571.2, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-negra-sp-prorroga-inscricoes-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Nova Hartz - RS abre processo seletivo para o cargo de Contador', 'Câmara de Nova Hartz', 'RS', 'Superior', 1, 4774.74, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-nova-hartz-rs-abre-processo-seletivo-para-o-cargo-de-contador')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Monte Sião - MG abre seleção para enfermeiros de pronto atendimento', 'Prefeitura de Monte Sião', 'MG', 'Superior', 0, 3809.17, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-monte-siao-mg-abre-selecao-para-enfermeiros-de-pronto-atendimento')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Charrua - RS abre seleção para Educador Físico, Operador de Máquinas e Vigilante', 'Prefeitura de Charrua', 'RS', 'Fundamental', 0, 3180.5, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-charrua-rs-abre-selecao-para-educador-fisico-operador-de-maquinas-e-vigilante')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Negra - SP prorroga inscrições do concurso com vagas imediatas e cadastro de reserva', 'Prefeitura da Estância Hidromineral de Serra Negra', 'SP', 'Fundamental', 99, 2815.61, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-negra-sp-prorroga-inscricoes-do-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Marabá - PA abre seleção para cadastro de reserva no SSAM', 'SSAM - Serviço de Saneamento Ambiental de Marabá', 'PA', 'Fundamental', 0, 2410.19, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maraba-pa-abre-selecao-para-cadastro-de-reserva-no-ssam')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maquiné - RS abre seleção para Operador de Máquinas Especializado', 'Prefeitura de Maquiné', 'RS', 'Fundamental', 0, 2350.16, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maquine-rs-abre-selecao-para-operador-de-maquinas-especializado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Boa Vista do Sul - RS abre processo seletivo para Atendente e Merendeiro', 'Prefeitura de Boa Vista do Sul', 'RS', 'Fundamental', 0, 2065.5, true, '2026-09-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-boa-vista-do-sul-rs-abre-processo-seletivo-para-atendente-e-merendeiro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRA-RJ divulga retificação do concurso público com salários até R$ 6.369,00', 'CRA/RJ - Conselho Regional de Administração do Rio de Janeiro', 'RJ', 'Médio', 84, 6369.0, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cra-rj-divulga-retificacao-do-concurso-publico-com-salarios-ate-6369')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pinhal Grande - RS abre seleção para Agente de Combate às Endemias', 'Prefeitura de Pinhal Grande', 'RS', 'Médio', 1, 3242.0, true, '2026-09-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pinhal-grande-rs-abre-selecao-para-agente-de-combate-as-endemias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Sebrae - SP abre seleção para bolsistas no Programa Agentes Locais de Inovação', 'Sebrae - Serviço de Apoio às Micro e Pequenas Empresas do Estado de São Paulo', 'SP', 'Superior', 130, 6500.0, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sebrae-sp-abre-selecao-para-bolsistas-no-programa-agentes-locais-de-inovacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Senar/AR - GO abre processo seletivo para o cargo de assistente administrativo III', 'SENAR - Serviço Nacional de Aprendizagem Rural - Administração Regional de Goiás', 'GO', 'Médio', 20, 4262.02, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/senar-ar-go-abre-processo-seletivo-para-o-cargo-de-assistente-administrativo-iii')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João das Duas Pontes - SP abre processo seletivo para diversos cargos', 'Prefeitura de São João das Duas Pontes', 'SP', 'Médio', 3, 3847.97, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-das-duas-pontes-sp-abre-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bertioga - SP abre processo seletivo para Guarda-vidas Temporários', 'Prefeitura de Bertioga', 'SP', 'Fundamental', 15, 2696.2, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bertioga-sp-abre-processo-seletivo-para-guarda-vidas-temporarios')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ourinhos - SP abre processo seletivo para professores adjuntos', 'Prefeitura de Ourinhos', 'SP', 'Médio', 0, 23.95, true, '2026-09-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ourinhos-sp-abre-processo-seletivo-para-professores-adjuntos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professor visitante em engenharia de materiais', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 1, 13288.85, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-visitante-em-engenharia-de-materiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professor visitante na área de Engenharia de Materiais', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 0, 13288.85, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-visitante-na-area-de-engenharia-de-materiais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AgSUS abre seleção com salários de até R$ 10.302,00', 'AgSUS - Agência Brasileira de Apoio à Gestão do Sistema Único de Saúde', 'RR', 'Médio', 11, 10302.0, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/agsus-abre-selecao-com-salarios-de-ate-10302')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lontras - SC divulga retificação de concurso público', 'Prefeitura de Lontras', 'SC', 'Fundamental', 27, 8105.36, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lontras-sc-divulga-retificacao-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para Analista de Sistemas Júnior no Hospital Estadual de Sumaré', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Superior', 1, 5100.0, true, '2026-09-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-analista-de-sistemas-junior-no-hospital-estadual-de-sumare')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana de Parnaíba - SP abre seleções para cadastro de reserva', 'Prefeitura do Município de Santana de Parnaíba', 'SP', 'Fundamental', 0, 14975.66, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-de-parnaiba-sp-abre-selecoes-para-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibiraçu - ES publica edital retificado de processo seletivo para a área da educação', 'Prefeitura de Ibiraçu', 'ES', 'Fundamental', 10, 5490.99, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibiracu-es-publica-edital-retificado-de-processo-seletivo-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre seleção para Especialista Penitenciário em Psicologia em Governador Nunes Freire', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Superior', 0, 3644.68, true, '2026-09-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-selecao-para-especialista-penitenciario-em-psicologia-em-governador-nunes-freire')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Erval Velho - SC retifica concurso público com salários de até R$ 22.044,76', 'Prefeitura de Erval Velho', 'SC', 'Fundamental', 4, 22044.76, true, '2026-10-01'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-erval-velho-sc-retifica-concurso-publico-com-salarios-de-ate-22044')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CONSAMU - PR abre processo seletivo com salários de até R$ 14.011,78', 'CONSAMU - Consórcio de Saúde dos Municípios do Oeste do Paraná', 'PR', 'Médio', 36, 14011.78, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consamu-pr-abre-processo-seletivo-com-salarios-de-ate-14011')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre processo seletivo para professores de Engenharia no campus Guarapuava', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 2, 8340.33, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-processo-seletivo-para-professores-de-engenharia-no-campus-guarapuava')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Mercedes - SP publica retificação de concurso público', 'Prefeitura de Santa Mercedes', 'SP', 'Fundamental', 0, 6597.21, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-mercedes-sp-publica-retificacao-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Indaial - SC publica edital retificado de processo seletivo', 'Prefeitura de Indaial', 'SC', 'Médio', 0, 5210.87, true, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-indaial-sc-publica-edital-retificado-de-processo-seletivo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJRS reabre Concurso para Outorga de Delegações de Notas e de Registro', 'TJRS - Tribunal de Justiça do Estado do Rio Grande do Sul', 'RS', 'Superior', 247, NULL, false, '2026-10-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/tjrs-reabre-concurso-para-outorga-de-delegacoes-de-notas-e-de-registro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Exu - PE retifica edital de concurso público', 'Prefeitura de Exu', 'PE', 'Fundamental', 321, 15180.0, true, '2026-10-02'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-exu-pe-retifica-edital-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Concórdia - SC abre processo seletivo para profissionais da educação', 'Prefeitura de Concórdia', 'SC', 'Médio', 17, 5354.32, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-concordia-sc-abre-processo-seletivo-para-profissionais-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos em Ilha Solteira', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 6, 3511.9, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-em-ilha-solteira')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itápolis - SP abre concurso público para Técnico de Som e Imagem', 'Câmara de Itápolis', 'SP', 'Médio', 1, 3043.13, true, '2026-10-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-itapolis-sp-abre-concurso-publico-para-tecnico-de-som-e-imagem')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFPel - RS abre concurso público para o cargo de Professor do Magistério Superior', 'UFPel - Universidade Federal de Pelotas', 'RS', 'Superior', 32, 13753.96, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufpel-rs-abre-concurso-publico-para-o-cargo-de-professor-do-magisterio-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFJ - GO abre processo seletivo com vagas para o cargo de professor substituto', 'UFJ - Universidade Federal de Jataí', 'GO', 'Superior', 10, 8058.29, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufj-go-abre-processo-seletivo-com-vagas-para-o-cargo-de-professor-substituto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EMDURB de Bauru - SP abre processo seletivo para diversos cargos', 'EMDURB - Empresa Municipal de Desenvolvimento Urbano e Rural de Bauru', 'SP', 'Médio', 7, 5457.24, true, '2026-10-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/emdurb-de-bauru-sp-abre-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arco-Íris - SP abre concurso público e processo seletivo para diversos cargos', 'Prefeitura de Arco-Íris', 'SP', 'Fundamental', 0, 5462.22, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arco-iris-sp-abre-concurso-publico-e-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Carmem - MT abre processo seletivo para diversos níveis de escolaridade', 'Prefeitura de Santa Carmem', 'MT', 'Fundamental', 17, 4437.22, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-carmem-mt-abre-processo-seletivo-para-diversos-niveis-de-escolaridade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre vaga para Técnico Mecânico no CEPETRO', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Médio', 1, 4000.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-vaga-para-tecnico-mecanico-no-cepetro')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto de Matemática Aplicada em Bauru - SP', 'UNESP - Faculdade de Ciências de Bauru', 'SP', 'Superior', 1, 3511.9, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-de-matematica-aplicada-em-bauru-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Igrejinha - RS abre processo seletivo para Professor de Português', 'Prefeitura de Igrejinha', 'RS', 'Superior', 1, 2683.38, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-igrejinha-rs-abre-processo-seletivo-para-professor-de-portugues')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CMDCA de Timburi - SP abre processo de escolha suplementar para conselheiro tutelar', 'CMDCA - Conselho Municipal dos Direitos da Criança e do Adolescente de Timburi', 'SP', 'Médio', 2, 2600.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cmdca-de-timburi-sp-abre-processo-de-escolha-suplementar-para-conselheiro-tutelar')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ponte Nova - MG abre processo seletivo para médicos', 'Prefeitura de Ponte Nova', 'MG', 'Superior', 8, 4735.93, true, '2026-10-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ponte-nova-mg-abre-processo-seletivo-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Figueirópolis D''Oeste - MT abre concurso para Analista Administrativo', 'Câmara de Figueirópolis D''Oeste', 'MT', 'Superior', 0, 3602.0, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-figueiropolis-doeste-mt-abre-concurso-para-analista-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Olímpia - SP abre processo seletivo para diversos cargos na área da educação', 'Prefeitura da Estância Turística de Olímpia', 'SP', 'Médio', 0, 1745.31, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-olimpia-sp-abre-processo-seletivo-para-diversos-cargos-na-area-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Anchieta - ES abre concurso público para professores', 'Prefeitura de Anchieta', 'ES', 'Superior', 64, 8640.0, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-anchieta-es-abre-concurso-publico-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tangará - RN publica edital de concurso público para diversos cargos', 'Prefeitura de Tangará', 'RN', 'Fundamental', 85, 4675.5, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tangara-rn-publica-edital-de-concurso-publico-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vagas para professores substitutos no campus de São José do Rio Preto', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-10-07'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vagas-para-professores-substitutos-no-campus-de-sao-jose-do-rio-preto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre processo seletivo para professores colaboradores em diversas áreas', 'UEM - Universidade Estadual de Maringá', 'PR', 'Superior', 4, 11221.64, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-processo-seletivo-para-professores-colaboradores-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caruaru - PE retifica concurso público para auditores e analistas fiscais', 'Prefeitura de Caruaru', 'PE', 'Superior', 20, 6000.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caruaru-pe-retifica-concurso-publico-para-auditores-e-analistas-fiscais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vargeão - SC abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Vargeão', 'SC', 'Fundamental', 23, 5730.08, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vargeao-sc-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Mutunópolis - GO abre concurso com salários de até R$ 5.000,00', 'Câmara de Mutunópolis', 'GO', 'Fundamental', 7, 5000.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-mutunopolis-go-abre-concurso-com-salarios-de-ate-5000')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guimarânia - MG abre concurso público para fiscal tributário', 'Prefeitura de Guimarânia', 'MG', 'Superior', 1, 3145.52, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guimarania-mg-abre-concurso-publico-para-fiscal-tributario')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Massaranduba - SC retifica edital de concurso com salários de até R$ 24.722,94', 'Prefeitura de Massaranduba', 'SC', 'Fundamental', 47, 24722.94, true, '2026-10-09'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-massaranduba-sc-retifica-edital-de-concurso-com-salarios-de-ate-24722')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para professores visitantes e estrangeiros em Engenharia Química', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 4, 13288.85, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professores-visitantes-e-estrangeiros-em-engenharia-quimica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Lourenço do Oeste - SC abre seleção para psicólogo', 'Prefeitura de São Lourenço do Oeste', 'SC', 'Superior', 1, 7264.88, true, '2026-10-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-lourenco-do-oeste-sc-abre-selecao-para-psicologo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFERSA - RN abre concurso público para o cargo de Professor Efetivo', 'UFERSA - Universidade Federal Rural do Semi-Árido', 'RN', 'Superior', 0, 14288.85, true, '2026-10-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufersa-rn-abre-concurso-publico-para-o-cargo-de-professor-efetivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Petrolina de Goiás - GO abre concurso público com salários de até R$ 11.919,01', 'Prefeitura de Petrolina de Goiás', 'GO', 'Fundamental', 100, 11919.01, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-petrolina-de-goias-go-abre-concurso-publico-com-salarios-de-ate-11919')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juazeiro do Norte - CE reabre inscrições do processo seletivo para Coordenador Pedagógico e Diretor Escolar', 'Prefeitura de Juazeiro do Norte', 'CE', 'Superior', 0, 4274.66, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juazeiro-do-norte-ce-reabre-inscricoes-do-processo-seletivo-para-coordenador-pedagogico-e-diretor-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José da Boa Vista - PR abre seleção para agentes comunitários de saúde e de combate às endemias', 'Prefeitura de São José da Boa Vista', 'PR', 'Médio', 0, 3249.22, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-da-boa-vista-pr-abre-selecao-para-agentes-comunitarios-de-saude-e-de-combate-as-endemias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jeriquara - SP abre concurso para o cargo de Controlador Interno', 'Câmara de Jeriquara', 'SP', 'Superior', 1, 2664.61, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jeriquara-sp-abre-concurso-para-o-cargo-de-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR abre concurso público com salários de até R$ 18.106,37', 'Prefeitura de Ivaiporã', 'PR', 'Fundamental', 15, 18106.37, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-abre-concurso-publico-com-salarios-de-ate-18106')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para Professor Doutor na Faculdade de Engenharia Mecânica', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-na-faculdade-de-engenharia-mecanica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor assistente de Medicina em Botucatu - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-de-medicina-em-botucatu-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso público para professor assistente na área de engenharia de bioprocessos em Araraquara - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-publico-para-professor-assistente-na-area-de-engenharia-de-bioprocessos-em-araraquara-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRPE abre concurso com vagas para professores do magistério superior', 'UFRPE - Universidade Federal Rural de Pernambuco', 'PE', 'Superior', 14, 13288.85, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrpe-abre-concurso-com-vagas-para-professores-do-magisterio-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Governo do Estado do Amapá - AP publica edital de concurso com salários de até R$ 11.116,42', 'SESA - Secretaria de Estado da Saúde do Amapá', 'AP', 'Médio', 4210, 11116.42, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/governo-do-estado-do-amapa-ap-publica-edital-de-concurso-com-salarios-de-ate-11116')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Currais - PI abre concurso com salários de até R$ 9.726,00', 'Prefeitura de Currais', 'PI', 'Médio', 37, 9726.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-currais-pi-abre-concurso-com-salarios-de-ate-9726')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Limpa - GO abre concurso público com salários de até R$ 8.945,43', 'Prefeitura de Água Limpa', 'GO', 'Fundamental', 39, 8945.43, true, '2026-10-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-limpa-go-abre-concurso-publico-com-salarios-de-ate-8945')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Piracicaba - MG publica edital retificado de concurso público', 'Câmara de Rio Piracicaba', 'MG', 'Fundamental', 5, 4000.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-piracicaba-mg-publica-edital-retificado-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bela Vista do Paraíso - PR abre concurso público para Assistente Social e Psicólogo', 'Prefeitura de Bela Vista do Paraíso', 'PR', 'Superior', 2, 3886.72, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bela-vista-do-paraiso-pr-abre-concurso-publico-para-assistente-social-e-psicologo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Nísia Floresta - RN abrem concurso público com vagas imediatas e reservas', 'Prefeitura e Câmara de Nísia Floresta', 'RN', 'Médio', 61, 3242.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-nisia-floresta-rn-abrem-concurso-publico-com-vagas-imediatas-e-reservas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR abre concurso público para agentes de saúde e de endemias', 'Prefeitura de Ivaiporã', 'PR', 'Médio', 0, 3242.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-abre-concurso-publico-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRRJ publica edital de concurso público para cargos de nível médio e técnico', 'UFRRJ - Universidade Federal Rural do Rio de Janeiro', 'RJ', 'Médio', 13, 3181.39, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrrj-publica-edital-de-concurso-publico-para-cargos-de-nivel-medio-e-tecnico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tatuí - SP abre concurso público para cargos de nível fundamental e médio', 'Prefeitura de Tatuí', 'SP', 'Fundamental', 107, 2193.73, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tatui-sp-abre-concurso-publico-para-cargos-de-nivel-fundamental-e-medio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TJRS retifica concurso público para o cargo de Juiz de Direito Substituto', 'TJRS - Tribunal de Justiça do Estado do Rio Grande do Sul', 'RS', 'Superior', 30, 30505.36, true, '2026-10-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tjrs-retifica-concurso-publico-para-o-cargo-de-juiz-de-direito-substituto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público com vaga para Professor Doutor na Faculdade de Ciências Médicas', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-14'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-com-vaga-para-professor-doutor-na-faculdade-de-ciencias-medicas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEMA - MT abre concurso para Analistas de Meio Ambiente e de Desenvolvimento Econômico e Social', 'SEMA - Secretaria de Meio Ambiente de Mato Grosso', 'MT', 'Superior', 0, 10491.97, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sema-mt-abre-concurso-para-analistas-de-meio-ambiente-e-de-desenvolvimento-economico-e-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Boa - MT abre processo seletivo para cadastro de reserva', 'Prefeitura de Água Boa', 'MT', 'Fundamental', 0, 9893.08, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-boa-mt-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre concurso público para professor adjunto na área de hematologia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-concurso-publico-para-professor-adjunto-na-area-de-hematologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Instituto Cultural de São Lourenço - SC abre concurso com salários de até R$ 5.855,06', 'ICSL - Instituto Cultural de São Lourenço', 'SC', 'Médio', 13, 5855.06, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/instituto-cultural-de-sao-lourenco-sc-abre-concurso-com-salarios-de-ate-5855')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dom Silvério - MG retifica concurso com vagas imediatas e cadastro de reserva', 'Câmara de Dom Silvério', 'MG', 'Fundamental', 5, 3008.62, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dom-silverio-mg-retifica-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Prudente de Morais - MG abre concurso para Auxiliar Administrativo e Auxiliar de Serviços Gerais', 'Câmara de Prudente de Morais', 'MG', 'Fundamental', 3, 2600.0, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-prudente-de-morais-mg-abre-concurso-para-auxiliar-administrativo-e-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Garuva - SC abre seleção para o cargo de Cuidador', 'Prefeitura de Garuva', 'SC', 'Médio', 0, 2438.93, true, '2026-10-14'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-garuva-sc-abre-selecao-para-o-cargo-de-cuidador')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Balsa Nova - PR abre processo seletivo para o cargo de Motorista', 'Prefeitura de Balsa Nova', 'PR', 'Fundamental', 4, 2318.3, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-balsa-nova-pr-abre-processo-seletivo-para-o-cargo-de-motorista')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Tebas - PR abre concurso público com salários de até R$ 20.616,83', 'Prefeitura de Nova Tebas', 'PR', 'Fundamental', 37, 20616.83, true, '2026-10-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-tebas-pr-abre-concurso-publico-com-salarios-de-ate-20616')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Branco - AC abre concursos públicos para Procuradores e Agentes Legislativos', 'Câmara de Rio Branco', 'AC', 'Médio', 3, 19404.0, true, '2026-10-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-branco-ac-abre-concursos-publicos-para-procuradores-e-agentes-legislativos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivoti - RS abre concurso público com salários de até R$ 10.448,34', 'Prefeitura de Ivoti', 'RS', 'Fundamental', 18, 10448.34, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivoti-rs-abre-concurso-publico-com-salarios-de-ate-10448')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEDUC e SEPLAG - CE abrem concurso público com vagas para professores', 'SEDUC - Secretaria da Educação do Estado do Ceará', 'CE', 'Superior', 2000, 7181.41, true, '2026-10-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/seduc-e-seplag-ce-abrem-concurso-publico-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapada dos Guimarães - MT divulga retificação de concurso público', 'SAAE - Prefeitura de Chapada dos Guimarães', 'MT', 'Médio', 134, 6265.16, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapada-dos-guimaraes-mt-divulga-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cubatão - SP abre concursos públicos com salários de até R$ 5.565,00', 'Prefeitura de Cubatão', 'SP', 'Médio', 56, 5565.0, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cubatao-sp-abre-concursos-publicos-com-salarios-de-ate-5565')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de José Boiteux - SC abre processo seletivo para a educação', 'Prefeitura de José Boiteux', 'SC', 'Médio', 0, 5130.63, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jose-boiteux-sc-abre-processo-seletivo-para-a-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Pau dos Ferros - RN abre concurso público com salários de até R$ 4.714,65', 'Câmara de Pau dos Ferros', 'RN', 'Médio', 5, 4714.65, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-pau-dos-ferros-rn-abre-concurso-publico-com-salarios-de-ate-4714')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Intermunicipal de Saúde 08 de Abril - SP abre processo seletivo para diversas áreas', 'Consórcio Intermunicipal de Saúde "08 de Abril"', 'SP', 'Fundamental', 45, 4567.06, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-intermunicipal-de-saude-08-de-abril-sp-abre-processo-seletivo-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Engenheiro Paulo de Frontin - RJ prorroga inscrições para concurso público', 'Prefeitura de Engenheiro Paulo de Frontin', 'RJ', 'Fundamental', 143, 4563.91, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-engenheiro-paulo-de-frontin-rj-prorroga-inscricoes-para-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRA - AM abre concurso público com salários de até R$ 3.683,95 em Manaus', 'CRA - Conselho Regional de Administração do Amazonas', 'AM', 'Médio', 10, 3683.95, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cra-am-abre-concurso-publico-com-salarios-de-ate-3683-em-manaus')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapejara D''Oeste - PR abre processo seletivo para diversos cargos de nível fundamental', 'Prefeitura de Itapejara D''Oeste', 'PR', 'Fundamental', 11, 2570.5, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapejara-doeste-pr-abre-processo-seletivo-para-diversos-cargos-de-nivel-fundamental')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jaborá - SC abre concurso público com salários de até R$ 13.813,85', 'Prefeitura de Jaborá', 'SC', 'Fundamental', 34, 13813.85, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jabora-sc-abre-concurso-publico-com-salarios-de-ate-13813')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('AgSUS retifica processo seletivo para psicólogos', 'AgSUS - Agência Brasileira de Apoio à Gestão do SUS', 'Nacional', 'Superior', 0, 8800.0, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/agsus-retifica-processo-seletivo-para-psicologos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vale Real - RS abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Vale Real', 'RS', 'Fundamental', 27, 7717.63, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vale-real-rs-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre vaga para Professor Adjunto no Instituto de Letras', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-vaga-para-professor-adjunto-no-instituto-de-letras')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tunápolis - SC abre concurso público para Fiscal de Obras e Posturas', 'Prefeitura de Tunápolis', 'SC', 'Superior', 1, 5832.4, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tunapolis-sc-abre-concurso-publico-para-fiscal-de-obras-e-posturas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tunápolis - SC abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Tunápolis', 'SC', 'Fundamental', 0, 5494.05, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tunapolis-sc-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José - SC abre concurso com 300 vagas para auxiliares de educação especial', 'Prefeitura de São José', 'SC', 'Superior', 300, 4581.88, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-sc-abre-concurso-com-300-vagas-para-auxiliares-de-educacao-especial')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de João Monlevade - MG abre concurso público para cargos de nível médio', 'Câmara de João Monlevade', 'MG', 'Médio', 12, 3564.47, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-joao-monlevade-mg-abre-concurso-publico-para-cargos-de-nivel-medio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Paulistânia - SP abre concurso público com vagas para Assistente Contábil e Consultor Jurídico', 'Câmara de Paulistânia', 'SP', 'Médio', 2, 5700.14, true, '2026-10-17'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-paulistania-sp-abre-concurso-publico-com-vagas-para-assistente-contabil-e-consultor-juridico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvorada - RS retifica concurso público com salários de até R$ 18.974,55', 'Prefeitura de Alvorada', 'RS', 'Fundamental', 0, 18974.55, true, '2026-10-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvorada-rs-retifica-concurso-publico-com-salarios-de-ate-18974')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre processo seletivo para Professor Visitante na área de Química', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 0, 13288.85, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-processo-seletivo-para-professor-visitante-na-area-de-quimica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dom Expedito Lopes - PI abre concurso público com cinco vagas imediatas', 'Câmara de Dom Expedito Lopes', 'PI', 'Fundamental', 5, 1850.0, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dom-expedito-lopes-pi-abre-concurso-publico-com-cinco-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAD - AP publica edital de concurso para Delegado e Oficial Investigador de Polícia Civil', 'SEAD/AP - Secretaria de Estado da Administração do Amapá', 'AP', 'Superior', 396, 31439.06, true, '2026-10-19'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/sead-ap-publica-edital-de-concurso-para-delegado-e-oficial-investigador-de-policia-civil')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Sebastião do Rio Verde - MG abre concurso público com salários de até R$ 12.642,00', 'Prefeitura de São Sebastião do Rio Verde', 'MG', 'Fundamental', 15, 12642.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-sebastiao-do-rio-verde-mg-abre-concurso-publico-com-salarios-de-ate-12642')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itanhaém - SP abre concurso público com salários de até R$ 7.097,00', 'Câmara da Estância Balneária de Itanhaém', 'SP', 'Médio', 27, 7097.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-itanhaem-sp-abre-concurso-publico-com-salarios-de-ate-7097')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ipumirim - SC abre concurso público com salários de até R$ 6.990,04', 'Prefeitura de Ipumirim', 'SC', 'Fundamental', 9, 6990.04, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipumirim-sc-abre-concurso-publico-com-salarios-de-ate-6990')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIFAL - MG abre concurso público para médico ginecologista e obstetra', 'UNIFAL - Universidade Federal de Alfenas', 'MG', 'Superior', 1, 4967.04, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unifal-mg-abre-concurso-publico-para-medico-ginecologista-e-obstetra')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Verde - GO abre concurso para Agente de Trânsito e Vistoriador de Veículos', 'Prefeitura de Rio Verde', 'GO', 'Médio', 8, 3588.55, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-verde-go-abre-concurso-para-agente-de-transito-e-vistoriador-de-veiculos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jacutinga - RS abre concurso público para Operador de Máquinas e Equipamentos Rodoviários', 'Prefeitura de Jacutinga', 'RS', 'Fundamental', 1, 2584.94, true, '2026-10-19'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jacutinga-rs-abre-concurso-publico-para-operador-de-maquinas-e-equipamentos-rodoviarios')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Heitoraí - GO abre concurso público com vagas para diversas áreas', 'Prefeitura de Heitoraí', 'GO', 'Fundamental', 82, 9383.4, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-heitorai-go-abre-concurso-publico-com-vagas-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('ADEAL abre concurso público para cargos de Fiscal Estadual Agropecuário', 'ADEAL - Agência de Defesa e Inspeção Agropecuária de Alagoas', 'AL', 'Superior', 20, 7320.42, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/adeal-abre-concurso-publico-para-cargos-de-fiscal-estadual-agropecuario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Farmácia do IPAM - RS publica edital de concurso público para formação de cadastro de reserva', 'IPAM - Farmácia do IPAM S.A.', 'RS', 'Médio', 0, 6600.0, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/farmacia-do-ipam-rs-publica-edital-de-concurso-publico-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ - RJ abre vaga para professor adjunto de cardiologia em Cabo Frio', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-rj-abre-vaga-para-professor-adjunto-de-cardiologia-em-cabo-frio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREF22 - ES abre concurso público para cargos de nível superior', 'CREF22 - Conselho Regional de Educação Física da 22ª Região', 'ES', 'Superior', 2, 5500.0, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cref22-es-abre-concurso-publico-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFPA abre concurso público para cargos técnico-administrativos em educação', 'IFPA - Instituto Federal de Educação, Ciência e Tecnologia do Pará', 'PA', 'Médio', 65, 5215.39, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifpa-abre-concurso-publico-para-cargos-tecnico-administrativos-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Artur Nogueira - SP abre processo seletivo para professores', 'Prefeitura de Artur Nogueira', 'SP', 'Superior', 0, 4162.63, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-artur-nogueira-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Hidrolina - GO abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Hidrolina', 'GO', 'Fundamental', 80, 3847.97, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-hidrolina-go-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Candeias do Jamari - RO abre concurso com vagas imediatas e cadastro de reserva', 'Câmara de Candeias do Jamari', 'RO', 'Fundamental', 17, 3500.0, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-candeias-do-jamari-ro-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Sefaz - AL abre concurso público com vagas para o cargo de Auditor Fiscal', 'SEFAZ - Secretaria de Estado da Fazenda de Alagoas', 'AL', 'Superior', 40, 25270.68, true, '2026-10-21'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sefaz-al-abre-concurso-publico-com-vagas-para-o-cargo-de-auditor-fiscal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRQ da 9ª Região do Paraná abre concurso público com salários de até R$ 10.727,55', 'CRQ-9ª Região - Conselho Regional de Química da 9ª Região do Paraná', 'PR', 'Médio', 3, 10727.55, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crq-da-9-regiao-do-parana-abre-concurso-publico-com-salarios-de-ate-10727')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRBio-01 - SP, MT e MS abre concurso público com salários de até R$ 7.181,50', 'CRBio-01 - Conselho Regional de Biologia da 1ª Região', 'SP', 'Médio', 15, 7181.5, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crbio-01-sp-mt-e-ms-abre-concurso-publico-com-salarios-de-ate-7181')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Barão de Antonina - SP abre concurso público para o cargo de Advogado', 'Câmara de Barão de Antonina', 'SP', 'Superior', 1, 6603.39, true, '2026-10-21'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-barao-de-antonina-sp-abre-concurso-publico-para-o-cargo-de-advogado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Viçosa - MG abre processo seletivo com salários de até R$ 5,6 mil', 'Prefeitura de Viçosa', 'MG', 'Fundamental', 129, 5633.12, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vicosa-mg-abre-processo-seletivo-com-salarios-de-ate-5-6-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araquari - SC abre vagas em processo seletivo para professores', 'Prefeitura de Araquari', 'SC', 'Superior', 2, 5443.19, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-araquari-sc-abre-vagas-em-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capelinha - MG retifica edital do concurso público com salários de até R$ 4.527,60', 'Câmara de Capelinha', 'MG', 'Fundamental', 27, 4527.6, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capelinha-mg-retifica-edital-do-concurso-publico-com-salarios-de-ate-4527')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Maria de Jetibá - ES abre concurso público com vagas para guardas municipais', 'Prefeitura de Santa Maria de Jetibá', 'ES', 'Médio', 30, 3763.26, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-maria-de-jetiba-es-abre-concurso-publico-com-vagas-para-guardas-municipais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belo Vale - MG publica edital de processo seletivo para Agentes de Saúde e de Endemias', 'Prefeitura de Belo Vale', 'MG', 'Médio', 30, 3242.0, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belo-vale-mg-publica-edital-de-processo-seletivo-para-agentes-de-saude-e-de-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSJ - MG abre concurso público para professor titular-livre na área de medicina', 'UFSJ - Universidade Federal de São João del-Rei', 'MG', 'Superior', 1, 26326.81, true, '2026-10-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufsj-mg-abre-concurso-publico-para-professor-titular-livre-na-area-de-medicina')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREMERJ abre concurso com salários de até R$ 18.000,00 para diversos cargos', 'CREMERJ - Conselho Regional de Medicina do Rio de Janeiro', 'RJ', 'Médio', 146, 18000.0, true, '2026-10-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cremerj-abre-concurso-com-salarios-de-ate-18000-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dois Córregos - SP abre concurso público com salários de até R$ 7.114,33', 'Câmara de Dois Córregos', 'SP', 'Médio', 4, 7114.33, true, '2026-10-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-dois-corregos-sp-abre-concurso-publico-com-salarios-de-ate-7114')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itatiba - SP abre seleção para professores', 'Prefeitura de Itatiba', 'SP', 'Superior', 0, 5356.52, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itatiba-sp-abre-selecao-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEPLAD e FHCGV - PA anunciam concurso público com vagas imediatas e formação de cadastro de reserva', 'FHCGV - Fundação Pública Estadual Hospital de Clínicas Gaspar Vianna', 'PA', 'Médio', 215, 3918.15, true, '2026-10-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/seplad-e-fhcgv-pa-anunciam-concurso-publico-com-vagas-imediatas-e-formacao-de-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRN abre concurso para professores do magistério superior', 'UFRN - Universidade Federal do Rio Grande do Norte', 'RN', 'Superior', 9, 14945.96, true, '2026-10-23'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufrn-abre-concurso-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CBM - AL reabre inscrições de concurso público', 'CBMAL - Corpo de Bombeiros Militar de Alagoas', 'AL', 'Médio', 172, 11563.77, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cbm-al-reabre-inscricoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRO - SE abre concurso público com salários de até R$ 4.504,61', 'CRO - Conselho Regional de Odontologia de Sergipe', 'SE', 'Médio', 3, 4504.61, true, '2026-10-26'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cro-se-abre-concurso-publico-com-salarios-de-ate-4504')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capinzal - SC anuncia concurso público para cargos de nível superior', 'Câmara de Capinzal', 'SC', 'Superior', 5, 4534.82, true, '2026-10-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-capinzal-sc-anuncia-concurso-publico-para-cargos-de-nivel-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jacuí - MG abre vagas para auxiliares administrativos', 'Câmara de Jacuí', 'MG', 'Médio', 3, 2046.87, true, '2026-10-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-jacui-mg-abre-vagas-para-auxiliares-administrativos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Pesquisador IV na área de Produção Sustentável em Aquicultura', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 15294.61, true, '2026-10-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-pesquisador-iv-na-area-de-producao-sustentavel-em-aquicultura')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Barão de Cotegipe - RS altera período de inscrições para concurso público', 'Prefeitura de Barão de Cotegipe', 'RS', 'Fundamental', 26, 7499.45, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-barao-de-cotegipe-rs-altera-periodo-de-inscricoes-para-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EMATER - MG anuncia retificação de concurso público com salários de até R$ 7.321,75', 'EMATER - Empresa de Assistência Técnica e Extensão Rural do Estado de Minas Gerais', 'MG', 'Médio', 120, 7321.75, true, '2026-10-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/emater-mg-anuncia-retificacao-de-concurso-publico-com-salarios-de-ate-7321')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Salvador - BA abre concurso público para guardas civis municipais', 'Prefeitura de Salvador', 'BA', 'Médio', 50, 3546.42, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-salvador-ba-abre-concurso-publico-para-guardas-civis-municipais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Santa Casa de Misericórdia de Belo Horizonte - MG abre vagas para médicos em Especialização e Fellowship', 'Santa Casa BH - Santa Casa de Misericórdia de Belo Horizonte', 'MG', 'Superior', 40, NULL, false, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/santa-casa-de-misericordia-de-belo-horizonte-mg-abre-vagas-para-medicos-em-especializacao-e-fellowship')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para professor doutor na Faculdade de Medicina', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 7477.48, true, '2026-11-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-professor-doutor-na-faculdade-de-medicina')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Instituto IMS - RJ abre vagas para o Programa de Residência Médica em Dermatologia', 'IMS - Instituto de Pós-Graduação em Ciências da Saúde Izamar Milidiu da Silva Instituto', 'RJ', 'Superior', 5, 4106.09, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/instituto-ims-rj-abre-vagas-para-o-programa-de-residencia-medica-em-dermatologia')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itatiba - SP abre processo seletivo para profissionais de apoio na educação', 'Prefeitura de Itatiba', 'SP', 'Médio', 0, 2786.98, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itatiba-sp-abre-processo-seletivo-para-profissionais-de-apoio-na-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCE - GO retifica concurso público para técnicos de controle externo', 'TCE - Tribunal de Contas do Estado de Goiás', 'GO', 'Médio', 16, 11862.19, true, '2026-11-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/tce-go-retifica-concurso-publico-para-tecnicos-de-controle-externo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Boituva - SP abre concursos com salários de até R$ 8.595,15', 'Câmara de Boituva', 'SP', 'Fundamental', 7, 8595.15, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-boituva-sp-abre-concursos-com-salarios-de-ate-8595')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Aurora - GO abre concurso público com vagas de até R$ 3.737,65', 'Prefeitura de Nova Aurora', 'GO', 'Médio', 4, 3737.65, true, '2026-11-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-aurora-go-abre-concurso-publico-com-vagas-de-ate-3737')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DPE - PB abre concurso público com salários de até R$ 5.197,50', 'DPE - Defensoria Pública do Estado da Paraíba', 'PB', 'Médio', 20, 5197.5, true, '2026-11-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/dpe-pb-abre-concurso-publico-com-salarios-de-ate-5197')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUMEP de Sete Lagoas - MG retifica concurso público para diversos níveis de escolaridade', 'FUMEP - Fundação Municipal de Ensino Profissionalizante de Sete Lagoas', 'MG', 'Fundamental', 39, 2530.56, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/fumep-de-sete-lagoas-mg-retifica-concurso-publico-para-diversos-niveis-de-escolaridade')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Luís de Montes Belos - GO abre concurso público com salários de até R$ 5.559,33', 'Prefeitura de São Luís de Montes Belos', 'GO', 'Fundamental', 138, 5559.33, true, '2026-11-25'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-luis-de-montes-belos-go-abre-concurso-publico-com-salarios-de-ate-5559')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre concurso para docente na área de Nutrição em Esporte e Exercício Físico', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 13753.96, true, '2026-12-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-concurso-para-docente-na-area-de-nutricao-em-esporte-e-exercicio-fisico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Municipal Dr. Gil Alves - MG abre concurso com salários de até R$ 7.950,00', 'Hospital Municipal Dr. Gil Alves', 'MG', 'Fundamental', 183, 7950.0, true, '2026-12-28'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/hospital-municipal-dr-gil-alves-mg-abre-concurso-com-salarios-de-ate-7950')
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
