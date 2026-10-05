-- Gerado por scripts/scrape/concursos.py — NÃO editar à mão.
-- Fonte: pciconcursos.com.br (robots.txt permite /concursos/)
-- Coletado em: 2026-10-05T17:34:19.393755Z
-- Linhas: 595
--
-- Idempotente: o índice único parcial em url_edital sustenta o ON CONFLICT,
-- então reaplicar atualiza a linha em vez de duplicar.

CREATE UNIQUE INDEX IF NOT EXISTS idx_concursos_url_edital
  ON public.concursos (url_edital) WHERE url_edital IS NOT NULL;

INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEFAZ - SC abre concurso público para o cargo de Auditor Estadual de Finanças Públicas', 'SEFAZ - Secretaria de Estado da Fazenda de Santa Catarina', 'SC', 'Superior', 50, 25337.61, true, '2026-10-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sefaz-sc-abre-concurso-publico-para-o-cargo-de-auditor-estadual-de-financas-publicas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio do Leste - MT abre seleção para Médico Especialista em Medicina de Família e Comunidade', 'Prefeitura de Santo Antônio do Leste', 'MT', 'Superior', 1, 24729.67, true, '2026-10-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-do-leste-mt-abre-selecao-para-medico-especialista-em-medicina-de-familia-e-comunidade')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Faculdade Sebrae - SP abre processo seletivo para Professor Adjunto de Direito', 'Faculdade Sebrae', 'SP', 'Superior', 1, 19522.83, true, '2026-10-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/faculdade-sebrae-sp-abre-processo-seletivo-para-professor-adjunto-de-direito')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CASAN - SC retifica editais de concursos públicos', 'CASAN - Companhia Catarinense de Águas e Saneamento', 'SC', 'Médio', 0, 12600.62, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/casan-sc-retifica-editais-de-concursos-publicos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lajeado - RS abre seleção para Bibliotecário', 'Prefeitura de Lajeado', 'RS', 'Superior', 0, 5889.11, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lajeado-rs-abre-selecao-para-bibliotecario')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tangará - SC abre processo seletivo com salários de até R$ 5.199,14', 'Prefeitura de Tangará', 'SC', 'Fundamental', 3, 5199.14, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tangara-sc-abre-processo-seletivo-com-salarios-de-ate-5199')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAMESP - SP divulga seis processos seletivos em Bauru', 'FAMESP - Fundação para o Desenvolvimento Médico e Hospitalar', 'SP', 'Fundamental', 16, 4934.38, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/famesp-sp-divulga-seis-processos-seletivos-em-bauru')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cruz do Espírito Santo - PB prorroga inscrições de concurso público', 'Prefeitura de Cruz do Espírito Santo', 'PB', 'Fundamental', 202, 3847.97, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cruz-do-espirito-santo-pb-prorroga-inscricoes-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Apiacás - MT anuncia seleção para a área da educação', 'Prefeitura de Apiacás', 'MT', 'Fundamental', 1, 3833.69, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-apiacas-mt-anuncia-selecao-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Delfinópolis - MG abre processo seletivo para Fisioterapeuta', 'Prefeitura de Delfinópolis', 'MG', 'Superior', 1, 3766.28, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-delfinopolis-mg-abre-processo-seletivo-para-fisioterapeuta')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAMESP - SP abre processos seletivos para profissionais de nível técnico em Bauru', 'FAMESP - Fundação para o Desenvolvimento Médico e Hospitalar', 'SP', 'Médio', 4, 3588.64, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/famesp-sp-abre-processos-seletivos-para-profissionais-de-nivel-tecnico-em-bauru')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bom Despacho - MG abre seleção para cargos de nível superior', 'Prefeitura de Bom Despacho', 'MG', 'Superior', 2, 2865.61, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bom-despacho-mg-abre-selecao-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fortim - CE abre processo seletivo para Fisioterapeuta', 'Secretaria Municipal de Saúde de Fortim', 'CE', 'Superior', 1, 2800.0, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fortim-ce-abre-processo-seletivo-para-fisioterapeuta')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Paraíso - RO abre processo seletivo para Psicólogo', 'Prefeitura de Alto Paraíso', 'RO', 'Superior', 1, 2590.5, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-paraiso-ro-abre-processo-seletivo-para-psicologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC anuncia vaga para técnico de saúde bucal no HEMOSC de Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Médio', 1, 2300.19, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-anuncia-vaga-para-tecnico-de-saude-bucal-no-hemosc-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unimontes - MG anuncia seleção simplificada para o Hospital Universitário Clemente de Faria', 'HUCF - Hospital Universitário Clemente de Faria da Unimontes', 'MG', 'Médio', 211, 1979.42, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unimontes-mg-anuncia-selecao-simplificada-para-o-hospital-universitario-clemente-de-faria')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Prata - RS abre seleção para o cargo de Visitador do PIM', 'Prefeitura de Nova Prata', 'RS', 'Médio', 1, 1924.18, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-prata-rs-abre-selecao-para-o-cargo-de-visitador-do-pim')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Paraguaçu - MG abre seleção para Agente de Desenvolvimento Infantil e Servente Escolar', 'Prefeitura de Paraguaçu', 'MG', 'Fundamental', 3, 1807.25, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-paraguacu-mg-abre-selecao-para-agente-de-desenvolvimento-infantil-e-servente-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fundão - ES abre processo seletivo para Guarda-Parque', 'Prefeitura de Fundão', 'ES', 'Médio', 4, 1673.6, true, '2026-10-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fundao-es-abre-processo-seletivo-para-guarda-parque')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SESA - ES abre processos seletivos para diversas áreas', 'SESA - Secretaria da Saúde', 'ES', 'Fundamental', 0, 12689.93, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sesa-es-abre-processos-seletivos-para-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campina Grande - PB reabre inscrições para concurso público', 'Prefeitura de Campina Grande', 'PB', 'Fundamental', 935, 8816.66, true, '2026-10-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campina-grande-pb-reabre-inscricoes-para-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Calvo - AL retifica edital de concurso público', 'Prefeitura de Porto Calvo', 'AL', 'Fundamental', 201, 8000.0, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-calvo-al-retifica-edital-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processos seletivos para professores substitutos em Coroatá e Caxias', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 4, 6886.82, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processos-seletivos-para-professores-substitutos-em-coroata-e-caxias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Brasilândia do Sul - PR abre processo seletivo com salários de até R$ 5.130,64', 'Prefeitura de Brasilândia do Sul', 'PR', 'Fundamental', 5, 5130.64, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-brasilandia-do-sul-pr-abre-processo-seletivo-com-salarios-de-ate-5130')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ponte Nova - MG abre processo seletivo para médicos', 'Prefeitura de Ponte Nova', 'MG', 'Superior', 8, 4735.93, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ponte-nova-mg-abre-processo-seletivo-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rubelita - MG abre vagas para Professor de Educação Física e Monitor Esportivo', 'Prefeitura de Rubelita', 'MG', 'Médio', 2, 4170.46, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rubelita-mg-abre-vagas-para-professor-de-educacao-fisica-e-monitor-esportivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cabedelo - PB abre processo seletivo para professores', 'SEDUC - Secretaria Municipal de Educação de Cabedelo', 'PB', 'Superior', 150, 3725.05, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cabedelo-pb-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curvelo - MG abre vaga em processo seletivo para mecânico', 'Prefeitura de Curvelo', 'MG', 'Médio', 1, 3487.57, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curvelo-mg-abre-vaga-em-processo-seletivo-para-mecanico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio das Antas - SC abre processo seletivo para Agente Comunitário de Saúde', 'Prefeitura de Rio das Antas', 'SC', 'Médio', 0, 3242.0, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-das-antas-sc-abre-processo-seletivo-para-agente-comunitario-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Campina Grande - PB reabre inscrições de concurso público para Agente de Trânsito', 'Prefeitura de Campina Grande', 'PB', 'Superior', 40, 3170.83, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-campina-grande-pb-reabre-inscricoes-de-concurso-publico-para-agente-de-transito')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mambaí - GO abre processo seletivo para profissionais da área de enfermagem', 'Prefeitura de Mambaí', 'GO', 'Médio', 18, 2680.0, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mambai-go-abre-processo-seletivo-para-profissionais-da-area-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Pádua - RS abre seleção para agentes de serviços gerais e complementares', 'Prefeitura de Nova Pádua', 'RS', 'Fundamental', 0, 2638.26, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-padua-rs-abre-selecao-para-agentes-de-servicos-gerais-e-complementares')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Crissiumal - RS abre processo seletivo para professores de educação infantil e dos anos iniciais', 'Prefeitura de Crissiumal', 'RS', 'Superior', 2, 2596.75, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-crissiumal-rs-abre-processo-seletivo-para-professores-de-educacao-infantil-e-dos-anos-iniciais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Fortuna - SC abre seleção para Agente Operacional', 'Câmara de Rio Fortuna', 'SC', 'Fundamental', 0, 2350.42, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-fortuna-sc-abre-selecao-para-agente-operacional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itaju - SP abre concursos públicos para Motorista e Operador de Máquinas', 'Prefeitura de Itaju', 'SP', 'Fundamental', 2, 1961.04, true, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itaju-sp-abre-concursos-publicos-para-motorista-e-operador-de-maquinas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lindoeste - PR retifica processo seletivo para Professor Regente', 'Prefeitura de Lindoeste', 'PR', 'Médio', 0, NULL, false, '2026-10-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lindoeste-pr-retifica-processo-seletivo-para-professor-regente')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IGESDF - DF publica editais de seleção para Médicos com salários de até R$ 16 mil', 'IGESDF - Instituto de Gestão Estratégica de Saúde do Distrito Federal', 'DF', 'Superior', 0, 16030.94, true, '2026-10-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/igesdf-df-publica-editais-de-selecao-para-medicos-com-salarios-de-ate-16-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mirador - PR retifica edital de concurso público', 'Prefeitura de Mirador', 'PR', 'Fundamental', 27, 15159.36, true, '2026-10-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mirador-pr-retifica-edital-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tramandaí - RS abre seleção para fonoaudiólogo e visitador PIM', 'Prefeitura de Tramandaí', 'RS', 'Médio', 3, 8407.7, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tramandai-rs-abre-selecao-para-fonoaudiologo-e-visitador-pim')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEPLAD e SEDUC - PA retificam concurso público com vagas para diversas áreas de atuação', 'SEDUC - Secretaria de Estado de Educação do Pará', 'PA', 'Médio', 2000, 6590.47, true, '2026-10-07'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/seplad-e-seduc-pa-retificam-concurso-publico-com-vagas-para-diversas-areas-de-atuacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itabira - MG abre processo seletivo para Psicólogo e Terapeuta Ocupacional', 'Prefeitura de Itabira', 'MG', 'Superior', 2, 5386.76, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itabira-mg-abre-processo-seletivo-para-psicologo-e-terapeuta-ocupacional')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Itacarambi - MG abre concurso público para diversos cargos', 'Câmara de Itacarambi', 'MG', 'Fundamental', 5, 3737.48, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-itacarambi-mg-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre vagas para professores substitutos no campus de São José do Rio Preto', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 3, 3511.9, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-vagas-para-professores-substitutos-no-campus-de-sao-jose-do-rio-preto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rinópolis - SP abre concurso público para Controle Interno', 'Câmara de Rinópolis', 'SP', 'Superior', 1, 3076.38, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rinopolis-sp-abre-concurso-publico-para-controle-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para Assistente Financeiro I em Florianópolis', 'FAHECE - Fundação de Apoio ao Hemosc e Cepon', 'SC', 'Médio', 1, 2519.21, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-assistente-financeiro-i-em-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Meruoca - CE reabre inscrições de concurso público com vagas imediatas e cadastro de reserva', 'Câmara de Meruoca', 'CE', 'Médio', 15, 2500.0, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-meruoca-ce-reabre-inscricoes-de-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Colíder - MT abre processo seletivo para Apoio de Desenvolvimento Escolar', 'Prefeitura de Colíder', 'MT', 'Médio', 6, 2189.46, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-colider-mt-abre-processo-seletivo-para-apoio-de-desenvolvimento-escolar')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Presidente Lucena - RS abre seleção para Auxiliar de Serviços Gerais', 'Prefeitura de Presidente Lucena', 'RS', 'Fundamental', 0, 2178.48, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-presidente-lucena-rs-abre-selecao-para-auxiliar-de-servicos-gerais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para o cargo de Auxiliar Administrativo', 'FUNCAMP - Fundação de Desenvolvimento da Unicamp', 'SP', 'Médio', 1, 2127.21, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-o-cargo-de-auxiliar-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vitória - ES abre processo seletivo com 25 vagas para guarda-vidas', 'Prefeitura de Vitória', 'ES', 'Fundamental', 25, 2010.89, true, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vitoria-es-abre-processo-seletivo-com-25-vagas-para-guarda-vidas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Comando da 11ª Região Militar: processo seletivo reabre as inscrições para médicos em Brasília', 'Exército Brasileiro - Comando da 11ª Região Militar', 'Nacional', 'Superior', 31, NULL, false, '2026-10-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/comando-da-11-regiao-militar-processo-seletivo-reabre-as-inscricoes-para-medicos-em-brasilia')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Groaíras - CE reabre inscrições para concursos públicos', 'Prefeitura de Groaíras', 'CE', 'Fundamental', 63, 11000.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-groairas-ce-reabre-inscricoes-para-concursos-publicos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tamarana - PR republica o concurso público e retifica o processo seletivo', 'Prefeitura de Tamarana', 'PR', 'Médio', 5, 8752.26, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tamarana-pr-republica-o-concurso-publico-e-retifica-o-processo-seletivo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre vaga para analista de administração de pessoal II em Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Superior', 1, 5538.88, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-vaga-para-analista-de-administracao-de-pessoal-ii-em-florianopolis')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para Terapeuta Ocupacional I no CEPON de Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Superior', 1, 4546.46, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-terapeuta-ocupacional-i-no-cepon-de-florianopolis')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lins - SP abre processo seletivo para professores', 'Prefeitura de Lins', 'SP', 'Médio', 5, 3544.32, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lins-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Groaíras - CE abre concurso para agentes de saúde e de endemias', 'Prefeitura de Groaíras', 'CE', 'Médio', 9, 3242.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-groairas-ce-abre-concurso-para-agentes-de-saude-e-de-endemias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMES - ES abre seleção para técnicos em laboratório e farmácia', 'PMES - Polícia Militar do Espírito Santo', 'ES', 'Médio', 20, 2985.86, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/pmes-es-abre-selecao-para-tecnicos-em-laboratorio-e-farmacia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Trindade - PE divulga retificação de concurso público', 'Câmara de Trindade', 'PE', 'Fundamental', 11, 2500.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-trindade-pe-divulga-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mambaí - GO abre processo seletivo para atuação na Casa de Apoio do Município', 'Prefeitura de Mambaí', 'GO', 'Fundamental', 3, 2500.0, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mambai-go-abre-processo-seletivo-para-atuacao-na-casa-de-apoio-do-municipio')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Reserva do Iguaçu - PR abre processo seletivo para cadastro de reserva', 'Prefeitura de Reserva do Iguaçu', 'PR', 'Fundamental', 0, 1877.98, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-reserva-do-iguacu-pr-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Gabriel da Palha - ES abre vagas para Servente, Merendeira e Cuidador', 'Prefeitura de São Gabriel da Palha', 'ES', 'Fundamental', 0, 1242.43, true, '2026-10-08'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-gabriel-da-palha-es-abre-vagas-para-servente-merendeira-e-cuidador')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre seleções para cadastro de reserva de professores', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 0, 10200.29, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-selecoes-para-cadastro-de-reserva-de-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre seleções para docentes de diversas áreas', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 0, 10200.29, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-selecoes-para-docentes-de-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre processo seletivo para docentes em Dourados - MS', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 0, 10200.29, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-processo-seletivo-para-docentes-em-dourados-ms')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Vitória - ES abre processo seletivo para Cirurgiões Dentistas', 'Prefeitura de Vitória', 'ES', 'Superior', 2, 8882.28, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-vitoria-es-abre-processo-seletivo-para-cirurgioes-dentistas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapoá - SC abre processo seletivo para fonoaudiólogo', 'SME - Secretaria Municipal de Educação de Itapoá', 'SC', 'Superior', 0, 7838.82, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapoa-sc-abre-processo-seletivo-para-fonoaudiologo')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de João Neiva - ES abre processo seletivo para profissionais de saúde', 'Prefeitura de João Neiva', 'ES', 'Superior', 1, 4393.45, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-joao-neiva-es-abre-processo-seletivo-para-profissionais-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leandro Ferreira - MG abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Leandro Ferreira', 'MG', 'Fundamental', 0, 3305.38, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leandro-ferreira-mg-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Couto de Magalhães de Minas - MG abre vagas para Professor de Educação Física e Coordenador Administrativo', 'Prefeitura de Couto de Magalhães de Minas', 'MG', 'Superior', 2, 3068.06, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-couto-de-magalhaes-de-minas-mg-abre-vagas-para-professor-de-educacao-fisica-e-coordenador-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santo Antônio da Patrulha - RS abre vaga para atendente de farmácia', 'Prefeitura de Santo Antônio da Patrulha', 'RS', 'Médio', 1, 2864.12, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santo-antonio-da-patrulha-rs-abre-vaga-para-atendente-de-farmacia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para técnico de enfermagem PcD no HEMOSC de Joinville', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Médio', 0, 2507.23, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-tecnico-de-enfermagem-pcd-no-hemosc-de-joinville')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pereira Barreto - SP abre processo seletivo para Educador Social', 'Prefeitura de Pereira Barreto', 'SP', 'Médio', 0, 2250.61, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pereira-barreto-sp-abre-processo-seletivo-para-educador-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maquiné - RS abre seleção para Visitador do PIM', 'Prefeitura de Maquiné', 'RS', 'Médio', 0, 2100.0, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maquine-rs-abre-selecao-para-visitador-do-pim')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rancho Queimado - SC abre seleção com vaga para Agente Operacional I', 'Prefeitura de Rancho Queimado', 'SC', 'Fundamental', 1, 2066.79, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rancho-queimado-sc-abre-selecao-com-vaga-para-agente-operacional-i')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre processo seletivo para o cargo de Auxiliar de Odontologia', 'Prefeitura de Cláudio', 'MG', 'Fundamental', 1, 1745.62, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-processo-seletivo-para-o-cargo-de-auxiliar-de-odontologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rurópolis - PA abre processo seletivo para brigadistas de incêndio', 'Prefeitura de Rurópolis', 'PA', 'Fundamental', 10, 1621.0, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ruropolis-pa-abre-processo-seletivo-para-brigadistas-de-incendio')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para docentes do ensino médio e técnico em Bauru - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 0, 31.04, true, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-docentes-do-ensino-medio-e-tecnico-em-bauru-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Empresas DME - MG abre seleção para aprendizes na área administrativa', 'DME - Empresas DME', 'MG', 'Médio', 4, NULL, false, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/empresas-dme-mg-abre-selecao-para-aprendizes-na-area-administrativa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Empresas DME - MG abrem processo seletivo para aprendizes na área administrativa', 'DME - Empresas DME', 'MG', 'Médio', 4, NULL, false, '2026-10-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/empresas-dme-mg-abrem-processo-seletivo-para-aprendizes-na-area-administrativa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Torres - RS abre seleções para formação de cadastro de reserva', 'Prefeitura de Torres', 'RS', 'Fundamental', 0, 7602.21, true, '2026-10-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-torres-rs-abre-selecoes-para-formacao-de-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFERSA - RN abre concurso público para o cargo de Professor Efetivo', 'UFERSA - Universidade Federal Rural do Semi-Árido', 'RN', 'Superior', 0, 14288.85, true, '2026-10-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufersa-rn-abre-concurso-publico-para-o-cargo-de-professor-efetivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAMU 192 - ES abre processos seletivos para enfermeiros e técnicos em enfermagem socorrista', 'SAMU 192/ES - Serviço de Atendimento Móvel de Urgência', 'ES', 'Médio', 0, 3707.42, true, '2026-10-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/samu-192-es-abre-processos-seletivos-para-enfermeiros-e-tecnicos-em-enfermagem-socorrista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FAHECE - SC abre processo seletivo para Fonoaudiólogo I no CEPON de Florianópolis', 'FAHECE - Fundação de Apoio ao HEMOSC e CEPON', 'SC', 'Superior', 1, 3409.85, true, '2026-10-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fahece-sc-abre-processo-seletivo-para-fonoaudiologo-i-no-cepon-de-florianopolis')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAMU 192 - ES abre processo seletivo para o cargo de telefonista auxiliar de regulação médica', 'SAMU 192/ES - Serviço de Atendimento Móvel de Urgência', 'ES', 'Médio', 0, 1933.15, true, '2026-10-11'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/samu-192-es-abre-processo-seletivo-para-o-cargo-de-telefonista-auxiliar-de-regulacao-medica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFRS abre processo seletivo para professor substituto de Direito em Porto Alegre', 'IFRS - Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Sul', 'RS', 'Superior', 1, 8340.43, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifrs-abre-processo-seletivo-para-professor-substituto-de-direito-em-porto-alegre')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tamboril - CE abre concurso público para Analista Ambiental', 'Prefeitura de Tamboril', 'CE', 'Superior', 7, 5000.0, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-tamboril-ce-abre-concurso-publico-para-analista-ambiental')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Teotônio Vilela - AL retifica o edital de concurso público com vagas na área da educação', 'Prefeitura de Teotônio Vilela', 'AL', 'Médio', 205, 4989.12, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-teotonio-vilela-al-retifica-o-edital-de-concurso-publico-com-vagas-na-area-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CPD/UFRGS - RS abre seleção para Programador de Redes', 'CPD/UFRGS - Centro de Processamento de Dados da Universidade Federal do Rio Grande do Sul', 'RS', 'Médio', 1, 4582.92, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cpd-ufrgs-rs-abre-selecao-para-programador-de-redes')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre processos seletivos para Agente e Auxiliar Penitenciário', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 0, 3952.58, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-processos-seletivos-para-agente-e-auxiliar-penitenciario')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piquet Carneiro - CE divulga retificação de concurso público', 'Prefeitura de Piquet Carneiro', 'CE', 'Fundamental', 100, 3242.0, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piquet-carneiro-ce-divulga-retificacao-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EESC - USP: Processo seletivo aberto para professor na área de empreendedorismo e gestão da organização', 'EESC-USP - Escola de Engenharia de São Carlos da Universidade de São Paulo', 'SP', 'Superior', 1, 2945.73, true, '2026-10-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/eesc-usp-processo-seletivo-aberto-para-professor-na-area-de-empreendedorismo-e-gestao-da-organizacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Mutum - MT retifica edital de processo seletivo', 'Prefeitura de Nova Mutum', 'MT', 'Fundamental', 81, 22696.88, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-mutum-mt-retifica-edital-de-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR retifica edital de concurso público', 'Prefeitura de Ivaiporã', 'PR', 'Fundamental', 15, 18106.37, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-retifica-edital-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFC - CE abre concurso público para Professor do Magistério Superior', 'UFC - Universidade Federal do Ceará', 'CE', 'Superior', 61, 13753.96, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufc-ce-abre-concurso-publico-para-professor-do-magisterio-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Governo do Estado do Amapá - AP retifica edital de concurso com salários de até R$ 11.116,42', 'SESA - Secretaria de Estado da Saúde do Amapá', 'AP', 'Médio', 4210, 11116.42, true, '2026-10-13'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/governo-do-estado-do-amapa-ap-retifica-edital-de-concurso-com-salarios-de-ate-11116')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaporema - PR abre seleção para Fisioterapeuta e Médico', 'Prefeitura de Guaporema', 'PR', 'Superior', 3, 10592.34, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaporema-pr-abre-selecao-para-fisioterapeuta-e-medico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre processos seletivos com vagas para médicos especialistas', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Superior', 11, 10581.16, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-processos-seletivos-com-vagas-para-medicos-especialistas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAEB - BA prorroga inscrições do concurso para Oficiais Médicos e Odontólogos na PM e Bombeiros', 'PMBA e CBMBA - Polícia Militar e Corpo de Bombeiros Militar da Bahia', 'BA', 'Superior', 40, 9973.34, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/saeb-ba-prorroga-inscricoes-do-concurso-para-oficiais-medicos-e-odontologos-na-pm-e-bombeiros')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Limpa - GO retifica concurso público com salários de até R$ 8.945,43', 'Prefeitura de Água Limpa', 'GO', 'Fundamental', 39, 8945.43, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-limpa-go-retifica-concurso-publico-com-salarios-de-ate-8945')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA abre processo seletivo para professores substitutos no campus de Balsas', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 2, 6886.82, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-abre-processo-seletivo-para-professores-substitutos-no-campus-de-balsas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Sonora - MS abre processo seletivo com salários de até R$ 6.406,02', 'Prefeitura de Sonora', 'MS', 'Fundamental', 3, 6406.02, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sonora-ms-abre-processo-seletivo-com-salarios-de-ate-6406')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cerro Largo - RS abre processos seletivos para engenheiro civil e visitador do PIM', 'Prefeitura de Cerro Largo', 'RS', 'Médio', 0, 5437.56, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cerro-largo-rs-abre-processos-seletivos-para-engenheiro-civil-e-visitador-do-pim')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMA - MA abre processo seletivo para professores substitutos no campus Colinas', 'UEMA - Universidade Estadual do Maranhão', 'MA', 'Superior', 2, 3624.64, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uema-ma-abre-processo-seletivo-para-professores-substitutos-no-campus-colinas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para professor substituto no campus de São José do Rio Preto', 'UNESP - Universidade Estadual Paulista', 'SP', 'Superior', 1, 3511.9, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-no-campus-de-sao-jose-do-rio-preto')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no campus de Assis - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-campus-de-assis-sp')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Nísia Floresta - RN divulgam retificação de concurso público', 'Prefeitura e Câmara de Nísia Floresta', 'RN', 'Médio', 61, 3242.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-nisia-floresta-rn-divulgam-retificacao-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ivaiporã - PR retifica concurso público para agentes de saúde e de endemias', 'Prefeitura de Ivaiporã', 'PR', 'Médio', 0, 3242.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ivaipora-pr-retifica-concurso-publico-para-agentes-de-saude-e-de-endemias')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ituverava - SP abre processo seletivo com vagas imediatas e cadastro de reserva', 'Prefeitura de Ituverava', 'SP', 'Fundamental', 4, 2796.94, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ituverava-sp-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Grande - RS abre vagas para Assistente Social, Nutricionista e Psicólogo', 'Prefeitura de Rio Grande', 'RS', 'Superior', 4, 2780.15, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-grande-rs-abre-vagas-para-assistente-social-nutricionista-e-psicologo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arandu - SP abre concurso público para motorista e operador de máquina', 'Prefeitura de Arandu', 'SP', 'Médio', 6, 2194.49, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arandu-sp-abre-concurso-publico-para-motorista-e-operador-de-maquina')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nísia Floresta - RN divulga retificação de concurso público para Guarda Municipal', 'Prefeitura de Nísia Floresta', 'RN', 'Médio', 30, 1800.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nisia-floresta-rn-divulga-retificacao-de-concurso-publico-para-guarda-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de João Monlevade - MG abre seleção para o cargo de Motorista', 'Prefeitura de João Monlevade', 'MG', 'Fundamental', 1, 1799.76, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-joao-monlevade-mg-abre-selecao-para-o-cargo-de-motorista')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Juruaia - MG abre processo seletivo para Profissional de Apoio Escolar', 'Prefeitura de Juruaia', 'MG', 'Médio', 5, 1700.0, true, '2026-10-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-juruaia-mg-abre-processo-seletivo-para-profissional-de-apoio-escolar')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Braço do Norte - SC abre seleção para a Secretaria de Saúde', 'Prefeitura de Braço do Norte', 'SC', 'Fundamental', 6, 4703.1, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-braco-do-norte-sc-abre-selecao-para-a-secretaria-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Irati - PR abre processo seletivo para Psicólogo e Vigia', 'Prefeitura de Irati', 'PR', 'Fundamental', 0, 4702.5, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-irati-pr-abre-processo-seletivo-para-psicologo-e-vigia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Muriaé - MG abre processo seletivo para Enfermeiro e Auxiliar de Enfermagem', 'Prefeitura de Muriaé', 'MG', 'Médio', 0, 4680.88, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-muriae-mg-abre-processo-seletivo-para-enfermeiro-e-auxiliar-de-enfermagem')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Novo Progresso - PA abre processo seletivo para diversos cargos', 'Prefeitura de Novo Progresso', 'PA', 'Fundamental', 193, 4308.79, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-novo-progresso-pa-abre-processo-seletivo-para-diversos-cargos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Goianinha - RN abre concurso público com salários de até R$ 3.000,00', 'Câmara de Goianinha', 'RN', 'Médio', 5, 3000.0, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-goianinha-rn-abre-concurso-publico-com-salarios-de-ate-3000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('FUNCAMP - SP abre processo seletivo para Auxiliar de Enfermagem no Hospital de Sumaré', 'HES - Hospital Estadual Sumaré', 'SP', 'Médio', 1, 2882.98, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/funcamp-sp-abre-processo-seletivo-para-auxiliar-de-enfermagem-no-hospital-de-sumare')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Inácio Martins - PR abre processo seletivo para professores', 'Prefeitura de Inácio Martins', 'PR', 'Médio', 10, 2530.51, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-inacio-martins-pr-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Garuva - SC abre seleção para o cargo de Cuidador', 'Prefeitura de Garuva', 'SC', 'Médio', 0, 2438.93, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-garuva-sc-abre-selecao-para-o-cargo-de-cuidador')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre seleções para o cargo de Auxiliar Penitenciário em Grajaú e Coroatá', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 0, 1822.34, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-selecoes-para-o-cargo-de-auxiliar-penitenciario-em-grajau-e-coroata')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAP - MA abre seleções para auxiliares penitenciários em Imperatriz', 'SEAP - Secretaria de Estado de Administração Penitenciária', 'MA', 'Médio', 0, 1822.34, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seap-ma-abre-selecoes-para-auxiliares-penitenciarios-em-imperatriz')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bonito - MS abre processos seletivos para a Secretaria de Educação e Cultura', 'Prefeitura de Bonito', 'MS', 'Fundamental', 0, 1621.0, true, '2026-10-14'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bonito-ms-abre-processos-seletivos-para-a-secretaria-de-educacao-e-cultura')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Nova Tebas - PR divulga retificações de concurso público', 'Prefeitura de Nova Tebas', 'PR', 'Fundamental', 37, 20616.83, true, '2026-10-15'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-nova-tebas-pr-divulga-retificacoes-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Sebastião - SP abre processo seletivo para formação de cadastro de reserva de professores', 'Prefeitura de São Sebastião', 'SP', 'Superior', 0, 6106.94, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-sebastiao-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva-de-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Flor da Serra do Sul - PR abre processo seletivo com salários de até R$ 4.969,40', 'Prefeitura de Flor da Serra do Sul', 'PR', 'Médio', 6, 4969.4, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-flor-da-serra-do-sul-pr-abre-processo-seletivo-com-salarios-de-ate-4969')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Substituto em São José dos Campos - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-substituto-em-sao-jose-dos-campos-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Igrejinha - RS abre seleção para professor de matemática', 'Prefeitura de Igrejinha', 'RS', 'Superior', 0, 2683.38, true, '2026-10-15'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-igrejinha-rs-abre-selecao-para-professor-de-matematica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pinhal da Serra - RS abre concurso com salários de até R$ 22.223,98', 'Prefeitura de Pinhal da Serra', 'RS', 'Médio', 6, 22223.98, true, '2026-10-16'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pinhal-da-serra-rs-abre-concurso-com-salarios-de-ate-22223')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio do Sul - SC abre processo seletivo para professores', 'Prefeitura de Rio do Sul', 'SC', 'Médio', 79, 6023.24, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-do-sul-sc-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SES - SC abre processo seletivo com salários de até R$ 5.670,38', 'SES - Secretaria de Estado da Saúde de Santa Catarina', 'SC', 'Médio', 5, 5670.38, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ses-sc-abre-processo-seletivo-com-salarios-de-ate-5670')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa Santa - MG abre processo seletivo com salários de até R$ 5.185,61', 'Prefeitura de Lagoa Santa', 'MG', 'Fundamental', 277, 5185.61, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-santa-mg-abre-processo-seletivo-com-salarios-de-ate-5185')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Apiúna - SC abre processo seletivo com salários de até R$ 5.130,63', 'Prefeitura de Apiúna', 'SC', 'Fundamental', 0, 5130.63, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-apiuna-sc-abre-processo-seletivo-com-salarios-de-ate-5130')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFV - MG abre vaga para profissional técnico especializado em linguagem de sinais', 'UFV - Universidade Federal de Viçosa', 'MG', 'Superior', 1, 4967.04, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufv-mg-abre-vaga-para-profissional-tecnico-especializado-em-linguagem-de-sinais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Leopoldina - MG abre seleção para cadastro de reserva na educação', 'Prefeitura de Leopoldina', 'MG', 'Superior', 0, 4066.02, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-leopoldina-mg-abre-selecao-para-cadastro-de-reserva-na-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Meruoca - CE abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Meruoca', 'CE', 'Fundamental', 49, 3000.0, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-meruoca-ce-abre-processo-seletivo-para-a-secretaria-de-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('DEMLURB Juiz de Fora - MG abre seleções para Auxiliar de Serviços e Operador de Máquinas I', 'DEMLURB - Departamento Municipal de Limpeza Urbana', 'MG', 'Fundamental', 0, 2392.82, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/demlurb-juiz-de-fora-mg-abre-selecoes-para-auxiliar-de-servicos-e-operador-de-maquinas-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mineiros - GO abre processo seletivo para a Secretaria de Educação', 'Prefeitura de Mineiros', 'GO', 'Fundamental', 74, 1703.86, true, '2026-10-16'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mineiros-go-abre-processo-seletivo-para-a-secretaria-de-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ponte Alta - SC abre processo seletivo com salários de até R$ 17.248,32', 'Prefeitura de Ponte Alta', 'SC', 'Fundamental', 0, 17248.32, true, '2026-10-18'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ponte-alta-sc-abre-processo-seletivo-com-salarios-de-ate-17248')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Colombo - PR abre processo seletivo com salários de até R$ 8.040,50', 'Prefeitura de Colombo', 'PR', 'Fundamental', 470, 8040.5, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-colombo-pr-abre-processo-seletivo-com-salarios-de-ate-8040')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SENAR-AR/BA abre processo seletivo com salários de até R$ 6.948,00', 'SENAR-AR/BA - Serviço Nacional de Aprendizagem Rural', 'BA', 'Médio', 2, 6948.0, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/senar-ar-ba-abre-processo-seletivo-com-salarios-de-ate-6948')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caiabu - SP abre concurso público com salários de até R$ 5.825,26', 'Prefeitura de Caiabu', 'SP', 'Fundamental', 0, 5825.26, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caiabu-sp-abre-concurso-publico-com-salarios-de-ate-5825')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ibitinga - SP abre concurso público com vagas em diversas áreas', 'Prefeitura da Estância Turística de Ibitinga', 'SP', 'Médio', 5, 2755.3, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ibitinga-sp-abre-concurso-publico-com-vagas-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Adélia - SP abre seleção para profissionais da educação', 'Prefeitura de Santa Adélia', 'SP', 'Médio', 11, 1728.76, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-adelia-sp-abre-selecao-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santa Adélia - SP abre concurso para Assistente Social', 'Prefeitura de Santa Adélia', 'SP', 'Superior', 1, 1728.76, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santa-adelia-sp-abre-concurso-para-assistente-social')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pindorama - SP abre processo seletivo para professores de diferentes áreas', 'Prefeitura de Pindorama', 'SP', 'Médio', 0, 26.7, true, '2026-10-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pindorama-sp-abre-processo-seletivo-para-professores-de-diferentes-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAD - AP publica edital de concurso para Delegado e Oficial Investigador de Polícia Civil', 'SEAD/AP - Secretaria de Estado da Administração do Amapá', 'AP', 'Superior', 396, 31439.06, true, '2026-10-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/sead-ap-publica-edital-de-concurso-para-delegado-e-oficial-investigador-de-policia-civil')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Tarumã - SP abre processo seletivo com salários de até R$ 23.539,17', 'Prefeitura de Tarumã', 'SP', 'Fundamental', 0, 23539.17, true, '2026-10-19'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-taruma-sp-abre-processo-seletivo-com-salarios-de-ate-23539')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFMG abre processo seletivo para professor substituto de eletroeletrônica em Ribeirão das Neves', 'IFMG - Instituto Federal de Educação, Ciência e Tecnologia de Minas Gerais - Campus Ribeirão das Neves', 'MG', 'Superior', 1, 12536.98, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifmg-abre-processo-seletivo-para-professor-substituto-de-eletroeletronica-em-ribeirao-das-neves')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cachoeira Paulista - SP abre processo seletivo com salários de até R$ 10.073,41', 'Prefeitura de Cachoeira Paulista', 'SP', 'Fundamental', 36, 10073.41, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cachoeira-paulista-sp-abre-processo-seletivo-com-salarios-de-ate-10073')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Major Vieira - SC abre concurso público com salários de até R$ 8.442,71', 'Prefeitura de Major Vieira', 'SC', 'Fundamental', 12, 8442.71, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-major-vieira-sc-abre-concurso-publico-com-salarios-de-ate-8442')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ipumirim - SC divulga retificação de concurso público com salários de até R$ 6.990,04', 'Prefeitura de Ipumirim', 'SC', 'Fundamental', 9, 6990.04, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ipumirim-sc-divulga-retificacao-de-concurso-publico-com-salarios-de-ate-6990')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trindade - PE divulga retificação em concurso com vagas para diversos níveis', 'Prefeitura do Município de Trindade', 'PE', 'Médio', 353, 6600.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trindade-pe-divulga-retificacao-em-concurso-com-vagas-para-diversos-niveis')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Mairinque - SP abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Mairinque', 'SP', 'Médio', 0, 4400.77, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-mairinque-sp-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Evangélico de Cachoeiro de Itapemirim - ES abre seleção para residência em saúde', 'HECI - Hospital Evangélico de Cachoeiro de Itapemirim', 'ES', 'Superior', 16, 4106.09, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-evangelico-de-cachoeiro-de-itapemirim-es-abre-selecao-para-residencia-em-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HIFA - ES anuncia processo seletivo para residência médica com 30 vagas', 'HIFA - Hospital Materno Infantil Francisco de Assis', 'ES', 'Superior', 30, 4106.09, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hifa-es-anuncia-processo-seletivo-para-residencia-medica-com-30-vagas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIMME - MG abre processo seletivo com salários de até R$ 3.749,00', 'CIMME - Consórcio Intermunicipal Multifinalitário do Médio Espinhaço', 'MG', 'Fundamental', 11, 3749.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cimme-mg-abre-processo-seletivo-com-salarios-de-ate-3749')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso público para professor substituto em São José dos Campos', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-publico-para-professor-substituto-em-sao-jose-dos-campos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no campus da capital', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-campus-da-capital')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concursos para professores substitutos no campus de Ilha Solteira - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 2, 3511.9, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concursos-para-professores-substitutos-no-campus-de-ilha-solteira-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jacutinga - RS abre concurso para agentes comunitários de saúde', 'Prefeitura de Jacutinga', 'RS', 'Médio', 0, 3242.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jacutinga-rs-abre-concurso-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alto Santo - CE abre concurso para cargos de nível superior', 'Prefeitura de Alto Santo', 'CE', 'Superior', 4, 3000.0, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alto-santo-ce-abre-concurso-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jacutinga - RS abre concurso público para Operador de Máquinas e Equipamentos Rodoviários', 'Prefeitura de Jacutinga', 'RS', 'Fundamental', 1, 2584.94, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jacutinga-rs-abre-concurso-publico-para-operador-de-maquinas-e-equipamentos-rodoviarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maquiné - RS abre processo seletivo para Professor de Educação Física', 'Prefeitura de Maquiné', 'RS', 'Superior', 0, 1958.08, true, '2026-10-19'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maquine-rs-abre-processo-seletivo-para-professor-de-educacao-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Poço Dantas - PB prorroga inscrições de concurso público', 'Prefeitura de Poço Dantas', 'PB', 'Fundamental', 84, 15000.0, true, '2026-10-20'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-poco-dantas-pb-prorroga-inscricoes-de-concurso-publico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISURG Médio Piracicaba - MG abre processo seletivo com salários de até R$ 10.967,31', 'CISURG Saúde Médio Piracicaba', 'MG', 'Fundamental', 33, 10967.31, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cisurg-medio-piracicaba-mg-abre-processo-seletivo-com-salarios-de-ate-10967')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEMS abre seleção para professores em diferentes campi', 'UEMS - Universidade Estadual de Mato Grosso do Sul', 'MS', 'Superior', 0, 10200.29, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uems-abre-selecao-para-professores-em-diferentes-campi')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Joaquim da Barra - SP abre concurso público para diversos cargos', 'Prefeitura de São Joaquim da Barra', 'SP', 'Fundamental', 22, 10171.75, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joaquim-da-barra-sp-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Colniza - MT abre concurso público para Auxiliar Administrativo e Procurador Jurídico', 'Câmara de Colniza', 'MT', 'Médio', 3, 9571.69, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-colniza-mt-abre-concurso-publico-para-auxiliar-administrativo-e-procurador-juridico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ - RJ abre vaga para Professor Adjunto no Instituto de Psicologia', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6950.85, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-rj-abre-vaga-para-professor-adjunto-no-instituto-de-psicologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ângulo - PR abre concurso com salários de até R$ 6.771,80', 'Prefeitura de Ângulo', 'PR', 'Fundamental', 26, 6771.8, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-angulo-pr-abre-concurso-com-salarios-de-ate-6771')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Hidrolina - GO retifica concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Hidrolina', 'GO', 'Fundamental', 80, 3847.97, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-hidrolina-go-retifica-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concursos para professores substitutos no campus de Araçatuba', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 3, 3511.9, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concursos-para-professores-substitutos-no-campus-de-aracatuba')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapejara D''Oeste - PR abre seleção com 20 vagas para o cargo de Professor I', 'Prefeitura de Itapejara D''Oeste', 'PR', 'Superior', 20, 2565.31, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapejara-doeste-pr-abre-selecao-com-20-vagas-para-o-cargo-de-professor-i')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alvorada - RS abre processo seletivo para formação de cadastro de reserva', 'Prefeitura de Alvorada', 'RS', 'Médio', 0, 133.28, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alvorada-rs-abre-processo-seletivo-para-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Echaporã - SP abre processo seletivo para professores', 'Prefeitura de Echaporã', 'SP', 'Superior', 0, 25.66, true, '2026-10-20'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-echapora-sp-abre-processo-seletivo-para-professores')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRBio-01 - SP, MT e MS abre concurso público com salários de até R$ 7.181,50', 'CRBio-01 - Conselho Regional de Biologia da 1ª Região', 'Nacional', 'Médio', 15, 7181.5, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/crbio-01-sp-mt-e-ms-abre-concurso-publico-com-salarios-de-ate-7181')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Barão de Antonina - SP abre concurso público para o cargo de Advogado', 'Câmara de Barão de Antonina', 'SP', 'Superior', 1, 6603.39, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-barao-de-antonina-sp-abre-concurso-publico-para-o-cargo-de-advogado')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araquari - SC retifica processo seletivo para professores', 'Prefeitura de Araquari', 'SC', 'Superior', 2, 5443.19, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-araquari-sc-retifica-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Intermunicipal da Região da AMURC - SC abre processo seletivo para diversos níveis', 'Consórcio Intermunicipal de Serviços de Acolhimento da Região da AMURC', 'SC', 'Fundamental', 9, 4902.94, true, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-intermunicipal-da-regiao-da-amurc-sc-abre-processo-seletivo-para-diversos-niveis')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Francisco Alves - PR publica edital de processo seletivo para professores', 'Prefeitura de Francisco Alves', 'PR', 'Médio', 20, NULL, false, '2026-10-21'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-francisco-alves-pr-publica-edital-de-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFSJ - MG abre concurso público para professor titular-livre na área de medicina', 'UFSJ - Universidade Federal de São João del-Rei', 'MG', 'Superior', 1, 26326.81, true, '2026-10-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/ufsj-mg-abre-concurso-publico-para-professor-titular-livre-na-area-de-medicina')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Comodoro - MT abre novos editais de concurso e processo seletivo', 'Prefeitura, Câmara e Comodoro-Previ de Comodoro', 'MT', 'Fundamental', 219, 23686.47, true, '2026-10-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-comodoro-mt-abre-novos-editais-de-concurso-e-processo-seletivo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Trombudo Central - SC abre concurso com salários de até R$ 23.143,62', 'Prefeitura de Trombudo Central', 'SC', 'Fundamental', 10, 23143.62, true, '2026-10-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-trombudo-central-sc-abre-concurso-com-salarios-de-ate-23143')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CREMERJ retifica concurso com salários de até R$ 18.000,00 para diversos cargos', 'CREMERJ - Conselho Regional de Medicina do Rio de Janeiro', 'RJ', 'Médio', 146, 18000.0, true, '2026-10-22'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/cremerj-retifica-concurso-com-salarios-de-ate-18000-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Comodoro - MT lançam concursos públicos para procuradores jurídicos', 'Prefeitura e Câmara de Comodoro', 'MT', 'Superior', 1, 14470.4, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-comodoro-mt-lancam-concursos-publicos-para-procuradores-juridicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre vaga para professor substituto de astronomia e física em Ponta Grossa', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 1, 8340.33, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-vaga-para-professor-substituto-de-astronomia-e-fisica-em-ponta-grossa')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dois Córregos - SP abre concurso público com salários de até R$ 7.114,33', 'Câmara de Dois Córregos', 'SP', 'Médio', 4, 7114.33, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dois-corregos-sp-abre-concurso-publico-com-salarios-de-ate-7114')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Gaspar - SC abre concurso com vagas para a área da Educação', 'Prefeitura de Gaspar', 'SC', 'Médio', 38, 5480.28, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-gaspar-sc-abre-concurso-com-vagas-para-a-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caçador - SC abre seleção para cadastro de reserva na educação', 'Prefeitura de Caçador', 'SC', 'Médio', 0, 5390.13, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cacador-sc-abre-selecao-para-cadastro-de-reserva-na-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Rio Verde - GO abre concurso público para Auditor Fiscal da Receita Municipal', 'Prefeitura de Rio Verde', 'GO', 'Superior', 5, 4809.0, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-rio-verde-go-abre-concurso-publico-para-auditor-fiscal-da-receita-municipal')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Comodoro - MT abre concurso público para o cargo de Professor PII', 'Prefeitura de Comodoro', 'MT', 'Superior', 56, 4342.06, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-comodoro-mt-abre-concurso-publico-para-o-cargo-de-professor-pii')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEPLAD e FHCGV - PA anunciam concurso público com vagas imediatas e formação de cadastro de reserva', 'FHCGV - Fundação Pública Estadual Hospital de Clínicas Gaspar Vianna', 'PA', 'Médio', 215, 3918.15, true, '2026-10-22'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/seplad-e-fhcgv-pa-anunciam-concurso-publico-com-vagas-imediatas-e-formacao-de-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Dionísio Cerqueira - SC abre seleções com salários de até R$ 25.523,00', 'Prefeitura de Dionísio Cerqueira', 'SC', 'Fundamental', 0, 25523.0, true, '2026-10-23'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-dionisio-cerqueira-sc-abre-selecoes-com-salarios-de-ate-25523')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRN abre concurso para professores do magistério superior', 'UFRN - Universidade Federal do Rio Grande do Norte', 'RN', 'Superior', 9, 14945.96, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufrn-abre-concurso-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UERJ abre vaga para Professor Adjunto no Instituto de Nutrição', 'UERJ - Universidade do Estado do Rio de Janeiro', 'RJ', 'Superior', 1, 6581.01, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uerj-abre-vaga-para-professor-adjunto-no-instituto-de-nutricao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('HCFMRP-USP - SP abre concursos para médicos em duas especialidades cirúrgicas', 'HCFMRP-USP - Hospital das Clínicas da Faculdade de Medicina de Ribeirão Preto da Universidade de São Paulo', 'SP', 'Superior', 2, 5979.93, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hcfmrp-usp-sp-abre-concursos-para-medicos-em-duas-especialidades-cirurgicas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIGEDAS - MG abre processo seletivo com salários de até R$ 5.152,55', 'CIGEDAS - Consórcio Intermunicipal de Gestão e Desenvolvimento Ambiental Sustentável das Vertentes', 'MG', 'Médio', 3, 5152.55, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cigedas-mg-abre-processo-seletivo-com-salarios-de-ate-5152')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Consórcio Lambari - SC abre concurso público para Auxiliar Administrativo', 'CONSÓRCIO LAMBARI - Consórcio Intermunicipal Multifinalitário do Alto Uruguai Catarinense', 'SC', 'Superior', 1, 4193.34, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/consorcio-lambari-sc-abre-concurso-publico-para-auxiliar-administrativo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Icém - SP abre novo concurso público para diversos cargos', 'Prefeitura de Icém', 'SP', 'Fundamental', 1, 3611.12, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-icem-sp-abre-novo-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piranguinho - MG reabre processo seletivo para Agente de Combate às Endemias', 'Prefeitura de Piranguinho', 'MG', 'Médio', 1, 3242.0, true, '2026-10-23'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piranguinho-mg-reabre-processo-seletivo-para-agente-de-combate-as-endemias')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Fraiburgo - SC abre processo seletivo com vagas para médicos', 'Prefeitura de Fraiburgo', 'SC', 'Superior', 0, 12551.71, true, '2026-10-25'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-fraiburgo-sc-abre-processo-seletivo-com-vagas-para-medicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCE - AC reabre concurso para Auditor - Conselheiro Substituto', 'TCE - Tribunal de Contas do Estado do Acre', 'AC', 'Superior', 1, 39753.22, true, '2026-10-26'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/tce-ac-reabre-concurso-para-auditor-conselheiro-substituto')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UTFPR abre processo seletivo para professor substituto de Linguística e Inglês em Curitiba', 'UTFPR - Universidade Tecnológica Federal do Paraná', 'PR', 'Superior', 1, 8340.33, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/utfpr-abre-processo-seletivo-para-professor-substituto-de-linguistica-e-ingles-em-curitiba')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aparecida - SP abre concurso público com vagas imediatas e cadastro de reserva', 'Prefeitura de Aparecida', 'SP', 'Fundamental', 21, 6946.91, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aparecida-sp-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Boa Esperança do Norte - MT abre processo seletivo com salários de até R$ 5.895,90', 'Prefeitura de Boa Esperança do Norte', 'MT', 'Médio', 13, 5895.9, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-boa-esperanca-do-norte-mt-abre-processo-seletivo-com-salarios-de-ate-5895')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Rio Azul - PR abre concurso com salários de até R$ 5.275,16', 'Câmara de Rio Azul', 'PR', 'Fundamental', 1, 5275.16, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-rio-azul-pr-abre-concurso-com-salarios-de-ate-5275')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bela Vista do Piauí - PI abre concurso público para diversos cargos', 'Prefeitura de Bela Vista do Piauí', 'PI', 'Fundamental', 64, 5000.0, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bela-vista-do-piaui-pi-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cosmorama - SP abre concurso com salários de até R$ 4.980,82', 'Prefeitura de Cosmorama', 'SP', 'Médio', 3, 4980.82, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cosmorama-sp-abre-concurso-com-salarios-de-ate-4980')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRO - SE abre concurso público com salários de até R$ 4.504,61', 'CRO - Conselho Regional de Odontologia de Sergipe', 'SE', 'Médio', 3, 4504.61, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cro-se-abre-concurso-publico-com-salarios-de-ate-4504')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Amparo - SP abre processo seletivo para professores', 'Prefeitura de Amparo', 'SP', 'Superior', 0, 4389.71, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-amparo-sp-abre-processo-seletivo-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Descanso - SC abre concurso com salários de até R$ 4.300,00', 'Câmara de Descanso', 'SC', 'Fundamental', 3, 4300.0, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-descanso-sc-abre-concurso-com-salarios-de-ate-4300')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Araçoiaba da Serra - SP abre seleção para cadastro de reserva na área da educação', 'Prefeitura de Araçoiaba da Serra', 'SP', 'Médio', 0, 3940.7, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracoiaba-da-serra-sp-abre-selecao-para-cadastro-de-reserva-na-area-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carmo do Rio Verde - GO abre concurso público com vagas para professores', 'Prefeitura de Carmo do Rio Verde', 'GO', 'Superior', 6, 3847.97, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carmo-do-rio-verde-go-abre-concurso-publico-com-vagas-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itapecerica da Serra - SP abre concurso para Motorista de Caminhão', 'Prefeitura de Itapecerica da Serra', 'SP', 'Médio', 1, 2755.86, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itapecerica-da-serra-sp-abre-concurso-para-motorista-de-caminhao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pinhalzinho - SC abre processo seletivo para profissionais da educação', 'Prefeitura de Pinhalzinho', 'SC', 'Médio', 0, 2718.87, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pinhalzinho-sc-abre-processo-seletivo-para-profissionais-da-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Clementina - SP abre concurso para o cargo de Controlador Interno', 'Câmara de Clementina', 'SP', 'Superior', 1, 2500.0, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-clementina-sp-abre-concurso-para-o-cargo-de-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('COMDERP - SP abre processo seletivo com vagas imediatas e cadastro de reserva', 'COMDERP - Companhia Municipal de Desenvolvimento de São José do Rio Pardo', 'SP', 'Fundamental', 3, 2405.2, true, '2026-10-26'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/comderp-sp-abre-processo-seletivo-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura e Câmara de Benedito Novo - SC abrem concursos e processos seletivos com diversas vagas', 'Prefeitura e Câmara de Benedito Novo', 'SC', 'Fundamental', 55, 20171.87, true, '2026-10-27'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-e-camara-de-benedito-novo-sc-abrem-concursos-e-processos-seletivos-com-diversas-vagas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara e Município de Siqueira Campos - PR retificam concursos públicos', 'Prefeitura e Câmara de Siqueira Campos', 'PR', 'Fundamental', 51, 16681.6, true, '2026-10-27'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/camara-e-municipio-de-siqueira-campos-pr-retificam-concursos-publicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNILA - PR abre concurso público unificado para professores do magistério superior', 'UNILA - Universidade Federal da Integração Latino-Americana', 'PR', 'Superior', 3, 13288.85, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unila-pr-abre-concurso-publico-unificado-para-professores-do-magisterio-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre testes seletivos com salários de até R$ 7.997,72', 'UEM - Universidade Estadual de Maringá', 'PR', 'Médio', 3, 7997.72, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-testes-seletivos-com-salarios-de-ate-7997')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UEM - PR abre seleção para cargos técnicos e médicos com salários de até R$ 7.997,72', 'UEM - Universidade Estadual de Maringá', 'PR', 'Médio', 9, 7997.72, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/uem-pr-abre-selecao-para-cargos-tecnicos-e-medicos-com-salarios-de-ate-7997')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Jucurutu - RN publica edital de concurso com salários de até R$ 4.867,69', 'Prefeitura de Jucurutu', 'RN', 'Médio', 144, 4867.69, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-jucurutu-rn-publica-edital-de-concurso-com-salarios-de-ate-4867')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Fernando - RN retifica edital de concurso público com salários de até R$ 4.101,05', 'Prefeitura de São Fernando', 'RN', 'Fundamental', 22, 4101.05, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-fernando-rn-retifica-edital-de-concurso-publico-com-salarios-de-ate-4101')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Acari - RN abre concurso público com salários de até R$ 3.847,97', 'Prefeitura de Acari', 'RN', 'Médio', 20, 3847.97, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-acari-rn-abre-concurso-publico-com-salarios-de-ate-3847')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Timbaúba dos Batistas - RN abre concurso público para professores', 'Prefeitura de Timbaúba dos Batistas', 'RN', 'Superior', 18, 3847.97, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-timbauba-dos-batistas-rn-abre-concurso-publico-para-professores')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Acari - RN abre concurso público para Assessor Jurídico e Auditor de Controle Interno', 'Câmara de Acari', 'RN', 'Superior', 2, 2750.0, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-acari-rn-abre-concurso-publico-para-assessor-juridico-e-auditor-de-controle-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cerro Corá - RN abre concurso público para o cargo de Controlador Interno', 'Câmara de Cerro Corá', 'RN', 'Superior', 1, 2283.9, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-cerro-cora-rn-abre-concurso-publico-para-o-cargo-de-controlador-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de São João do Sabugi - RN abre concurso público para cargos efetivos', 'Câmara de São João do Sabugi', 'RN', 'Fundamental', 3, 2160.53, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-sao-joao-do-sabugi-rn-abre-concurso-publico-para-cargos-efetivos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Santana do Seridó - RN abre concurso público com quatro vagas imediatas', 'Câmara de Santana do Seridó', 'RN', 'Fundamental', 4, 2000.0, true, '2026-10-27'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-santana-do-serido-rn-abre-concurso-publico-com-quatro-vagas-imediatas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISAMAVI - SC abre concurso público com salários de até R$ 10.520,99', 'CISAMAVI - Consórcio Público Interfederativo de Saúde e Multifinalitário do Alto Vale do Itajaí', 'SC', 'Médio', 7, 10520.99, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cisamavi-sc-abre-concurso-publico-com-salarios-de-ate-10520')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFAL abre editais de seleção para professores substitutos', 'UFAL - Universidade Federal de Alagoas', 'AL', 'Superior', 0, 8340.33, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufal-abre-editais-de-selecao-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Unimontes - MG abre concurso público para professores na área de educação física', 'UNIMONTES - Universidade Estadual de Montes Claros', 'MG', 'Superior', 17, 8257.49, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unimontes-mg-abre-concurso-publico-para-professores-na-area-de-educacao-fisica')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Domingos - SC abre concurso público com salários de até R$ 7.949,24', 'Prefeitura de São Domingos', 'SC', 'Fundamental', 36, 7949.24, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-domingos-sc-abre-concurso-publico-com-salarios-de-ate-7949')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Itarema - CE abre concurso público com salários de até R$ 5.622,00', 'Prefeitura de Itarema', 'CE', 'Fundamental', 203, 5622.0, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-itarema-ce-abre-concurso-publico-com-salarios-de-ate-5622')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura do Recife - PE abre concurso público com vagas para músicos', 'Prefeitura do Recife', 'PE', 'Médio', 45, 5587.46, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-do-recife-pe-abre-concurso-publico-com-vagas-para-musicos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Panambi - RS abre concurso público com salários de até R$ 5.388,99', 'Prefeitura de Panambi', 'RS', 'Fundamental', 31, 5388.99, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-panambi-rs-abre-concurso-publico-com-salarios-de-ate-5388')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capinzal - SC anuncia concurso público para cargos de nível superior', 'Câmara de Capinzal', 'SC', 'Superior', 5, 4534.82, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capinzal-sc-anuncia-concurso-publico-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Uruana - GO abre concurso público para analista ambiental', 'Prefeitura de Uruana', 'GO', 'Superior', 2, 2500.0, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-uruana-go-abre-concurso-publico-para-analista-ambiental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jacuí - MG abre vagas para auxiliares administrativos', 'Câmara de Jacuí', 'MG', 'Médio', 3, 2046.87, true, '2026-10-28'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jacui-mg-abre-vagas-para-auxiliares-administrativos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Matão - SP abre concurso público com salários de até R$ 17.433,24', 'Prefeitura de Matão', 'SP', 'Fundamental', 44, 17433.24, true, '2026-10-29'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-matao-sp-abre-concurso-publico-com-salarios-de-ate-17433')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso público para professor doutor na área de ortodontia', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-29'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-publico-para-professor-doutor-na-area-de-ortodontia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Município e Câmara de Nova Prata do Iguaçu - PR abrem concursos com salários de até R$ 12.823,98', 'Município e Câmara de Nova Prata do Iguaçu', 'PR', 'Fundamental', 79, 12823.98, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/municipio-e-camara-de-nova-prata-do-iguacu-pr-abrem-concursos-com-salarios-de-ate-12823')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jarinu - SP abre concurso público com salários de até R$ 10.744,00', 'Câmara de Jarinu', 'SP', 'Superior', 7, 10744.0, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jarinu-sp-abre-concurso-publico-com-salarios-de-ate-10744')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Carlos - SP abre concurso com salários de até R$ 9.833,00', 'Prefeitura de São Carlos', 'SP', 'Fundamental', 45, 9833.0, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-carlos-sp-abre-concurso-com-salarios-de-ate-9833')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEAD - AP abre concursos para assistentes administrativos e analistas', 'SEAD - Secretaria de Estado da Administração do Amapá', 'AP', 'Médio', 358, 8331.35, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sead-ap-abre-concursos-para-assistentes-administrativos-e-analistas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFAP abre concurso para cargos de Técnico-Administrativo em Educação', 'IFAP - Instituto Federal de Educação, Ciência e Tecnologia do Amapá', 'AP', 'Médio', 23, 5215.39, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ifap-abre-concurso-para-cargos-de-tecnico-administrativo-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFBA - BA publica edital de concurso público para técnicos-administrativos em educação', 'UFBA - Universidade Federal da Bahia', 'BA', 'Médio', 139, 5215.39, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufba-ba-publica-edital-de-concurso-publico-para-tecnicos-administrativos-em-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guarulhos - SP abre vagas para Programas de Residência Multiprofissional em Saúde', 'Prefeitura de Guarulhos', 'SP', 'Superior', 22, 4106.09, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guarulhos-sp-abre-vagas-para-programas-de-residencia-multiprofissional-em-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Coqueiro Baixo - RS abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Coqueiro Baixo', 'RS', 'Fundamental', 13, 3815.17, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-coqueiro-baixo-rs-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chapecó - SC abre concurso público para Atendente de Central do Cidadão', 'Prefeitura de Chapecó', 'SC', 'Médio', 10, 2900.0, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-chapeco-sc-abre-concurso-publico-para-atendente-de-central-do-cidadao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Jaborá - SC abre concurso para Coordenador de Controle Interno', 'Câmara de Jaborá', 'SC', 'Superior', 1, 2231.2, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-jabora-sc-abre-concurso-para-coordenador-de-controle-interno')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Matão - SP abre processo seletivo para professores temporários', 'Prefeitura de Matão', 'SP', 'Médio', 0, 25.98, true, '2026-10-29'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-matao-sp-abre-processo-seletivo-para-professores-temporarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Descanso - SC abre processos seletivos com salários de até R$ 21.965,25', 'Prefeitura de Descanso', 'SC', 'Fundamental', 0, 21965.25, true, '2026-10-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-descanso-sc-abre-processos-seletivos-com-salarios-de-ate-21965')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNICAMP - SP abre concurso para Professor Doutor na área de Física Geral', 'UNICAMP - Universidade Estadual de Campinas', 'SP', 'Superior', 1, 16994.31, true, '2026-10-30'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unicamp-sp-abre-concurso-para-professor-doutor-na-area-de-fisica-geral')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Carapicuíba - SP abre novos concursos para cadastro de reserva em diversas áreas', 'Prefeitura do Município de Carapicuíba', 'SP', 'Médio', 0, 12118.5, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-carapicuiba-sp-abre-novos-concursos-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Serra Alta - SC retifica concurso com salários de até R$ 9.903,40', 'Prefeitura de Serra Alta', 'SC', 'Fundamental', 23, 9903.4, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-serra-alta-sc-retifica-concurso-com-salarios-de-ate-9903')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('EMATER - MG anuncia retificação de concurso público com salários de até R$ 7.321,75', 'EMATER - Empresa de Assistência Técnica e Extensão Rural do Estado de Minas Gerais', 'MG', 'Médio', 120, 7321.75, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/emater-mg-anuncia-retificacao-de-concurso-publico-com-salarios-de-ate-7321')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP de Sorocaba - SP abre concurso para Assistente de Suporte Acadêmico II', 'UNESP - Universidade Estadual Paulista', 'SP', 'Médio', 1, 6537.74, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/unesp-de-sorocaba-sp-abre-concurso-para-assistente-de-suporte-academico-ii')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPSM de São José dos Campos - SP abre concurso para diversos cargos de nível superior', 'IPSM - Instituto de Previdência do Servidor Municipal', 'SP', 'Superior', 17, 5860.31, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipsm-de-sao-jose-dos-campos-sp-abre-concurso-para-diversos-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Alta Taquari - MT abre processo seletivo para cadastro de reserva', 'Prefeitura de Alta Taquari', 'MT', 'Fundamental', 0, 5588.75, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-alta-taquari-mt-abre-processo-seletivo-para-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Pedro Teixeira - MG publica edital retificado de concurso público', 'Prefeitura de Pedro Teixeira', 'MG', 'Fundamental', 120, 5494.76, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-pedro-teixeira-mg-publica-edital-retificado-de-concurso-publico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Hospital Evangélico de Vila Velha - ES abre seleção para residência e especialização médica', 'HEVV - Hospital Evangélico de Vila Velha', 'ES', 'Superior', 40, 4106.09, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/hospital-evangelico-de-vila-velha-es-abre-selecao-para-residencia-e-especializacao-medica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Palmas de Monte Alto - BA abre concurso para agentes comunitários de saúde', 'Prefeitura de Palmas de Monte Alto', 'BA', 'Médio', 7, 3242.0, true, '2026-10-30'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-palmas-de-monte-alto-ba-abre-concurso-para-agentes-comunitarios-de-saude')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Águas Mornas - SC abre concurso e processo seletivo com salários de até R$ 10.109,68', 'Prefeitura de Águas Mornas', 'SC', 'Fundamental', 0, 10109.68, true, '2026-10-31'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aguas-mornas-sc-abre-concurso-e-processo-seletivo-com-salarios-de-ate-10109')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Chã Preta - AL abre concursos com salários de até R$ 7.256,60', 'Prefeitura de Chã Preta', 'AL', 'Fundamental', 76, 7256.6, true, '2026-11-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cha-preta-al-abre-concursos-com-salarios-de-ate-7256')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Ubajara - CE publica edital de concurso com vagas para diversos cargos', 'Prefeitura de Ubajara', 'CE', 'Fundamental', 60, 3242.0, true, '2026-11-01'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-ubajara-ce-publica-edital-de-concurso-com-vagas-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFMG abre vaga para professor assistente de Dermatologia', 'UFMG - Universidade Federal de Minas Gerais', 'MG', 'Superior', 1, 8340.33, true, '2026-11-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ufmg-abre-vaga-para-professor-assistente-de-dermatologia')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São João da Varjota - PI abre concurso público para diversos cargos', 'Prefeitura de São João da Varjota', 'PI', 'Fundamental', 64, 7200.0, true, '2026-11-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-joao-da-varjota-pi-abre-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Universidade de Pernambuco abre concurso público para o cargo de Advogado', 'UPE - Universidade de Pernambuco', 'PE', 'Superior', 2, 4165.25, true, '2026-11-02'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/universidade-de-pernambuco-abre-concurso-publico-para-o-cargo-de-advogado')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa da Prata - MG altera período de inscrições do concurso público com salários de até R$ 21 mil', 'Prefeitura de Lagoa da Prata', 'MG', 'Fundamental', 105, 21489.7, true, '2026-11-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-da-prata-mg-altera-periodo-de-inscricoes-do-concurso-publico-com-salarios-de-ate-21-mil')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente na área de Educação em Presidente Prudente - SP', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 16994.01, true, '2026-11-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-na-area-de-educacao-em-presidente-prudente-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre concurso público para o cargo de professor doutor no Instituto de Arquitetura e Urbanismo', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 16994.01, true, '2026-11-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-concurso-publico-para-o-cargo-de-professor-doutor-no-instituto-de-arquitetura-e-urbanismo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP abre concurso para Professor Assistente na área de Ciências Políticas em Marília - SP', 'UNESP - Universidade Estadual Paulista Júlio de Mesquita Filho', 'SP', 'Superior', 1, 16920.47, true, '2026-11-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/unesp-abre-concurso-para-professor-assistente-na-area-de-ciencias-politicas-em-marilia-sp')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Maravilha - SC retifica concurso com salários de até R$ 15.748,20', 'Prefeitura de Maravilha', 'SC', 'Fundamental', 11, 15748.2, true, '2026-11-03'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-maravilha-sc-retifica-concurso-com-salarios-de-ate-15748')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Corupá - SC abre concurso com salários de até R$ 13.778,50', 'PMC - Município de Corupá', 'SC', 'Fundamental', 31, 13778.5, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-corupa-sc-abre-concurso-com-salarios-de-ate-13778')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SEFAZ - SP abre concurso público para Analista em Planejamento, Orçamento e Finanças Públicas', 'SEFAZ - Secretaria da Fazenda e Planejamento', 'SP', 'Superior', 60, 11359.5, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/sefaz-sp-abre-concurso-publico-para-analista-em-planejamento-orcamento-e-financas-publicas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Alegre - RS abre concurso para cargos de nível superior', 'Prefeitura de Porto Alegre', 'RS', 'Superior', 12, 9135.44, true, '2026-11-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-alegre-rs-abre-concurso-para-cargos-de-nivel-superior')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lorena - SP abre concurso com salários de até R$ 8.890,46', 'Prefeitura de Lorena', 'SP', 'Médio', 3, 8890.46, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lorena-sp-abre-concurso-com-salarios-de-ate-8890')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lençóis Paulista - SP abre concurso público para cargos de nível superior na educação', 'Prefeitura de Lençóis Paulista', 'SP', 'Superior', 5, 8644.0, true, '2026-11-03'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lencois-paulista-sp-abre-concurso-publico-para-cargos-de-nivel-superior-na-educacao')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Belo Vale - MG abre concurso público com diversas vagas e salários de até R$ 8.000,00', 'Prefeitura de Belo Vale', 'MG', 'Fundamental', 179, 8000.0, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-belo-vale-mg-abre-concurso-publico-com-diversas-vagas-e-salarios-de-ate-8000')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cascavel - PR abre teste seletivo com salários de até R$ 7.477,16', 'Prefeitura de Cascavel', 'PR', 'Médio', 10, 7477.16, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cascavel-pr-abre-teste-seletivo-com-salarios-de-ate-7477')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Dores do Indaiá - MG abre concurso público com salários de até R$ 4.500,00', 'Câmara de Dores do Indaiá', 'MG', 'Fundamental', 5, 4500.0, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-dores-do-indaia-mg-abre-concurso-publico-com-salarios-de-ate-4500')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Piracicaba - SP abre seleção para Professores Substitutos', 'Prefeitura de Piracicaba', 'SP', 'Superior', 120, 4090.34, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-piracicaba-sp-abre-selecao-para-professores-substitutos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cerquilho - SP abre seleção com vagas imediatas e cadastro de reserva', 'Prefeitura de Cerquilho', 'SP', 'Médio', 23, 2613.11, true, '2026-11-03'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-cerquilho-sp-abre-selecao-com-vagas-imediatas-e-cadastro-de-reserva')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Assembleia Legislativa do Estado do Pará abre concursos para diversos cargos com salários de até R$ 3.697,73', 'ALEPA - Assembleia Legislativa do Estado do Pará', 'PA', 'Médio', 135, 3697.73, true, '2026-11-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/assembleia-legislativa-do-estado-do-para-abre-concursos-para-diversos-cargos-com-salarios-de-ate-3697')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Santa Casa de Misericórdia de Belo Horizonte - MG abre seleções para residência médica e multiprofissional', 'Santa Casa BH - Santa Casa de Misericórdia de Belo Horizonte', 'MG', 'Superior', 203, NULL, false, '2026-11-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/santa-casa-de-misericordia-de-belo-horizonte-mg-abre-selecoes-para-residencia-medica-e-multiprofissional')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TRT 8 - PA/AP publica edital de concurso para técnicos e analistas judiciários', 'TRT 8ª Região - Tribunal Regional do Trabalho da 8ª Região', 'PA', 'Médio', 0, 16040.88, true, '2026-11-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/trt-8-pa-ap-publica-edital-de-concurso-para-tecnicos-e-analistas-judiciarios')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Vicente de Minas - MG abre concurso público com salários de até R$ 15.142,28', 'Prefeitura de São Vicente de Minas', 'MG', 'Fundamental', 35, 15142.28, true, '2026-11-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-vicente-de-minas-mg-abre-concurso-publico-com-salarios-de-ate-15142')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UFRN abre concurso público para professores de ensino básico, técnico e tecnológico', 'UFRN - Universidade Federal do Rio Grande do Norte', 'RN', 'Superior', 9, 14463.85, true, '2026-11-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ufrn-abre-concurso-publico-para-professores-de-ensino-basico-tecnico-e-tecnologico')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Curitiba - PR abre concursos públicos com vagas imediatas e cadastro de reserva', 'PMC - Prefeitura de Curitiba', 'PR', 'Médio', 348, 14117.18, true, '2026-11-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-curitiba-pr-abre-concursos-publicos-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Defesa Social - PE anuncia concurso com 570 vagas para Bombeiros', 'CBM - Corpo de Bombeiros Militar de Pernambuco', 'PE', 'Médio', 570, 12937.33, true, '2026-11-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/secretaria-de-defesa-social-pe-anuncia-concurso-com-570-vagas-para-bombeiros')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('PMPE abre concurso público para soldados e oficiais', 'PMPE - Polícia Militar de Pernambuco', 'PE', 'Médio', 1320, 12937.33, true, '2026-11-05'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/pmpe-abre-concurso-publico-para-soldados-e-oficiais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque - SP abre seleção para o cargo de Médico do Trabalho', 'Prefeitura da Estância Turística de São Roque', 'SP', 'Superior', 0, 5901.75, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-sp-abre-selecao-para-o-cargo-de-medico-do-trabalho')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Feliz - SP publica editais de concursos para cadastro de reserva em diversas áreas', 'Prefeitura de Porto Feliz', 'SP', 'Fundamental', 0, 5882.37, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-feliz-sp-publica-editais-de-concursos-para-cadastro-de-reserva-em-diversas-areas')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Morro Agudo - SP abre concurso com salários de até R$ 5.815,68', 'Prefeitura de Morro Agudo', 'SP', 'Fundamental', 7, 5815.68, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-morro-agudo-sp-abre-concurso-com-salarios-de-ate-5815')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Saltinho - SC abre concurso público com salários de até R$ 5.022,81', 'Prefeitura de Saltinho', 'SC', 'Fundamental', 13, 5022.81, true, '2026-11-05'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-saltinho-sc-abre-concurso-publico-com-salarios-de-ate-5022')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Praia Grande - SP abre processo seletivo para residência multiprofissional', 'Município da Estância Balneária de Praia Grande', 'SP', 'Superior', 28, 4106.09, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-praia-grande-sp-abre-processo-seletivo-para-residencia-multiprofissional')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CISICOM - MG anuncia concurso público com vaga para médico veterinário', 'CISICOM - Consórcio Intermunicipal dos Serviços de Inspeção do Centro-Oeste Mineiro', 'MG', 'Superior', 1, 3500.0, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/cisicom-mg-anuncia-concurso-publico-com-vaga-para-medico-veterinario')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Roque - SP abre processo seletivo para profissionais da educação', 'Prefeitura da Estância Turística de São Roque', 'SP', 'Médio', 0, 2805.09, true, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-roque-sp-abre-processo-seletivo-para-profissionais-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IPSEMG anuncia seleção com vagas para residência médica', 'IPSEMG - Instituto de Previdência dos Servidores do Estado de Minas Gerais / Hospital Governador Israel Pinheiro', 'MG', 'Superior', 93, NULL, false, '2026-11-05'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/ipsemg-anuncia-selecao-com-vagas-para-residencia-medica')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('TCE - GO retifica concurso público para técnicos de controle externo', 'TCE - Tribunal de Contas do Estado de Goiás', 'GO', 'Médio', 16, 11862.19, true, '2026-11-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/tce-go-retifica-concurso-publico-para-tecnicos-de-controle-externo')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aracati - CE abre concurso público com salários de até R$ 5.431,00', 'Prefeitura de Aracati', 'CE', 'Fundamental', 127, 5431.0, true, '2026-11-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aracati-ce-abre-concurso-publico-com-salarios-de-ate-5431')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Água Branca - PB abre concursos públicos para diversos cargos', 'Prefeitura de Água Branca', 'PB', 'Médio', 24, 3242.0, true, '2026-11-06'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-agua-branca-pb-abre-concursos-publicos-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São José do Sabugi - PB abre concurso para diversos cargos', 'Prefeitura de São José do Sabugi', 'PB', 'Fundamental', 48, 3847.97, true, '2026-11-07'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-jose-do-sabugi-pb-abre-concurso-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CBMERJ - RJ abre processo seletivo para 1º tenente temporário', 'CBMERJ - Corpo de Bombeiros Militar do Estado do Rio de Janeiro', 'RJ', 'Superior', 192, 12279.71, true, '2026-11-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cbmerj-rj-abre-processo-seletivo-para-1-tenente-temporario')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Guaramirim - SC abre processo seletivo com salários de até R$ 6.522,86', 'Prefeitura de Guaramirim', 'SC', 'Médio', 0, 6522.86, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-guaramirim-sc-abre-processo-seletivo-com-salarios-de-ate-6522')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Caldas Novas - GO divulga retificação do concurso público para guardas civis municipais', 'Prefeitura de Caldas Novas', 'GO', 'Médio', 15, 3100.0, true, '2026-11-09'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-caldas-novas-go-divulga-retificacao-do-concurso-publico-para-guardas-civis-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Santana - AP publica edital de concurso público para guardas civis municipais', 'Prefeitura de Santana', 'AP', 'Médio', 50, 2100.0, true, '2026-11-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-santana-ap-publica-edital-de-concurso-publico-para-guardas-civis-municipais')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CRECI - ES abre concurso público com salários de até R$ 8.250,00', 'CRECI - Conselho Regional de Corretores de Imóveis da 13ª Região', 'ES', 'Médio', 24, 8250.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/creci-es-abre-concurso-publico-com-salarios-de-ate-8250')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Capinópolis - MG retifica edital de concurso público com salários de até R$ 5.800,00', 'Câmara de Capinópolis', 'MG', 'Fundamental', 5, 5800.0, true, '2026-11-10'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/camara-de-capinopolis-mg-retifica-edital-de-concurso-publico-com-salarios-de-ate-5800')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('SAEB - BA abre concurso público para Especialista em Políticas Públicas e Gestão Governamental', 'SRH - Superintendência de Recursos Humanos e SAEB - Secretaria de Administração', 'BA', 'Superior', 50, 10860.62, true, '2026-11-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/saeb-ba-abre-concurso-publico-para-especialista-em-politicas-publicas-e-gestao-governamental')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Velho - RO abre concurso com vagas imediatas e cadastro de reserva', 'Prefeitura de Porto Velho', 'RO', 'Fundamental', 2098, 9828.19, true, '2026-11-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-velho-ro-abre-concurso-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Porto Velho - RO abre concurso com vagas para a educação', 'Prefeitura de Porto Velho', 'RO', 'Médio', 265, 3847.97, true, '2026-11-11'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-porto-velho-ro-abre-concurso-com-vagas-para-a-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Fundação José Pedro de Oliveira - SP abre concurso público com salários de até R$ 8.991,96', 'FJPO - Fundação José Pedro de Oliveira', 'SP', 'Fundamental', 4, 8991.96, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/fundacao-jose-pedro-de-oliveira-sp-abre-concurso-publico-com-salarios-de-ate-8991')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Catu - BA prorroga inscrições do concurso público para diversos cargos', 'Prefeitura de Catu', 'BA', 'Médio', 148, 4690.16, true, '2026-11-12'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-catu-ba-prorroga-inscricoes-do-concurso-publico-para-diversos-cargos')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Bujaru - PA abre concurso público com salários de até R$ 4.543,83', 'Prefeitura de Bujaru', 'PA', 'Fundamental', 100, 4543.83, true, '2026-11-12'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-bujaru-pa-abre-concurso-publico-com-salarios-de-ate-4543')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Berizal - MG retifica processo seletivo para agentes comunitários de saúde', 'Prefeitura de Berizal', 'MG', 'Médio', 11, 3242.0, true, '2026-11-13'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-berizal-mg-retifica-processo-seletivo-para-agentes-comunitarios-de-saude')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Arvorezinha - RS retoma concurso público para Fiscal Ambiental e Fiscal Sanitário', 'Prefeitura de Arvorezinha', 'RS', 'Superior', 0, NULL, false, '2026-11-13'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-arvorezinha-rs-retoma-concurso-publico-para-fiscal-ambiental-e-fiscal-sanitario')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara dos Deputados - DF abre concurso público para analistas legislativos', 'Câmara dos Deputados', 'DF', 'Superior', 184, 32070.88, true, '2026-11-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-dos-deputados-df-abre-concurso-publico-para-analistas-legislativos')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('IFSP abre concurso público para o cargo de Professor do Ensino Básico, Técnico e Tecnológico', 'IFSP - Instituto Federal de Educação, Ciência e Tecnologia de São Paulo', 'SP', 'Superior', 45, 6397.19, true, '2026-11-17'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/ifsp-abre-concurso-publico-para-o-cargo-de-professor-do-ensino-basico-tecnico-e-tecnologico')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Cristalina - GO abre concurso público com salários de até R$ 8.383,20', 'Câmara de Cristalina', 'GO', 'Fundamental', 36, 8383.2, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-cristalina-go-abre-concurso-publico-com-salarios-de-ate-8383')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de São Gonçalo - RJ abre concursos para Guardas Municipais', 'Prefeitura de São Gonçalo', 'RJ', 'Médio', 101, 4535.54, true, '2026-11-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-sao-goncalo-rj-abre-concursos-para-guardas-municipais')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Vila Boa - GO abre concurso público com vagas imediatas e cadastro de reserva', 'Câmara de Vila Boa', 'GO', 'Fundamental', 6, 3674.71, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-vila-boa-go-abre-concurso-publico-com-vagas-imediatas-e-cadastro-de-reserva')
ON CONFLICT (url_edital) WHERE url_edital IS NOT NULL DO UPDATE SET
  titulo = EXCLUDED.titulo, orgao = EXCLUDED.orgao, local = EXCLUDED.local,
  nivel = EXCLUDED.nivel, vagas = EXCLUDED.vagas, salario = EXCLUDED.salario,
  salario_ate = EXCLUDED.salario_ate,
  inscricoes_ate = EXCLUDED.inscricoes_ate, status = EXCLUDED.status;
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNESP - SP abre concurso para Professor Substituto de Física Geral em Araraquara', 'UNESP - Universidade Estadual Paulista "Júlio de Mesquita Filho"', 'SP', 'Superior', 1, 3511.9, true, '2026-11-18'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unesp-sp-abre-concurso-para-professor-substituto-de-fisica-geral-em-araraquara')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Câmara de Guarabira - PB abre concurso público com salários de até R$ 3.354,70', 'Câmara de Guarabira', 'PB', 'Fundamental', 5, 3354.7, true, '2026-11-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/camara-de-guarabira-pb-abre-concurso-publico-com-salarios-de-ate-3354')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('CIMAG abre concurso público para médicos veterinários com salários de até R$ 8.300,00', 'CIMAG - Consórcio Público Intermunicipal Multifinalitário da Microrregião do Circuito das Águas', 'MG', 'Superior', 2, 8300.0, true, '2026-11-23'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/cimag-abre-concurso-publico-para-medicos-veterinarios-com-salarios-de-ate-8300')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('UNIOESTE - PR abre processo seletivo para agentes universitários no HUOP', 'UNIOESTE - Universidade Estadual do Oeste do Paraná', 'PR', 'Médio', 15, 7997.72, true, '2026-11-30'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/unioeste-pr-abre-processo-seletivo-para-agentes-universitarios-no-huop')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Aparecida de Goiânia - GO abre concurso público com vagas na área da educação', 'Prefeitura de Aparecida de Goiânia', 'GO', 'Médio', 2956, 4508.28, true, '2026-12-09'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-aparecida-de-goiania-go-abre-concurso-publico-com-vagas-na-area-da-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Secretaria de Defesa Social e de Administração - PE abrem concurso com 1.315 vagas para a Polícia Civil', 'SDS - Secretaria de Defesa Social', 'PE', 'Superior', 1315, 13560.0, true, '2026-12-16'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/secretaria-de-defesa-social-e-de-administracao-pe-abrem-concurso-com-1315-vagas-para-a-policia-civil')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Munhoz - MG abre concurso público para cargos de nível superior', 'Prefeitura de Munhoz', 'MG', 'Superior', 6, 1621.0, true, '2026-12-22'::date, 'breve', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-munhoz-mg-abre-concurso-publico-para-cargos-de-nivel-superior')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Cláudio - MG abre concurso público para cargos de nível superior na educação', 'Prefeitura de Cláudio', 'MG', 'Superior', 35, 4748.99, true, '2027-01-04'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-claudio-mg-abre-concurso-publico-para-cargos-de-nivel-superior-na-educacao')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Luislândia - MG abre concurso público com vagas em diversas áreas', 'Prefeitura de Luislândia', 'MG', 'Fundamental', 88, 10000.0, true, '2027-01-06'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-luislandia-mg-abre-concurso-publico-com-vagas-em-diversas-areas')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('Prefeitura de Lagoa Santa - MG abre concurso público com salários de até R$ 8.860,79', 'Prefeitura de Lagoa Santa', 'MG', 'Fundamental', 79, 8860.79, true, '2027-01-18'::date, 'aberto', 'https://www.pciconcursos.com.br/noticias/prefeitura-de-lagoa-santa-mg-abre-concurso-publico-com-salarios-de-ate-8860')
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
INSERT INTO public.concursos (titulo, orgao, local, nivel, vagas, salario, salario_ate, inscricoes_ate, status, url_edital) VALUES ('USP abre vaga para professor titular no Instituto de Química de São Carlos', 'USP - Universidade de São Paulo', 'SP', 'Superior', 1, 25261.98, true, '2027-04-06'::date, 'destaque', 'https://www.pciconcursos.com.br/noticias/usp-abre-vaga-para-professor-titular-no-instituto-de-quimica-de-sao-carlos')
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
