-- Seciona a base de dados
use base_de_dados;

-- Mostra as tabelas da base de dados
show tables;

-- Descreve as colunas da tabela
describe users;

-- Inserir registros na base de dados -- 

-- Inserindo um por vez:
insert into users (first_name, last_name, email, password_hash) 
values ("Isa", "Abacate", "isa@email.com", "isa");

-- Inserindo varios:
INSERT INTO users (first_name, last_name, email, password_hash)
values
("Marcos", "Vitor", "marcos@email", "abacate"),
("Vitor", "Rubatino", "vitinrubatino@email", "vitinreidelas"),
("Rickson", "Young Man", "ricksonpablo@email", "mulher")
