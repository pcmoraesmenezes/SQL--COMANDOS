-- INNER JOIN -- 
-- A CONSULTA RETORNA A INTERSECÇÃO ENTRE AS TABELAS, OU SEJA EQUIVALENTE AO SELECT DE TABELAS MULTIPLAS, LOGO DEVE-SE ANALISAR O RELACIONAMENTO ENTRE 
-- AS TABELAS.
-- É PREFERIVEL USAR O INNER JOIN AO INSERT MULTIPLE TABLES, INFORMAÇÕES ESTÃO NAS ANOTAÇÕES

SELECT u.id as uid, p.id as pid, p.bio, u.first_name
FROM users as u
INNER JOIN profiles p
ON u.id = p.user_id ;

-- A CLAUSULA ON ESPECIFICA AS CONDIÇÕES DE COMBINAÇÃO ENTRE REGISTROS 

-- É POSSÍVEL UTILIZAR TUDO QUE FOI VISTO ATÉ AGORA, EXEMPLO:

SELECT u.id as uid, p.id as pid, p.bio, u.first_name
FROM users as u
INNER JOIN profiles p
ON u.id = p.user_id
WHERE first_name LIKE 'i%a' AND last_name LIKE 'D%'
ORDER BY u.id ASC
LIMIT 5;


-- LEFT JOIN
-- NO DIAGRAMA CONSTRUIDO NA PAGINA 8 DAS ANOTAÇÕES, VIMOS QUE USERS É O DIAGRAMA A ESQUERDA.
-- O QUE SIGNIFICA LEFT JOIN? ELE IRÁ PEGAR TODOS OS REGISTROS DA TABELA USERS INDEPENDENTE SE EXISTIR RELAÇÃO COM PROFILES
-- CASO NÃO TENHA RELAÇÃO ELE RETORNA NULL

SELECT u.id as uid, p.id as pid, p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id; -- COMO NÃO HÁ PERFIL ATRELADO ELE RETORNA NULL 


-- RIGHT JOIN
-- PRIMEIRO PONTO A SER DESTACADO É QUE DEVIDO AS RELAÇÕES FORMADAS NESSA TABELA, O RIGHT JOIN SERÁ IGUAL AO INNER JOIN, INFORMAÇÕES EXTRAS NA PAGINA 9
-- MAS O RIGHT JOIN FUNCIONA EXATAMENTE IGUAL AO LEFT JOIN, A DIFERENÇA É QUE AO INVÉS DE PEGAR OS REGISTROS DA TABELA A ESQUERDA ELE PEGA O REGISTRO 
-- DA TABELA A DIREITA E TENTA FAZER RELAÇÃO COM A TABELA A ESQUERDA, SE EXISTIR ELE RETORNA A RELAÇÃO, SE NÃO ELE RETORNA NULL
-- PODE USAR TUDO QUE FOI VISTO ATÉ AGORA, IGUAL AO LEFT JOIN


SELECT u.id AS uid, p.id AS pid, p.bio, u.first_name
FROM users AS u
RIGHT JOIN profiles p 
ON u.id = p.user_id ;



