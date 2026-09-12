-- =============================================================================
-- SEED — conteúdo oficial
-- =============================================================================
-- Consolida os dados oficiais que estavam espalhados (e duplicados) por cinco
-- migrations antigas. O que mudou em relação aos seeds originais:
--
--   * matérias normalizadas para o formato-título ('Direito Constitucional').
--     Dois seeds usavam slug ('direito-constitucional'), o que fazia a mesma
--     matéria aparecer duas vezes no filtro do QuizFilters, que monta a lista
--     a partir dos valores distintos em questions.subject.
--   * questões e flashcards repetidos entre seeds foram unificados.
--   * ícones das badges em nomes lucide, que o iconMap do MyAccount resolve
--     para componentes; emoji cairiam no fallback de texto.
--   * badges da categoria 'duelo' não entram: a feature de duelo foi removida
--     e nada mais incrementa duels_won / duels_played.
--
-- Idempotente: badges por ON CONFLICT no nome (UNIQUE), questões e flashcards
-- por uma guarda que só semeia quando ainda não há conteúdo oficial na tabela.
-- =============================================================================


-- --- Badges ------------------------------------------------------------------
-- requirement_type precisa ser um dos ramos tratados em
-- sync_user_badges_for_profile(): total_points, quizzes_completed ou
-- flashcards_studied. Qualquer outro valor nunca será concedido.

INSERT INTO public.badges (name, description, icon, category, rarity, requirement_type, requirement_value) VALUES
  ('Primeiro Passo',        'Complete seu primeiro quiz',    'brain',         'quiz',   'comum',    'quizzes_completed', 1),
  ('Estudante Dedicado',    'Complete 10 quizzes',           'target',        'quiz',   'raro',     'quizzes_completed', 10),
  ('Mestre dos Quizzes',    'Complete 50 quizzes',           'zap',           'quiz',   'epico',    'quizzes_completed', 50),
  ('Lenda do Conhecimento', 'Complete 100 quizzes',          'crown',         'quiz',   'lendario', 'quizzes_completed', 100),
  ('Primeiro Flashcard',    'Estude seu primeiro flashcard', 'bookopen',      'estudo', 'comum',    'flashcards_studied', 1),
  ('Estudante Aplicado',    'Estude 50 flashcards',          'bookmarked',    'estudo', 'raro',     'flashcards_studied', 50),
  ('Mente Brilhante',       'Estude 100 flashcards',         'graduationcap', 'estudo', 'epico',    'flashcards_studied', 100),
  ('Maratonista',           'Estude 250 flashcards',         'rocket',        'estudo', 'lendario', 'flashcards_studied', 250),
  ('Primeiros 100',         'Alcance 100 pontos',            'star',          'geral',  'comum',    'total_points', 100),
  ('Em Chamas',             'Alcance 500 pontos',            'flame',         'geral',  'raro',     'total_points', 500),
  ('Top Player',            'Alcance 2000 pontos',           'award',         'geral',  'epico',    'total_points', 2000),
  ('Lenda',                 'Alcance 5000 pontos',           'trophy',        'geral',  'lendario', 'total_points', 5000)
ON CONFLICT (name) DO NOTHING;


-- --- Questões oficiais -------------------------------------------------------

