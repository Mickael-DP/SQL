--Requête1--
SELECT *
FROM `client`
WHERE `prenom` = "Muriel" 
AND `password` = SHA1("test11");

--Requête2--
SELECT `nom`, COUNT(*) AS "nbr_items"
FROM `commande_ligne`
GROUP BY `nom`
HAVING `nbr_items` > 1
ORDER BY `nbr_items` DESC;

--Requête3--
SELECT `nom`, COUNT(*) AS "nbr_items", GROUP_CONCAT(`commande_id`)
FROM `commande_ligne`
GROUP BY `nom`
HAVING `nbr_items` > 1;

--Requête4--
UPDATE `commande_ligne`
SET `prix_total` = `prix_unitaire` * `quantite`;

--Requête5--
SELECT `client`.nom, `client`.prenom, DATE_FORMAT(`commande`.date_achat, "%d-%m-%Y") AS "date", ROUND(SUM(`commande_ligne`.prix_total),1) AS "montant total"
FROM `commande_ligne`
INNER JOIN `commande`
ON `commande`.id = `commande_ligne`.commande_id
INNER JOIN `client`
ON `commande`.client_id = `client`.id
GROUP BY `commande`.id;

--Requête6--
UPDATE `commande`
INNER JOIN ( 
			SELECT `commande_ligne`.commande_id, SUM(`commande_ligne`.prix_total) AS montantTotal
			FROM `commande_ligne`
			GROUP BY `commande_ligne`.commande_id
) `commande_ligne`
ON `commande`.id = `commande_ligne`.commande_id
SET `commande`.cache_prix_total = `commande_ligne`.montantTotal;

--Requête7--
SELECT MONTH(`commande`.date_achat) AS "le mois de l'achat" , ROUND(SUM(`commande`.cache_prix_total)) AS "montant global commande /mois"
FROM `commande`
GROUP BY `le mois de l'achat` ;

--Requête8--
SELECT `client`.nom, `client`.prenom,COUNT(`commande`.id) AS "Nb de commandes" ,ROUND(SUM(`commande`.cache_prix_total),1) AS "prix commande"
FROM `commande`
INNER JOIN `client` ON `commande`.client_id = `client`.id
GROUP BY `commande`.client_id 
ORDER BY `Nb de commandes` DESC, `prix commande` DESC
LIMIT 10;

--Requête9--
SELECT `commande`.date_achat, ROUND(SUM(`commande`.cache_prix_total)) AS "Montant total"
FROM `commande`
GROUP BY `commande`.date_achat;

--Requête10--
ALTER TABLE `commande`
ADD `category` INT;

-Requête11--
UPDATE `commande`
SET `category` = CASE (
		WHEN `cache_prix_total` <= 200 THEN 1
		WHEN `cache_prix_total` <= 200 THEN 1
		WHEN `cache_prix_total` <= 200 THEN 1
		WHEN `cache_prix_total` <= 200 THEN 1