-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 07 jan. 2020 à 15:46
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `competences`
--

-- --------------------------------------------------------

--
-- Structure de la table `activités_types`
--

CREATE TABLE `activités_types` (
  `id` int(11) NOT NULL,
  `descrip_courte` varchar(40) NOT NULL,
  `descrip_long` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activités_types`
--

INSERT INTO `activités_types` (`id`, `descrip_courte`, `descrip_long`) VALUES
(1, 'Composants d\'interface utilisateur', ' Concevoir et développer des composants d\'interface utilisateur en intégrant les recommandations de sécurité'),
(2, 'persistance des données', 'Concevoir et développer la persistance des données en intégrant les recommandations de sécurité'),
(3, 'application multicouche répartie', 'Concevoir et développer une application multicouche ');

-- --------------------------------------------------------

--
-- Structure de la table `competences_professionnelles`
--

CREATE TABLE `competences_professionnelles` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `description_courte` text NOT NULL,
  `description_long` text,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `competences_professionnelles`
--

INSERT INTO `competences_professionnelles` (`id`, `nom`, `description_courte`, `description_long`, `id_type`) VALUES
(1, 'Maquette', 'Maquetter une application', 'À partir de cas d\'utilisation ou de scénarios utilisateur, de la charte graphique et des exigences de sécurité identifiées, concevoir la maquette des interfaces utilisateurs de l’application, avec du contenu en langue française ou anglaise, y compris celles appropriées à l’équipement ciblé et en tenant compte de l’expérience utilisateur et pour un équipement mobile des spécificités ergonomiques.\r\nFormaliser les enchaînements des interfaces afin que l’utilisateur les valide ainsi que les maquettes.', 1),
(2, 'app type desktop', 'Développer une interface utilisateur de type desktop', 'À partir du dossier de conception technique contenant la maquette de l\'interface utilisateur à développer et à l\'aide d\'un environnement de développement intégré, éventuellement de langue anglaise, et d\'un langage orienté objet, coder, tester, documenter et installer les composants logiciels requis, formulaires et états, afin d’assurer la collecte et la restitution des informations numériques relatives aux besoins du métier de l\'utilisateur.\r\nRespecter les bonnes pratiques de la programmation orientée objet et les règles du développement sécurisé.\r\nRechercher, éventuellement en langue anglaise, des solutions pertinentes pour résoudre des problèmes techniques ou mettre en œuvre de nouvelles fonctionnalités.\r\nPratiquer une veille technologique sur la sécurité informatique et les vulnérabilités connues. Partager le résultat de sa recherche ou de sa veille avec ses pairs.\r\n', 1),
(3, 'Accès aux données', 'Développer des composants d’accès aux données', 'À partir du dossier de conception technique et d’une bibliothèque d’objets spécialisés dans l’accès aux données, coder, tester et documenter les composants d\'accès aux données stockées dans une base de données afin d’opérer des sélections et des mises à jour de données nécessaires à une application informatique et de façon sécurisée.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 1),
(4, 'Front-end', 'Développer la partie front-end d’une interface utilisateur web', 'À partir du dossier de conception technique contenant la maquette de l\'interface utilisateur à développer et à l’aide des langages de développement web, créer les interfaces utilisateur web (pages web), puis coder, tester et documenter les traitements côté client, afin d’obtenir un rendu visuel adapté à l’équipement utilisateur et de fluidifier l’expérience utilisateur.\r\nPrendre en compte les différents équipements et navigateurs ciblés.\r\nRespecter les bonnes pratiques de développement web, d\'accessibilité et les règles du développement sécurisé.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 1),
(5, 'Back-end', 'Développer la partie back-end d’une interface utilisateur\r\nweb\r\n ', 'À partir du dossier de conception technique, et dans le respect des bonnes pratiques de développement et de sécurisation d\'application web, coder, tester et documenter les traitements côté serveur, afin d’assurer la collecte et la restitution d’informations numériques.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 1),
(6, 'Concevoir une BDD', 'Concevoir une base de données', 'À partir du cahier des charges relatif à une application informatique nécessitant une base de données relationnelles, établir le schéma entité-association des données à informatiser, en respectant le formalisme et les règles de nommage de l’entreprise, et définir le schéma physique de la base de données, afin de permettre l’élaboration d’une base de données normalisée. Dans le cas d\'une demande d\'évolution applicative et à partir d\'une base de données existante, déduire le schéma entité-association des données de la base à faire évoluer.', 2),
(7, 'Mise en place d\'une BDD', 'Mettre en place une base de données', 'À partir d’un besoin utilisateur nécessitant le stockage de données, structurées ou non structurées, du dossier de conception technique, des normes qualité de l\'entreprise, organiser les données afin de permettre l’élaboration d’une base de données. Écrire et exécuter le script de création de la base, insérer les données de test, définir les droits d\'utilisation, prévoir les procédures de sauvegarde et de restauration de la base de données de test\r\nConformément à l’état de l’art de la sécurité et aux exigences de sécurité identifiées, exprimer le besoin de sécurité du SGDB.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 2),
(8, 'SQL', 'Développer des composants dans le langage d’une base de données', 'À partir du dossier de spécifications fonctionnelles décrivant les traitements associés aux règles de gestion d\'une application informatique et en s\'appuyant sur une base de données relationnelles, programmer et tester les composants sous la forme de déclencheurs, de procédures stockées et de fonctions, afin d\'implémenter les traitements dans la base de données, en gérant les cas d’exception et les conflits d’accès et en appliquant les principes du développement sécurisé.\r\nUtiliser un environnement de développement et de test.', 2),
(9, 'Collaboration', 'Collaborer à la gestion d’un projet informatique et à l’organisation de l’environnement de développement', 'À partir des objectifs du projet définis en terme de livrables et de la démarche projet, collaborer à la planification et au suivi des ressources humaines et matérielles allouées au projet, en communiquant à l’écrit ou à l’oral en français ou en anglais, mettre en œuvre les procédures qualité décrites dans le plan qualité projet, définir l\'environnement de développement et les outils collaboratifs du travail en équipe, afin d\'atteindre les objectifs du projet en termes de coût, de délai et de qualité.', 3),
(10, 'UML', 'Concevoir une application', 'À partir du cahier des charges de la maîtrise d’ouvrage, concevoir fonctionnellement et techniquement une application informatique sécurisée en suivant une démarche de conception. Constituer le dossier de conception, éventuellement en anglais, modélisant, avec des diagrammes, les cas d\'utilisation, les classes d\'analyse et de conception, décrivant également l\'architecture logicielle multicouche répartie en vue du développement de l\'application.\r\nRespecter les bonnes pratiques et les règles du développement sécurisé et compléter ce dossier par la description des exigences de sécurité de l’application.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 3),
(11, 'Composants métiers', 'Développer des composants métier', 'À partir des diagrammes de classes et des diagrammes de composants du dossier de conception, coder et tester les composants de la couche métier d\'une application informatique dans une architecture multicouche répartie conformément aux règles métier et avec les cas d’exception, dans le respect des bonnes pratiques du développement objet et des principes du développement sécurisé.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 3),
(12, 'App en couche', 'Construire une application organisée en couches', 'À partir du dossier de conception, de la stratégie de sécurité de l’application, et d\'une architecture applicative multicouche répartie, coder et tester les composants des couches présentation et persistance, puis les intégrer avec les composants métiers développés par ailleurs, afin de construire une application informatique dans le respect de la charte graphique, des bonnes pratiques du développement objet et de l’état de l’art de la sécurité informatique.', 3),
(13, 'Mobile', 'Développer une application mobile', 'À partir du cahier des charges de l\'application, des spécificités ergonomiques et fonctionnelles de l’équipement mobile, et en suivant une démarche de développement en approche de type Agile, concevoir la maquette graphique appropriée à l’équipement et en respectant l’expérience utilisateur. Coder, documenter l\'application mobile en respectant les contraintes de l\'architecture du matériel cible et tester l\'application dans l\'environnement du matériel cible afin de répondre au besoin fonctionnel de l’utilisateur, en respectant à chaque étape l’état de l’art de la sécurité informatique.\r\nRéaliser les développements à partir d\'un environnement de développement intégré, éventuellement de langue anglaise.\r\nPratiquer une veille technologique, y compris en anglais, pour résoudre un problème technique ou mettre en œuvre une nouvelle fonctionnalité ainsi que pour s’informer sur la sécurité informatique et les vulnérabilités connues.\r\nPartager le résultat de sa veille avec ses pairs.', 3),
(14, 'Tests', 'Préparer et exécuter les plans de tests d’une application\r\n14', 'À partir des scénarios des cas d\'utilisation de l\'application à tester, concevoir le plan de tests et créer l\'environnement adéquat, puis réaliser les tests fonctionnels et les rapprocher des résultats attendus, afin de livrer une application répondant aux spécifications fonctionnelles et techniques. Rechercher les vulnérabilités par des tests de sécurité appropriés. Dans le cas d\'une application en évolution ou d’un changement de version, identifier les cas de risques de régression et tester l\'application à partir du plan de tests approprié.', 3),
(15, 'Déploiement', 'Préparer et exécuter le déploiement d’une application', 'À partir de l’architecture de l’application répartie et éventuellement d’un processus d’intégration continue et des différents composants assemblés ou indépendants, élaborer le diagramme de déploiement correspondant. Déployer l’exécutable obtenu par assemblage des différents composants ou les exécutables des composants indépendants, sur le ou les environnements de qualification, y compris dans le Cloud, afin d\'obtenir une application logicielle opérationnelle et signée selon les exigences de sécurité.', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activités_types`
--
ALTER TABLE `activités_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descrip_courte` (`descrip_courte`);

--
-- Index pour la table `competences_professionnelles`
--
ALTER TABLE `competences_professionnelles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `id_type` (`id_type`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competences_professionnelles`
--
ALTER TABLE `competences_professionnelles`
  ADD CONSTRAINT `competences_professionnelles_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `activités_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
