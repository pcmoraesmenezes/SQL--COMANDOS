-- UPDATE

/* SERVE PARA ATUALIZAR DADOS DE UMA TABELA
 * ESSENCIALMENTE LIGADO AO 'WHERE' IGUAL O DELETE
 * SEM A UTILIZAÇÃO DO WHERE TODA A BASE DE DADOS SERIA ATUALIZADA
 */

-- EXEMPLO DE USO:
UPDATE users SET last_name = 'Dora'
WHERE
id = 4;

-- É possível atualizar mais de um campo por vez!

UPDATE users SET
first_name ='Paulo',
last_name ='César Moraes',
email = 'emailDoPaulo@email.com',
password_hash = 'nova_senha_do_paulo'
WHERE 
id = 3;

-- Note que todo o campo foi atualizado dessa forma!

-- Igual o DELETE, é essencial ligarmos o update a uma primary key para evitar que chaves que não deviam ser atualizadas sejam atualizadas

-- PODE ESTAR ASSOCIADO A OPERADORES LOGICOS, OPERADORES DE COMPARAÇÃO E OPERADORES (BETWEEN, IN, ...)

UPDATE users SET first_name = 'TESTANDO',
last_name = 'OPERADORES'
WHERE 
id BETWEEN 21 AND 24;

SELECT * FROM users;
