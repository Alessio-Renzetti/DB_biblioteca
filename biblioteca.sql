-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 11, 2024 alle 14:24
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articolo`
--

CREATE TABLE `articolo` (
  `ID` int(11) NOT NULL,
  `FK_Vendita` int(11) NOT NULL,
  `FK_Libro` int(11) NOT NULL,
  `Copie_acquistate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `articolo`
--

INSERT INTO `articolo` (`ID`, `FK_Vendita`, `FK_Libro`, `Copie_acquistate`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 3),
(3, 3, 3, 1),
(4, 4, 4, 2),
(5, 5, 5, 3),
(6, 6, 6, 1),
(7, 7, 7, 2),
(8, 8, 8, 3),
(9, 9, 9, 1),
(10, 10, 10, 2),
(11, 11, 11, 3),
(12, 12, 12, 1),
(13, 13, 13, 2),
(14, 14, 14, 3),
(15, 15, 15, 1),
(16, 16, 16, 2),
(17, 17, 17, 3),
(18, 18, 18, 1),
(19, 19, 19, 2),
(20, 20, 20, 3),
(21, 21, 21, 1),
(22, 22, 22, 2),
(23, 23, 23, 3),
(24, 24, 24, 1),
(25, 25, 25, 2),
(26, 26, 26, 3),
(27, 27, 27, 1),
(28, 28, 28, 2),
(29, 29, 29, 3),
(30, 30, 30, 1),
(31, 21, 31, 2),
(32, 22, 32, 3),
(33, 23, 33, 1),
(34, 24, 34, 2),
(35, 25, 35, 3),
(36, 26, 36, 1),
(37, 27, 37, 2),
(38, 28, 38, 3),
(39, 29, 39, 1),
(40, 20, 40, 2),
(41, 21, 11, 3),
(42, 22, 12, 1),
(43, 23, 13, 2),
(44, 24, 14, 3),
(45, 25, 15, 1),
(46, 26, 16, 2),
(47, 27, 17, 3),
(48, 28, 18, 1),
(49, 29, 19, 2),
(50, 20, 10, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `autore`
--

CREATE TABLE `autore` (
  `nome_autore` varchar(20) NOT NULL,
  `cognome_autore` varchar(20) NOT NULL,
  `Data_Nascita` date NOT NULL,
  `Data_morte` date DEFAULT NULL,
  `Nazionalità` varchar(20) NOT NULL,
  `id_autore` int(15) NOT NULL,
  `Libri_scritti` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `autore`
--

INSERT INTO `autore` (`nome_autore`, `cognome_autore`, `Data_Nascita`, `Data_morte`, `Nazionalità`, `id_autore`, `Libri_scritti`) VALUES
('John', 'Smith', '1980-05-15', NULL, 'USA', 1, 10),
('Maria', 'Garcia', '1975-10-20', NULL, 'Spain', 2, 8),
('Luca', 'Rossi', '1990-03-25', NULL, 'Italy', 3, 5),
('Sophie', 'Dupont', '1988-08-12', NULL, 'France', 4, 7),
('Miguel', 'Hernandez', '1965-12-02', '2020-04-30', 'Mexico', 5, 15),
('Anna', 'Kowalski', '1973-07-10', NULL, 'Poland', 6, 12),
('Hans', 'Mueller', '1982-01-08', NULL, 'Germany', 7, 9),
('Elena', 'Petrova', '1995-06-17', NULL, 'Russia', 8, 6),
('Chen', 'Wei', '1987-11-23', NULL, 'China', 9, 11),
('Yuki', 'Tanaka', '1984-09-30', NULL, 'Japan', 10, 14),
('Rajan', 'Patel', '1978-04-05', NULL, 'India', 11, 10),
('Luis', 'Gonzalez', '1981-02-28', NULL, 'Mexico', 12, 8),
('Olga', 'Ivanova', '1970-06-14', NULL, 'Russia', 13, 13),
('Mohammed', 'Ali', '1986-03-19', NULL, 'Egypt', 14, 9),
('Alessia', 'Ricci', '1992-07-23', NULL, 'Italy', 15, 7),
('Andreas', 'Müller', '1976-09-18', NULL, 'Germany', 16, 11),
('Fatima', 'Said', '1983-11-11', NULL, 'Egypt', 17, 6),
('Javier', 'Fernandez', '1974-05-07', NULL, 'Spain', 18, 10),
('Hiroki', 'Yamamoto', '1998-12-09', NULL, 'Japan', 19, 8),
('Maria', 'Silva', '1977-08-21', NULL, 'Portugal', 20, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE `cliente` (
  `nome_cliente` varchar(20) NOT NULL,
  `cognome_cliente` varchar(30) NOT NULL,
  `Data_nascita` date NOT NULL,
  `Data_iscrizione` date NOT NULL,
  `id_cliente` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`nome_cliente`, `cognome_cliente`, `Data_nascita`, `Data_iscrizione`, `id_cliente`) VALUES
('Mario', 'Rossi', '1985-03-15', '2020-05-10', 1),
('Laura', 'Bianchi', '1990-11-20', '2018-07-02', 2),
('Giovanni', 'Verdi', '1978-08-07', '2022-01-15', 3),
('Mario', 'Gialli', '1978-05-07', '2018-01-15', 4),
('Carlo', 'Di Carlo', '2005-04-04', '2024-04-02', 5),
('Carlo', 'Verdi', '2002-08-07', '2022-01-15', 6);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `guadagno_noleggio`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `guadagno_noleggio` (
`titolo` varchar(60)
,`Totale` decimal(52,0)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `Titolo` varchar(60) NOT NULL,
  `FK_Autore` int(15) DEFAULT NULL,
  `Prezzo_noleggio_giornaliero` int(25) NOT NULL,
  `Prezzo_vendita` int(25) NOT NULL,
  `id_libro` int(15) NOT NULL,
  `Copie_possedute` int(15) NOT NULL,
  `data_pubblicazione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`Titolo`, `FK_Autore`, `Prezzo_noleggio_giornaliero`, `Prezzo_vendita`, `id_libro`, `Copie_possedute`, `data_pubblicazione`) VALUES
('Il Grande Gatsby', 1, 2, 15, 1, 50, '2003-04-15'),
('Cien años de soledad', 5, 1, 13, 2, 70, '1967-05-30'),
('Harry Potter e la Pietra Filosofale', 10, 2, 18, 3, 80, '1997-06-26'),
('1984', 11, 1, 11, 4, 60, '1949-06-08'),
('La sombra del viento', 5, 2, 14, 5, 65, '2001-10-01'),
('To Kill a Mockingbird', 1, 1, 12, 6, 55, '1960-07-11'),
('Don Quijote de la Mancha', 4, 1, 10, 7, 75, '1605-01-16'),
('Pride and Prejudice', 1, 2, 13, 8, 45, '1813-01-28'),
('War and Peace', 6, 2, 20, 9, 70, '1869-01-01'),
('The Catcher in the Rye', 1, 1, 11, 10, 40, '1951-07-16'),
('One Hundred Years of Solitude', 5, 2, 14, 11, 60, '1970-06-20'),
('Anna Karenina', 6, 2, 16, 12, 65, '1877-01-01'),
('The Alchemist', 12, 1, 14, 13, 50, '1988-01-01'),
('Les Misérables', 7, 2, 17, 14, 55, '1862-01-01'),
('Moby-Dick', 8, 2, 15, 15, 60, '1851-10-18'),
('Lolita', 1, 2, 12, 16, 45, '1955-09-15'),
('The Great Gatsby', 1, 1, 14, 17, 50, '1925-04-10'),
('A Tale of Two Cities', 7, 1, 13, 18, 65, '1859-04-30'),
('Crime and Punishment', 3, 2, 14, 19, 70, '1866-01-01'),
('The Picture of Dorian Gray', 1, 1, 12, 20, 55, '1890-07-20'),
('The Hobbit', 10, 2, 16, 21, 60, '1937-09-21'),
('The Lord of the Rings', 10, 3, 24, 22, 80, '1954-07-29'),
('The Little Prince', 14, 1, 11, 23, 45, '1943-04-06'),
('Wuthering Heights', 1, 2, 14, 24, 55, '1847-12-01'),
('Dracula', 1, 1, 13, 25, 60, '1897-05-26'),
('Frankenstein', 1, 1, 12, 26, 50, '1818-01-01'),
('The Adventures of Huckleberry Finn', 1, 2, 14, 27, 65, '1884-12-10'),
('Alice\'s Adventures in Wonderland', 1, 1, 11, 28, 40, '1865-11-26'),
('The Brothers Karamazov', 3, 2, 16, 29, 75, '1880-01-01'),
('Nineteen Eighty-Four', 4, 1, 13, 30, 70, '1949-06-08'),
('The Kite Runner', 13, 2, 14, 31, 55, '2003-05-29'),
('The Book Thief', 11, 1, 14, 32, 60, '2005-01-01'),
('The Girl with the Dragon Tattoo', 16, 1, 13, 33, 45, '2005-08-01'),
('The Hunger Games', 9, 2, 15, 34, 70, '2008-09-14'),
('Gone with the Wind', 1, 2, 16, 35, 80, '1936-06-30'),
('The Name of the Wind', 17, 2, 18, 36, 65, '2007-03-27'),
('The Grapes of Wrath', 1, 2, 14, 37, 50, '1939-04-14'),
('The Road', 18, 1, 13, 38, 60, '2006-09-26'),
('Pride and Prejudice', 1, 2, 13, 39, 55, '1813-01-28'),
('Life of Pi', 19, 2, 15, 40, 70, '2001-09-11');

-- --------------------------------------------------------

--
-- Struttura della tabella `noleggio`
--

CREATE TABLE `noleggio` (
  `ID` int(11) NOT NULL,
  `FK_Libro` int(15) NOT NULL,
  `FK_Cliente` int(15) NOT NULL,
  `Data_inizio_noleggio` date NOT NULL,
  `Data_fine_noleggio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `noleggio`
--

INSERT INTO `noleggio` (`ID`, `FK_Libro`, `FK_Cliente`, `Data_inizio_noleggio`, `Data_fine_noleggio`) VALUES
(1, 1, 1, '2024-03-01', '2024-03-10'),
(2, 2, 2, '2023-11-12', '2023-11-25'),
(3, 2, 3, '2024-02-18', '2024-03-05'),
(4, 2, 4, '2023-03-15', '2023-03-25'),
(5, 5, 5, '2022-10-05', '2022-10-18'),
(6, 6, 6, '2023-12-20', '2023-12-31'),
(7, 7, 6, '2024-01-10', '2024-01-20'),
(8, 8, 5, '2023-07-02', '2023-07-15'),
(9, 9, 3, '2024-02-28', '2024-03-10'),
(10, 10, 1, '2023-09-01', '2023-09-10'),
(11, 11, 1, '2024-03-15', '2024-03-25'),
(12, 12, 2, '2022-07-20', '2022-07-30'),
(13, 13, 3, '2023-02-10', '2023-02-20'),
(14, 14, 4, '2024-01-05', '2024-01-15'),
(15, 15, 5, '2023-10-20', '2023-10-30'),
(16, 16, 6, '2023-01-08', '2023-01-18'),
(17, 17, 6, '2024-02-15', '2024-02-25'),
(18, 18, 4, '2023-06-05', '2023-06-15'),
(19, 19, 2, '2022-11-18', '2022-11-28'),
(20, 20, 1, '2023-07-30', '2023-08-10'),
(21, 21, 1, '2024-01-01', '2024-01-10'),
(22, 22, 2, '2023-10-05', '2023-10-15'),
(23, 23, 3, '2023-02-18', '2023-02-28'),
(24, 24, 4, '2024-03-10', '2024-03-20'),
(25, 25, 5, '2023-04-20', '2023-04-30'),
(26, 26, 6, '2024-02-02', '2024-02-12'),
(27, 27, 1, '2023-09-25', '2023-10-05'),
(28, 28, 1, '2022-12-08', '2022-12-18'),
(29, 29, 2, '2023-05-15', '2023-05-25'),
(30, 30, 6, '2024-01-30', '2024-02-09'),
(31, 31, 1, '2023-11-10', '2023-11-20'),
(32, 32, 2, '2023-08-03', '2023-08-13'),
(33, 33, 3, '2022-09-22', '2022-10-02'),
(34, 34, 4, '2024-03-05', '2024-03-15'),
(35, 35, 5, '2023-06-12', '2023-06-22'),
(36, 36, 6, '2022-12-25', '2023-01-04'),
(37, 37, 4, '2023-09-10', '2023-09-20'),
(38, 38, 5, '2024-01-20', '2024-01-30'),
(39, 39, 1, '2023-10-03', '2023-10-13'),
(40, 40, 1, '2022-11-30', '2022-12-10'),
(41, 1, 1, '2023-08-15', '2023-08-25'),
(42, 2, 4, '2024-02-05', '2024-02-15'),
(43, 2, 5, '2023-12-20', '2023-12-30'),
(44, 2, 6, '2023-10-28', '2023-11-07'),
(45, 5, 6, '2023-05-20', '2023-05-30'),
(46, 6, 6, '2024-01-15', '2024-01-25'),
(47, 7, 2, '2023-10-03', '2023-10-13'),
(48, 8, 1, '2022-12-12', '2022-12-22'),
(49, 9, 4, '2023-06-25', '2023-07-05'),
(50, 10, 3, '2024-03-01', '2024-03-11');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `s`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `s` (
`Titolo` varchar(60)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `vendite`
--

CREATE TABLE `vendite` (
  `FK_Cliente` int(15) NOT NULL,
  `data_acquisto` date NOT NULL,
  `Sconto_applicato` float NOT NULL,
  `ID_Vendita` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `vendite`
--

INSERT INTO `vendite` (`FK_Cliente`, `data_acquisto`, `Sconto_applicato`, `ID_Vendita`) VALUES
(1, '2023-04-05', 0.1, 1),
(2, '2022-12-20', 0.05, 2),
(3, '2024-01-10', 0.15, 3),
(2, '2023-05-15', 0.1, 4),
(5, '2022-10-28', 0.05, 5),
(1, '2023-12-12', 0.15, 6),
(5, '2024-02-18', 0.1, 7),
(6, '2023-08-05', 0.05, 8),
(2, '2022-11-30', 0.15, 9),
(1, '2023-09-22', 0.1, 10),
(4, '2024-03-07', 0.05, 11),
(3, '2022-07-14', 0.15, 12),
(2, '2023-01-25', 0.1, 13),
(3, '2024-02-09', 0.05, 14),
(2, '2023-10-10', 0.15, 15),
(2, '2022-12-03', 0.1, 16),
(6, '2023-05-28', 0.05, 17),
(5, '2024-01-15', 0.15, 18),
(4, '2023-07-18', 0.1, 19),
(1, '2022-11-02', 0.05, 20),
(6, '2023-11-20', 0.15, 21),
(2, '2024-02-27', 0.1, 22),
(1, '2023-08-10', 0.05, 23),
(5, '2022-10-25', 0.15, 24),
(6, '2023-04-02', 0.1, 25),
(2, '2024-01-20', 0.05, 26),
(1, '2023-09-08', 0.15, 27),
(3, '2022-12-15', 0.1, 28),
(3, '2023-05-05', 0.05, 29),
(3, '2024-02-11', 0.15, 30);

-- --------------------------------------------------------

--
-- Struttura per vista `guadagno_noleggio`
--
DROP TABLE IF EXISTS `guadagno_noleggio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `guadagno_noleggio`  AS SELECT `libri`.`Titolo` AS `titolo`, sum(`libri`.`Prezzo_noleggio_giornaliero` * (to_days(`noleggio`.`Data_fine_noleggio`) - to_days(`noleggio`.`Data_inizio_noleggio`))) AS `Totale` FROM (`libri` join `noleggio` on(`noleggio`.`FK_Libro` = `libri`.`id_libro`)) GROUP BY `libri`.`Titolo` HAVING `Totale` > 20 ;

-- --------------------------------------------------------

--
-- Struttura per vista `s`
--
DROP TABLE IF EXISTS `s`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `s`  AS SELECT `libri`.`Titolo` AS `Titolo` FROM (`libri` join `articolo` on(`libri`.`id_libro` = `articolo`.`FK_Libro`)) WHERE `articolo`.`Copie_acquistate` = 0 ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articolo`
--
ALTER TABLE `articolo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Vendita_Articolo` (`FK_Vendita`),
  ADD KEY `Libro_Articolo` (`FK_Libro`);

--
-- Indici per le tabelle `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`id_autore`);

--
-- Indici per le tabelle `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `Autore_ID` (`FK_Autore`);

--
-- Indici per le tabelle `noleggio`
--
ALTER TABLE `noleggio`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cliente_Noleggio` (`FK_Cliente`),
  ADD KEY `Libro_Noleggio` (`FK_Libro`);

--
-- Indici per le tabelle `vendite`
--
ALTER TABLE `vendite`
  ADD PRIMARY KEY (`ID_Vendita`),
  ADD KEY `cliente_ID` (`FK_Cliente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articolo`
--
ALTER TABLE `articolo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `autore`
--
ALTER TABLE `autore`
  MODIFY `id_autore` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `libri`
--
ALTER TABLE `libri`
  MODIFY `id_libro` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `noleggio`
--
ALTER TABLE `noleggio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `vendite`
--
ALTER TABLE `vendite`
  MODIFY `ID_Vendita` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `articolo`
--
ALTER TABLE `articolo`
  ADD CONSTRAINT `Libro_Articolo` FOREIGN KEY (`FK_Libro`) REFERENCES `libri` (`id_libro`) ON DELETE NO ACTION,
  ADD CONSTRAINT `Vendita_Articolo` FOREIGN KEY (`FK_Vendita`) REFERENCES `vendite` (`ID_Vendita`) ON DELETE NO ACTION;

--
-- Limiti per la tabella `libri`
--
ALTER TABLE `libri`
  ADD CONSTRAINT `Autore_ID` FOREIGN KEY (`FK_Autore`) REFERENCES `autore` (`id_autore`) ON UPDATE NO ACTION;

--
-- Limiti per la tabella `noleggio`
--
ALTER TABLE `noleggio`
  ADD CONSTRAINT `Cliente_Noleggio` FOREIGN KEY (`FK_Cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION,
  ADD CONSTRAINT `Libro_Noleggio` FOREIGN KEY (`FK_Libro`) REFERENCES `libri` (`id_libro`) ON DELETE NO ACTION;

--
-- Limiti per la tabella `vendite`
--
ALTER TABLE `vendite`
  ADD CONSTRAINT `cliente_ID` FOREIGN KEY (`FK_Cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
