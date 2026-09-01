(/) SQL

-- =========================================
-- CONSULTAS AVANÇADAS
-- Projeto: Controle de Estoque SQL
-- =========================================

USE ControleEstoque;

-- 1. Classificação dos produtos por situação de estoque
SELECT
  nome,
  estoque,
  estoque_minimo,
CASE
    WHEN estoque = 0 THEN 'Sem estoque'
    WHEN estoque < estoque minimo THEN 'Estoque baixo'
    ELSE 'Estoque adequado'
  END AS situacao_estoque
FROM produtos;

-- 2. Produtos com valor de estoque superior a R$ 500
SELECT
  nome,
  estoque,
  preco,
  estoque * preco AS valor_estoque
FROM produtos
WHERE estoque * preco > 500
ORDER BY valor_estoque DESC;

-- 3. Produtos acima do preço médio
SELECT
  nome,
  preco
FROM produtos
WHERE preco > (
  SELECT AVG(preco)
  FROM produtos
)
ORDER BY preco DESC;

-- 4. Maior e menor estoque
SELECT
  MAX(estoque) AS maior_estoque,
  MIN(estoque) AS menor_estoque
FROM produtos;

-- 5. Valor médio do estoque por categoria
SELECT
  c.nome AS categoria,
  AVG(p.estoque * p.preco) AS valor_medio_estoque
FROM categorias c
INNER JOIN produtos p
  ON c.id_categoria = p.id_categoria
GROUP BY c.nome
ORDER BY valor_medio_estoque DESC;

-- 6. Quantidade de produtos em situação crítica
SELECT
  COUNT(*) AS produtos_estoque_baixo
FROM produtos
WHERE estoque < estoque_minimo

-- 7. Relatório geral de estoque
SELECT
  COUNT(*) AS total_produtos,
  SUM(estoque) AS quantidade_total_itens,
  SUM(estoque * preco) AS valor_total_estoque,
  AVG(preco) AS preco_medio
FROM produtos;
