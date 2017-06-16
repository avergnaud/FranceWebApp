--
-- Base de données: `france`
--
 
CREATE DATABASE france;
USE france;
 
-- --------------------------------------------------------
 
--
-- Structure de la table `departements`
--
 
CREATE TABLE IF NOT EXISTS `departements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_region` int(11) NOT NULL,
  `code_dep` varchar(5) NOT NULL,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_region` (`id_region`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;
 
--
-- Contenu de la table `departements`
--
 
INSERT INTO `departements` (`id`, `id_region`, `code_dep`, `nom`) VALUES
(1, 22, '01', 'Ain'),
(2, 19, '02', 'Aisne'),
(3, 2, '03', 'Allier'),
(5, 21, '05', 'Alpes (Hautes)'),
(6, 21, '06', 'Alpes Maritimes'),
(7, 22, '07', 'Ardéche'),
(8, 6, '08', 'Ardennes'),
(9, 14, '09', 'Ariége'),
(10, 6, '10', 'Aube'),
(11, 11, '11', 'Aude'),
(12, 14, '12', 'Aveyron'),
(13, 21, '13', 'Bouches du Rhône'),
(14, 24, '14', 'Calvados'),
(15, 2, '15', 'Cantal'),
(16, 20, '16', 'Charente'),
(17, 20, '17', 'Charente Maritime'),
(18, 5, '18', 'Cher'),
(19, 12, '19', 'Corréze'),
(21, 12, '23', 'Creuse'),
(22, 1, '24', 'Dordogne'),
(23, 9, '25', 'Doubs'),
(24, 22, '26', 'Drôme'),
(25, 17, '27', 'Eure'),
(26, 5, '28', 'Eure et Loir'),
(27, 4, '29', 'Finistére'),
(28, 11, '30', 'Gard'),
(29, 14, '31', 'Garonne (Haute)'),
(30, 14, '32', 'Gers'),
(31, 1, '33', 'Gironde'),
(32, 11, '34', 'Hérault'),
(33, 4, '35', 'Ile et Vilaine'),
(34, 5, '36', 'Indre'),
(35, 5, '37', 'Indre et Loire'),
(36, 22, '38', 'Isére'),
(37, 9, '39', 'Jura'),
(38, 1, '40', 'Landes'),
(39, 5, '41', 'Loir et Cher'),
(40, 22, '42', 'Loire'),
(41, 2, '43', 'Loire (Haute)'),
(42, 18, '44', 'Loire Atlantique'),
(43, 5, '45', 'Loiret'),
(44, 14, '46', 'Lot'),
(45, 1, '47', 'Lot et Garonne'),
(46, 11, '48', 'Lozére'),
(47, 18, '49', 'Maine et Loire'),
(48, 24, '50', 'Manche'),
(49, 6, '51', 'Marne'),
(50, 6, '52', 'Marne (Haute)'),
(51, 18, '53', 'Mayenne'),
(52, 13, '54', 'Meurthe et Moselle'),
(53, 13, '55', 'Meuse'),
(54, 4, '56', 'Morbihan'),
(55, 13, '57', 'Moselle'),
(56, 3, '58', 'Niévre'),
(57, 15, '59', 'Nord'),
(58, 19, '60', 'Oise'),
(59, 24, '61', 'Orne'),
(60, 15, '62', 'Pas de Calais'),
(61, 2, '63', 'Puy de Dôme'),
(62, 1, '64', 'Pyrénées Atlantiques'),
(63, 14, '65', 'Pyrénées (Hautes)'),
(64, 11, '66', 'Pyrénées Orientales'),
(65, 23, '67', 'Rhin (Bas)'),
(66, 23, '68', 'Rhin (Haut)'),
(67, 22, '69', 'Rhône'),
(68, 9, '70', 'Saône (Haute)'),
(69, 3, '71', 'Saône et Loire'),
(70, 18, '72', 'Sarthe'),
(71, 22, '73', 'Savoie'),
(72, 22, '74', 'Savoie (Haute)'),
(73, 10, '75', 'Paris'),
(74, 17, '76', 'Seine Maritime'),
(75, 10, '77', 'Seine et Marne'),
(76, 10, '78', 'Yvelines'),
(77, 20, '79', 'Sèvres (Deux)'),
(78, 19, '80', 'Somme'),
(79, 14, '81', 'Tarn'),
(80, 14, '82', 'Tarn et Garonne'),
(81, 21, '83', 'Var'),
(82, 21, '84', 'Vaucluse'),
(83, 18, '85', 'Vendée'),
(84, 20, '86', 'Vienne'),
(85, 12, '87', 'Vienne (Haute)'),
(86, 13, '88', 'Vosges'),
(87, 3, '89', 'Yonne'),
(88, 9, '90', 'Belfort (Territoire de)'),
(89, 10, '91', 'Essonne'),
(90, 10, '92', 'Hauts de Seine'),
(91, 10, '93', 'Seine Saint Denis'),
(92, 10, '94', 'Val de Marne'),
(93, 8, '976', 'Mayotte'),
(94, 8, '971', 'Guadeloupe'),
(95, 8, '973', 'Guyane'),
(96, 8, '972', 'Martinique'),
(97, 8, '974', 'Réunion'),
(98, 3, '21', 'Côte d''or'),
(100, 4, '22', 'Côtes d''armor'),
(102, 7, '2A', 'Corse du sud'),
(103, 7, '2B', 'Haute corse'),
(104, 10, '95', 'Val d''oise');
 
-- --------------------------------------------------------
 
--
-- Structure de la table `regions`
--
 
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;
 
--
-- Contenu de la table `regions`
--
 
INSERT INTO `regions` (`id`, `nom`) VALUES
(1, 'Aquitaine'),
(2, 'Auvergne'),
(3, 'Bourgogne'),
(4, 'Bretagne'),
(5, 'Centre'),
(6, 'Champagne Ardenne'),
(7, 'Corse'),
(8, 'DOM/TOM'),
(9, 'Franche Comté'),
(10, 'Ile de France'),
(11, 'Languedoc Roussillon'),
(12, 'Limousin'),
(13, 'Lorraine'),
(14, 'Midi Pyrénées'),
(15, 'Nord Pas de Calais'),
(17, 'Haute Normandie'),
(18, 'Pays de la Loire'),
(19, 'Picardie'),
(20, 'Poitou Charentes'),
(21, 'Provence Alpes Côte d''azur'),
(22, 'Rhône Alpes'),
(23, 'Alsace'),
(24, 'Basse-Normandie');
 
--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;