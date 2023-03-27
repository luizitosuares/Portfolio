create table cliente(
id integer primary key autoincrement not null,
nome_completo text,
nome_usuario text 
email text,
cpf integer,
data_nascimento text,
endereco text
)

create table pedido (
id integer primary key autoincrement not null,
data_pedido  text,
id_funcionario integer,
id_cliente integer,
foreign key(id_funcionario) references funcionario(id),
foreign key(id_cliente) references cliente(id)
)

create table funcionario(
id integer primary key autoincrement not null,
nome text,
cpf integer
)

create table produto(
id integer primary key autoincrement not null,
nome text,
descricao text,
quantidade_no_estoque integer,
data_de_fabricacao text,
valor_unitario integer,
id_categoria integer,
foreign key(id_categoria) references categoria(id)
)

create table categoria (
id integer primary key autoincrement not null,
nome text,
descricao text
)

create table produto_pedido(
id integer primary key autoincrement not null,
id_produto integer,
id_pedido integer,
foreign key(id_produto) references produto(id),
foreign key(id_pedido) references pedido(id)
)

insert into cliente (nome_completo, nome_usuario, cpf, data_nascimento, endereco) values
('Nelson', '@nelson', 80215458810,'26/02/1997','Praça Pasteur'),
('Pedro', '@pedro', 99999999,'25/02/1997','Petrópolis'),
('João', '@joao', 7777854777,'24/04/1997','Rio de Janeiro'),
('Mario', '@mario', 6541008810,'21/02/1997','Macae'),
('Carlos', '@carlos', 8021789458810,'21/02/1997','Praça Catulo')


insert into funcionario (nome,cpf) values
('Pedro', 80215458810),
('João',88888888888),
('Marcos',9999999999),
('Francisco',2222222222),
('Carlos',5555555555555)


insert into pedido (data_pedido,id_funcionario,id_cliente) values
('26/02Q1997',1,1),
('07/05/2022',2,5),
('08/05/2015',5,3),
('06/07/2015',2,3),
('07/05/2015',4,3)

insert into produto (nome,descricao,quantidade_no_estoque,data_de_fabricacao,valor_unitario,id_categoria) values
('Computador','Um belo computador',205,'14/02/1998',2500,1),
('Navio','Um belo navio',3,'20/02/1998',250000,1),
('Tesoura','Uma bela tesoura',5,'21/02/1998',2,1),
('Pá','Uma bela páo',15,'25/02/1998',250,1)
('Carro','Um belo carro',25,'26/02/1998',25000,1)

insert into categoria (nome,descricao) values
('Veiculos','Carros e motos'),
('Ferramentas','Para obras'),
('Materias básicos','construção'),
('alimentos','revenda'),
('computadores','estoque')

insert into produto_pedido (id_produto,id_pedido) values
(1,6),
(2,4),
(3,2),
(8,1)
(1,5)


alter table cliente add column email text 

update cliente 
set email = 'nelson@outllool.com' 
where id = 1

update cliente 
set email = 'pedro@outllool.com'
where id = 3

update cliente 
set email = 'joao@outllool.com'
where id = 4

update cliente 
set email = 'mario@outllool.com'
where id = 5

update cliente 
set email = 'carlos@outllool.com'
where id = 6

delete from cliente 
where id = 2







