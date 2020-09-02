#
# TABLE STRUCTURE FOR: adresse
#

DROP TABLE IF EXISTS `type_plat`;
DROP TABLE IF EXISTS `stock_livreur`;
DROP TABLE IF EXISTS `statut_commande`;
DROP TABLE IF EXISTS `plat`;
DROP TABLE IF EXISTS `livreur`;
DROP TABLE IF EXISTS `detail_commande`;
DROP TABLE IF EXISTS `commande`;
DROP TABLE IF EXISTS `client`;
DROP TABLE IF EXISTS `adresse`;



CREATE TABLE `adresse` (
  `id_adresse` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `code_postal` char(5) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `complement_adresse` varchar(100),
  PRIMARY KEY (`id_adresse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (1, 10, '1','Digne-les-Bains', '04070', 'rue de la pizza');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (2, 3, '3','Yenne', '73170', 'avanue des lasagnes');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (3, 1, '1','Caussade', '82380', 'boulevard des crepes');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (4, 7, '19','Tignes', '73230', 'allée des mimosas');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (5, 4, '4','Moux', '11740', 'passage du tabac');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (6, 2, '5','Prémanon', '39400', 'voie des oiseaux');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (7, 5, '9','Gesvres', '53370', 'allée du vieux chene');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (8, 6, '7','La Garnache', '85710', 'ruelle des champs');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (9, 4, '5','Lissy', '77550', 'rue de la riviere');
INSERT INTO `adresse` (`id_adresse`, `id_client`, `numero`, `ville`, `code_postal`, `rue`) VALUES (10, 8, '3','Tarbes', '65060', 'boulevard des chats');


#
# TABLE STRUCTURE FOR: client
#



CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `telephone` char(10) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `mot_de_passe` varchar(32) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (1, 'client1', 'Desire', 0101010101, 'mail1@mail.com', 111);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (2, 'client2', 'Sidonie', 0201010101, 'mail2@mail.com', 222);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (3, 'client3', 'Aude', 0301010101, 'mail3@mail.com', 333);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (4, 'client4', 'Mederic', 0401010101, 'mail4@mail.com', 444);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (5, 'client5', 'Victorin', 0501010101, 'mail5@mail.com', 555);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (6, 'client6', 'Esteban', 0601010101, 'mail6@mail.com', 666);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (7, 'client7', 'Flora', 0701010101, 'mail7@mail.com', 777);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (8, 'client8', 'Virgil', 0801010101, 'mail8@mail.com', 888);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (9, 'client9', 'Yolene', 0901010101, 'mail9@mail.com', 999);
INSERT INTO `client` (`id_client`, `nom`, `prenom`, `telephone`, `mail`, `mot_de_passe`) VALUES (10, 'client10', 'Jean-Pierre', 0111111101, 'mail10@mail.com', 10001);



#
# TABLE STRUCTURE FOR: commande
#



CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `statut_commande` int(11) NOT NULL,
  `delai_livraison` int(11) NOT NULL,
  `prix_total` decimal(5,2) NOT NULL,
  `id_livreur` int(11) NOT NULL,
   PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (1,10, '2017-04-04', 1, 22, 76.37, 4);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (2,9, '2019-04-15', 1, 24, 209.82, 2);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (3,8, '2016-05-20', 4, 15, 111.71, 8);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (4,7, '2019-03-05', 1, 17, 167.62, 2);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (5,6, '2020-01-10', 1, 16, 205.99, 1);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (6,5, '2019-12-17', 1, 15, 49.59, 9);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (7,4, '2018-09-19', 3, 22, 46.32, 1);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (8,3, '2017-08-07', 2, 23, 195.53, 6);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (9,2, '2019-06-01', 5, 8, 161.27, 9);
INSERT INTO `commande` (`id_commande`,`id_client`, `date_commande`, `statut_commande`, `delai_livraison`, `prix_total`, `id_livreur`) VALUES (10,1, '2018-06-11', 3, 3, 50.23, 7);


#
# TABLE STRUCTURE FOR: detail_commande
#



CREATE TABLE `detail_commande` (
  `id_commande` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prixDetail` decimal(4,2) NOT NULL,
   PRIMARY KEY (`id_commande`,`id_plat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (1, 2, 1, '4.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (2, 7, 4, '7.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (3, 7, 8, '4.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (4, 3, 5, '1.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (5, 9, 9, '10.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (6, 4, 2, '4.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (7, 3, 4, '8.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (8, 1, 3, '7.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (9, 5, 7, '1.00');
INSERT INTO `detail_commande` (`id_commande`, `id_plat`, `quantite`, `prixDetail`) VALUES (10, 7, 8, '1.00');


#
# TABLE STRUCTURE FOR: livreur
#



CREATE TABLE `livreur` (
  `id_livreur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `telephone` char(10) NOT NULL,
  `est_disponible` tinyint(1) NOT NULL,
  `coordGPS` varchar(300) NOT NULL,
  PRIMARY KEY (`id_livreur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (1, 'Baumbach', 'Beth', '0625119577', true, '98E,5N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (2, 'Kulas', 'Madisyn', '0611918935', true, '78E,46N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (3, 'Ritchie', 'Sydni', '0646749357', true, '38E,22N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (4, 'Boyer', 'Jeremy', '0680039390', false, '30E,47N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (5, 'Schaden', 'Jimmy', '0682253467', false, '80E,53N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (6, 'Fritsch', 'Alvera', '0670175992', true, '89E,69N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (7, 'Lind', 'Jermain', '0680214270', true, '47E,95N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (8, 'Keeling', 'Mallie', '0674859225', true, '91E,23N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (9, 'Keebler', 'Tomasa', '0656401135', true, '63E,89N');
INSERT INTO `livreur` (`id_livreur`, `nom`, `prenom`, `telephone`, `est_disponible`, `coordGPS`) VALUES (10, 'Lang', 'Albina', '0653500769', false, '12E,87N');


#
# TABLE STRUCTURE FOR: plat
#



CREATE TABLE `plat` (
  `id_plat` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `type_plat_id` int(11) NOT NULL,
  `est_plat_du_jour` tinyint(1) NOT NULL,
  `stock_actuel` int(11) NOT NULL,
  PRIMARY KEY (`id_plat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (1, 'salade', '4.00', 1, false, 1);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (2, 'frites', '8.60', 1, false, 9);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (3, 'poulet', '1.90', 1, false, 9);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (4, 'sorbet', '5.20', 2, true, 9);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (5, 'gateau', '2.60', 2, false, 5);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (6, 'hamburger', '3.50', 1, false, 5);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (7, 'creme glacée', '4.60', 2, false, 9);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (8, 'paella', '9.70', 1, false, 1);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (9, 'couscous', '3.00', 1, true, 8);
INSERT INTO `plat` (`id_plat`, `nom`, `prix`, `type_plat_id`, `est_plat_du_jour`, `stock_actuel`) VALUES (10, 'salade de fruits', '7.40', 2, false, 7);


#
# TABLE STRUCTURE FOR: statut_commande
#



CREATE TABLE `statut_commande` (
  `id_statut_commande` int(11) NOT NULL,
  `libelle_statut` varchar(100) NOT NULL,
   PRIMARY KEY (`id_statut_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES (1, 'livré');
INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES (2, 'en attente de livraison');
INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES (3, 'annulée');
INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES (4, 'en retard');
INSERT INTO `statut_commande` (`id_statut_commande`, `libelle_statut`) VALUES (5, 'reportée');

#
# TABLE STRUCTURE FOR: stock_livreur
#

CREATE TABLE `stock_livreur` (
  `id_livreur` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id_livreur`,`id_plat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (1,7,23);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (2,4,3);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (3,2,30);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (4,7,20);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (5,10,5);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (6,5,10);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (7,1,7);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (8,3,18);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (9,9,15);
INSERT INTO `stock_livreur` (`id_livreur`,`id_plat`,`quantite`) VALUES (10,8,1);

#
# TABLE STRUCTURE FOR: type_plat
#


CREATE TABLE `type_plat` (
  `id_type_plat` int(11) NOT NULL,
  `libelle_type` varchar(30) NOT NULL,
   PRIMARY KEY (`id_type_plat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `type_plat` (`id_type_plat`, `libelle_type`) VALUES (1, 'plat');
INSERT INTO `type_plat` (`id_type_plat`, `libelle_type`) VALUES (2, 'dessert');



ALTER TABLE adresse
ADD FOREIGN KEY (id_client) REFERENCES client(id_client); 
ALTER TABLE commande
ADD FOREIGN KEY (id_adresse) REFERENCES adresse(id_adresse); 
ALTER TABLE commande
ADD FOREIGN KEY (id_livreur) REFERENCES livreur(id_livreur); 
ALTER TABLE commande
ADD FOREIGN KEY (statut_commande) REFERENCES statut_commande(id_statut_commande); 
ALTER TABLE commande
ADD FOREIGN KEY (id_client) REFERENCES client(id_client); 
ALTER TABLE detail_commande
ADD FOREIGN KEY (id_plat) REFERENCES plat(id_plat); 
ALTER TABLE detail_commande
ADD FOREIGN KEY (id_commande) REFERENCES plat(id_commande); 
ALTER TABLE plat
ADD FOREIGN KEY (type_plat_id) REFERENCES type_plat(id_type_plat); 
ALTER TABLE stock_livreur
ADD FOREIGN KEY (id_livreur) REFERENCES livreur(id_livreur); 
ALTER TABLE stock_livreur
ADD FOREIGN KEY (id_plat) REFERENCES plat(id_plat); 
