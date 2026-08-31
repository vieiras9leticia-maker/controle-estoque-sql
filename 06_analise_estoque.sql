(/) SQL

--Produtos que precisam de reposição
SELECT
    p.nome AS produto,
    c.nome AS categoria,
    p.estoque,
    p.estoque_minimo
FROM produtos p
INNER JOIN categorias c
    ON p.id_categoria = c.id_categoria
WHERE p.estoque < p.estoque_minimo;


--Valor total do estoque por produto
SELECT
    nome AS produto,
    estoque,
    preco,
    estoque*preco AS valor_total_estoque
FROM produtos
ORDER BY valor_total_estoque DESC;


-- Quantidade de produtos por categoria
SELECT
    c.nome AS categoria,
    COUNT(p.id_produto) AS quantidade_produtos
FROM categorias c
INNER JOIN produtos p
    ON c.id_categoria = p.id_categoria
GROUP BY c.nome
ORDER BY quantidade_produtos DESC;
