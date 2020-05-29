-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Maj 2020, 13:09
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
-- Struktura tabeli dla tabeli `core`
--

CREATE TABLE `core` (
  `CRID` int(11) NOT NULL,
  `RCID` int(11) NOT NULL,
  `CUID` int(11) NOT NULL,
  `CDAT` datetime NOT NULL,
  `CCON` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `core`
--

INSERT INTO `core` (`CRID`, `RCID`, `CUID`, `CDAT`, `CCON`) VALUES
(1, 1, 10203040, '2020-05-22 14:14:22', 'Dupa123'),
(2, 1, 10203040, '2020-05-22 14:14:22', 'Dupa321');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `coti`
--

CREATE TABLE `coti` (
  `CTID` int(11) NOT NULL,
  `TCID` int(11) NOT NULL,
  `CUID` int(11) NOT NULL,
  `CDAT` datetime NOT NULL,
  `CCON` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `coti`
--

INSERT INTO `coti` (`CTID`, `TCID`, `CUID`, `CDAT`, `CCON`) VALUES
(1, 1, 10203040, '2020-05-22 14:19:10', 'Dupa123'),
(2, 1, 10203040, '2020-05-22 14:19:10', 'Dupa321');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imre`
--

CREATE TABLE `imre` (
  `RIID` int(11) NOT NULL,
  `RINA` varchar(20) NOT NULL,
  `RIAN` varchar(30) NOT NULL,
  `RIUR` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `imre`
--

INSERT INTO `imre` (`RIID`, `RINA`, `RIAN`, `RIUR`) VALUES
(1, 'test1', 'test1', 'http://127.0.0.1/phpmyadmin/tbl_change.php'),
(2, 'test1', 'test1', 'http://127.0.0.1/phpmyadmin/tbl_change2.php');

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
(1, 'test1', 'test1', 'http://127.0.0.1/phpmyadmin/tbl_change.php'),
(2, 'test2', 'test2', 'http://127.0.0.1/phpmyadmin/tbl_change2.php');

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
(3, 'test1', 'test1', 'http://127.0.0.1/phpmyadmin/tbl_change.php'),
(4, 'test2', 'test2', 'http://127.0.0.1/phpmyadmin/tbl_change2.php');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ingr`
--

CREATE TABLE `ingr` (
  `IGID` int(11) NOT NULL,
  `IGNA` varchar(50) NOT NULL,
  `IGCD` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ingr`
--

INSERT INTO `ingr` (`IGID`, `IGNA`, `IGCD`) VALUES
(1, 'Pomidory', '2020-05-22 11:47:18'),
(2, 'Ogorki', '2020-05-22 11:47:18'),
(3, 'Proszek do pieczenia', '2020-05-22 11:47:48'),
(4, 'Ziemniaki', '2020-05-22 11:47:48'),
(5, 'Wieprzowina', '2020-05-22 11:47:48'),
(6, 'Makaron', '2020-05-22 11:47:48'),
(7, 'Grzyby', '2020-05-22 11:47:48');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ipau`
--

CREATE TABLE `ipau` (
  `IPID` int(11) NOT NULL,
  `IPAD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ipau`
--

INSERT INTO `ipau` (`IPID`, `IPAD`) VALUES
(1, '127.0.0.1'),
(2, '127.127.127.127');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE `logs` (
  `LOID` int(11) NOT NULL,
  `LTYP` int(11) NOT NULL,
  `LDAT` datetime NOT NULL,
  `LMBY` int(8) NOT NULL,
  `LIPA` int(11) NOT NULL,
  `LCHA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `logs`
--

INSERT INTO `logs` (`LOID`, `LTYP`, `LDAT`, `LMBY`, `LIPA`, `LCHA`) VALUES
(1, 2, '2020-05-22 14:56:36', 10203040, 1, 'COS EDIT');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loty`
--

CREATE TABLE `loty` (
  `TYID` int(11) NOT NULL,
  `TNAM` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `loty`
--

INSERT INTO `loty` (`TYID`, `TNAM`) VALUES
(1, 'Select'),
(2, 'Edit'),
(3, 'Find'),
(4, 'Modify');

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
  `RTIT` varchar(80) NOT NULL,
  `RAUT` int(8) NOT NULL,
  `RPTI` int(3) NOT NULL,
  `RDIF` int(1) NOT NULL,
  `RLCO` int(5) NOT NULL,
  `RAMO` int(2) NOT NULL,
  `RIAM` int(2) NOT NULL,
  `RCAT` int(1) NOT NULL,
  `RIMG` int(11) NOT NULL,
  `RCTI` datetime NOT NULL,
  `RMTI` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reci`
--

INSERT INTO `reci` (`REID`, `RTIT`, `RAUT`, `RPTI`, `RDIF`, `RLCO`, `RAMO`, `RIAM`, `RCAT`, `RIMG`, `RCTI`, `RMTI`) VALUES
(1, 'Coś tam do zjedzenia', 10203040, 40, 1, 0, 4, 2, 1, 1, '2020-05-22 12:58:05', '2020-05-22 12:58:05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `redi`
--

CREATE TABLE `redi` (
  `DIID` int(1) NOT NULL,
  `DNAM` varchar(20) NOT NULL
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
  `ITRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rein`
--

INSERT INTO `rein` (`ITRI`, `RETI`, `ITRE`) VALUES
(1, 1, 2),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reua`
--

CREATE TABLE `reua` (
  `RUID` int(11) NOT NULL,
  `RUTI` varchar(80) NOT NULL,
  `RUAU` int(8) NOT NULL,
  `RUPT` int(3) NOT NULL,
  `RUDI` int(1) NOT NULL,
  `RULC` int(11) NOT NULL,
  `RUAM` int(2) NOT NULL,
  `RUIA` int(2) NOT NULL,
  `RUCA` int(1) NOT NULL,
  `RUIM` int(11) DEFAULT NULL,
  `RUCT` datetime NOT NULL,
  `RUMT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reua`
--

INSERT INTO `reua` (`RUID`, `RUTI`, `RUAU`, `RUPT`, `RUDI`, `RULC`, `RUAM`, `RUIA`, `RUCA`, `RUIM`, `RUCT`, `RUMT`) VALUES
(1, 'COS', 10203040, 35, 3, 0, 5, 3, 3, 1, '2020-05-22 15:26:47', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stdr`
--

CREATE TABLE `stdr` (
  `STID` int(11) NOT NULL,
  `SCON` varchar(200) NOT NULL,
  `SINO` int(2) NOT NULL,
  `STRI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stdr`
--

INSERT INTO `stdr` (`STID`, `SCON`, `SINO`, `STRI`) VALUES
(9, 'Jajka ugotuj na twardo, przestudź i obierz ze skorupek. Rozkrój je wzdłuż na połówki.\r\n\r\n', 1, 1),
(10, 'Śmietanę ubij na sztywno, dodaj chrzan, posiekany szczypior, sok z cytryny oraz pieprz (część pozostaw do dekoracji) i ½ opakowania Knorr. Całość dobrze wymieszaj.', 2, 1),
(11, 'Osiem plastrów szynki posmaruj przygotowanym kremem i owiń nimi połówki jajek.\r\n\r\n', 3, 1),
(12, 'Pozostałe plastry szynki zwiń w rożki i napełnij chrzanowym kremem.\r\n\r\n', 4, 1),
(13, 'Pozostałą część sosu Knorr rozmieszaj z wodą, oliwą oraz posiekaną natką.\r\n\r\n', 5, 1),
(14, 'Na środku półmiska ułóż sałatę. Dookoła poukładaj zawinięte w szynkę jajka oraz rożki z kremem.', 6, 1),
(15, 'Całość skrop przygotowanym sosem i udekoruj szczypiorem.', 7, 1);

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
(1, 'Kitchen DIY'),
(2, 'Fast cooking');

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
(1, 'Problem do rozwiązania', 'No jakiś problem do rozwiązania', 'No... rozwiązanie problemu jest proste, nie miec problemu', 2, 1, 0, 0, '2020-05-22 13:36:08', '2020-05-22 13:36:08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `urti`
--

CREATE TABLE `urti` (
  `URII` int(11) NOT NULL,
  `URIG` int(11) NOT NULL,
  `IGUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `urti`
--

INSERT INTO `urti` (`URII`, `URIG`, `IGUR`) VALUES
(10, 1, 3),
(11, 1, 7),
(12, 1, 5);

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
(10203040, 'Dupek', 'dupek@dupa.pl', 'dupa.1234', 1, 1, '2020-05-22', 1, 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslr`
--

CREATE TABLE `uslr` (
  `URLI` int(11) NOT NULL,
  `UTRE` int(8) NOT NULL,
  `RETU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uslr`
--

INSERT INTO `uslr` (`URLI`, `UTRE`, `RETU`) VALUES
(1, 10203040, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslt`
--

CREATE TABLE `uslt` (
  `ULTI` int(11) NOT NULL,
  `UTTI` int(8) NOT NULL,
  `TITU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `uslt`
--

INSERT INTO `uslt` (`ULTI`, `UTTI`, `TITU`) VALUES
(1, 10203040, 1);

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
-- Indeksy dla tabeli `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`CRID`),
  ADD KEY `CRID` (`RCID`),
  ADD KEY `CUID` (`CUID`);

--
-- Indeksy dla tabeli `coti`
--
ALTER TABLE `coti`
  ADD PRIMARY KEY (`CTID`),
  ADD KEY `TCID` (`TCID`),
  ADD KEY `CUID` (`CUID`);

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
  ADD PRIMARY KEY (`IGID`);

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
  ADD KEY `LTYP` (`LTYP`),
  ADD KEY `LMBY` (`LMBY`),
  ADD KEY `LIPA` (`LIPA`);

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
  ADD KEY `RAUT` (`RAUT`),
  ADD KEY `RDIF` (`RDIF`),
  ADD KEY `RIMG` (`RIMG`),
  ADD KEY `RCAT` (`RCAT`);

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
  ADD KEY `ITRE` (`ITRE`),
  ADD KEY `RETI` (`RETI`);

--
-- Indeksy dla tabeli `reua`
--
ALTER TABLE `reua`
  ADD PRIMARY KEY (`RUID`),
  ADD KEY `RUAU` (`RUAU`),
  ADD KEY `RUDI` (`RUDI`),
  ADD KEY `RUIM` (`RUIM`),
  ADD KEY `RUCA` (`RUCA`);

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
  ADD KEY `IGUR` (`IGUR`),
  ADD KEY `URIG` (`URIG`);

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
  ADD KEY `RETU` (`RETU`),
  ADD KEY `UTRE` (`UTRE`);

--
-- Indeksy dla tabeli `uslt`
--
ALTER TABLE `uslt`
  ADD PRIMARY KEY (`ULTI`),
  ADD KEY `TITU` (`TITU`),
  ADD KEY `UTTI` (`UTTI`);

--
-- Indeksy dla tabeli `uspe`
--
ALTER TABLE `uspe`
  ADD PRIMARY KEY (`PEID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `core`
--
ALTER TABLE `core`
  MODIFY `CRID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `coti`
--
ALTER TABLE `coti`
  MODIFY `CTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `imre`
--
ALTER TABLE `imre`
  MODIFY `RIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `imti`
--
ALTER TABLE `imti`
  MODIFY `TIIG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `imus`
--
ALTER TABLE `imus`
  MODIFY `UIID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `ingr`
--
ALTER TABLE `ingr`
  MODIFY `IGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `ipau`
--
ALTER TABLE `ipau`
  MODIFY `IPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `logs`
--
ALTER TABLE `logs`
  MODIFY `LOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `loty`
--
ALTER TABLE `loty`
  MODIFY `TYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `reca`
--
ALTER TABLE `reca`
  MODIFY `RCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `reci`
--
ALTER TABLE `reci`
  MODIFY `REID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `redi`
--
ALTER TABLE `redi`
  MODIFY `DIID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `rein`
--
ALTER TABLE `rein`
  MODIFY `ITRI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `reua`
--
ALTER TABLE `reua`
  MODIFY `RUID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `stdr`
--
ALTER TABLE `stdr`
  MODIFY `STID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `tica`
--
ALTER TABLE `tica`
  MODIFY `TCID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `tips`
--
ALTER TABLE `tips`
  MODIFY `TTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `urti`
--
ALTER TABLE `urti`
  MODIFY `URII` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `uslr`
--
ALTER TABLE `uslr`
  MODIFY `URLI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uslt`
--
ALTER TABLE `uslt`
  MODIFY `ULTI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uspe`
--
ALTER TABLE `uspe`
  MODIFY `PEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `core`
--
ALTER TABLE `core`
  ADD CONSTRAINT `core_ibfk_1` FOREIGN KEY (`RCID`) REFERENCES `reci` (`REID`),
  ADD CONSTRAINT `core_ibfk_2` FOREIGN KEY (`CUID`) REFERENCES `user` (`USID`);

--
-- Ograniczenia dla tabeli `coti`
--
ALTER TABLE `coti`
  ADD CONSTRAINT `coti_ibfk_1` FOREIGN KEY (`TCID`) REFERENCES `tips` (`TTID`),
  ADD CONSTRAINT `coti_ibfk_2` FOREIGN KEY (`CUID`) REFERENCES `user` (`USID`);

--
-- Ograniczenia dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`LTYP`) REFERENCES `loty` (`TYID`),
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`LIPA`) REFERENCES `ipau` (`IPID`),
  ADD CONSTRAINT `logs_ibfk_3` FOREIGN KEY (`LMBY`) REFERENCES `user` (`USID`);

--
-- Ograniczenia dla tabeli `reci`
--
ALTER TABLE `reci`
  ADD CONSTRAINT `reci_ibfk_1` FOREIGN KEY (`RIMG`) REFERENCES `imre` (`RIID`),
  ADD CONSTRAINT `reci_ibfk_2` FOREIGN KEY (`RCAT`) REFERENCES `reca` (`RCID`),
  ADD CONSTRAINT `reci_ibfk_3` FOREIGN KEY (`RDIF`) REFERENCES `redi` (`DIID`),
  ADD CONSTRAINT `reci_ibfk_4` FOREIGN KEY (`RAUT`) REFERENCES `user` (`USID`);

--
-- Ograniczenia dla tabeli `rein`
--
ALTER TABLE `rein`
  ADD CONSTRAINT `rein_ibfk_1` FOREIGN KEY (`RETI`) REFERENCES `reci` (`REID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rein_ibfk_2` FOREIGN KEY (`ITRE`) REFERENCES `ingr` (`IGID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `reua`
--
ALTER TABLE `reua`
  ADD CONSTRAINT `reua_ibfk_1` FOREIGN KEY (`RUAU`) REFERENCES `user` (`USID`),
  ADD CONSTRAINT `reua_ibfk_2` FOREIGN KEY (`RUDI`) REFERENCES `redi` (`DIID`),
  ADD CONSTRAINT `reua_ibfk_3` FOREIGN KEY (`RUCA`) REFERENCES `reca` (`RCID`),
  ADD CONSTRAINT `reua_ibfk_4` FOREIGN KEY (`RUIM`) REFERENCES `imre` (`RIID`);

--
-- Ograniczenia dla tabeli `stdr`
--
ALTER TABLE `stdr`
  ADD CONSTRAINT `stdr_ibfk_1` FOREIGN KEY (`STRI`) REFERENCES `reci` (`REID`);

--
-- Ograniczenia dla tabeli `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`TIMG`) REFERENCES `imti` (`TIIG`),
  ADD CONSTRAINT `tips_ibfk_2` FOREIGN KEY (`TCAT`) REFERENCES `tica` (`TCID`);

--
-- Ograniczenia dla tabeli `urti`
--
ALTER TABLE `urti`
  ADD CONSTRAINT `urti_ibfk_1` FOREIGN KEY (`URIG`) REFERENCES `reua` (`RUID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `urti_ibfk_2` FOREIGN KEY (`IGUR`) REFERENCES `ingr` (`IGID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `uslr_ibfk_1` FOREIGN KEY (`RETU`) REFERENCES `reci` (`REID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uslr_ibfk_2` FOREIGN KEY (`UTRE`) REFERENCES `user` (`USID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `uslt`
--
ALTER TABLE `uslt`
  ADD CONSTRAINT `uslt_ibfk_1` FOREIGN KEY (`UTTI`) REFERENCES `user` (`USID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uslt_ibfk_2` FOREIGN KEY (`TITU`) REFERENCES `tips` (`TTID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
