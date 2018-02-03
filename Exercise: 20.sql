/*
Find the makers producing at least three distinct models of PCs.
Result set: maker, number of PC models.
*/
SELECT DISTINCT maker, COUNT(model)
FROM Product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >=3
