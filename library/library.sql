-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 09:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(9) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `name`) VALUES
(1, 'thisisanewauthor'),
(2, 'Author B'),
(3, 'Author C'),
(4, 'Author D'),
(5, 'Author E'),
(6, 'Author F'),
(7, 'Author G'),
(8, 'Author H'),
(9, 'Author I'),
(10, 'Author J'),
(11, 'Author K'),
(12, 'Author L'),
(13, 'Author M'),
(14, 'Author N'),
(15, 'Author O'),
(16, 'Author P'),
(17, 'Author Q'),
(18, 'Author R'),
(19, 'Author S'),
(20, 'Author T'),
(21, 'Author U'),
(22, 'Author V'),
(23, 'Author W'),
(24, 'Author X'),
(25, 'Author Y'),
(26, 'Author Z'),
(27, 'Author AA'),
(28, 'Author BB'),
(29, 'Author CC'),
(30, 'Author DD'),
(31, 'Author EE'),
(32, 'Author FF'),
(33, 'Author GG'),
(34, 'Author HH'),
(35, 'Author II'),
(36, 'Author JJ'),
(37, 'Author KK'),
(38, 'Author LL'),
(39, 'Author MM'),
(40, 'Author NN'),
(41, 'Author OO'),
(42, 'Author PP'),
(43, 'Author QQ'),
(44, 'Author RR'),
(45, 'Author SS'),
(46, 'Author TT'),
(47, 'Author UU'),
(48, 'Author VV'),
(49, 'Author WW'),
(50, 'Author XX'),
(51, 'Author YY'),
(52, 'Author ZZ'),
(53, 'Author AAA'),
(54, 'Author BBB'),
(55, 'Author CCC'),
(56, 'Author DDD'),
(57, 'Author EEE'),
(58, 'Author FFF'),
(59, 'Author GGG'),
(60, 'Author HHH'),
(61, 'Author III'),
(62, 'Author JJJ'),
(63, 'Author KKK'),
(64, 'Author LLL'),
(65, 'Author MMM'),
(66, 'Author NNN'),
(67, 'Author OOO'),
(68, 'Author PPP'),
(69, 'Author QQQ'),
(70, 'Author RRR'),
(71, 'Author SSS'),
(72, 'Author TTT'),
(73, 'Author UUU'),
(74, 'Author VVV'),
(75, 'Author WWW'),
(76, 'Author XXX'),
(77, 'Author YYY'),
(78, 'Author ZZZ'),
(79, 'Author AAAA'),
(80, 'Author BBBB'),
(81, 'Author CCCC'),
(82, 'Author DDDD'),
(83, 'Author EEEE'),
(84, 'Author FFFF'),
(85, 'Author GGGG'),
(86, 'Author HHHH'),
(87, 'Author IIII'),
(88, 'Author JJJJ'),
(89, 'Author KKKK'),
(90, 'Author LLLL'),
(91, 'Author MMMM'),
(92, 'Author NNNN'),
(93, 'Author OOOO'),
(94, 'Author PPPP'),
(95, 'Author QQQQ'),
(96, 'Author RRRR'),
(97, 'Author SSSS'),
(98, 'Author TTTT'),
(99, 'Author UUUU'),
(101, 'J.K. Rowling');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` char(255) NOT NULL,
  `authorid` int(9) NOT NULL,
  `is_borrowed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `authorid`, `is_borrowed`) VALUES
