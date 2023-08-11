-- -- Seciona a base de dados
-- use base_de_dados;

-- -- Mostra as tabelas da base de dados
-- show tables;

-- -- Descreve as colunas da tabela
-- describe users;

-- No sqlite3 não é suportado os comandos use, show e describe por isso estão comentados!!!

-- Criando tabela
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    password_hash TEXT
);


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
