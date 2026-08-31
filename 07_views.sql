(/) SQL
  
USE ControleEstoque;

-- VIEW com informações consolidadas do estoque

CREATE VIEW vw_estoque_produtos AS
SELECT
    p.id_produto,
    p.nome AS produto,
    c.nome AS categoria,
    p.estoque,
    p.estoque_minimo,
    p.preco,
    p.estoque * p.preco AS valor_total_estoque
FROM produtos p
INNER JOIN categorias c
    ON p.id_categoria = c.id_categoria;

-- Consultando a VIEW

SELECT *
FROM vw_estoque_produtos
ORDER BY valor_total_estoque DESC;

-- Produtos que precisam de reposição

SELECT
    produto,
    categoria,
    estoque,
    estoque_minimo
FROM vw_estoque_produtos
WHERE estoque < estoque_minimo;
