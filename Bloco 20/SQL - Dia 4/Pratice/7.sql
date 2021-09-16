# Exercício 7 : Exclua da tabela Movies todos os filmes dirigidos por "Andrew Staton".

# DELETE from boxoffice WHERE movie_id IN (2,9)
DELETE from movies WHERE director = 'Andrew Staton'