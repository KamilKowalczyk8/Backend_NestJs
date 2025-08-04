-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 06:42 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meczownik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `druzyny_dolny_slask`
--

CREATE TABLE `druzyny_dolny_slask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwa` text NOT NULL,
  `liga` enum('Ekstraklasa','Okręgówka','IV','Klasa A','Klasa B') NOT NULL,
  `okreg` enum('Wałbrzych','Wrocław','Jelenia Góra','Legnica') DEFAULT NULL,
  `grupa` varchar(20) DEFAULT NULL,
  `punkty` int(11) NOT NULL DEFAULT 0,
  `rozegrane_mecze` int(11) NOT NULL DEFAULT 0,
  `strzelone_bramki` int(11) NOT NULL DEFAULT 0,
  `stracone_bramki` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dumping data for table `druzyny_dolny_slask`
--
--
-- Indeksy dla zrzutów tabel
--

INSERT INTO `druzyny_dolny_slask` (`id`, `Nazwa`, `liga`, `okreg`, `grupa`, `punkty`, `rozegrane_mecze`,`strzelone_bramki`,`stracone_bramki`) VALUES

(21001, 'Legsad Kościelec', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21002, 'Górnik Złotoryja', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21003, 'Twardy Świętoszów', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21004, 'Iskra Księginice', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21005, 'Chrobry II Głogów S.A.', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21006, 'MGKS Moto - Jelcz Oława', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21007, 'Polonia Środa Śląska', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21008, 'Orzeł Ząbkowice Śląskie', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21009, 'Lechia Dzierżoniów', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21010, 'Piast Żmigród', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21011, 'Barycz Sułów', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21012, 'Łużyce Lubań', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21013, 'Błyskawica Gać', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21014, 'KP Górnik Wałbrzych', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21015, 'GKS Mirków-Długołęka', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21016, 'Piast Nowa Ruda', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21017, 'AKS Granit Strzegom SA', 'IV', 'Wrocław', 'Gr. 1', 0, 0),
(21018, 'Prochowiczanka', 'IV', 'Wrocław', 'Gr. 1', 0, 0),

--Jelenia Góra Klasa A
--Gr 1
(21019, 'Olimpia Kowary', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21020, 'Pogoń Świerzawa', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21021, 'Bóbr Marciszów', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21022, 'Kwarc Pisarzowice', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21023, 'Orzeł Wojcieszów', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21024, 'KS II Łomnica', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21025, 'Skalnik Czarny Bór', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21026, 'Orzeł II Mysłakowice', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21027, 'Lotnik Jeżów Sudecki', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21028, 'Włókniarz Chełmsko', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21029, 'Orzeł Lubawka', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21030, 'Victoria II Jelenia Góra', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21031, 'Halniak Miłków', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),
(21032, 'Czarni Przedwojów', 'Klasa A', 'Jelenia Góra', 'Gr. 1', 0, 0),

--Gr 2
(21033, 'Sudety Giebułtów', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21034, 'Iskra Łagów', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21035, 'Łużyce II Lubań', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21036, 'Granica Bogatynia', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21037, 'Cosmos Radzimów', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21038, 'Błękitni Studniska Dolne', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21039, 'KS Wojcieszyce-Szklarska Poręba', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21040, 'Olsza Olszyna', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21041, 'Stella Lubomierz', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21042, 'Czarni Strzyżowiec', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21043, 'Piast Zawidów', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21044, 'Korona Radostów', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21045, 'Łazek Pisarzowice', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),
(21046, 'Fatma Pobiedna', 'Klasa A', 'Jelenia Góra', 'Gr. 2', 0, 0),

