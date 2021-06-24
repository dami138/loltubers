-- MySQL Script generated by MySQL Workbench
-- Tue Jun 22 16:50:51 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Loltubers_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Loltubers_db` ;

-- -----------------------------------------------------
-- Schema Loltubers_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Loltubers_db` DEFAULT CHARACTER SET utf8 ;
USE `Loltubers_db` ;

-- -----------------------------------------------------
-- Table `Loltubers_db`.`Champion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Loltubers_db`.`Champion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Loltubers_db`.`LineUp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Loltubers_db`.`LineUp` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `position` VARCHAR(45) NOT NULL,
  `Champion_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_LineUp_Champion1`
    FOREIGN KEY (`Champion_id`)
    REFERENCES `Loltubers_db`.`Champion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Loltubers_db`.`Loltuber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Loltubers_db`.`Loltuber` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `subscribers` INT NOT NULL,
  `mostChamp_id` INT NULL,
  `description` VARCHAR(255) NULL,
  `link` VARCHAR(255) NULL,
  `thumbnail` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Loltuber_Champion1`
    FOREIGN KEY (`mostChamp_id`)
    REFERENCES `Loltubers_db`.`Champion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

#####
INSERT INTO Champion (id, name, role) VALUES
(1,'Aatrox','Fighter'),
(2,'Ahri','Mage'),
(3,'Akali','Assassin'),
(4,'Alistar','Tank'),
(5,'Amumu','Tank'),
(6,'Anivia','Mage'),
(7,'Annie','Mage'),
(8,'Aphelios','Marksman'),
(9,'Ashe','Marksman'),
(10,'Aurelion Sol','Mage'),
(11,'Azir','Mage'),
(12,'Bard','Mage'),
(13,'Blitzcrank','Tank'),
(14,'Brand','Mage'),
(15,'Braum','Support'),
(16,'Caitlyn','Marksman'),
(17,'Camille','Fighter'),
(18,'Cassiopeia','Mage'),
(19,'ChoGath','Tank'),
(20,'Corki','Marksman'),
(21,'Darius','Fighter'),
(22,'Diana','Fighter'),
(23,'Dr. Mundo','Fighter'),
(24,'Draven','Marksman'),
(25,'Ekko','Assassin'),
(26,'Elise','Fighter'),
(27,'Evelynn','Mage'),
(28,'Ezreal','Marksman'),
(29,'Fiddlesticks','Mage'),
(30,'Fiora','Assassin'),
(31,'Fizz','Assassin'),
(32,'Galio','Mage'),
(33,'Gangplank','Fighter'),
(34,'Garen','Fighter'),
(35,'Gnar','Fighter'),
(36,'Gragas','Fighter'),
(37,'Graves','Marksman'),
(38,'Gwen','Assassin'),
(39,'Hecarim','Fighter'),
(40,'Heimerdinger','Mage'),
(41,'Illaoi','Fighter'),
(42,'Irelia','Assassin'),
(43,'Ivern','Assassin'),
(44,'Janna','Support'),
(45,'Jarvan IV','Fighter'),
(46,'Jax','Assassin'),
(47,'Jayce','Fighter'),
(48,'Jhin','Marksman'),
(49,'Jinx','Marksman'),
(50,'KaiSa','Marksman'),
(51,'Kalista','Marksman'),
(52,'Karma','Mage'),
(53,'Karthus','Mage'),
(54,'Kassadin','Assassin'),
(55,'Katarina','Assassin'),
(56,'Kayle','Fighter'),
(57,'Kayn','Assassin'),
(58,'Kennen','Mage'),
(59,'KhaZix','Assassin'),
(60,'Kindred','Marksman'),
(61,'Kled','Fighter'),
(62,'KogMaw','Marksman'),
(63,'LeBlanc','Assassin'),
(64,'Lee Sin','Assassin'),
(65,'Leona','Tank'),
(66,'Lillia','Mage'),
(67,'Lissandra','Mage'),
(68,'Lucian','Marksman'),
(69,'Lulu','Mage'),
(70,'Lux','Mage'),
(71,'Malphite','Fighter'),
(72,'Malzahar','Mage'),
(73,'Maokai','Mage'),
(74,'Master Yi','Assassin'),
(75,'Miss Fortune','Marksman'),
(76,'Mordekaiser','Fighter'),
(77,'Morgana','Mage'),
(78,'Nami','Support'),
(79,'Nasus','Fighter'),
(80,'Nautilus','Tank'),
(81,'Neeko','Mage'),
(82,'Nidalee','Assassin'),
(83,'Nocturne','Assassin'),
(84,'Nunu & Willump','Tank'),
(85,'Olaf','Fighter'),
(86,'Orianna','Mage'),
(87,'Ornn','Tank'),
(88,'Pantheon','Fighter'),
(89,'Poppy','Tank'),
(90,'Pyke','Assassin'),
(91,'Qiyana','Assassin'),
(92,'Quinn','Assassin'),
(93,'Rakan','Support'),
(94,'Rammus','Tank'),
(95,'RekSai','Fighter'),
(96,'Rell','Tank'),
(97,'Renekton','Fighter'),
(98,'Rengar','Assassin'),
(99,'Riven','Fighter'),
(100,'Rumble','Fighter'),
(101,'Ryze','Mage'),
(102,'Samira','Marksman'),
(103,'Sejuani','Fighter'),
(104,'Senna','Support'),
(105,'Seraphine','Support'),
(106,'Sett','Fighter'),
(107,'Shaco','Assassin'),
(108,'Shen','Tank'),
(109,'Shyvana','Fighter'),
(110,'Singed','Tank'),
(111,'Sion','Tank'),
(112,'Sivir','Marksman'),
(113,'Skarner','Fighter'),
(114,'Sona','Support'),
(115,'Soraka','Support'),
(116,'Swain','Mage'),
(117,'Sylas','Assassin'),
(118,'Syndra','Mage'),
(119,'Tahm Kench','Support'),
(120,'Taliyah','Mage'),
(121,'Talon','Assassin'),
(122,'Taric','Support'),
(123,'Teemo','Assassin'),
(124,'Thresh','Support'),
(125,'Tristana','Assassin'),
(126,'Trundle','Fighter'),
(127,'Tryndamere','Assassin'),
(128,'Twisted Fate','Mage'),
(129,'Twitch','Assassin'),
(130,'Udyr','Fighter'),
(131,'Urgot','Fighter'),
(132,'Varus','Marksman'),
(133,'Vayne','Assassin'),
(134,'Veigar','Mage'),
(135,'VelKoz','Mage'),
(136,'Vi','Fighter'),
(137,'Viego','Assassin'),
(138,'Viktor','Mage'),
(139,'Vladimir','Mage'),
(140,'Volibear','Fighter'),
(141,'Warwick','Fighter'),
(142,'Wukong','Fighter'),
(143,'Xayah','Marksman'),
(144,'Xerath','Mage'),
(145,'Xin Zhao','Assassin'),
(146,'Yasuo','Fighter'),
(147,'Yone','Fighter'),
(148,'Yorick','Fighter'),
(149,'Yuumi','Support'),
(150,'Zac','Tank'),
(151,'Zed','Assassin'),
(152,'Ziggs','Mage'),
(153,'Zilean','Mage'),
(154,'Zoe','Mage'),
(155,'Zyra','Mage');


