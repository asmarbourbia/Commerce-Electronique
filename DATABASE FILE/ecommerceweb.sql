-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 10 mars 2025 à 18:03
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(290, ' Zagora'),
(289, 'Volubilis'),
(288, 'Tiznit'),
(287, 'Tineghir'),
(286, 'Tetouan'),
(285, 'Taroudant'),
(284, 'Tagounit'),
(283, 'Tafraoud'),
(282, 'Tanger'),
(281, 'Taliouine'),
(280, ' Sefrou'),
(279, 'Salé'),
(278, 'Safi'),
(277, 'Rissani'),
(276, 'Rabat'),
(275, 'Oujda'),
(274, 'Ouarzazate'),
(273, 'Moulay Bousselham'),
(272, 'Midelt'),
(271, 'Merzouga'),
(270, ' Meknes'),
(269, 'Marrakech'),
(268, 'Larache'),
(267, 'Laayoune'),
(266, 'Khenifra'),
(265, 'Kenitra'),
(264, 'Imilchil'),
(263, 'Ifrane'),
(262, 'Figuig'),
(261, 'Fès'),
(260, 'Essaouira'),
(259, ' Er rachidia'),
(258, 'Erfoud'),
(257, 'El Jadida'),
(256, 'Dakhla'),
(255, 'Chefchaouen'),
(254, 'Casablanca'),
(253, 'Boujdour'),
(252, 'Berrechid'),
(251, 'Berkane'),
(250, ' Beni Mellal'),
(249, ' Azrou'),
(248, 'Asilah'),
(247, 'Amizmiz'),
(246, 'Agadir');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES

