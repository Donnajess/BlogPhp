
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 27 Janvier 2014 à 18:22
-- Version du serveur: 5.1.66
-- Version de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `u116958675_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `date`) VALUES
(1, 'Siquis enim', 'Siquis enim militarium vel honoratorum aut nobilis inter suos rumore \r\ntenus esset insimulatus fovisse partes hostiles, iniecto onere catenarum in modum beluae trahebatur et inimico urgente vel nullo, quasi sufficiente hoc solo, quod nominatus esset aut delatus aut postulatus, capite vel multatione bonorum aut insulari solitudine damnabatur.', '0000-00-00 00:00:00'),
(2, 'Adolescebat', 'Adolescebat autem obstinatum propositum erga haec et similia multa scrutanda, stimulos admovente regina, quae abrupte mariti fortunas trudebat in exitium praeceps, cum eum potius lenitate feminea ad veritatis humanitatisque viam reducere utilia suadendo deberet, ut in Gordianorum actibus factitasse Maximini truculenti illius imperatoris rettulimus coniugem.', '0000-00-00 00:00:00'),
(3, 'Etiam vel tellus', 'Etiam vel tellus eu ligula vestibulum convallis. Proin non laoreet erat, eu suscipit mauris. Praesent varius pharetra quam non scelerisque. Integer condimentum leo ac mattis varius. Cras congue quam tortor. Phasellus molestie felis urna, porttitor blandit eros imperdiet a. Quisque tempus ullamcorper odio. Nunc sollicitudin sollicitudin ultrices. Pellentesque fringilla dapibus velit in pretium. Sed vel mi enim. Suspendisse elementum, turpis id laoreet pharetra, nulla est eleifend dui, quis bibendum ipsum ligula in purus. Vivamus elementum diam dolor. Nunc ligula odio, condimentum et aliquam quis, tempus nec augue.\r\n\r\nMaecenas iaculis orci ut turpis sagittis bibendum. In cursus tellus nec metus dignissim tristique. Sed tempor turpis sodales pellentesque commodo. Praesent cursus mauris eu leo sagittis imperdiet. Phasellus mollis sit amet nisi ut semper. Fusce mollis blandit tristique.', '0000-00-00 00:00:00'),
(8, '4Ã¨me article', 'Voici le 4Ã¨me article', '0000-00-00 00:00:00'),
(9, '5Ã¨me article', 'Voici le 5Ã¨me article', '0000-00-00 00:00:00'),
(16, 'Nouvel article', 'Voici un nouvel article...', '0000-00-00 00:00:00'),
(17, '8Ã¨me article', 'Voici le 8Ã¨me article', '0000-00-00 00:00:00'),
(61, 'Test', 'Tetstttttt', '2014-01-27 17:54:14');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) NOT NULL,
  `mdp` varchar(70) NOT NULL,
  `sid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `email`, `mdp`, `sid`) VALUES
(1, 'test@test.fr', 'test', '6d1790d639a10fc4a94995d8066f4efd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
