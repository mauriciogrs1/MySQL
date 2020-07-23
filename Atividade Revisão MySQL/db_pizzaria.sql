create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment primary key not null,
tipo varchar(20) not null);

insert into tb_categoria (tipo) values ("Doce");
insert into tb_categoria (tipo) values ("Salgada");
insert into tb_categoria (tipo) values ("Vegana");

create table tb_pizza(
id bigint auto_increment primary key not null,
nome varchar(20) not null,
valor decimal(10,2) not null,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categoria(id));

insert into tb_pizza (nome, valor, categoria_id) 
	values ("Brigadeiro", 25.00 , 1);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Calabresa", 35.00 , 2);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Rúcula", 45.00 , 3);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Prestigio", 55.00 , 1);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Frango", 19.00 , 2);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Alho", 45.00 , 3);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Banana", 28.00 , 1);
insert into tb_pizza (nome, valor, categoria_id) 
	values ("Portuguesa", 42.00 , 2);
    
    select * from tb_pizza;
    select * from tb_pizza where valor >45.00;
    select * from tb_pizza where valor between 30.00 and 55.00;
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    select tb_pizza.nome , tb_categoria.tipo from tb_pizza
		inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
        where tipo like "%Doce%";
    
    

