# Escreva uma query para exibir todas as informações dos cinco projetos com a menor quantidade de horas.

SELECT
  *
FROM 
  projects
ORDER BY
  Hours ASC LIMIT 5;
