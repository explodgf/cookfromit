-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lip 2020, 23:24
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
(2, 'test2', 10000015, 40, 3, 12, 6, 54, 4, 2, 3, 1, '2020-07-15 23:33:43', '2020-07-15 23:33:43');

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
(26, 'test5', 10000006, 50, 1, 0, 0, 0, 4, 4, 3, 1, '2020-07-15 22:57:12', '2020-07-15 22:57:12');

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
(23, 'test3gdkfjhkgh', 2, 26);

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
(53, 26, 15, 100);

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
  MODIFY `LOID` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000154;

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
  MODIFY `REID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `redi`
--
ALTER TABLE `redi`
  MODIFY `DIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `rein`
--
ALTER TABLE `rein`
  MODIFY `ITRI` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rest`
--
ALTER TABLE `rest`
  MODIFY `STID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `reua`
--
ALTER TABLE `reua`
  MODIFY `RUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `stdr`
--
ALTER TABLE `stdr`
  MODIFY `STID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `urti`
--
ALTER TABLE `urti`
  MODIFY `URII` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
