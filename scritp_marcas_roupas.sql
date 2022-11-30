DROP DATABASE marcas_roupas;
CREATE DATABASE marcas_roupas;
USE marcas_roupas;


CREATE TABLE cliente (
    cpf VARCHAR(18) NOT NULL,
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
  cpf VARCHAR(18),
  nome VARCHAR(50),
  preco_camiseta FLOAT NOT NULL,
  qtd_de_camisetas INT(1),
  frete FLOAT NOT NULL,
  total FLOAT NOT NULL,
  cliente_cpf VARCHAR(20) NOT NULL,
  PRIMARY KEY (cpf, cliente_cpf) , FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf));
    
    
CREATE TABLE endereco_has_cliente (
  endereco_cep INT NOT NULL,
  cliente_cpf VARCHAR(20) NOT NULL,
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
    'Rybs'
),
(
	'Nike'
),
(
	'Hering'
),
(
	'Reserva'
),
(
	'Malwee'
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
	'CAMISETA 3-STRIPES',
    'G',
    399.99,
    2
),
(
	003,
    'Camiseta Básica Masculina Básica Em Malha H+ - Branco',
    'GG',
    89.90,
    3
),
(
	001,
	'CAMISETA RYBS COMPANY',
	'M',
	100.00,
	1
),
(
	004,
    'Camiseta Estampada Moon 2.0 Iii',
    'P',
    143.00,
    4
),
(
	005,
    'CAMISETA BÁSICA MASCULINA GOLA TEXTURIZADA EM ALGODÃO VERMELHO ESCURO',
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
    'DF'
),
(
	69018433,
    'Travessa 7',
    'Lago Azul',
    'Manaus',
    'AM'
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
    'PR'
),
(
	79010411,
    'Travessa Real',
    'Monte Castelo',
    'Campo Grande',
    'MS'
),
(
	89070353,
    'Rua Hermann Ramthum',
    'Badenfurt',
    'Blumenau',
    'SC'
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
	'19283782891',
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
	/*UPDATE cliente SET nome = 'Ezequiel Ribas Figueira' WHERE cpf ='19283782891';
    UPDATE cliente SET nome = 'Kenedi Machado Reis' WHERE nome ='19558930927';
    UPDATE cliente SET nome = 'Ezequiel Ribas' WHERE nome ='Ezequiel Ribas Figueira';
    UPDATE cliente SET nome = 'Ezequiel Ribas' WHERE nome ='Ezequiel Ribas Figueira';
    UPDATE cliente SET nome = 'Ezequiel Ribas' WHERE nome ='Ezequiel Ribas Figueira';
    
    DELETE FROM filme WHERE id_filme=6;
    
    select * from genero order by id_genero_filme desc;
*/