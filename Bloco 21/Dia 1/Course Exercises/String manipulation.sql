#Faça uma query que exiba a palavra 'trybe' em CAIXA ALTA.
SELECT UCASE('trybe') as letterbox;

# Faça uma query que transforme a frase 'Você já ouviu falar do DuckDuckGo?' em 'Você já ouviu falar do Google?' .
SELECT REPLACE('Voce já ouviu falar do DuckDuckGo?', 'Voce já ouviu falar do DuckDuckGo?', 'Você já ouviu falar do Google?')
 as 'replaced string';
 
# Utilizando uma query , encontre quantos caracteres temos em 'Uma frase qualquer' .
SELECT LENGTH('Abobora');

#Extraia e retorne a palavra "JavaScript" da frase 'A linguagem JavaScript está entre as mais usadas' .
SELECT SUBSTRING('A linguagem JavaScript está entre as mais usadas', 13, 10) as 'extracted string';

# Por fim, padronize a string 'RUA NORTE 1500, SÃO PAULO, BRASIL' para que suas informações estejam todas em caixa baixa.
SELECT LCASE('RUA NORTE 1500, SÃO PAULO, BRASIL') as 'endereço';

