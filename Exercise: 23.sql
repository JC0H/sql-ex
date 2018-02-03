/*
Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
Result set: maker
*/
SELECT DISTINCT maker
FROM Product, PC
WHERE Product.model = PC.model
AND speed >= 750
AND maker in
(SELECT DISTINCT maker
FROM Product, Laptop
WHERE Product.model = Laptop.model
AND speed >= 750)
