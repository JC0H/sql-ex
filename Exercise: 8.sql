/*
Find the makers producing PCs but not laptops.
*/
SELECT maker
FROM product
GROUP BY maker
HAVING SUM(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) > 0
   AND SUM(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) = 0
