create database Projeto;

CREATE TABLE Campanha 
(
    id_campanha INT PRIMARY KEY,
    nome VARCHAR(100),
    data_inicio DATE,
    data_fim DATE
);

create table funcionario
(
id_funcionario serial primary key,
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

select * from perguntas;

SELECT * FROM  campanha;

