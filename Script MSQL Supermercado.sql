create database db_sistema_supermercado;
show databases;
use db_sistema_supermercado;

create table tbl_cliente (
	id int not null primary key auto_increment,
    nome varchar (120) not null,
    cpf varchar (20) not null,
    rg varchar (20) not null,
    unique index (id)
    );
    
    create table tbl_telefone (
    id int not null primary key auto_increment,
    id_cliente int not null,
    telefone varchar (15),
    constraint FK_cliente_telefone
    foreign key (id_cliente)
    references  tbl_cliente.id
    
    );
    
    show tables;
    
	create table tbl_endereco (
	id int not null primary key auto_increment,
    id_cliente int not null,
    cep varchar (10),
    logradouro varchar (100),
    bairro varchar (45)   
   
   );

CREATE TABLE tbl_produto (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    preco_de_venda FLOAT,
    setor VARCHAR(45),
    nome VARCHAR(100),
    preco_de_compra FLOAT,
    UNIQUE INDEX (id)
);

CREATE TABLE tbl_produto_cliente (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantidade_de_compra VARCHAR(5),
    UNIQUE INDEX (id),
    CONSTRAINT FK_produto_produto_cliente FOREIGN KEY (id_produto)
        REFERENCES tbl_produto.id,
    CONSTRAINT FK_produto_cliente_produto FOREIGN KEY (id_produto_cliente)
        REFERENCES tbl_cliente.id
);

create table tbl_estoque (
id int not null primary key auto_increment,
nome varchar (100),
setor varchar (100),
fornecedor varchar (100),

unique index (id),

constraint FK_estoque_produto
   foreign key (id_produto)
    references  tbl_produto.id,
    
    constraint FK_produto_estoque
   foreign key (id_estoque)
    references  tbl_estoque.id

);

