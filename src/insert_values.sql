USE ecommerce;
--caso você esteja utilizando o nome de outro DB, mude o nome do comando use

INSERT INTO Cliente (Nome, CPF_CNPJ, Endereco, Frete)

VALUES ('Cliente 1', '123.456.789-10', 'Rua 1, 123', 10.00),
       ('Cliente 2', '234.567.891-20', 'Rua 2, 234', 15.00),
       ('Cliente 3', '345.678.912-30', 'Rua 3, 345', 20.00),
       ('Cliente 4', '456.789.123-40', 'Rua 4, 456', 25.00),
       ('Cliente 5', '567.891.234-50', 'Rua 5, 567', 30.00);

INSERT INTO Fornecedor (Nome)

VALUES ('Fornecedor 1'),
       ('Fornecedor 2');

INSERT INTO Produto (Nome, Preco, Estoque, FornecedorID)

VALUES ('Produto 1', 100.00, 10, 1),
       ('Produto 2', 200.00, 20, 1),
       ('Produto 3', 300.00, 30, 2),
       ('Produto 4', 400.00, 40, 2),
       ('Produto 5', 500.00, 50, 1);

INSERT INTO Pedido (ClienteID, DataPedido, StatusEntrega, CodigoRastreio)

VALUES (1, CURDATE(), 'Em trânsito', 'AB123CD456'),
       (2, CURDATE(), 'Entregue', 'EF789GH012'),
       (3, CURDATE(), 'Aguardando envio', 'IJ345KL678'),
       (4, CURDATE(), 'Em trânsito', 'MN901OP234'),
       (5, CURDATE(), 'Entregue', 'QR567ST890');

INSERT INTO DetalhesPedido (PedidoID, ProdutoID, Quantidade)

VALUES (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3),
       (4, 4, 4),
       (5, 5, 5);

INSERT INTO Pagamento (ClienteID, FormaPagamento)

VALUES (1,'Cartão de Crédito'),
       (2,'Boleto Bancário'),
       (3,'Cartão de Débito'),
       (4,'PayPal'),
       (5,'Cartão de Crédito');
