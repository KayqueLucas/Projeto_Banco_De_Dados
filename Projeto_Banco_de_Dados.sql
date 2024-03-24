create database Projeto;

CREATE TABLE Campanha 
(
    id_campanha serial PRIMARY KEY,
    nome VARCHAR(100),
    data_inicio DATE,
    data_fim DATE
);

insert into Campanha (id_campanha, nome, data_inicio, data_fim) VALUES
(1, 'Mês da mulher', '2024-03-01', '2024-03-31');

SELECT * FROM campanha;


create table funcionarios
(
	id_funcionarios serial primary key,
	departamento varchar(100) not null,
	nome varchar(100) not null,
	idade INT check(idade >=18),
	email varchar(100) unique not null check(email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Z|a-z]{2,}$' )
);

insert into Funcionarios (id_funcionarios,  departamento, nome, idade, email) values
(1, 'TI', 'Leonardo',28 , 'Leo@gmail.com');
insert into Funcionarios (id_funcionarios,  departamento, nome, idade, email) values
(2, 'RH', 'Gustavo',24 , 'gusta@gmail.com');
insert into Funcionarios (id_funcionarios, departamento, nome, idade, email) values
(3, 'Finaceiro', 'Nicolle' , 18,  'Nicolle@email.com');
insert into Funcionarios (id_funcionarios, departamento, nome, idade, email) values
(4, 'TI', 'Marcelo',32, 'marc@outlook.com');
insert into Funcionarios (id_funcionarios, departamento, nome, idade, email) values
(5, 'Financeiro', 'Renata', 26, 'renatacariani@gmail.com');




select * from funcionarios;

create table perguntas
(
	id_pergunta SERIAL primary key,
	enunciado VARCHAR(255),
	opcao_a VARCHAR(255),
	opcao_b VARCHAR(255),
	opcao_c VARCHAR(255),
	opcao_d VARCHAR(255),
	resposta_correta CHAR(1),
	id_campanha INT,
    foreign key (id_campanha) references Campanha(id_campanha)
);

insert into perguntas (id_pergunta, enunciado, opcao_a, opcao_b, opcao_c, opcao_d, resposta_correta, id_campanha) values
(1, 'Qual é a data comemorativa do Dia das Mães em muitos países, incluindo os Estados Unidos e o Brasil?', 'a) Segundo domingo de maio', 'b) Último domingo de abril', 'c) Primeiro domingo de junho', 'd) 10 de maio', 'a', '1');
insert into perguntas (id_pergunta, enunciado, opcao_a, opcao_b, opcao_c, opcao_d, resposta_correta, id_campanha) values
(2, 'Qual poeta escreveu o famoso poema "A Mãe" em homenagem às mães?','a) Carlos Drummond de Andrade', 'b) Vinicius de Moraes', 'c) Olavo Bilac', 'd) Cora Coralina', 'c', 1);
insert into perguntas (id_pergunta, enunciado, opcao_a, opcao_b, opcao_c, opcao_d, resposta_correta, id_campanha) values
(3, 'Qual é a flor tradicionalmente associada ao Dia das Mães?', 'a) Margarida', 'b) Tulipa', 'c) Rosa', 'd) Cravo', 'c', 1);
insert into perguntas (id_pergunta, enunciado, opcao_a, opcao_b, opcao_c, opcao_d, resposta_correta, id_campanha) values
(4, 'Qual é o país onde o Dia das Mães é comemorado pela primeira vez?', 'a) Estados Unidos', 'b) França', 'c) Brasil', 'd) Grécia', 'b', 1);





select * from perguntas;

create table respostas
(
	id_respostas serial primary key,
	id_funcionarios int,
	id_perguntas int,
	resposta_escolhida char(1),
	foreign key (id_funcionarios) references funcionarios(id_funcionarios),
	foreign key (id_perguntas) references perguntas(id_pergunta)
);

insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(1, 1, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(1, 2, 'a');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(1, 3, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(1, 4, 'b');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(2, 1, 'a');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(2, 2, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(2, 3, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(2, 4, 'b');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(3, 1, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(3, 2, 'd');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(3, 3, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(3, 4, 'a');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(4, 1, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(4, 2, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(4, 3, 'a');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(4, 4, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(5, 1, 'a');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(5, 2, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(5, 3, 'c');
insert into respostas (id_funcionarios, id_perguntas, resposta_escolhida) values
(5, 4, 'b');



select * from respostas;

create table pontuacao
(
id_pontuacao serial primary key,
id_funcionarios int,
foreign key (id_funcionarios) references funcionarios (id_funcionarios),
numero_de_acertos int
);


select * from pontuacao;

