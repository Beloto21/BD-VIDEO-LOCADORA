INSERT INTO cliente(rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo)
VALUES ('221232348', 'Dino da Silva Sauro', 'Rua Joaquim Silveira, 34', 'Jd. Romano', 'São Roque', 'SP', NULL, NULL, NULL, 'M');

SELECT * FROM cliente WHERE rg = '221232348';


2. INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo)
VALUES ('123456789', 'Dino', 'Rua dos Exemplos, 1', 'Centro', 'Sorocaba', 'SP', '12345678', 'dino@exemplo.com', '1990-01-01 00:00:00.000', 'M');

-- Amadeus (Supondo que cod_filme para "Amadeus" seja 10)
INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao)
VALUES (11, 10, NOW(), NULL);

-- Constantine (Supondo que cod_filme para "Constantine" seja 7)
INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao)
VALUES (11, 7, NOW(), NULL);

INSERT INTO filme (filme, cod_categoria, diretor, valor_locacao, reservada) 
VALUES ('Missão Impossível 3', 1, 'J.J. Abrams', 7.00, 'n');

INSERT INTO locacao (cod_cliente, cod_filme, data_retirada, data_devolucao) 
VALUES (11, 10, NOW(), NULL);

UPDATE categoria 
SET nome_categoria = 'Animação' 
WHERE nome_categoria = 'Desenho';

SELECT * FROM categoria WHERE nome_categoria = 'Animação';

UPDATE filme
SET reservada = 's'
WHERE diretor = 'Terry Gilliam';

SELECT filme, reservada 
FROM filme 
WHERE diretor = 'Terry Gilliam';

UPDATE cliente
SET endereco = 'Rua Guilherme Orlando, 333', 
    bairro = 'Jardim Santa Rosália', 
    telefone = '1532145543'
WHERE nome = 'Rafael Nunes Sales';

SELECT * 
FROM cliente 
WHERE nome = 'Rafael Nunes Sales';

UPDATE categoria
SET nome_categoria = UPPER(nome_categoria);

SELECT * 
FROM categoria;

SELECT filme, valor_locacao 
FROM filme 
WHERE filme IN ('A Mexicana', 'A Verdade Nua e Crua', 'Austrália');


INSERT INTO cliente (rg, nome, endereco, bairro, cidade, estado, telefone, email, datanascimento, sexo)
VALUES ('54499778614', 'Nicolas Beloto', 'Rua Joaquim, 77', 'Jardim Europa', 'Sorocaba', 'SP', '15996099791', 'Nicolas@gmail.com', '2006-06-06 00:00:00', 'M');