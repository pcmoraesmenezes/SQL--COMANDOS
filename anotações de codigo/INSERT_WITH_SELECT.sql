use base_de_dados;

INSERT INTO profiles
(bio, description, user_id)
SELECT 'bio', 'description', id FROM 
users;


/* EXPLICAÇÃO
 * NO CÓDIGO ACIMA, ESTAMOS INSERINDO NA TABELA PROFILES QUE POSSUI 3 CAMPOS
 * (BIO, DESCRIPTION, USER_ID)
 * SELECIONANDO OS VALORES 'BIO', 'DESCRIPTION' E id FROM users
 * BIO E DESCRIPTION SÃO STRINGS, NÃO SÃO REGISTROS DE NENHUMA OUTRA 
 * TABELA, JA ID É UM REGISTRO DE UMA OUTRA TABELA, POIS USER ID É UMA FOREIGN 
 * KEY DE ID, ESSA INSERÇÃO FUNCIONA COMO UM FOR, JÁ QUE NO CAMPO 
 * BIO E DESCRIPTION ELE IRÁ INSERIR ATÉ O CAMPO id DA TABELA USERS SE ESGOTAR 
 * AO EXECUTAR O CÓDIGO NOTAMOS QUE A TABELA É PREENCHIDA TOTALMENTE
 *  */
DELETE FROM profiles;

-- CONCAT -> SERVE PARA CONCATENAR STRINGS

INSERT INTO profiles 
(bio, description, user_id)
SELECT CONCAT('BIO OF: ', first_name),
CONCAT('DESCRIPTION OF: ', ' ', first_name),
id 
FROM users;
