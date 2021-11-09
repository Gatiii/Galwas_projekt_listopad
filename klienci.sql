-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Lis 2021, 15:30
-- Wersja serwera: 10.3.16-MariaDB
-- Wersja PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `klienci`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `Imie i nazwisko` text NOT NULL,
  `adres zamieszkania` text NOT NULL,
  `nr telefonu` int(11) NOT NULL,
  `marka pojazdu` text NOT NULL,
  `pojemnosc silnika` int(11) NOT NULL,
  `numer rejestracyjny` text NOT NULL,
  `przebieg (km)` int(11) NOT NULL,
  `termin odbioru` date NOT NULL,
  `Zgoda na jazde probna` tinyint(1) NOT NULL,
  `Czy samochod jest wgniecony` tinyint(1) NOT NULL,
  `Wymiana klocków hamulcowych` tinyint(1) NOT NULL,
  `Przegląd samochodu` tinyint(1) NOT NULL,
  `Wymiana oleju` tinyint(1) NOT NULL,
  `Malowanie samochodu` tinyint(1) NOT NULL,
  `Wymiana opon` tinyint(1) NOT NULL,
  `usuwanie wgniecen w karoserii` tinyint(1) NOT NULL,
  `ustawianie zbierznosci` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
