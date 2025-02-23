-- Selecionar todos os registros da tabela
SELECT * FROM Despesas;

-- Selecionar apenas alguns campos específicos
SELECT Servico, Categoria, Mensal, Anual FROM Despesas;

-- Filtrar despesas de uma categoria específica
SELECT * FROM Despesas WHERE Categoria = 'Conta Básica';

-- Filtrar despesas mensais acima de um determinado valor (exemplo: R$100,00)
SELECT * FROM Despesas WHERE Mensal > 100;

-- Filtrar despesas que são apenas anuais (Mensal é NULL)
SELECT * FROM Despesas WHERE Mensal IS NULL;

-- Ordenar despesas por valor mensal, do maior para o menor
SELECT * FROM Despesas ORDER BY Mensal DESC;

-- Calcular o total das despesas mensais e anuais
SELECT 
    SUM(Mensal) AS TotalMensal,
    SUM(Anual) AS TotalAnual
FROM Despesas;

-- Agrupar despesas por categoria e calcular o total gasto em cada uma
SELECT Categoria, SUM(Mensal) AS TotalMensal, SUM(Anual) AS TotalAnual
FROM Despesas
GROUP BY Categoria;

-- Contar quantas despesas existem em cada categoria
SELECT Categoria, COUNT(*) AS QuantidadeDeServicos
FROM Despesas
GROUP BY Categoria;

-- Atualizar um valor mensal (exemplo: aumentar o aluguel para R$700,00)
UPDATE Despesas
SET Mensal = 700.00
WHERE Servico = 'Aluguel';

-- Excluir uma despesa específica (exemplo: remover Netflix da lista)
DELETE FROM Despesas WHERE Servico = 'Netflix';
