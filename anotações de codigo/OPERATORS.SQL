-- Para exibir dados em um intervalo:
SELECT * FROM users
WHERE 
created_at >= '2020-06-12 17:38:52' AND 
created_at  <= '2020-09-04 19:06:55';

-- Operador between -> Seleciona um intervalo
SELECT * FROM users
WHERE 
created_at BETWEEN  '2020-06-12 17:38:52' AND
'2020-09-04 19:06:55'
AND 
id BETWEEN 13 AND 47;


-- Operador IN -> irá verificar se existe dentro de um grupo de valores
SELECT * FROM users
WHERE id IN (27,32,87,36,4,13);
-- É Possivel usar atributos logicos para especificar ainda mais a consulta
SELECT * FROM users
WHERE id IN (27,32,87,36,4,13) AND
first_name IN ('isa');


-- Operador LIke Funciona como uma busca, excelente quando se deseja buscar por terminações de nomes, endereços, ruas
SELECT * FROM users
WHERE 
first_name LIKE('%is')
-- No exemplo acima, exibimos todos os nomes terminados em 'is', a porcentagem indica que ele deve ignorar tudo que vem antes DELAYED 
-- É possivel também fazer uma pesquisa por inicias de nomes, tendo em vista que a porcentagem ignora o que vem antes

SELECT * FROM users u 
WHERE first_name LIKE 'i%a'; -- EXIBE TODOS OS NOMES INICIADOS COM I E TERMINADOS COM A 

-- É possivel procurar por caracteres dentro de palavras que desejamos, por exemplo, se quisermos verificar se existe o caracter 's' no nome 'isa'
SELECT  * FROM users 
WHERE first_name LIKE '%s%'; -- ENTRETANTO NOTE QUE VARIOS NOMES APARECERAM, ISSO SE DEVE POIS ELE ESTÁ EXIBINDO TODOS OS NOMES QUE POSSUEM 'S', PARA LIMITAR ISSO É BEM SIMPLES

SELECT  * FROM  users u 
WHERE  first_name LIKE 'I%s%a';
-- É Possivel usar o _ para preencher dados que você não tem o conhecimento, exemplo
SELECT  * FROM users
WHERE first_name LIKE 'i__'; -- EXIBE TODOS OS NOMES INICIADOS COM I, QUE TENHAM 3 CARACTERES 

SELECT  * FROM users
WHERE first_name LIKE '___'; -- EXIBE TODOS OS NOMES COM 3 CARACTERES

SELECT  * FROM users
WHERE first_name LIKE 'i_a'; -- EXIBE TODOS NOMES INICIADOS COM I, COM TRES CARACTERES E TERMINADOS EM A
