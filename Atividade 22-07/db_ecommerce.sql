create database db_ecommerce
use db_ecommerce;

create table tb_categoria(
id bigint auto_increment primary key not null,
categoria varchar (20) not null);

insert into tb_categoria (categoria) values ("Eletronico");
insert into tb_categoria (categoria) values ("Informatica");
insert into tb_categoria (categoria) values ("Celulares");
insert into tb_categoria (categoria) values ("Games");

create table tb_produtos(
id bigint auto_increment primary key not null,
nome varchar(30) not null,
cor varchar(20) not null,
preço decimal(5,2) not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id));

insert into tb_produtos (nome, cor, categoria_id,preço) values ( "TV", "Preto",1,4000.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Computador", "Branco",2,2500.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Iphone", "Preto",3,1500.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Xbox", "Branco",4,1800.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "TV 4k", "Preto",1,6000.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Notebook", "Preto",2,1200.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "LG K10", "Preto",3,800.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "PS5", "Branco",4,9000.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Som", "Preto",1,600.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "PC Gamer", "Branco",2,3500.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Asus Zenfone", "Preto",3,1100.00);
insert into tb_produtos (nome, cor, categoria_id,preço) values ( "Gameboy", "Branco",4,400.00);

select * from tb_produtos where preço > 2000;
select * from tb_produtos where preço between 1000 and 2000;
select * from tb_produtos where nome like "%C%";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select tb_produtos.nome , tb_categoria.categoria from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.categoria like "%Cel%";