INSERT INTO public.questions (question, options, correct_answer, subject, difficulty, is_official)
SELECT * FROM (VALUES
  ('A Amazônia Legal brasileira abrange quantos estados?', '["7 estados", "9 estados", "5 estados", "11 estados"]'::jsonb, 1, 'Atualidades', 'hard', true),
  ('O BRICS é composto por quais países originalmente?', '["Brasil, Rússia, Índia, China e África do Sul", "Brasil, Rússia, Indonésia, China e Singapura", "Brasil, Reino Unido, Índia, Canadá e Suíça", "Bélgica, Rússia, Irlanda, China e Suécia"]'::jsonb, 0, 'Atualidades', 'medium', true),
  ('O Brasil é membro fundador de qual organização internacional?', '["União Europeia", "OTAN", "ONU", "ASEAN"]'::jsonb, 2, 'Atualidades', 'easy', true),
  ('Qual o nome do acordo climático assinado em 2015?', '["Protocolo de Kyoto", "Acordo de Paris", "Tratado de Marrakesh", "Convenção do Rio"]'::jsonb, 1, 'Atualidades', 'easy', true),
  ('Qual organização internacional foi criada após a Segunda Guerra Mundial para manter a paz?', '["OTAN", "ONU", "OMC", "FMI"]'::jsonb, 1, 'Atualidades', 'easy', true),
  ('Qual país sediou a Copa do Mundo de 2022?', '["Rússia", "Qatar", "Brasil", "Japão"]'::jsonb, 1, 'Atualidades', 'easy', true),
  ('Qual é a moeda oficial da União Europeia?', '["Dólar", "Euro", "Libra", "Franco"]'::jsonb, 1, 'Atualidades', 'easy', true),
  ('Qual é a moeda oficial do bloco econômico Mercosul?', '["Euro do Sul", "Peso Mercosul", "Não existe moeda única", "Real"]'::jsonb, 2, 'Atualidades', 'medium', true),
  ('Qual é o maior bioma brasileiro em extensão territorial?', '["Mata Atlântica", "Cerrado", "Amazônia", "Caatinga"]'::jsonb, 2, 'Atualidades', 'medium', true),
  ('Quantos estados compõem o Brasil?', '["25", "26", "27", "24"]'::jsonb, 1, 'Atualidades', 'easy', true),
  ('A autarquia é pessoa jurídica de direito:', '["Privado", "Público", "Misto", "Especial"]'::jsonb, 1, 'Direito Administrativo', 'easy', true),
  ('A licitação na modalidade concorrência é obrigatória para:', '["Compras de qualquer valor", "Obras e serviços de engenharia acima de R$ 3,3 milhões", "Apenas obras públicas", "Contratos de consultoria"]'::jsonb, 1, 'Direito Administrativo', 'medium', true),
  ('O ato administrativo que pode ser revogado é aquele que:', '["É ilegal", "É inconveniente ou inoportuno", "Apresenta vício de competência", "Viola o princípio da legalidade"]'::jsonb, 1, 'Direito Administrativo', 'medium', true),
  ('O que caracteriza um ato administrativo discricionário?', '["Liberdade total do administrador", "Margem de escolha dentro da lei", "Ausência de controle judicial", "Vinculação absoluta à lei"]'::jsonb, 1, 'Direito Administrativo', 'medium', true),
  ('Os princípios expressos no art. 37 da CF são:', '["Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência", "Legalidade, Transparência, Moralidade, Publicidade e Eficiência", "Legitimidade, Impessoalidade, Moralidade, Publicidade e Economia", "Legalidade, Impessoalidade, Proporcionalidade, Publicidade e Eficiência"]'::jsonb, 0, 'Direito Administrativo', 'easy', true),
  ('Qual modalidade de licitação é obrigatória para obras acima de R$ 3,3 milhões?', '["Tomada de preços", "Convite", "Concorrência", "Pregão"]'::jsonb, 2, 'Direito Administrativo', 'hard', true),
  ('Qual princípio determina que a Administração Pública deve tratar igualmente os administrados?', '["Legalidade", "Impessoalidade", "Moralidade", "Eficiência"]'::jsonb, 1, 'Direito Administrativo', 'medium', true),
  ('Qual é o prazo prescricional para ações contra a Fazenda Pública?', '["3 anos", "5 anos", "10 anos", "2 anos"]'::jsonb, 1, 'Direito Administrativo', 'hard', true),
  ('São atributos do ato administrativo:', '["Presunção de legitimidade, imperatividade e autoexecutoriedade", "Legalidade, moralidade e eficiência", "Competência, finalidade e forma", "Motivo, objeto e sujeito"]'::jsonb, 0, 'Direito Administrativo', 'hard', true),
  ('A Constituição Federal pode ser emendada durante a vigência de:', '["Estado de sítio", "Intervenção federal", "Estado de defesa", "Todas as alternativas"]'::jsonb, 3, 'Direito Constitucional', 'medium', true),
  ('A Constituição Federal pode ser emendada durante intervenção federal?', '["Sim, sem restrições", "Não, é vedado", "Sim, apenas em matéria tributária", "Depende do tipo de intervenção"]'::jsonb, 1, 'Direito Constitucional', 'medium', true),
  ('A nacionalidade brasileira pode ser perdida quando:', '["O brasileiro se naturalizar em outro país", "O brasileiro adquirir residência permanente no exterior", "O brasileiro viajar para o exterior", "O brasileiro se casar com estrangeiro"]'::jsonb, 0, 'Direito Constitucional', 'hard', true),
  ('O mandado de segurança pode ser impetrado contra:', '["Atos de particulares", "Leis em tese", "Ato de autoridade pública ou agente delegado", "Decisões judiciais transitadas em julgado"]'::jsonb, 2, 'Direito Constitucional', 'medium', true),
  ('O voto no Brasil é obrigatório para maiores de quantos anos?', '["16 anos", "18 anos", "21 anos", "14 anos"]'::jsonb, 1, 'Direito Constitucional', 'easy', true),
  ('Qual é a idade mínima para ser Presidente da República?', '["30 anos", "35 anos", "40 anos", "21 anos"]'::jsonb, 1, 'Direito Constitucional', 'easy', true),
  ('Qual é o artigo da Constituição Federal que trata dos direitos e garantias fundamentais?', '["Art. 1º", "Art. 5º", "Art. 37", "Art. 144"]'::jsonb, 1, 'Direito Constitucional', 'easy', true),
  ('Qual é o prazo máximo para que o Presidente da República sancione ou vete um projeto de lei?', '["30 dias úteis", "15 dias úteis", "10 dias úteis", "20 dias úteis"]'::jsonb, 1, 'Direito Constitucional', 'medium', true),
  ('Quantos Ministros compõem o Supremo Tribunal Federal?', '["9 Ministros", "11 Ministros", "15 Ministros", "13 Ministros"]'::jsonb, 1, 'Direito Constitucional', 'easy', true),
  ('São poderes da União, independentes e harmônicos entre si:', '["Executivo, Legislativo e Militar", "Executivo, Legislativo e Judiciário", "Executivo, Administrativo e Judiciário", "Federal, Estadual e Municipal"]'::jsonb, 1, 'Direito Constitucional', 'easy', true),
  ('A concordância verbal está correta em:', '["Fazem dois anos que não o vejo", "Houveram muitos problemas na reunião", "Existem várias soluções para o caso", "Devem haver novas oportunidades"]'::jsonb, 2, 'Português', 'medium', true),
  ('A crase está empregada corretamente em:', '["Fui à casa de Maria", "Entregou o documento à ela", "Refiro-me à pessoas honestas", "Vou à Porto Alegre"]'::jsonb, 0, 'Português', 'medium', true),
  ('Assinale a alternativa com erro de concordância:', '["Fazem cinco anos que não o vejo", "Há cinco anos não o vejo", "Faz cinco anos que não o vejo", "Existem muitas pessoas aqui"]'::jsonb, 0, 'Português', 'medium', true),
  ('Assinale a alternativa em que todas as palavras estão grafadas corretamente:', '["Previlégio, hesitar, exceção", "Privilégio, hesitar, exceção", "Privilégio, ezitar, exceção", "Previlégio, ezitar, exceção"]'::jsonb, 1, 'Português', 'easy', true),
  ('Em qual alternativa há um pronome relativo?', '["Que horas são?", "Disse que viria", "O livro que comprei", "Que absurdo!"]'::jsonb, 2, 'Português', 'medium', true),
  ('Marque a opção em que há erro de regência verbal:', '["Assistimos ao filme ontem", "Prefiro café do que chá", "Obedeço aos meus pais", "Aspiramos ao cargo público"]'::jsonb, 1, 'Português', 'hard', true),
  ('O sujeito da oração "Alugam-se casas" é:', '["Sujeito indeterminado", "Casas", "Sujeito oculto", "Inexistente"]'::jsonb, 1, 'Português', 'medium', true),
  ('Qual figura de linguagem está presente em "Ela chorou um rio de lágrimas"?', '["Metáfora", "Hipérbole", "Metonímia", "Eufemismo"]'::jsonb, 1, 'Português', 'easy', true),
  ('Qual é a função sintática do termo destacado: "O aluno estudou A MATÉRIA"?', '["Sujeito", "Objeto direto", "Objeto indireto", "Predicativo"]'::jsonb, 1, 'Português', 'medium', true),
  ('Qual é o plural correto de "cidadão"?', '["Cidadões", "Cidadãos", "Cidadães", "Cidadãs"]'::jsonb, 1, 'Português', 'easy', true),
  ('A negação de "Todos os gatos são pretos" é:', '["Nenhum gato é preto", "Alguns gatos não são pretos", "Todos os gatos são brancos", "Existe um gato preto"]'::jsonb, 1, 'Raciocínio Lógico', 'medium', true),
  ('A negação de "Todos os políticos são honestos" é:', '["Nenhum político é honesto", "Alguns políticos são honestos", "Existe pelo menos um político que não é honesto", "Todos os políticos são desonestos"]'::jsonb, 2, 'Raciocínio Lógico', 'medium', true),
  ('A proposição "Se chove, então a rua fica molhada" é equivalente a:', '["Se a rua fica molhada, então chove", "Se não chove, a rua não fica molhada", "Se a rua não fica molhada, então não chove", "Chove se e somente se a rua fica molhada"]'::jsonb, 2, 'Raciocínio Lógico', 'hard', true),
  ('Em uma sala há 30 pessoas. Se 18 falam inglês e 15 falam espanhol, quantas falam ambos os idiomas no mínimo?', '["0", "3", "5", "8"]'::jsonb, 1, 'Raciocínio Lógico', 'hard', true),
  ('Em uma sequência, os números são: 2, 6, 18, 54, ... O próximo número é:', '["108", "162", "148", "156"]'::jsonb, 1, 'Raciocínio Lógico', 'easy', true),
  ('Qual é o próximo número da sequência: 2, 6, 18, 54, ?', '["108", "162", "216", "72"]'::jsonb, 1, 'Raciocínio Lógico', 'medium', true),
  ('Se P implica Q, e Q é falso, então P é:', '["Verdadeiro", "Falso", "Indeterminado", "Verdadeiro ou Falso"]'::jsonb, 1, 'Raciocínio Lógico', 'medium', true),
  ('Se P → Q é verdadeiro e Q é falso, então P é:', '["Verdadeiro", "Falso", "Indeterminado", "Nem verdadeiro nem falso"]'::jsonb, 1, 'Raciocínio Lógico', 'medium', true),
  ('Se todo A é B e todo B é C, então:', '["Todo C é A", "Todo A é C", "Algum C não é A", "Nenhum A é C"]'::jsonb, 1, 'Raciocínio Lógico', 'easy', true),
  ('Se todo A é B, e todo B é C, então:', '["Todo C é A", "Todo A é C", "Algum C não é A", "Nenhum A é C"]'::jsonb, 1, 'Raciocínio Lógico', 'easy', true)
) AS v(question, options, correct_answer, subject, difficulty, is_official)
WHERE NOT EXISTS (SELECT 1 FROM public.questions WHERE is_official);


