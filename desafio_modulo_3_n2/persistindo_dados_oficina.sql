USE oficinadb;

-- Insert sample data into Cliente
INSERT INTO Cliente (Nome, Endereco, Email, Telefone_fixo, Telefone_celular)
VALUES
    ('João Silva', 'Rua A, 123', 'joao.silva@example.com', '1111-1111', '99999-1111'),
    ('Maria Oliveira', 'Rua B, 456', 'maria.oliveira@example.com', '2222-2222', '99999-2222'),
    ('Carlos Souza', 'Rua C, 789', 'carlos.souza@example.com', '3333-3333', '99999-3333'),
    ('Ana Lima', 'Rua D, 101', 'ana.lima@example.com', '4444-4444', '99999-4444'),
    ('Pedro Alves', 'Rua E, 202', 'pedro.alves@example.com', '5555-5555', '99999-5555');
    
SELECT * FROM Cliente;  

-- Insert sample data into Carro
INSERT INTO Carro (Modelo, Ano, Cor, Cliente_idCliente)
VALUES
    ('Ford Fiesta', '2010', 'Preto', 1),
    ('Chevrolet Onix', '2015', 'Branco', 2),
    ('Volkswagen Gol', '2012', 'Prata', 3),
    ('Renault Sandero', '2017', 'Vermelho', 4),
    ('Honda Civic', '2020', 'Azul', 5);

-- Insert sample data into Equipe_Mecanico
INSERT INTO Equipe_Mecanico (Codigo_equipe, Setor)
VALUES
    ('EQUIPE1', 'Mecânica Geral'),
    ('EQUIPE2', 'Pintura'),
    ('EQUIPE3', 'Elétrica'),
    ('EQUIPE4', 'Funilaria'),
    ('EQUIPE5', 'Suspensão');

-- Insert sample data into Ordem_de_servico
INSERT INTO Ordem_de_servico (Data, Ordem_de_servicocol, Valor, Codigo_servico, Executada, Cliente_idCliente, Tipo_revisao_ou_conserto, Carro_idCarro, Carro_Cliente_idCliente, autorizada_pelo_cliente, Mecanico_idEquipe_Mecanico)
VALUES
    ('2024-07-01', 1, 150.00, 'OS001', 0, 1, 1, 1, 1, 1, 1),
    ('2024-07-02', 2, 300.00, 'OS002', 1, 2, 0, 2, 2, 1, 2),
    ('2024-07-03', 3, 450.00, 'OS003', 0, 3, 1, 3, 3, 0, 3),
    ('2024-07-04', 4, 200.00, 'OS004', 1, 4, 0, 4, 4, 1, 4),
    ('2024-07-05', 5, 500.00, 'OS005', 0, 5, 1, 5, 5, 0, 5);

-- Insert sample data into Mao_de_obra
INSERT INTO Mao_de_obra (Servico, Valor_hora, Tempo_estimado_hora, Especialidade, Ordem_de_servico_idOrdem_de_servico, Ordem_de_servico_Cliente_idCliente)
VALUES
    ('Troca de óleo', 50.00, 1, 'Mecânica', 1, 1),
    ('Pintura lateral', 80.00, 3, 'Pintura', 2, 2),
    ('Reparo elétrico', 60.00, 2, 'Elétrica', 3, 3),
    ('Troca de para-choque', 70.00, 2, 'Funilaria', 4, 4),
    ('Ajuste de suspensão', 90.00, 1, 'Suspensão', 5, 5);

-- Insert sample data into Pecas
INSERT INTO Pecas (Nome_peca, Codigo_peca, Valor_peca, Ordem_de_servico_idOrdem_de_servico, Ordem_de_servico_Cliente_idCliente)
VALUES
    ('Filtro de óleo', 'P001', 20.00, 1, 1),
    ('Lata de tinta', 'P002', 100.00, 2, 2),
    ('Fusível', 'P003', 5.00, 3, 3),
    ('Para-choque', 'P004', 150.00, 4, 4),
    ('Amortecedor', 'P005', 120.00, 5, 5);

-- Insert sample data into Mecanico_Emite_Ordem_de_servico
INSERT INTO Mecanico_Emite_Ordem_de_servico (Mecanico_idMecanico, Ordem_de_servico_idOrdem_de_servico, Ordem_de_servico_Cliente_idCliente)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);

-- Insert sample data into Pecas_has_Ordem_de_servico
INSERT INTO Pecas_has_Ordem_de_servico (Pecas_idPecas, Ordem_de_servico_idOrdem_de_servico, Ordem_de_servico_Cliente_idCliente)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);

-- Insert sample data into Ordem_de_servico_has_Pecas
INSERT INTO Ordem_de_servico_has_Pecas (Ordem_de_servico_idOrdem_de_servico, Ordem_de_servico_Cliente_idCliente, Pecas_idPecas)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);

-- Insert sample data into Mecanicos
INSERT INTO Mecanicos (Nome, Telefone, Endereco, Especialidade, Codigo, Equipe_Mecanico_idEquipe_Mecanico)
VALUES
    ('Miguel Silva', '8888-8888', 'Rua F, 303', 'Mecânica Geral', 'M001', 1),
    ('Lucas Ferreira', '7777-7777', 'Rua G, 404', 'Pintura', 'M002', 2),
    ('Gabriel Santos', '6666-6666', 'Rua H, 505', 'Elétrica', 'M003', 3),
    ('Rafael Costa', '5555-5555', 'Rua I, 606', 'Funilaria', 'M004', 4),
    ('Felipe Almeida', '4444-4444', 'Rua J, 707', 'Suspensão', 'M005', 5);
