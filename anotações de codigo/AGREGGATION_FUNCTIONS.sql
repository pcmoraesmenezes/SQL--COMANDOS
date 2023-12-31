SELECT first_name, salary 
FROM users
WHERE salary = (SELECT MAX(salary) FROM users);

SELECT first_name, salary
FROM users 
WHERE salary = (SELECT MIN(salary) FROM users);

-- MAX RETORNA O MAXIMO, MIN RETORNA O MINIMO

-- AS CLAUSULAS WHERE ACIMA SÃO PARA EXIBIR OS SALARIOS COM O MAIOR SALARIO E COM O MENOR SALARIO RESPECTIVAMENTE

SELECT 
MAX(salary) AS MAXIMUM_SALARY,
AVG(salary) AS AVARAGE_SALARY,
MIN(salary) AS MINIMUM_SALARY,
SUM(salary) AS SUM_SALARY,
COUNT(salary) AS COUNT_SALARY
FROM users;