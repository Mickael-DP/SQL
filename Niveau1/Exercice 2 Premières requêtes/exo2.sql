-- Requête 1 --
SELECT*
FROM `villes_france_free`
ORDER BY `ville_population_2012` DESC
LIMIT 10
;
-- Requête 2 --
SELECT*
FROM `villes_france_free`
ORDER BY `ville_surface` ASC
LIMIT 50
;
-- Requête 3 --
SELECT*
FROM `departement`
WHERE departement_code LIKE '97%'
;
-- Requête 4 --
SELECT*
FROM `villes_france_free` FULL
JOIN `departement` ON `departement_code` = `ville_departement`
ORDER BY ville_population_2012 DESC
LIMIT 10 
;
-- Requête 5 --
SELECT departement_nom, ville_departement, COUNT(*) AS ville_commune
FROM `villes_france_free` 
FULL JOIN `departement` ON `departement_code` = `ville_departement`
GROUP BY ville_departement
ORDER BY `ville_commune` DESC 
;
-- Requête 6 --
SELECT departement_nom, ville_departement, SUM(`ville_surface`) AS departement_surface
FROM `villes_france_free` 
FULL JOIN `departement` ON `departement_code` = `ville_departement`
GROUP BY ville_departement
ORDER BY `departement_surface` DESC
LIMIT 10
;
 -- Requête 7 --
SELECT*
FROM `villes_france_free`
WHERE ville_nom LIKE 'Saint%'
;
-- Requête 8 --
SELECT ville_nom, COUNT(*) AS nom_repete
FROM `villes_france_free`
GROUP BY ville_nom
ORDER BY `nom_repete` DESC 
;
-- Requête 9 --
SELECT*
FROM `villes_france_free`
WHERE `ville_surface` > (SELECT AVG (`ville_surface`) FROM `villes_france_free`)
;
-- Requête 10 --
SELECT `ville_departement`, SUM(`ville_population_2012`) AS population
FROM `villes_france_free`
GROUP BY `ville_departement`
HAVING population > 2000000
ORDER BY population DESC 
;
