/*DROP DATABASE marcas_roupas;*/
CREATE DATABASE marcas_roupas;
USE marcas_roupas;


CREATE TABLE cliente (
    cpf  BIGINT(11) NOT NULL,
    nome VARCHAR(200) NOT NULL,
    gmail VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY (cpf)
);
  

CREATE TABLE marca (
  id_marca INT NOT NULL auto_increment,
  marca VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_marca));
  
  
CREATE TABLE produto (
  id_produto INT NOT NULL,
  nome VARCHAR(200) NOT NULL,
  tam_camiseta CHAR(2) NOT NULL,
  preco_camiseta FLOAT NOT NULL ,
  marca_id_marca INT NOT NULL ,
  PRIMARY KEY (id_produto, marca_id_marca), FOREIGN KEY (marca_id_marca) REFERENCES marca (id_marca));
    
    
CREATE TABLE endereco (
  cep INT NOT NULL,
  rua VARCHAR(50) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  estado VARCHAR(50) NOT NULL,
  PRIMARY KEY (cep));
  
  
CREATE TABLE pedido (
  cpf BIGINT(11) PRIMARY KEY,
  nome VARCHAR(200),
  preco_camiseta FLOAT NOT NULL,
  qtd_de_camisetas INT(1),
  frete FLOAT NOT NULL,
  total FLOAT NOT NULL,
  cliente_cpf BIGINT(11),
  FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf));
    
    
CREATE TABLE endereco_has_cliente (
  endereco_cep INT NOT NULL,
  cliente_cpf BIGINT(11) NOT NULL,
  PRIMARY KEY (endereco_cep, cliente_cpf),
    FOREIGN KEY (endereco_cep) REFERENCES endereco (cep),
    FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf));
    
    
