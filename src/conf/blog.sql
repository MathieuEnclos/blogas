-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 mai 2021 à 19:34
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `billets`;
CREATE TABLE IF NOT EXISTS `billets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(150) DEFAULT NULL,
  `body` text,
  `cat_id` int(11) DEFAULT '1',
  `date` date DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `billets`
--

INSERT INTO `billets` (`id`, `titre`, `body`, `cat_id`, `date`) VALUES
(1, 'Titanic', 'c\'est l\'histoire d\'un gros bateau qui croise un glaçon', 2, '2014-11-20'),
(2, 'Concert : nolwenn live', 'c\'est d\'la balle, Ca vaut bien Mick Jagger et Iggy Stooges réunis.\r\nAngus Young doit l\'ecouter en boucle...', 3, '2014-11-20'),
(3, 'Stone Ocean, la sixième partie de Jojo&#39;s Bizarre Adventure, adapté en anime ', '  Aujourd&#39;hui a eu lieu l&#39;événement en ligne Jojo&#39;s Bizarre Adventure The Animation Special Event ~ JOESTAR the Inherited Soul, revenant sur l&#39;adaptation animée du manga phare de Hirohiko Araki. A l&#39;issue de la prestation, le nouveau chapitre de l&#39;anime a été annoncé : La très attendue adaptation de Stone Ocean, la sixième partie du manga.\r\n\r\nSi le staff principal de la série Jojo&#39;s Bizarre Adventure : Stone Ocean et sa date de diffusion ne sont pas encore connus, la voix qui campera l&#39;héroïne Jolyne Kujo s&#39;est présentée sur la scène de l&#39;événement : Ai Fairouz, seiyû japano-égyptienne. Cette dernière s&#39;est exprimée sur son casting. Fan de Jojo&#39;s Bizarre Adventure, le projet est ce qui l&#39;a poussé vers le métier de comédienne, précisant qu&#39;elle voue une admiration forte pour Jolyne depuis son adolescence.\r\n\r\nEn attendant davantage d&#39;informations, un visual clé et un teaser d&#39;annonce ont été dévoilés.\r\n\r\nSi le manga Jojo&#39;s Bizarre Adventure de Hirohiko Araki a été lancé fin 1986, Stone Ocean en est sa sixième partie et a été publié entre 2000 et 2003 dans le Shônen Jump, pour un total de 17 tomes. Le titre est entièrement disponible chez nous aux éditions Delcourt/Tonkam.\r\n\r\nLancée en 2012, la grande adaptation animée de Jojo&#39;s Bizarre Adventure par le studio David Production se poursuit donc à un rythme régulier. Les adaptations des 5 premières parties sont disponibles en VOD sur Crunchyroll et ADN, la cinquième partie qu&#39;est Golden Wind étant prévue pour le mois de mai en DVD et Blu-ray chez Kazé. Récemment, Netflix a proposé les OVA Thus Spoke Kishibe Rohan.\r\n\r\nSynopsis du manga :\r\n\r\nCondamnée à tort pour un crime qu’elle n’a pas commis, Kujo Joline se retrouve enfermée au pénitencier de Green Dolphin, un établissement de haute sécurité. Sur place, elle découvre un univers impitoyable où règne la loi du plus fort et où la confiance est un luxe qu’on ne peut se permettre. Heureusement, l’étrange médaillon que lui envoie son père éveille en elle une force mystérieuse qui lui permettra peut- être de s’enfuir !', 1, '2021-05-19'),
(6, 'Un Grammy Award à titre posthume pour Ravi Shankar', ' Le compositeur et musicien indien, mort mardi, a déjà reçu trois Grammy au cours de sa carrière.\r\nMUSIQUES – Le monde de la musique va rendre hommage au &#34;parrain de la World Music&#34;. Un Grammy Award sera décerné à titre posthume à Ravi Shankar, musicien et compositeur indien mort mardi 11 décembre aux Etats-Unis, pour saluer la carrière de cette légende indienne du sitar, ont annoncé mercredi les organisateurs de ces &#34;Oscars&#34; de la musique. Cette récompense spéciale, pour laquelle l&#39;artiste avait été choisi avant sa mort, devait lui être remise lors de la cérémonie qui aura lieu en février. &#34;On lui avait annoncé la semaine dernière qu&#39;il allait recevoir ce prix&#34;, a précisé une porte-parole des Grammy.\r\n\r\n&#34;Joueur de sitar le plus connu au monde, Ravi Shankar est un véritable ambassadeur de la musique internationale&#34;, estime l&#39;Académie dans une brève biographie du musicien, qui avait déjà reçu trois Grammy au cours de sa carrière. &#34;En tant que joueur, compositeur, professeur et écrivain il est considéré comme un pionnier pour avoir apporté la musique indienne en Occident&#34;, ajoute-t-elle.\r\n\r\nRavi Shankar, qui a influencé de nombreux artistes occidentaux dont les Beatles et les Rolling Stones, est mort à l&#39;âge de 92 ans en Californie, où il s&#39;était rendu pour subir une opération chirurgicale. Le guitariste des Beatles, George Harrison, fut l&#39;un de ses disciples dans les années 1960 et tous deux collaborèrent ensuite à plusieurs projets. Harrison avait surnommé Ravi Shankar &#34;le parrain de la World Music&#34;. Le célèbre violoniste Yehudi Menuhin l&#39;avait même comparé à Mozart.', 3, '2021-05-19'),
(7, 'Hayao Miyazaki voit dans « Demon Slayer » un rival', ' En novembre dernier, nous avons rapporté que Hayao Miyazaki s’intéressait assez peu au succès de l’anime « Demon Slayer ». Aujourd’hui, le cofondateur de Studio Ghibli, Toshio Suzuki, a donné plus de détails sur les pensées et les opinions de Miyazaki.\r\n\r\nMiyazaki qualifie l’anime de rival\r\nSuzuki a été l’invité du talk-show « Bokura no Jidai » sur Fuji TV le 25 avril 2021 pour un débat sur « Demon Slayer ». Il y a raconté qu’il avait lui-même présenté et expliqué le contenu de « Demon Slayer » à Miyazaki. En réponse, ce dernier a commenté qu&#39; »un tel anime sera certainement un succès ». En outre, Miyazaki a qualifié l’anime de « son rival ».\r\n\r\nBien que l’interview ait été réalisée récemment, Suzuki n’a pas précisé quand exactement Miyazaki a fait ses déclarations. Il n’est donc pas clair si ce dernier faisait référence au succès de la série ou du long métrage. Toutefois, la façon dont Suzuki s’exprime montre clairement que Miyazaki n’entend pas cette rivalité de façon négative, mais comme une sorte de saine compétition.\r\n\r\nLe film « Demon Slayer -Kimetsu no Yaiba- The Movie : Mugen Train » a rapporté plus de 50 milliards de yens dans le monde à ce jour. Cela en fait à la fois le film le plus populaire au Japon et le film d’animation le plus populaire au monde. Auparavant, « Le voyage de Chihiro » de Hayao Miyazaki occupait ces deux positions.\r\n\r\nHayao Miyazaki est l’un des cofondateurs et le visage le plus reconnaissable du célèbre Studio Ghibli. En décembre 2020 est sorti le dernier film du studio d’animation à ce jour, « Aya et la sorcière », qui a été réalisé par Goro, le fils de Miyazaki. Miyazaki lui-même travaille depuis 2017 sur le film « Kimi-tachi wa Dou Ikiru ka », qui « ne sortira probablement pas dans les trois prochaines années ».\r\n\r\nExtrait du talk-show (en japonais, sans sous-titres) :\r\nL’intrigue de Demon Slayer :\r\nC’est la période Taisho au Japon. Tanjiro, un garçon au grand cœur qui vend du charbon de bois pour gagner sa vie, voit sa famille massacrée par un démon. Pour aggraver les choses, sa jeune sœur Nezuko, seule survivante, a elle-même été transformée en démon.\r\n\r\nBien que dévasté par cette triste réalité, Tanjiro décide de devenir un « tueur de démons » afin de ramener sa sœur à l’état humain et de tuer le démon qui a massacré sa famille.', 1, '2021-05-19'),
(33, 'Resident Evil Village', ' Dans Resident Evil Village, de nombreuses énigmes et collectibles sont dissimulés un peu partout. Certains sont bien cachés, tandis que d&#39;autres peuvent vous aider à améliorer votre personnage de plusieurs manières. Nous vous expliquons aujourd&#39;hui comment trouver la clé de Heisenberg.\r\nAvant même de pouvoir vous mettre en quête de la clé, il vous faut d&#39;abord récupérer son moule. Après avoir tiré sur le centre lumineux du ventilateur géant, pour éviter de vous faire déchiqueter, dirigez-vous à l&#39;intérieur même du ventilateur. Descendez le long des tuyaux par la droite, grimpez à l&#39;échelle et passez par la valve. Vous arriverez dans une nouvelle salle où se trouve une grosse valise noire et à l&#39;intérieur, se trouve le moule de la clé Heisenberg.\r\n\r\nLe moule fraichement obtenu, dirigez-vous vers la fonderie où vous pourrez mouler la clé. Celle-ci se trouve au niveau B4 de l&#39;usine, auquel vous pouvez accéder en prenant l&#39;ascenseur où se trouve le Duc. Une fois sorti de l&#39;ascenseur, passez par la porte sur votre gauche et frayez-vous un chemin à travers les couloirs de l&#39;usine où vous rencontrerez deux créatures d&#39;Heisenberg.\r\n\r\nUne fois arrivé à la fonderie, il ne vous reste plus qu&#39;à rebrousser chemin et déverrouiller la Pièce d&#39;Heisenberg à l&#39;aide de la clé du même nom.', 4, '2021-05-21'),
(34, 'Destiny 2', ' Le 22 mai, c&#39;est-à-dire demain, les joueurs de Destiny 2 pourront se lancer dans le raid du Caveau de Verre, le tout premier raid du premier Destiny. L&#39;occasion pour les joueurs de longue date de replonger dans l&#39;antre, et pour les nouveaux de le découvrir.Mais ce n&#39;est pas la seule nouvelle que nous donne Bungie cette semaine, puisque nous savons enfin pourquoi le cross-play a été activé par erreur il y a quelques jours dans Destiny 2. En effet, Bungie annonce qu&#39;une bêta pour le cross-play sera activée du 25 mai au 27 mai. Cela ne concerna pas l&#39;ensemble du jeu, puisque le test se cantonnera à un programme spécifique d&#39;Assauts de l&#39;Avant-Garde. En lançant ce mode, il sera possible de se battre aux côtés de joueurs PlayStation, Xbox, Steam, et Stadia. Le cross-play est attendu plus tard dans l&#39;année, et il s&#39;agit là de la toute première étape à destination des joueurs. Visiblement, aucune inscription n&#39;est nécessaire, mais il y aura une récompense. Tout joueur qui complètera l&#39;Assaut de la bêta du cross-play récupérera un emblème unique dénommé Destin tracé dans les étoiles.', 4, '2021-05-21'),
(35, 'Doctor Strange', ' Dès son casting, en 2015, le choix de Tilda Swinton pour interpréter L&#39;Ancien dans Doctor Strange a fait couler beaucoup d&#39;encre, car dans les comics, le personnage est un homme asiatique. Pourquoi avoir choisi une actrice britannique pour l&#39;interpréter face à Benedict Cumberbatch ? Alors que le deuxième opus est en cours de création, et que Marvel prépare un film sur un super-héros chinois, Shang-Chi et la légende des dix anneaux, le patron du studio Kevin Feige revient sur cette polémique auprès de Men&#39;s Health : &#34;On se croyait très malins, avec un coup d&#39;avance. On ne voulait pas tomber dans le cliché du vieux sage magicien venu d&#39;Asie. Mais ça aurait dû nous mettre immédiatement la puce à l&#39;oreille, on aurait dû se demander : &#39;Attendez une minute, y a-t-il vraiment moyen de faire autrement ? Ne pouvons-nous pas éviter le cliché tout en castant un acteur asiatique ? La réponse à cette question est oui, évidemment.&#34;Pour bien comprendre ses propos, il faut revenir sur les raisons de la colère d&#39;une partie des fans. En 2016, plus la sortie approchait et plus la polémique prenait de l&#39;ampleur, si bien que Marvel a décidé de publier un communiqué pour défendre publiquement Tilda Swinton plusieurs mois avant sa sortie : &#34;Nous faisons très attention à la diversité sur les casting de nos films et nous tentons régulièrement de casser les stéréotypes et de nous détacher des comics pour donner vie au Marvel Cinematic Universe. L&#39;Ancien est un titre, qui n&#39;est pas exclusivement porté par un personnage, mais au contraire traverse le temps et dans notre film, son origine est Celte. Nous sommes très fiers d&#39;avoir la très talentueuse Tilda Swinton pour incarner ce personnage unique et complexe au sein de notre casting riche et diversifié.', 2, '2021-05-21'),
(36, 'Hocus Pocus 2', ' Les trois sorcières Bette Midler, Sarah Jessica Parker et Kathy Najimy seront de retour au casting.\r\n\r\nElles vont à nouveau fait parler leur magie. Les trois sorcières les plus improbables des années 1990 seront de retour l&#39;an prochain pour Hocus Pocus 2 ! Disney annonce que le casting original porté par Bette Midler, Sarah Jessica Parker et Kathy Najimy, alias les sœurs Sanderson, reviendront en 2022 pour une suite qui sortira uniquement en streaming sur Disney Plus.Le trio de sorcières ressuscitées avait connu un petit succès en salles en 1993, mais était surtout devenu un classique culte, grâce à ses multiples diffusions télévisées, sur Disney Channel aux USA pour Halloween notamment, et dans le reste du monde également.\r\n\r\nHocus Pocus 2 se concentrera sur trois jeunes femmes qui &#34;ramènent accidentellement les sœurs Sanderson dans un Salem moderne et doivent trouver comment empêcher les sorcières affamées d&#39;enfants de faire des ravages dans le monde&#34;, tease le synopsis officiel.\r\n\r\nC&#39;est Anne Fletcher (La Proposition) qui réalisera le film avec Adam Shankman (Hairspray) en tant que producteur exécutif.\r\n\r\n&#34;Plus que jamais, les gens ont besoin de rire. Nous devrions rire tous les jours, et il y a beaucoup de plaisir à prendre en suivant ces trois femmes incroyables, qui jouent de délicieux personnages (...) Ce sera un film pour tout le monde, des fans qui ont grandi avec le premier film à la prochaine génération de téléspectateurs&#34;, promet la réalisatrice dans un communiqué.', 2, '2021-05-21'),
(37, 'One Piece', ' Les éditions Glénat viennent de dévoiler l&#39;arrivée de coffrets One Piece classant les volumes par arc.\r\n\r\nLe premier coffret EAST BLUE, contenant les volumes 1 à 12, est prévu pour le 17 novembre au prix de 82,80€\r\n\r\nCe beau coffret sera un cadeau idéal pour toute personne souhaitant démarrer la lecture de cette série incontournable.\r\n\r\nEt pour les aficionados qui possèdent déjà la série en intégralité, une version vide du coffret est également prévue dans les mois qui suivent !\r\n\r\nGlenat indique que ce ne sera pas une édition limitée, il n&#39;y a donc pas de soucis à se faire sur les stocks, contrairement aux éditions limitées des derniers volumes que l&#39;on trouve régulièrement à plus de 100€ sur les différents sites type leboncoin, ebay etc.\r\n\r\nIl vous est déjà possible de précommander le coffret sur les sites de vente.', 1, '2021-05-21'),
(38, 'Michel Polnareff', ' A ne pas confondre avec Jean-Pierre de Jojo.', 3, '2021-05-21'),
(39, 'Joran: The Princess of Snow and Blood', ' En 1931, le shogun Yoshinobu Tokugawa a 94 ans et exerce toujours un contrôle absolu sur le Japon. Des vestiges de la culture de l&#39;ère Meiji sont visibles dans la ville, mais la science et la cosmologie ésotérique japonaise Onmyodo se sont également développées, dégageant un sentiment de modernité. Pourtant, œuvre dans l&#39;ombre Kuchinawa, un groupe dissident qui cherche à assassiner le shogun et à faire tomber le régime.', 1, '2021-05-21'),
(40, 'EAST BLUE', ' Ce beau coffret sera un cadeau idéal pour toute personne souhaitant démarrer la lecture de cette série incontournable.\r\n\r\nEt pour les aficionados qui possèdent déjà la série en intégralité, une version vide du coffret est également prévue dans les mois qui suivent !\r\n\r\nGlenat indique que ce ne sera pas une édition limitée, il n&#39;y a donc pas de soucis à se faire sur les stocks, contrairement aux éditions limitées des derniers volumes que l&#39;on trouve régulièrement à plus de 100€ sur les différents sites type leboncoin, ebay etc.\r\n\r\nIl vous est déjà possible de précommander le coffret sur les sites de vente.', 1, '2021-05-21'),
(41, 'Daft punk', ' Francais en plus , achetez les billets', 3, '2021-05-21'),
(42, 'Burning Kabaddi!', ' Tatsuya Yoigoshi, surnommé « l’Intouchable » est une ancienne star du football collégien dégoûtée par le monde du sport. Depuis son entrée au lycée, il s’est juré d’arrêter toute vie sportive. Toutefois, sa célébrité le précède et tous les clubs sportifs du lycée cherchent à le recruter.\r\nThe Ancient Magus Bride\r\nChise Hatori a 15 ans. Elle n’a ni famille, ni talent particulier, ni aucun espoir dans la vie. Un jour, elle est vendue à un sorcier, un non-humain dont l’existence remonte à la nuit des temps… Il la prend sous son aile pour faire d’elle sa disciple et lui annonce qu’à terme, elle deviendra son épouse. Alors, les aiguilles qui semblaient à tout jamais figées dans son cœur se mettent à tourner de nouveau, petit à petit…', 1, '2021-05-21'),
(43, 'Aya Nakamura', ' une star francophone qui brille dans le monde entier\r\nVous connaissez forcément Aya Nakamura. La jeune chanteuse malienne est en train de réussir la prouesse d’exporter à l’international la chanson francophone. Retour sur une succès story qui n’est pas prête de se terminer !\r\nLa chanteuse francophone Aya Nakamura fait figure de phénomène. Les chiffres parlent d’eux-mêmes : 2,5 milliards de vues sur YouTube, 17 millions d’auditeurs par mois sur Spotify, trois albums percutants et des stars planétaires comme Madonna qui la portent aux nues. Même le New York Times a écrit : « Aya Nakamura fait partie des événements musicaux et sociaux les plus importants d’Europe en ce moment ».\r\n\r\nAya Nakamura affiche une sérénité à toute épreuve face à cette déferlante d’éloges et de récompenses.\r\nAya Nakamura : une réussite fulgurante\r\n\r\nAya Nakamura est née en 1995 à Bamako au Mali. Tout juste âgée de quelques mois, elle arrive en France avec sa famille. Installée à Aulnay-sous-Bois, elle traverse l’adolescence sans heurts. De nature hypersensible, elle met en mots, dans son journal intime, toutes les émotions qui la traversent. Les prémisses de ses futures chansons… En 2014, une amie la filme en train de chanter dans son salon. Elle poste la vidéo de cette chanson – « Karma » – sur Facebook, qui créée immédiatement le buzz. Puis une seconde chanson « J’ai mal », accompagnée cette fois-ci d’un clip « artisanal » est mise en ligne sur les réseaux sociaux. Résultat : plus d’un million de vues ! Vient ensuite un nouveau titre « Brisé » avec 13 millions de vues…\r\n\r\nUn succès populaire inouï qui va éveiller l’intérêt de l’industrie musicale. La singularité de cette artiste, à la langue argotique et aux sonorités afro-pop, a payé. En 2015, elle signe avec la maison de disques Warner.\r\nL’artiste sort en 2017, son premier album, Journal intime, rapidement couronnée par un disque d’or. Aya Nakamura, qui surfe sur la vague de la pop urbaine, devient un vrai phénomène. Mélodies chaudes aux influences afro-caribéennes, sonorités RnB, de technique vocale impeccable (héritée de sa mère)… Ce savant mélange lui ouvre les portes. Son aura dépasse les frontières. Ses chansons font danser Rihanna et Madonna, qui n’hésitent pas à saluer son talent. Et preuve encore s’il en fallait, à l’instar de Vegedream, Orelsan, Booba, La Fouine ou Rihanna, Willaxxx alias Williams Diop, le célèbre parodieur, vient de lui rendre hommage à sa façon, en faisant de son tube “Pookie” une version sur les stratégies poker et Quinte flush… \r\nDeux autres albums qui cartonnent\r\n\r\nEn avril 2018, Aya Nakamura sort son second album Nakamura. Le premier titre de cet album culte -Djadja- déferle partout.  Le clip enregistre 700 millions de vues sur YouTube. Aya Nakamura, qui a vendu un million d’exemplaires de cet album, en France et à l’étranger, se voit décerner un disque de diamant. D’autres chansons comme “Copines”, “Pookie” et “40%”vont, elles aussi, marquer cet album d’une pierre blanche pour devenir à leur tour de ', 3, '2021-05-21'),
(44, 'Grand Theft Auto', ' Il faut voler des voitures, braquer des banques ... une vie de voyou ', 4, '2021-05-21'),
(45, 'Dragon Ball', 'Manga second en terme de vente, San Goku est un sayen.', 1, '2021-05-21'),
(46, 'Fast and furious', ' Des courses de voitures, des poursuites de voitures, des belles voitures.', 2, '2021-05-21'),
(47, 'FairyTail', ' Des guildes, des  mages, des chats qui volent.', 1, '2021-05-21'),
(48, 'Stromae', ' Chanteur belge qui cherche son pere:', 3, '2021-05-21'),
(49, 'Interstellar', ' Je l&#39;ai jamais vu mais ca doit etre bien.', 2, '2021-05-21');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(64) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billet` int(11) NOT NULL,
  `content` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `billet`, `content`, `auteur`, `date`) VALUES
(7, 3, 'Vivement la sortie ! On attend ça depuis plus d&#39;un an. JOJOLIFE :)', 'Kintana', '2021-05-21');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(62) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `nom`, `prenom`, `email`, `hash`, `admin`) VALUES
(1, 'Kintana', 'Kintana', 'Evgeniya', 'evgeniya.kintana@gmail.com', '$2y$10$UHEVb3RkGy48GkFIP1q2L.vB7luS4TFBAgP0HD.4qme4W0N9ZhsdS', 0),
(6, 'PetitPoussin', 'Caldera', 'Geyser', 'tsunami@gmail.com', '$2y$10$tqX1hLqqB382qC99xmEOoeeaTnudHARbhphhnhswm7JvhPCkXkg3S', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
