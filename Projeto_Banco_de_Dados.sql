create database Projeto;

CREATE TABLE Campanha 
(
    id_campanha INT PRIMARY KEY,
    nome VARCHAR(100),
    data_inicio DATE,
    data_fim DATE
);

create table funcionarios
(
	id_funcionarios serial primary key,
	departamento varchar(100) not null,
	nome varchar(100) not null,
	idade INT check(idade >=18),
	email varchar(100)
);

create table perguntas
(
	id_pergunta SERIAL primary key,
	enunciado VARCHAR(255),
	opcao_a VARCHAR(255),
	opcao_b VARCHAR(255),
	opcao_c VARCHAR(255),
	opcao_d VARCHAR(255),
	resposta_selecionada CHAR(1)
);

create table respostas
(
	id_respostas serial primary key,
	id_funcionarios int,
	id_perguntas int,
	resposta_correta char(1),
	foreign key (id_funcionarios) references funcionarios(id_funcionarios),
	foreign key (id_perguntas) references perguntas(id_pergunta)
);

select * from perguntas;
select * from funcionarios;
SELECT * FROM  campanha;
select * from respostas;
