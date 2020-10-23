/* Afficher la liste des étudiants triés par ordre croissant de date de naissance */
SELECT* 
FROM `etudiant`
ORDER BY `date_naissance` 
;
/*Afficher tous les étudiants inscrits à M1 et tous les étudiants inscrits à M2.*/
SELECT*
FROM`etudiant`
WHERE niveau ='M1' OR niveau = 'M2'
;
/*Afficher les matricules des étudiants qui ont passé l'examen du cours 002.*/
SELECT `matricule`
FROM `examen`
WHERE CODE = '002'
;
/*Afficher les matricules de tous les étudiants qui ont passé l'examen du cours 001 et de tous les étudiants qui ont passé l'examen du cours 002.*/
SELECT `matricule`
FROM `examen`
WHERE CODE = '001' OR CODE = '002'
;
/*Afficher le matricule, code, note /20 et note /40 de tous les examens classés par ordre croissant de matricule et de code.*/
SELECT `matricule`,`code`,`note` AS "note sur 20", `note`*2 AS "note sur 40" 
FROM `examen`
ORDER BY `matricule`,`code` ASC 
;
/*Trouver la moyenne de notes de cours 002.*/
SELECT AVG(`note`)AS "Moyenne de notes"  
FROM `examen`
WHERE CODE = '002'
;
/*Compter les examens passés par un étudiant (exemple avec matricule 'e001')*/
SELECT COUNT(`code`) AS "Nb examens passé"
FROM `examen`
WHERE matricule = 'e001'
;
/*Compter le nombre d'étudiants qui ont passé l'examen du cours 002.*/
SELECT COUNT(`matricule`) AS "Nb d'etudiants"
FROM `examen`
WHERE CODE = '002'
;
/*Calculer la moyenne des notes d'un étudiant (exemple avec matricule 'e001').*/
SELECT AVG(`note`)AS "Moyenne de e001"  
FROM `examen`
WHERE matricule = 'e002'
;
/*Compter les examens passés par chaque étudiant.*/
SELECT `matricule`, COUNT(`code`) AS "nb d'exam passé" 
FROM `examen`
GROUP BY `matricule`
;
/*. Calculer la moyenne des notes pour chaque étudiant.*/
SELECT `matricule`, AVG(`note`) AS "moyenne"
FROM `examen`
GROUP BY `matricule`
;
/*Même question, mais afficher seulement les étudiants (et leurs moyennes) dont la moyenne est >= 15.*/
SELECT `matricule`, AVG(`note`) AS "moyenne"
FROM `examen`
GROUP BY `matricule`
HAVING AVG (`note`) >= 15
;
/*Trouver la moyenne de notes de chaque cours.*/
SELECT `code`, AVG(`note`) AS "moyenne"
FROM `examen`
GROUP BY `code`
;