create database db_rh;
use db_rh;

create table tb_funcionarios(
id bigint(5) auto_increment primary key not null,
nome varchar(20) not null,
cargo varchar(30) not null,
salario int (6) not null
);

insert into tb_funcionarios(nome, cargo, salario) values ("Mauricio","Dev Junior", 1500);
insert into tb_funcionarios(nome, cargo, salario) values ("Ana Beatriz","Dev Pleno", 1800);
insert into tb_funcionarios(nome, cargo, salario) values ("Carlos","Gerente Projeto", 3200);
insert into tb_funcionarios(nome, cargo, salario) values ("Maria Carla","Dev Senior", 2500);

select * from tb_funcionarios;

select * from tb_funcionarios where salario >= 2000;

select * from tb_funcionarios where salario < 2000;

select * from tb_funcionarios where salario >= 2000;

update tb_funcionarios set salario = 1535
where id = 2;




