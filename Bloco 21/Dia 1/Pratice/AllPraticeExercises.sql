# 1. Escreva uma query que exiba o maior salário da tabela.
USE hr;
SELECT MAX(SALARY) from employees;

# 2. Escreva uma query que exiba o maior salário da tabela.
SELECT MAX(SALARY) - MIN(SALARY) from employees;

# 3.Escreva uma query que exiba a média salarial de cada JOB_ID , ordenando pela média salarial 
-- em ordem decrescente.
SELECT JOB_ID, AVG(SALARY) as 'average_salary' from employees GROUP BY JOB_ID ORDER BY `average_salary` DESC;

# 4. Escreva uma query que exiba a quantidade de dinheiro necessária para realizar o
-- pagamento de todas as pessoas funcionárias.
SELECT SUM(SALARY) as 'Custo total de empregados' from employees;

-- 5. Escreva uma query que exiba quatro informações: 
-- o maior salário, o menor salário, a soma de todos os salários e a média dos salários.
-- Todos os valores devem ser formatados para ter apenas duas casas decimais.
SELECT
ROUND(MAX(SALARY), 2) as 'Salario máximo', 
ROUND(MIN(SALARY), 2) as'Salario minimo', 
ROUND(SUM(SALARY), 2) as 'Soma de todos os salarios', 
ROUND(AVG(SALARY), 2) as 'Media salarial'
FROM employees; 

# 6 Escreva uma query que exiba a quantidade de pessoas que trabalham como pessoas programadoras ( IT_PROG ).
SELECT COUNT(FIRST_NAME) FROM employees WHERE DEPARTMENT_ID = 60;

# 7 Escreva uma query que exiba a quantidade de dinheiro necessária para efetuar
-- o pagamento de cada profissão ( JOB_ID ).
SELECT JOB_ID as 'Departamentos', SUM(salary) as 'Gasto por setor' from employees GROUP BY JOB_ID;

# 8 Utilizando a query anterior, faça as alterações para que seja exibido 
-- somente a quantidade de dinheiro necessária para cobrir a folha de pagamento das pessoas programadoras.
SELECT JOB_ID as 'Departamentos', SUM(salary) as 'Gasto por setor' from employees
WHERE JOB_ID = 'IT_PROG'
GROUP BY JOB_ID;

# Escreva uma query que exiba em ordem decrescente a média salarial de todos os cargos,
 -- exceto das pessoas programadoras ( IT_PROG ).
 SELECT JOB_ID as 'Departamentos', AVG(salary) as 'medium_cost' from employees
 WHERE JOB_ID != 'IT_PROG'
 GROUP BY JOB_ID
 ORDER BY `medium_cost` DESC;

# Escreva um query que exiba média salarial e o número de funcionários de todos os departamentos
-- com mais de dez funcionários. Dica: agrupe pelo department_id .
SELECT department_id, AVG(salary) as 'medium_salary', COUNT(first_name) as 'number_of_employees'
FROM employees
GROUP BY department_id
HAVING `number_of_employees` > 10;

# Escreva uma query que atualize a coluna PHONE_NUMBER , de modo que todos os telefones iniciados
-- por 515 agora devem iniciar com 777
UPDATE employees SET phone_number = REPLACE(phone_number, 515, 777)
WHERE phone_number LIKE '515%';

# Escreva uma query que só exiba as informações dos funcionários cujo o primeiro nome
 -- tenha oito ou mais caracteres.
 SELECT first_name from employees WHERE LENGTH(first_name) >= 8;
 
 # Escreva uma query que exiba as seguintes informações de cada funcionário: id ,
 -- primeiro nome e ano no qual foi contratado (exiba somente o ano).
 SELECT EMPLOYEE_ID, FIRST_NAME, YEAR(HIRE_DATE) as 'year' from employees;
 
 #14. Escreva uma query que exiba as seguintes informações de cada funcionário: 
  -- id , primeiro nome e dia do mês no qual foi contratado (exiba somente o dia).
SELECT EMPLOYEE_ID, first_name, DAY(HIRE_DATE) from employees;

#15. Escreva uma query que exiba as seguintes informações de cada funcionário:
-- id , primeiro nome e mês no qual foi contratado (exiba somente o mês).
SELECT EMPLOYEE_ID, first_name, MONTH(HIRE_DATE) from employees;

# 16. Escreva uma query que exiba os nomes dos funcionários em letra maiúscula.
SELECT UCASE(first_name) as 'Nome', UCASE(last_name) as 'Sobrenome' from employees;
UPDATE employees SET first_name = UCASE(first_name), last_name = UCASE(last_name);

# 17: Escreva uma query que exiba o sobrenome e a data de contratação de todos os funcionário
-- contratados em julho de 1987.
SELECT last_name, hire_date as 'contratação' from employees WHERE hire_date LIKE '%1987-07%';

# 18: Escreva uma query que exiba as seguintes informações de cada funcionário:
-- nome , sobrenome , tempo que trabalha na empresa (em dias).
SELECT first_name, last_name, DATEDIFF(CURRENT_DATE(), hire_date) from employees;

SELECT ROUND(5 + (RAND() * 15));






