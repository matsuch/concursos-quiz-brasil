-- Inserir questões oficiais para teste dos modos Solo e Duelo
INSERT INTO public.questions (question, options, correct_answer, subject, difficulty, is_official) VALUES
-- Direito Constitucional
('Qual é o prazo máximo para que o Presidente da República sancione ou vete um projeto de lei?', '["30 dias úteis", "15 dias úteis", "10 dias úteis", "20 dias úteis"]', 1, 'direito-constitucional', 'medium', true),
('Quantos Ministros compõem o Supremo Tribunal Federal?', '["9 Ministros", "11 Ministros", "15 Ministros", "13 Ministros"]', 1, 'direito-constitucional', 'easy', true),
('A Constituição Federal pode ser emendada durante intervenção federal?', '["Sim, sem restrições", "Não, é vedado", "Sim, apenas em matéria tributária", "Depende do tipo de intervenção"]', 1, 'direito-constitucional', 'medium', true),
('Qual é a idade mínima para ser Presidente da República?', '["30 anos", "35 anos", "40 anos", "21 anos"]', 1, 'direito-constitucional', 'easy', true),
('O voto no Brasil é obrigatório para maiores de quantos anos?', '["16 anos", "18 anos", "21 anos", "14 anos"]', 1, 'direito-constitucional', 'easy', true),

-- Direito Administrativo
('Qual princípio determina que a Administração Pública deve tratar igualmente os administrados?', '["Legalidade", "Impessoalidade", "Moralidade", "Eficiência"]', 1, 'direito-administrativo', 'medium', true),
('O que caracteriza um ato administrativo discricionário?', '["Liberdade total do administrador", "Margem de escolha dentro da lei", "Ausência de controle judicial", "Vinculação absoluta à lei"]', 1, 'direito-administrativo', 'medium', true),
('Qual é o prazo prescricional para ações contra a Fazenda Pública?', '["3 anos", "5 anos", "10 anos", "2 anos"]', 1, 'direito-administrativo', 'hard', true),
('A autarquia é pessoa jurídica de direito:', '["Privado", "Público", "Misto", "Especial"]', 1, 'direito-administrativo', 'easy', true),
('Qual modalidade de licitação é obrigatória para obras acima de R$ 3,3 milhões?', '["Tomada de preços", "Convite", "Concorrência", "Pregão"]', 2, 'direito-administrativo', 'hard', true),

-- Português
('Qual é a função sintática do termo destacado: "O aluno estudou A MATÉRIA"?', '["Sujeito", "Objeto direto", "Objeto indireto", "Predicativo"]', 1, 'portugues', 'medium', true),
('Assinale a alternativa com erro de concordância:', '["Fazem cinco anos que não o vejo", "Há cinco anos não o vejo", "Faz cinco anos que não o vejo", "Existem muitas pessoas aqui"]', 0, 'portugues', 'medium', true),
('Qual figura de linguagem está presente em "Ela chorou um rio de lágrimas"?', '["Metáfora", "Hipérbole", "Metonímia", "Eufemismo"]', 1, 'portugues', 'easy', true),
('Qual é o plural correto de "cidadão"?', '["Cidadões", "Cidadãos", "Cidadães", "Cidadãs"]', 1, 'portugues', 'easy', true),
('Em qual alternativa há um pronome relativo?', '["Que horas são?", "Disse que viria", "O livro que comprei", "Que absurdo!"]', 2, 'portugues', 'medium', true),

-- Raciocínio Lógico
('Se todo A é B, e todo B é C, então:', '["Todo C é A", "Todo A é C", "Algum C não é A", "Nenhum A é C"]', 1, 'raciocinio-logico', 'easy', true),
('Qual é o próximo número da sequência: 2, 6, 18, 54, ?', '["108", "162", "216", "72"]', 1, 'raciocinio-logico', 'medium', true),
('Em uma sala há 30 pessoas. Se 18 falam inglês e 15 falam espanhol, quantas falam ambos os idiomas no mínimo?', '["0", "3", "5", "8"]', 1, 'raciocinio-logico', 'hard', true),
('A negação de "Todos os gatos são pretos" é:', '["Nenhum gato é preto", "Alguns gatos não são pretos", "Todos os gatos são brancos", "Existe um gato preto"]', 1, 'raciocinio-logico', 'medium', true),
('Se P implica Q, e Q é falso, então P é:', '["Verdadeiro", "Falso", "Indeterminado", "Verdadeiro ou Falso"]', 1, 'raciocinio-logico', 'medium', true),

-- Atualidades
('Qual organização internacional foi criada após a Segunda Guerra Mundial para manter a paz?', '["OTAN", "ONU", "OMC", "FMI"]', 1, 'atualidades', 'easy', true),
('Qual é a moeda oficial da União Europeia?', '["Dólar", "Euro", "Libra", "Franco"]', 1, 'atualidades', 'easy', true),
('Quantos estados compõem o Brasil?', '["25", "26", "27", "24"]', 1, 'atualidades', 'easy', true),
('Qual país sediou a Copa do Mundo de 2022?', '["Rússia", "Qatar", "Brasil", "Japão"]', 1, 'atualidades', 'easy', true),
('Qual é o maior bioma brasileiro em extensão territorial?', '["Mata Atlântica", "Cerrado", "Amazônia", "Caatinga"]', 2, 'atualidades', 'medium', true);