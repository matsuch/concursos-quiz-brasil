-- Inserir badges oficiais
INSERT INTO public.badges (icon, name, description, category, rarity, requirement_type, requirement_value) VALUES
-- Quiz badges
('brain', 'Primeiro Passo', 'Complete seu primeiro quiz', 'quiz', 'comum', 'quizzes_completed', 1),
('target', 'Precisão Cirúrgica', 'Complete 10 quizzes', 'quiz', 'raro', 'quizzes_completed', 10),
('zap', 'Velocista', 'Complete 25 quizzes', 'quiz', 'epico', 'quizzes_completed', 25),
('crown', 'Mestre dos Quizzes', 'Complete 100 quizzes', 'quiz', 'lendario', 'quizzes_completed', 100),

-- Duelo badges
('swords', 'Primeiro Duelo', 'Participe do seu primeiro duelo', 'duelo', 'comum', 'duels_played', 1),
('medal', 'Combatente', 'Vença 5 duelos', 'duelo', 'raro', 'duels_won', 5),
('trophy', 'Invicto', 'Vença 25 duelos', 'duelo', 'epico', 'duels_won', 25),
('star', 'Campeão Supremo', 'Vença 50 duelos', 'duelo', 'lendario', 'duels_won', 50),

-- Estudo badges
('bookopen', 'Estudante Dedicado', 'Estude 10 flashcards', 'estudo', 'comum', 'flashcards_studied', 10),
('lightbulb', 'Mente Brilhante', 'Estude 50 flashcards', 'estudo', 'raro', 'flashcards_studied', 50),
('graduationcap', 'Especialista', 'Estude 100 flashcards', 'estudo', 'epico', 'flashcards_studied', 100),
('rocket', 'Maratonista', 'Estude 250 flashcards', 'estudo', 'lendario', 'flashcards_studied', 250),

-- Geral badges
('flame', 'Em Chamas', 'Alcance 500 pontos', 'geral', 'raro', 'total_points', 500),
('award', 'Top Player', 'Alcance 2000 pontos', 'geral', 'epico', 'total_points', 2000),
('timer', 'Lenda', 'Alcance 5000 pontos', 'geral', 'lendario', 'total_points', 5000);

-- Inserir flashcards oficiais
INSERT INTO public.flashcards (subject, front_content, back_content, is_official) VALUES
-- Direito Constitucional
('Direito Constitucional', 'Quais são os fundamentos da República Federativa do Brasil?', 'Soberania, cidadania, dignidade da pessoa humana, valores sociais do trabalho e da livre iniciativa, e pluralismo político (Art. 1º, CF).', true),
('Direito Constitucional', 'Quais são os objetivos fundamentais da República?', 'Construir uma sociedade livre, justa e solidária; garantir o desenvolvimento nacional; erradicar a pobreza; promover o bem de todos (Art. 3º, CF).', true),
('Direito Constitucional', 'O que é o princípio da legalidade?', 'Ninguém será obrigado a fazer ou deixar de fazer alguma coisa senão em virtude de lei (Art. 5º, II, CF).', true),
('Direito Constitucional', 'Quais são os Poderes da União?', 'Legislativo, Executivo e Judiciário, independentes e harmônicos entre si (Art. 2º, CF).', true),
('Direito Constitucional', 'O que são cláusulas pétreas?', 'São limitações materiais ao poder de reforma da Constituição, previstas no Art. 60, §4º: forma federativa, voto direto/secreto/universal/periódico, separação dos Poderes e direitos e garantias individuais.', true),

-- Direito Administrativo
('Direito Administrativo', 'Quais são os princípios expressos da Administração Pública?', 'LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência (Art. 37, CF).', true),
('Direito Administrativo', 'O que é ato administrativo?', 'É toda manifestação unilateral de vontade da Administração Pública que, agindo nessa qualidade, tenha por fim imediato adquirir, resguardar, transferir, modificar, extinguir e declarar direitos.', true),
('Direito Administrativo', 'Quais são os atributos do ato administrativo?', 'Presunção de legitimidade, imperatividade, autoexecutoriedade e tipicidade.', true),
('Direito Administrativo', 'Quais são as modalidades de licitação na Lei 14.133/2021?', 'Pregão, concorrência, concurso, leilão e diálogo competitivo.', true),
('Direito Administrativo', 'O que é o princípio da autotutela?', 'A Administração pode anular seus próprios atos quando ilegais, ou revogá-los por conveniência e oportunidade (Súmula 473, STF).', true),

-- Português
('Português', 'O que é coesão textual?', 'É a conexão entre os elementos do texto através de mecanismos linguísticos como pronomes, conjunções, sinônimos e elipses.', true),
('Português', 'Qual a diferença entre ''a fim de'' e ''afim''?', '''A fim de'' indica finalidade (para). ''Afim'' significa semelhante, parecido.', true),
('Português', 'Quando usar ''por que'', ''por quê'', ''porque'' e ''porquê''?', 'Por que (início/pergunta), por quê (final de frase), porque (resposta/causa), porquê (substantivo = motivo).', true),
('Português', 'O que é voz passiva sintética?', 'É formada com verbo transitivo direto + pronome ''se'' (partícula apassivadora). Ex: Vendem-se casas.', true),
('Português', 'Quando usar crase?', 'Usa-se crase (à) quando há fusão da preposição ''a'' com o artigo ''a'' ou com pronomes demonstrativos.', true),

-- Raciocínio Lógico
('Raciocínio Lógico', 'O que é uma proposição?', 'É uma sentença declarativa que pode ser classificada como verdadeira (V) ou falsa (F), mas nunca ambas simultaneamente.', true),
('Raciocínio Lógico', 'Qual a tabela-verdade da conjunção (E)?', 'A conjunção (p ∧ q) só é verdadeira quando ambas as proposições são verdadeiras. V∧V=V, V∧F=F, F∧V=F, F∧F=F.', true),
('Raciocínio Lógico', 'Qual a tabela-verdade da disjunção (OU)?', 'A disjunção (p ∨ q) só é falsa quando ambas as proposições são falsas. V∨V=V, V∨F=V, F∨V=V, F∨F=F.', true),
('Raciocínio Lógico', 'O que é a condicional (SE... ENTÃO)?', 'A condicional (p → q) só é falsa quando p é verdadeira e q é falsa. É a famosa ''Vera Fischer'': V→F=F.', true),
('Raciocínio Lógico', 'O que é contrapositiva?', 'É logicamente equivalente à condicional original. Se p → q, então a contrapositiva é ~q → ~p.', true),

-- Atualidades
('Atualidades', 'O que é o Marco Legal das Garantias?', 'Lei 14.711/2023 que moderniza o sistema de garantias no Brasil, facilitando o uso de imóveis como garantia em empréstimos.', true),
('Atualidades', 'O que é o Novo PAC?', 'Programa de Aceleração do Crescimento relançado em 2023, com foco em infraestrutura, mobilidade urbana, educação e saúde.', true),
('Atualidades', 'O que é a Reforma Tributária de 2023?', 'EC 132/2023 que simplifica o sistema tributário, criando o IBS (estadual/municipal) e CBS (federal) em substituição a vários tributos.', true),
('Atualidades', 'O que são os ODS?', 'Objetivos de Desenvolvimento Sustentável da ONU - 17 metas globais para erradicar a pobreza, proteger o planeta e garantir paz e prosperidade até 2030.', true),
('Atualidades', 'O que é o Marco Legal da IA no Brasil?', 'PL 2338/2023 que regulamenta o uso da inteligência artificial no Brasil, estabelecendo direitos e deveres.', true);