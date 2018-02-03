/*
List the models of any type having the highest price of all products present in the database.
*/
SELECT model FROM
(
SELECT model,price FROM pc WHERE price = (SELECT max(price) FROM pc)
UNION
SELECT model,price FROM laptop WHERE price = (SELECT max(price) FROM  laptop)
UNION
SELECT model,price FROM printer WHERE price = (SELECT max(price) FROM printer)
) AS ab
WHERE price =
(SELECT max(price) FROM
(
SELECT model,price FROM pc WHERE price = (SELECT max(price) FROM pc)
UNION
SELECT model,price FROM laptop WHERE price = (SELECT max(price) FROM laptop)
UNION
SELECT model,price FROM printer WHERE price = (SELECT max(price) FROM printer)
) AS abc);
