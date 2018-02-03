/*
Find out the average speed of the PCs produced by maker A.
*/
SELECT AVG(speed) AS avg_speed
FROM PC pc INNER JOIN Product p
ON pc.model = p.model
WHERE p.maker = 'A'
