/*
Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
*/
SELECT p.maker, MAX(price)
FROM Product p INNER JOIN PC pc
ON p.model = pc.model
GROUP BY p.maker