-- --- Flashcards oficiais -----------------------------------------------------

INSERT INTO public.flashcards (subject, front_content, back_content, is_official)
SELECT * FROM (VALUES
  ('Atualidades', 'O que são os ODS da ONU?', 'Objetivos de Desenvolvimento Sustentável: 17 metas globais adotadas em 2015 para erradicar a pobreza, proteger o planeta e garantir prosperidade até 2030.', true),
  ('Atualidades', 'O que é a Reforma Tributária aprovada em 2023?', 'Emenda Constitucional que unifica tributos sobre consumo criando o IBS e a CBS, substituindo PIS, Cofins, IPI, ICMS e ISS.', true),
  ('Atualidades', 'O que é inteligência artificial generativa?', 'Sistemas de IA capazes de criar conteúdo novo (texto, imagem, código) a partir de padrões aprendidos em grandes volumes de dados.', true),
  ('Atualidades', 'O que é o BRICS?', 'Grupo de países emergentes formado por Brasil, Rússia, Índia, China e África do Sul, expandido em 2024 para incluir novos membros.', true),
  ('Atualidades', 'O que é o Marco Legal das Garantias?', 'Lei aprovada em 2023 que facilita o uso de imóveis como garantia de empréstimos e agiliza a recuperação de créditos.', true),
  ('Direito Administrativo', 'O que é ato administrativo vinculado?', 'Ato em que a lei estabelece todos os requisitos e condições para sua realização, não deixando margem de escolha ao administrador.', true),
  ('Direito Administrativo', 'O que é o princípio da supremacia do interesse público?', 'Princípio que estabelece a prevalência do interesse público sobre o privado nas ações da Administração Pública.', true),
  ('Direito Administrativo', 'O que é poder de polícia?', 'Faculdade da Administração de condicionar e restringir o uso de bens, atividades e direitos em benefício da coletividade.', true),
  ('Direito Administrativo', 'Quais são as modalidades de licitação da Lei 14.133/2021?', 'Pregão, Concorrência, Concurso, Leilão e Diálogo Competitivo.', true),
  ('Direito Administrativo', 'Quais são os princípios expressos no Art. 37 da CF?', 'LIMPE: Legalidade, Impessoalidade, Moralidade, Publicidade e Eficiência.', true),
  ('Direito Constitucional', 'O que são direitos fundamentais?', 'São direitos básicos garantidos pela Constituição Federal a todos os cidadãos, incluindo direitos individuais, coletivos, sociais, políticos e de nacionalidade.', true),
  ('Direito Constitucional', 'O que é habeas corpus?', 'Remédio constitucional usado para proteger o direito de locomoção quando alguém sofre ou está ameaçado de sofrer violência ou coação ilegal.', true),
  ('Direito Constitucional', 'O que é o princípio da legalidade?', 'Ninguém será obrigado a fazer ou deixar de fazer alguma coisa senão em virtude de lei (Art. 5º, II, CF/88).', true),
  ('Direito Constitucional', 'Quais são as cláusulas pétreas da CF/88?', 'Art. 60, §4º: forma federativa de Estado, voto direto, secreto, universal e periódico, separação dos Poderes e direitos e garantias individuais.', true),
  ('Direito Constitucional', 'Quais são os Poderes da República?', 'Legislativo, Executivo e Judiciário, independentes e harmônicos entre si (Art. 2º, CF/88).', true),
  ('Direito Constitucional', 'Quais são os fundamentos da República Federativa do Brasil?', 'Soberania, cidadania, dignidade da pessoa humana, valores sociais do trabalho e da livre iniciativa, e pluralismo político (Art. 1º, CF).', true),
  ('Português', 'O que é concordância verbal?', 'É a relação de dependência entre o verbo e o sujeito, onde o verbo flexiona-se para concordar em número e pessoa com o sujeito.', true),
  ('Português', 'O que é regência verbal?', 'É a relação de dependência entre o verbo e seus complementos, determinando se o verbo exige ou não preposição.', true),
  ('Português', 'O que é uma oração subordinada substantiva?', 'Oração que exerce função de substantivo (sujeito, objeto direto, objeto indireto, complemento nominal, predicativo ou aposto).', true),
  ('Português', 'Qual a diferença entre "mas" e "mais"?', '"Mas" é conjunção adversativa (porém). "Mais" é advérbio de intensidade ou pronome indefinido.', true),
  ('Português', 'Quando usar "há" e "a" para indicar tempo?', '"Há" indica tempo passado (Há dois anos que estudo). "A" indica tempo futuro (Daqui a dois anos me formo).', true),
  ('Raciocínio Lógico', 'O que é a negação de "Todo A é B"?', 'A negação é "Algum A não é B" ou "Existe A que não é B".', true),
  ('Raciocínio Lógico', 'O que é equivalência lógica?', 'Duas proposições são equivalentes quando possuem a mesma tabela-verdade, ou seja, os mesmos valores lógicos em todas as situações.', true),
  ('Raciocínio Lógico', 'O que é uma proposição lógica?', 'É uma sentença declarativa que pode ser classificada como verdadeira ou falsa, mas não ambas simultaneamente.', true),
  ('Raciocínio Lógico', 'Qual o valor lógico de P → Q (condicional)?', 'P → Q só é falsa quando P é verdadeira e Q é falsa. Em todos os outros casos é verdadeira.', true),
  ('Raciocínio Lógico', 'Qual o valor lógico de P ∧ Q (conjunção)?', 'P ∧ Q só é verdadeira quando P e Q são ambas verdadeiras. Basta uma ser falsa para o resultado ser falso.', true)
) AS v(subject, front_content, back_content, is_official)
WHERE NOT EXISTS (SELECT 1 FROM public.flashcards WHERE is_official);
