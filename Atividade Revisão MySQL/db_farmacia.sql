create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint primary key auto_increment not null,
tipo varchar(20) not null);

insert into tb_categoria (tipo) values ("Comprimido");
insert into tb_categoria (tipo) values ("Charope");
insert into tb_categoria (tipo) values ("Creme");

update tb_categoria set tipo = "Xarope" where id = 2;

create table tb_produto(
id bigint auto_increment primary key not null,
nome varchar(20) not null,
valor decimal(10,2) not null,
tipo_id bigint not null,
foreign key (tipo_id) references tb_categoria(id));

insert into tb_produto(nome, valor, tipo_id) 
	values("Dipirona",12.59,1); 
insert into tb_produto(nome, valor, tipo_id) 
	values("Bricanil",28.29,2);
insert into tb_produto(nome, valor, tipo_id) 
	values("Fisio Fort",79.99,3); 
insert into tb_produto(nome, valor, tipo_id) 
	values("Buscopan",40.00,1); 
insert into tb_produto(nome, valor, tipo_id) 
	values("Vick",67.49,2);
insert into tb_produto(nome, valor, tipo_id) 
	values("Creme Massagem",50.99,3);
insert into tb_produto(nome, valor, tipo_id) 
	values("Doril",4.59,1); 
insert into tb_produto(nome, valor, tipo_id) 
	values("Sedavan",15.29,2);
insert into tb_produto(nome, valor, tipo_id) 
	values("Fisio Fort xtreme ",129.99,3); 
    
    select * from tb_produto;
    select * from tb_produto where valor >50;
    select * from tb_produto where valor between 3 and 60;
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.tipo_id;
    select tb_produto.nome , tb_categoria.tipo from tb_produto
    inner join tb_categoria on tb_categoria.id = tb_produto.tipo_id
    where tipo like "%X%";
    
    