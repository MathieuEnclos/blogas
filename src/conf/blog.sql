-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 21 mai 2021 à 19:16
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
(3, 'Stone Ocean, la sixième partie de Jojo&#39;s Bizarre Adventure, adapté en anime ', '  Aujourd&#39;hui a eu lieu l&#39;événement en ligne Jojo&#39;s Bizarre Adventure The Animation Special Event ~ JOESTAR the Inherited Soul, revenant sur l&#39;adaptation animée du manga phare de Hirohiko Araki. A l&#39;issue de la prestation, le nouveau chapitre de l&#39;anime a été annoncé : La très attendue adaptation de Stone Ocean, la sixième partie du manga.\r\n\r\nSi le staff principal de la série Jojo&#39;s Bizarre Adventure : Stone Ocean et sa date de diffusion ne sont pas encore connus, la voix qui campera l&#39;héroïne Jolyne Kujo s&#39;est présentée sur la scène de l&#39;événement : Ai Fairouz, seiyû japano-égyptienne. Cette dernière s&#39;est exprimée sur son casting. Fan de Jojo&#39;s Bizarre Adventure, le projet est ce qui l&#39;a poussé vers le métier de comédienne, précisant qu&#39;elle voue une admiration forte pour Jolyne depuis son adolescence.\r\n\r\nEn attendant davantage d&#39;informations, un visual clé et un teaser d&#39;annonce ont été dévoilés.\r\n\r\nSi le manga Jojo&#39;s Bizarre Adventure de Hirohiko Araki a été lancé fin 1986, Stone Ocean en est sa sixième partie et a été publié entre 2000 et 2003 dans le Shônen Jump, pour un total de 17 tomes. Le titre est entièrement disponible chez nous aux éditions Delcourt/Tonkam.\r\n\r\nLancée en 2012, la grande adaptation animée de Jojo&#39;s Bizarre Adventure par le studio David Production se poursuit donc à un rythme régulier. Les adaptations des 5 premières parties sont disponibles en VOD sur Crunchyroll et ADN, la cinquième partie qu&#39;est Golden Wind étant prévue pour le mois de mai en DVD et Blu-ray chez Kazé. Récemment, Netflix a proposé les OVA Thus Spoke Kishibe Rohan.\r\n\r\nSynopsis du manga :\r\n\r\nCondamnée à tort pour un crime qu’elle n’a pas commis, Kujo Joline se retrouve enfermée au pénitencier de Green Dolphin, un établissement de haute sécurité. Sur place, elle découvre un univers impitoyable où règne la loi du plus fort et où la confiance est un luxe qu’on ne peut se permettre. Heureusement, l’étrange médaillon que lui envoie son père éveille en elle une force mystérieuse qui lui permettra peut- être de s’enfuir !', 1, '2021-05-19'),
(6, 'Un Grammy Award à titre posthume pour Ravi Shankar', ' Le compositeur et musicien indien, mort mardi, a déjà reçu trois Grammy au cours de sa carrière.\r\nMUSIQUES – Le monde de la musique va rendre hommage au &#34;parrain de la World Music&#34;. Un Grammy Award sera décerné à titre posthume à Ravi Shankar, musicien et compositeur indien mort mardi 11 décembre aux Etats-Unis, pour saluer la carrière de cette légende indienne du sitar, ont annoncé mercredi les organisateurs de ces &#34;Oscars&#34; de la musique. Cette récompense spéciale, pour laquelle l&#39;artiste avait été choisi avant sa mort, devait lui être remise lors de la cérémonie qui aura lieu en février. &#34;On lui avait annoncé la semaine dernière qu&#39;il allait recevoir ce prix&#34;, a précisé une porte-parole des Grammy.\r\n\r\n&#34;Joueur de sitar le plus connu au monde, Ravi Shankar est un véritable ambassadeur de la musique internationale&#34;, estime l&#39;Académie dans une brève biographie du musicien, qui avait déjà reçu trois Grammy au cours de sa carrière. &#34;En tant que joueur, compositeur, professeur et écrivain il est considéré comme un pionnier pour avoir apporté la musique indienne en Occident&#34;, ajoute-t-elle.\r\n\r\nRavi Shankar, qui a influencé de nombreux artistes occidentaux dont les Beatles et les Rolling Stones, est mort à l&#39;âge de 92 ans en Californie, où il s&#39;était rendu pour subir une opération chirurgicale. Le guitariste des Beatles, George Harrison, fut l&#39;un de ses disciples dans les années 1960 et tous deux collaborèrent ensuite à plusieurs projets. Harrison avait surnommé Ravi Shankar &#34;le parrain de la World Music&#34;. Le célèbre violoniste Yehudi Menuhin l&#39;avait même comparé à Mozart.', 3, '2021-05-19'),
(7, 'Hayao Miyazaki voit dans « Demon Slayer » un rival', ' En novembre dernier, nous avons rapporté que Hayao Miyazaki s’intéressait assez peu au succès de l’anime « Demon Slayer ». Aujourd’hui, le cofondateur de Studio Ghibli, Toshio Suzuki, a donné plus de détails sur les pensées et les opinions de Miyazaki.\r\n\r\nMiyazaki qualifie l’anime de rival\r\nSuzuki a été l’invité du talk-show « Bokura no Jidai » sur Fuji TV le 25 avril 2021 pour un débat sur « Demon Slayer ». Il y a raconté qu’il avait lui-même présenté et expliqué le contenu de « Demon Slayer » à Miyazaki. En réponse, ce dernier a commenté qu&#39; »un tel anime sera certainement un succès ». En outre, Miyazaki a qualifié l’anime de « son rival ».\r\n\r\nBien que l’interview ait été réalisée récemment, Suzuki n’a pas précisé quand exactement Miyazaki a fait ses déclarations. Il n’est donc pas clair si ce dernier faisait référence au succès de la série ou du long métrage. Toutefois, la façon dont Suzuki s’exprime montre clairement que Miyazaki n’entend pas cette rivalité de façon négative, mais comme une sorte de saine compétition.\r\n\r\nLe film « Demon Slayer -Kimetsu no Yaiba- The Movie : Mugen Train » a rapporté plus de 50 milliards de yens dans le monde à ce jour. Cela en fait à la fois le film le plus populaire au Japon et le film d’animation le plus populaire au monde. Auparavant, « Le voyage de Chihiro » de Hayao Miyazaki occupait ces deux positions.\r\n\r\nHayao Miyazaki est l’un des cofondateurs et le visage le plus reconnaissable du célèbre Studio Ghibli. En décembre 2020 est sorti le dernier film du studio d’animation à ce jour, « Aya et la sorcière », qui a été réalisé par Goro, le fils de Miyazaki. Miyazaki lui-même travaille depuis 2017 sur le film « Kimi-tachi wa Dou Ikiru ka », qui « ne sortira probablement pas dans les trois prochaines années ».\r\n\r\nExtrait du talk-show (en japonais, sans sous-titres) :\r\nL’intrigue de Demon Slayer :\r\nC’est la période Taisho au Japon. Tanjiro, un garçon au grand cœur qui vend du charbon de bois pour gagner sa vie, voit sa famille massacrée par un démon. Pour aggraver les choses, sa jeune sœur Nezuko, seule survivante, a elle-même été transformée en démon.\r\n\r\nBien que dévasté par cette triste réalité, Tanjiro décide de devenir un « tueur de démons » afin de ramener sa sœur à l’état humain et de tuer le démon qui a massacré sa famille.', 1, '2021-05-19'),
(26, 'testmanga', ' manga', 1, '2021-05-19'),
(27, 'testmusic', ' music', 3, '2021-05-19'),
(28, 'testcine', ' cinéma', 2, '2021-05-19'),
(29, 'test jeux vid', ' jv', 4, '2021-05-19'),
(30, 'sdfgdgddfg', ' dfgdfgfdgdfgdg', 2, '2021-05-20'),
(31, 'zrezrrzrzer', ' zerzererzrzrzrzre', 1, '2021-05-21');

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
(4, 'jv', 'tout sur les jeux videos');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int NOT NULL,
  `billet` int NOT NULL,
  `content` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `billet`, `content`, `auteur`) VALUES
(1, 3, '', 'v'),
(2, 3, 'ertzeertreryretertyetryey', 'v'),
(3, 3, 'ertzeertreryretertyetryey', 'v');

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
(2, 'Darkos92', 'Pivert', 'Augustin', 'augustin.pivert@free.fr', '$2y$10$RwLHKWoMRsmRZunrvfi.8OMRnCIqAtmYMnlHlhoZypHAVMQIMBmDG', 0),
(5, 'v', 'v', 'v', 'vite@v.com', '$2y$10$esz.GtKhosqMwuuw.xYJduao9f6rF1D9m9Ap3tihSTo1sprWXklKC', 0);

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
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
