SELECT l.cod_filme, COUNT(*) AS quantidade_alugados
FROM locacao l
GROUP BY l.cod_filme
HAVING COUNT(*) > 0;


SELECT f.filme, l.data_devolucao
FROM filme f
JOIN locacao l ON f.cod_filme = l.cod_filme
JOIN cliente c ON l.cod_cliente = c.cod_cliente
JOIN categoria cat ON f.cod_categoria = cat.cod_categoria
WHERE cat.nome_categoria = 'Ação'
  AND f.diretor = 'Richard Donner'
  AND c.nome = 'Abimael Silva';

SELECT 
    f.filme AS nome_filme,
    f.valor_locacao,
    (f.valor_locacao * 0.10) AS desconto,
    (f.valor_locacao - (f.valor_locacao * 0.10)) AS valor_final
FROM 
    filme f;

SELECT 
    f.filme AS nome_filme,
    f.valor_locacao,
    (f.valor_locacao * 0.10) AS desconto,
    (f.valor_locacao - (f.valor_locacao * 0.10)) AS valor_final
FROM 
    filme f;

SELECT 
    f.filme, 
    l.data_retirada
FROM 
    locacao l
JOIN 
    filme f ON l.cod_filme = f.cod_filme
ORDER BY 
    l.data_retirada DESC
LIMIT 1;

SELECT 
    SUM(f.valor_locacao) AS lucro_total
FROM 
    locacao l
JOIN 
    filme f ON l.cod_filme = f.cod_filme
WHERE 
    f.filme = 'A vida é bela';

SELECT 
    f.diretor, 
    COUNT(l.cod_filme) AS quantidade_locacoes
FROM 
    filme f
LEFT JOIN 
    locacao l ON f.cod_filme = l.cod_filme
GROUP BY 
    f.diretor;

SELECT DISTINCT 
    c.nome_categoria
FROM 
    cliente cl
JOIN 
    locacao l ON cl.cod_cliente = l.cod_cliente
JOIN 
    filme f ON l.cod_filme = f.cod_filme
JOIN 
    categoria c ON f.cod_categoria = c.cod_categoria
WHERE 
    cl.nome = 'Maria Chiquinha';

SELECT 
    cl.nome, 
    cl.telefone
FROM 
    cliente cl
JOIN 
    locacao l ON cl.cod_cliente = l.cod_cliente
JOIN 
    filme f ON l.cod_filme = f.cod_filme
WHERE 
    f.filme = 'Constantine';

SELECT 
    c.cod_categoria, 
    c.nome_categoria
FROM 
    categoria c
LEFT JOIN 
    filme f ON c.cod_categoria = f.cod_categoria
WHERE 
    f.cod_filme IS NULL;