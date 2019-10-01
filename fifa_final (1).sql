-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 04:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


create database fifa;
use fifa;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `Club_name` varchar(45) DEFAULT NULL,
  `Club_id` int(11) NOT NULL,
  `Club_league_titles` int(11) DEFAULT NULL,
  `Club_UCL_Titles` int(11) DEFAULT NULL,
  `Club_Top_Scorer` varchar(45) DEFAULT NULL,
  `League_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`Club_name`, `Club_id`, `Club_league_titles`, `Club_UCL_Titles`, `Club_Top_Scorer`, `League_id`) VALUES
('Real Madrid', 111, 33, 13, 'Cristiano Ronaldo', 1111),
('Barcelona', 222, 25, 5, 'Lionel Messi', 1111),
('Juventus', 333, 34, 2, 'Alessandro Del Piero', 2222),
('Manchester United', 444, 20, 3, 'Wayne Rooney', 3333);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Country_id` int(11) NOT NULL,
  `Country_name` varchar(45) NOT NULL,
  `Country_top_scorer` varchar(45) NOT NULL,
  `Ranking` int(11) NOT NULL,
  `World_cup_trophies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_id`, `Country_name`, `Country_top_scorer`, `Ranking`, `World_cup_trophies`) VALUES
(11, 'Spain', 'David Villa', 9, 1),
(12, 'Uruguay', 'Luis Suarez', 6, 2),
(13, 'Brazil', 'Pele', 3, 5),
(14, 'Wales', 'Gareth Bale', 19, 0),
(15, 'Chile', 'Alexis Sanchez', 15, 0),
(22, 'Portugal', 'Cristiano Ronaldo', 7, 0),
(33, 'Engalnd', 'Wayne Rooney', 4, 1),
(44, 'Argentina', 'Lionel Messi', 11, 2),
(55, 'Germany', 'Miroslav Klose', 13, 4),
(66, 'Croatia', 'Davor Suker', 5, 0),
(77, 'Italy', 'Luigi Riva', 17, 4),
(88, 'France', 'Thierry Henry', 2, 2),
(99, 'Belgium', 'Romelu Lukaku', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fifa_game_player`
--

CREATE TABLE `fifa_game_player` (
  `Player_name` varchar(45) DEFAULT NULL,
  `Club_name` varchar(45) DEFAULT NULL,
  `Overall_rating` int(11) DEFAULT NULL,
  `Player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fifa_game_player`
--

INSERT INTO `fifa_game_player` (`Player_name`, `Club_name`, `Overall_rating`, `Player_id`) VALUES
('Cristiano Ronaldo', 'Juventus', 94, 1),
('Lionel Messi', 'Barcelona', 94, 2),
('Luka Modric', 'Real Madrid', 91, 3),
('Thibaut Courtois', 'Real Madrid', 89, 4),
('Gareth Bale', 'Real Madrid', 88, 5),
('Karim Benzema', 'Real Madrid', 84, 6),
('Isco', 'Real Madrid', 89, 7),
('Toni Kroos', 'Real Madrid', 90, 8),
('Casemiro', 'Real Madrid', 88, 9),
('Sergio Ramos', 'Real Madrid', 90, 10),
('Marcelo', 'Real Madrid', 88, 11),
('Raphael Varane', 'Real Madrid', 87, 12),
('Dani Carvajal', 'Real Madrid', 84, 13),
('Luis Suarez', 'Barcelona', 92, 14),
('Ousmane Dembele', 'Barcelona', 84, 15),
('Ivan Rakitic', 'Barcelona', 87, 16),
('Sergio Busquets', 'Barcelona', 88, 17),
('Arthur Melo', 'Barcelona', 81, 18),
('Marc Andre Ter Stegen', 'Barcelona', 89, 19),
('Gerard Pique', 'Barcelona', 87, 20),
('Samuel Umtiti', 'Barcelona', 87, 21),
('Jordi Alba', 'Barcelona', 87, 22),
('Sergio Roberto', 'Barcelona', 84, 23),
('Marco Asensio', 'Real Madrid', 84, 24),
('Federico Bernardeschi', 'Juventus', 84, 25),
('Paulo Dybala', 'Juventus', 89, 26),
('Sami Khedira', 'Juventus', 84, 27),
('Mario Mandzukic', 'Juventus', 84, 28),
('Emre Can', 'Juventus', 81, 29),
('Giorgio Chiellini', 'Juventus', 89, 30),
('Alex Sandro', 'Juventus', 84, 31),
('Leonardo Bonucci', 'Juventus', 88, 32),
('David De Gea', 'Manchester United', 91, 33),
('Paul Pogba', 'Manchester United', 88, 34),
('Marcus Rashford', 'Manchester United', 82, 35),
('Jesse Lingard', 'Manchester United', 82, 36),
('Chris Smalling', 'Manchester United', 81, 37),
('Phil Jones', 'Manchester United', 79, 38),
('Luke Shaw', 'Manchester United', 79, 39),
('Anthony Martial', 'Manchester United', 82, 40);

-- --------------------------------------------------------

--
-- Table structure for table `ingame_player_statistics`
--

CREATE TABLE `ingame_player_statistics` (
  `Player_name` varchar(45) NOT NULL,
  `Stamina` int(11) NOT NULL,
  `Defending` int(11) NOT NULL,
  `Shot_Accuracy` int(11) NOT NULL,
  `Shot_power` int(11) NOT NULL,
  `Gk_reflexes` int(11) NOT NULL,
  `Free_kicks` int(11) NOT NULL,
  `Strength` int(11) NOT NULL,
  `Penalties` int(11) NOT NULL,
  `Dribbling` int(11) NOT NULL,
  `Acceleration` int(11) NOT NULL,
  `Player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingame_player_statistics`
--

INSERT INTO `ingame_player_statistics` (`Player_name`, `Stamina`, `Defending`, `Shot_Accuracy`, `Shot_power`, `Gk_reflexes`, `Free_kicks`, `Strength`, `Penalties`, `Dribbling`, `Acceleration`, `Player_id`) VALUES
('Alex Sandro', 86, 78, 70, 75, 19, 57, 74, 68, 80, 85, 31),
('Anthony Martial', 80, 44, 81, 86, 10, 65, 75, 74, 87, 92, 40),
('Arthur Melo', 87, 78, 75, 72, 12, 65, 76, 70, 82, 75, 18),
('Casemiro', 89, 88, 78, 87, 3, 78, 87, 70, 77, 76, 9),
('Chris Smalling', 83, 83, 42, 67, 11, 32, 85, 44, 54, 72, 37),
('Cristiano Ronaldo', 85, 30, 92, 94, 17, 80, 84, 92, 90, 90, 1),
('Dani Carvajal', 87, 80, 70, 72, 19, 47, 77, 56, 77, 86, 13),
('David De Gea', 29, 90, 27, 77, 93, 19, 32, 29, 31, 45, 33),
('Emre Can', 88, 79, 75, 80, 9, 39, 83, 67, 73, 75, 29),
('Federico Bernardeschi', 77, 39, 79, 82, 11, 74, 76, 77, 85, 90, 25),
('Gareth Bale', 82, 70, 81, 90, 12, 88, 85, 80, 87, 91, 5),
('Gerard Pique', 82, 87, 31, 70, 11, 39, 87, 71, 76, 79, 20),
('Giorgio Chiellini', 82, 90, 54, 80, 9, 38, 87, 65, 59, 60, 30),
('Isco', 77, 21, 83, 81, 7, 80, 77, 80, 93, 79, 7),
('Ivan Rakitic', 84, 68, 82, 86, 6, 77, 77, 75, 86, 78, 16),
('Jesse Lingard', 81, 55, 76, 78, 10, 71, 72, 77, 83, 86, 36),
('Jordi Alba', 87, 77, 71, 70, 11, 39, 71, 65, 77, 89, 22),
('Karim Benzema', 81, 19, 83, 82, 11, 72, 82, 84, 81, 82, 6),
('Leonardo Bonucci', 81, 88, 61, 80, 10, 53, 86, 72, 70, 70, 32),
('Lionel Messi', 85, 10, 94, 87, 15, 88, 83, 84, 96, 90, 2),
('Luis Suarez', 80, 30, 89, 90, 21, 82, 82, 85, 80, 80, 14),
('Luka Modric', 89, 68, 84, 80, 10, 70, 74, 82, 92, 79, 3),
('Luke Shaw', 80, 77, 72, 71, 9, 39, 72, 65, 73, 84, 39),
('Marc Andre Ter Stegen', 21, 87, 38, 76, 90, 12, 79, 21, 21, 70, 19),
('Marcelo', 84, 80, 79, 80, 10, 67, 80, 75, 88, 82, 11),
('Marco Asensio', 80, 51, 81, 87, 10, 77, 75, 71, 84, 86, 24),
('Marcus Rashford', 81, 47, 77, 79, 12, 77, 73, 75, 82, 92, 35),
('Mario Mandzukic', 75, 31, 82, 85, 11, 43, 85, 77, 76, 77, 28),
('Ousmane Dembele', 80, 20, 81, 77, 4, 74, 70, 71, 88, 91, 15),
('Paul Pogba', 88, 74, 80, 89, 13, 81, 83, 81, 88, 82, 34),
('Paulo Dybala', 76, 29, 87, 87, 17, 82, 70, 81, 90, 90, 26),
('Phil Jones', 80, 80, 33, 65, 11, 42, 80, 43, 59, 73, 38),
('Raphael Varane', 85, 87, 60, 77, 12, 40, 84, 64, 70, 84, 12),
('Sami Khedira', 85, 82, 76, 80, 11, 60, 86, 57, 66, 70, 27),
('Samuel Umtiti', 82, 88, 50, 77, 12, 29, 87, 31, 71, 84, 21),
('Sergio Busquets', 88, 87, 65, 63, 10, 40, 89, 50, 84, 69, 17),
('Sergio Ramos', 88, 91, 73, 76, 11, 69, 89, 85, 74, 82, 10),
('Sergio Roberto', 85, 79, 68, 70, 9, 31, 75, 39, 71, 82, 23),
('Thibaut Courtois', 29, 87, 39, 89, 88, 10, 65, 30, 27, 55, 4),
('Toni Kroos', 79, 59, 88, 90, 11, 87, 79, 79, 85, 69, 8);

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `League_name` varchar(45) DEFAULT NULL,
  `League_id` int(11) NOT NULL,
  `Most_clean_sheets` varchar(45) DEFAULT NULL,
  `Top_scorer` varchar(45) DEFAULT NULL,
  `Most_Successful_Club` varchar(45) DEFAULT NULL,
  `Club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`League_name`, `League_id`, `Most_clean_sheets`, `Top_scorer`, `Most_Successful_Club`, `Club_id`) VALUES
