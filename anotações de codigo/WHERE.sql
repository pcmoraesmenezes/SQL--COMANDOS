-- where filtra registros

SELECT * FROM users
WHERE id=2;

SELECT * FROM users u 
WHERE first_name = 'Isa'

/* É possível usar operadores já conhecidos na programação, como '>', '<'
 * '>=', '<=', '=' '<> ou !='
*/
SELECT * FROM users 
WHERE id != 4;

SELECT * FROM users
WHERE created_at  > '2023-08-10 06:00:00';

SELECT * FROM users
WHERE LENGTH(password_hash) > 5;

-- É POSSIVEL USAR OPERADORES LOGICOS 'AND' E 'OR'

SELECT * FROM users 
WHERE 
first_name = 'Isa'
OR
email  = 'rafablaster@email';

-- NOTE QUE COM O USO DO AND O CÓDIGO ABAIXO NÃO FUNCIONA POIS ELE IRÁ PROCURAR POR TODOS OS USUARIOS COM SOBRENOME 'YOUNG MAN' E PRIMEIRO NOME 'VITOR'

SELECT * FROM users 
WHERE 
last_name='Young Man'
AND
first_name ='Vitor';

-- MAS DESSA FORMA ELE RETORNA TODOS USUARIOS COM PRIMEIRO NOME VITOR E USUARIOS COM SOBRENOME YOUNG MAN

SELECT  * FROM users
WHERE 
last_name = 'Young Man'
OR
first_name  = 'Vitor';

-- É POSSÍVEL USAR MULTIPLOS OPERADORES LÓGICOS DE UMA ÚNICA VEZ
SELECT  * FROM users
WHERE
last_name = 'bacana' AND
first_name = 'paulo'
OR
last_name ='abacate' OR
first_name = 'Marcos'
OR
first_name = 'rafa'
AND
last_name = 'blaster'
AND
id = 2;