(1, 'thisisabook', 23, 0),
(2, 'Book Title 2', 2, 0),
(3, 'Book Title 3', 3, 0),
(4, 'Book Title 4', 4, 0),
(5, 'hakdog', 65, 0),
(6, 'Book Title 6', 6, 0),
(7, 'Book Title 7', 7, 0),
(8, 'Book Title 8', 8, 0),
(9, 'Book Title 9', 9, 0),
(10, 'Book Title 10', 10, 0),
(11, 'Book Title 11', 11, 0),
(12, 'Book Title 12', 12, 0),
(13, 'Book Title 13', 13, 1),
(14, 'Book Title 14', 14, 0),
(15, 'Book Title 15', 15, 0),
(16, 'Book Title 16', 16, 0),
(17, 'Book Title 17', 17, 0),
(18, 'Book Title 18', 18, 0),
(19, 'Book Title 19', 19, 0),
(20, 'Book Title 20', 20, 0),
(21, 'Book Title 21', 21, 0),
(22, 'Book Title 22', 22, 0),
(23, 'Book Title 23', 23, 0),
(24, 'Book Title 24', 24, 0),
(25, 'Book Title 25', 25, 0),
(26, 'Book Title 26', 26, 0),
(27, 'Book Title 27', 27, 0),
(28, 'Book Title 28', 28, 0),
(29, 'Book Title 29', 29, 0),
(30, 'Book Title 30', 30, 0),
(31, 'Book Title 31', 31, 0),
(32, 'Book Title 32', 32, 0),
(33, 'Book Title 33', 33, 0),
(34, 'Book Title 34', 34, 0),
(35, 'Book Title 35', 35, 0),
(36, 'Book Title 36', 36, 0),
(37, 'Book Title 37', 37, 0),
(38, 'Book Title 38', 38, 0),
(39, 'Book Title 39', 39, 0),
(40, 'Book Title 40', 40, 0),
(41, 'Book Title 41', 41, 0),
(42, 'Book Title 42', 42, 0),
(43, 'Book Title 43', 43, 0),
(44, 'Book Title 44', 44, 0),
(45, 'Book Title 45', 45, 0),
(46, 'Book Title 46', 46, 0),
(47, 'Book Title 47', 47, 0),
(48, 'Book Title 48', 48, 0),
(49, 'Book Title 49', 49, 0),
(50, 'Book Title 50', 50, 0),
(51, 'Book Title 51', 51, 0),
(52, 'Book Title 52', 52, 0),
(53, 'Book Title 53', 53, 0),
(54, 'Book Title 54', 54, 0),
(55, 'Book Title 55', 55, 0),
(56, 'Book Title 56', 56, 0),
(57, 'Book Title 57', 57, 0),
(58, 'Book Title 58', 58, 0),
(59, 'Book Title 59', 59, 0),
(60, 'Book Title 60', 60, 0),
(61, 'Book Title 61', 61, 0),
(62, 'Book Title 62', 62, 0),
(63, 'Book Title 63', 63, 0),
(64, 'Book Title 64', 64, 0),
(65, 'Book Title 65', 65, 0),
(66, 'Book Title 66', 66, 0),
(67, 'Book Title 67', 67, 0),
(68, 'Book Title 68', 68, 0),
(69, 'Book Title 69', 69, 0),
(70, 'Book Title 70', 70, 1),
(71, 'Book Title 71', 71, 0),
(72, 'Book Title 72', 72, 0),
(73, 'Book Title 73', 73, 0),
(74, 'Book Title 74', 74, 0),
(75, 'Book Title 75', 75, 0),
(76, 'Book Title 76', 76, 0),
(77, 'Book Title 77', 77, 0),
(78, 'Book Title 78', 78, 0),
(79, 'Book Title 79', 79, 0),
(80, 'Book Title 80', 80, 0),
(81, 'Book Title 81', 81, 0),
(82, 'Book Title 82', 82, 0),
(83, 'Book Title 83', 83, 0),
(84, 'Book Title 84', 84, 0),
(85, 'Book Title 85', 85, 0),
(86, 'Book Title 86', 86, 0),
(87, 'Book Title 87', 87, 0),
(88, 'Book Title 88', 88, 0),
(89, 'Book Title 89', 89, 1),
(90, 'Book Title 90', 90, 1),
(91, 'Book Title 91', 91, 0),
(92, 'Book Title 92', 92, 0),
(93, 'Book Title 93', 93, 0),
(94, 'Book Title 94', 94, 0),
(95, 'Book Title 95', 95, 0),
(96, 'Book Title 96', 96, 0),
(97, 'Book Title 97', 97, 0),
(98, 'Book Title 98', 98, 0),
(99, 'Book Title 99', 99, 0),
(121, 'The Great Gatsby', 1, 0),
(138, 'The Great Gatsby', 1, 0),
(140, 'The Great Gatsby', 5, 0),
(141, 'The Great Gatsby', 83, 0),
(144, 'book101', 99, 0),
(145, 'thisisabook', 77, 0),
(146, 'thisisabook', 77, 0),
(147, 'thisisabook', 77, 0),
(148, 'thebook', 5, 0),
(149, 'thisisabook', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `collectionid` int(9) NOT NULL,
  `bookid` int(9) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`collectionid`, `bookid`, `authorid`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(46, 46, 46),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50),
(51, 51, 51),
(52, 52, 52),
(53, 53, 53),
(54, 54, 54),
(55, 55, 55),
(56, 56, 56),
(57, 57, 57),
(58, 58, 58),
(59, 59, 59),
(60, 60, 60),
(61, 61, 61),
(62, 62, 62),
(63, 63, 63),
(64, 64, 64),
(65, 65, 65),
(66, 66, 66),
(67, 67, 67),
(68, 68, 68),
(69, 69, 69),
(70, 70, 70),
(71, 71, 71),
(72, 72, 72),
(73, 73, 73),
(74, 74, 74),
(75, 75, 75),
(76, 76, 76),
(77, 77, 77),
(78, 78, 78),
(79, 79, 79),
(80, 80, 80),
(81, 81, 81),
(82, 82, 82),
(83, 83, 83),
(84, 84, 84),
(85, 85, 85),
(86, 86, 86),
(87, 87, 87),
(88, 88, 88),
(89, 89, 89),
(90, 90, 90),
(91, 91, 91),
(92, 92, 92),
(93, 93, 93),
(94, 94, 94),
(95, 95, 95),
(96, 96, 96),
(97, 97, 97),
(98, 98, 98),
(99, 99, 99),
(102, 1, 99),
(103, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `borrower_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jwt_tokens`
--

CREATE TABLE `jwt_tokens` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `iat` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `type` enum('access','refresh') NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(9) NOT NULL,
  `username` char(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(101, 'user101', '5c773b22ea79d367b38810e7e9ad108646ed62e231868cefb0b1280ea88ac4f0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`collectionid`),
  ADD KEY `authorid` (`authorid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `books_authors`
--
ALTER TABLE `books_authors`
  MODIFY `collectionid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jwt_tokens`
--
ALTER TABLE `jwt_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`bookid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
