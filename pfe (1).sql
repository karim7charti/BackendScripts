-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 avr. 2021 à 00:18
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pasword` varchar(12) DEFAULT NULL,
  `dateAmbauche` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `nom`, `prenom`, `email`, `pasword`, `dateAmbauche`) VALUES
(1, '  sarghini', 'abdelhafid', 'serghini@gmail.com', 'sarghini', '2010-03-01');

-- --------------------------------------------------------

--
-- Structure de la table `fonctionnaire`
--

CREATE TABLE `fonctionnaire` (
  `codeF` varchar(10) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `dateAmbauche` date NOT NULL,
  `grade` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(15) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fonctionnaire`
--

INSERT INTO `fonctionnaire` (`codeF`, `nom`, `prenom`, `dateAmbauche`, `grade`, `email`, `pass`, `type`) VALUES
('1AAA', 'driyefF', 'hocine', '2020-03-01', 'PA A', 'mrabo-orient@live.fr', 'mohamed123', 'p'),
('2AAA', 'mhada', 'mohamed', '2020-03-01', 'échelle 8', 'shzklld@gmail.com', 'mohamedmhada34', 'f'),
('4AAA', 'fadil', 'yassine', '2021-01-02', 'échelle 8', 'mohammed.mhada@ump.ac.ma', 'mohamed', 'f');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fonctionnaire`
--
ALTER TABLE `fonctionnaire`
  ADD PRIMARY KEY (`codeF`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
