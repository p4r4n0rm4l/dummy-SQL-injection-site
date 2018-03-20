-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 20 Μαρ 2018 στις 11:50:04
-- Έκδοση διακομιστή: 10.1.30-MariaDB
-- Έκδοση PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `test server`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `password`, `email`) VALUES
(1, 'admin1', 'pass', 'l2@hotmail.com'),
(2, 'Crowley', '123456', 'crowley@test.com'),
(3, 'MD5_Admin', 'c74318b61a3024520c466f828c043c79', 'md5_test@test.com');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `article` text NOT NULL,
  `info` text NOT NULL,
  `author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `articles`
--

INSERT INTO `articles` (`id`, `article`, `info`, `author`) VALUES
(1, 'First Demo', 'This is our first demo on SQL injection', 'anonymous'),
(2, 'Second Demo', 'This is our second demo on SQL injection', 'anonymous'),
(3, 'Third Demo', 'This is our third Demo', 'anonymous'),
(4, 'Fourth Demo', 'This is our fourth Demo', 'anonymous');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `stored cards`
--

CREATE TABLE `stored cards` (
  `username` text NOT NULL,
  `name_surname` text NOT NULL,
  `card_number` int(11) NOT NULL,
  `CVV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `stored cards`
--

INSERT INTO `stored cards` (`username`, `name_surname`, `card_number`, `CVV`) VALUES
('crowley', 'First_User', 2147483647, 753),
('test_user', 'Second_User', 2147483647, 159);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
