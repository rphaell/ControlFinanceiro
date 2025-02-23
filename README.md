Controle Financeiro com SQL Server e Power BI

Visão Geral

Este projeto tem como objetivo criar um sistema de controle financeiro utilizando SQL Server para armazenamento dos dados e Power BI para a visualização e análise das despesas.

Tecnologias Utilizadas

SQL Server para criação do banco de dados e armazenamento das informações financeiras.

Power BI para geração de dashboards interativos com gráficos sobre as despesas mensais e anuais.

Estrutura do Banco de Dados

O banco de dados ControleFinanceiro contém uma tabela chamada Despesas, que armazena informações sobre os serviços, categorias e valores gastos mensal e anualmente.

Criação do Banco de Dados e da Tabela

CREATE DATABASE ControleFinanceiro;

USE ControleFinanceiro;
GO

CREATE TABLE Despesas (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Servico NVARCHAR(50),
    Categoria NVARCHAR(50),
    Mensal DECIMAL(10,2),
    Anual DECIMAL(10,2)
);
GO

Inserção de Dados

INSERT INTO Despesas (Servico, Categoria, Mensal, Anual)
VALUES
    ('Aluguel', 'Moradia', 650.00, NULL),
    ('Condomínio', 'Moradia', 200.00, NULL),
    ('Celular', 'Conta Básica', 30.00, NULL),
    ('Internet', 'Conta Básica', 70.00, NULL),
    ('IPTU', 'Conta Básica', NULL, 640.00),
    ('Luz', 'Conta Básica', 170.00, NULL),
    ('Supermercado', 'Alimentação', 600.00, NULL),
    ('Netflix', 'Entretenimento', 30.00, NULL),
    ('Gás', 'Conta Básica', NULL, 140.00),
    ('Faculdade', 'Educação', 140.00, NULL),
    ('Lazer', 'Entretenimento', 300.00, NULL);
GO

Consulta para Verificação dos Dados

SELECT * FROM Despesas;

DELETE FROM Despesas WHERE Servico = 'Youtube';

UPDATE Despesas
SET Mensal = 180.00
WHERE Servico = 'Faculdade';

SELECT Categoria, COUNT(*) AS QuantidadeDeServicos
FROM Despesas
GROUP BY Categoria;

Cálculo de Gastos Anuais

No Power BI, utilizei a seguinte fórmula DAX para calcular o total de gastos anuais:

Gasto Anual = SUMX(Despesas, Despesas[Mensal]*12 + Despesas[Anual])

Visualização de Dados

Os dados são apresentados em um dashboard interativo no Power BI contendo:

Gráfico de Barras: Exibe os valores gastos mensalmente por tipo de despesa e categoria.

Gráfico de Pizza: Mostra a distribuição dos gastos anuais por categoria.

Indicadores:

Total de Gastos Anuais: Exibe o valor total gasto no ano.

Total de Gastos Mensais: Exibe o valor médio mensal de despesas.

![image](https://github.com/user-attachments/assets/d80ce523-920f-445e-b77b-945692afbf66)

![image](https://github.com/user-attachments/assets/5bf26426-7405-49e6-8615-38ee80b059b9)









Raphael Almeida
