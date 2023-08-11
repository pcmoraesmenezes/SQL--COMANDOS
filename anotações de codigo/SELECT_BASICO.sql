-- Seleciona tudo
SELECT * FROM users;

-- Seleciona os campos desejados
SELECT first_name, email, password_hash FROM users u;

-- Apelidos
SELECT 
email as em, first_name as name, password_hash as pswd
FROM users as U;

SELECT email as "EMAIL ZE", first_name as "PRIMEIRO NOME ZE", password_hash as "SUA SENHA ZE"
FROM users as u;

-- Atribuir da onde está sendo feita a extração de dados
SELECT
users.email e, users.id, users.first_name as fn
FROM users;

-- ATENÇÃO SE FOR FEITA A ATRIBUIÇÃO DO APELIDO, DEVE-SE USAR O AEPLIDO
SELECT
u.email e, u.id id, u.first_name fn
FROM users u;

-- DEVE-SE MANTER UM PADRÃO PARA A ESPECIFICAÇÃO DE DAODS, NÃO PODE SER FEITA CONSULTAS USANDO OUTRA HORA APELIDOS OUTRA HORA NOME DA TABELA
/* 
 * EXEMPLO DE ERRO:
 * SELECT
 * u.email e, user.id, user.first_name fn
 * FROM users u;
 * 
 * OUTRO EXEMPLO DE ERRO
 * SELECT
 * user.email e, user.id, user.first_name fn
 * FROM users as u;
 * 
 * DEVE-SE MANTER UM PADRÃO DE EXTRAÇÃO DE DADOS, CASO TENHA SIDO FEITA ATRIBUIÇÃO DE APELIDO PARA A TABELA, USAR O APELIDO, CASO CONTRÁRIO O NOME DA TABELA NUNCA OS DOIS E NUNCA O NOME DA TABELA SE A ATRIBUIÇÃO DE APELIDO FOR FEITA
 * */