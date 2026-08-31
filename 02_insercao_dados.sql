(/) SQL

USE ControleEstoque;

INSERT INTO categorias (id_categoria, nome)
VALUES
(1, 'Informática'),
(2, 'Escritório'),
(3, 'Eletrônicos'),
(4, 'Acessórios');

INSERT INTO produtos
(id_produto, nome, id_categorias, preco, estoque, estoque_minimo)
VALUES
(1, 'Teclado USB', 1, 89.90, 25, 10),
(2, 'Mouse USB', 1, 49.90, 40, 15),
(3, 'Cadeira de Escritório", 2, 599.90, 8, 5),
(4, 'Monitor 24 polegadas', 3, 899.90, 12, 5),
(5, 'Fone de Ouvido', 3, 129.90, 20, 8),
(6, 'Webcam HD', 3, 199.90, 6, 5),
(7, 'Mouse Pad', 4, 39.90, 50, 10),
(8, "Hub USB', 4, 79.90, 3, 5);
