
CREATE DATABASE marcas_roupas;
USE marcas_roupas;
CREATE TABLE mydb.cliente (
  cpf INT(18) NOT NULL,
  nome VARCHAR(200) NOT NULL,
  gmail VARCHAR(200) NOT NULL,
  data_nascimento INT NOT NULL,
  PRIMARY KEY (cpf));
  

CREATE TABLE mydb.marca (
  id_marca INT NOT NULL auto_increment,
  marca VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_marca));
  
  
CREATE TABLE mydb.produto (
  id_produto INT NOT NULL auto_increment,
  nome VARCHAR(200) NOT NULL,
  tam_camiseta CHAR(1) NOT NULL,
  preco_camiseta FLOAT NOT NULL ,
  marca_id_marca INT NOT NULL ,
  PRIMARY KEY (id_produto, marca_id_marca),
    FOREIGN KEY (marca_id_marca) REFERENCES mydb.marca (id_marca));
    
    
CREATE TABLE mydb.endereco (
  cep INT NOT NULL,
  rua VARCHAR(50) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  PRIMARY KEY (cep));
  
  
CREATE TABLE mydb.pedido (
  cpf INT NOT NULL,
  preco_camiseta FLOAT NOT NULL,
  qtd_de_camisetas INT NOT NULL,
  frete FLOAT NOT NULL,
  preco_final FLOAT NOT NULL,
  cliente_cpf INT(18) NOT NULL,
  PRIMARY KEY (cpf, cliente_cpf) ,
  FOREIGN KEY (cliente_cpf) REFERENCES mydb.cliente (cpf));
    
    
CREATE TABLE mydb.endereco_has_cliente (
  endereco_cep INT NOT NULL,
  cliente_cpf INT(18) NOT NULL,
  PRIMARY KEY (endereco_cep, cliente_cpf),
    FOREIGN KEY (endereco_cep) REFERENCES mydb.endereco (cep),
    FOREIGN KEY (cliente_cpf) REFERENCES mydb.cliente (cpf));
    
    
CREATE TABLE mydb.carrinho (
  pedido_cpf INT NOT NULL,
  produto_id_produto INT NOT NULL,
  produto_marca_id_marca INT NOT NULL,
  PRIMARY KEY (pedido_cpf, produto_id_produto, produto_marca_id_marca),
    FOREIGN KEY (pedido_cpf) REFERENCES mydb.pedido (cpf),
    FOREIGN KEY (produto_id_produto, produto_marca_id_marca) REFERENCES mydb.produto (id_produto, marca_id_marca));