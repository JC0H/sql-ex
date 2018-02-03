/*
Find the makers of the cheapest color printers.
Result set: maker, price.
*/
SELECT DISTINCT p.maker, prin.price
FROM  Product p INNER JOIN Printer prin
ON p.model = prin.model
WHERE prin.price = (SELECT MIN(price)
     FROM Printer
     WHERE color = 'y') AND prin.color = 'y'
