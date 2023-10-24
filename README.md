# README

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

1. **Cliente**: Armazena informações sobre os clientes, incluindo ID do cliente, nome, CPF/CNPJ, endereço e frete.
2. **Fornecedor**: Armazena informações sobre os fornecedores, incluindo ID do fornecedor e nome.
3. **Produto**: Armazena informações sobre os produtos, incluindo ID do produto, nome, preço, estoque e ID do fornecedor.
4. **Pedido**: Armazena informações sobre os pedidos, incluindo ID do pedido, ID do cliente, data do pedido, status de entrega e código de rastreamento.
5. **DetalhesPedido**: Armazena informações sobre os detalhes dos pedidos, incluindo ID dos detalhes do pedido, ID do pedido, ID do produto e quantidade.
6. **Pagamento**: Armazena informações sobre os pagamentos, incluindo ID do pagamento, ID do cliente e forma de pagamento.

## Dados de Teste

Os dados de teste inseridos no banco de dados são os seguintes:

- **Clientes**: 5 clientes foram inseridos com nomes 'Cliente 1' a 'Cliente 5', CPF/CNPJ variando de '123.456.789-10' a '567.891.234-50', endereços 'Rua 1, 123' a 'Rua 5, 567' e frete variando de 10.00 a 30.00.
- **Fornecedores**: 2 fornecedores foram inseridos com nomes 'Fornecedor 1' e 'Fornecedor 2'.
- **Produtos**: 5 produtos foram inseridos com nomes 'Produto 1' a 'Produto 5', preços variando de 100.00 a 500.00, estoque variando de 10 a 50 e IDs de fornecedor sendo 1 ou 2.
- **Pedidos**: 5 pedidos foram inseridos com IDs de cliente variando de 1 a 5, data do pedido sendo a data atual (CURDATE()), status de entrega variando entre 'Em trânsito', 'Entregue' e 'Aguardando envio', e códigos de rastreamento variados.
- **DetalhesPedido**: 5 detalhes de pedidos foram inseridos com IDs de pedido e produto variando de 1 a 5 e quantidade sendo igual ao respectivo ID.
- **Pagamentos**: 5 pagamentos foram inseridos com IDs de cliente variando de 1 a 5 e formas de pagamento sendo 'Cartão de Crédito', 'Boleto Bancário', 'Cartão de Débito', 'PayPal' e novamente 'Cartão de Crédito'.