###
INSERT INTO LineUp (id, position, Champion_id) VALUES
(1,'Top',1),
(2,'Top',3),
(3,'Top',17),
(4,'Top',19),
(5,'Top',21),
(6,'Top',23),
(7,'Top',30),
(8,'Top',33),
(9,'Top',34),
(10,'Top',35),
(11,'Top',38),
(12,'Top',40),
(13,'Top',41),
(14,'Top',42),
(15,'Top',46),
(16,'Top',47),
(17,'Top',56),
(18,'Top',58),
(19,'Top',61),
(20,'Top',64),
(21,'Top',68),
(22,'Top',71),
(23,'Top',73),
(24,'Top',76),
(25,'Top',79),
(26,'Top',83),
(27,'Top',87),
(28,'Top',88),
(29,'Top',89),
(30,'Top',92),
(31,'Top',97),
(32,'Top',98),
(33,'Top',99),
(34,'Top',100),
(35,'Top',101),
(36,'Top',106),
(37,'Top',108),
(38,'Top',110),
(39,'Top',111),
(40,'Top',117),
(41,'Top',123),
(42,'Top',126),
(43,'Top',127),
(44,'Top',131),
(45,'Top',133),
(46,'Top',137),
(47,'Top',139),
(48,'Top',140),
(49,'Top',141),
(50,'Top',142),
(51,'Top',146),
(52,'Top',147),
(53,'Top',148),
(54,'Top',150),
(55,'Jug',5),
(56,'Jug',22),
(57,'Jug',23),
(58,'Jug',25),
(59,'Jug',26),
(60,'Jug',27),
(61,'Jug',29),
(62,'Jug',36),
(63,'Jug',37),
(64,'Jug',38),
(65,'Jug',39),
(66,'Jug',43),
(67,'Jug',45),
(68,'Jug',46),
(69,'Jug',53),
(70,'Jug',57),
(71,'Jug',59),
(72,'Jug',60),
(73,'Jug',64),
(74,'Jug',66),
(75,'Jug',74),
(76,'Jug',77),
(77,'Jug',82),
(78,'Jug',83),
(79,'Jug',84),
(80,'Jug',85),
(81,'Jug',89),
(82,'Jug',94),
(83,'Jug',95),
(84,'Jug',98),
(85,'Jug',100),
(86,'Jug',103),
(87,'Jug',107),
(88,'Jug',109),
(89,'Jug',120),
(90,'Jug',126),
(91,'Jug',130),
(92,'Jug',136),
(93,'Jug',137),
(94,'Jug',140),
(95,'Jug',141),
(96,'Jug',142),
(97,'Jug',145),
(98,'Jug',150),
(99,'Mid',1),
(100,'Mid',2),
(101,'Mid',3),
(102,'Mid',6),
(103,'Mid',7),
(104,'Mid',10),
(105,'Mid',11),
(106,'Mid',17),
(107,'Mid',18),
(108,'Mid',20),
(109,'Mid',22),
(110,'Mid',25),
(111,'Mid',30),
(112,'Mid',31),
(113,'Mid',32),
(114,'Mid',34),
(115,'Mid',38),
(116,'Mid',42),
(117,'Mid',46),
(118,'Mid',47),
(119,'Mid',54),
(120,'Mid',55),
(121,'Mid',61),
(122,'Mid',63),
(123,'Mid',67),
(124,'Mid',68),
(125,'Mid',70),
(126,'Mid',71),
(127,'Mid',72),
(128,'Mid',81),
(129,'Mid',83),
(130,'Mid',84),
(131,'Mid',86),
(132,'Mid',88),
(133,'Mid',91),
(134,'Mid',97),
(135,'Mid',99),
(136,'Mid',100),
(137,'Mid',101),
(138,'Mid',106),
(139,'Mid',117),
(140,'Mid',118),
(141,'Mid',121),
(142,'Mid',125),
(143,'Mid',128),
(144,'Mid',134),
(145,'Mid',137),
(146,'Mid',138),
(147,'Mid',139),
(148,'Mid',142),
(149,'Mid',144),
(150,'Mid',146),
(151,'Mid',147),
(152,'Mid',151),
(153,'Mid',152),
(154,'Mid',154),
(155,'Bot',8),
(156,'Bot',9),
(157,'Bot',16),
(158,'Bot',24),
(159,'Bot',28),
(160,'Bot',48),
(161,'Bot',49),
(162,'Bot',50),
(163,'Bot',51),
(164,'Bot',62),
(165,'Bot',68),
(166,'Bot',75),
(167,'Bot',102),
(168,'Bot',104),
(169,'Bot',112),
(170,'Bot',116),
(171,'Bot',119),
(172,'Bot',125),
(173,'Bot',129),
(174,'Bot',132),
(175,'Bot',133),
(176,'Bot',143),
(177,'Bot',146),
(178,'Bot',152),
(179,'Sup',4),
(180,'Sup',6),
(181,'Sup',12),
(182,'Sup',13),
(183,'Sup',14),
(184,'Sup',15),
(185,'Sup',32),
(186,'Sup',36),
(187,'Sup',44),
(188,'Sup',52),
(189,'Sup',65),
(190,'Sup',69),
(191,'Sup',70),
(192,'Sup',73),
(193,'Sup',77),
(194,'Sup',78),
(195,'Sup',80),
(196,'Sup',81),
(197,'Sup',88),
(198,'Sup',89),
(199,'Sup',90),
(200,'Sup',93),
(201,'Sup',96),
(202,'Sup',104),
(203,'Sup',105),
(204,'Sup',106),
(205,'Sup',107),
(206,'Sup',108),
(207,'Sup',114),
(208,'Sup',115),
(209,'Sup',116),
(210,'Sup',119),
(211,'Sup',122),
(212,'Sup',124),
(213,'Sup',134),
(214,'Sup',135),
(215,'Sup',144),
(216,'Sup',149),
(217,'Sup',150),
(218,'Sup',153),
(219,'Sup',155);

