create database db_escola;
use db_escola;

create table tb_alunos(
id bigint(5) auto_increment primary key not null,
nome varchar(20) not null,
media float(2,1) not null,
turma varchar(5) not null,
periodo varchar (15) not null);

insert into tb_alunos (nome, media, turma, periodo) values ("Marcos",7.2,"C4","Manhã");
insert into tb_alunos (nome, media, turma, periodo) values ("Carla",8.4,"C4","Manhã");
insert into tb_alunos (nome, media, turma, periodo) values ("Sofia",5.8,"C4","Manhã");
insert into tb_alunos (nome, media, turma, periodo) values ("Igor",9.2,"C4","Manhã");
insert into tb_alunos (nome, media, turma, periodo) values ("Guilherme",2.2,"C4","Manhã");
insert into tb_alunos (nome, media, turma, periodo) values ("Vainer",8.2,"C4","Manhã");

select * from tb_alunos where media > 7;
select * from tb_alunos where media < 7;

update tb_alunos set nome = "Vagner" where id = 6

select * from tb_alunos;
