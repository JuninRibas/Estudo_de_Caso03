DROP DATABASE marcas_roupas;
CREATE DATABASE marcas_roupas;
USE marcas_roupas;


CREATE TABLE cliente (
  cpf VARCHAR(18) NOT NULL,
  nome VARCHAR(200) NOT NULL,
  gmail VARCHAR(200) NOT NULL,
  data_nascimento datetime NOT NULL,
  PRIMARY KEY (cpf));
  

CREATE TABLE marca (
  id_marca INT NOT NULL auto_increment,
  marca VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_marca));
  
  
CREATE TABLE produto (
  id_produto INT NOT NULL auto_increment,
  nome VARCHAR(200) NOT NULL,
  tam_camiseta CHAR(1) NOT NULL,
  preco_camiseta FLOAT NOT NULL ,
  marca_id_marca INT NOT NULL ,
  PRIMARY KEY (id_produto, marca_id_marca), FOREIGN KEY (marca_id_marca) REFERENCES marca (id_marca));
    
    
CREATE TABLE endereco (
  cep INT NOT NULL,
  rua VARCHAR(50) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  PRIMARY KEY (cep));
  
  
CREATE TABLE pedido (
  cpf VARCHAR(18),
  preco_camiseta FLOAT NOT NULL,
  qtd_de_camisetas INT NOT NULL,
  frete FLOAT NOT NULL,
  preco_final FLOAT NOT NULL,
  cliente_cpf VARCHAR(18) NOT NULL,
  PRIMARY KEY (cpf, cliente_cpf) , FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf));
    
    
CREATE TABLE endereco_has_cliente (
  endereco_cep INT NOT NULL,
  cliente_cpf VARCHAR(18) NOT NULL,
  PRIMARY KEY (endereco_cep, cliente_cpf),
    FOREIGN KEY (endereco_cep) REFERENCES endereco (cep),
    FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf));
    
    
CREATE TABLE carrinho (
  pedido_cpf VARCHAR(18) NOT NULL,
  produto_id_produto INT NOT NULL,
  produto_marca_id_marca INT NOT NULL,
    FOREIGN KEY (pedido_cpf) REFERENCES pedido (cpf),
    FOREIGN KEY (produto_id_produto, produto_marca_id_marca) REFERENCES produto (id_produto, marca_id_marca));
    
    INSERT INTO cliente(
	cpf,
	nome,
	gmail,
	data_nascimento

)
VALUES(

	'19283782891',
    'Ezequiel Ribas',
    'zekiribas@gmail.com',
     '2003-04-08'

),
(
	'19258930927',
    'Kenedi Machado',
    'kenediM@gmail.com',
    '2004-11-07'

),
(
	'17670909005',
    'Aigneis',
    'ahakes0@wunderground.com',
    '2022-10-01'
),
(
	'14031232098',
    'Ariela',
    'asalvadori1@ted.com',
    '2022-12-02'
),
(
	'16976549080',
    'Filide',
    'fworsfield2@biblegateway.com',
    '2022-05-01'
),
(
	'23194270079',
    'Sallyanne',
    'sscutts3@ox.ac.uk',
    '2022-12-02'
),
(
	'12581206071',
    'Langston',
    'lfilliskirk4@digg.com',
    '2022-07-06'
),
(
	'97353278056',
    'Sharyl',
    'smcilwrick5@edublogs.org',
    '2022-12-07'
),
(
	'51194604021',
    'Deva',
    'dcalendar6@simplemachines.org',
    '2022-02-03'
),
(

	'19347829012',
    'Davi Boff',
    'daviboff@gmail.com',
    '2022-05-21'
);
SELECT * FROM cliente;