###
INSERT INTO Loltuber (id,name,subscribers,mostChamp_id,description,link,thumbnail) VALUES
(1,"꿀탱탱",566000,99,null,"https://www.youtube.com/c/%EA%BF%80%ED%83%B1%ED%83%B1","https://yt3.ggpht.com/ytc/AAUvwng7vvJTptjPFM6agD9Vn3g0ntkPBpdSU6xV23Tf-Q=s88-c-k-c0x00ffffff-no-rj"),
(2,"여왕럭스",87700,70,null,"https://www.youtube.com/channel/UCK42N3MyEcUFkV74Em6jRkg","https://yt3.ggpht.com/SFzg--ULubQX7Vz4KV6m5xHwz4pcV0aGYzF_d-3kdhj2FTwAmypELhFyEabVG3eVz_mWp6Wj=s88-c-k-c0x00ffffff-no-rj"),
(3,"엔마",208000,144,"침착한 플레이","https://www.youtube.com/channel/UCF-rFAdN7dzd-SI2T3rkCaQ","https://yt3.ggpht.com/ytc/AAUvwnhdN43HKu6mx-FQ-CYHOBfUDhISSD6ncx1rGMZxjg=s88-c-k-c0x00ffffff-no-rj"),
(4,"에프람",101000,null,"전 프로게이머의 서포터 강의","https://www.youtube.com/channel/UCVgTydj9KUfDm_qmXPtx0FA","https://yt3.ggpht.com/ytc/AAUvwni9yt9IgGPgMhrBdSjs_Zcx87XCQeGO2xBbcKLirQ=s176-c-k-c0x00ffffff-no-rj"),
(5,"저라뎃",702000,null,"챌린저 정글러","https://www.youtube.com/channel/UC1dG3vI9FfHnH3YgyeKUz_A","https://yt3.ggpht.com/ytc/AAUvwngDP8-qO4BGZbKnK8GG9qiFGxO4KlEdv12bJjI=s88-c-k-c0x00ffffff-no-rj"),
(6,"괴물쥐 유튜브",880000,null,"원딜러 장지환","https://www.youtube.com/channel/UCDBAVzfX3yZ1hah0FHnOoaA/featured","https://yt3.ggpht.com/ytc/AAUvwnj8JQA7mmQTI5heF9zFW0qil1HXetPMRSyZFg2cbA=s88-c-k-c0x00ffffff-no-rj"),
(7,"개리형",817000,87,null,"https://www.youtube.com/channel/UCRpdlPk671uOMiBtf5HtB3Q","https://yt3.ggpht.com/ytc/AAUvwngWqvxyLAuNiyg4si8ADkbKCsZqqBEjKyM-b3S4=s88-c-k-c0x00ffffff-no-rj"),
(8,"시간의 숲",133000,121,null,"https://www.youtube.com/channel/UCyfg0TBg4jwIqnX3uNADnhg","https://yt3.ggpht.com/ytc/AAUvwnhn_hjCdUhCkcvfvxRJGDVV3eJlANWEFRtstqeHEw=s88-c-k-c0x00ffffff-no-rj"),
(9,"금똥왁왁",183000,97,null,"https://www.youtube.com/user/arthur12201","https://yt3.ggpht.com/ytc/AAUvwniAZ9CTnJT7nhvSdxDUC68Cx-5qDqzbBw0O-Ghm7g=s88-c-k-c0x00ffffff-no-rj"),
(10,"프제짱",222000,146,null,"https://www.youtube.com/channel/UChD2kf1XO2sxR4t4s_oPPMA","https://yt3.ggpht.com/ytc/AAUvwnj2j0_pgHubTthX_goNP1z7NVyWpMfIX_CaSLl9=s88-c-k-c0x00ffffff-no-rj"),
(11,"나라카일",303000,null,"롤 미드 강의, 천상계 챌린저 랭크게임","https://www.youtube.com/channel/UCdMevbThDzHEbiqu0MhyfAQ","https://yt3.ggpht.com/ytc/AAUvwnj7kA1C3KaXWtT-feyHLsgZPWfX8SsZ5UjbUu8u=s88-c-k-c0x00ffffff-no-rj"),
(12,"현솔",135000,10,null,"https://www.youtube.com/channel/UCEWkdaR_6g6giiy8_vI6fmw","https://yt3.ggpht.com/ytc/AAUvwnh82XKE9obo9DnWyUvkbkW5ZZ6hbjXyF6LtaGjTow=s88-c-k-c0x00ffffff-no-rj"),
(13,"율드댕tv",60400,151,null,"https://www.youtube.com/channel/UCFqUTFhUAQS1kJhKBR4T6Tg","https://yt3.ggpht.com/ytc/AAUvwnhTqpzCID2M2huFtCpconvzjgiB-B5ExiPJv3w6=s88-c-k-c0x00ffffff-no-rj"),
(14,"율천고 최현우",98100,151,"챌린저 제드장인","https://www.youtube.com/channel/UCDvxB8XY9DOwYz1AI7B1PUA","https://yt3.ggpht.com/ytc/AAUvwniD7En3qiHWG4ZktYaTjqWhuNNF7BvyQhI1jk_d=s88-c-k-c0x00ffffff-no-rj"),
(15,"T1 Faker",1410000,null,"설명이 필요없음","https://www.youtube.com/channel/UCpJw2H9KKqwCCGQKRh1Bf2w","https://yt3.ggpht.com/ytc/AAUvwni31JGsIL7zjSy64nhVlZ917mp1XL_wjI1Yonnfcg=s88-c-k-c0x00ffffff-no-rj"),
(16,"Official Dopa",644000,null,"트페 장인","https://www.youtube.com/c/Dopagod/videos","https://yt3.ggpht.com/ytc/AAUvwniP8EH7fLO3aNoJ_8FEUwNPYR7anbb3qJUILayHWA=s88-c-k-c0x00ffffff-no-rj"),
(17,"감스트",2070000,null,"제로투 멈춰!","https://www.youtube.com/channel/UCbFzvzDu17eDZ3RIeaLRswQ","https://yt3.ggpht.com/ytc/AAUvwngZECaFt0FDnf8kSk77EMU7sWbXjLa7_tkGmwpR2g=s88-c-k-c0x00ffffff-no-rj"),
(18,"테스터훈",1180000,null,"장인 초대석","https://www.youtube.com/channel/UCUbOogiD-4PKDqaJfSOTC0g","https://yt3.ggpht.com/ytc/AAUvwnh8CRpLVdhqnTizJXwbSrRZYob7wWP8MCqt-G5W1w=s88-c-k-c0x00ffffff-no-rj"),
(19,"병병병",191000,null,"극한의 비효율 챌린지","https://www.youtube.com/channel/UCLtZE7A3iN-oysHf5_vJYBA","https://yt3.ggpht.com/ytc/AAUvwnhGPFXoJ4yjnRH-0lm0dHRjd2tk7XQRKOdqvT02=s88-c-k-c0x00ffffff-no-rj"),
(20,"짬타수아",233000,41,"무너무너 무너여자","https://www.youtube.com/channel/UCNoSlvimHmdOgtHOCNjj7ew","https://yt3.ggpht.com/ytc/AAUvwngnIFaHOSG3S3NZelKVriE6RBSsusH-jfM6MwgGlg=s88-c-k-c0x00ffffff-no-rj"),
(21,"백크",586000,null,"아칼리 르블랑 장인","https://www.youtube.com/channel/UCugNO83_V7xZLzCsjpABGeg","https://yt3.ggpht.com/ytc/AAUvwngeWF3rgR-05Hl3rQE_dGmRIErxPFSDxoihOPXLjg=s88-c-k-c0x00ffffff-no-rj"),
(22,"만기퇴소",91900,33,null,"https://www.youtube.com/user/chlwlals1","https://yt3.ggpht.com/ytc/AKedOLTyGbqYYiAa-0VaaxCiaMV2nirSaN1M8DbwJEmw2w=s88-c-k-c0x00ffffff-no-rj"),
(23,"수찬",257000,null,"탑라이너 전수찬","https://www.youtube.com/channel/UCLm0fAzu27N2aSd3lHsy2zQ/videos","https://yt3.ggpht.com/ytc/AAUvwnhlEHs2xldBNtQ0gJ3I7Wct2jKBiqPptKAaiUnfGw=s88-c-k-c0x00ffffff-no-rj"),
(24,"뜨뜨뜨뜨",1580000,null,"원딜로 탑 갔던 사람","https://www.youtube.com/channel/UCHxKSivB6JLZ1SEMdxd1fAg","https://yt3.ggpht.com/ytc/AAUvwnj1_belAxDUHHOLxA0FBoSV47diO5wcHi4xnKvArkk=s88-c-k-c0x00ffffff-no-rj"),
(25,"새루",106000,139,null,"https://www.youtube.com/channel/UCzZepWSPs2VCpCirB3zGgtw","https://yt3.ggpht.com/ytc/AAUvwnjqt-3HXvQoOMxZqlGQT3PJziQoy6PLeXZ63TciZg=s88-c-k-c0x00ffffff-no-rj"),
(26,"Boxbox",1280000,99,null,"https://www.youtube.com/user/albertsunzheng","https://yt3.ggpht.com/ytc/AAUvwnjCeEpGHt_oJ4kXdMVelil7CMfgiX3AaHq7aJyJ=s88-c-k-c0x00ffffff-no-rj"),
(27,"스간",212000,21,null,"https://www.youtube.com/user/limsoochul2","https://yt3.ggpht.com/ytc/AKedOLS1Tq8kdl6q8j21_emsHsaanZa6DH-x5MgY16PZbQ=s88-c-k-c0x00ffffff-no-rj"),
(28,"레고77",107000,110,null,"https://www.youtube.com/channel/UCw9fP0nSoUygLDmvV1GdAZw","https://yt3.ggpht.com/ytc/AAUvwnit4hR0TF4zmt8y303hIl3RL7Y8xR3CYMtzvKoFUg=s88-c-k-c0x00ffffff-no-rj"),
(29,"캐인유튜브",133000,98,null,"https://www.youtube.com/channel/UC-8S20Ll1gzPiu_YY8BgyaQ","https://yt3.ggpht.com/M2bMhg9ma2qa8Vl0opChO7hkdD6sktlRZ_3uW1FJAYEfdjzEk8WTHwOFFlG8vG1q8Ai4J8hHx2o=s88-c-k-c0x00ffffff-no-rj"),
(30,"워윅의황제",17900,141,null,"https://www.youtube.com/channel/UCQ4YA6PJu_I76Q_UAdDgCTg","https://yt3.ggpht.com/ytc/AAUvwnirBIsFauCkS8gCEGnX6aXXspxHdwMFYAVEi7sT=s88-c-k-c0x00ffffff-no-rj");



#######

select * from LineUp
    left join Champion on (LineUp.Champion_id = Champion.id)
    left join Loltuber on (Champion.id = Loltuber.mostChamp_id);
    
#####
select LineUp.position, Champion.name as champ, Champion.role, Loltuber.thumbnail, Loltuber.name, Loltuber.description, Loltuber.link, Loltuber.id from LineUp 
    left join Champion on (LineUp.Champion_id = Champion.id) 
    left join Loltuber on (Champion.id = Loltuber.mostChamp_id);
    
    
    
