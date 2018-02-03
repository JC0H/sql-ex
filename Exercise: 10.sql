/*
Find the printer models having the highest price. Result set: model, price.
*/
SELECT model,price
FROM Printer
WHERE price IN (SELECT MAX(price)
FROM Printer)
