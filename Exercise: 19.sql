/*
For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
Result set: maker, average screen size.
*/
SELECT  p.maker ,AVG(l.screen)
FROM Product p INNER JOIN Laptop l
ON p.model = l.model
GROUP BY p.maker