--Gr 3
(21047, 'Czarni Lwówek Śląski', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(21048, 'Victoria Ruszów', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(21049, 'Kolonia Bolesławiec', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22001, 'BKS II Bolesławiec', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22002, 'Sparta Zebrzydowa', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22003, 'LKS Mierzwin', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22004, 'KS Milków', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22005, 'Górnik Węgliniec', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22006, 'GKS Tomaszów Bolesławiecki', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22007, 'LKS Ocice', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22008, 'WKS Żarki Średnie', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22009, 'KS Stare Jaroszowice-Żeliszów', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22010, 'Zjednoczeni Nowogrodziec', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22011, 'Piast Wykroty', 'Klasa A', 'Jelenia Góra', 'Gr. 3', 0, 0),

--Jelenia Góra Klasa B
--Gr 1
(22012, 'Amfibolit Leszczyniec', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22013, 'Bóbr Opawa', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22014, 'Dragon Miszkowice', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22015, 'Bóbr II Marciszów', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22016, 'Orły Lipienica', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22017, 'Victoria Czadrów', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22018, 'Uran Okrzeszyn', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22019, 'TS Wojanów', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22020, 'Sezal 2 Janiszów', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22021, 'Piast Bolków', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22022, 'Olimpia II Kowary', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22023, 'Lesk Sędzisław', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22024, 'Rudawy Janowice Wielkie', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),
(22025, 'Pagaz Krzeszów', 'Klasa B', 'Jelenia Góra', 'Gr. 1', 0, 0),

--Gr 2
(22026, 'GLKS Jeżów Sudecki-Czernica', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22027, 'Lotnik II Jeżów Sudecki', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22028, 'Juvenia Rybnica', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22029, 'GKS Podgórzyn', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22030, 'PUB-GOL Jelenia Góra', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22031, 'Huragan II Proboszczów', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22032, 'FC Karpacz', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22033, 'Potok Karpniki', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22034, 'Karkonosze II Jelenia Góra', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22035, 'Pogoń II Świerzawa', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22036, 'WKS Pilchowice', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22037, 'Orzeł II Wojcieszów', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22038, 'Lechia II Piechowice', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),
(22039, 'KS Maciejowa', 'Klasa B', 'Jelenia Góra', 'Gr. 2', 0, 0),

--Gr 3
(22040, 'Lotnik Twardogóra', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22041, 'Widawa Bierutów', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22042, 'KS Gręboszyce', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22043, 'Długołęka 2000', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22044, 'Strzelinianka Strzelin', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22045, 'Olimpia Bukowinka', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22046, 'Perła Węgrów', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22047, 'Polonia Miłoszyce', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22048, 'Wratislavia II Wrocław', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22049, 'Zenit II Międzybórz', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22050, 'Sokół Marcinkowice', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22051, 'Energetyk Siechnice', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22052, 'KS Żórawina', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),
(22053, 'Korona Osiek', 'Klasa B', 'Jelenia Góra', 'Gr. 3', 0, 0),

--Gr 4
(22054, 'Pogoń Wleń', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22055, 'LZS Niwnice', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22056, 'KS Kotliska', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22057, 'Zbylut Zbylutów', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22058, 'Chmielanka Chmieleń', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22059, 'Bielany Biedrzychowice', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22060, 'Orzeł Gościszów', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22061, 'Olsza II Olszyna', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22062, 'Kwisa Świeradów Zdrój', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22063, 'Granit Gierałtów', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(22064, 'Zryw Ubocze', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(23001, 'Legend Squad Radogoszcz', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(23002, 'Skalnik Rębiszów', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),
(23003, 'KS Włodzice', 'Klasa B', 'Jelenia Góra', 'Gr. 4', 0, 0),

--Gr 5
(23004, 'KS Szyszkowa', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23005, 'Granica Miłoszów', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23006, 'Pogoń Markocice', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23007, 'Orzeł Platerówka', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23008, 'Jaśnica Opolno Zdrój', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23009, 'Nysa II Zgorzelec', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23010, 'WKS Przyszłość Dłużyna', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23011, 'Piast Czerwona Woda', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23012, 'LZS Zaręba', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23013, 'Lech Ręczyn', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23014, 'Bazalt Sulików', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23015, 'Zjednoczeni Porajów-Kopaczów', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),
(23016, 'Zryw Bratków', 'Klasa B', 'Jelenia Góra', 'Gr. 5', 0, 0),

--Okręgówka
(23032, 'Victoria Jelenia Góra', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23017, 'Orzeł Mysłakowice', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23018, 'GKS Warta Bolesławiecka', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23019, 'LZS Kościelnik', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23020, 'Lechia Piechowice', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23021, 'KS Łomnica', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23022, 'Włókniarz Leśna', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23023, 'Olimpia Kamienna Góra', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23024, 'Gryf Gryfów Śląski', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23025, 'BKS Bolesławiec', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23026, 'Włókniarz Mirsk', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23027, 'Apis Jędrzychowice', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23028, 'Nysa Zgorzelec', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23029, 'GKS Raciborowice', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23030, 'Chrobry Nowogrodziec', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),
(23031, 'Hutnik Pieńsk', 'Okręgówka', 'Jelenia Góra', 'Gr. 1', 0, 0),


--Legnica Klasa A
--Gr. 1
(23033, 'Odra Chobienia', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23034, 'LZS Ostaszów', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23035, 'Orzeł Czerna', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23036, 'Viktoria Borek', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23037, 'Sparta Przedmoście', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23038, 'Gwardia Białołęka', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23039, 'Sokół II Jerzmanowa', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23040, 'Płomień Radwanice', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23041, 'Górnik II Polkowice', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(23042, 'Zamet Przemków', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24001, 'Dragon Jaczów', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24002, 'Zryw Kotla', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24003, 'GLKS Gaworzyce', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24004, 'Orla Wąsosz', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24005, 'Łagoszovia Łagoszów', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),
(24006, 'GKS Piast Rzęczyca', 'Klasa A', 'Legnica', 'Gr. 1', 0, 0),

--Gr. 2
(24007, 'Fortuna Obora', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24008, 'Orkan Szczedrzykowice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24009, 'Płomień Michów', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24010, 'Sparta Parszowice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24011, 'Dąb Stowarzyszenie Siedliska', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24012, 'Goldengranit Czarni Rokitki', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24013, 'Iskra II Kochlice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24014, 'Arka Trzebnice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24015, 'Unia Miłoradzice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24016, 'Unia Szklary Górne', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24017, 'Kolejarz Miłkowice', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24018, 'Huzar Raszówka', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24019, 'Chojnowianka II Chojnów', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24020, 'KS Kłopotów-Osiek', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24021, 'Czarni Dziewin', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),
(24022, 'Górnik Lubin', 'Klasa A', 'Legnica', 'Gr. 2', 0, 0),

--Gr. 3
(24023, 'Fenix Pielgrzymka', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24024, 'Wilkowianka Wilków', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24025, 'Rataj Paszowice', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24026, 'Wilki Różana', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24027, 'Cicha Woda Tyniec Legnicki', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24028, 'Park Targoszyn', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24029, 'LZS Lipa', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24030, 'Polonia Ernestynów', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24031, 'Mewa Kunice', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24032, 'Ros-Bruk Damianowo', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24033, 'Orzeł Zagrodno', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24034, 'Odra Malczyce', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24035, 'Rodło Granowice', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24036, 'Huragan Proboszczów', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24037, 'Ikar Miłogostowice', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),
(24038, 'Bazalt Piotrowice', 'Klasa A', 'Legnica', 'Gr. 3', 0, 0),


--Legnica Klasa B
--Gr 1
(24039, 'Mieszko Ruszowice', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24040, 'Iskra Nielubia', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24041, 'Pogoń II Góra', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24042, 'LZK Koźlice', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24043, 'Zawisza Serby', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24044, 'Sparta II Grębocice', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24045, 'Zadzior Buczyna', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24046, 'Zryw II Kotla', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24047, 'Odra Grodziec Mały', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24048, 'Victoria Siciny', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24049, 'Sokół Niechlów', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24050, 'KS Kłobuczyn', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),
(24051, 'Perła Potoczek', 'Klasa B', 'Legnica', 'Gr. 1', 0, 0),


--Gr 2
(31001, 'Skarpa Orsk', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31002, 'Victoria Parchów', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31003, 'Sparta II Rudna', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31004, 'Błysk Studzionki', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31005, 'Kalina Sobin', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31006, 'Platan Siedlce', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31007, 'Stal II Chocianów', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31008, 'Kryształ Chocianowiec', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31009, 'Iskra II Księginice', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31010, 'LZS Nowa Wieś Lubińska', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31011, 'Kłos Moskorzyn', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31012, 'Relaks Szklary Górna', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31013, 'Kupryt Sucha Górna', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),
(31014, 'LZS Komorniki II', 'Klasa B', 'Legnica', 'Gr. 2', 0, 0),

--Gr 3
(32001, 'Rycerz Legnickie Pole', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32002, 'Lubiatowianka Lubiatów', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32003, 'Legsad II Kościelec', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32004, 'Korona Kawice', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32005, 'Krokus Kwiatkowice', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32006, 'Zakaczawie Legnica', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32007, 'Dąb Stowarzyszenie II Siedliska', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32008, 'Mała Unia Rosochata', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32009, 'Kaczawa II Bieniowice', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32010, 'KS Mierzowice', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32011, 'Grom Gromadzyń-Wielowieś', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32012, 'Victoria Niemstów', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),
(32013, 'Albatros Jaśkowice', 'Klasa B', 'Legnica', 'Gr. 3', 0, 0),

--Gr 4
(32015, 'Orzeł Pichorowice', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(32016, 'Tatra Krzeniów', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33001, 'LZS Lipa II', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33002, 'Lechia Rokitnica', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33003, 'Zryw Chełm', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33004, 'KS Lusina', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33005, 'Wulkan Nowy Kościół', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33006, 'Platan Sichów', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33007, 'Rodło II Granowice', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33008, 'Jaworzanka 1946 II Jawor', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33009, 'JTS Piast Jawor', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),
(33010, 'Wilki II Różana', 'Klasa B', 'Legnica', 'Gr. 4', 0, 0),

--Gr 5
(33011, 'Sokół Krzywa', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33012, 'Iskra Niedźwiedzice', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33013, 'Goldengranit Czarni II Rokitki', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33014, 'Wilkowianka II Wilków', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33015, 'Płomień Nowa Wieś Grodziska', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33016, 'Orzeł II Zagrodno', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33017, 'Polonia II Ernestynów', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33018, 'Orzeł Wojcieszyn', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33019, 'Orlik Okmiany', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33020, 'Radziechowianka Radziechów', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33021, 'Olimpia Olszanica', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33022, 'Mewa Goliszów', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),
(33023, 'Zryw Stary Łom', 'Klasa B', 'Legnica', 'Gr. 5', 0, 0),

--Okręgówka
(33024, 'Konfeks Legnica', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33025, 'Jaworzanka 1946 Jawor', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33026, 'Błekitni Koskowice', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33027, 'KS Męcinka', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33028, 'Górnik II Złotoryja', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33029, 'Kaczawa Bieniowice', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33030, 'Iskra Kochlice', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33031, 'Pogoń Góra', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33032, 'LZS Komorniki', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33033, 'VSB Zryw Kłębanowice', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33034, 'Stal Chocianów', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33035, 'Sokół Jerzamanowa', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33036, 'Odra Ścinawa', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33037, 'Sparta Rudna', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33038, 'Chojnowianka Chojnów', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),
(33039, 'Sparta Grębocice', 'Okręgówka', 'Legnica', 'Gr. 1', 0, 0),


--Wałbrzych Klasa A
--Gr 1
(33040, 'KS Walim', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33041, 'AKS Bazalt Strzegom', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33042, 'Iskra Witków Śląski', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33043, 'KP Górnik II Wałbrzych', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33044, 'Błękitni Słotwina', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33045, 'Unia Jaroszów', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33046, 'Zieloni Mokreszów', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33047, 'Grom Witków', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33048, 'Nysa Kłaczyna', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33049, 'MKS Szczawno Zdrój', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33050, 'KS Stanowice', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33051, 'Victoria Świebodzice', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33052, 'Zagłębie Wałbrzych', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),1
(33053, 'Płomień Makowice', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33054, 'Sudety Dziećmorowice', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),
(33055, 'Zjednoczeni II Żarów', 'Klasa A', 'Wałbrzych', 'Gr. 1', 0, 0),

--Gr 2
(33056, 'LKS Dobrocin', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33057, 'Sudety Kątki', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33058, 'Polonia Ząbkowice Śląskie', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33059, 'Orzeł Ząbkowice Śląskie II', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33060, 'LKS Ślęża Ciepłowody', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33061, 'Piławianka Piława Górna', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33062, 'Zieloni Łagiewniki', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33063, 'S.T.E.P Tąpadła/Wiry', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33064, 'Break Farm Roztocznik', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33065, 'Sparta Ziębice', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33066, 'LKS Marcinowice', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33067, 'LKS Sowie Gilów', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33068, 'Kłos Lutomia', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33069, 'Cukrownik Pszenno', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33070, 'Piast Jaźwina', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),
(33071, 'KS Silesia Żarów', 'Klasa A', 'Wałbrzych', 'Gr. 2', 0, 0),

--Gr 3
(33072, 'Nysa Kłodzko', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33073, 'Unia Bardo', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33074, 'Pogoń ZEM Duszniki', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33075, 'Polanica Zdrój', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33076, 'Włókniarz Kudowa Zdrój', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33077, 'Zamek Trzebieszowice', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33078, 'GLKS Orlęta Krosnowice', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33079, 'Śnieżnik Domaszków', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33080, 'Polonia Bystrzyca Kłodzka', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33081, 'Tarnovia Tarnów', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33082, 'Burza Dzikowiec', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33083, 'Sparta Stary Waliszów', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33084, 'ATS Wojbórz', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33085, 'Trojan Lądek Zdrój', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33086, 'Iskra Jaszkowa Dolna', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),
(33087, 'Zjednoczeni Ścinawka Średnia', 'Klasa A', 'Wałbrzych', 'Gr. 3', 0, 0),


--Wałbrzych Klasa B
--Gr 1
(35001, 'Płomień Dobromierz', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35002, 'Podgórze Wałbrzych', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35003, 'Czarni Wamag Wałbrzych', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35004, 'Zagłębie II Wałbrzych', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35005, 'Sokół Kostrza', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35006, 'Huragan Olszany', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35007, 'Nysa II Kłaczyna', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35008, 'Unia Bogaczowice', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35009, 'Granit Roztoka', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35010, 'KP Mieroszów', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35011, 'Gwarek Wałbrzych', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),
(35012, 'Szkółka Piłkarska Szczyt II Boguszów-Gorce', 'Klasa B', 'Wałbrzych', 'Gr. 1', 0, 0),

--Gr 2
(35015, 'Zjednoczeni III Żarów', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35016, 'LKS II Bystrzyca Górna', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35017, 'PUO Wiśniowa', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35018, 'Sparta Przełom Pastuchów', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35019, 'Grom Panków', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35020, 'Venus Nowice', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35021, 'Błyskawica Kalno', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35022, 'Tęcza Bolesławice', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35023, 'LKS Piorowice Świdnickie', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35024, 'LKS Gola Świdnickie', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35025, 'Gryf Burkatów', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35026, 'Orzeł Witoszów Dolny', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35027, 'LKS Błękitni Komorów', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),
(35028, 'Wierzbianka Wierzbna', 'Klasa B', 'Wałbrzych', 'Gr. 2', 0, 0),

--Gr 3
(35029, 'Wieża Rudnicka', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35030, 'Błękitni Owiesno', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35031, 'Przedborowianka', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35032, 'Czarni Sieniawka', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35033, 'Sparta Oleszna', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35034, 'LKS Orzeł Piława Dolna', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35035, 'Victoria Tuszyn', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35036, 'Płomień Sokolniki', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35037, 'Boxmet Piskorzów', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35038, 'Henrykowianka Henryków', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35039, 'Niemczanka Niemcza', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35040, 'Koliber Uciechów', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35041, 'Niemczanka Niemcza', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),
(35042, 'Cukrownik II Pszenno', 'Klasa B', 'Wałbrzych', 'Gr. 3', 0, 0),

--Gr 4
(35043, 'Zamek II Kamieniec Ząbkowicki', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35044, 'Victoria Dębowiec', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35045, 'Inter Ożary', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35046, 'GLKS Orlęta II Krosnowice', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35047, 'KS Sokół Starczów', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35048, 'Błękitni Niedźwiedź', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35049, 'Perła Płonica', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35050, 'Spartakus Byczeń', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35051, 'Piasek Potworów', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35052, 'CIS Brzeźnica', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35053, 'Czarni Braszowice', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),
(35054, 'Znicz Lubnów', 'Klasa B', 'Wałbrzych', 'Gr. 4', 0, 0),

--Gr 5
(35057, 'Śnieżnik II Domaszków', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35058, 'Granica Tłumaczów', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35059, 'Kryształ II Stronie Śląskie', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35060, 'WLKS Wambierzyce', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35061, 'KS Ludwikowice', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35062, 'Łomniczanka Stara Łomnica', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35063, 'Zamek Gorzanów', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35064, 'Zrzeszeni N-W-CH Niwa', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35065, 'Lechia Ołdrzycowice', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35066, 'Czermna Kudowa Zdrój', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35067, 'Odrodzenie Szalejów', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35068, 'Sudety Międzylesie', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35069, 'LKS Bierkowice', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),
(35070, 'Hutnik Szczytna', 'Klasa B', 'Wałbrzych', 'Gr. 5', 0, 0),

--Okręgówka
(36001, 'Zdrój Jedlina Zdrój', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36002, 'MLKS Radków', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36003, 'Szkółka Piłkarska Szczyt Boguszów-Gorce', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36004, 'Skałki Stolec', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36005, 'Delta Słupice', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36006, 'Ignerhome MKS Polonia-Stal Świdnica', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36007, 'LKS Bystrzyca Górna', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36008, 'Zjednoczeni Żarów', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36009, 'Lechia II Dzierżoniów', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36010, 'Kryształ Stronie Śląskie', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36011, 'Zamek Kamieniec Ząbkowicki', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36012, 'Włókniarz Głuszyca', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36013, 'Karolina Jaworzyna Śląska', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36014, 'Górnik NM Wałbrzych', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36015, 'Bielawianka Bielawa', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),
(36016, 'Pogoń Pieszyce', 'Okręgówka', 'Wałbrzych', 'Gr. 1', 0, 0),


--Wrocław Klasa A
--Gr 1
(37001, 'Parasol Wrocław', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37002, 'Osiek', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37003, 'LKS Ciechów', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37004, 'Mechanik Brzezina', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37005, 'Odra Lubiąż', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37006, 'KP Kąty Wrocławskie', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37007, 'Zorza Pęgów', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37008, 'Błyskawica Lenartowice', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37009, 'Polonia II Środa Śląska', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37010, 'Tomtex Widawa Wrocław', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37011, 'STS Sokół Smolec', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37012, 'Sparta Miłcz', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37013, 'Polonia Wrocław', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37014, 'Maślice Wrocław', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37015, 'Zieloni Rakoszyce', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),
(37016, 'Zorza Wilkszyn', 'Klasa A', 'Wrocław', 'Gr. 1', 0, 0),

--Gr 2
(37017, 'Barycz Milicz', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37018, 'Bór Oborniki Śląskie', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37019, 'Perła Węgrów', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37020, 'LKS Krzyżanowice', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37021, 'GKS Polonia II Trzebnica', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37022, 'Orzeł Prusice', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37023, 'KS Krośnica Wielka', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37024, 'Dolpasz Skokowa', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37025, 'Olimpia Bukowina', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37026, 'Sokół Wielka Lipa', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37027, 'Lotnik Twardogóra', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37028, 'Barycz II Sułów', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37029, 'Sparta Wszemirów', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37030, 'Pogoń Cieszków', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37031, 'Wiwa Goszcz', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),
(37032, 'Plon Gądkowice', 'Klasa A', 'Wrocław', 'Gr. 2', 0, 0),

--Gr 3
(37033, 'Czarni Chrząstawa', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37034, 'Dąb Dobroszyce', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37035, 'Długołęka 2000', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37036, 'KS Gręboszyce', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37037, 'Różanka Wrocław', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37038, 'KS Semafor Brochów', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37039, 'LKS Skra Wojnowice', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37040, 'MKP Wratislavia', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37041, 'Pogoń Oleśnica', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37042, 'Polonia Miłoszyce', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37043, 'WKS Wilczyce', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37044, 'Widawa Bierutów', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37045, 'Widawa Kiełczów', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37046, 'AP Oleśnica', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37047, 'Czarni Jelcz Laskowice', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),
(37048, 'ZKS Polar Wrocław', 'Klasa A', 'Wrocław', 'Gr. 3', 0, 0),

--Gr 4
(37049, 'GKS Kobierzyce', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37050, 'Burza Bystrzyca', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37051, 'Polonia Jaszowice', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37052, 'Ślęża Sobótka', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37053, 'Energetyk Siechnice', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37054, 'Zorza Zabardowice', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37055, 'Indata Software Sparta Wrocław', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37056, 'Korona Osiek', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37057, 'KP Kobierzyce', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37058, 'Solna', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37059, 'KS Żórawina', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37060, 'LKS Brożec', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37061, 'Rapid Domaniów', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37062, 'Esthetic Ludów Śląski', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37063, 'Polonia II Bielany Wrocławskie', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),
(37064, 'Stary Śleszów', 'Klasa A', 'Wrocław', 'Gr. 4', 0, 0),

--Wrocław Klasa B
--Gr 1
(38001, 'AKS Krzydlina Mała', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38002, 'Dolpasz II Skokowa', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38003, 'Lech Barokowo', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38004, 'Kometa Krzelów', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38005, 'KS Brzeg Dolny', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38006, 'KS Piotrkowice', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38007, 'Dąb Kuraszków', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38008, 'KS Pogoń Wińsko', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38009, 'Odra Uraz', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38010, 'Olimpia Godzięcin', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38011, 'Bresna Brzeźno', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38012, 'Ruch Warzęgowo', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38013, 'Victoria Orzeszków', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),
(38014, 'Zryw Głębowice', 'Klasa B', 'Wrocław', 'Gr. 1', 0, 0),

--Gr 2
(38017, 'Sparta Górka', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38018, 'Błękitni Pawłów Trzebnicki', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38019, 'Piast III Żmigród', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38020, 'Orkan Borzęcin', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38021, 'KS Płomień Brzyków', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38022, 'KS Łazy', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38023, 'Masłowia Masłów', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38024, 'Orla Korzeńsko', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38025, 'Pirania Radziądz', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38026, 'UKS Postolin', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38027, 'Sokół Kaszowo', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38028, 'Sokół Ujeździec Mały', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),
(38029, 'Sokół Ujeździec Wielki', 'Klasa B', 'Wrocław', 'Gr. 2', 0, 0),

--Gr 3
(38033, 'AP Oleśnica', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38034, 'KS II Łozina', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38035, 'Burza Godzieszowa', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38036, 'Dąb Pruszowice', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38037, 'Grom Szczodrów', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38038, 'Iskra Pasikurowice', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38039, 'KS Boguszyce Osiedle', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38040, 'Dobroszów', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38041, 'Piast Dobrzeń', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38042, 'Pogoń Syców', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38043, 'Polonia Grabowno Wielkie', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38044, 'Sokół Sokołowice', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38045, 'Widawa Stradomia', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),
(38046, 'Sparta II Będkowo', 'Klasa B', 'Wrocław', 'Gr. 3', 0, 0),

--Gr 4
(38047, 'Błękitni Krzeczyn', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38048, 'Burza Dębina', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38049, 'GKS Dziadowa Kłoda', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38050, 'Borowianka Borowa', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38051, 'Zbytowa', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38052, 'LZS Solniki Małe', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38053, 'Śliwice', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38054, 'GKS Mirków II Długołęka', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38055, 'Piast Nadolice', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38056, 'WKS Ligota Wielka', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38057, 'KS Invest-House Minkowice Oławskie', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38058, 'WKS Kątna', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),
(38059, 'Zalesie Wójcice', 'Klasa B', 'Wrocław', 'Gr. 4', 0, 0),

--Gr 5
(38061, 'Błękitni Siedlce', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38062, 'Szaluna Zębice', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38063, 'Jankowianka Wierzbno', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38064, 'Lotos Gaj Oławski', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38065, 'MKS Siechnice', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38066, 'Odra Kotowice', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38067, 'Orzeł Święta Katarzyna', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38068, 'Czarni Sobocisko', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38069, 'Sokół II Marcinkowice', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38070, 'Zorza Niemil', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38071, 'Burza-Dombud Chwalibożyce', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38072, 'MKGS Moto-Jelcz II Oława', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),
(38073, 'Pol-Mont Polonia Godzikowice', 'Klasa B', 'Wrocław', 'Gr. 5', 0, 0),


--Gr 6
(38075, 'Feniks Pławna', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38076, 'Gromnik Kuropatnik', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38077, 'Iskra Janówek', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38078, 'Borek Strzeliński', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38079, 'KS Kurów', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38080, 'Kwarcyt Jegłowa', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38081, 'Klub Sportowy Strzelinianka II Strzelin', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38082, 'Czarni Kondratowice', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38083, 'Nefryt Jordanów Śląski', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38084, 'Ognisko Przeworno', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38085, 'UKS Lider Borów', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38086, 'Starter Orzeł Biały Kościół', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38087, 'Świteź Wiązów', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),
(38088, 'Zryw Chociwel', 'Klasa B', 'Wrocław', 'Gr. 6', 0, 0),

--Gr 7
(38089, 'GLKS Mietków', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38090, 'KP Kąty Wrocławskie', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38091, 'KP Kobierzyce', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38092, 'KS Magnice', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38093, 'KS Piotrowice', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38094, 'LZS Osiek', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38095, 'LKS Sadków', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38096, 'Orzeł Sadowice', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38097, 'Sokół II Smolec', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38098, 'Sparta Pustków Żurawski', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38099, 'Zachód Sobótka', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38100, 'Zieloni Wilczkowice', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38101, 'KS Gniechowice', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),
(38102, 'KS Rogów Sobócki', 'Klasa B', 'Wrocław', 'Gr. 7', 0, 0),

--Gr 8
(38103, 'KS Piotrowice', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38104, 'Orzeł Sadowice', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38105, 'KP II Kobierzyce', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38106, 'KP II Kąty Wrocławskie', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38107, 'GLKS Mietków', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38108, 'Polonia Jaksonów', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38109, 'Zachód Sobótka', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38110, 'Wicher Domasław', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38111, 'Zieloni Wilczkowice', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38112, 'Tarant Krzyżowice', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38113, 'KS Magnice', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38114, 'KS Sparta Pustków Żurawski', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0),
(38115, 'LKS Sadków', 'Klasa B', 'Wrocław', 'Gr. 8', 0, 0)

--Gr 9
(38117, 'Błyskawica Szewce', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38118, 'Karłowice Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38119, 'MKS Sołtysowice', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38120, 'Indata Software Sparta II Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38121, 'PKS Augustyn', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38122, 'Płomień Wisznia Mała', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38123, 'Grom Kryniczno-Ligota Piękna', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38124, '1 KS Ślęża II Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38125, 'Tomtex Widawa II Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38126, 'Silesia Szymanów', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38127, 'MKP II Wratislavia', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38128, 'Vamos Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38129, 'Unia Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),
(38130, 'Mundurowi Wrocław', 'Klasa B', 'Wrocław', 'Gr. 9', 0, 0),

--Okręgówka
(39001, 'WKS Wierzbice', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39002, 'Sparta Będkowo', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39003, 'Polonia Bielany Wrocławskie', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39004, 'OKS Orzeł Pawłowice', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39005, 'Orzeł Marszowice', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39006, 'Piast Lutyna', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39007, 'Piast Żerniki-Wrocław', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39008, 'KS Łozina', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39009, 'Błysk Kuźniczysko', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39010, 'KS Rokita 1946 Brzeg Dolny', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39011, 'MKP Wołów', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39012, 'Sokół Marcinkowice', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39013, 'Fundacja Zenit Miedzybórz', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39014, 'Piast II Żmigród', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39015, 'Klub Sportowy Strzelinianka Strzelin', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0),
(39016, 'GKS Polonia Trzebnica', 'Okręgówka', 'Wrocław', 'Gr. 1', 0, 0);


--
-- Indeksy dla tabeli `druzyny_dolny_slask`
--
ALTER TABLE `druzyny_dolny_slask`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