('La Liga', 1111, 'Andoni Zubizarreta', 'Lionel Messi', 'Real Madrid', 111),
('Premiere League', 2222, 'Peter Cech', 'Alan Shearer', 'Manchester United', 444),
('Serie A', 3333, 'Gianluigi Buffon', 'Silvio Piola', 'Juventus', 333),
('UEFA Champions League', 4444, 'Iker Casillas', 'Cristiano Ronaldo', 'Real Madrid', 111);

-- --------------------------------------------------------

--
-- Table structure for table `national_tournament`
--

CREATE TABLE `national_tournament` (
  `Tournament_id` varchar(50) NOT NULL,
  `Tournament_name` varchar(45) DEFAULT NULL,
  `Top_scorer` varchar(45) DEFAULT NULL,
  `Current_Winners` varchar(45) DEFAULT NULL,
  `Country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `national_tournament`
--

INSERT INTO `national_tournament` (`Tournament_id`, `Tournament_name`, `Top_scorer`, `Current_Winners`, `Country_id`) VALUES
('5555', 'FIFA World Cup', 'Miroslav Klose', 'France', 88),
('6666', 'UEFA Euro', 'Michel Platini', 'Portugal', 22),
('7777', 'Copa America', 'Zizinho', 'Chile', 15);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Player_id` int(11) NOT NULL,
  `Player_name` varchar(45) NOT NULL,
  `Height` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `Goals` int(11) DEFAULT NULL,
  `Assists` int(11) DEFAULT NULL,
  `Clean_sheets` int(11) DEFAULT NULL,
  `Injury_status` varchar(45) DEFAULT NULL,
  `Transfer_value` int(11) DEFAULT NULL,
  `Country_name` varchar(45) DEFAULT NULL,
  `Club_name` varchar(45) DEFAULT NULL,
  `Country_id` int(11) NOT NULL,
  `Club_id` int(11) NOT NULL,
  `Position` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Player_id`, `Player_name`, `Height`, `Age`, `Weight`, `Goals`, `Assists`, `Clean_sheets`, `Injury_status`, `Transfer_value`, `Country_name`, `Club_name`, `Country_id`, `Club_id`, `Position`) VALUES
(1, 'Cristiano Ronaldo', 2, 34, 81, 682, 207, NULL, 'Fit', 120000000, 'Portugal', 'Juventus', 22, 333, 'Forward'),
(2, 'Lionel Messi', 2, 31, 72, 670, 270, NULL, 'Fit', 150000000, 'Argentina', 'Barcelona', 44, 222, 'Forward'),
(3, 'Luka Modric', 2, 33, 68, 89, 77, NULL, 'Fit', 80000000, 'Croatia', 'Real Madrid', 66, 111, 'Midfielder'),
(4, 'Thibaut Courtois', 2, 26, 91, 0, 1, 60, 'Fit', 60000000, 'Belgium', 'Real Madrid', 99, 111, 'Goalkeeper'),
(5, 'Gareth Bale', 2, 29, 81, 210, 90, NULL, 'Injury Prone', 80000000, 'Wales', 'Real Madrid', 14, 111, 'Forward'),
(6, 'Karim Benzema', 2, 31, 78, 309, 108, NULL, 'Fit', 70000000, 'France', 'Real Madrid', 88, 111, 'Forward'),
(7, 'Isco', 2, 26, 76, 98, 69, NULL, 'Fit', 120000000, 'Spain', 'Real Madrid', 11, 111, 'Midfielder'),
(8, 'Toni Kroos', 2, 28, 78, 59, 60, NULL, 'Fit', 120000000, 'Germany', 'Real Madrid', 55, 111, 'Midfielder'),
(9, 'Casemiro', 2, 25, 85, 20, 20, NULL, 'Fit', 80000000, 'Brazil', 'Real Madrid', 13, 111, 'Midfielder'),
(10, 'Sergio Ramos', 2, 33, 85, 105, 39, 100, 'Fit', 100000000, 'Spain', 'Real Madrid', 11, 111, 'Defender'),
(11, 'Marcelo', 2, 33, 80, 40, 33, 70, 'Fit', 70000000, 'Brazil', 'Real Madrid', 13, 111, 'Defender'),
(12, 'Raphael Varance', 2, 26, 85, 20, 9, 77, 'Injury Prone', 100000000, 'France', 'Real Madrid', 88, 111, 'Defender'),
(13, 'Dani Carvajal', 2, 28, 73, 26, 49, 50, 'Fit', 60000000, 'Spain', 'Real Madrid', 11, 111, 'Defender'),
(14, 'Luis Suarez', 2, 32, 87, 447, 101, NULL, 'Fit', 100000000, 'Uruguay', 'Barcelona', 12, 222, 'Forward'),
(15, 'Ousmane Dembele', 2, 22, 71, 49, 17, NULL, 'Fit', 150000000, 'France', 'Barcelona', 88, 222, 'Forward'),
(16, 'Ivan Rakitic', 2, 31, 78, 89, 70, NULL, 'Fit', 80000000, 'Croatia', 'Barcelona', 66, 222, 'Midfielder'),
(17, 'Sergio Busquets', 2, 30, 86, 29, 19, NULL, 'Fit', 90000000, 'Spain', 'Barcelona', 11, 222, 'Midfielder'),
(18, 'Arthur Melo', 2, 21, 78, 10, 15, NULL, 'Fit', 80000000, 'Brazil', 'Barcelona', 13, 222, 'Midfielder'),
(19, 'Marc Andre Ter Stegen', 2, 26, 84, 0, 0, 60, 'Fit', 100000000, 'Germany', 'Barcelona', 55, 222, 'Goalkeeper'),
(20, 'Gerard Pique', 2, 32, 86, 48, 10, 99, 'Fit', 70000000, 'Spain', 'Barcelona', 11, 222, 'Defender'),
(21, 'Samuel Umtiti', 2, 25, 80, 15, 7, 40, 'Injury Prone', 80000000, 'France', 'Barcelona', 88, 222, 'Defender'),
(22, 'Jordi Alba', 2, 32, 72, 11, 38, 76, 'Fit', 60000000, 'Spain', 'Barcelona', 11, 222, 'Defender'),
(23, 'Sergio Roberto', 2, 27, 74, 11, 12, 40, 'Fit', 40000000, 'Spain', 'Barcelona', 11, 222, 'Defender'),
(24, 'Marco Asensio', 2, 23, 75, 41, 32, NULL, 'Fit', 140000000, 'Spain', 'Real Madrid', 11, 111, 'Forward'),
(25, 'Federico Bernardeschi', 2, 24, 75, 70, 44, NULL, 'Fit', 70000000, 'Italy', 'Juventus', 77, 333, 'Forward'),
(26, 'Paulo Dybala', 2, 25, 72, 98, 42, NULL, 'Fit', 180000000, 'Argentina', 'Juventus', 44, 333, 'Forward'),
(27, 'Sami Khedira', 2, 30, 87, 68, 22, NULL, 'Fit', 30000000, 'Germany', 'Juventus', 55, 333, 'Midfielder'),
(28, 'Mario Mandzukic', 2, 31, 86, 198, 55, NULL, 'Fit', 40000000, 'Croatia', 'Juventus', 66, 333, 'Forward'),
(29, 'Emre Can', 2, 25, 88, 43, 12, NULL, 'Fit', 40000000, 'Germany', 'Juventus', 44, 333, 'Midfielder'),
(30, 'Giorgio Chiellini', 2, 34, 84, 43, 10, 100, 'Fit', 40000000, 'Italy', 'Juventus', 77, 333, 'Defender'),
(31, 'Alex Sandro', 2, 27, 78, 19, 20, 39, 'Fit', 50000000, 'Brazil', 'Juventus', 13, 333, 'Defender'),
(32, 'Leonardo Bonucci', 2, 31, 85, 44, 15, 80, 'Fit', 40000000, 'Italy', 'Juventus', 77, 333, 'Defender'),
(33, 'David De Gea', 2, 27, 85, 0, 0, 58, 'Fit', 100000000, 'Spain', 'Manchester United', 11, 444, 'Goalkeeper'),
(34, 'Paul Pogba', 2, 25, 86, 54, 29, NULL, 'Fit', 120000000, 'France', 'Manchester United', 88, 444, 'Midfielder'),
(35, 'Marcus Rashford', 2, 21, 76, 53, 12, NULL, 'Fit', 90000000, 'England', 'Manchester United', 33, 444, 'Forward'),
(36, 'Jesse Lingard', 2, 25, 71, 43, 10, NULL, 'Fit', 40000000, 'England', 'Manchester United', 33, 444, 'Forward'),
(37, 'Chris Smalling', 2, 29, 87, 21, 6, 50, 'Fit', 20000000, 'England', 'Manchester United', 33, 444, 'Defender'),
(38, 'Phil Jones', 2, 28, 84, 10, 2, 33, 'Injury Prone', 18000000, 'England', 'Manchester United', 33, 444, 'Defender'),
(39, 'Luke Shaw', 2, 24, 80, 19, 17, 39, 'Injury Prone', 30000000, 'England', 'Manchester United', 33, 444, 'Defender'),
(40, 'Anthony Martial', 2, 23, 72, 98, 42, NULL, 'Fit', 100000000, 'France', 'Manchester United', 88, 444, 'Forward');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Player_id` int(11) NOT NULL,
  `Player_name` varchar(45) NOT NULL,
  `Positions` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Player_id`, `Player_name`, `Positions`) VALUES
(1, 'Cristiano Ronaldo', 'LW, ST'),
(2, 'Lionel Messi', 'RW, ST, CAM'),
(3, 'Luka Modric', 'CM, CDM'),
(4, 'Thibaut Courtois', 'GK'),
(5, 'Gareth Bale', 'LW, RW'),
(6, 'Karim Benzema', 'ST'),
(7, 'Isco', 'CAM, CM, LM'),
(8, 'Toni Kroos', 'CM, CDM'),
(9, 'Casemiro', 'CDM'),
(10, 'Sergio Ramos', 'CB'),
(11, 'Marcelo', 'LB'),
(12, 'Raphael Varane', 'CB'),
(13, 'Dani Carvajal', 'RB'),
(14, 'Luis Suarez', 'ST'),
(15, 'Ousmane Dembele', 'LW'),
(16, 'Ivan Rakitic', 'CM, CAM'),
(17, 'Sergio Busquets', 'CDM'),
(18, 'Arthur Melo', 'CM'),
(19, 'Marc Andre Ter Stegen', 'GK'),
(20, 'Gerard Pique', 'CB'),
(21, 'Samuel Umtiti', 'CB'),
(22, 'Jordi Alba', 'LB'),
(23, 'Sergio Roberto', 'RB, CM'),
(24, 'Marco Asensio', 'CAM, LW'),
(25, 'Federico Bernardeschi', 'RM'),
(26, 'Paulo Dybala', 'CAM, CF'),
(27, 'Sami Khedira', 'CM, CDM'),
(28, 'Mario Mandzukic', 'ST, LM'),
(29, 'Emre Can', 'CDM'),
(30, 'Giorgio Chiellini', 'CB'),
(31, 'Alex Sandro', 'LB, LM'),
(32, 'Leonardo Bonucci', 'CB'),
(33, 'David De Gea', 'GK'),
(34, 'Paul Pogba', 'CM, CAM'),
(35, 'Marcus Rashford', 'ST, LW'),
(36, 'Jesse Lingard', 'CAM'),
(37, 'Chris Smalling', 'CB'),
(38, 'Phil Jones', 'CB'),
(39, 'Luke Shaw', 'LB'),
(40, 'Anthony Martial', 'ST, LM');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `Club_id` int(11) NOT NULL,
  `Average_wage` int(11) DEFAULT NULL,
  `Sponsors` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`Club_id`, `Average_wage`, `Sponsors`) VALUES
(111, 150000, 'Adidas'),
(222, 200000, 'Nike'),
(333, 80000, 'Adidas'),
(444, 175000, 'Adidas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`Club_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_id`);

--
-- Indexes for table `fifa_game_player`
--
ALTER TABLE `fifa_game_player`
  ADD PRIMARY KEY (`Player_id`);

--
-- Indexes for table `ingame_player_statistics`
--
ALTER TABLE `ingame_player_statistics`
  ADD PRIMARY KEY (`Player_name`),
  ADD KEY `Player_id` (`Player_id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`League_id`),
  ADD KEY `Club_id` (`Club_id`);

