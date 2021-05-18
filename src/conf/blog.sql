-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 19 mai 2021 à 00:51
-- Version du serveur :  8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

CREATE TABLE `billets` (
  `id` int NOT NULL,
  `titre` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `body` text,
  `cat_id` int DEFAULT '1',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `billets`
--

INSERT INTO `billets` (`id`, `titre`, `body`, `cat_id`, `date`) VALUES
(1, 'Titanic', 'c\'est l\'histoire d\'un gros bateau qui croise un glaçon', 2, '2014-11-20'),
(2, 'Concert : nolwenn live', 'c\'est d\'la balle, Ca vaut bien Mick Jagger et Iggy Stooges réunis.\r\nAngus Young doit l\'ecouter en boucle...', 3, '2014-11-20'),
(5, 'Stone Ocean, la sixième partie de Jojo&#39;s Bizarre Adventure, adapté en anime ', '  Aujourd&#39;hui a eu lieu l&#39;événement en ligne Jojo&#39;s Bizarre Adventure The Animation Special Event ~ JOESTAR the Inherited Soul, revenant sur l&#39;adaptation animée du manga phare de Hirohiko Araki. A l&#39;issue de la prestation, le nouveau chapitre de l&#39;anime a été annoncé : La très attendue adaptation de Stone Ocean, la sixième partie du manga.\r\n\r\nSi le staff principal de la série Jojo&#39;s Bizarre Adventure : Stone Ocean et sa date de diffusion ne sont pas encore connus, la voix qui campera l&#39;héroïne Jolyne Kujo s&#39;est présentée sur la scène de l&#39;événement : Ai Fairouz, seiyû japano-égyptienne. Cette dernière s&#39;est exprimée sur son casting. Fan de Jojo&#39;s Bizarre Adventure, le projet est ce qui l&#39;a poussé vers le métier de comédienne, précisant qu&#39;elle voue une admiration forte pour Jolyne depuis son adolescence.\r\n\r\nEn attendant davantage d&#39;informations, un visual clé et un teaser d&#39;annonce ont été dévoilés.\r\n\r\nSi le manga Jojo&#39;s Bizarre Adventure de Hirohiko Araki a été lancé fin 1986, Stone Ocean en est sa sixième partie et a été publié entre 2000 et 2003 dans le Shônen Jump, pour un total de 17 tomes. Le titre est entièrement disponible chez nous aux éditions Delcourt/Tonkam.\r\n\r\nLancée en 2012, la grande adaptation animée de Jojo&#39;s Bizarre Adventure par le studio David Production se poursuit donc à un rythme régulier. Les adaptations des 5 premières parties sont disponibles en VOD sur Crunchyroll et ADN, la cinquième partie qu&#39;est Golden Wind étant prévue pour le mois de mai en DVD et Blu-ray chez Kazé. Récemment, Netflix a proposé les OVA Thus Spoke Kishibe Rohan.\r\n\r\nSynopsis du manga :\r\n\r\nCondamnée à tort pour un crime qu’elle n’a pas commis, Kujo Joline se retrouve enfermée au pénitencier de Green Dolphin, un établissement de haute sécurité. Sur place, elle découvre un univers impitoyable où règne la loi du plus fort et où la confiance est un luxe qu’on ne peut se permettre. Heureusement, l’étrange médaillon que lui envoie son père éveille en elle une force mystérieuse qui lui permettra peut- être de s’enfuir !', 1, '2021-05-19');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `titre` varchar(64) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `titre`, `description`) VALUES
(1, 'manga', 'tout sur le manga en general'),
(2, 'cinema', 'tout sur le cinema'),
(3, 'music', 'toute la music que j\'aaiiiimeuh, elle vient de la, elle vient du bluuuuuuzee'),
(4, 'jv', 'tout sur les jeux videos'),
(8, 'test', 'catégorie de test'),
(9, 'test', 'catégorie de test'),
(10, 'test', 'catégorie de test');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int NOT NULL,
  `pseudo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(62) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `nom`, `prenom`, `email`, `hash`, `admin`) VALUES
(1, 'Kintana', 'Kintana', 'Evgeniya', 'evgeniya.kintana@gmail.com', '$2y$10$UHEVb3RkGy48GkFIP1q2L.vB7luS4TFBAgP0HD.4qme4W0N9ZhsdS', 0),
(2, 'Darkos92', 'Pivert', 'Augustin', 'augustin.pivert@free.fr', '$2y$10$RwLHKWoMRsmRZunrvfi.8OMRnCIqAtmYMnlHlhoZypHAVMQIMBmDG', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `billets`
--
ALTER TABLE `billets`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
