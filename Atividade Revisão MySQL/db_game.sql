create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment primary key not null,
tipo varchar(30) not null,
propriedade varchar(20) not null);

insert into tb_classe (tipo, propriedade) values ("Assassino","Dark");
insert into tb_classe (tipo, propriedade) values ("Paladino","Luz");
insert into tb_classe (tipo, propriedade) values ("Lord","Terra");
insert into tb_classe (tipo, propriedade) values ("Mago","Gelo");

create table tb_personagem(
id bigint auto_increment primary key not null,
nome varchar(20) not null,
ataque bigint not null,
defesa bigint not null,
classe_id bigint not null,
foreign key (classe_id) references tb_classe(id));

insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Dagorn",2500,1200,1);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Tanker",1300,3800,2);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Silas",2300,2200,3);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Atelstan",3100,800,4);
insert into tb_personagem (nome, ataque, defesa, classe_id)     
    values ("Zasck",2000,1800,1);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Balmond",2100,2100,2);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Leon",1800,1600,3);
insert into tb_personagem (nome, ataque, defesa, classe_id) 
	values ("Valir",2600,1500,4);
    
    select * from tb_personagem;
    select * from tb_personagem where ataque >2000;
    select * from tb_personagem where defesa between 1000 and 2000;
    select * from tb_personagem where nome like "%D%";
    select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
    select tb_personagem.nome , tb_classe.tipo from tb_personagem
		inner join tb_classe on tb_classe.id = tb_personagem.classe_id
        where tipo like "%Paladino%";
        
    
    

