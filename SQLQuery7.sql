CREATE DATABASE ControleFinanceiro;

USE ControleFinanceiro;
GO

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

