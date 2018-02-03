/*
Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
*/
SELECT  DISTINCT maker
FROM Product p INNER JOIN PC pc
 ON p.model = pc.model
 WHERE pc.speed > '450' OR pc.speed = '450'
