# Escreva uma query que exiba a string "Existem Number cientistas na tabela Scientists.", em que Number se refira a quantidade de cientistas.

SELECT
  CONCAT("Existem ", COUNT(SSN), " cientistas na tabela Scientists.") AS ScientistList 
FROM
  scientists