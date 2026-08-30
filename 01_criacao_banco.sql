(/) SQL
  
CREATE DATABASE ControleEstoque;

USE ControleEstoque;

CREATE TABLE categorias (
  id_categoria INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
  );

CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  id_categora INT,
  preco DECIMAL(10,2),
  estoque INT,
  estoque_minimo INT,
  FOREIGN KEY (id_categoria) References categorias(id_categoria)
  );
  
