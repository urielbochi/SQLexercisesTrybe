# Exercício 6 : Exclua da tabela Movies o filme "WALL-E".

DELETE FROM BoxOffice
WHERE movie_id = 11;

DELETE FROM Movies 
WHERE title = 'WALL-E';