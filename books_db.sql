-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 07:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `published_date`, `isbn`, `created_at`) VALUES
(4, 'Moby-Dick', 'Herman Melville', 'Adventure', '1851-10-18', '9780142437247', '2025-01-22 12:48:54'),
(32, '1994', 'Christian Sagun', 'Dystopian Fiction', '1949-06-08', '9780452624935', '2025-01-22 14:17:29'),
(34, '2003', 'Mark Justin Lei', 'Ibong Adarnas', '1949-06-08', '9780452622335', '2025-01-22 14:42:38'),
(35, '', '', '', '0000-00-00', '', '2025-01-22 14:58:59'),
(39, '1944', 'George floyd', 'Dyspian ion', '1949-06-08', '978232324935', '2025-01-22 16:17:48'),
(40, '1951', 'Peter Pan', 'Fairy Tale', '1951-06-08', '978232362935', '2025-01-22 16:27:03'),
(41, '2015', 'Godzilla', 'Action', '2015-01-08', '978232368935', '2025-01-22 16:28:39'),
(42, '2023', 'Bumble Bee', 'Action', '2023-05-08', '978232367735', '2025-01-22 16:29:28'),
(43, '2021', 'Smile', 'Horror', '2021-11-08', '978232369935', '2025-01-22 16:30:10'),
(44, '2018', 'Seven Sundays', 'Drama', '2018-07-11', '978232366235', '2025-01-22 16:31:06'),
(45, '2020', 'Pandemic', 'Horror', '2020-02-16', '978232366535', '2025-01-22 16:31:52'),
(46, '2023', 'Grow Up 2', 'Comedy', '2023-08-20', '978232369835', '2025-01-22 16:32:47'),
(47, '2007', 'Nemo', 'Cartoon', '2007-06-25', '978232366335', '2025-01-22 16:33:29'),
(48, '2015', 'KingKong', 'Action', '2015-12-25', '978232362535', '2025-01-22 16:34:08'),
(49, '2024', 'Slam Dunk', 'Anime', '2024-10-27', '978232362735', '2025-01-22 16:35:07'),
(50, '2022', 'Paw Patrol', 'Cartoon', '2022-04-15', '978232361535', '2025-01-22 16:36:11'),
(51, '2021', 'Kuroko Basketball', 'Cartoon', '2021-10-23', '978232366435', '2025-01-22 16:37:32'),
(52, '2024', 'Last Air Bender', 'Cartoon', '2024-11-02', '978232368735', '2025-01-22 16:38:42'),
(53, '2024', 'Zombie Apocalypse', 'Horror', '2023-02-06', '978232368635', '2025-01-22 16:39:22'),
(55, '2021', 'The River', 'Sci Fi', '2021-05-19', '978232361635', '2025-01-22 16:41:02'),
(56, '2019', 'Kung Fu Hustle', 'Comedy', '2019-08-29', '978232366735', '2025-01-22 16:41:54'),
(57, '2010', 'American Pie 2010', 'Comedy', '2010-11-30', '978232363035', '2025-01-22 16:42:47'),
(59, '2022', 'Forgetten', 'Trailer', '2022-06-09', '978232389835', '2025-01-22 16:44:33'),
(60, '2023', 'Pulang Araw', 'Action', '2023-01-11', '978232388735', '2025-01-22 16:45:29'),
(61, '2025', 'Minecraft', 'Cartoon', '2025-05-13', '978232332735', '2025-01-22 16:46:11'),
(64, '2020', 'Wicked', 'Romantic', '2020-11-28', '978232381535', '2025-01-22 16:48:40'),
(65, '2018', 'Hello Love Again', 'Romantic', '2018-05-23', '978232382235', '2025-01-22 16:49:30'),
(66, '2015', 'Heneral Luna', 'Action', '2015-08-11', '978232382735', '2025-01-22 16:50:09'),
(67, '2019', 'Clarita', 'Horror', '2019-02-14', '978232386735', '2025-01-22 16:50:58'),
(68, '2012', 'Four Sister', 'Romantic', '2012-05-19', '978232388235', '2025-01-22 16:51:51'),
(69, '2019', 'Last Man Standing', 'Action', '2019-02-11', '978238181235', '2025-01-22 16:54:22'),
(70, '2018', 'Curve', 'Action', '2018-11-12', '118238181125', '2025-01-22 16:55:04'),
(71, '2015', 'Chappie', 'Thriller', '2015-09-21', '218238187625', '2025-01-22 16:56:21'),
(73, '2015', 'Daddys Home', 'Thriller', '2015-09-21', '658238187215', '2025-01-22 16:59:32'),
(74, '2021', 'The House of Vladimir', 'Horror', '2021-05-12', '328238989815', '2025-01-22 17:01:41'),
(75, '2019', 'Dead Poole', 'Action', '2019-08-18', '328238932815', '2025-01-22 17:03:52'),
(76, '2010', 'SpiderMan', 'Action', '2010-08-18', '158238932315', '2025-01-22 17:04:19'),
(77, '2017', 'Batman', 'Action', '2017-04-23', '158231232315', '2025-01-22 17:04:50'),
(78, '2019', 'The Walking Dead', 'Horror', '2019-07-11', '618231232315', '2025-01-22 17:06:07'),
(82, '2022', 'The Walking Man', 'Comedy', '2019-07-11', '618232432315', '2025-01-23 05:54:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
