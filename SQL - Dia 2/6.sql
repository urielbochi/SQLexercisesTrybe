# Escreva uma query para exibir o nome como "Nome do Projeto" e as horas como "Tempo de Trabalho" de cada projeto.
USE scientists;

SELECT name, 
  hours
  FROM projects
ORDER BY name ASC;