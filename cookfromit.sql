-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Sie 2020, 18:19
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cookfromit`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imre`
--

CREATE TABLE `imre` (
  `RIID` int(11) NOT NULL,
  `RINA` varchar(30) NOT NULL,
  `RIAN` varchar(40) NOT NULL,
  `RIUR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `imre`
--

INSERT INTO `imre` (`RIID`, `RINA`, `RIAN`, `RIUR`) VALUES
(1, 'Default ', 'Default recipe image', './public/recipes_img/testRecipe.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imti`
--

CREATE TABLE `imti` (
  `TIIG` int(11) NOT NULL,
  `TINA` varchar(20) NOT NULL,
  `TIAN` varchar(30) NOT NULL,
  `TIUR` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `imti`
--

INSERT INTO `imti` (`TIIG`, `TINA`, `TIAN`, `TIUR`) VALUES
(1, 'Default', 'Default tip image', './public/tips_img/testTip.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imus`
--

CREATE TABLE `imus` (
  `UIID` int(11) NOT NULL,
  `UINA` varchar(20) NOT NULL,
  `UIAN` varchar(30) NOT NULL,
  `UIUR` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `imus`
--

INSERT INTO `imus` (`UIID`, `UINA`, `UIAN`, `UIUR`) VALUES
(1, 'Default', 'Default user image', 'xxx'),
(3, 'test1', 'test1', 'http://127.0.0.1/phpmyadmin/tbl_change.php'),
(4, 'test2', 'test2', 'http://127.0.0.1/phpmyadmin/tbl_change2.php');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingr`
--

CREATE TABLE `ingr` (
  `IGID` int(11) NOT NULL,
  `IGNA` varchar(60) NOT NULL,
  `IGMT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ingr`
--

INSERT INTO `ingr` (`IGID`, `IGNA`, `IGMT`) VALUES
(14, 'Tomatoe', 3),
(15, 'Milk', 1),
(16, 'Eggs', 3),
(17, 'Flour', 2),
(18, 'Butter', 2),
(19, 'Water', 1),
(20, 'Salmon', 2),
(21, 'Sunflower oil', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inme`
--

CREATE TABLE `inme` (
  `MEID` int(11) NOT NULL,
  `MENA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `inme`
--

INSERT INTO `inme` (`MEID`, `MENA`) VALUES
(1, 'milliliters'),
(2, 'grams'),
(3, 'peaces'),
(4, 'slices'),
(5, 'tea spoon'),
(6, 'table spoon');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ipau`
--

CREATE TABLE `ipau` (
  `IPID` int(11) NOT NULL,
  `IPAD` varchar(15) NOT NULL,
  `IPDA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ipau`
--

INSERT INTO `ipau` (`IPID`, `IPAD`, `IPDA`) VALUES
(1, 'SYSTEM', '0000-00-00 00:00:00'),
(34, '127.0.0.0', '2020-06-28 16:17:47'),
(37, '192.168.1.23', '2020-06-29 20:26:48'),
(43, '127.0.0.1', '2020-06-29 21:57:32'),
(44, '192.168.1.15', '2020-06-30 19:41:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE `logs` (
  `LOID` int(8) UNSIGNED NOT NULL,
  `LTYP` int(10) NOT NULL,
  `LDAT` datetime NOT NULL,
  `LIPA` int(10) NOT NULL,
  `LINF` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `logs`
--

INSERT INTO `logs` (`LOID`, `LTYP`, `LDAT`, `LIPA`, `LINF`) VALUES
(10000002, 1, '2020-06-29 21:18:08', 1, 'test'),
(10000004, 1, '2020-06-29 21:52:47', 1, 'IP address: 127.0.0.1 added to DB'),
(10000008, 1, '2020-06-29 21:57:32', 1, 'IP address: 127.0.0.1 added to DB'),
(10000009, 1, '2020-06-29 22:04:02', 43, 'User test2 registered success'),
(10000010, 1, '2020-06-30 19:41:05', 1, 'IP address: 192.168.1.15 added to DB'),
(10000059, 3, '2020-06-30 21:38:39', 43, 'hnfgn login in error'),
(10000060, 3, '2020-06-30 21:39:16', 43, 'test login success'),
(10000061, 3, '2020-06-30 21:45:06', 43, 'ehfg login in error'),
(10000062, 3, '2020-06-30 21:45:11', 43, 'test login success'),
(10000063, 4, '2020-06-30 21:47:02', 43, 'Logout success'),
(10000064, 3, '2020-06-30 21:47:12', 43, 'test login success'),
(10000065, 4, '2020-06-30 21:47:20', 43, 'Logout success'),
(10000066, 3, '2020-07-02 17:51:55', 43, 'test login success'),
(10000067, 3, '2020-07-06 11:10:22', 43, 'test login success'),
(10000068, 3, '2020-07-09 14:15:06', 43, 'test login success'),
(10000069, 4, '2020-07-09 14:15:42', 43, 'Logout success'),
(10000070, 3, '2020-07-09 14:16:20', 43, 'test login success'),
(10000071, 4, '2020-07-09 14:16:34', 43, 'Logout success'),
(10000072, 3, '2020-07-09 14:16:44', 43, 'test login success'),
(10000073, 4, '2020-07-09 14:18:31', 43, 'Logout success'),
(10000074, 3, '2020-07-09 14:18:37', 43, 'test login success'),
(10000075, 4, '2020-07-09 14:18:59', 43, 'Logout success'),
(10000076, 3, '2020-07-09 14:19:06', 43, 'test login success'),
(10000077, 4, '2020-07-09 14:19:21', 43, 'Logout success'),
(10000078, 3, '2020-07-09 14:19:34', 43, 'test login success'),
(10000079, 4, '2020-07-09 14:20:47', 43, 'Logout success'),
(10000080, 3, '2020-07-09 14:20:55', 43, 'test login success'),
(10000081, 4, '2020-07-09 14:21:05', 43, 'Logout success'),
(10000082, 3, '2020-07-09 14:21:13', 43, 'test login success'),
(10000083, 4, '2020-07-09 14:40:51', 43, 'Logout success'),
(10000084, 3, '2020-07-09 14:42:20', 43, 'test login success'),
(10000085, 4, '2020-07-09 14:46:11', 43, 'Logout success'),
(10000086, 3, '2020-07-09 14:46:19', 43, 'test login success'),
(10000087, 4, '2020-07-09 14:51:04', 43, 'Logout success'),
(10000088, 3, '2020-07-09 14:51:14', 43, 'test login success'),
(10000089, 4, '2020-07-09 14:54:03', 43, 'Logout success'),
(10000090, 3, '2020-07-09 14:54:24', 43, 'test login success'),
(10000091, 4, '2020-07-09 14:55:21', 43, 'Logout success'),
(10000092, 3, '2020-07-09 14:55:33', 43, 'test login success'),
(10000093, 4, '2020-07-09 14:57:49', 43, 'Logout success'),
(10000094, 3, '2020-07-09 14:57:56', 43, 'test login success'),
(10000095, 4, '2020-07-09 15:03:41', 43, 'Logout success'),
(10000096, 3, '2020-07-09 15:21:13', 43, 'test login in error'),
(10000097, 4, '2020-07-09 15:21:22', 43, 'Logout success'),
(10000098, 3, '2020-07-09 15:23:33', 43, 'test login in error'),
(10000099, 4, '2020-07-09 15:23:36', 43, 'Logout success'),
(10000100, 3, '2020-07-09 15:23:43', 43, 'test login in error'),
(10000101, 3, '2020-07-09 15:27:53', 43, 'test login success'),
(10000102, 4, '2020-07-09 15:27:56', 43, 'Logout success'),
(10000103, 3, '2020-07-09 15:40:46', 43, 'test login success'),
(10000104, 4, '2020-07-09 15:46:44', 43, 'Logout success'),
(10000105, 3, '2020-07-09 15:46:52', 43, 'test login success'),
(10000106, 4, '2020-07-09 15:49:06', 43, 'Logout success'),
(10000107, 3, '2020-07-09 15:49:11', 43, 'test login success'),
(10000108, 4, '2020-07-09 15:49:45', 43, 'Logout success'),
(10000109, 3, '2020-07-09 15:49:52', 43, 'test login success'),
(10000110, 4, '2020-07-09 15:50:04', 43, 'Logout success'),
(10000111, 3, '2020-07-09 15:50:10', 43, 'test login success'),
(10000112, 3, '2020-07-10 14:39:18', 43, 'test login success'),
(10000113, 4, '2020-07-10 14:39:56', 43, 'Logout success'),
(10000114, 3, '2020-07-10 14:40:05', 43, 'test login success'),
(10000115, 4, '2020-07-10 14:40:20', 43, 'Logout success'),
(10000116, 3, '2020-07-10 14:40:27', 43, 'test login success'),
(10000117, 4, '2020-07-10 14:41:23', 43, 'Logout success'),
(10000118, 3, '2020-07-10 14:41:31', 43, 'test login success'),
(10000119, 4, '2020-07-10 14:42:52', 43, 'Logout success'),
(10000120, 3, '2020-07-10 14:42:58', 43, 'test login success'),
(10000121, 4, '2020-07-10 14:44:12', 43, 'Logout success'),
(10000122, 3, '2020-07-10 14:44:17', 43, 'test login success'),
(10000123, 4, '2020-07-10 14:57:35', 43, 'Logout success'),
(10000124, 3, '2020-07-10 15:08:19', 43, 'test login success'),
(10000125, 4, '2020-07-10 15:09:07', 43, 'Logout success'),
(10000126, 3, '2020-07-10 15:09:13', 43, 'test login success'),
(10000127, 4, '2020-07-10 15:09:55', 43, 'Logout success'),
(10000128, 3, '2020-07-10 15:10:00', 43, 'test login success'),
(10000129, 4, '2020-07-10 15:11:53', 43, 'Logout success'),
(10000130, 3, '2020-07-10 15:11:59', 43, 'test login success'),
(10000131, 4, '2020-07-10 15:13:47', 43, 'Logout success'),
(10000132, 3, '2020-07-10 15:13:59', 43, 'test login success'),
(10000133, 4, '2020-07-10 15:16:35', 43, 'Logout success'),
(10000134, 3, '2020-07-10 15:16:41', 43, 'test login success'),
(10000135, 3, '2020-07-11 13:02:19', 43, 'test login success'),
(10000136, 3, '2020-07-12 17:54:19', 43, 'test login success'),
(10000137, 3, '2020-07-13 18:27:07', 43, 'test login success'),
(10000138, 3, '2020-07-13 20:00:57', 43, 'test login success'),
(10000139, 6, '2020-07-13 20:28:36', 43, 'Recipe24 added by test'),
(10000140, 3, '2020-07-14 18:20:38', 43, 'test login success'),
(10000141, 3, '2020-07-14 21:15:56', 43, 'test login success'),
(10000142, 4, '2020-07-14 21:24:42', 43, 'Logout success'),
(10000143, 3, '2020-07-14 21:24:59', 43, 'test login success'),
(10000144, 3, '2020-07-14 21:32:55', 43, 'test login success'),
(10000145, 6, '2020-07-14 21:56:32', 43, 'Recipe 25 added by test'),
(10000146, 3, '2020-07-14 22:28:29', 43, 'test login success'),
(10000147, 4, '2020-07-14 23:05:53', 43, 'Logout success'),
(10000148, 3, '2020-07-14 23:06:09', 43, 'test login in error'),
(10000149, 3, '2020-07-14 23:06:17', 43, 'test login success'),
(10000150, 3, '2020-07-15 18:51:11', 43, 'test login success'),
(10000151, 3, '2020-07-15 22:42:49', 43, 'test login success'),
(10000152, 6, '2020-07-15 22:57:13', 43, 'Recipe 26 added by test'),
(10000153, 4, '2020-07-16 00:02:06', 43, 'Logout success'),
(10000154, 3, '2020-07-22 15:22:25', 43, 'test login success'),
(10000155, 3, '2020-07-24 00:13:04', 43, 'test login success'),
(10000156, 6, '2020-07-24 00:13:50', 43, 'Recipe 27 added by test'),
(10000157, 6, '2020-07-24 00:14:31', 43, 'Recipe 28 added by test'),
(10000158, 6, '2020-07-24 00:16:12', 43, 'Recipe 29 added by test'),
(10000159, 3, '2020-07-27 20:19:00', 43, 'test login success'),
(10000160, 4, '2020-07-27 20:31:02', 43, 'Logout success'),
(10000161, 3, '2020-07-27 20:32:56', 43, 'test login success');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loty`
--

CREATE TABLE `loty` (
  `TYID` int(10) NOT NULL,
  `TNAM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `loty`
--

INSERT INTO `loty` (`TYID`, `TNAM`) VALUES
(1, 'ADD'),
(2, 'SELECT'),
(3, 'LOGIN'),
(4, 'LOGOUT'),
(5, 'REGISTRATION'),
(6, 'ADD RECIPE');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reca`
--

CREATE TABLE `reca` (
  `RCID` int(11) NOT NULL,
  `RCNA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reca`
--

INSERT INTO `reca` (`RCID`, `RCNA`) VALUES
(1, 'Breakfest'),
(2, 'Dinner'),
(3, 'Dessert'),
(4, 'Supper');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reci`
--

CREATE TABLE `reci` (
  `REID` int(11) NOT NULL,
  `RETI` varchar(100) NOT NULL,
  `REAU` int(8) NOT NULL,
  `REPT` int(3) NOT NULL,
  `REDI` int(11) NOT NULL,
  `RELC` int(11) NOT NULL,
  `RECC` int(11) NOT NULL,
  `REVC` int(11) NOT NULL,
  `REAM` int(2) NOT NULL,
  `REIA` int(2) NOT NULL,
  `RECA` int(11) NOT NULL,
  `REIM` int(11) NOT NULL,
  `RECT` datetime NOT NULL,
  `REMT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reci`
--

INSERT INTO `reci` (`REID`, `RETI`, `REAU`, `REPT`, `REDI`, `RELC`, `RECC`, `REVC`, `REAM`, `REIA`, `RECA`, `REIM`, `RECT`, `REMT`) VALUES
(1, 'test1', 10000006, 40, 1, 43, 13, 64, 4, 2, 3, 1, '2020-07-15 23:11:58', '2020-07-15 23:11:58'),
(2, 'test2', 10000015, 40, 3, 12, 6, 54, 4, 2, 3, 1, '2020-07-15 23:33:43', '2020-07-15 23:33:43'),
(3, 'test3', 10000015, 68, 3, 15, 45, 3, 3, 4, 2, 1, '2020-07-24 00:20:19', '2020-07-24 00:20:19'),
(4, 'test4', 10000006, 57, 1, 64, 3, 2, 4, 3, 4, 1, '2020-07-24 00:20:19', '2020-07-24 00:20:19'),
(5, 'test5', 10000006, 10, 1, 75, 4, 354, 2, 2, 2, 1, '2020-07-24 00:20:19', '2020-07-24 00:20:19'),
(6, 'test6', 10000006, 30, 2, 64, 43, 456, 4, 5, 3, 1, '2020-07-24 00:20:19', '2020-07-24 00:20:19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `redi`
--

CREATE TABLE `redi` (
  `DIID` int(11) NOT NULL,
  `DNAM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `redi`
--

INSERT INTO `redi` (`DIID`, `DNAM`) VALUES
(1, 'Easy'),
(2, 'Medium'),
(3, 'Hard');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rein`
--

CREATE TABLE `rein` (
  `ITRI` int(11) NOT NULL,
  `RETI` int(11) NOT NULL,
  `ITRE` int(11) NOT NULL,
  `IGAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rein`
--

INSERT INTO `rein` (`ITRI`, `RETI`, `ITRE`, `IGAM`) VALUES
(1, 1, 16, 2),
(2, 1, 15, 100),
(3, 2, 21, 200),
(4, 2, 19, 200),
(5, 3, 16, 2),
(6, 3, 20, 200),
(7, 3, 18, 20),
(8, 3, 14, 2),
(9, 4, 16, 2),
(10, 4, 18, 20),
(11, 4, 20, 200),
(12, 5, 17, 100),
(13, 5, 19, 100),
(14, 6, 18, 10),
(15, 6, 16, 3),
(16, 6, 17, 200),
(17, 6, 15, 100),
(18, 6, 20, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rest`
--

CREATE TABLE `rest` (
  `STID` int(11) NOT NULL,
  `SCON` text NOT NULL,
  `SINO` int(2) NOT NULL,
  `STRI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reua`
--

CREATE TABLE `reua` (
  `RUID` int(11) NOT NULL,
  `RUTI` varchar(100) NOT NULL,
  `RUAU` int(8) NOT NULL,
  `RUPT` int(3) NOT NULL,
  `RUDI` int(11) NOT NULL,
  `RULC` int(11) NOT NULL,
  `RUCC` int(11) NOT NULL,
  `RUVC` int(11) NOT NULL,
  `RUAM` int(2) NOT NULL,
  `RUIA` int(2) NOT NULL,
  `RUCA` int(11) NOT NULL,
  `RUIM` int(11) NOT NULL,
  `RUCT` datetime NOT NULL,
  `RUMT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reua`
--

INSERT INTO `reua` (`RUID`, `RUTI`, `RUAU`, `RUPT`, `RUDI`, `RULC`, `RUCC`, `RUVC`, `RUAM`, `RUIA`, `RUCA`, `RUIM`, `RUCT`, `RUMT`) VALUES
(1, 'test', 10000006, 40, 1, 1, 34, 435, 4, 1, 2, 1, '2020-07-09 14:58:12', '2020-07-09 14:58:12'),
(13, 'test2', 10000006, 2, 1, 1, 52, 765, 2, 1, 1, 1, '2020-07-12 18:40:46', '2020-07-12 18:40:46'),
(24, 'test3', 10000006, 30, 2, 1, 2, 41, 2, 1, 2, 1, '2020-07-13 20:28:35', '2020-07-13 20:28:35'),
(25, 'test4', 10000006, 60, 2, 0, 0, 0, 4, 1, 2, 1, '2020-07-14 21:56:32', '2020-07-14 21:56:32'),
(26, 'test5', 10000006, 50, 1, 0, 0, 0, 4, 4, 3, 1, '2020-07-15 22:57:12', '2020-07-15 22:57:12'),
(27, 'test3', 10000006, 65, 2, 0, 0, 0, 4, 3, 3, 1, '2020-07-24 00:13:49', '2020-07-24 00:13:49'),
(28, 'test4', 10000006, 23, 2, 0, 0, 0, 4, 2, 1, 1, '2020-07-24 00:14:31', '2020-07-24 00:14:31'),
(29, 'test5', 10000006, 32, 1, 0, 0, 0, 5, 4, 4, 1, '2020-07-24 00:16:12', '2020-07-24 00:16:12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stdr`
--

CREATE TABLE `stdr` (
  `STID` int(11) NOT NULL,
  `SCON` text NOT NULL,
  `SINO` int(2) NOT NULL,
  `STRI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stdr`
--

INSERT INTO `stdr` (`STID`, `SCON`, `SINO`, `STRI`) VALUES
(15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 0, 24),
(16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 24),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 24),
(18, 'step1', 0, 25),
(19, 'step2', 1, 25),
(20, 'step3', 2, 25),
(21, 'test1 abcfdgfjhj', 0, 26),
(22, 'test2 ndfjgadnskfhjg', 1, 26),
(23, 'test3gdkfjhkgh', 2, 26),
(24, 'test1', 0, 27),
(25, 'test2', 1, 27),
(26, 'test3', 2, 27),
(27, 'test435', 0, 28),
(28, 'test7634', 1, 28),
(29, 'test46', 0, 29),
(30, 'tewdt6346436', 1, 29),
(31, 'terydf645', 2, 29);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tica`
--

CREATE TABLE `tica` (
  `TCID` int(1) NOT NULL,
  `TCNA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tica`
--

INSERT INTO `tica` (`TCID`, `TCNA`) VALUES
(1, 'Cooking'),
(2, 'Preparation'),
(3, 'Kitchen DIY'),
(4, 'Fresh Longer');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tips`
--

CREATE TABLE `tips` (
  `TTID` int(11) NOT NULL,
  `TIIT` varchar(80) NOT NULL,
  `TPRO` text NOT NULL,
  `TSOL` text NOT NULL,
  `TCAT` int(1) NOT NULL,
  `TIMG` int(11) NOT NULL,
  `TLIK` int(5) NOT NULL,
  `TUSE` int(5) NOT NULL,
  `TMTI` datetime NOT NULL,
  `TCTI` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tips`
--

INSERT INTO `tips` (`TTID`, `TIIT`, `TPRO`, `TSOL`, `TCAT`, `TIMG`, `TLIK`, `TUSE`, `TMTI`, `TCTI`) VALUES
(1, 'Test TIP 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, 43, 54, '2020-08-04 17:20:16', '2020-08-04 17:20:16'),
(2, 'Test TIP 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, 63, 75, '2020-08-04 17:20:16', '2020-08-04 17:20:16'),
(3, 'Test TIP 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, 34, 65, '2020-08-04 17:22:14', '2020-08-04 17:22:14'),
(4, 'Test TIP 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, 56, 97, '2020-08-04 17:22:14', '2020-08-04 17:22:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `urti`
--

CREATE TABLE `urti` (
  `URII` int(11) NOT NULL,
  `URIG` int(11) NOT NULL,
  `IGUR` int(11) NOT NULL,
  `IGAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `urti`
--

INSERT INTO `urti` (`URII`, `URIG`, `IGUR`, `IGAM`) VALUES
(42, 24, 14, 3),
(43, 24, 16, 3),
(44, 24, 19, 500),
(45, 24, 15, 100),
(46, 25, 14, 4),
(47, 25, 16, 5),
(48, 25, 21, 30),
(49, 25, 20, 100),
(50, 26, 14, 4),
(51, 26, 16, 4),
(52, 26, 19, 100),
(53, 26, 15, 100),
(54, 27, 19, 100),
(55, 27, 15, 100),
(56, 27, 20, 200),
(57, 28, 20, 100),
(58, 28, 18, 100),
(59, 29, 14, 2),
(60, 29, 20, 100),
(61, 29, 15, 100),
(62, 29, 18, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `USID` int(8) NOT NULL,
  `UNAM` varchar(32) NOT NULL,
  `UEMA` varchar(100) NOT NULL,
  `UPAS` varchar(64) NOT NULL,
  `USIP` int(11) NOT NULL,
  `UGRO` int(11) NOT NULL,
  `UJOD` date NOT NULL,
  `UPRP` tinyint(1) NOT NULL,
  `UNPR` tinyint(1) DEFAULT NULL,
  `UIMG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`USID`, `UNAM`, `UEMA`, `UPAS`, `USIP`, `UGRO`, `UJOD`, `UPRP`, `UNPR`, `UIMG`) VALUES
(10000006, 'test', 'test@test', '13bade984aa416220470ca3f82bf5fb8', 34, 1, '2020-06-29', 1, 1, 1),
(10000015, 'test2', 'test2@test', '13bade984aa416220470ca3f82bf5fb', 43, 1, '2020-06-29', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslr`
--

CREATE TABLE `uslr` (
  `URLI` int(11) NOT NULL,
  `UTRE` int(8) NOT NULL,
  `RETU` int(10) NOT NULL,
  `LDAT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uslr`
--

INSERT INTO `uslr` (`URLI`, `UTRE`, `RETU`, `LDAT`) VALUES
(1, 10000006, 1, '2020-07-15 23:21:25'),
(2, 10000015, 2, '2020-07-15 23:35:26');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslt`
--

CREATE TABLE `uslt` (
  `ULTI` int(11) NOT NULL,
  `UTTI` int(8) NOT NULL,
  `TITU` int(11) NOT NULL,
  `LDAT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uspe`
--

CREATE TABLE `uspe` (
  `PEID` int(11) NOT NULL,
  `PENA` varchar(20) NOT NULL,
  `PESK` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uspe`
--

INSERT INTO `uspe` (`PEID`, `PENA`, `PESK`) VALUES
(1, 'Standard', 700),
(2, 'Moderator', 770),
(3, 'Admin', 777);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `imre`
--
ALTER TABLE `imre`
  ADD PRIMARY KEY (`RIID`);

--
-- Indeksy dla tabeli `imti`
--
ALTER TABLE `imti`
  ADD PRIMARY KEY (`TIIG`);

--
-- Indeksy dla tabeli `imus`
--
ALTER TABLE `imus`
  ADD PRIMARY KEY (`UIID`);

--
-- Indeksy dla tabeli `ingr`
--
ALTER TABLE `ingr`
  ADD PRIMARY KEY (`IGID`),
  ADD KEY `IGMT` (`IGMT`);

--
-- Indeksy dla tabeli `inme`
--
ALTER TABLE `inme`
  ADD PRIMARY KEY (`MEID`);

--
-- Indeksy dla tabeli `ipau`
--
ALTER TABLE `ipau`
  ADD PRIMARY KEY (`IPID`);

--
-- Indeksy dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`LOID`),
  ADD KEY `LIPA` (`LIPA`),
  ADD KEY `LTYP` (`LTYP`);

--
-- Indeksy dla tabeli `loty`
--
ALTER TABLE `loty`
  ADD PRIMARY KEY (`TYID`);

--
-- Indeksy dla tabeli `reca`
--
ALTER TABLE `reca`
  ADD PRIMARY KEY (`RCID`);

--
-- Indeksy dla tabeli `reci`
--
ALTER TABLE `reci`
  ADD PRIMARY KEY (`REID`),
  ADD KEY `REAU` (`REAU`),
  ADD KEY `REDI` (`REDI`),
  ADD KEY `RECA` (`RECA`),
  ADD KEY `REIM` (`REIM`);

--
-- Indeksy dla tabeli `redi`
--
ALTER TABLE `redi`
  ADD PRIMARY KEY (`DIID`);

--
-- Indeksy dla tabeli `rein`
--
ALTER TABLE `rein`
  ADD PRIMARY KEY (`ITRI`),
  ADD KEY `RETI` (`RETI`),
  ADD KEY `ITRE` (`ITRE`);

--
-- Indeksy dla tabeli `rest`
--
ALTER TABLE `rest`
  ADD PRIMARY KEY (`STID`),
  ADD KEY `STRI` (`STRI`);

--
-- Indeksy dla tabeli `reua`
--
ALTER TABLE `reua`
  ADD PRIMARY KEY (`RUID`),
  ADD KEY `RUCA` (`RUCA`),
  ADD KEY `RUIM` (`RUIM`),
  ADD KEY `RUDI` (`RUDI`),
  ADD KEY `RUAU` (`RUAU`);

--
-- Indeksy dla tabeli `stdr`
--
ALTER TABLE `stdr`
  ADD PRIMARY KEY (`STID`),
  ADD KEY `STRI` (`STRI`);

--
-- Indeksy dla tabeli `tica`
--
ALTER TABLE `tica`
  ADD PRIMARY KEY (`TCID`);

--
-- Indeksy dla tabeli `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`TTID`),
  ADD KEY `TCAT` (`TCAT`),
  ADD KEY `TIMG` (`TIMG`);

--
-- Indeksy dla tabeli `urti`
--
ALTER TABLE `urti`
  ADD PRIMARY KEY (`URII`),
  ADD KEY `URIG` (`URIG`),
  ADD KEY `IGUR` (`IGUR`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USID`),
  ADD KEY `USIP` (`USIP`),
  ADD KEY `UGRO` (`UGRO`),
  ADD KEY `UIMG` (`UIMG`);

--
-- Indeksy dla tabeli `uslr`
--
ALTER TABLE `uslr`
  ADD PRIMARY KEY (`URLI`),
  ADD KEY `UTRE` (`UTRE`),
  ADD KEY `RETU` (`RETU`);

--
-- Indeksy dla tabeli `uslt`
--
ALTER TABLE `uslt`
  ADD PRIMARY KEY (`ULTI`),
  ADD KEY `UTTI` (`UTTI`),
  ADD KEY `TITU` (`TITU`);

--
-- Indeksy dla tabeli `uspe`
--
ALTER TABLE `uspe`
  ADD PRIMARY KEY (`PEID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `imre`
--
ALTER TABLE `imre`
  MODIFY `RIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `imti`
--
ALTER TABLE `imti`
  MODIFY `TIIG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `imus`
--
ALTER TABLE `imus`
  MODIFY `UIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `ingr`
--
ALTER TABLE `ingr`
  MODIFY `IGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `inme`
--
ALTER TABLE `inme`
  MODIFY `MEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `ipau`
--
ALTER TABLE `ipau`
  MODIFY `IPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `logs`
--
ALTER TABLE `logs`
  MODIFY `LOID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000162;

--
-- AUTO_INCREMENT dla tabeli `loty`
--
ALTER TABLE `loty`
  MODIFY `TYID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `reca`
--
ALTER TABLE `reca`
  MODIFY `RCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `reci`
--
ALTER TABLE `reci`
  MODIFY `REID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `redi`
--
ALTER TABLE `redi`
  MODIFY `DIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `rein`
--
ALTER TABLE `rein`
  MODIFY `ITRI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `rest`
--
ALTER TABLE `rest`
  MODIFY `STID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `reua`
--
ALTER TABLE `reua`
  MODIFY `RUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT dla tabeli `stdr`
--
ALTER TABLE `stdr`
  MODIFY `STID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `tica`
--
ALTER TABLE `tica`
  MODIFY `TCID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `tips`
--
ALTER TABLE `tips`
  MODIFY `TTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `urti`
--
ALTER TABLE `urti`
  MODIFY `URII` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `USID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000016;

--
-- AUTO_INCREMENT dla tabeli `uslr`
--
ALTER TABLE `uslr`
  MODIFY `URLI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uslt`
--
ALTER TABLE `uslt`
  MODIFY `ULTI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uspe`
--
ALTER TABLE `uspe`
  MODIFY `PEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ingr`
--
ALTER TABLE `ingr`
  ADD CONSTRAINT `ingr_ibfk_1` FOREIGN KEY (`IGMT`) REFERENCES `inme` (`MEID`);

--
-- Ograniczenia dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`LIPA`) REFERENCES `ipau` (`IPID`),
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`LTYP`) REFERENCES `loty` (`TYID`);

--
-- Ograniczenia dla tabeli `reci`
--
ALTER TABLE `reci`
  ADD CONSTRAINT `reci_ibfk_1` FOREIGN KEY (`REAU`) REFERENCES `user` (`USID`),
  ADD CONSTRAINT `reci_ibfk_2` FOREIGN KEY (`RECA`) REFERENCES `reca` (`RCID`),
  ADD CONSTRAINT `reci_ibfk_3` FOREIGN KEY (`REIM`) REFERENCES `imre` (`RIID`),
  ADD CONSTRAINT `reci_ibfk_4` FOREIGN KEY (`REDI`) REFERENCES `redi` (`DIID`);

--
-- Ograniczenia dla tabeli `rein`
--
ALTER TABLE `rein`
  ADD CONSTRAINT `rein_ibfk_1` FOREIGN KEY (`RETI`) REFERENCES `reci` (`REID`),
  ADD CONSTRAINT `rein_ibfk_2` FOREIGN KEY (`ITRE`) REFERENCES `ingr` (`IGID`);

--
-- Ograniczenia dla tabeli `rest`
--
ALTER TABLE `rest`
  ADD CONSTRAINT `rest_ibfk_1` FOREIGN KEY (`STRI`) REFERENCES `reci` (`REID`);

--
-- Ograniczenia dla tabeli `reua`
--
ALTER TABLE `reua`
  ADD CONSTRAINT `reua_ibfk_1` FOREIGN KEY (`RUCA`) REFERENCES `reca` (`RCID`),
  ADD CONSTRAINT `reua_ibfk_2` FOREIGN KEY (`RUDI`) REFERENCES `redi` (`DIID`),
  ADD CONSTRAINT `reua_ibfk_3` FOREIGN KEY (`RUIM`) REFERENCES `imre` (`RIID`),
  ADD CONSTRAINT `reua_ibfk_4` FOREIGN KEY (`RUAU`) REFERENCES `user` (`USID`);

--
-- Ograniczenia dla tabeli `stdr`
--
ALTER TABLE `stdr`
  ADD CONSTRAINT `stdr_ibfk_1` FOREIGN KEY (`STRI`) REFERENCES `reua` (`RUID`);

--
-- Ograniczenia dla tabeli `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`TCAT`) REFERENCES `tica` (`TCID`),
  ADD CONSTRAINT `tips_ibfk_2` FOREIGN KEY (`TIMG`) REFERENCES `imti` (`TIIG`);

--
-- Ograniczenia dla tabeli `urti`
--
ALTER TABLE `urti`
  ADD CONSTRAINT `urti_ibfk_1` FOREIGN KEY (`IGUR`) REFERENCES `ingr` (`IGID`),
  ADD CONSTRAINT `urti_ibfk_2` FOREIGN KEY (`URIG`) REFERENCES `reua` (`RUID`);

--
-- Ograniczenia dla tabeli `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`USIP`) REFERENCES `ipau` (`IPID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`UGRO`) REFERENCES `uspe` (`PEID`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`UIMG`) REFERENCES `imus` (`UIID`);

--
-- Ograniczenia dla tabeli `uslr`
--
ALTER TABLE `uslr`
  ADD CONSTRAINT `uslr_ibfk_1` FOREIGN KEY (`UTRE`) REFERENCES `user` (`USID`),
  ADD CONSTRAINT `uslr_ibfk_2` FOREIGN KEY (`RETU`) REFERENCES `reci` (`REID`);

--
-- Ograniczenia dla tabeli `uslt`
--
ALTER TABLE `uslt`
  ADD CONSTRAINT `uslt_ibfk_1` FOREIGN KEY (`TITU`) REFERENCES `tips` (`TTID`),
  ADD CONSTRAINT `uslt_ibfk_2` FOREIGN KEY (`UTTI`) REFERENCES `user` (`USID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
