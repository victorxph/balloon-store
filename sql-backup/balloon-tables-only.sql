CREATE TABLE Cliente (

	id_cliente SERIAL PRIMARY KEY,
	CPF CHAR(11) UNIQUE NOT NULL,
	celular_cliente VARCHAR(20) NOT NULL,
	email_cliente VARCHAR(100) NOT NULL,
	telefone_cliente VARCHAR(15),
	nome_cliente VARCHAR(50) NOT NULL,
	sobrenome_cliente VARCHAR(50) NOT NULL,
	sexo CHAR(1) CHECK (UPPER(sexo) IN ('M', 'F'))
		
);

CREATE TABLE Endereco_Cliente (

    cod_end_cliente SERIAL PRIMARY KEY,
	bairro VARCHAR(30),
	CEP CHAR(10) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	complemento VARCHAR(50),
	estado VARCHAR(15) NOT NULL,
	nome_rua VARCHAR(80) NOT NULL,
	num_rua VARCHAR(5) NOT NULL,
    id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)

);

CREATE TABLE Pedido (

	id_pedido SERIAL PRIMARY KEY,
	data_entrega TIMESTAMP NOT NULL,
	data_pedido TIMESTAMP NOT NULL,
	metodo_pagamento VARCHAR(20),
	qtde_itens INT NOT NULL,
	status_pedido VARCHAR(20) NOT NULL,
	id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)

);

CREATE TABLE Func_Pedido (

	id_funcionario INT NOT NULL,
	id_pedido INT NOT NULL,
	PRIMARY KEY (id_funcionario, id_pedido)

);

CREATE TABLE Funcionario (

	id_funcionario SERIAL PRIMARY KEY,
	cargo_funcionario VARCHAR(50) NOT NULL,
	celular_funcionario VARCHAR(20) NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
	data_contratacao DATE NOT NULL,
	data_desligamento DATE,
	email_funcionario VARCHAR(100) NOT NULL,
	nome_funcionario VARCHAR(50) NOT NULL,
	sobrenome_funcionario VARCHAR(50) NOT NULL,
	salario DECIMAL(10, 2) NOT NULL,
	sexo CHAR(1) CHECK (UPPER(sexo) IN ('M', 'F')),
	status_funcionario BOOLEAN NOT NULL,
	telefone_funcionario VARCHAR(15) NOT NULL

);

CREATE TABLE Endereco_Func (

    cod_end_func SERIAL PRIMARY KEY,
	bairro VARCHAR(30),
	CEP CHAR(10) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	complemento VARCHAR(50),
	estado VARCHAR(15) NOT NULL,
	nome_rua VARCHAR(80) NOT NULL,
	num_rua VARCHAR(5) NOT NULL,
    id_funcionario INT NOT NULL,
	FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)

);

CREATE TABLE Pedido_Produto (

	id_pedido INT NOT NULL,
	id_produto INT NOT NULL,
	PRIMARY KEY (id_pedido, id_produto)

);

CREATE TABLE Produto(

	id_produto SERIAL PRIMARY KEY,
	categoria VARCHAR(50) NOT NULL,
	descricao VARCHAR(255),
	fabricante VARCHAR(50),
	nome_produto VARCHAR(50) NOT NULL,
	qtde_estoque INT NOT NULL,
	valor DECIMAL(8, 2) NOT NULL

);

CREATE TABLE Forn_Produto (

	id_fornecedor INT NOT NULL,
	id_produto INT NOT NULL,
	PRIMARY KEY (id_fornecedor, id_produto)

);

CREATE TABLE Fornecedor (

	id_fornecedor SERIAL PRIMARY KEY,
	celular_fornecedor VARCHAR(20) NOT NULL,
	CNPJ CHAR(14) UNIQUE NOT NULL,
	email_fornecedor VARCHAR(100) NOT NULL,
	nome_fornecedor VARCHAR(50) NOT NULL,
	telefone_fornecedor VARCHAR(15) NOT NULL

);

CREATE TABLE Endereco_Forn (

	cod_end_forn SERIAL PRIMARY KEY,
	bairro VARCHAR(30),
	CEP CHAR(10) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	complemento VARCHAR(50),
	estado VARCHAR(15) NOT NULL,
	nome_rua VARCHAR(80) NOT NULL,
	num_rua VARCHAR(5) NOT NULL,
    id_fornecedor INT NOT NULL,
	FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor (id_fornecedor)

);