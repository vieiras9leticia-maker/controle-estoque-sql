(/) SQL

USE ControleEstoque;

--1.Contar quantos produtos existem
SELECT COUNT(*) AS total_produtos
FROM produtos;

--2.Calcular o valor médio dos produtos
SELECT AVG(preco) AS preco_medio
FROM produtos;

--3.Mostrar o maior e o menor preço
SELECT
    MAX(preco) AS maior_preco,
    MIN(preco) AS menor_preco
FROM produtos;

--4.Contar quantos produtos existem em cada categoria
SELECT
    id_categoria,
    COUNT(*) AS quantidade_produtos
FROM produtos
GROUP BY id_categoria;

--5.Mostrar o estoque total por categoria
SELECT
    id_categoria,
    SUM(estoque) AS estoque_total
FROM produtos
GROUP BY id_categoria;
