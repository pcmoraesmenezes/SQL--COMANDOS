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


-- Operador LIke Funciona como uma busca, excelente quando se deseja buscar por  terminações de nomes, endereços, ruas
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

-- ORDER BY
-- Usado para ordenação
-- ASC -> CRESCENTE
-- DESC -> DECRESCENTE
-- O CAMPO ORDER ACEITA MAIS DE UM PARAMETRO!
-- EXEMPLOS:

SELECT first_name, email FROM users
WHERE id BETWEEN 100 AND 150
ORDER BY id ASC; -- NOTE QUE O CAMPO NAO PRECISA TER SIDO SELECIONADO PARA SER ORDENADO!

-- OUTRO EXEMPLO

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name DESC; -- ORDENANDO DE FORMA DECRESCENTE

-- EXEMPLO COM DOIS CAMPOS 
SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name DESC, id ASC; -- NOTE QUE DEU CONFLITO NAS ORDENAÇÕES, NESSE CASO O PRIMEIRO SEMPRE TERÁ PRIORIDADE! DISCUTIDO NAS ANOTAÇÕES, PAGINA 5!

-- LIMIT
-- BASICAMENTE DEFINE UM LIMITE DE REGISTROS A SEREM SELECIIONADOS EM FORMA DE CONSULTA
-- EXEMPLO

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 2;

-- OFFSET
-- BASICAMENTE ELE FUNCIONA COMO UM PONTEIRO, ELE É UTILIZADO JUNTO DO LIMIT  E INDICA A POSIÇÃO QUE ELE DEVE EXIBIR OS DADOS, BASICAMENTE ELE DESLOCA OS DADOS A PARTIR DO PONTO INICIAL (0) PARA O PONTO QUE FOR INFORMADO, EXEMPLO
SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 2 OFFSET 0; -- NOTE QUE NÃO HOUVE MUDANÇA DESSA CONSULTA PARA A DE CIMA, ISSO PORQUE O PADRÃO É O OFFSET SER 0!

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 2 OFFSET 2; -- EXIBE OS DOIS PROXIMOS VALORES A PARTIR DO PONTO 0

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 2 OFFSET 4; -- EXIBE OS 2 PROXIMOS VALORES DESLOCANDO 4 A PARTIR DO PONTO INICIAL

-- OFFSET PODE SER USADO JUNTO DO LIMIT, MAS NESSE CASO OFFSET RECEBERÁ O PRIMEIRO PARAMETRO E A ATRIBUIÇÃO DO LIMITE DE DADOS SERÁ O SEGUNDO PARAMETRO, EXEMPLO

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 0,2; -- (OFFSET = 0, LIMIT = 2)

SELECT first_name FROM users
WHERE id BETWEEN 3 AND 50
ORDER BY first_name ASC
LIMIT 14,2; -- (OFSET = 14, LIMIT = 2)

