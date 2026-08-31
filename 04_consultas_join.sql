(/) SQL

USE ControleEstoque;

--1.Mostrar produto e sua categoria
SELECT
  p.nome AS produto,
  c.nome AS categoria
FROM produtos p
INNER JOIN categorias c
  ON p.id_categoria = c.id_ategoria;

--2.Mostrar produtos da categoria Informática
SELECT 
  p.nome AS produto,
  p.preco,
  c.nome AS categoria 
FROM produtos p
INNER JOIN categorias c
  ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Informática';

--3.Mostrar todos os produtos e seus preços
SELECT
  p.nomeAS produto,
  p.preco,
  c.nome AS categoria
FROM produtos p
INNER JOIN categorias c
    ON p.id_categoria = c.id_categoria
ORDER BY p.preco DESC;
