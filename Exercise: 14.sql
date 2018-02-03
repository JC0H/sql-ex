/*
Get the makers who produce only one product type and more than one model. Output: maker, type.
*/
SELECT DISTINCT maker, type
FROM Product
WHERE maker IN(
     SELECT maker
     FROM Product
     GROUP BY maker
     HAVING count(model) > '1' AND count(DISTINCT type) = '1' )