--
-- Indexes for table `national_tournament`
--
ALTER TABLE `national_tournament`
  ADD PRIMARY KEY (`Tournament_id`),
  ADD KEY `Country_id` (`Country_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_id`,`Player_name`),
  ADD KEY `Country_id` (`Country_id`),
  ADD KEY `Club_id` (`Club_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Player_id`),
  ADD KEY `Player_id` (`Player_id`),
  ADD KEY `Player_id_2` (`Player_id`),
  ADD KEY `Player_id_3` (`Player_id`),
  ADD KEY `Player_id_4` (`Player_id`),
  ADD KEY `Player_name` (`Player_name`),
  ADD KEY `Player_id_5` (`Player_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD KEY `salary_ibfk_1` (`Club_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fifa_game_player`
--
ALTER TABLE `fifa_game_player`
  ADD CONSTRAINT `fifa_game_player_ibfk_1` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`);

--
-- Constraints for table `ingame_player_statistics`
--
ALTER TABLE `ingame_player_statistics`
  ADD CONSTRAINT `ingame_player_statistics_ibfk_1` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`);

--
-- Constraints for table `league`
--
ALTER TABLE `league`
  ADD CONSTRAINT `league_ibfk_1` FOREIGN KEY (`Club_id`) REFERENCES `club` (`Club_id`);

--
-- Constraints for table `national_tournament`
--
ALTER TABLE `national_tournament`
  ADD CONSTRAINT `national_tournament_ibfk_1` FOREIGN KEY (`Country_id`) REFERENCES `country` (`Country_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`Country_id`) REFERENCES `country` (`Country_id`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`Club_id`) REFERENCES `club` (`Club_id`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`Club_id`) REFERENCES `club` (`Club_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
