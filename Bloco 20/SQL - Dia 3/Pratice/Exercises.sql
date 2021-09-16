USE pecasfornecedores;
# Escreva uma query para exibir todas as peças que começam com GR .
SELECT name from pecas WHERE name LIKE 'GR%';

# Escreva uma query para exibir todos os fornecimentos que contenham a peça com code 2 . Organize o resultado por ordem alfabética de fornecedor.
SELECT Fornecedor, peca from fornecimentos WHERE peca = 2 ORDER BY Fornecedor;

# Escreva uma query para exibir as peças, preço e fornecedor de todos os fornecimentos em que o código do fornecedor tenha a letra N .
SELECT peca, preco, Fornecedor FROM fornecimentos WHERE Fornecedor LIKE '%N%';

# Escreva uma query para exibir todas as informações dos fornecedores que são empresas limitadas (LTDA).
# Ordene os resultados em ordem alfabética decrescente.
SELECT name from fornecedores WHERE name LIKE ('%LTDA') ORDER BY name DESC;

# Escreva uma query para exibir o número de empresas (fornecedores) que contém a letra F no código.
SELECT COUNT(name) from fornecedores WHERE name LIKE '%F%';

# Escreva uma query para exibir os fornecimentos onde as peças custam mais de R$15,00 e menos de $40,00 . Ordene os resultados por ordem crescente.
SELECT peca, Preco from fornecimentos WHERE Preco BETWEEN 15.00 AND 40.00;

# Escreva uma query para exibir o número de vendas feitas entre o dia 15/04/2018 e o dia 30/07/2019 .
SELECT count(order_date) as 'Vendas feitas no prazo' FROM vendas WHERE order_date BETWEEN '2018-04-07 00:00:00' AND '2019-07-30 23:59:59'




