/*
Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.
*/
SELECT pc.model, pc.speed, pc.hd
FROM PC pc
WHERE price < 600 AND ( cd = '12x' OR cd = '24x'  );

