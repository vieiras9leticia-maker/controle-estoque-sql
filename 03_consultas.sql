(/) SQL

USE ControleEstoque;

-- 1.Listar todos os produtos
SELECT *
FROM produtos;

--2.Listar nome e preço dos produtos
SELECT nom, preco
FROM produtos;

--3.Produtos com estoque abaixo do mínimo
SELECT nome, estoque, estoque_minimo
FROM produtos
WHERE estoque < estoque_minimo;

--4.Produtos com preço maior que R$ 100
SELECT nome,preco
FROM produtos
WHERE preco > 100;

--5.Produtos ordenados pelo maior preço
SELECT nome, preco
FROM produtos
ORDER BY preco DESC;
