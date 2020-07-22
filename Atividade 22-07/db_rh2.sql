create database db_rh2;
use db_rh2;

create table tb_cargo(
id bigint auto_increment primary key not null,
nome_cargo varchar (30) not null,
setor varchar(20) not null);

insert into tb_cargo (nome_cargo, setor) values ( "Gestor", "Administrativo");
insert into tb_cargo (nome_cargo, setor) values ( "Faxineiro", "Limpeza");
insert into tb_cargo (nome_cargo, setor) values ( "Cozinheiro", "Alimentação");
insert into tb_cargo (nome_cargo, setor) values ( "Estoquista", "Produtos");
insert into tb_cargo (nome_cargo, setor) values ( "Fiscal", "Contabilidade");


create table tb_funcionario2(
id bigint auto_increment primary key not null,
nome varchar(30) not null,
idade int (3) not null,
salario float (5,2) not null,
cargo_id bigint(5),
foreign key (cargo_id) references tb_cargo(id));

insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Maurício",18,3000,1);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Luis",22,1700,2);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Rafaela",23,2500,3);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Carlos",42,1500,4);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Maria",24,4000,5);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Julio",18,3000,1);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Camila",22,1700,2);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("David",23,2500,3);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Carmen",42,1500,4);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Lucy",24,4000,5);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Marcelo",18,3000,1);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Matheys",22,1700,2);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Barbara",23,2500,3);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("Campos",42,1500,4);
insert into tb_funcionario2 (nome, idade, salario, cargo_id)
values ("David",24,4000,5);

select * from tb_funcionario2 where salario >2000;

select * from tb_funcionario2 where salario between 1000 and 2000;

select * from tb_funcionario2 where nome like "%C%";

select * from tb_funcionario2 inner join tb_cargo on tb_cargo.id = tb_funcionario2.cargo_id;

select tb_funcionario2.nome, tb_cargo.nome_cargo
from tb_funcionario2 
inner join tb_cargo on tb_cargo.id = tb_funcionario2.cargo_id
where tb_cargo.nome_cargo Like "%Coz%";







