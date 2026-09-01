(/) SQL
  
-- Controle de Estoque SQL
-- Procedures

USE ControleEstoque;
GO

-- 1. Procedure para listar todos os produtos
CREATE PROCEDURE sp_ListarProdutos
AS
BEGIN
    SELECT
        id_produto,
        nome,
        preco,
        estoque,
        estoque_minimo
    FROM produtos;
END;
GO

-- 2. Procedure para listar produtos abaixo do estoque mínimo
CREATE PROCEDURE sp_ProdutosEstoqueBaixo
AS
BEGIN
    SELECT
        id_produto,
        nome,
        estoque,
        estoque_minimo
    FROM produtos
    WHERE estoque < estoque_minimo;
END;
GO

-- 3. Procedure para consultar produtos por categoria
CREATE PROCEDURE sp_ProdutosPorCategoria
    @id_categoria INT
AS
BEGIN
    SELECT
        p.id_produto,
        p.nome,
        p.preco,
        p.estoque,
        c.nome AS categoria
    FROM produtos p
    INNER JOIN categorias c
        ON p.id_categoria = c.id_categoria
    WHERE p.id_categoria = @id_categoria;
END;
GO

-- Exemplos de execução

EXEC sp_ListarProdutos;

EXEC sp_ProdutosEstoqueBaixo;

EXEC sp_ProdutosPorCategoria @id_categoria = 1;
