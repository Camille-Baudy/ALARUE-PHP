-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 26 avr. 2021 à 13:10
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e4_alarue_php`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idAdmin` int(11) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`idAdmin`, `password`) VALUES
(1, '$6$rounds=5000$usesomesillystri$lgkdTWsmz8wSlM0ZCYZ5enj8tKVUlZzEIqXnvt3hquHuu9jW6n5XiOGubaRAqumyGfEqPjTxNTTwmy5qLdGPC0');

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `idUtilisateur` int(11) NOT NULL,
  `nomLieu` text NOT NULL,
  `idMission` int(11) NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compagnie`
--

CREATE TABLE `compagnie` (
  `idCompagnie` int(11) NOT NULL,
  `nomCompagnie` varchar(100) NOT NULL,
  `idSession` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hu_utilisateur`
--

CREATE TABLE `hu_utilisateur` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(250) COLLATE utf8_bin DEFAULT '#228B22',
  `idUtilisateur` int(11) NOT NULL,
  `type` varchar(25) COLLATE utf8_bin NOT NULL,
  `idType` int(11) NOT NULL,
  `idSession` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `h_utilisateur`
--

CREATE TABLE `h_utilisateur` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idSession` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `h_utilisateur`
--

INSERT INTO `h_utilisateur` (`id`, `title`, `start`, `end`, `color`, `idUtilisateur`, `idSession`) VALUES
(14261, NULL, '2021-07-09 18:00:00', '2021-07-10 02:00:00', '#ff000f', 2, 38),
(14262, NULL, '2021-07-10 18:00:00', '2021-07-11 02:00:00', '#ff000f', 2, 38);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `idLieu` int(11) NOT NULL,
  `nomLieu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`idLieu`, `nomLieu`) VALUES
(0, 'AUCUN'),
(7, 'LA BUTTE'),
(8, 'RUES, CENTRE'),
(9, 'PARC ROGER SALENGRO'),
(10, 'ÉCOLE'),
(11, 'Salle Polyvalente Germigny sur Loire'),
(12, 'Carré Jeune Vauzellien Varennes Vauzelles'),
(13, 'Parc du Docteur Faucher Fourchambault'),
(14, 'Salle Polyvalente Gimouille'),
(15, 'Salle des fêtes de Saincaize'),
(16, 'Salle des Fêtes de Sermoise'),
(17, 'Espace des Saules Coulanges les Nevers'),
(18, 'Stade Marzy'),
(19, 'Parc Thermal Pougues les Eaux'),
(20, 'Espace Pierre Girard Garchizy'),
(21, 'Cour de l\'école de Challuy'),
(22, 'Jardins de la Banque de France'),
(23, 'Théâtre Municipal de Nevers'),
(24, 'Place Mancini'),
(25, 'Square JB Thevenard'),
(26, 'Place Guy Coquille'),
(27, 'Rue des Boucheries - Le Conti'),
(36, 'Chapiteau Acroballe'),
(37, 'Parc Roger Salengro zone 2'),
(38, 'Ecole de l\'Oratoire'),
(39, 'Ecole Ste Julitte'),
(40, 'Ecole André Cloix'),
(41, 'Ecole de Loire'),
(42, 'Cour du Collège'),
(43, 'Accueil Public - Esplanade'),
(44, 'Buvette - Esplanade'),
(45, 'Chapiteau Zaccros');

-- --------------------------------------------------------

--
-- Structure de la table `lieu_mission`
--

