USE oficinadb;

-- Recuperando lista de clientes
SELECT * FROM Cliente;

-- Recuperando algumas colunas de carro
SELECT Modelo, Ano, Cor FROM Carro;

-- Recuperando todos os dados de Ordem_de_servico
SELECT * FROM Ordem_de_servico;

-- Recuperando todos os clientes que moram na 'Rua A'
SELECT * FROM Cliente WHERE Endereco LIKE 'Rua A%';

-- Recuperando carros de um modelo específico
SELECT * FROM Carro WHERE Modelo = 'Honda Civic';

-- Recuperando todas as ordens de servico com um valor específico
SELECT * FROM Ordem_de_servico WHERE Valor > 200.00;

-- Recuperando dados de clientes e fazendo uma nova coluna com  CONCAT		
SELECT Nome, CONCAT(Endereco, ', ', Telefone_fixo, ', ', Telefone_celular) AS Full_Address FROM Cliente;

-- Recuperando todas as ordens de servicço adicionando 10% ao valor
SELECT idOrdem_de_servico, Valor, ROUND((Valor * 1.10), 2) AS Total_Value FROM Ordem_de_servico;

-- Recuperando todos os clientes e ordenando por nome
SELECT * FROM Cliente ORDER BY Nome;

-- Recuperando as ordens de serviço e ordenando descendente
SELECT * FROM Ordem_de_servico ORDER BY Valor DESC;

-- Recuperando os carros e ordenando por modelo e ano
SELECT * FROM Carro ORDER BY Modelo, Ano;

-- Recuperando clientes e ordenando por numeroes de orden de serviço
SELECT Cliente_idCliente, COUNT(*) AS Order_Count
FROM Ordem_de_servico
GROUP BY Cliente_idCliente
HAVING COUNT(*) > 0; -- inseir mais dados

-- Recuperando o valor todas das ordens de serviço agrupada por cliente e mostrando o valo total
SELECT Cliente_idCliente, SUM(Valor) AS Total_Value
FROM Ordem_de_servico
GROUP BY Cliente_idCliente
HAVING SUM(Valor) > 300;

-- Recuperando ordens de serviço com valores e infos dos clientes
SELECT o.idOrdem_de_servico, o.Data, o.Valor, c.Nome, c.Email
FROM Ordem_de_servico o
JOIN Cliente c ON o.Cliente_idCliente = c.idCliente;

-- Recuperando ordens de serviço com valores e infos dos carros
SELECT o.idOrdem_de_servico, o.Data, o.Valor, ca.Modelo, ca.Ano, ca.Cor
FROM Ordem_de_servico o
JOIN Carro ca ON o.Carro_idCarro = ca.idCarro AND o.Carro_Cliente_idCliente = ca.Cliente_idCliente;

-- Recuperando mecanicos e  equipes mecanicos repectivas
SELECT m.Nome, m.Telefone, e.Codigo_equipe, e.Setor
FROM Mecanicos m
JOIN Equipe_Mecanico e ON m.Equipe_Mecanico_idEquipe_Mecanico = e.idEquipe_Mecanico;

-- Recuperando peças e ligando às ordens de serviço
SELECT os.idOrdem_de_servico, os.Valor, p.Nome_peca, p.Valor_peca
FROM Ordem_de_servico os
JOIN Pecas_has_Ordem_de_servico pos ON os.idOrdem_de_servico = pos.Ordem_de_servico_idOrdem_de_servico
JOIN Pecas p ON pos.Pecas_idPecas = p.idPecas
WHERE os.Cliente_idCliente = pos.Ordem_de_servico_Cliente_idCliente;







