INSERT INTO CLIENT (codeClient, nom, cpclient, villeclient, tel)
VALUES
('e1','Mickael',06130,'Grasse', 0655443245),
('e2','Frederic', 06130,'Grasse', 0634234378),
('e3','Anthony', 06150,'Cannes', 0688095672),
('e4','Dylan', 83200,'Fréjus', 0643217890),
('e5','Leana', 06370, 'Mouans sartoux',0623456789),
('e6','Camille', 06200,'Nice', 0698765430)
;

INSERT INTO `echantillon` (codeEchantillon, dateEntree, codeClient)
VALUES
(1,'2014/02/02', 'e1'),
(2,'2015/02/02', 'e2'),
(3,'2016/02/02', 'e3'),
(4,'2017/02/02', 'e4'),
(5,'2018/02/02', 'e5'),
(6,'2019/02/02', 'e6');

INSERT INTO `realiser` (codeEchantillon, refTypeAnalyse, dateRealisation)
VALUES
(1,6,'2014/02/05'),
(2,5,'2015/02/05'),
(3,4,'2016/02/05'),
(4,3,'2017/02/05'),
(5,2,'2018/02/05'),
(6,1,'2019/02/05');

INSERT INTO `typeanalyse` (designation, prixTypeAnalyse)
VALUES
(1,'type 1',65),
(2,'type 2',85),
(3,'type 3',99),
(4,'type 4',82),
(5,'type 5',95),
(6,'type 6',88);

UPDATE `typeanalyse`
SET prixTypeAnalyse = prixTypeAnalyse * 0.1

UPDATE `typeanalyse`
SET prixTypeAnalyse = 80
WHERE prixTypeAnalyse < 80

UPDATE `client`
SET tel = "0611111111"
WHERE codeClient = "c1"

UPDATE `client`
SET dateEntree = '2006-02-01'
WHERE dateEntree = '2007-02-01'

CREATE TABLE IF NOT EXISTS `analyseColysterol` (
  `refTypeAnalyse` int(8) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `prixTypeAnalyse` float DEFAULT NULL,
  PRIMARY KEY (`refTypeAnalyse`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

INSERT INTO `analyseColysterol` (designation, prixTypeAnalyse)
VALUES
("typeB1", 120.50),
("typeB2", 80.50),
("typeB3", 40.50);

INSERT INTO `typeanalyse` (designation, prixTypeAnalyse)
SELECT designation,prixTypeAnalyse
FROM `analyseColysterol`