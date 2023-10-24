CREATE TABLE Cliente (
    ClienteID int NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    CPF_CNPJ varchar(255) UNIQUE,
    Endereco varchar(255),
    Frete decimal(10,2),
    PRIMARY KEY (ClienteID)
);

CREATE TABLE Fornecedor (
    FornecedorID int NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (FornecedorID)
);

CREATE TABLE Produto (
    ProdutoID int NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    Preco decimal(10,2) NOT NULL,
    Estoque int NOT NULL,
    FornecedorID int,
    PRIMARY KEY (ProdutoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedor(FornecedorID)
);

CREATE TABLE Pedido (
    PedidoID int NOT NULL AUTO_INCREMENT,
    ClienteID int,
    DataPedido date NOT NULL,
    StatusEntrega varchar(255),
    CodigoRastreio varchar(255),
    Cancelado boolean DEFAULT false,
    PRIMARY KEY (PedidoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE DetalhesPedido (
    DetalhesPedidoID int NOT NULL AUTO_INCREMENT,
    PedidoID int,
    ProdutoID int,
    Quantidade int NOT NULL,
    PRIMARY KEY (DetalhesPedidoID),
    FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);

CREATE TABLE Pagamento (
    PagamentoID int NOT NULL AUTO_INCREMENT,
    ClienteID int,
    FormaPagamento varchar(255) NOT NULL,
    PRIMARY KEY (PagamentoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);
