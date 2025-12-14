-- Inserir flashcards oficiais para todas as matérias

-- Direito Constitucional
INSERT INTO public.flashcards (front_content, back_content, subject, is_official, created_by) VALUES
('O que são direitos fundamentais?', 'São direitos básicos garantidos pela Constituição Federal a todos os cidadãos, incluindo direitos individuais, coletivos, sociais, políticos e de nacionalidade.', 'Direito Constitucional', true, null),
('Quais são as cláusulas pétreas da CF/88?', 'Art. 60, §4º: forma federativa de Estado, voto direto, secreto, universal e periódico, separação dos Poderes e direitos e garantias individuais.', 'Direito Constitucional', true, null),
('O que é o princípio da legalidade?', 'Ninguém será obrigado a fazer ou deixar de fazer alguma coisa senão em virtude de lei (Art. 5º, II, CF/88).', 'Direito Constitucional', true, null),
('O que é habeas corpus?', 'Remédio constitucional usado para proteger o direito de locomoção quando alguém sofre ou está ameaçado de sofrer violência ou coação ilegal.', 'Direito Constitucional', true, null),
('Quais são os Poderes da República?', 'Legislativo, Executivo e Judiciário, independentes e harmônicos entre si (Art. 2º, CF/88).', 'Direito Constitucional', true, null),

-- Direito Administrativo
('O que é o princípio da supremacia do interesse público?', 'Princípio que estabelece a prevalência do interesse público sobre o privado nas ações da Administração Pública.', 'Direito Administrativo', true, null),
('Quais são os princípios expressos no Art. 37 da CF?', 'LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência.', 'Direito Administrativo', true, null),
('O que é ato administrativo vinculado?', 'Ato em que a lei estabelece todos os requisitos e condições para sua realização, não deixando margem de escolha ao administrador.', 'Direito Administrativo', true, null),
('O que é poder de polícia?', 'Faculdade da Administração de condicionar e restringir o uso de bens, atividades e direitos em benefício da coletividade.', 'Direito Administrativo', true, null),
('Quais são as modalidades de licitação da Lei 14.133/2021?', 'Pregão, Concorrência, Concurso, Leilão e Diálogo Competitivo.', 'Direito Administrativo', true, null),

-- Português
('O que é concordância verbal?', 'É a relação de dependência entre o verbo e o sujeito, onde o verbo flexiona-se para concordar em número e pessoa com o sujeito.', 'Português', true, null),
('Quando usar "há" e "a" para indicar tempo?', '"Há" indica tempo passado (Há dois anos que estudo). "A" indica tempo futuro (Daqui a dois anos me formo).', 'Português', true, null),
('O que é uma oração subordinada substantiva?', 'Oração que exerce função de substantivo (sujeito, objeto direto, objeto indireto, complemento nominal, predicativo ou aposto).', 'Português', true, null),
('Qual a diferença entre "mas" e "mais"?', '"Mas" é conjunção adversativa (porém). "Mais" é advérbio de intensidade ou pronome indefinido.', 'Português', true, null),
('O que é regência verbal?', 'É a relação de dependência entre o verbo e seus complementos, determinando se o verbo exige ou não preposição.', 'Português', true, null),

-- Raciocínio Lógico
('O que é uma proposição lógica?', 'É uma sentença declarativa que pode ser classificada como verdadeira ou falsa, mas não ambas simultaneamente.', 'Raciocínio Lógico', true, null),
('Qual o valor lógico de P ∧ Q (conjunção)?', 'P ∧ Q só é verdadeira quando P e Q são ambas verdadeiras. Basta uma ser falsa para o resultado ser falso.', 'Raciocínio Lógico', true, null),
('Qual o valor lógico de P → Q (condicional)?', 'P → Q só é falsa quando P é verdadeira e Q é falsa. Em todos os outros casos é verdadeira.', 'Raciocínio Lógico', true, null),
('O que é a negação de "Todo A é B"?', 'A negação é "Algum A não é B" ou "Existe A que não é B".', 'Raciocínio Lógico', true, null),
('O que é equivalência lógica?', 'Duas proposições são equivalentes quando possuem a mesma tabela-verdade, ou seja, os mesmos valores lógicos em todas as situações.', 'Raciocínio Lógico', true, null),

-- Atualidades
('O que são os ODS da ONU?', 'Objetivos de Desenvolvimento Sustentável: 17 metas globais adotadas em 2015 para erradicar a pobreza, proteger o planeta e garantir prosperidade até 2030.', 'Atualidades', true, null),
('O que é o BRICS?', 'Grupo de países emergentes formado por Brasil, Rússia, Índia, China e África do Sul, expandido em 2024 para incluir novos membros.', 'Atualidades', true, null),
('O que é a Reforma Tributária aprovada em 2023?', 'Emenda Constitucional que unifica tributos sobre consumo criando o IBS e a CBS, substituindo PIS, Cofins, IPI, ICMS e ISS.', 'Atualidades', true, null),
('O que é inteligência artificial generativa?', 'Sistemas de IA capazes de criar conteúdo novo (texto, imagem, código) a partir de padrões aprendidos em grandes volumes de dados.', 'Atualidades', true, null),
('O que é o Marco Legal das Garantias?', 'Lei aprovada em 2023 que facilita o uso de imóveis como garantia de empréstimos e agiliza a recuperação de créditos.', 'Atualidades', true, null);