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

SELECT * FROM  campanha

