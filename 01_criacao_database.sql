CREATE DATABASE restaurante;
USE restaurante;

CREATE TABLE funcionarios(
	id_funcionario INT auto_increment PRIMARY KEY COMMENT 'Identificador único para cada funcionário',
    nome VARCHAR (255) NOT NULL COMMENT 'Nome completo do funcionário',
    cpf VARCHAR(14) COMMENT 'CPF do funcionário',
	data_nascimento DATE COMMENT 'Data de nascimento do funcionário',
	endereco VARCHAR(255) COMMENT 'Endereço residencial do funcionário',
	telefone VARCHAR(15) COMMENT 'Número de telefone do funcionário',
	email VARCHAR(100) COMMENT 'E-mail do funcionário',
	cargo VARCHAR(100) COMMENT 'Cargo do funcionário no restaurante',
	salario DECIMAL(10,2) COMMENT 'Salário do funcionário',
	data_admissao DATE COMMENT 'Data de admissão do funcionário no restaurante',
	UNIQUE (email)
);

CREATE TABLE clientes(
	id_cliente INT auto_increment PRIMARY KEY COMMENT 'Identificador único para cada cliente',
    nome VARCHAR(255) NOT NULL COMMENT 'Nome completo do cliente',
    cpf VARCHAR(14) COMMENT 'CPF do cliente',
	data_nascimento DATE COMMENT 'Data de nascimento do cliente',
	endereco VARCHAR(255) COMMENT 'Endereço residencial do cliente',
	telefone VARCHAR(15) COMMENT 'Número de telefone do cliente',
	email VARCHAR(100) COMMENT 'E-mail do cliente',
	data_cadastro DATE COMMENT 'Data em que o cliente foi cadastrado no sistema',
	UNIQUE (email)
);

CREATE TABLE produtos(
	id_produto INT auto_increment PRIMARY KEY COMMENT 'Identificador único para cada produto',
	nome VARCHAR(255) NOT NULL COMMENT 'Nome do produto',
	descricao TEXT COMMENT 'Descrição detalhada do produto',
	preco DECIMAL(10,2) COMMENT 'Preço do produto',
	categoria VARCHAR(100) COMMENT 'Categoria do produto (ex: bebida, entrada, prato principal, sobremesa)'
);

CREATE TABLE pedidos(
	id_pedido INT auto_increment PRIMARY KEY COMMENT 'Identificador único para cada pedido',
	id_cliente INT COMMENT 'Referência ao cliente que fez o pedido',
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
	id_funcionario INT COMMENT 'Referência ao funcionário que atendeu o pedido',
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
	id_produto INT COMMENT 'Referência ao produto pedido',
    FOREIGN KEY (id_produto) REFERENCES produtos (id_produto),
    quantidade INT COMMENT 'Quantidade do produto pedido',
    preco DECIMAL(10,2) COMMENT 'Preço do produto no momento do pedido',
    data_pedido DATE COMMENT 'Data em que o pedido foi realizado',
    status_pedido VARCHAR(50) COMMENT 'Status do pedido (ex: pendente, concluído, cancelado)'
);

CREATE TABLE info_produtos(
	id_info INT auto_increment PRIMARY KEY COMMENT 'Identificador único para cada informação',    
	id_produto INT COMMENT 'Referência ao produto',
    FOREIGN KEY (id_produto) REFERENCES produtos (id_produto),
	ingredientes TEXT COMMENT 'Lista de ingredientes do produto',
	fornecedor VARCHAR(255) NOT NULL COMMENT 'Nome do fornecedor do produto'
);



