--Requête1--
SELECT*
FROM `stagiaires`;

--Requête2--
SELECT*
FROM `examens`;

--Requête3--
SELECT `tel`
FROM `stagiaires`;

--Requête4--
SELECT `NumE`, `Date`
FROM `examens`;

--Requête5--
SELECT `NomS`
FROM `stagiaires`
ORDER BY `NomS` DESC;

--Requête6--
SELECT* 
FROM `examens`
WHERE salle = "A2" OR salle = "A3";

--Requête7--
SELECT*
FROM `examens`
WHERE TypeE = 'P';

--Requête8--
SELECT*
FROM `examens`
WHERE TypeE = 'P'
ORDER BY `Date`;

--Requête-9--
SELECT*
FROM `examens`
ORDER BY `Salle` ASC, `Date`DESC;

--Requête10--
SELECT `NumE`, `Note`
FROM `passerexamen`
WHERE NumS = 'S01';

--Requête11--
SELECT `NumE`, `Note`
FROM `passerexamen`
WHERE NumS = 'S01'AND Note >= 15;

--Requête12--
SELECT*
FROM `stagiaires`
WHERE nomS LIKE '%e%';

--Requête13--
SELECT*
FROM `stagiaires`
WHERE PrenomS LIKE '%s';

--Requête14--
SELECT*
FROM `stagiaires`
WHERE PrenomS LIKE '%s' OR PrenomS LIKE '%d';

--Requête15--
SELECT `NomS`, `PrenomS`
FROM `stagiaires`
WHERE NomS LIKE '%e' AND PrenomS LIKE '%s';

--Requête16--
SELECT `NomS`
FROM `stagiaires`
WHERE SUBSTR(`NomS`, 2, 1) = 'a';

--Requête17--
SELECT `NomS`
FROM `stagiaires`
WHERE SUBSTR(`NomS`, 2, 1) != 'a';

--Requête18--
SELECT*
FROM `examens`
WHERE TypeE = 'P' AND salle LIKE 'A%';

--Requête19--
SELECT `Salle`
FROM `examens`;

--Requête20--
SELECT `Salle`
FROM `examens`
GROUP BY `Salle`;

--Requête21--
SELECT `NumE`, MIN(Note) AS "Mauvaise note" , MAX(Note) AS "Meilleure Note"
FROM `passerexamen`
GROUP BY `NumE`; 

--Requête22--
SELECT `NumE`, MIN(Note) AS "Mauvaise note" , MAX(Note) AS "Meilleure Note"
FROM `passerexamen`
WHERE NumE = 'E05';

--Requête23--
SELECT `NumE`, MAX(Note) - MIN(Note) AS "Ecart entre la + et - note"
FROM `passerexamen`
GROUP BY `NumE`;

--Requête24--
SELECT COUNT(*) AS "Nb d'exam Pratique"
FROM `examens`
WHERE `TypeE` = 'P';

--Requête25--
SELECT MIN(DATE) AS "Date du 1er exam"
FROM `examens`;

--Requête26--
SELECT `NomS`
FROM `stagiaires`
WHERE NomS LIKE '%r%' OR NomS LIKE '%s%';

--Requête27--
SELECT `NumS`, MAX(Note)
FROM `passerexamen`
GROUP BY `NumS`;

--Requête28--
SELECT DATE(`Date`), COUNT(*) AS "Nb d'examens"
FROM `examens`
GROUP BY DATE (`Date`);

--Requête29--
SELECT `Salle`, COUNT(*) AS "Nb d'examens"
FROM `examens`
GROUP BY `Salle`;

--Requête30--
SELECT `Salle`, COUNT(*) AS "Nb d'examens"
FROM `examens`
WHERE Salle = 'A1'
GROUP BY `Salle`;

--Requête31--
SELECT `Salle`
FROM `examens`
GROUP BY `Salle`
HAVING COUNT(*) >= 2;

--Requête32--
SELECT `Salle`
FROM `examens`
GROUP BY `Salle`
HAVING COUNT(*) = 3;

--Requête33--
SELECT COUNT(*) AS "Salle 'A '"
FROM `examens`
WHERE Salle LIKE 'A%';

--Requête34--
SELECT `Salle`, COUNT(*) AS "Nb d'examens"
FROM `examens`
WHERE Salle LIKE 'A%'
GROUP BY `Salle`; 

--Requête35--
SELECT `Salle`
FROM `examens`
WHERE Salle LIKE 'A%'
GROUP BY `Salle`
HAVING COUNT(*) >= 2 ;




