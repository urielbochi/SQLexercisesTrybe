USE scientists;

# Escreva uma query para exibir todas as informações de todos os cientistas que possuam a letra 'e' em seu nome.
SELECT * from scientists WHERE Name LIKE '%e%';

# Escreva uma query para exibir o nome de todos os projetos cujo o código inicie com a letra A. Ordene o resultado em ordem alfabética.
SELECT Name from projects WHERE Name LIKE 'A%' ORDER BY Name;

# Escreva uma query para exibir o código e nome de todos os projetos que possuam em seu código o número 3. Ordene o resultado em ordem alfabética.
SELECT Name, Code from projects WHERE Code LIKE '%3%';

# Escreva uma query para exibir todos os cientistas (valores numéricos) cujos projetos sejam AeH3, Ast3 ou Che1.
SELECT COUNT(Scientist) from assignedto WHERE Project IN ('AeH3', 'Ast3', 'Che1' );

# Escreva uma query para exibir todas as informações de todos os projetos com mais de 500 horas
SELECT Name, Hours from projects WHERE Hours > 500;

# Escreva uma query para exibir todas as informações de todos os projetos cujas horas sejam maiores que 250 e menores 800.
SELECT Name, Hours from projects WHERE Hours BETWEEN 250 and 800;

# Escreva uma query para exibir o nome e o código de todos os projetos cujo nome NÃO inicie com a letra A.
SELECT Name, Code from projects WHERE Name NOT LIKE 'A%';

# Escreva uma query para exibir o nome de todos os projetos cujo código contenha a letra H .
SELECT Name, Code from projects WHERE Code Like '%H%';

SELECT Name from projects WHERE Name REGEXP '[A]'; #Começa em A;
SELECT Name from projects WHERE Name REGEXP '^[AB]'; #Começa com 'A' ou 'B'
SELECT Name from projects WHERE Name REGEXP '^[^AB]'; #Não começa com 'A e nem 'B'
SELECT Name from projects WHERE Name REGEXP '^[ZD]|JU'; #Começa com Z ou D ou JU
SELECT Name from projects WHERE Name REGEXP '^[aeiou]'; #Filtra linhas que começam com vogal
SELECT Name from projects WHERE Name REGEXP '[aeiou]$'; #Filtra linhas que terminam com vogal
SELECT DISTINCT Name FROM projects WHERE Name REGEXP '^[^aeiou]'; #Filtra todos menos aeiou
                                                                      #no inicio da frase













