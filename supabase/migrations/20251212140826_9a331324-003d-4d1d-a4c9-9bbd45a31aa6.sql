-- Inserir badges iniciais
INSERT INTO public.badges (name, description, icon, category, rarity, requirement_type, requirement_value) VALUES
-- Badges de Quiz
('Primeiro Quiz', 'Complete seu primeiro quiz', '🎯', 'quiz', 'comum', 'quizzes_completed', 1),
('Estudante Dedicado', 'Complete 10 quizzes', '📚', 'quiz', 'raro', 'quizzes_completed', 10),
('Mestre dos Quizzes', 'Complete 50 quizzes', '🏆', 'quiz', 'epico', 'quizzes_completed', 50),
('Lenda do Conhecimento', 'Complete 100 quizzes', '👑', 'quiz', 'lendario', 'quizzes_completed', 100),

-- Badges de Duelo
('Primeiro Duelo', 'Participe do seu primeiro duelo', '⚔️', 'duelo', 'comum', 'duels_played', 1),
('Duelista', 'Participe de 10 duelos', '🗡️', 'duelo', 'raro', 'duels_played', 10),
('Primeira Vitória', 'Vença seu primeiro duelo', '🥇', 'duelo', 'comum', 'duels_won', 1),
('Campeão', 'Vença 10 duelos', '🏅', 'duelo', 'raro', 'duels_won', 10),
('Invicto', 'Vença 25 duelos', '💪', 'duelo', 'epico', 'duels_won', 25),

-- Badges de Estudo
('Primeiro Flashcard', 'Estude seu primeiro flashcard', '📖', 'estudo', 'comum', 'flashcards_studied', 1),
('Estudante Aplicado', 'Estude 50 flashcards', '🎓', 'estudo', 'raro', 'flashcards_studied', 50),
('Mente Brilhante', 'Estude 200 flashcards', '💡', 'estudo', 'epico', 'flashcards_studied', 200),

-- Badges de Pontuação (usando categoria 'geral')
('100 Pontos', 'Alcance 100 pontos totais', '⭐', 'geral', 'comum', 'total_points', 100),
('500 Pontos', 'Alcance 500 pontos totais', '🌟', 'geral', 'raro', 'total_points', 500),
('1000 Pontos', 'Alcance 1000 pontos totais', '✨', 'geral', 'epico', 'total_points', 1000),
('5000 Pontos', 'Alcance 5000 pontos totais', '💎', 'geral', 'lendario', 'total_points', 5000);

-- Inserir questões iniciais (oficiais)
INSERT INTO public.questions (question, options, correct_answer, subject, difficulty, is_official) VALUES
-- Direito Constitucional
('Qual é o artigo da Constituição Federal que trata dos direitos e garantias fundamentais?', '["Art. 1º", "Art. 5º", "Art. 37", "Art. 144"]', 1, 'Direito Constitucional', 'easy', true),
('A Constituição Federal pode ser emendada durante a vigência de:', '["Estado de sítio", "Intervenção federal", "Estado de defesa", "Todas as alternativas"]', 3, 'Direito Constitucional', 'medium', true),
('São poderes da União, independentes e harmônicos entre si:', '["Executivo, Legislativo e Militar", "Executivo, Legislativo e Judiciário", "Executivo, Administrativo e Judiciário", "Federal, Estadual e Municipal"]', 1, 'Direito Constitucional', 'easy', true),
('O mandado de segurança pode ser impetrado contra:', '["Atos de particulares", "Leis em tese", "Ato de autoridade pública ou agente delegado", "Decisões judiciais transitadas em julgado"]', 2, 'Direito Constitucional', 'medium', true),
('A nacionalidade brasileira pode ser perdida quando:', '["O brasileiro se naturalizar em outro país", "O brasileiro adquirir residência permanente no exterior", "O brasileiro viajar para o exterior", "O brasileiro se casar com estrangeiro"]', 0, 'Direito Constitucional', 'hard', true),

