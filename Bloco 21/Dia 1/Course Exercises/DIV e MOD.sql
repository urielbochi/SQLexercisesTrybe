/* Monte uma query usando o MOD juntamente com o IF para descobrir se o valor 15 é par ou ímpar. Chame essa coluna de 'Par ou Ímpar' , 
onde ela pode dizer 'Par' ou 'Ímpar'.
*/

SELECT IF(15 MOD 2 = 0, 'Par', 'Impar') as 'É par ou impar?';

/* Temos uma sala de cinema que comporta 220 pessoas. Quantos grupos completos de 12 pessoas podemos levar ao cinema sem que
 ninguém fique de fora? 
 Utilizando o resultado anterior, responda à seguinte pergunta: temos lugares sobrando? Se sim, quantos?
 */
 SELECT 220 DIV 12 as 'Grupos', 220 MOD 12 as 'Lugares sobrando';
