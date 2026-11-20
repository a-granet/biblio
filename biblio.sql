-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 nov. 2026 à 09:43
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `biblio`
--
CREATE DATABASE IF NOT EXISTS `biblio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `biblio`;

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

DROP TABLE IF EXISTS `livres`;
CREATE TABLE IF NOT EXISTS `livres` (
  `id` int NOT NULL,
  `titre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proprio` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `genre`, `proprio`) VALUES
(0, 'Les misérables', 'Hugo', 'Drame', 'Jérôme'),
(1, 'Les rivières pourpres', 'Grangé', 'Policier', 'Jérôme'),
(2, 'Millenium', 'Larsson', 'Policier', 'Lydia'),
(3, 'Harry Potter', 'Rowling', 'Fantastique', 'Lydia'),
(4, 'Le Comte de Monte-Cristo', 'Alexandre Dumas', 'Aventure', 'Jérôme'),
(5, 'L’Étranger', 'Albert Camus', 'Roman', 'Lydia'),
(6, 'Notre-Dame de Paris', 'Victor Hugo', 'Roman historique', 'Burri'),
(7, 'Germinal', 'Émile Zola', 'Roman', 'Jérôme'),
(8, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 'Conte', 'Lydia'),
(9, 'Vingt mille lieues sous les mers', 'Jules Verne', 'Aventure', 'Burri'),
(10, 'Madame Bovary', 'Gustave Flaubert', 'Roman', 'Jérôme'),
(11, 'Les Fleurs du mal', 'Charles Baudelaire', 'Poésie', 'Lydia'),
(12, 'Le Rouge et le Noir', 'Stendhal', 'Roman', 'Burri'),
(13, 'La Peste', 'Albert Camus', 'Roman', 'Jérôme'),
(14, 'Les Trois Mousquetaires', 'Alexandre Dumas', 'Aventure', 'Lydia'),
(15, 'Le Tour du monde en quatre-vingts jours', 'Jules Verne', 'Aventure', 'Burri'),
(16, 'Candide', 'Voltaire', 'Conte philosophique', 'Jérôme'),
(17, 'Bel-Ami', 'Guy de Maupassant', 'Roman', 'Lydia'),
(18, 'L’Assommoir', 'Émile Zola', 'Roman', 'Burri'),
(19, 'Le Horla', 'Guy de Maupassant', 'Fantastique', 'Jérôme'),
(20, 'Les Contemplations', 'Victor Hugo', 'Poésie', 'Lydia'),
(21, 'Voyage au centre de la Terre', 'Jules Verne', 'Aventure', 'Burri'),
(22, 'La Princesse de Clèves', 'Madame de La Fayette', 'Roman', 'Jérôme'),
(23, 'Le Grand Meaulnes', 'Alain-Fournier', 'Roman', 'Lydia'),
(24, 'Cyrano de Bergerac', 'Edmond Rostand', 'Théâtre', 'Burri'),
(25, 'L’Île au trésor', 'Robert Louis Stevenson', 'Aventure', 'Jérôme'),
(26, 'Jane Eyre', 'Charlotte Brontë', 'Roman', 'Lydia'),
(27, 'Frankenstein', 'Mary Shelley', 'Fantastique', 'Burri'),
(28, 'Dracula', 'Bram Stoker', 'Fantastique', 'Jérôme'),
(29, 'Le Portrait de Dorian Gray', 'Oscar Wilde', 'Fantastique', 'Lydia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
