-- inserção de dados

use ecommerce;

show tables;

-- cliente
-- Nome_completo varchar(45) , contato char(10) , perfil varchar(45)  ,  endereco varchar(100),  data_nascimento date

INSERT INTO cliente (Nome_completo, contato, perfil, endereco, data_nascimento)
VALUES 
    ('John Doe', '1234567890', 'Regular', '123 Main St, Springfield, IL', '1985-06-15'),
    ('Jane Smith', '0987654321', 'VIP', '456 Elm St, Springfield, IL', '1990-12-22'),
    ('Alice Johnson', '1122334455', 'Regular', '789 Oak St, Springfield, IL', '1978-03-30'),
    ('Bob Brown', '6677889900', 'New', '321 Pine St, Springfield, IL', '1982-11-05'),
    ('Carol White', '5566778899', 'Regular', '654 Cedar St, Springfield, IL', '1995-07-14');

    
SELECT * FROM cliente; 
DELETE FROM cliente;


-- estoque

INSERT INTO estoque (idEstoque, Local, Quantidade)
VALUES 
    (1, 'Warehouse A', 150),
    (2, 'Warehouse B', 300),
    (3, 'Warehouse C', 120),
    (4, 'Store 1', 80),
    (5, 'Store 2', 60);

SELECT * FROM estoque;
DELETE FROM estoque;
 
INSERT INTO fornecedor (idFornecedor, Razao_Social, CNPJ, contato)
VALUES 
    (1, 'Fornecedor A', '12345678000190', 'fornecedorA@example.com'),
    (2, 'Fornecedor B', '98765432000121', 'fornecedorB@example.com'),
    (3, 'Fornecedor C', '45678901000134', 'fornecedorC@example.com'),
    (4, 'Fornecedor D', '32165498000156', 'fornecedorD@example.com'),
    (5, 'Fornecedor E', '78901234000178', 'fornecedorE@example.com');   

SELECT * FROM fornecedor;
-- DELETE FROM fornecedor;

INSERT INTO ordem_de_servico (idOrdem_de_Servico, Descricao, Prioridade, Pedido_has_Responsavel_Pedido_idPedido, Pedido_has_Responsavel_Responsavel_idResponsavel)
VALUES 
    (1, 'Reparação de software', 'Alta', 101, 1001),
    (2, 'Instalação de hardware', 'Média', 102, 1002),
    (3, 'Manutenção preventiva', 'Baixa', 103, 1003),
    (4, 'Atualização de sistema', 'Alta', 104, 1004),
    (5, 'Suporte técnico', 'Média', 105, 1005);   

SELECT * FROM ordem_de_servico;
-- DELETE FROM ordem_de_servico;
   
INSERT INTO pedido (Cliente_idCliente, Descricao, Titulo_do_pedido, Tipo_de_problema, Prioridade)
VALUES 
    (1, 'Erro no sistema operacional causando travamento frequente.', 'Sistema Operacional', 'Software', 'Alta'),
    (2, 'Tela azul ao iniciar o computador.', 'Tela Azul', 'Hardware', 'Média'),
    (3, 'Atualização de software necessária.', 'Atualização de Software', 'Software', 'Baixa'),
    (4, 'Falha na conexão do disco rígido.', 'Disco Rígido', 'Hardware', 'Alta'),
    (5, 'Problema de lentidão após atualização.', 'Lentidão do Sistema', 'Software', 'Média');   

SELECT * FROM pedido;
-- DELETE FROM pedido;
   
INSERT INTO produto (categoria, classification_kids, descricao, valor)
VALUES 
    ('Eletrônicos', 0, 'Smartphone de última geração', 999.99),
    ('Brinquedos', 1, 'Boneca Barbie', 29.99),
    ('Livros', 1, 'Livro de histórias infantis', 15.50),
    ('Eletrodomésticos', 0, 'Liquidificador', 49.99),
    ('Roupas', 1, 'Camiseta infantil', 19.99);   

SELECT * FROM produto;   
  -- DELETE FROM pedido; 
   INSERT INTO produto_em_estoque (Produto_idProduto, Estoque_idEstoque, Localizacao)
VALUES 
    (1, 1, 101),
    (2, 2, 102),
    (3, 3, 103),
    (4, 4, 104),
    (5, 5, 105);
    
SELECT * FROM produto_em_estoque;  
   
INSERT INTO produto_fornecedor (Fornecedor_idFornecedor, Produto_idProduto, Quantidade)
VALUES 
    (1, 1, 50),
    (2, 2, 75),
    (3, 3, 100),
    (4, 4, 25),
    (5, 5, 40);   
    
 SELECT * FROM produto_fornecedor;   

INSERT INTO produtos_vendedor (idPseller, Produto_idProduto, Quantidade)
VALUES
  (6, 7, 30),
  (7, 8, 60),
  (8, 9, 90),
  (9, 10, 15),
  (10, 11, 20);   

SELECT * FROM produtos_vendedor;     
  
INSERT INTO responsavel (idResponsavel, Setor, Matricula, Cargo)
VALUES
  (1, 'Marketing', '123456', 'Marketing Manager'),
  (2, 'Finance', '654321', 'Accountant'),
  (3, 'Sales', '789012', 'Sales Representative'),
  (4, 'IT', '321054', 'IT Specialist'),
  (5, 'Human Resources', '987654', 'HR Manager');  

SELECT * FROM produtos_vendedor;    
  
INSERT INTO terceiro_vendedor (idTerceiro_Vendedor, Razao_Social, Local, Nome_Fantasia, CNPJ, CPF)
VALUES
  (1, 'Empresa XYZ', 'Rua 123, Bairro ABC', 'XYZ Vendas', '12.345.678/0001-00', '987.654.321-00'),
  (2, 'Companhia ABC', 'Avenida Principal, Centro', 'ABC Soluções', '23.456.789/0001-01', '123.456.789-01'),
  (3, 'Negócios LTDA', 'Rua do Comércio, Loja 10', 'LTDA Soluções', '34.567.890/0001-02', '321.456.789-02'),
  (4, 'Empreendimentos SA', 'Praça da Liberdade, Edifício 1', 'SA Empreendimentos', '45.678.901/0001-03', '456.789.012-03'),
  (5, 'Consultoria & Serviços', 'Rua da Matriz, Nº 200', 'C&S Consultoria', '56.789.012/0001-04', '567.890.123-04');  
  
  
  