/*
Get hard drive capacities that are identical for two or more PCs.
Result set: hd.
*/
SELECT DISTINCT hd
FROM PC
WHERE hd IN (
SELECT hd
FROM PC
GROUP BY hd
HAVING  count(model) > '1')
