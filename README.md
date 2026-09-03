## Controle de Estoque SQL

Projeto prático de modelagem relacional, consultas analíticas e automação de regras de negócio em banco de dados, simulando a gestão real de inventário e reposição de produtos.

Desenvolvido para consolidar competências essenciais para atuação profissional nas áreas de **Análise de Dados**, **Banco de Dados** e **Business Intelligence**.

---

##  Objetivo

Modelar e consultar uma base relacional para controle de estoque capaz de:

* Gerenciar produtos, categorias, preços de venda e níveis de estoque.
* Garantir integridade referencial entre entidades via chaves primárias e estrangeiras.
* Identificar itens críticos abaixo do estoque mínimo para evitar ruptura.
* Calcular o valor total imobilizado em estoque por categoria e produto.
* Automatizar relatórios executivos e rotinas operacionais via Views e Stored Procedures.

---

##  Tecnologias Utilizadas

* **SGBD:** Microsoft SQL Server
* **Interface de Gestão:** SQL Server Management Studio (SSMS)
* **Linguagem:** SQL / T-SQL
* **Versionamento:** Git e GitHub

---

##  Conceitos e Habilidades Praticadas

* **Modelagem Relacional (DDL):** Criação de bancos, tabelas, tipos de dados, chaves primárias (`PRIMARY KEY`) e chaves estrangeiras (`FOREIGN KEY`).
* **Manipulação de Dados (DML):** Cargas iniciais de registros (`INSERT`) e atualizações de dados (`UPDATE`).
* **Filtros e Ordenação:** Consultas condicionais (`WHERE`, `LIKE`, operadores lógicos) e ordenação (`ORDER BY`).
* **Cruzamento de Tabelas (Joins):** Junções de dados relacionais via `INNER JOIN` e `LEFT JOIN`.
* **Agregações e Métricas:** Agrupamento por categorias (`GROUP BY`), filtros sobre grupos (`HAVING`) e funções agregadas (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).
* **Lógica Avançada:** Classificação condicional de estoque com `CASE WHEN`, Subqueries, CTEs (`WITH`) e Funções de Janela (`DENSE_RANK`).
* **Automação no Banco:** Criação de Visões (`VIEWS`) para consultas frequentes e Procedimentos Armazenados (`STORED PROCEDURES`) com parâmetros de entrada.

---

##  Estrutura do Projeto

| Arquivo | Descrição |
| :--- | :--- |
| `01_criacao_banco.sql` | Criação do banco de dados e modelagem das tabelas. |
| `02_insercao_dados.sql` | Carga inicial com registros fictícios de produtos e categorias. |
| `03_consultas.sql` | Consultas com filtros básicos, buscas e ordenação. |
| `04_consultas_join.sql` | Consultas relacionando produtos e categorias via chaves estrangeiras. |
| `05_agrupamento.sql` | Métricas agregadas por categoria e filtros de agrupamento. |
| `06_analise_estoque.sql` | Análise de valor total estocado e classificação de risco com `CASE WHEN`. |
| `07_views.sql` | Views para relatórios gerenciais e acompanhamento de reposição. |
| `08_consultas_avancadas.sql` | Subconsultas, CTEs e ranking por categoria via Window Functions. |
| `09_procedimentos.sql` | Stored Procedures parametrizadas para entrada de itens e reajustes em lote. |
| `README.md` | Documentação técnica e apresentação do projeto. |

---

##  Como Executar

1. Abra o **SQL Server Management Studio (SSMS)** e conecte-se à sua instância local.
2. Abra e execute os scripts na sequência numérica indicada (`01` a `09`).