-- Direito Administrativo
('Os princípios expressos no art. 37 da CF são:', '["Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência", "Legalidade, Transparência, Moralidade, Publicidade e Eficiência", "Legitimidade, Impessoalidade, Moralidade, Publicidade e Economia", "Legalidade, Impessoalidade, Proporcionalidade, Publicidade e Eficiência"]', 0, 'Direito Administrativo', 'easy', true),
('A autarquia é pessoa jurídica de direito:', '["Privado", "Público", "Misto", "Híbrido"]', 1, 'Direito Administrativo', 'easy', true),
('A licitação na modalidade concorrência é obrigatória para:', '["Compras de qualquer valor", "Obras e serviços de engenharia acima de R$ 3,3 milhões", "Apenas obras públicas", "Contratos de consultoria"]', 1, 'Direito Administrativo', 'medium', true),
('O ato administrativo que pode ser revogado é aquele que:', '["É ilegal", "É inconveniente ou inoportuno", "Apresenta vício de competência", "Viola o princípio da legalidade"]', 1, 'Direito Administrativo', 'medium', true),
('São atributos do ato administrativo:', '["Presunção de legitimidade, imperatividade e autoexecutoriedade", "Legalidade, moralidade e eficiência", "Competência, finalidade e forma", "Motivo, objeto e sujeito"]', 0, 'Direito Administrativo', 'hard', true),

-- Português
('Assinale a alternativa em que todas as palavras estão grafadas corretamente:', '["Previlégio, hesitar, exceção", "Privilégio, hesitar, exceção", "Privilégio, ezitar, exceção", "Previlégio, ezitar, exceção"]', 1, 'Português', 'easy', true),
('A concordância verbal está correta em:', '["Fazem dois anos que não o vejo", "Houveram muitos problemas na reunião", "Existem várias soluções para o caso", "Devem haver novas oportunidades"]', 2, 'Português', 'medium', true),
('O sujeito da oração "Alugam-se casas" é:', '["Sujeito indeterminado", "Casas", "Sujeito oculto", "Inexistente"]', 1, 'Português', 'medium', true),
('Marque a opção em que há erro de regência verbal:', '["Assistimos ao filme ontem", "Prefiro café do que chá", "Obedeço aos meus pais", "Aspiramos ao cargo público"]', 1, 'Português', 'hard', true),
('A crase está empregada corretamente em:', '["Fui à casa de Maria", "Entregou o documento à ela", "Refiro-me à pessoas honestas", "Vou à Porto Alegre"]', 0, 'Português', 'medium', true),

-- Raciocínio Lógico
('Se todo A é B e todo B é C, então:', '["Todo C é A", "Todo A é C", "Algum C não é A", "Nenhum A é C"]', 1, 'Raciocínio Lógico', 'easy', true),
('A negação de "Todos os políticos são honestos" é:', '["Nenhum político é honesto", "Alguns políticos são honestos", "Existe pelo menos um político que não é honesto", "Todos os políticos são desonestos"]', 2, 'Raciocínio Lógico', 'medium', true),
('Em uma sequência, os números são: 2, 6, 18, 54, ... O próximo número é:', '["108", "162", "148", "156"]', 1, 'Raciocínio Lógico', 'easy', true),
('Se P → Q é verdadeiro e Q é falso, então P é:', '["Verdadeiro", "Falso", "Indeterminado", "Nem verdadeiro nem falso"]', 1, 'Raciocínio Lógico', 'medium', true),
('A proposição "Se chove, então a rua fica molhada" é equivalente a:', '["Se a rua fica molhada, então chove", "Se não chove, a rua não fica molhada", "Se a rua não fica molhada, então não chove", "Chove se e somente se a rua fica molhada"]', 2, 'Raciocínio Lógico', 'hard', true),

-- Atualidades
('O Brasil é membro fundador de qual organização internacional?', '["União Europeia", "OTAN", "ONU", "ASEAN"]', 2, 'Atualidades', 'easy', true),
('Qual o nome do acordo climático assinado em 2015?', '["Protocolo de Kyoto", "Acordo de Paris", "Tratado de Marrakesh", "Convenção do Rio"]', 1, 'Atualidades', 'easy', true),
('O BRICS é composto por quais países originalmente?', '["Brasil, Rússia, Índia, China e África do Sul", "Brasil, Rússia, Indonésia, China e Singapura", "Brasil, Reino Unido, Índia, Canadá e Suíça", "Bélgica, Rússia, Irlanda, China e Suécia"]', 0, 'Atualidades', 'medium', true),
('Qual é a moeda oficial do bloco econômico Mercosul?', '["Euro do Sul", "Peso Mercosul", "Não existe moeda única", "Real"]', 2, 'Atualidades', 'medium', true),
('A Amazônia Legal brasileira abrange quantos estados?', '["7 estados", "9 estados", "5 estados", "11 estados"]', 1, 'Atualidades', 'hard', true);