(36, 'asmae', '', 'asmae@gmail.com', '', 270, 'sala sadida', '', '', '12345', 'assma', '1', '', 249, 'sala sadida', '1', '1', '12345', 'asmae', '', '0663818228', 249, 'rabat\r\nsale', '1', '1', '01330', '81dc9bdb52d04dc20036dbd8313ed055', '48747f1083f81f9d2c9707dfeacd2512', '2024-08-29 05:02:42', '1724947362', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer_message`
--

DROP TABLE IF EXISTS `tbl_customer_message`;
CREATE TABLE IF NOT EXISTS `tbl_customer_message` (
  `customer_message_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int NOT NULL,
  PRIMARY KEY (`customer_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(9, 'hay', '123', '\n            Nom du client :asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement: Bank Deposit<br>\n            Date de paiement:2024-05-29 20:18:56<br>\n            Détails de paiement: <br>\n                Détails de la transaction: <br>h<br>\n            Montant payé:167<br>\n            Statut de paiement: Pending<br>\n            Statut envoi: Pending<br>\n            Identifiant de paiement : 1717010336<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nnom du produit : Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\ntaille : 31<br>\ncouleur : Navy<br>\nquantite : <br>\nPrix unitaire : 67<br>\n            ', 14),
(10, 'hay', '123', '\n            Nom du client :asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement: Bank Deposit<br>\n            Date de paiement:2024-05-29 20:18:56<br>\n            Détails de paiement: <br>\n                Détails de la transaction: <br>h<br>\n            Montant payé:167<br>\n            Statut de paiement: Pending<br>\n            Statut envoi: Pending<br>\n            Identifiant de paiement : 1717010336<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nnom du produit : Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\ntaille : 31<br>\ncouleur : Navy<br>\nquantite : <br>\nPrix unitaire : 67<br>\n            ', 14),
(11, 'hay', '123', '\n            Nom du client :asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement: Bank Deposit<br>\n            Date de paiement:2024-05-29 20:18:56<br>\n            Détails de paiement: <br>\n                Détails de la transaction: <br>h<br>\n            Montant payé:167<br>\n            Statut de paiement: Pending<br>\n            Statut envoi: Pending<br>\n            Identifiant de paiement : 1717010336<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nnom du produit : Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\ntaille : 31<br>\ncouleur : Navy<br>\nquantite : <br>\nPrix unitaire : 67<br>\n            ', 14),
(12, 'hay', '122', '\n            Nom du client :asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement: PayPal<br>\n            Date de paiement:2024-05-29 23:37:38<br>\n            Détails de paiement: <br>\n                Identifiant de transaction: <br>\n        		<br>\n            Montant payé:167<br>\n            Statut de paiement: En attente<br>\n            Statut envoi: En attente<br>\n            Identifiant de paiement : 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nnom du produit : Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\ntaille : 31<br>\ncouleur : Navy<br>\nquantite : <br>\nPrix unitaire : 67<br>\n            ', 22),
(13, 'hay', '122', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(14, 'hay', '122', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(15, 'hay', '122', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(16, 'hay', '123456', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(17, 'hay', '12345', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(18, 'hay', '12345', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: PayPal<br>\nPayment Date: 2024-05-29 23:37:38<br>\nPayment Details: <br>\nTransaction Id: <br>\n        		<br>\nPaid Amount: 167<br>\nPayment Status: En attente<br>\nShipping Status: En attente<br>\nPayment Id: 1717022258<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)<br>\nSize: 31<br>\nColor: Navy<br>\nQuantity: 1<br>\nUnit Price: 67<br>\n            ', 22),
(19, 'hay', '12345', '\nCustomer Name: asmae<br>\nCustomer Email: asmae.bourbia2@gmail.com<br>\nPayment Method: Bank Deposit<br>\nPayment Date: 2024-05-30 02:24:08<br>\nPayment Details: <br>\nTransaction Details: <br>CA100270589600<br>\nPaid Amount: 250<br>\nPayment Status: Pending<br>\nShipping Status: Pending<br>\nPayment Id: 1717032248<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: pantalon<br>\nSize: L<br>\nColor: Blue<br>\nQuantity: 1<br>\nUnit Price: 150<br>\n            ', 26),
(20, 'hay', 'parfais', '\n            Nom du client : asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement:Bank Deposit<br>\n            Date de paiement:2024-05-30 02:24:08<br>\n            Détails de paiement:<br>\n                Détails de la transaction:<br>CA100270589600<br>\n            Montant payé:250<br>\n            Statut de paiement: Pending<br>\nStatut d envoi:Pending<br>\nIdentifiant de paiement :1717032248<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nNom du produit : pantalon<br>\nTaille: L<br>\nCouleur:Blue<br>\nQuantité: 1<br>\nPrix ??unitaire:150<br>\n            ', 26),
(21, 'hay', 'bonjour', '\n            Nom du client : asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement:Bank Deposit<br>\n            Date de paiement:2024-06-23 21:03:55<br>\n            Détails de paiement:<br>\n                Détails de la transaction:<br><br>\n            Montant payé:340<br>\n            Statut de paiement: Completed<br>\nStatut d envoi:Completed<br>\nIdentifiant de paiement :1719173035<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nNom du produit : débardeur rose de enfants minimaus (fille)<br>\nTaille: XS<br>\nCouleur:Salmon<br>\nQuantité: 3<br>\nPrix ??unitaire:100<br>\n            ', 33),
(22, 'hay', 'bonjour', '\n            Nom du client : asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement:Bank Deposit<br>\n            Date de paiement:2024-06-23 21:03:55<br>\n            Détails de paiement:<br>\n                Détails de la transaction:<br><br>\n            Montant payé:340<br>\n            Statut de paiement: Completed<br>\nStatut d envoi:Completed<br>\nIdentifiant de paiement :1719173035<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nNom du produit : débardeur rose de enfants minimaus (fille)<br>\nTaille: XS<br>\nCouleur:Salmon<br>\nQuantité: 3<br>\nPrix ??unitaire:100<br>\n            ', 33),
(23, 'hay', 'bonjour', '\n            Nom du client : asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement:Bank Deposit<br>\n            Date de paiement:2024-06-23 21:24:10<br>\n            Détails de paiement:<br>\n                Détails de la transaction:<br><br>\n            Montant payé:340<br>\n            Statut de paiement: Completed<br>\nStatut d envoi:Completed<br>\nIdentifiant de paiement :1719174250<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nNom du produit : débardeur rose de enfants minimaus (fille)<br>\nTaille: XS<br>\nCouleur:Salmon<br>\nQuantité: 3<br>\nPrix ??unitaire:100<br>\n            ', 35),
(24, 'hay', 'lùq', '\n            Nom du client : asmae<br>\n            Email client: asmae.bourbia2@gmail.com<br>\n            Mode de paiement:Bank Deposit<br>\n            Date de paiement:2024-06-23 21:24:10<br>\n            Détails de paiement:<br>\n                Détails de la transaction:<br><br>\n            Montant payé:340<br>\n            Statut de paiement: Completed<br>\nStatut d envoi:Completed<br>\nIdentifiant de paiement :1719174250<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nNom du produit : débardeur rose de enfants minimaus (fille)<br>\nTaille: XS<br>\nCouleur:Salmon<br>\nQuantité: 3<br>\nPrix ??unitaire:100<br>\n            ', 35);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_end_category`
--

DROP TABLE IF EXISTS `tbl_end_category`;
CREATE TABLE IF NOT EXISTS `tbl_end_category` (
  `ecat_id` int NOT NULL AUTO_INCREMENT,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int NOT NULL,
  PRIMARY KEY (`ecat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(7, 'T-Shirt', 3),
(14, 'Sweats à capuche', 7),
(15, 'Manteaux et jaquettes', 7),
(16, 'Pantalon', 8),
(17, 'Jeans', 8),
(18, 'Joggers', 8),
(19, 'Short', 8),
(21, 'Chemises décontractées', 9),
(22, 'Chemises formelles', 9),
(23, 'Polos', 9),
(24, 'Vestes', 9),
(26, 'Garçons', 10),
(27, 'Filles', 10),
(30, 'Garçons', 12),
(31, 'Filles', 12),
(32, 'Robes', 7),
(34, 'T-shirts et vestes', 7),
(35, 'Pantalons et leggings', 7),
(36, 'Vêtements de sport', 7),
(37, 'Vêtements grande taille', 7),
(39, 'Fragrance', 3),
(40, 'Skincare', 3),
(41, 'Hair Care', 3),
(43, 'Eyes Care', 3),
(44, 'Lips', 3),
(45, 'Face Care', 3),
(46, 'Gift Sets', 3),
(57, 'Belts', 1),
(58, 'Multipacks', 1),
(59, 'Other Accessories', 1),
(80, 'Chaussures ', 8),
(81, 'Manteaux et jaquettes', 9),
(82, 'T-shirt', 9),
(83, 'Sandales', 20),
(84, 'converse ', 20),
(85, 'talons', 20),
(86, 'Chaussures de sport', 20),
(87, 'Sandales et claquettes', 19);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Comment trouver un objet?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Nous proposons une large gamme de produits fabuleux.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Astuce 1 : Si vous recherchez un produit spécifique, utilisez le champ de recherche par mot clé situé en haut du site. Tapez simplement ce que vous recherchez et préparez-vous à être surpris !</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Astuce 2 : Si vous souhaitez explorer une catégorie de produits, utilisez les catégories de boutique dans le menu supérieur et parcourez vos catégories préférées où nous présenterons les meilleurs produits de chacune.</span></font></h3>\r\n'),
(2, 'Quelle est votre politique de retour ?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\">Vous disposez d\'un délai de 15 jours pour faire une demande de remboursement après la livraison de votre commande.</span><br></p>\r\n'),
(3, 'J\'ai reçu un article défectueux/endommagé, puis-je obtenir un remboursement ?', '<p>Si l\'article que vous avez reçu est endommagé ou défectueux, vous pouvez retourner un article dans le même état dans lequel vous l\'avez reçu avec la boîte et/ou l\'emballage d\'origine intacts. Une fois que nous recevrons l\'article retourné, nous l\'inspecterons et si l\'article s\'avère défectueux ou endommagé, nous traiterons le remboursement ainsi que les frais d\'expédition encourus.<br></p>\r\n'),
(4, 'Quand les « retours » ne sont-ils pas possibles ?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">Il existe quelques scénarios dans lesquels il nous est difficile de soutenir les rendements :</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">La demande de retour s\'effectue en dehors du délai indiqué, soit 15 jours à compter de la livraison.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Le produit est utilisé, endommagé ou n’est pas dans le même état que celui dans lequel vous l’avez reçu.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Catégories spécifiques comme les vêtements d\'intérieur, la lingerie, les chaussettes et les vêtements gratuits, etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Produits défectueux couverts par la garantie du fabricant.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Tout article consommable qui a été utilisé ou installé.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Produits dont les numéros de série sont falsifiés ou manquants.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Tout ce qui manque dans le colis que vous avez reçu, y compris les étiquettes de prix, les étiquettes, l\'emballage d\'origine, les cadeaux et les accessoires.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Objets fragiles, articles liés à l\'hygiène.</li></ol>\r\n'),
(5, 'Quels sont les articles qui ne peuvent pas être retournés ?', '<p>Les articles qui ne peuvent pas être retournés sont :</p><p><br></p><p>Articles en liquidation clairement marqués comme tels et affichant une politique de non-retour</p><p><br></p><p>Lorsque les notes d\'offre l\'indiquent spécifiquement, les articles ne peuvent pas être retournés.</p><p><br></p><p>Articles qui appartiennent aux types de produits ci-dessous :</p><ul><li>Sous-vêtement</li><li>Lingerie</li><li>Chaussettes</li><li>Logiciel</li><li>Albums de musique</li><li>Livres</li><li>Maillots de bain</li><li>Beauté et parfums</li><li>Bonneterie</li></ul><p>De plus, tous les consommables utilisés ou installés ne peuvent pas être retournés. Comme indiqué dans la section Droits de protection des consommateurs et concernant les articles non retournables.<br></p>');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` int NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'DH'),
(2, 'Search Product', 'Rechercher un produit'),
(3, 'Search', 'Recherche'),
(4, 'Submit', 'Soumettre'),
(5, 'Update', 'Mise à jour'),
(6, 'Read More', 'En savoir plus'),
(7, 'Serial', 'En série'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Connexion'),
(10, 'Customer Login', 'Connexion client'),
(11, 'Click here to login', 'Cliquez ici pour vous connecter'),
(12, 'Back to Login Page', 'Retour à la page de connexion'),
(13, 'Logged in as', 'Se connecter à'),
(14, 'Logout', 'Déconnexion'),
(15, 'Register', 'Registre'),
(16, 'Customer Registration', 'Enregistrement des clients'),
(17, 'Registration Successful', 'Inscription réussie'),
(18, 'Cart', 'Panier'),
(19, 'View Cart', 'Voir le panier'),
(20, 'Update Cart', 'Mise à jour du panier'),
(21, 'Back to Cart', 'Retour au panier'),
(22, 'Checkout', 'Sortie de caisse'),
(23, 'Proceed to Checkout', 'Passer à la caisse'),
(24, 'Orders', 'Commandes'),
(25, 'Order History', 'Historique des commandes'),
(26, 'Order Details', 'Détails de la commande'),
(27, 'Payment Date and Time', 'Date et heure de paiement'),
(28, 'Transaction ID', 'ID de la transaction'),
(29, 'Paid Amount', 'Montant payé'),
(30, 'Payment Status', 'État des paiements'),
(31, 'Payment Method', 'Mode de paiement'),
(32, 'Payment ID', 'ID de paiement'),
(33, 'Payment Section', 'Section des paiements'),
(34, 'Select Payment Method', 'Sélectionner le mode de paiement'),
(35, 'Select a Method', 'Sélectionner une méthode'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Rayure'),
(38, 'Bank Deposit', 'Dépôt bancaire'),
(39, 'Card Number', 'Numéro de la carte'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Mois'),
(42, 'Year', 'Année'),
(43, 'Send to this Details', 'Envoyer à cette adresse'),
(44, 'Transaction Information', 'Informations sur les transactions'),
(45, 'Include transaction id and other information correctly', 'Inclure correctement l\'identifiant de la transaction et d\'autres informations'),
(46, 'Pay Now', 'Payez maintenant'),
(47, 'Product Name', 'Nom de produit '),
(48, 'Product Details', 'détails du produit'),
(49, 'Categories', 'Categories '),
(50, 'Category:', 'Categorie:'),
(51, 'All Products Under', 'Tous les produits sous'),
(52, 'Select Size', 'Sélectionnez la taille'),
(53, 'Select Color', 'Sélectionnez coleur '),
(54, 'Product Price', 'Prix ??du produit '),
(55, 'Quantity', 'Quantité'),
(56, 'Out of Stock', 'En rupture de stock'),
(57, 'Share This', 'Partagez ceci'),
(58, 'Share This Product', 'Partager ce produit'),
(59, 'Product Description', 'Description du produit'),
(60, 'Features', 'Caractéristiques'),
(61, 'Conditions', 'Conditions '),
(62, 'Return Policy', 'Politique de retour'),
(63, 'Reviews', ' Avis'),
(64, 'Review', 'Avis'),
(65, 'Give a Review', 'Donner un avis'),
(66, 'Write your comment (Optional)', 'Écrivez votre commentaire (facultatif)'),
(67, 'Submit Review', 'Soumettre un avis'),
(68, 'You already have given a rating!', 'Vous avez déjà donné une note ! '),
(69, 'You must have to login to give a review', 'Vous devez vous connecter pour donner un avis'),
(70, 'No description found', 'Aucune description trouvée'),
(71, 'No feature found', 'Aucune fonctionnalité trouvée '),
(72, 'No condition found', 'Aucune condition trouvée '),
(73, 'No return policy found', 'Aucune politique de retour trouvée'),
(74, 'Review not found', 'Aucun avis n\'a été trouvé'),
(75, 'Customer Name', 'Nom du client'),
(76, 'Comment', 'Commentaire'),
(77, 'Comments', 'Commentaires'),
(78, 'Rating', 'Notation'),
(79, 'Previous', 'Précédent'),
(80, 'Next', 'Suivant '),
(81, 'Sub Total', 'Sous-total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action '),
(84, 'Shipping Cost', 'Frais de transport'),
(85, 'Continue Shopping', 'Continuer les achats'),
(86, 'Update Billing Address', 'Mise à jour de l\'adresse de facturation'),
(87, 'Update Shipping Address', 'Mettre à jour l\'adresse de livraison'),
(88, 'Update Billing and Shipping Info', 'Mise à jour des informations de facturation et de livraison'),
(89, 'Dashboard', 'Tableau de bord'),
(90, 'Welcome to the Dashboard', 'Bienvenue au tableau de bord'),
(91, 'Back to Dashboard', 'Retour au tableau de bord'),
(92, 'Subscribe', 'S\'abonner'),
(93, 'Subscribe To Our Newsletter', 'S\'abonner à notre lettre d\'information'),
(94, 'Email Address', 'Addresse Email '),
(95, 'Enter Your Email Address', 'Entrez votre adresse email '),
(96, 'Password', 'Mot de passe '),
(97, 'Forget Password', 'Oublier le mot de passe'),
(98, 'Retype Password', 'Retapez le mot de passe'),
(99, 'Update Password', 'Mise à jour du mot de passe'),
(100, 'New Password', 'Nouveau mot de passe'),
(101, 'Retype New Password', 'Retapez le nouveau mot de passe'),
(102, 'Full Name', 'Nom et prénom'),
(103, 'Company Name', 'Nom de l\'entreprise '),
(104, 'Phone Number', 'Numéro de téléphone '),
(105, 'Address', 'Addresse '),
(106, 'Country', 'pays'),
(107, 'City', 'Ville'),
(108, 'State', 'État'),
(109, 'Zip Code', 'Code postal'),
(110, 'About Us', 'À propos de nous'),
(111, 'Featured Posts', 'Articles en vedette'),
(112, 'Popular Posts', 'Articles populaires'),
(113, 'Recent Posts', 'Derniers messages'),
(114, 'Contact Information', 'Informations de contact'),
(115, 'Contact Form', 'Formulaire de contact'),
(116, 'Our Office', 'Notre bureau'),
(117, 'Update Profile', 'Modifier Profile '),
(118, 'Send Message', 'Envoyer le message'),
(119, 'Message', 'Message '),
(120, 'Find Us On Map', 'Trouvez-nous sur la map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! PaymenFélicitation ! Le paiement est réussit is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Les informations de facturation et d\'expédition ont été mises à jour avec succès'),
(123, 'Customer Name can not be empty.', 'Le nom du client ne peut pas être vide.'),
(124, 'Phone Number can not be empty.', 'Le numéro de téléphone ne peut pas être vide. '),
(125, 'Address can not be empty.', 'L\'adresse ne peut pas être vide. '),
(126, 'You must have to select a country.', 'Vous devez obligatoirement sélectionner un pays.'),
(127, 'City can not be empty.', 'La ville ne peut pas être vide.'),
(128, 'State can not be empty.', 'L\'État ne peut pas être vide. '),
(129, 'Zip Code can not be empty.', 'Le code postal ne peut pas être vide'),
(130, 'Profile Information is updated successfully.', 'Les informations de profil sont mises à jour avec succès. '),
(131, 'Email Address can not be empty', 'L\'adresse e-mail ne peut pas être vide '),
(132, 'Email and/or Password can not be empty.', 'L\'e-mail et/ou le mot de passe ne peuvent pas être vides.'),
(133, 'Email Address does not match.', 'L\'adresse de messagerie ne correspond pas. '),
(134, 'Email address must be valid.', 'L\'adresse e-mail doit être valide. '),
(135, 'You email address is not found in our system.', 'Votre adresse e-mail n\'est pas trouvée dans notre système.'),
(136, 'Please check your email and confirm your subscription.', 'Veuillez vérifier votre courrier électronique et confirmer votre abonnement.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Votre email est vérifié avec succès. Vous pouvez maintenant vous connecter à notre site Web. '),
(138, 'Password can not be empty.', 'Le mot de passe ne peut pas être vide. '),
(139, 'Passwords do not match.', 'Les mots de passe ne correspondent pas.'),
(140, 'Please enter new and retype passwords.', 'Veuillez saisir un nouveau mot de passe et retaper. '),
(141, 'Password is updated successfully.', 'Le mot de passe est mis à jour avec succès. '),
(142, 'To reset your password, please click on the link below.', 'Pour réinitialiser votre mot de passe, veuillez cliquer sur le lien ci-dessous.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'DEMANDE DE RÉINITIALISATION DU MOT DE PASSE - VOTRE SITE WEB.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'Le délai d\'envoi de l\'e-mail de réinitialisation du mot de passe (24 heures) a expiré. Veuillez réessayer de réinitialiser votre mot de passe.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'Un lien de confirmation est envoyé à votre adresse e-mail. Vous y obtiendrez les informations de réinitialisation du mot de passe. '),
(146, 'Password is reset successfully. You can now login.', 'Le mot de passe est réinitialisé avec succès. Vous pouvez maintenant vous connecter.'),
(147, 'Email Address Already Exists', 'L\'adresse mail existe déjà.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Désolé! Votre compte est inactif. Veuillez contacter l\'administrateur.'),
(149, 'Change Password', 'Changer le mot de passe'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Confirmation par e-mail d\'inscription pour VOTRE SITE WEB.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Merci pour votre inscription! Votre compte a été créé. Pour activer votre compte, cliquez sur le lien ci-dessous :'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Votre inscription est terminée. Veuillez vérifier votre adresse e-mail pour suivre le processus de confirmation de votre inscription.'),
(153, 'No Product Found', 'Aucun produit trouvé '),
(154, 'Add to Cart', 'Ajouter au panier'),
(155, 'Related Products', 'Produits connexes'),
(156, 'See all related products from below', 'Voir tous les produits connexes ci-dessous'),
(157, 'Size', 'Taille '),
(158, 'Color', 'Couleur '),
(159, 'Price', 'Prix'),
(160, 'Please login as customer to checkout', 'Veuillez vous connecter en tant que client pour passer à la caisse'),
(161, 'Billing Address', 'Adresse de facturation'),
(162, 'Shipping Address', 'Adresse de livraison'),
(163, 'Rating is Submitted Successfully!', 'La note a été soumise avec succès !');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_mid_category`
--

DROP TABLE IF EXISTS `tbl_mid_category`;
CREATE TABLE IF NOT EXISTS `tbl_mid_category` (
  `mcat_id` int NOT NULL AUTO_INCREMENT,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int NOT NULL,
  PRIMARY KEY (`mcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(7, 'Vêtements', 2),
(8, 'Bas', 1),
(9, 'Vêtements', 1),
(10, 'Vêtements', 3),
(19, 'Chaussures', 3),
(20, 'Chaussures', 2);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(1, 83, 'Men\'s Ultra Cotton T-Shirt, Multipack', 'XL', 'Gray', '1', '19', '1647629329'),
(16, 97, 'Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)', '31', 'Navy', '1', '67', '1717022258'),
(18, 143, 'pantalon', 'XL', 'Blue', '1', '150', '1717035036'),
(19, 103, 'T-shirt rouge de enfants (garçons)', 'XS', 'Red', '1', '80', '1717035488'),
(20, 86, 'Amazfit GTS 3 Smart Watch for Android iPhone', 'Free Size', 'Black', '1', '179', '1717038319'),
(22, 104, 'T-shirt jaune de enfants (garçons)', 'XS', 'Blue', '1', '100', '1717038490'),
(23, 90, 'Women\'s Thin Cotton Zip Up Hoodie Jacket', 'XS', 'Black', '1', '32', '1717038689'),
(25, 143, 'pantalon', 'XL', 'Blue', '1', '150', '1717067515'),
(26, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717067727'),
(37, 212, 'T-shirt', 'M', 'White', '1', '200', '1717108336'),
(38, 87, 'Pyjamas pour garçons de camion, vêtements de nuit pour tout-petits', '12 Months', 'Blue', '1', '150', '1717108836'),
(40, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717166359'),
(41, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1717166597'),
(42, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1717166723'),
(43, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717182756'),
(44, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1717182924'),
(59, 114, 'Chemise sans manches pour enfants', 'XS', 'Orange', '1', '80', '1717207638'),
(60, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1717241139'),
(62, 103, 'T-shirt rouge de enfants (garçons)', 'XS', 'Red', '1', '80', '1717241191'),
(63, 108, 'T-shirt rouge (garçons)', 'S', 'Red', '1', '85', '1717421312'),
(65, 103, 'T-shirt rouge de enfants (garçons)', 'XS', 'Red', '1', '80', '1717421382'),
(66, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717421612'),
(67, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1717421957'),
(68, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717423258'),
(69, 142, 'pantalon', 'L', 'Blue', '1', '150', '1717761974'),
(73, 142, 'pantalon', 'L', 'Blue', '1', '150', '1719020470'),
(74, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1719021091'),
(76, 90, 'Veste à capuche zippée en coton fin pour femme', 'XS', 'Black', '1', '32', '1719154129'),
(78, 124, 'débardeur rose de enfants minimaus (fille)', 'XS', 'Salmon', '1', '100', '1719163426'),
(79, 124, 'débardeur rose de enfants minimaus (fille)', 'XS', 'Salmon', '3', '100', '1719173035'),
(80, 124, 'débardeur rose de enfants minimaus (fille)', 'XS', 'Salmon', '3', '100', '1719174250'),
(83, 142, 'pantalon', 'L', 'Blue', '1', '150', '1736332788'),
(84, 83, 'T-shirt en coton ultra pour hommes, paquet multiple', 'XS', 'Red', '1', '190', '1736333158');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'À propos de nous', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Bienvenue dans&nbsp; BOBO STORE !</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><br></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Notre objectif est d\'offrir à nos clients une variété des dernières nouveautés [PRODUCTS_CATEGORY_NAME]. Nous avons parcouru un long chemin, nous savons donc exactement quelle direction prendre pour vous fournir des produits de haute qualité tout en respectant votre budget. Nous offrons tout cela tout en offrant un excellent service client et un support amical.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Nous gardons toujours un œil sur les dernières tendances en matière de [NOM DE LA CATÉGORIE DE PRODUITS] et accordons la priorité aux souhaits de nos clients. C\'est pourquoi nous avons des clients satisfaits partout dans le monde et sommes ravis de faire partie de l\'industrie de [NOM DE LA CATÉGORIE DE PRODUITS].</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Les intérêts de nos clients sont toujours pour nous une priorité absolue, c\'est pourquoi nous espérons que vous apprécierez nos produits autant que nous aimons les mettre à votre disposition.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Nous veillons à ce que vous obteniez des tenues de la meilleure qualité avec une politique de retour et d\'échange sans tracas. Nous veillons à ce que ce que vous voyez soit exactement ce que vous obtenez !</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Garantie de prix bas</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Assistance client 24h/24 et 7j/7</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">E-Mail - SMS - Appel</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Nous sommes là pour vous 24h/24 et 7j/7 en ligne et par téléphone.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Taille et couleur</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Livraison internationale</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Nous serions ravis d\'étendre bientôt notre activité à l\'international.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Retours faciles</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Vous avez acheté une tenue mais souhaitez la retourner ? Nous avons une politique de retour facile de 3 jours. Veuillez nous envoyer un e-mail à support@ecommercephp.com pour plus de détails.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Des robes de rêve pour chaque occasion</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Fashionys.com propose tous ces articles soigneusement sélectionnés par nos stylistes. Si vous êtes intéressé par un modèle particulier, envoyez-nous un mail, nous ferons de notre mieux pour vous proposer la robe que vous aimez.</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Sécurité vérifiée</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Toutes nos transactions sont vérifiées par Norton et avec les plus hauts standards de sécurité. De plus, il y a beaucoup à faire également grâce à des offres et des cadeaux intéressants réguliers, alors faites passer le message et référez-nous à tous les membres de votre famille, vos amis et vos collègues et soyez récompensé pour cela. Et pour couronner le tout, vous pouvez partager votre expérience utilisateur en publiant des avis. N\'attendez plus Inscrivez-vous dès maintenant ! commencez à traquer, commencez à acheter, commencez à aimer et commencez à présenter la beauté qui est en vous.</p>\r\n', 'about-banner.jpg', 'BOBO STORE- À propos de nous', 'à propos de, à propos de nous, à propos de la mode, à propos de l\'entreprise, à propos du projet php de e-commerce', 'Notre objectif a toujours été de tirer le meilleur de vous-même. Nous avons apporté une énorme collection, que vous assistiez à une fête, à un mariage et à tous ces événements qui nécessitent une robe WOW.', 'FAQ', 'faq-banner.jpg', 'Fashionys.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contactez-nous', 'contact-banner.jpg', 'Fashionys.com - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(51, 2, 'Chad N. Carney', 'chad@mail.com', '2022-03-18 22:48:49', '', 19, '', '', '', '', 'Transaction Id: CA01010158967840\r\nTransaction Date: 3/19/2022\r\nBank: WestView Bank, CA Branch\r\nSender A/C: 102458965WV', 'Bank Deposit', 'Completed', 'Completed', '1647629329'),
(144, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:15:20', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717424120'),
(141, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:13:26', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717424006'),
(142, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:14:17', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717424057'),
(143, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:15:00', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717424100'),
(129, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:37:36', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421856'),
(119, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-01 12:26:31', '', 130, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717241191'),
(126, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:36:26', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421786'),
(127, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:36:30', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421790'),
(128, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:36:48', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421808'),
(66, 22, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-29 23:37:38', '', 167, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717022258'),
(98, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 15:45:23', '', 112, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717166723'),
(68, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 03:10:36', '', 250, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717035036'),
(69, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 03:18:08', '', 180, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717035488'),
(70, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 04:05:19', '', 279, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717038319'),
(97, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 15:43:17', '', 112, '', '', '', '', 'CA100270589600', 'Bank Deposit', 'Completed', 'Pending', '1717166597'),
(73, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 04:08:10', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717038490'),
(95, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 15:39:19', '', 230, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717166359'),
(96, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 15:42:04', '', 230, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717166524'),
(75, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 04:11:29', '', 132, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717038689'),
(140, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:13:23', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717424003'),
(77, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 12:11:55', '', 250, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717067515'),
(78, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 12:15:27', '', 250, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717067727'),
(125, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:34:05', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421645'),
(117, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-01 12:25:39', '', 82, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717241139'),
(121, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:28:32', '', 135, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421312'),
(145, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-07 13:06:14', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717761974'),
(113, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-01 03:07:18', '', 130, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717207638'),
(123, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:29:42', '', 130, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421382'),
(124, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:33:32', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421612'),
(139, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:10:43', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717423843'),
(138, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:01:32', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717423292'),
(89, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 23:32:16', '', 300, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717108336'),
(90, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 23:32:40', '', 300, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717108360'),
(91, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 23:32:44', '', 300, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717108364'),
(92, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 23:40:36', '', 250, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717108836'),
(93, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-30 23:41:15', '', 250, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717108875'),
(99, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 20:12:36', '', 250, '', '', '', '', 'Nom de la banque : barid bank\r\nNuméro de compte : CA100270589600\r\nNom de l\'agence :barid bank\r\nPays : maroc', 'Bank Deposit', 'Completed', 'Completed', '1717182756'),
(100, 26, 'asmae', 'asmae.bourbia2@gmail.com', '2024-05-31 20:15:24', '', 132, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717182924'),
(136, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:43:03', '', 82, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717422183'),
(137, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 15:00:58', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717423258'),
(135, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:41:33', '', 82, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717422093'),
(134, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:39:17', '', 82, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421957'),
(133, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:38:49', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421929'),
(132, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:38:19', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421899'),
(131, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:38:06', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421886'),
(130, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-03 14:37:41', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717421861'),
(146, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-07 13:29:59', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717763399'),
(147, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-07 13:35:11', '', 200, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1717763711'),
(153, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-22 02:51:31', '', 82, '', '', '', '', '', 'Bank Deposit', 'Completed', 'Completed', '1719021091'),
(152, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-22 02:41:10', '', 200, '', '', '', '', '', 'Bank Deposit', 'Completed', 'Pending', '1719020470'),
(162, 28, 'asmae', 'asmae1@gmail.com', '2025-01-08 11:45:58', '', 210, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1736333158'),
(155, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-23 15:48:49', '', 82, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1719154129'),
(161, 28, 'asmae', 'asmae1@gmail.com', '2025-01-08 11:39:48', '', 170, '', '', '', '', '', 'Bank Deposit', 'Completed', 'Completed', '1736332788'),
(157, 30, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-23 18:23:46', '', 150, '', '', '', '', '', 'PayPal', 'En attente', 'En attente', '1719163426'),
(158, 33, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-23 21:03:55', '', 340, '', '', '', '', '', 'Bank Deposit', 'Completed', 'Completed', '1719173035'),
(159, 35, 'asmae', 'asmae.bourbia2@gmail.com', '2024-06-23 21:24:10', '', 340, '', '', '', '', '', 'Bank Deposit', 'Completed', 'Completed', '1719174250');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_photo`
--

DROP TABLE IF EXISTS `tbl_photo`;
CREATE TABLE IF NOT EXISTS `tbl_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `total_view` int NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int NOT NULL,
  `p_is_featured` int NOT NULL,
  `p_is_active` int NOT NULL,
  `ecat_id` int NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(83, 'T-shirt en coton ultra pour hommes, paquet multiple', '260', '190', 76, 'product-featured-83.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Solides : 100 % coton ; Gris sport et chiné antique : 90 % coton, 10 % polyester ; Couleurs de sécurité et chiné : 50 % coton, 50 % polyester.</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><br></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Disponible en 2 packs et dans une large gamme de couleurs pour que vous puissiez faire le plein de votre favori.</span></span></p>', '<p><span style=\"color : rgb(15, 17, 17); font-family : \"Amazon Ember\", Arial, sans-serif; font-size : 14px;\">Style 20020-Multipack ; Solides : 100 % coton.</span><br></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Fermeture à tirer</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Lavage en machine</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Épaules descendues plus longues, emmanchures plus droites et manches plus larges et plus courtes</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Double couture aux ourlets pour le rendre construit pour durer</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Tissu épais et lourd</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font face=\"Arial\">Étiquette arrachable</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 9, 1, 1, 21),
(84, 'Robe longue ample en tricot côtelé à une épaule découpée', '510', '390', 26, 'product-featured-84.jpg', 'Une source d\'inspiration de style incontournable provenant d\'influenceurs mondiaux. Achetez des collections en édition limitée et découvrez les essentiels chics de votre garde-robe. Recherchez l\'inspiration tendance, les collaborations de marques exclusives et les conseils de style d\'experts de la part de connaisseurs.<br>', '<p style=\"list-style : disque ; overflow-wrap : break-word ; margin : 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap : break-word ; affichage : bloc ;\">86 % Tencel, 14 % Élasthanne</span></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Lavage en machine</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Staples par The Drop</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cette robe longue mesure 48\"/122 cm de long</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Coupe ample : conçue pour le confort</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Une découpe torsadée subtile ajoute une touche de romantisme à cette silhouette de robe longue fluide à une épaule minimale, confectionnée dans un tricot côtelé léger en mélange Tencel. Ceinturez la taille pour plus de forme et une touche de couleur</span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 19, 1, 1, 32),
(86, 'Amazfit GTS 3 Smart Watch for Android iPhone', '199', '179', 31, 'product-featured-86.jpg', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\">Amazfit GTS 3 is the most powerful, easy-to-use smartwatch that combining cutting-edge health &amp; fitness features and a fashionable slim &amp; light design. The smartwatch adopts a 1.75-inch ultra HD AMOLED display which has increased by 14% compared with the previous generation and boasts a 72.4% screen-to-body ratio that\'s among the highest in the smartwatch industry. Match your mood, an outfit or the occasion with a wide selection of more than 100 stylish watch faces - or even upload your own photo as the background image for true personalization. Thanks to the advanced 6PD (six photodiodes) BioTrackerâ„¢ PPG 3.0 biometric sensor, GTS 3 can track your heart rate, blood-oxygen saturation, stress level and breathing rate in one single tap of the watch, for a result in as little as 45 seconds. And Its health management features also includes in-depth monitoring of sleep &amp; sleep breathing quality and female cycle tracking. This sports watch is your next-level fitness partner with 150+ sports modes, smart recognition of 8 sports, and a water-resistance grade of 5 ATM. Comes with Alexa built-in and an offline voice assistant to liberate your hands, and supports GPS, GLONASS, Galileo, BDS and QZSS satellite navigation systems to accurately track your route. Super endurance that won\'t let you down, it can last for up to 12 days with typical usage and 20 days with battery saver mode. Compatible with Android 7.0 and above, iOS 12.0 and above device.<br></p>', '<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Alexa Built-in, GPS Fitness Sports Watch with 150 Sports Modes, 1.75â€ AMOLED Display, 12-Day Battery Life, Blood Oxygen Heart Rate Tracking</span></p>', '<ul><li>Smart 24H Monitoring of Blood-oxygen Levels</li><li>Monitor Heart Rate All Day &amp; While Swimming</li><li>A Simple Health Overview with PAI Health Assessment</li><li>In-depth Monitoring of Sleep &amp; Sleep Breathing Quality</li><li>Stress Level Monitoring &amp; Measurement</li><li>Female Cycle Tracking</li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Alexa Built in</span></li><li><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">12-Day battery life<br></span><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\"><br></span><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-weight: 700;\"><br></span><br></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>', '<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', 12, 1, 1, 3),
(87, 'Pyjamas pour garçons de camion, vêtements de nuit pour tout-petits', '200', '150', 67, 'product-featured-87.jpg', '<p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Pyjama avion :</font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\"><br></font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Large encolure ras du cou, taille élastique et matériau extensible pour un enfilage et un retrait faciles. Le matériau respirant et absorbant l\'humidité et la conception de l\'ensemble de pantalons aident les enfants à perdre de la chaleur plus rapidement et à rester au chaud par temps frais</font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\"><br></font></p><p style=\"padding: 0px; margin-bottom: 14px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#0f1111\">Superbe ensemble avec motif de dessin animé coloré, sportif et élégant, adapté aussi bien aux vêtements de nuit qu\'au quotidien, en particulier pour la journée du pyjama scolaire.</font></p>', 'T shirt Pants set for Kids Size 1Y - 14Y', '<p></p><p></p><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><ul></ul></ul><p></p><ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">ENSEMBLE DE PYJAMA SUPER COSY - Le haut et le bas sont en coton 100% naturel, extrêmement doux, confortable et restent frais en été</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MOTIF ADORABLE - Motif de dessin animé d\'avion et d\'espace super cool sur le dessus, beaucoup de petits imprimés d\'avion sur le bas, préféré des garçons</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">CONCEPTION CONSIDÉRÉE - Encolure large décontractée, étiquette de vente chaude sur le col, jambes droites détendues, permettent un mouvement sans restriction et un meilleur sommeil</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">ENTRETIEN FACILE - En tant que matériau durable et de haute qualité, il suffit de le laver en machine ou à la main à l\'eau douce</span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Bien ajusté – Grâce à son design bien ajusté et à son matériau en coton rétractable, vous feriez mieux d\'envisager une ou deux tailles plus grandes.</span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 23, 1, 1, 26),
(88, 'T-shirt', '108', '83', 59, 'product-featured-88.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Le tissu en mélange de coton ultra doux offre un confort tout au long de la journée.</span><br></p>', '<p style=\"list-style : disque ; overflow-wrap : break-word ; margin : 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap : break-word ; affichage : bloc ;\">Loose : Coupe plus ample pour un confort total.</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Le tissu en mélange de coton ultra doux offre un confort toute la journée</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Loose : coupe plus ample pour un confort complet.</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 4, 0, 1, 21),
(89, 'Pantalon de jogging en polaire pour hommes', '58', '37', 110, 'product-featured-89.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Une jambe décontractée et une taille élastique confèrent un style décontracté à ce pantalon décontracté classique.</span><br></p>', '<p style=\"list-style : disque ; overflow-wrap : break-word ; margin : 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap : break-word ; affichage : bloc ;\">Une jambe décontractée et une taille élastique à cordon de serrage confèrent un style décontracté à ce pantalon décontracté classique</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Poignets élastiques à la cheville et poches latérales dans les coutures</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Améliorer chaque jour : nous écoutons les commentaires des clients et peaufinons chaque détail pour garantir la qualité, l\'ajustement et le confort.</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 11, 1, 1, 18),
(90, 'Veste à capuche zippée en coton fin pour femme', '43', '32', 56, 'product-featured-90.jpg', '<p><span style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Fabriqué avec un coton fin de qualité, ce sweat à capuche zippé de style décontracté est parfait lorsque vous souhaitez une protection supplémentaire sans avoir une veste volumineuse ou pour suivre votre style de vie actif. Confortable, flatteur et fonctionnel. C\'est parfait lorsque vous avez besoin de faire avancer les choses.</span><br></p>', '<p>CASUAL et CONFORTABLE<bra>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Fermeture entièrement zippée avec poches</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Le sweat à capuche parfait tout au long de l\'année</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Conception particulièrement fine</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Série pull également disponible</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Le modèle mesure 5\' 7\" et mesure 34-25-36.</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 39, 0, 1, 14),
(91, 'Sweat à capuche surdimensionné en polaire pour femmes', '68', '56', 41, 'product-featured-91.jpg', '<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Silhouette surdimensionnée pour un confort maximal et une superposition de qualité</span></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Conçu pour son style de vie.</span ><br></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Silhouette surdimensionnée pour un confort maximal et une superposition de qualité</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Polaire douce et chaude pour un confort et une portabilité ultimes</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 9, 0, 1, 14),
(97, 'Women\'s Tea Length Dress with Rosette Detail (Petite & Regular)Robe longueur thé pour femmes avec détail de rosette (Petite et régulière)', '87', '67', 52, 'product-featured-97.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\">Notre robe de soirée longue en T comprend un haut extensible uni, une jupe à sequins et une ceinture à nouer qui est parfaite pour tout événement en soirée.</span><br></p>', '<p style=\"list-style : disque ; overflow-wrap : break-word ; margin : 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap : break-word ; affichage : bloc ;\">Robe midi bleue à manches courtes et col en V</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Détail de paillettes</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Ce style est disponible en taille régulière et grande sur Amazon.com</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Fermeture éclair centrale au dos</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Conception de Joanna Chen</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Robe bleue midi col V manches courtes</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 22, 1, 1, 32),
(98, 'Manteau cardigan long à revers en polaire pour femme ouvert sur le devant', '52', '43', 41, 'product-featured-98.jpg', '<h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>Détails du design : manteau d\'hiver pelucheux pour femme.</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>Matériau : 85 % coton + 15 % élasthanne. Ce manteau en peluche pour femme est 100 % neuf et de haute qualité !</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>Style : décontracté, manches longues, longueur genou, duveteux, fausse fourrure, revers, ouvert sur le devant, ce manteau en peluche pour femme peut être à la fois chic et chaud.</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>Occasion : printemps, automne, hiver, travail, rendez-vous, vacances, quotidien, à la maison. Ce manteau en fausse fourrure pour femme convient aussi bien aux occasions formelles que décontractées.</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>Le forfait comprend : 1 manteau pelucheux pour femme</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>REMARQUE : Différents types de corps peuvent avoir un ajustement différent des images du modèle, veuillez vous référer aux images des commentaires des clients pour plus d\'informations sur l\'ajustement.</b></span></h3><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; line-height: 1.255;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(15,=\"\" 17,=\"\" 17);=\"\" margin-bottom:=\"\" 6px=\"\" !important;\"=\"\"><span style=\"font-size: 17px;\"><b>VEUILLEZ NOTER : cet article est conçu pour être ouvert sur le devant et n’a pas de fermeture à bouton ou à glissière. Veuillez en tenir compte avant l\'achat.</b></span></h3>', '<p style=\"list-style : disque ; overflow-wrap : break-word ; margin : 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap : break-word ; affichage : bloc ;\">Matériau : 85 % polyester ; 15 % élasthanne. 100% neuf et de haute qualité !</span></p>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Pas de fermeture</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Matériau : 85 % polyester ; 15 % élasthanne. 100% neuf et de haute qualité !</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Style : décontracté, manches longues, longueur genou, pelucheux, fausse fourrure, revers, ouvert sur le devant.</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Occasion : printemps, automne, hiver, travail, rendez-vous, vacances, quotidien, à la maison.</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Appairer avec : Ce manteau pour femme se marie parfaitement avec une chemise/un pull et un jean/legging/pantalon palazoo en dessous et avec des bottes courtes.</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">REMARQUE : Différents types de corps peuvent avoir un ajustement différent des images du modèle, veuillez vous référer aux images des commentaires des clients pour plus d\'informations sur l\'ajustement.</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 2, 1, 1, 15),
(100, 'Pantalon de survêtement de yoga à revers long pour hommes', '105', '95', 78, 'product-featured-100.jpg', '<p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Nous vous souhaitons chaleureusement la bienvenue dans notre pantalon de yoga « long » pour hommes à revers Perfection - notre lancement de produit le plus excitant de l\'année - et élu « pantalon de yoga préféré » par les instructeurs dans le magazine YOGA JOURNAL ! (Printemps/2015)</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">C\'est FORM &amp; FASHION – vous ferez la transition vers vos courses avec style !</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Veuillez remarquer sur les photos, les panneaux en tissu dans la zone supérieure de la jambe qui permettent une expansion complète de la zone de l\'entrejambe dans TOUTES les directions. Il est tout simplement parfait pour le yoga, le Pilates, la détente, la salle de sport et les courses !</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Ceinture élastique décontractée avec cordon de serrage de 1/4\" en blanc contrastant avec embouts métalliques ultra légers (ils ne s\'accrocheront PAS dans la sécheuse).</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Les revers côtelés 2x1 au bas maintiendront votre pantalon « en place » pour ces inversions et ces repose-mains !</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Poches PROFONDES cousues sur le dessus du vêtement pour qu\'elles ne « flottent pas ». Les poches ont une profondeur de 6,5\" jusqu\'à la couture latérale afin qu\'elles puissent contenir vos gros téléphones portables !</font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\"><br></font></p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" small;\"=\"\"><font color=\"#333333\">Le passepoil côtelé s\'étend sans interruption du côté du pantalon jusqu\'à l\'arrière de l\'arrière, offrant une flexibilité et une stabilité incroyables pour les étirements et les activités rigoureuses.</font></p>', '<p style=\"padding: 0px; margin-top: 0px; rendu du texte: optimiser la lisibilité; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a -size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Pantalon de jogging à revers long</span></p >', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\" style=\"margin-right: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Proudly brought to you by 4-rth: over 10 years in business from LA, California. Designed, manufactured &amp; shipped from Los Angeles, CA.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric strips in the upper leg allow for complete expansion of the crotch area in ALL directions.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Made from our Custom MODAL French-Terry fabric from the sustainable Birch Tree wood.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cuff at the bottom is form-fitting, yet relaxed. IDEAL for all Yoga styles - Ashtanga, Bikram, Hatha, Hot - as well as Pilates, Tennis &amp; Soccer!</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MODEL: 6\'2, 175lbs. Size: M. (See Product Description for specific SIZE guidelines!) Please IGNORE the \"size chart\" above!!</span></li></ul></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 6, 0, 1, 18),
(102, 'Robe grande taille pour femmes avec détails dorés', '190', '169', 112, 'product-featured-102.jpg', '<p><span style=\"color: rgb(15, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Cette robe a tout ! Assez d\'étirement pour pardonner. Fonctionne très bien pour ma forme de sablier/poire. Les mancherons satisfont aux exigences vestimentaires conservatrices (pas de sans manches) mais fonctionnent toujours pour le printemps/été.</span><br></p>', '<p>De Calvin Klein</p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Robe chemise à manches courtes avec taille ceinturée et détails dorés</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Encolure en V fendue</font></span><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\"><font color=\"#0f1111\">Fermeture éclair apparente au centre du dos</font></span></span></li></ul>', '<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">*&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-weight: 700; text-align: right;\">Conditions</span><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">.</span><br></p>', '<p><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">Offre une fenêtre de 15 à 30 jours pendant laquelle les clients peuvent retourner un produit et demander un remboursement. Certaines entreprises prolongent cette période jusqu\'à 90 jours. Quel que soit le délai que vous choisissez, il est essentiel de s’assurer que vous disposez réellement d’un délai.</span></font><br></p>', 12, 1, 1, 32),
(103, 'T-shirt rouge de enfants (garçons)', '100', '80', 12, '103.png', '', '', '', '', '', 29, 1, 1, 26),
(104, 'T-shirt jaune de enfants (garçons)', '150', '100', 99, '104.png', '', '', '', '', '', 3, 1, 1, 26),
(105, 'T-shirt', '100', '50', 15, '105.png', '', '', '', '', '', 0, 1, 1, 26),
(106, 'T-shirt blue de enfants (garçons)', '150', '100', 15, '106.png', '', '', '', '', '', 0, 1, 1, 26),
(107, 'T-shirt vert de enfants (garçons)', '100', '90', 20, '107.png', '', '', '', '', '', 6, 1, 1, 26),
(108, 'T-shirt rouge (garçons)', '150', '85', 1, '108.png', '', '', '', '', '', 3, 1, 1, 26),
(109, 'T-shirt', '150', '100', 20, '109.png', '', '', '', '', '', 0, 1, 1, 26),
(110, 'T-shirt bleu  (garçons)', '80', '50', 2, '110.png', '', '', '', '', '', 0, 1, 1, 26),
(111, 'T-shirt', '', '150', 100, '111.png', '', '', '', '', '', 0, 0, 1, 26),
(112, 'Chemise sans manches pour enfants', '80', '50', 100, '112.png', '', '', '', '', '', 15, 0, 1, 26),
(113, 'Chemise sans manches pour enfants', '100', '80', 1, '113.png', '', '', '', '', '', 9, 1, 1, 26),
(114, 'Chemise sans manches pour enfants', '150', '80', 14, '114.png', '', '', '', '', '', 7, 0, 1, 26),
(115, 'Chemise sans manches pour enfants', '150', '80', 20, '115.png', '', '', '', '', '', 2, 0, 1, 26),
(116, 'T-shirt jaune de enfants (garçons)', '100', '80', 100, '116.png', '', '', '', '', '', 2, 0, 1, 26),
(117, 'T-shirt  (garçons)', '150', '100', 100, '117.png', '', '', '', '', '', 4, 0, 1, 26),
(118, 'T-shirt bleu de enfants (garçons)', '150', '100', 15, '118.png', '', '', '', '', '', 5, 1, 1, 26),
(119, 'T-shirt (garçons)', '100', '80', 100, '119.png', '', '', '', '', '', 0, 0, 1, 26),
(120, 'T-shirt', '', '150', 100, '120.png', '', '', '', '', '', 0, 0, 1, 26),
(121, 'T-shirt', '150', '100', 15, '121.png', '', '', '', '', '', 0, 0, 1, 26),
(122, 'T-shirt', '', '90', 100, '122.png', '', '', '', '', '', 0, 0, 1, 26),
(123, 'T-shirt', '', '150', 2, '123.png', '', '', '', '', '', 0, 0, 1, 26),
(124, 'débardeur rose de enfants minimaus (fille)', '150', '100', 93, '124.png', '', '', '', '', '', 19, 0, 1, 27),
(126, 'T-shirt  de enfants mikimaus (fille)', '100', '80', 20, '126.png', '', '', '', '', '', 0, 0, 1, 27),
(127, 'T-shirt jaune', '', '150', 100, '127.png', '', '', '', '', '', 0, 0, 1, 27),
(128, 'T-shirt', '150', '80', 15, '128.png', '', '', '', '', '', 0, 1, 1, 27),
(129, 'T-shirt', '100', '80', 20, '129.png', '', '', '', '', '', 0, 1, 1, 27),
(130, 'débardeur rose de enfants minimaus (fille)', '', '150', 66, '130.png', '', '', '', '', '', 0, 1, 1, 27),
(131, 'T-shirt rose de enfants (garçons)', '', '50', 100, '131.png', '', '', '', '', '', 0, 1, 1, 27),
(132, 'débardeur rose de enfants minimaus (fille)', '150', '80', 100, '132.png', '', '', '', '', '', 6, 1, 1, 27),
(133, 'débardeur bleu de enfants minimaus (fille)', '150', '80', 100, '133.png', '', '', '', '', '', 0, 1, 1, 27),
(134, 'débardeur de enfants minimaus (fille)', '', '150', 100, '134.png', '', '', '', '', '', 0, 0, 1, 27),
(135, 'débardeur', '', '80', 20, '135.png', '', '', '', '', '', 0, 0, 1, 27),
(136, 'débardeur rouge de enfants minimaus (fille)', '100', '50', 16, '136.png', '', '', '', '', '', 0, 0, 1, 27),
(137, 'T-shirt', '', '150', 100, '137.png', '', '', '', '', '', 0, 0, 1, 27),
(138, 'T-shirt', '', '150', 166, '138.png', '', '', '', '', '', 0, 1, 1, 27),
(139, 'T-shirt', '', '80', 100, '139.png', '', '', '', '', '', 3, 1, 1, 27),
(140, 'T-shirt', '', '80', 100, '140.png', '', '', '', '', '', 0, 1, 1, 27),
(141, 'T-shirt', '150', '80', 100, '141.png', '', '', '', '', '', 3, 1, 1, 27),
(142, 'pantalon', '', '150', 92, '142.png', '', '', '', '', '', 42, 1, 1, 16),
(143, 'pantalon', '', '150', 98, '143.png', '', '', '', '', '', 10, 1, 1, 16),
(144, 'jeans', '', '150', 100, '144.png', '', '', '', '', '', 3, 1, 1, 17),
(145, 'jeans', '', '150', 100, '145.png', '', '', '', '', '', 1, 1, 1, 17),
(146, 'short', '', '100', 100, '146.png', '', '', '', '', '', 0, 1, 1, 19),
(147, 'costume', '', '300', 100, '147.jpg', '', '', '', '', '', 0, 1, 1, 24),
(148, 'T-shirt', '', '150', 100, '148.png', '', '', '', '', '', 0, 1, 1, 23),
(149, 'short', '', '100', 100, '149.png', '', '', '', '', '', 0, 1, 1, 26),
(150, 'short', '', '109', 100, '150.png', '', '', '', '', '', 0, 1, 1, 26),
(151, 'short', '', '90', 100, '151.png', '', '', '', '', '', 0, 1, 1, 26),
(153, 'short', '', '150', 100, '153.png', '', '', '', '', '', 0, 1, 1, 26),
(154, 'short', '', '80', 100, '154.png', '', '', '', '', '', 0, 1, 1, 26),
(155, 'short', '', '90', 100, '155.png', '', '', '', '', '', 0, 1, 1, 26),
(156, 'short', '', '150', 100, '156.png', '', '', '', '', '', 0, 1, 1, 26),
(157, 'Chemise ', '', '100', 100, '157.png', '', '', '', '', '', 0, 1, 1, 26),
(158, 'Chemise ', '180', '150', 100, '158.png', '', '', '', '', '', 0, 1, 1, 26),
(159, 'sandal', '', '150', 100, '159.png', '', '', '', '', '', 0, 1, 1, 80),
(160, 'chaussure de sport', '400', '300', 100, '160.png', '', '', '', '', '', 0, 1, 1, 80),
(161, 'sandal', '250', '200', 100, '161.png', '', '', '', '', '', 0, 1, 1, 80),
(162, 'sandal', '150', '100', 100, '162.png', '', '', '', '', '', 6, 1, 1, 80),
(163, 'sandal', '150', '100', 100, '163.png', '', '', '', '', '', 0, 1, 1, 80),
(164, 'sandal', '250', '150', 100, '164.png', '', '', '', '', '', 0, 1, 1, 80),
(165, 'sandal', '250', '150', 100, '165.png', '', '', '', '', '', 0, 1, 1, 80),
(166, 'sandal', '300', '200', 100, '166.png', '', '', '', '', '', 0, 1, 1, 80),
(167, 'chaussure de sport (NIKE)', '400', '300', 100, '167.png', '', '', '', '', '', 3, 1, 1, 80),
(168, 'chaussure de sport ', '400', '300', 100, '168.png', '', '', '', '', '', 0, 1, 1, 80),
(169, 'chaussure de sport (NIKE)', '500', '400', 100, '169.png', '', '', '', '', '', 0, 1, 1, 80),
(170, 'chaussure de sport (NIKE)', '500', '400', 100, '170.png', '', '', '', '', '', 0, 1, 1, 80),
(171, 'chaussure de sport', '300', '250', 100, '171.png', '', '', '', '', '', 0, 1, 1, 80),
(172, 'chaussure de sport', '300', '200', 100, '172.png', '', '', '', '', '', 0, 1, 1, 80),
(173, 'chaussure de sport', '400', '300', 100, '173.png', '', '', '', '', '', 0, 1, 1, 80),
(174, 'chaussure de sport', '400', '250', 100, '174.png', '', '', '', '', '', 0, 1, 1, 80),
(175, 'converse ', '', '200', 100, '175.png', '', '', '', '', '', 0, 1, 1, 80),
(176, 'converse ', '250', '200', 100, '176.png', '', '', '', '', '', 0, 1, 1, 80),
(177, 'converse ', '300', '250', 100, '177.png', '', '', '', '', '', 0, 1, 1, 80),
(178, 'basket homme', '250', '200', 100, '178.png', '', '', '', '', '', 0, 1, 1, 80),
(179, 'basket homme', '', '200', 100, '179.png', '', '', '', '', '', 0, 1, 1, 80),
(180, 'basket homme', '', '200', 100, '180.png', '', '', '', '', '', 0, 1, 1, 80),
(181, 'basket homme', '', '200', 100, '181.png', '', '', '', '', '', 0, 1, 1, 80),
(182, 'ballerine homme', '', '250', 100, '182.png', '', '', '', '', '', 0, 1, 1, 80),
(183, 'ballerine homme', '', '200', 100, '183.png', '', '', '', '', '', 0, 1, 1, 80),
(184, 'ballerine homme', '250', '280', 100, '184.png', '', '', '', '', '', 0, 1, 1, 80),
(185, 'ballerine homme', '400', '300', 100, '185.png', '', '', '', '', '', 0, 1, 1, 80),
(186, 'ballerine homme', '300', '150', 100, '186.png', '', '', '', '', '', 0, 1, 1, 80),
(187, 'botte homme', '300', '200', 100, '187.png', '', '', '', '', '', 0, 1, 1, 80),
(188, 'botte homme', '300', '200', 100, '188.png', '', '', '', '', '', 0, 1, 1, 80),
(189, 'chaussures classiques', '', '500', 100, '189.png', '', '', '', '', '', 0, 1, 1, 80),
(190, 'chaussures classiques', '', '400', 100, '190.png', '', '', '', '', '', 0, 1, 1, 80),
(191, 'chaussures classiques', '600', '400', 100, '191.png', '', '', '', '', '', 0, 1, 1, 80),
(192, 'chaussures classiques', '900', '600', 100, '192.png', '', '', '', '', '', 0, 1, 1, 80),
(193, 'chaussures classiques', '600', '500', 100, '193.png', '', '', '', '', '', 0, 1, 1, 80),
(194, 'chaussures classiques', '600', '500', 100, '194.png', '', '', '', '', '', 0, 1, 1, 80),
(195, 'chaussures classiques', '', '500', 100, '195.png', '', '', '', '', '', 0, 1, 1, 80),
(196, 'chaussures classiques', '', '600', 100, '196.png', '', '', '', '', '', 0, 1, 1, 80),
(197, 'chaussures classiques', '600', '500', 100, '197.png', '', '', '', '', '', 1, 1, 1, 80),
(198, 'botte homme', '400', '300', 100, '198.png', '', '', '', '', '', 0, 1, 1, 80),
(199, 'jeans', '250', '200', 100, '199.png', '', '', '', '', '', 1, 1, 1, 17),
(200, 'jeans', '250', '200', 100, '200.png', '', '', '', '', '', 0, 1, 1, 17),
(201, 'j', '', '200', 100, '201.png', '', '', '', '', '', 2, 1, 1, 17),
(202, 'short ', '100', '150', 100, '202.png', '', '', '', '', '', 0, 1, 1, 19),
(203, 'shoes', '300', '200', 100, '203.png', '', '', '', '', '', 0, 1, 1, 19),
(204, 'converse ', '300', '200', 100, '204.png', '', '', '', '', '', 0, 1, 1, 80),
(205, 'Chemise ', '250', '100', 100, '205.png', '', '', '', '', '', 0, 1, 1, 21),
(206, 'Chemise carreaux', '250', '200', 100, '206.png', '', '', '', '', '', 0, 1, 1, 21),
(207, 'Chemise carreaux', '300', '200', 100, '207.png', '', '', '', '', '', 0, 1, 1, 21),
(208, 'manteau', '500', '400', 100, '208.png', '', '', '', '', '', 0, 1, 1, 81),
(209, 'manteau', '600', '500', 100, '209.png', '', '', '', '', '', 0, 1, 1, 81),
(210, 'T-shirt', '150', '100', 100, '210.png', '', '<p>T-shirt<br></p>', '', '', '', 0, 1, 1, 82),
(211, 'T-shirt', '150', '100', 100, '211.png', '<p>T-shirt<br></p>', '', '', '', '', 0, 1, 1, 82),
(212, 'T-shirt', '250', '200', 99, '212.png', '<p>T-shirt addidas<br></p>', '', '', '', '', 4, 1, 1, 82),
(213, 'polos', '250', '200', 100, '213.png', '<p>polos&nbsp;<br></p>', '', '', '', '', 0, 1, 1, 23),
(214, 'jaquette', '300', '200', 100, '214.png', '<p>jaquette noir<br></p>', '', '', '', '', 0, 1, 1, 81),
(215, 'jaquette', '400', '200', 100, '215.png', '<p>jaquette&nbsp; carreaux<br></p>', '', '', '', '', 0, 1, 1, 81),
(216, 'jaquette ', '500', '300', 100, '216.png', '<p>jaquette marrons<br></p>', '', '', '', '', 0, 1, 1, 81),
(217, 'jaquette caraux', '300', '250', 100, '217.png', '<p>jaquette&nbsp;caraux<br></p>', '', '', '', '', 0, 1, 1, 81),
(218, 'jaquette jean', '400', '300', 100, '218.png', '<p>jaquette jean<br></p>', '', '', '', '', 0, 1, 1, 81),
(219, 'costume', '800', '600', 100, '219.png', '', '', '', '', '', 0, 1, 1, 24),
(220, 'costume', '900', '800', 100, '220.png', '<p>costume<br></p>', '', '', '', '', 0, 1, 1, 24),
(221, 'sandal noir', '250', '200', 100, '221.png', '', '', '<p>sandal noir<br></p>', '', '', 0, 1, 1, 83),
(222, 'sandal silver', '', '180', 100, '222.png', '<p>sandal silver<br></p>', '', '', '', '', 3, 1, 1, 83),
(223, 'sandal silver', '250', '200', 100, '223.png', '<p>sandal silver<br></p>', '', '', '', '', 0, 1, 1, 83),
(224, 'sandal silver', '', '200', 100, '224.png', '<p>sandal silver<br></p>', '', '', '', '', 0, 1, 1, 83);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(225, 'sandal silver', '250', '200', 100, '225.png', '<p>sandal silver<br></p>', '', '', '', '', 0, 1, 1, 83),
(226, 'sandal rouge', '', '250', 100, '226.png', '<p>sandal rouge<br></p>', '', '', '', '', 0, 1, 1, 83),
(227, 'sandal silver', '250', '200', 100, '227.png', '<p>sandal silver<br></p>', '', '', '', '', 0, 1, 1, 85),
(228, 'sandal noir', '300', '200', 100, '228.png', '', '', '', '', '', 0, 1, 1, 85),
(229, 'talons noir', '300', '200', 100, '229.png', '<p>sandal noir<br></p>', '', '', '', '', 0, 1, 1, 85),
(230, 'sandal _talon ', '250', '200', 100, '230.png', '<p>sandal&nbsp;<br></p>', '', '', '', '', 0, 1, 1, 85),
(231, 'talons noir', '300', '200', 100, '231.png', '<p>talons noir<br></p>', '', '', '', '', 0, 1, 1, 85),
(232, 'talon gold', '300', '200', 100, '232.png', '<p>talon gold<br></p>', '', '', '', '', 0, 1, 1, 85),
(233, 'talon noir', '', '300', 100, '233.png', '<p>talon&nbsp;<br></p>', '', '', '', '', 0, 1, 1, 85),
(234, 'talon silver', '250', '200', 100, '234.png', '<p>talon&nbsp;<br></p>', '', '', '', '', 0, 1, 1, 85),
(235, 'talon silver', '450', '300', 100, '235.png', '<p>talon silver<br></p>', '', '', '', '', 0, 1, 1, 85),
(236, 'talon gold', '300', '200', 100, '236.png', '<p>talon gold<br></p>', '', '', '', '', 0, 1, 1, 85),
(237, 'manteau', '400', '300', 100, '237.png', '', '', '', '', '', 6, 1, 1, 15),
(238, 'jaquette simple gris', '250', '200', 100, '238.png', '', '<p>jaquette simple<br></p>', '', '', '', 3, 1, 1, 15),
(239, 'jaquette simple ', '300', '200', 100, '239.png', '<p>jaquette simple<br></p>', '', '', '', '', 0, 1, 1, 15),
(240, 'manteau', '250', '200', 100, '240.png', '<p>manteau<br></p>', '', '', '', '', 0, 1, 1, 15),
(241, 'manteau', '500', '400', 100, '241.png', '<p>manteau<br></p>', '', '', '', '', 3, 1, 1, 15),
(242, 'claquette', '150', '100', 100, '242.png', '<p>claquette<br></p>', '', '', '', '', 3, 1, 1, 87),
(243, 'claquette', '150', '100', 100, '243.png', '<p>claquette<br></p>', '', '', '', '', 0, 1, 1, 87),
(244, 'claquette', '150', '100', 100, '244.png', '<p>claquette<br></p>', '', '', '', '', 0, 1, 1, 87),
(245, 'claquette', '150', '100', 100, '245.png', '<p>claquette<br></p>', '', '', '', '', 3, 1, 1, 87),
(246, 'claquette', '150', '100', 101, '246.png', '<p>claquette<br></p>', '', '', '', '', 13, 1, 1, 87);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
CREATE TABLE IF NOT EXISTS `tbl_product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(268, 1, 103),
(269, 2, 103),
(270, 3, 103),
(271, 3, 104),
(272, 4, 104),
(273, 3, 106),
(274, 5, 107),
(275, 1, 108),
(276, 1, 109),
(277, 3, 110),
(278, 1, 111),
(279, 4, 112),
(283, 7, 114),
(284, 3, 115),
(285, 4, 116),
(286, 3, 117),
(288, 3, 119),
(289, 5, 119),
(290, 1, 120),
(291, 4, 121),
(292, 1, 122),
(293, 4, 123),
(294, 15, 124),
(296, 3, 126),
(297, 6, 126),
(298, 4, 127),
(306, 6, 134),
(307, 4, 135),
(308, 1, 136),
(309, 3, 137),
(319, 1, 141),
(320, 3, 147),
(321, 3, 146),
(322, 3, 145),
(324, 3, 143),
(325, 3, 142),
(326, 6, 140),
(327, 1, 139),
(328, 1, 138),
(329, 3, 128),
(330, 1, 129),
(331, 3, 129),
(332, 26, 130),
(345, 1, 131),
(346, 1, 132),
(348, 1, 133),
(349, 3, 118),
(350, 6, 148),
(351, 3, 149),
(352, 3, 150),
(353, 3, 151),
(354, 3, 153),
(355, 3, 154),
(356, 3, 155),
(357, 2, 156),
(358, 2, 157),
(359, 2, 158),
(360, 2, 159),
(361, 5, 159),
(362, 6, 160),
(363, 11, 160),
(364, 2, 161),
(365, 2, 162),
(366, 4, 162),
(367, 1, 163),
(368, 2, 163),
(369, 2, 164),
(370, 2, 165),
(371, 17, 165),
(372, 8, 166),
(373, 6, 167),
(374, 8, 168),
(375, 6, 169),
(376, 2, 170),
(377, 3, 171),
(378, 8, 172),
(379, 6, 173),
(380, 2, 174),
(381, 2, 175),
(382, 1, 176),
(383, 2, 176),
(384, 2, 177),
(385, 8, 178),
(386, 3, 179),
(387, 6, 180),
(388, 3, 181),
(389, 1, 182),
(390, 17, 183),
(391, 1, 184),
(392, 14, 185),
(393, 1, 186),
(394, 17, 186),
(395, 2, 187),
(396, 8, 188),
(397, 17, 188),
(398, 2, 189),
(399, 2, 190),
(400, 2, 191),
(401, 8, 192),
(402, 2, 193),
(403, 17, 194),
(404, 8, 195),
(405, 5, 196),
(406, 2, 197),
(407, 8, 198),
(408, 3, 199),
(409, 3, 200),
(410, 3, 201),
(411, 8, 202),
(412, 3, 203),
(413, 3, 204),
(414, 6, 205),
(415, 1, 206),
(416, 3, 207),
(417, 8, 208),
(418, 17, 209),
(419, 2, 210),
(420, 6, 211),
(421, 6, 212),
(422, 6, 213),
(423, 2, 214),
(424, 2, 215),
(425, 8, 216),
(426, 2, 217),
(427, 3, 218),
(429, 2, 219),
(430, 5, 220),
(431, 2, 221),
(432, 20, 222),
(433, 20, 223),
(434, 20, 224),
(435, 20, 225),
(436, 1, 226),
(437, 20, 227),
(438, 2, 228),
(439, 2, 229),
(440, 2, 230),
(441, 2, 231),
(442, 16, 232),
(443, 2, 233),
(444, 20, 234),
(445, 20, 235),
(446, 16, 236),
(447, 4, 237),
(448, 2, 102),
(449, 1, 83),
(450, 2, 83),
(451, 3, 83),
(452, 4, 83),
(453, 5, 83),
(454, 6, 83),
(455, 8, 83),
(456, 14, 83),
(457, 17, 83),
(458, 18, 83),
(459, 2, 84),
(460, 3, 87),
(461, 17, 87),
(465, 12, 89),
(466, 2, 90),
(467, 6, 90),
(468, 25, 90),
(469, 27, 90),
(470, 28, 90),
(472, 27, 91),
(473, 25, 97),
(475, 5, 98),
(476, 14, 100),
(477, 17, 238),
(478, 15, 239),
(479, 17, 240),
(480, 17, 241),
(481, 3, 242),
(482, 14, 243),
(483, 5, 244),
(484, 3, 245),
(489, 11, 246),
(496, 3, 113),
(497, 4, 113),
(498, 5, 113),
(499, 2, 247),
(500, 7, 247),
(501, 7, 255),
(502, 17, 256),
(503, 2, 88),
(504, 8, 88),
(505, 17, 88);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_photo`
--

DROP TABLE IF EXISTS `tbl_product_photo`;
CREATE TABLE IF NOT EXISTS `tbl_product_photo` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(132, '132.jpg', 102);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product_size`
--

DROP TABLE IF EXISTS `tbl_product_size`;
CREATE TABLE IF NOT EXISTS `tbl_product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1039 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(305, 26, 86),
(448, 1, 103),
(449, 2, 103),
(450, 3, 103),
(451, 1, 104),
(452, 2, 104),
(453, 3, 104),
(454, 1, 105),
(455, 2, 105),
(456, 3, 105),
(457, 1, 106),
(458, 2, 106),
(459, 3, 106),
(460, 1, 107),
(461, 2, 107),
(462, 2, 108),
(463, 3, 108),
(464, 1, 109),
(465, 2, 109),
(466, 3, 109),
(467, 1, 110),
(468, 2, 110),
(469, 3, 110),
(470, 1, 111),
(471, 2, 111),
(472, 3, 111),
(473, 1, 112),
(474, 2, 112),
(478, 1, 114),
(479, 2, 114),
(480, 3, 114),
(481, 1, 115),
(482, 2, 115),
(483, 3, 115),
(484, 1, 116),
(485, 2, 116),
(486, 3, 116),
(487, 1, 117),
(488, 2, 117),
(492, 1, 119),
(493, 2, 119),
(494, 3, 119),
(495, 1, 120),
(496, 2, 120),
(497, 3, 120),
(498, 1, 121),
(499, 2, 121),
(500, 3, 121),
(501, 1, 122),
(502, 2, 122),
(503, 1, 123),
(504, 2, 123),
(505, 3, 123),
(506, 1, 124),
(507, 2, 124),
(508, 3, 124),
(510, 1, 126),
(511, 2, 126),
(512, 1, 127),
(513, 2, 127),
(528, 1, 134),
(529, 1, 135),
(530, 2, 135),
(531, 1, 136),
(532, 2, 136),
(533, 3, 136),
(534, 1, 137),
(535, 2, 137),
(554, 1, 141),
(555, 2, 141),
(556, 4, 147),
(557, 5, 147),
(558, 4, 146),
(559, 5, 146),
(560, 5, 145),
(561, 6, 145),
(562, 1, 144),
(563, 2, 144),
(564, 3, 144),
(566, 5, 143),
(567, 4, 142),
(568, 5, 142),
(569, 1, 140),
(570, 2, 140),
(571, 1, 139),
(572, 1, 138),
(573, 1, 128),
(574, 2, 128),
(575, 1, 129),
(576, 2, 129),
(577, 3, 129),
(578, 1, 130),
(579, 2, 130),
(580, 3, 130),
(599, 1, 131),
(600, 2, 131),
(601, 1, 132),
(602, 2, 132),
(605, 1, 133),
(606, 2, 133),
(607, 1, 118),
(608, 2, 118),
(609, 3, 118),
(610, 1, 148),
(611, 1, 149),
(612, 2, 149),
(613, 1, 150),
(614, 2, 150),
(615, 1, 151),
(616, 2, 151),
(617, 3, 151),
(618, 1, 153),
(619, 2, 153),
(620, 1, 154),
(621, 2, 154),
(622, 1, 155),
(623, 2, 155),
(624, 1, 156),
(625, 2, 156),
(626, 1, 157),
(627, 2, 157),
(628, 3, 157),
(629, 1, 158),
(630, 2, 158),
(631, 3, 158),
(632, 1, 159),
(633, 2, 159),
(634, 3, 159),
(635, 17, 160),
(636, 21, 160),
(637, 22, 160),
(638, 18, 161),
(639, 20, 161),
(640, 21, 161),
(641, 17, 162),
(642, 18, 162),
(643, 20, 162),
(644, 21, 162),
(645, 14, 163),
(646, 17, 163),
(647, 20, 163),
(648, 15, 164),
(649, 16, 164),
(650, 17, 164),
(651, 17, 165),
(652, 19, 165),
(653, 20, 165),
(654, 16, 166),
(655, 17, 166),
(656, 18, 166),
(657, 20, 166),
(658, 21, 166),
(659, 18, 167),
(660, 19, 167),
(661, 20, 167),
(662, 19, 168),
(663, 20, 168),
(664, 21, 168),
(665, 22, 168),
(666, 19, 169),
(667, 20, 169),
(668, 21, 169),
(669, 18, 170),
(670, 19, 170),
(671, 20, 170),
(672, 21, 170),
(673, 19, 171),
(674, 20, 171),
(675, 21, 171),
(676, 17, 172),
(677, 18, 172),
(678, 19, 172),
(679, 20, 172),
(680, 17, 173),
(681, 18, 173),
(682, 19, 173),
(683, 20, 173),
(684, 19, 174),
(685, 20, 174),
(686, 21, 174),
(687, 22, 174),
(688, 23, 174),
(689, 24, 174),
(690, 14, 175),
(691, 15, 175),
(692, 16, 175),
(693, 14, 176),
(694, 15, 176),
(695, 16, 176),
(696, 22, 176),
(697, 14, 177),
(698, 15, 177),
(699, 16, 177),
(700, 17, 177),
(701, 14, 178),
(702, 15, 178),
(703, 16, 178),
(704, 14, 179),
(705, 15, 179),
(706, 16, 179),
(707, 14, 180),
(708, 15, 180),
(709, 16, 180),
(710, 17, 180),
(711, 27, 181),
(712, 14, 182),
(713, 15, 182),
(714, 16, 182),
(715, 14, 183),
(716, 15, 183),
(717, 16, 183),
(718, 14, 184),
(719, 15, 184),
(720, 16, 184),
(721, 14, 185),
(722, 15, 185),
(723, 16, 185),
(724, 26, 186),
(725, 16, 187),
(726, 17, 187),
(727, 18, 187),
(728, 19, 187),
(729, 14, 188),
(730, 15, 188),
(731, 16, 188),
(732, 17, 188),
(733, 18, 188),
(734, 16, 189),
(735, 17, 189),
(736, 18, 189),
(737, 19, 189),
(738, 20, 189),
(739, 21, 189),
(740, 20, 190),
(741, 21, 190),
(742, 22, 190),
(743, 18, 191),
(744, 19, 191),
(745, 20, 191),
(746, 21, 191),
(747, 22, 191),
(748, 20, 192),
(749, 21, 192),
(750, 22, 192),
(751, 17, 193),
(752, 18, 193),
(753, 19, 193),
(754, 20, 193),
(755, 20, 194),
(756, 21, 194),
(757, 22, 194),
(758, 23, 194),
(759, 21, 195),
(760, 22, 195),
(761, 23, 195),
(762, 24, 195),
(763, 19, 196),
(764, 20, 196),
(765, 21, 196),
(766, 22, 196),
(767, 18, 197),
(768, 19, 197),
(769, 20, 197),
(770, 21, 197),
(771, 21, 198),
(772, 22, 198),
(773, 23, 198),
(774, 4, 199),
(775, 5, 199),
(776, 6, 199),
(777, 3, 200),
(778, 4, 200),
(779, 5, 200),
(780, 6, 200),
(781, 4, 201),
(782, 5, 201),
(783, 6, 201),
(784, 3, 202),
(785, 4, 202),
(786, 5, 202),
(787, 6, 202),
(788, 3, 203),
(789, 4, 203),
(790, 5, 203),
(791, 16, 204),
(792, 17, 204),
(793, 18, 204),
(794, 3, 205),
(795, 4, 205),
(796, 3, 206),
(797, 4, 206),
(798, 5, 206),
(799, 3, 207),
(800, 4, 207),
(801, 5, 207),
(802, 4, 208),
(803, 5, 208),
(804, 6, 208),
(805, 4, 209),
(806, 5, 209),
(807, 6, 209),
(808, 3, 210),
(809, 4, 210),
(810, 5, 210),
(811, 3, 211),
(812, 4, 211),
(813, 5, 211),
(814, 3, 212),
(815, 4, 212),
(816, 5, 212),
(817, 3, 213),
(818, 4, 213),
(819, 5, 213),
(820, 2, 214),
(821, 3, 214),
(822, 4, 214),
(823, 5, 214),
(824, 6, 214),
(825, 3, 215),
(826, 4, 215),
(827, 5, 215),
(828, 4, 216),
(829, 5, 216),
(830, 6, 216),
(831, 3, 217),
(832, 4, 217),
(833, 5, 217),
(834, 4, 218),
(835, 5, 218),
(836, 6, 218),
(840, 3, 219),
(841, 4, 219),
(842, 5, 219),
(843, 4, 220),
(844, 5, 220),
(845, 6, 220),
(846, 12, 221),
(847, 13, 221),
(848, 14, 221),
(849, 15, 221),
(850, 13, 222),
(851, 14, 222),
(852, 15, 222),
(853, 13, 223),
(854, 14, 223),
(855, 15, 223),
(856, 13, 224),
(857, 14, 224),
(858, 15, 224),
(859, 16, 224),
(860, 13, 225),
(861, 14, 225),
(862, 15, 225),
(863, 13, 226),
(864, 14, 226),
(865, 15, 226),
(866, 13, 227),
(867, 14, 227),
(868, 15, 227),
(869, 16, 227),
(870, 14, 228),
(871, 15, 228),
(872, 16, 228),
(873, 12, 229),
(874, 13, 229),
(875, 14, 229),
(876, 15, 229),
(877, 13, 230),
(878, 14, 230),
(879, 15, 230),
(880, 13, 231),
(881, 14, 231),
(882, 15, 231),
(883, 16, 231),
(884, 12, 232),
(885, 13, 232),
(886, 14, 232),
(887, 15, 232),
(888, 15, 233),
(889, 16, 233),
(890, 17, 233),
(891, 14, 234),
(892, 15, 234),
(893, 16, 234),
(894, 17, 234),
(895, 13, 235),
(896, 14, 235),
(897, 15, 235),
(898, 15, 236),
(899, 16, 236),
(900, 17, 236),
(901, 3, 237),
(902, 4, 237),
(903, 5, 237),
(904, 42, 102),
(905, 43, 102),
(906, 44, 102),
(907, 45, 102),
(908, 46, 102),
(909, 47, 102),
(910, 1, 83),
(911, 2, 83),
(912, 3, 83),
(913, 4, 83),
(914, 5, 83),
(915, 6, 83),
(916, 7, 83),
(917, 2, 84),
(918, 3, 84),
(919, 4, 84),
(920, 5, 84),
(921, 6, 84),
(922, 29, 87),
(923, 30, 87),
(924, 31, 87),
(925, 32, 87),
(926, 33, 87),
(927, 34, 87),
(928, 35, 87),
(929, 36, 87),
(930, 37, 87),
(931, 38, 87),
(932, 39, 87),
(938, 3, 89),
(939, 4, 89),
(940, 5, 89),
(941, 6, 89),
(942, 7, 89),
(943, 1, 90),
(944, 2, 90),
(945, 3, 90),
(946, 4, 90),
(952, 2, 91),
(953, 3, 91),
(954, 4, 91),
(955, 5, 91),
(956, 6, 91),
(957, 8, 97),
(958, 9, 97),
(959, 10, 97),
(960, 11, 97),
(961, 12, 97),
(962, 13, 97),
(963, 14, 97),
(964, 15, 97),
(965, 16, 97),
(966, 17, 97),
(967, 18, 97),
(968, 19, 97),
(973, 4, 98),
(974, 5, 98),
(975, 6, 98),
(976, 7, 98),
(977, 3, 100),
(978, 4, 100),
(979, 5, 100),
(980, 6, 100),
(981, 3, 238),
(982, 4, 238),
(983, 5, 238),
(984, 3, 239),
(985, 4, 239),
(986, 5, 239),
(987, 3, 240),
(988, 4, 240),
(989, 5, 240),
(990, 3, 241),
(991, 4, 241),
(992, 5, 241),
(993, 36, 242),
(994, 37, 243),
(995, 35, 244),
(996, 9, 245),
(997, 10, 245),
(998, 11, 245),
(1015, 8, 246),
(1016, 9, 246),
(1017, 10, 246),
(1018, 11, 246),
(1025, 1, 113),
(1026, 2, 113),
(1027, 3, 113),
(1028, 4, 247),
(1029, 5, 248),
(1030, 5, 255),
(1031, 6, 255),
(1032, 5, 256),
(1033, 6, 256),
(1034, 3, 88),
(1035, 4, 88),
(1036, 5, 88),
(1037, 6, 88),
(1038, 7, 88);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rt_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `cust_id` int NOT NULL,
  `comment` text NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rt_id`, `p_id`, `cust_id`, `comment`, `rating`) VALUES
(1, 118, 26, 'l', 3),
(2, 246, 28, 'parfait', 3),
(11, 124, 35, 'belle', 3),
(12, 116, 36, 'j adore', 5);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE IF NOT EXISTS `tbl_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Retours faciles', 'Renvoyez n’importe quel article avant 15 jours !', 'service-5.png'),
(6, 'Livraison gratuite', 'Profitez de la livraison gratuite aux États-Unis.', 'service-6.png'),
(7, 'Expédition rapide', 'Les articles sont expédiés sous 24 heures.', 'service-7.png'),
(8, 'Satisfaction garantie', 'Nous vous garantissons notre satisfaction de qualité.', 'service-8.png'),
(9, 'Paiement sécurisé', 'Offrir des options de paiement sécurisées pour tous', 'service-9.png'),
(10, 'Garantie de remboursement', 'Offrez une garantie de remboursement sur nos produits', 'service-10.png');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int NOT NULL,
  `total_popular_post_footer` int NOT NULL,
  `total_recent_post_sidebar` int NOT NULL,
  `total_popular_post_sidebar` int NOT NULL,
  `total_featured_product_home` int NOT NULL,
  `total_latest_product_home` int NOT NULL,
  `total_popular_product_home` int NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int NOT NULL,
  `home_welcome_on_off` int NOT NULL,
  `home_featured_product_on_off` int NOT NULL,
  `home_latest_product_on_off` int NOT NULL,
  `home_popular_product_on_off` int NOT NULL,
  `home_testimonial_on_off` int NOT NULL,
  `home_blog_on_off` int NOT NULL,
  `newsletter_on_off` int NOT NULL,
  `ads_above_welcome_on_off` int NOT NULL,
  `ads_above_featured_product_on_off` int NOT NULL,
  `ads_above_latest_product_on_off` int NOT NULL,
  `ads_above_popular_product_on_off` int NOT NULL,
  `ads_above_testimonial_on_off` int NOT NULL,
  `ads_category_sidebar_on_off` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright Â© 2024 - BOBO STORE - Développé par Asmae Bourbia ', 'sale ', 'asmae.bourbia2@gmail.com', '+212 684356672', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d105885.07179688543!2d-6.939664187891466!3d33.96919139233949!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda76b871f50c5c1%3A0x7ac946ed7408076b!2sRabat!5e0!3m2!1sfr!2sma!4v1717007546904!5m2!1sfr!2sma\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'asmae.bourbia2@gmail.com', 'Message email d\'un visiteur à partir d\'un site web bobo store', 'Merci d\'avoir envoyé votre courriel. Nous vous contacterons dans les plus brefs délais', 'Un lien de confirmation est envoyé à votre adresse email . Vous y trouverez les informations relatives à la réinitialisation du mot de passe.', 4, 4, 5, 5, 5, 6, 8, 'BoBo Store', 'online fashion store, garments shop, online garments', 'ecommerce php project with mysql database', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Produits populaires', '            ', 'Nouveaux produits', '    ', 'Produits populaires', 'Produits populaires basés sur le choix des clients', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Inscrivez-vous à notre newsletter pour les dernières promotions et réductions.', 'asmae.bourbia2@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Nom de la banque : barid bank\r\nNuméro de compte : *************\r\nNom de l\'agence :barid bank\r\nPays : maroc', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shipping_cost`
--

DROP TABLE IF EXISTS `tbl_shipping_cost`;
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost` (
  `shipping_cost_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0'),
(5, 149, '80'),
(6, 276, '20'),
(7, 254, '40'),
(8, 259, '40'),
(9, 250, '20'),
(10, 249, '20'),
(11, 290, '100'),
(12, 246, '60');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_shipping_cost_all`
--

DROP TABLE IF EXISTS `tbl_shipping_cost_all`;
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost_all` (
  `sca_id` int NOT NULL AUTO_INCREMENT,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '50');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_size`
--

DROP TABLE IF EXISTS `tbl_size`;
CREATE TABLE IF NOT EXISTS `tbl_size` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'Bienvenue dans la boutique BOBO.', 'Achetez en ligne les derniers Articles pour femmes', 'Voir les Articles pour femmes', 'product-category.php?id=2&type=top-category', 'Center'),
(2, 'slider-2.jpg', 'Remise sur tous les produits', 'Bon prix pour tous les produit', 'En savoir plus', '#', 'Center'),
(3, 'slider-3.jpg', 'Assistance client 24 heures sur 24', '', 'En savoir plus', '#', 'Right');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_social`
--

DROP TABLE IF EXISTS `tbl_social`;
CREATE TABLE IF NOT EXISTS `tbl_social` (
  `social_id` int NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_subscriber`
--

DROP TABLE IF EXISTS `tbl_subscriber`;
CREATE TABLE IF NOT EXISTS `tbl_subscriber` (
  `subs_id` int NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int NOT NULL,
  PRIMARY KEY (`subs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '2022-03-20', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '2022-03-20', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '2022-03-20', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '2022-03-20', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '2022-03-20', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1),
(8, 'asmae.bourbia2@gmail.com', '2024-05-30', '2024-05-30 22:32:17', '8329e475636c398f5fafe7d88cdf2098', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_top_category`
--

DROP TABLE IF EXISTS `tbl_top_category`;
CREATE TABLE IF NOT EXISTS `tbl_top_category` (
  `tcat_id` int NOT NULL AUTO_INCREMENT,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int NOT NULL,
  PRIMARY KEY (`tcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Hommes', 1),
(2, 'Femmes', 1),
(3, 'Enfants', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrateur', 'admin@mail.com', '0684357762', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE IF NOT EXISTS `tbl_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
