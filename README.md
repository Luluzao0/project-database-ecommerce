# ECommerce Database

Este repositório contém um exemplo simplificado de um modelo de banco de dados para um ECommerce. Lembrando que nao irei diferir os projetos conceitual e logico, apenas estou demonstrando uma estrutura simples para alguem que queira criar seu primeiro ECommerce. 

## Estrutura do Banco de Dados

O banco de dados consiste nas seguintes tabelas:

- `Customers`: Armazena informações sobre os clientes.
- `Products`: Armazena informações sobre os produtos.
- `Orders`: Armazena informações sobre os pedidos.
- `OrderDetails`: Armazena informações sobre os itens individuais em cada pedido.

### Tabela Customers

| Campo        | Tipo         |
|--------------|--------------|
| CustomerID   | int NOT NULL |
| CustomerName | varchar(255) NOT NULL |
| ContactName  | varchar(255) |
| Country      | varchar(255) |
| Email        | varchar(255) |

### Tabela Products

| Campo       | Tipo         |
|-------------|--------------|
| ProductID   | int NOT NULL |
| ProductName | varchar(255) NOT NULL |
| SupplierID  | int |
| CategoryID  | int |
| Unit        | varchar(255) |
| Price       | decimal |

### Tabela Orders

| Campo       | Tipo         |
|-------------|--------------|
| OrderID     | int NOT NULL |
| CustomerID  | int |
| OrderDate   | date NOT NULL |
| OrderStatus | varchar(255) |

### Tabela OrderDetails

| Campo         | Tipo         |
|---------------|--------------|
| OrderDetailID | int NOT NULL |
| OrderID       | int NOT NULL |
| ProductID     | int NOT NULL |
| Quantity      | int |

## Diagrama do Banco de Dados

Um diagrama representando a estrutura do banco de dados foi criado e pode ser encontrado neste repositório.

## Dados de Teste

Dados de teste foram inseridos nas tabelas para facilitar a verificação e validação da estrutura do banco de dados.

## Contribuições

Contribuições são bem-vindas. Por favor, abra uma issue ou pull request para sugestões de melhorias ou correções.
