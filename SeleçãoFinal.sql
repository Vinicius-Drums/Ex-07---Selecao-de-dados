CREATE TABLE herois (
    identificador SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL,
    superpoder VARCHAR,
    idade INTEGER,
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Inserir os dados na tabela "herois"
INSERT INTO herois (nome, superpoder, idade, data_cadastro) 
VALUES 
    ('Spiderman', 'teia', 18, CURRENT_TIMESTAMP),
    ('Iron Man', 'armadura', 40, CURRENT_TIMESTAMP),
    ('Batman', 'bat-coisas', 39, CURRENT_TIMESTAMP),
    ('Superman', 'super-força', 26, CURRENT_TIMESTAMP);


-- Atualiza o campo 'idade' para 41 do herói "Iron Man"
UPDATE herois 
SET idade = 41 
WHERE nome = 'Iron Man';

-- Selecionar nome e idade dos heróis com idade maior que 30 anos
SELECT nome, idade
FROM herois
WHERE idade > 30;

-- Selecionar identificador e nome dos heróis onde o campo "superpoder" está preenchido
SELECT identificador, nome
FROM herois
WHERE superpoder IS NOT NULL;

-- Excluir o registro da tabela de heróis onde o nome seja "Batman"
DELETE FROM herois
WHERE nome = 'Batman';

-- Selecionar todos os dados de todos os registros da tabela de heróis
SELECT * FROM herois;