CREATE TABLE carrinho (
  pedido_cpf BIGINT(11) NOT NULL,
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
	'19558930927',
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
INSERT INTO marca(
    marca
)
VALUES(
    'Rybss'
),
(
	'Nikee'
),
(
	'Heringg'
),
(
	'Reservaa'
),
(
	'Malweee'
),
(
	'Colcci'
),
(
	'Puma'
),
(
	'Calvin Klein'
),
(
	'Lacoste'
),
(
	'Adidas'
);
INSERT INTO produto(
	id_produto,
	nome,
    tam_camiseta,
    preco_camiseta,
    marca_id_marca
)
VALUE(
	002,
	'CAMISETA 3-STRIPESS',
    'G',
    399.99,
    2
),
(
	003,
    'Camiseta Básica Masculina Básica Em Malha H+ - BrancoO',
    'GG',
    89.90,
    3
),
(
	001,
	'CAMISETA RYBS COMPANYY',
	'M',
	100.00,
	1
),
(
	004,
    'Camiseta Estampada Moon 2.0 IiiL',
    'P',
    143.00,
    4
),
(
	005,
    'CAMISETA BÁSICA MASCULINA GOLA TEXTURIZADA EM ALGODÃO VERMELHO ESCUROO',
    'G',
    50.50,
    5
),
(
	006,
    'Camiseta Manga Curta Creative Dept.',
    'XG',
    159.00,
    6
),
(
	007,
    'CAMISETA GRAPHIC MASCULINA PUMA X POKÉMON',
    'G',
    199.90,
    7
),
(
	008,
    'CAMISETA MANGA LONGA HOODIE SUSTAINABLE CALVIN KLEIN OFF WHITE',
    'M',
    399.90,
    8
),
(
	009,
    'Camisa Polo Masculina',
    'G',
    489.90,
    9
),
(
	010,
	'CAMISETA 5-STRIPES',
    'GG',
    196.90,
    10
);
INSERT INTO endereco(
	cep,
    rua,
    bairro,
    cidade,
    estado
)
VALUE(
	72311002,
    'Quadra QN 327 Conjunto B',
    'Samambaia Sul (Samambaia)',
    'Brasília',
    'SC'
),
(
	69018433,
    'Travessa 7',
    'Lago Azul',
    'Manaus',
    'DF'
),
(
	58432513,
    'Rua Professor Humberto de Castro',
    'Malvinas',
    'Campina Grande',
    'PB'
),
(
	85601860,
    'Rua Jerusalém',
    'Água Branca',
    'Francisco Beltrão',
    'DF'
),
(
	79010411,
    'Travessa Real',
    'Monte Castelo',
    'Campo Grande',
    'AM'
),
(
	89070353,
    'Rua Hermann Ramthum',
    'Badenfurt',
    'Blumenau',
    'RJ'
),
(
	64211040,
    'Quadra C',
    'Dirceu Arcoverde',
    'Parnaíba',
    'PI'
),
(
	88813420,
    'Rua Jacinta Cocculo Piazza',
    'Nossa Senhora da Salete',
    'Criciúma',
    'SC'
),
(
	77022324,
    'Quadra 704 Sul Avenida NS 4',
    'Plano Diretor Sul',
    'Palmas',
    'TO'
),
(
	96025082,
    'Rua Leito da Via Férre Bagé',
    'Fragata',
    'Pelotas',
    'RS'
);

INSERT INTO pedido(
	cpf,
    nome,
    preco_camiseta,
    qtd_de_camisetas,
    frete,
	total
)
VALUE (
	19283782891,
    'CAMISETA RYBS COMPANY',
    100.00,
    1,
    45.90,
    145.90
),
(
	19558930927,
    'CAMISETA 3-STRIPES',
    399.99,
    1,
    45.90,
    445.89
),
(
	14031232098,
    'CAMISETA BÁSICA MASCULINA GOLA TEXTURIZADA EM ALGODÃO VERMELHO ESCURO',
    50.50,
    1,
    45.90,
    100.40
),
(
	51194604021,
    'Camiseta Manga Curta Creative Dept.',
    159.00,
    1,
    49.90,
    208.9
),
(
	23194270079,
    'Camiseta Básica Masculina Básica Em Malha H+ - Branco',
    89.90,
    1,
    49.90,
    139.8
    
),
(
	19347829012,
    'CAMISETA MANGA LONGA HOODIE SUSTAINABLE CALVIN KLEIN OFF WHITE',
    399.90,
    1,
    49.90,
    445.8
),
(
	97353278056,
    'Camiseta Estampada Moon 2.0 Iii',
    143.00,
    1,
    49.90,
    192.90
),
(
	12581206071,
    'CAMISETA GRAPHIC MASCULINA PUMA X POKÉMON',
    199.90,
    1,
    49.90,
    249.8
),
(
	17670909005,
    'CAMISETA 5-STRIPES',
    196.90,
    1,
    49.90,
    246.8
),
(
	16976549080,
    'Camisa Polo Masculina',
    489.90,
    1,
    49.90,
    539.8
);
	UPDATE cliente SET nome = 'Ezequiel Ribas Figueira' WHERE cpf =19283782891;
    UPDATE cliente SET nome = 'Kenedi Machado Reis' WHERE cpf =19558930927;
    UPDATE cliente SET nome = 'Ariela Ribas' WHERE cpf =14031232098;
    UPDATE cliente SET nome = 'Aigneis Silva' WHERE cpf =17670909005;
    UPDATE cliente SET nome = 'Deva Fernandes' WHERE cpf =51194604021;
    
    UPDATE marca SET marca = 'RYBS' WHERE id_marca =1;
	UPDATE marca SET marca = 'NIKE' WHERE id_marca =2;
	UPDATE marca SET marca = 'HERING' WHERE id_marca =3;
	UPDATE marca SET marca = 'RESERVA' WHERE id_marca =4;
	UPDATE marca SET marca = 'MALWEE' WHERE id_marca =5;
    
    UPDATE produto SET nome = 'CAMISETA RYBS COMPANY' WHERE id_produto =1;
	UPDATE produto SET nome = 'CAMISETA 3-STRIPES' WHERE id_produto =2;
	UPDATE produto SET nome = 'Camiseta Básica Masculina Básica Em Malha H+ - Branco' WHERE id_produto =3;
	UPDATE produto SET nome = 'Camiseta Estampada Moon 2.0 Iii' WHERE id_produto =4;
	UPDATE produto SET nome = 'CAMISETA BÁSICA MASCULINA GOLA TEXTURIZADA EM ALGODÃO VERMELHO ESCURO' WHERE id_produto =5;
    
    UPDATE endereco SET estado = 'SC' WHERE cep =72311002;
	UPDATE endereco SET estado = 'DF' WHERE cep =69018433;
	UPDATE endereco SET estado = 'AM' WHERE cep =58432513;
	UPDATE endereco SET estado = 'PR' WHERE cep =85601860;
	UPDATE endereco SET estado = 'MS' WHERE cep =79010411;
    
    UPDATE pedido set frete =60.00 WHERE cpf = 19283782891;
    UPDATE pedido set frete =80.00 WHERE cpf = 19558930927;
    UPDATE pedido set frete =22.50 WHERE cpf = 14031232098;
    UPDATE pedido set frete =35.00 WHERE cpf = 51194604021;
    UPDATE pedido set frete =50.00 WHERE cpf = 23194270079;
    
    DELETE FROM cliente WHERE cpf=17670909005;
    DELETE FROM cliente WHERE cpf=14031232098;
    DELETE FROM cliente WHERE cpf=16976549080;
    DELETE FROM cliente WHERE cpf=23194270079;
    DELETE FROM cliente WHERE cpf=12581206071;
    
    DELETE FROM marca WHERE id_marca = 11;
    DELETE FROM marca WHERE id_marca = 12;
    DELETE FROM marca WHERE id_marca = 13;
    DELETE FROM marca WHERE id_marca = 14;
    DELETE FROM marca WHERE id_marca = 15;
    
    DELETE FROM produto WHERE id_produto = 002;
    DELETE FROM produto WHERE id_produto = 010;
    DELETE FROM produto WHERE id_produto = 003;
    DELETE FROM produto WHERE id_produto = 007;
    DELETE FROM produto WHERE id_produto = 009;
    
    DELETE FROM endereco WHERE cep= 72311002;
    DELETE FROM endereco WHERE cep= 69018433;
    DELETE FROM endereco WHERE cep= 58432513;
    DELETE FROM endereco WHERE cep= 85601860;
    DELETE FROM endereco WHERE cep= 79010411;
    
    DELETE FROM pedido WHERE cpf =19558930927;
    DELETE FROM pedido WHERE cpf =14031232098;
    DELETE FROM pedido WHERE cpf =51194604021;
    DELETE FROM pedido WHERE cpf =23194270079;
    DELETE FROM pedido WHERE cpf =97353278056;
    
    SELECT*FROM cliente ORDER BY cpf asc;
	SELECT*FROM marca ORDER BY marca asc;
	SELECT*FROM produto ORDER BY preco_camiseta asc;
	SELECT*FROM endereco ORDER BY cidade asc;
	SELECT*FROM pedido ORDER BY total asc;
    
    SELECT*FROM cliente WHERE cpf=19283782891;
    SELECT*FROM marca WHERE id_marca=1;
    SELECT*FROM produto WHERE id_produto=002;
    SELECT*FROM endereco WHERE cep=72311002;
    SELECT*FROM pedido WHERE cpf=16976549080;
    
    SELECT cliente.nome, produto.nome FROM cliente INNER JOIN produto 
    ON
    cliente.nome=produto.nome;
    
    SELECT endereco.cidade, pedido.nome FROM endereco INNER JOIN pedido 
    ON
    endereco.cidade=pedido.nome;

    

