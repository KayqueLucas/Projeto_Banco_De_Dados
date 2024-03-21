# Projeto_Banco_De_Dados

## Modelagem Conceitual (Diagrama ER):
------------
### Entidades Principais:
#### 1. Funcionário
#### 2. Pergunta
#### 3. Resposta
#### 4 .Campanha de Quiz
------------
### Atributos:
#### 1. Funcionário: id_funcionario (chave primária), nome, departamento, etc.
#### 2. Pergunta: id_pergunta (chave primária), enunciado, opção_a, opção_b, opção_c, opção_d, resposta_correta.
#### 3. Resposta: id_resposta (chave primária), id_funcionario (chave estrangeira), id_pergunta (chave estrangeira), resposta_selecionada.
#### 4. Campanha de Quiz: id_campanha (chave primária), data_inicio, data_fim.
------------
### Relacionamentos:
#### 1. Um Funcionário pode responder a várias Perguntas.
#### 2. Uma Pergunta pode ter várias Respostas.
#### 3. Uma Campanha de Quiz pode ter várias Perguntas.