# Escreva uma query para exibir o nome do projeto com maior quantidade de horas.

SELECT
  Name
FROM
  projects
ORDER BY
  Hours DESC LIMIT 1;
