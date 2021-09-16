# Escreva uma query para exibir o nome do segundo projeto com menor quantidade de horas.

SELECT
  Name, Hours
FROM
  projects
ORDER BY
  Hours DESC Limit 1 OFFSET 1;