CREATE TABLE `lieu_mission` (
  `idMission` int(11) NOT NULL,
  `nomLieu` text NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `liste_mission`
--

CREATE TABLE `liste_mission` (
  `idMission` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idLieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `liste_mission`
--

INSERT INTO `liste_mission` (`idMission`, `idUtilisateur`, `idLieu`) VALUES
(8, 1, 0),
(8, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

CREATE TABLE `mission` (
  `idMission` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mission`
--

INSERT INTO `mission` (`idMission`, `libelle`, `description`) VALUES
(1, 'Décoration', 'Participer à la déco de l\'anné'),
(2, 'Accueil Public', 'Accueillir, renseigner le publ'),
(3, 'Encadrement Spectacles', 'Accompagner les compagnies, leur donner un coup de main et encadrer le public lors des spectacles.'),
(4, 'Technique', 'Son, lumière, installation technique sont des missions qui t\'attendent en technique, mais pas besoin d\'être un pro!'),
(5, 'Catering', 'Gérer le coin repas, le lieu où tout le monde se rencontre. On a tous besoin de manger !'),
(6, 'Buvette', 'S\'occuper du service au bar, sous le chapiteau des Zaccros.'),
(7, 'Logistique', 'Logistique - Aider à l\'installation des infrastructures (chapiteaux, tentes, scènes).'),
(8, 'Entrée Site', 'Description à faire');

-- --------------------------------------------------------

--
-- Structure de la table `organisationspectacle`
--

CREATE TABLE `organisationspectacle` (
  `idOrganisationSpectacle` int(11) NOT NULL,
  `idSpectacle` int(11) NOT NULL,
  `idSession` int(11) NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime DEFAULT NULL,
  `idLieu` int(11) NOT NULL DEFAULT '0',
  `info` varchar(100) DEFAULT NULL,
  `secu` int(11) NOT NULL,
  `nbInscrits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `idSession` int(11) NOT NULL,
  `nomSession` varchar(50) DEFAULT NULL,
  `periodeDebut` date NOT NULL,
  `periodeFin` date NOT NULL,
  `bloque` int(11) NOT NULL,
  `suppression` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`idSession`, `nomSession`, `periodeDebut`, `periodeFin`, `bloque`, `suppression`) VALUES
(38, 'laSession', '2021-07-09', '2021-07-10', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `spectacle`
--

CREATE TABLE `spectacle` (
  `idSpectacle` int(11) NOT NULL,
  `nomSpectacle` varchar(100) NOT NULL,
  `dureeMin` int(30) NOT NULL,
  `idSession` int(11) NOT NULL,
  `idCompagnie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dateNaissance` date NOT NULL,
  `rue` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `numTel` varchar(10) NOT NULL,
  `permis` varchar(10) NOT NULL DEFAULT 'non',
  `voiture` varchar(10) NOT NULL DEFAULT 'non',
  `tailleTshirt` varchar(10) NOT NULL,
  `anciennete` varchar(5) NOT NULL DEFAULT 'non',
  `benevoleAmis` varchar(100) DEFAULT NULL,
  `connaissance` varchar(30) NOT NULL,
  `commentaires` varchar(1000) DEFAULT NULL,
  `idSession` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `disponibilites` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nom`, `prenom`, `sexe`, `email`, `dateNaissance`, `rue`, `cp`, `ville`, `numTel`, `permis`, `voiture`, `tailleTshirt`, `anciennete`, `benevoleAmis`, `connaissance`, `commentaires`, `idSession`, `avatar`, `disponibilites`) VALUES
(1, 'Baudy', 'Camille', 'Femme', 'camille.baudy@gmail.com', '2021-04-26', '58 rue de Nevers', '58000', 'nevers', '0600000000', 'non', 'non', 'S', 'non', '', 'Affiche/flyers', '', 38, NULL, NULL),
(2, 'Baudy', 'Camille', 'Femme', 'camille.baudy@gmail.com', '2021-04-26', '58 rue de Nevers', '58000', 'NEVERS', '0600000000', 'non', 'non', 'M', 'non', '', 'Affiche/flyers', '', 38, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`idUtilisateur`,`idMission`,`dateDebut`,`dateFin`),
  ADD KEY `idUtilisateur` (`idUtilisateur`,`idMission`,`dateDebut`,`dateFin`),
  ADD KEY `idMission` (`idMission`);

--
-- Index pour la table `compagnie`
--
ALTER TABLE `compagnie`
  ADD PRIMARY KEY (`idCompagnie`),
  ADD KEY `fk_idSesion` (`idSession`);

--
-- Index pour la table `hu_utilisateur`
--
ALTER TABLE `hu_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Utilisateur` (`idUtilisateur`),
  ADD KEY `FK_idSesson` (`idSession`);

--
-- Index pour la table `h_utilisateur`
--
ALTER TABLE `h_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Utilisateur` (`idUtilisateur`),
  ADD KEY `FK_idSesssion` (`idSession`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`idLieu`);

--
-- Index pour la table `lieu_mission`
--
ALTER TABLE `lieu_mission`
  ADD PRIMARY KEY (`idMission`,`dateDebut`,`dateFin`,`nomLieu`(500)) USING BTREE,
  ADD KEY `idMission` (`idMission`);

--
-- Index pour la table `liste_mission`
--
ALTER TABLE `liste_mission`
  ADD PRIMARY KEY (`idMission`,`idUtilisateur`),
  ADD KEY `FK_idUtilisateur` (`idUtilisateur`),
  ADD KEY `idLieu` (`idLieu`);

--
-- Index pour la table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`idMission`);

--
-- Index pour la table `organisationspectacle`
--
ALTER TABLE `organisationspectacle`
  ADD PRIMARY KEY (`idOrganisationSpectacle`),
  ADD KEY `Fk_idSpectacles` (`idSpectacle`),
  ADD KEY `Fk_idSession` (`idSession`),
  ADD KEY `FK_idLieu` (`idLieu`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`idSession`);

--
-- Index pour la table `spectacle`
--
ALTER TABLE `spectacle`
  ADD PRIMARY KEY (`idSpectacle`),
  ADD KEY `fk_idSesion` (`idSession`),
  ADD KEY `fk_idCompagnie` (`idCompagnie`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD KEY `FK_idSessionUtilisateur` (`idSession`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `compagnie`
--
ALTER TABLE `compagnie`
  MODIFY `idCompagnie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT pour la table `hu_utilisateur`
--
ALTER TABLE `hu_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1720;

--
-- AUTO_INCREMENT pour la table `h_utilisateur`
--
ALTER TABLE `h_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14263;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `idLieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `organisationspectacle`
--
ALTER TABLE `organisationspectacle`
  MODIFY `idOrganisationSpectacle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `idSession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `spectacle`
--
ALTER TABLE `spectacle`
  MODIFY `idSpectacle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`idMission`) REFERENCES `mission` (`idMission`);

--
-- Contraintes pour la table `compagnie`
--
ALTER TABLE `compagnie`
  ADD CONSTRAINT `fk_idSesion` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`);

--
-- Contraintes pour la table `hu_utilisateur`
--
ALTER TABLE `hu_utilisateur`
  ADD CONSTRAINT `FK_Utiliser` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `FK_idSesson` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`);

--
-- Contraintes pour la table `h_utilisateur`
--
ALTER TABLE `h_utilisateur`
  ADD CONSTRAINT `FK_Utilisateur` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `FK_idSesssion` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`);

--
-- Contraintes pour la table `lieu_mission`
--
ALTER TABLE `lieu_mission`
  ADD CONSTRAINT `lieu_mission_ibfk_1` FOREIGN KEY (`idMission`) REFERENCES `mission` (`idMission`);

--
-- Contraintes pour la table `liste_mission`
--
ALTER TABLE `liste_mission`
  ADD CONSTRAINT `FK_idMission` FOREIGN KEY (`idMission`) REFERENCES `mission` (`idMission`),
  ADD CONSTRAINT `FK_idUtilisateur` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `liste_mission_ibfk_1` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`idLieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `organisationspectacle`
--
ALTER TABLE `organisationspectacle`
  ADD CONSTRAINT `FK_idLieu` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`idLieu`),
  ADD CONSTRAINT `Fk_idSession` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`),
  ADD CONSTRAINT `Fk_idSpectacles` FOREIGN KEY (`idSpectacle`) REFERENCES `spectacle` (`idSpectacle`);

--
-- Contraintes pour la table `spectacle`
--
ALTER TABLE `spectacle`
  ADD CONSTRAINT `Fk_idSessions` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`),
  ADD CONSTRAINT `id_Compagnie` FOREIGN KEY (`idCompagnie`) REFERENCES `compagnie` (`idCompagnie`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_idSessionUtilisateur` FOREIGN KEY (`idSession`) REFERENCES `session` (`idSession`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
