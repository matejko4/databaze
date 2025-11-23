-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 23. lis 2025, 21:10
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `zavody`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `disciplina`
--

CREATE TABLE `disciplina` (
  `disciplina_id` int(11) NOT NULL,
  `nazev` varchar(50) NOT NULL,
  `popis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `disciplina`
--

INSERT INTO `disciplina` (`disciplina_id`, `nazev`, `popis`) VALUES
(1, 'Sbor', 'Čecho tým inspektor. Různě drak pohled Nymburk.'),
(2, 'Bolest', 'Tichý smlouva vlak vést dva zčásti obočí tragický.'),
(3, 'Tisíc', 'Kus park most dít přistoupit přijatelný.'),
(4, 'Pod', 'Vyplatit anebo vlastnost zmatený mořský manželství.'),
(5, 'Panel', 'Obchod obnovit zrcadlo radnice obočí.'),
(6, 'Veškerý', 'Mateřský klika milión vesmír zvedat klima.');

-- --------------------------------------------------------

--
-- Struktura tabulky `klub`
--

CREATE TABLE `klub` (
  `klub_id` int(11) NOT NULL,
  `nazev` varchar(50) DEFAULT NULL,
  `zeme` varchar(20) DEFAULT NULL,
  `mesto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `klub`
--

INSERT INTO `klub` (`klub_id`, `nazev`, `zeme`, `mesto`) VALUES
(1, 'Marek s.r.o.', 'Tádžikistán', 'Opava'),
(2, 'Tůmová Stejskalová v.o.s.', 'Chorvatsko', 'Špindlerův Mlýn'),
(3, 'Kříž Strnad a.s.', 'Cookovy ostrovy', 'Hrádek nad Nisou'),
(4, 'Mašek', 'Guinea', 'Újezd u Brna'),
(5, 'Liška Jandová s.r.o.', 'Belize', 'Rychnov u Jablonce n'),
(6, 'Vávra', 'Izrael', 'Přibyslav'),
(7, 'Polák o.s.', 'Mauritánie', 'Hrochův Týnec'),
(8, 'Kolář Moravcová k.s.', 'Gabon', 'Lišov'),
(9, 'Dušková v.o.s.', 'Guyana', 'Olomouc'),
(10, 'Kříž Šmíd a.s.', 'Guinea', 'Pec pod Sněžkou');

-- --------------------------------------------------------

--
-- Struktura tabulky `sportovec`
--

CREATE TABLE `sportovec` (
  `sportovec_id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `prijmeni` varchar(50) NOT NULL,
  `datum_narozeni` date DEFAULT NULL,
  `pohlavi` enum('muz','zena') NOT NULL,
  `vyska_cm` int(11) DEFAULT NULL,
  `vaha_kg` int(11) DEFAULT NULL,
  `popis_kariery` text DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `klub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `sportovec`
--

INSERT INTO `sportovec` (`sportovec_id`, `jmeno`, `prijmeni`, `datum_narozeni`, `pohlavi`, `vyska_cm`, `vaha_kg`, `popis_kariery`, `foto`, `klub_id`) VALUES
(1, 'Dita', 'Valenta', '2000-01-27', '', 170, 77, 'Okénko upravit fáze shodnout.', NULL, 7),
(2, 'Soňa', 'Tůma', '1994-07-25', '', 156, 63, 'Prostřednictvím vracet jakkoli.', NULL, 5),
(3, 'René', 'Jaroš', '2006-04-10', '', 159, 80, 'Svah skromný kus raný kostka.', NULL, 1),
(4, 'Marian', 'Marek', '1989-10-21', '', 200, 70, 'Tvrdit ujmout vláda sazba ještě.', NULL, 6),
(5, 'Soňa', 'Šimková', '1986-03-21', '', 184, 61, 'Zbývat reprezentovat sloup žádoucí impuls sbírat.', NULL, 5),
(6, 'Otakar', 'Němcová', '1999-12-30', '', 163, 89, 'Tělo nově najednou různě rozpor.', NULL, 9),
(7, 'Vladimír', 'Pavlíková', '1990-12-09', '', 150, 95, 'Tvář planeta radost opírat soudní.', NULL, 9),
(8, 'Viktor', 'Šimek', '1986-10-10', '', 168, 60, 'Koncept tři přítomnost univerzita.', NULL, 7),
(9, 'Lenka', 'Sedláček', '1985-11-07', '', 158, 85, 'Úvaha Moskva utíkat zpracovávat.', NULL, 5),
(10, 'Sabina', 'Fišerová', '1999-01-16', '', 155, 71, 'Funkční Berlín počasí přidávat brečet.', NULL, 3),
(11, 'Slavěna', 'Macháčková', '1998-01-24', '', 185, 81, 'Skončit záchranný řešení prohrát krásný syn.', NULL, 1),
(12, 'Andrea', 'Čermáková', '1996-07-03', '', 170, 78, 'Vařit historický házet verš.', NULL, 3),
(13, 'Lukáš', 'Matoušková', '2007-12-13', '', 200, 82, 'Křivka výživa nákupní šetřit během Labe.', NULL, 1),
(14, 'Jindřiška', 'Mach', '1999-02-06', '', 189, 81, 'Resp přicházet úřad raný klient léto komora.', NULL, 10),
(15, 'Olivie', 'Kadlec', '1987-08-26', '', 200, 50, 'Et aj prostor nýbrž základ záležet řecký.', NULL, 7),
(16, 'Daniela', 'Urbanová', '2006-11-14', '', 176, 73, 'Medaile uskutečnit kampaň.', NULL, 8),
(17, 'Lumír', 'Bláha', '2006-01-23', '', 161, 55, 'Konečně zatížení nálada vyšetřovatel pozor bota.', NULL, 6),
(18, 'Radka', 'Kovářová', '2001-05-20', '', 151, 59, 'Zastávat důkaz název fotbalový dopředu závěrečný.', NULL, 8),
(19, 'Přemysl', 'Blažek', '1990-07-18', '', 186, 73, 'Polský nutný dopis balíček režim zarazit s.', NULL, 10),
(20, 'Radka', 'Vlček', '1989-04-11', '', 183, 52, 'Zvýšený zaskočit batoh nezbytný jakýsi vnitro.', NULL, 10),
(21, 'Andrea', 'Vaňková', '1990-10-23', '', 183, 85, 'Ateliér bok odtáhnout schopnost pálit.', NULL, 7),
(22, 'Žofie', 'Říhová', '2005-08-14', '', 196, 71, 'Británie zmíněný železný naklonit přesvědčení.', NULL, 8),
(23, 'Olivie', 'Lišková', '2007-11-28', '', 198, 72, 'Činit jídlo usadit všude brát.', NULL, 6),
(24, 'Lada', 'Havel', '2007-01-14', '', 182, 75, 'Zachytit mladý bakterie kritika.', NULL, 10),
(25, 'Apolena', 'Hrubý', '1998-02-09', '', 189, 82, 'Slunce portrét dnešní taneční.', NULL, 8),
(26, 'František', 'Pavlíková', '2006-11-29', '', 155, 67, 'Živit jeskyně unést maska li.', NULL, 7),
(27, 'Jaromír', 'Fišerová', '2004-10-08', '', 150, 98, 'Ucho kousek archiv heslo filtr spadat.', NULL, 7),
(28, 'Vladimír', 'Konečný', '1993-07-20', '', 194, 81, 'Část obejmout končetina psaní sklo včela.', NULL, 2),
(29, 'Ondřej', 'Bártová', '2008-01-16', '', 194, 54, 'Přestávat bunda unést statek podstatný znamení.', NULL, 9),
(30, 'Lada', 'Slavíková', '1999-07-07', '', 190, 92, 'Integrace lavice výsledek polévka kdy.', NULL, 3),
(31, 'Matyáš', 'Svobodová', '2004-12-29', '', 165, 59, 'Most inspirovat dělit názor. Ptát okamžik zničit.', NULL, 8),
(32, 'Dana', 'Ševčíková', '1998-04-01', '', 182, 52, 'Sto energetický noční dorazit.', NULL, 8),
(33, 'Zuzana', 'Hrušková', '2007-07-21', '', 153, 65, 'Činit lžička ucho Angličan.', NULL, 6),
(34, 'Julie', 'Navrátilová', '2000-03-11', '', 172, 63, 'Plamen jeviště kouř.', NULL, 3),
(35, 'Naděžda', 'Vávra', '2002-01-04', '', 163, 84, 'Jmenovaný protáhnout kníže porost kalhoty.', NULL, 7),
(36, 'Michaela', 'Kadlecová', '2009-11-26', '', 175, 85, 'Kilometr trefit dvůr neustálý můj technologický.', NULL, 4),
(37, 'Simona', 'Holub', '1997-10-20', '', 172, 82, 'Zlobit povídka unie.', NULL, 2),
(38, 'Bedřich', 'Slavík', '2000-11-16', '', 188, 68, 'Vyspělý chutnat obal mzda uvidět zasáhnout.', NULL, 5),
(39, 'Zdislava', 'Bláha', '2010-05-21', '', 161, 88, 'Noční vlastně spotřebitel znít mávat ale.', NULL, 7),
(40, 'Slavomír', 'Müller', '2006-08-28', '', 152, 86, 'David posloužit silniční letiště.', NULL, 9),
(41, 'Matyáš', 'Jelínková', '2010-11-02', '', 173, 86, 'Semeno měna doslova navrhnout zřídit zkušený.', NULL, 8),
(42, 'Kristina', 'Ševčíková', '1987-01-23', '', 152, 89, 'Holka odvážný polovina pátek.', NULL, 4),
(43, 'Artur', 'Šmíd', '1994-07-31', '', 150, 53, 'Ponořit dobrovolný pochopení způsob.', NULL, 9),
(44, 'Hubert', 'Müllerová', '1990-08-06', '', 161, 54, 'Rádio Plzeň zavřít správně všeobecný blázen.', NULL, 2),
(45, 'Leoš', 'Prokop', '1989-03-12', '', 196, 90, 'Propojení pásmo za motivace.', NULL, 7),
(46, 'Václav', 'Sedláčková', '1994-07-03', '', 189, 99, 'Rozdíl krátký americký.', NULL, 4),
(47, 'Robert', 'Křížová', '1987-07-10', '', 195, 74, 'Nula úspora nahradit odvézt úder čin zvítězit.', NULL, 1),
(48, 'Filip', 'Novotná', '2003-03-15', '', 198, 92, 'Program účastnit pan nouze pokrok.', NULL, 9),
(49, 'Radka', 'Müllerová', '1997-03-31', '', 165, 64, 'Obal rytíř pán mléko.', NULL, 7),
(50, 'Zdenka', 'Zemanová', '1988-02-04', '', 173, 84, 'Tabulka přitáhnout mrtvý napít.', NULL, 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `startovka`
--

CREATE TABLE `startovka` (
  `start_id` int(11) NOT NULL,
  `sportovec_id` int(11) NOT NULL,
  `zavod_id` int(11) NOT NULL,
  `startovni_cislo` int(11) NOT NULL,
  `poznamka` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `startovka`
--

INSERT INTO `startovka` (`start_id`, `sportovec_id`, `zavod_id`, `startovni_cislo`, `poznamka`) VALUES
(1, 7, 18, 457, 'zpracování'),
(2, 32, 20, 324, 'označovat'),
(3, 38, 19, 178, 'produkt'),
(4, 47, 7, 240, 'připustit'),
(5, 44, 2, 108, 'síla'),
(6, 6, 10, 214, 'elektřina'),
(7, 34, 10, 462, 'nad'),
(8, 13, 15, 395, 'rozsah'),
(9, 7, 7, 320, 'převzít'),
(10, 11, 10, 265, 'bílý'),
(11, 1, 1, 446, 'koalice'),
(12, 49, 6, 408, 'klást'),
(13, 17, 5, 314, 'změnit');

-- --------------------------------------------------------

--
-- Struktura tabulky `trener`
--

CREATE TABLE `trener` (
  `trener_id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `prijmeni` varchar(50) NOT NULL,
  `datum_narozeni` date DEFAULT NULL,
  `specializace` varchar(50) DEFAULT NULL,
  `klub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `trener`
--

INSERT INTO `trener` (`trener_id`, `jmeno`, `prijmeni`, `datum_narozeni`, `specializace`, `klub_id`) VALUES
(1, 'Mojmír', 'Štěpánková', '1977-08-26', 'turnaj', 3),
(2, 'Adéla', 'Říha', '1994-03-06', 'chybit', 5),
(3, 'Bořivoj', 'Kubíčková', '1980-09-03', 'zlepšení', 2),
(4, 'Lada', 'Vlček', '1973-01-11', 'zlomit', 9),
(5, 'Alexandra', 'Bláhová', '1969-08-27', 'několik', 4),
(6, 'Svatoslav', 'Moravec', '1999-05-23', 'ohromný', 3),
(7, 'Radomír', 'Müllerová', '1964-07-25', 'laboratoř', 10),
(8, 'Lucie', 'Konečná', '1957-09-03', 'provést', 10),
(9, 'Felix', 'Svoboda', '1956-09-18', 'Afrika', 2),
(10, 'Milada', 'Marková', '1972-08-13', 'napříč', 8),
(11, 'Aleš', 'Tomanová', '1960-05-10', 'třetí', 4),
(12, 'Svatoslav', 'Novotná', '1987-05-12', 'země', 1),
(13, 'Alexander', 'Soukup', '1962-01-01', 'jenže', 2),
(14, 'Stanislav', 'Žák', '1984-10-17', 'objem', 1),
(15, 'Andrea', 'Tomanová', '1965-03-25', 'Zeman', 10),
(16, 'Hubert', 'Novotná', '1990-06-23', 'jít', 8),
(17, 'Mária', 'Říha', '1972-12-01', 'mléčný', 7),
(18, 'Vilém', 'Valentová', '1997-01-26', 'přát', 10),
(19, 'Tomáš', 'Procházková', '1956-09-25', 'vytváření', 2),
(20, 'Olga', 'Moravec', '1975-05-19', 'pátrat', 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `trener_sportovec`
--

CREATE TABLE `trener_sportovec` (
  `ts_id` int(11) NOT NULL,
  `trener_id` int(11) NOT NULL,
  `sportovec_id` int(11) NOT NULL,
  `datum_od` date DEFAULT NULL,
  `datum_do` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `trener_sportovec`
--

INSERT INTO `trener_sportovec` (`ts_id`, `trener_id`, `sportovec_id`, `datum_od`, `datum_do`) VALUES
(1, 10, 1, '2022-11-24', '2023-07-23'),
(2, 16, 2, '2023-06-21', '2024-09-26'),
(3, 5, 3, '2024-09-20', '2025-04-24'),
(4, 10, 3, '2023-01-31', '2025-07-31'),
(5, 13, 4, '2023-07-31', '2024-11-28'),
(6, 3, 4, '2024-03-09', '2025-06-04'),
(7, 11, 5, '2023-12-06', '2024-11-28'),
(8, 6, 6, '2023-10-06', '2025-03-21'),
(9, 19, 7, '2024-07-18', '2025-07-24'),
(10, 3, 7, '2024-07-24', '2025-04-12'),
(11, 13, 8, '2024-01-05', '2025-02-17'),
(12, 16, 8, '2024-03-21', '2024-08-20'),
(13, 12, 9, '2023-02-24', '2025-07-11'),
(14, 8, 9, '2024-08-04', '2024-09-25'),
(15, 17, 10, '2023-06-05', '2025-10-16'),
(16, 2, 11, '2023-06-02', '2024-07-17'),
(17, 4, 11, '2024-10-11', '2025-03-28'),
(18, 8, 12, '2024-05-10', '2024-06-10'),
(19, 10, 13, '2024-06-30', '2024-08-14'),
(20, 20, 13, '2024-06-25', '2024-12-30'),
(21, 7, 14, '2023-02-15', '2024-10-14'),
(22, 11, 15, '2023-10-02', '2025-03-10'),
(23, 14, 15, '2024-03-02', '2024-10-28'),
(24, 15, 16, '2024-04-29', '2024-10-21'),
(25, 9, 17, '2024-03-28', '2024-07-12'),
(26, 3, 17, '2024-10-21', '2025-02-06'),
(27, 11, 18, '2023-05-22', '2023-10-16'),
(28, 12, 19, '2024-10-08', '2025-11-09'),
(29, 12, 19, '2024-04-01', '2024-10-27'),
(30, 14, 20, '2024-09-11', '2025-04-28'),
(31, 1, 21, '2023-05-05', '2025-03-12'),
(32, 13, 22, '2023-11-16', '2023-12-23'),
(33, 19, 22, '2024-05-31', '2025-09-08'),
(34, 18, 23, '2023-10-06', '2025-08-08'),
(35, 10, 24, '2022-12-25', '2024-01-13'),
(36, 2, 25, '2023-09-25', '2024-11-25'),
(37, 3, 26, '2024-06-24', '2025-05-02'),
(38, 13, 27, '2024-09-28', '2024-11-11'),
(39, 4, 28, '2024-07-14', '2025-09-10'),
(40, 16, 28, '2023-06-28', '2025-04-21'),
(41, 5, 29, '2023-11-10', '2023-12-25'),
(42, 11, 30, '2024-01-11', '2024-11-09'),
(43, 2, 31, '2023-02-14', '2023-11-05'),
(44, 7, 32, '2024-01-30', '2024-10-19'),
(45, 16, 33, '2023-06-23', '2023-09-21'),
(46, 8, 33, '2024-09-11', '2024-11-11'),
(47, 19, 34, '2023-11-28', '2025-07-24'),
(48, 8, 34, '2024-10-08', '2024-12-24'),
(49, 13, 35, '2023-09-23', '2024-05-01'),
(50, 2, 36, '2024-04-21', '2025-06-10'),
(51, 13, 37, '2024-07-02', '2025-06-11'),
(52, 11, 38, '2024-09-07', '2024-09-09'),
(53, 5, 39, '2024-09-27', '2024-11-25'),
(54, 14, 39, '2024-05-31', '2025-03-15'),
(55, 12, 40, '2023-05-10', '2025-04-17'),
(56, 3, 40, '2024-08-22', '2025-08-03'),
(57, 13, 41, '2024-06-09', '2024-12-20'),
(58, 9, 41, '2024-11-15', '2025-05-26'),
(59, 11, 42, '2023-04-16', '2023-07-27'),
(60, 11, 42, '2023-09-23', '2025-02-13'),
(61, 16, 43, '2024-10-17', '2024-12-14'),
(62, 9, 44, '2023-02-28', '2025-05-09'),
(63, 17, 44, '2024-10-23', '2025-09-20'),
(64, 18, 45, '2024-08-17', '2025-01-19'),
(65, 20, 45, '2024-04-22', '2025-07-19'),
(66, 14, 46, '2024-03-01', '2024-07-31'),
(67, 6, 46, '2024-09-01', '2025-11-04'),
(68, 19, 47, '2024-02-22', '2025-08-08'),
(69, 20, 47, '2024-01-25', '2025-06-08'),
(70, 3, 48, '2023-09-11', '2023-10-12'),
(71, 17, 48, '2024-09-22', '2025-03-05'),
(72, 20, 49, '2022-12-22', '2023-11-13'),
(73, 18, 50, '2024-04-06', '2024-04-11'),
(74, 2, 50, '2024-08-24', '2025-08-11');

-- --------------------------------------------------------

--
-- Struktura tabulky `vysledky`
--

CREATE TABLE `vysledky` (
  `vysledek_id` int(11) NOT NULL,
  `start_id` int(11) NOT NULL,
  `cas` time DEFAULT NULL,
  `vzdalenost` decimal(5,2) DEFAULT NULL,
  `poradi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `vysledky`
--

INSERT INTO `vysledky` (`vysledek_id`, `start_id`, `cas`, `vzdalenost`, `poradi`) VALUES
(1, 1, '19:34:34', 722.30, 15),
(2, 2, '07:42:13', 999.99, 8),
(3, 3, '22:43:31', 999.99, 29),
(4, 4, '10:13:36', 999.99, 29),
(5, 5, '09:12:11', 999.99, 21),
(6, 6, '01:24:31', 999.99, 19),
(7, 7, '20:15:48', 999.99, 26),
(8, 8, '20:29:28', 999.99, 4),
(9, 9, '15:56:08', 999.99, 26),
(10, 10, '00:10:39', 288.66, 28),
(11, 11, '12:15:52', 999.99, 1),
(12, 12, '12:45:58', 605.62, 25),
(13, 13, '18:27:15', 999.99, 24);

-- --------------------------------------------------------

--
-- Struktura tabulky `zavod`
--

CREATE TABLE `zavod` (
  `zavod_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `cas` time DEFAULT NULL,
  `misto` varchar(50) DEFAULT NULL,
  `cast_zavodu` enum('rozbeh','semifinale','finale') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `zavod`
--

INSERT INTO `zavod` (`zavod_id`, `disciplina_id`, `datum`, `cas`, `misto`, `cast_zavodu`) VALUES
(1, 2, '2024-04-04', '10:06:43', 'Měčín', 'semifinale'),
(2, 2, '2024-03-20', '02:12:21', 'Kaznějov', ''),
(3, 3, '2024-10-01', '04:15:26', 'Mirošov', ''),
(4, 4, '2024-03-16', '04:44:15', 'Sedlec-Prčice', 'finale'),
(5, 5, '2024-04-12', '15:39:58', 'Hronov', ''),
(6, 6, '2024-06-28', '23:43:34', 'Nepomuk', ''),
(7, 6, '2024-08-22', '14:37:18', 'Hronov', ''),
(8, 3, '2024-07-12', '13:01:30', 'Holice', 'finale'),
(9, 2, '2025-09-18', '10:54:20', 'Letohrad', 'semifinale'),
(10, 5, '2025-01-24', '18:49:42', 'Český Brod', ''),
(11, 2, '2024-10-07', '16:53:13', 'Bechyně', ''),
(12, 5, '2025-05-04', '23:17:01', 'Vejprty', 'finale'),
(13, 1, '2024-01-20', '02:12:52', 'Rtyně v Podkrkonoší', 'semifinale'),
(14, 6, '2025-04-05', '12:39:56', 'Ždírec nad Doubravou', ''),
(15, 2, '2024-11-23', '17:04:58', 'Uherský Ostroh', ''),
(16, 6, '2025-03-08', '09:57:08', 'Přelouč', 'finale'),
(17, 3, '2025-06-20', '00:30:19', 'Valašské Klobouky', ''),
(18, 4, '2024-01-17', '05:45:21', 'Jilemnice', 'finale'),
(19, 6, '2024-03-06', '06:52:44', 'Hořovice', 'finale'),
(20, 2, '2025-04-11', '05:39:51', 'Valašské Klobouky', 'semifinale');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`disciplina_id`),
  ADD UNIQUE KEY `nazev` (`nazev`);

--
-- Indexy pro tabulku `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`klub_id`);

--
-- Indexy pro tabulku `sportovec`
--
ALTER TABLE `sportovec`
  ADD PRIMARY KEY (`sportovec_id`),
  ADD KEY `klub_id` (`klub_id`);

--
-- Indexy pro tabulku `startovka`
--
ALTER TABLE `startovka`
  ADD PRIMARY KEY (`start_id`),
  ADD UNIQUE KEY `startovni_cislo` (`startovni_cislo`),
  ADD KEY `sportovec_id` (`sportovec_id`),
  ADD KEY `zavod_id` (`zavod_id`);

--
-- Indexy pro tabulku `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`trener_id`),
  ADD KEY `klub_id` (`klub_id`);

--
-- Indexy pro tabulku `trener_sportovec`
--
ALTER TABLE `trener_sportovec`
  ADD PRIMARY KEY (`ts_id`),
  ADD KEY `trener_id` (`trener_id`),
  ADD KEY `sportovec_id` (`sportovec_id`);

--
-- Indexy pro tabulku `vysledky`
--
ALTER TABLE `vysledky`
  ADD PRIMARY KEY (`vysledek_id`),
  ADD KEY `start_id` (`start_id`);

--
-- Indexy pro tabulku `zavod`
--
ALTER TABLE `zavod`
  ADD PRIMARY KEY (`zavod_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `disciplina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `klub`
--
ALTER TABLE `klub`
  MODIFY `klub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `sportovec`
--
ALTER TABLE `sportovec`
  MODIFY `sportovec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pro tabulku `startovka`
--
ALTER TABLE `startovka`
  MODIFY `start_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `trener`
--
ALTER TABLE `trener`
  MODIFY `trener_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pro tabulku `trener_sportovec`
--
ALTER TABLE `trener_sportovec`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pro tabulku `vysledky`
--
ALTER TABLE `vysledky`
  MODIFY `vysledek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `zavod`
--
ALTER TABLE `zavod`
  MODIFY `zavod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `sportovec`
--
ALTER TABLE `sportovec`
  ADD CONSTRAINT `sportovec_ibfk_1` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`klub_id`);

--
-- Omezení pro tabulku `startovka`
--
ALTER TABLE `startovka`
  ADD CONSTRAINT `startovka_ibfk_1` FOREIGN KEY (`sportovec_id`) REFERENCES `sportovec` (`sportovec_id`),
  ADD CONSTRAINT `startovka_ibfk_2` FOREIGN KEY (`zavod_id`) REFERENCES `zavod` (`zavod_id`);

--
-- Omezení pro tabulku `trener`
--
ALTER TABLE `trener`
  ADD CONSTRAINT `trener_ibfk_1` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`klub_id`);

--
-- Omezení pro tabulku `trener_sportovec`
--
ALTER TABLE `trener_sportovec`
  ADD CONSTRAINT `trener_sportovec_ibfk_1` FOREIGN KEY (`trener_id`) REFERENCES `trener` (`trener_id`),
  ADD CONSTRAINT `trener_sportovec_ibfk_2` FOREIGN KEY (`sportovec_id`) REFERENCES `sportovec` (`sportovec_id`);

--
-- Omezení pro tabulku `vysledky`
--
ALTER TABLE `vysledky`
  ADD CONSTRAINT `vysledky_ibfk_1` FOREIGN KEY (`start_id`) REFERENCES `startovka` (`start_id`);

--
-- Omezení pro tabulku `zavod`
--
ALTER TABLE `zavod`
  ADD CONSTRAINT `zavod_ibfk_1` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`disciplina_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
