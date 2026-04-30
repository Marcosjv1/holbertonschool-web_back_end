-- Script que lista el ranking de los países de origen de las bandas,
-- ordenado por el número de fans (no únicos).
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
