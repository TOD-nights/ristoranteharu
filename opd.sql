-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 11, 2023 alle 18:15
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opd`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(22, 'APERITIVI ', 'INSALATE', '2023-10-24 23:31:53'),
(23, 'NIGIRI 2PZ', 'Il nigiri è una pallina ovale di riso, modellata a mano e guarnita da una fettina sottile di pesce. Solitamente si tratta di salmone, tonno, anguilla, polpo, gambero o anche di frittata.', '2023-10-24 23:33:41'),
(24, 'ONIGIRI', 'Gli onigiri sono graziose polpette di riso a forma triangolare farcite con vari ripieni e decorate con alga nori, la tipica pausa pranzo giapponese!', '2023-10-24 23:45:47'),
(25, 'GUNKAN', 'Gunkan significa barca, questa tipologia di sushi prevede che ingrediente principale si presenti al di sopra del riso, creando una forma simile alla barca. Non è necessario che sia contenuto da alga, si può utilizzare anche una striscia di pesce.', '2023-10-24 23:49:18'),
(26, 'URAMAKI 8 PZ', 'Uramaki in giapponese significa rotolo “dentro e fuori”. Per ricordarlo meglio puoi immaginarlo come un sushi invertito, dove alga e il pesce sono al centro, mentre il riso lo avvolge all esterno. La farcitura può essere di tantissimi tipi, c è solo imbarazzo della scelta.', '2023-10-24 23:50:25'),
(27, 'URAMAKI BLACK RICE 8 PZ', 'BLACK', '2023-10-24 23:51:12'),
(28, 'FUTOMAKI', 'i futomaki sono più grandi e bassi', '2023-10-24 23:52:32'),
(29, 'HOSOMAKI 8PZ', 'costituito da veri e propri cilindri di riso avvolti da mezzo foglio di alga nori, con all interno un solo ingrediente', '2023-10-24 23:53:11'),
(30, 'SUSHI MIX', 'MISTO', '2023-10-24 23:53:51'),
(31, 'BARCA', 'SET SUSHI', '2023-10-24 23:54:25'),
(32, 'SASHIMI', 'Si tratta fondamentalmente di una crudità di pesce o di carne, molto fresca, tagliata a pezzi o a fettine sottili; può essere accompagnato da salsa di soia, semplice, iposodica o addirittura arricchita con una puntina di pasta al wasabi', '2023-10-24 23:55:44'),
(33, 'CHIRASHI', ' il che ben rende Idea di una ciotola di riso al di sopra del quale gli ingredienti sono disposti in ordine molto casuale.', '2023-10-24 23:56:40'),
(34, 'TARTARE', 'è una preparazione di carne o pesce crudo tritati finemente, con il tritacarne o, meglio, al coltello, a cui si possono aggiungere condimenti o salse, come cipolla, capperi, succo di limone, aceto balsamico', '2023-10-24 23:57:25'),
(35, 'CARPACCIO', '10PZ Il carpaccio di pesce, ovvero il pesce fresco e crudo tagliato in fettine sottilissime e gustato al naturale, è una specialità caratteristica della cucina giapponese, e per poterne apprezzare il gusto e le qualità nutrizionali è necessario utilizzare esclusivamente pesce freschissimo e garantito.', '2023-10-24 23:58:14'),
(36, 'TEMAKI', 'Il temaki è composto da un foglia di alga nori arrotolata a forma di cono al cui interno vi è riso, pesce crudo e verdure. Il nome del piatto significa letteralmente “sushi a mano” , infatti per via delle sue dimensioni ingombranti, circa 10 cm, è preferibile mangiarlo con le mani.', '2023-10-24 23:58:53'),
(37, 'CALDI', 'PIATTI CALDI', '2023-10-24 23:59:23'),
(38, 'DOLCE', 'DOLCE', '2023-10-24 23:59:45'),
(39, 'ANTIPASTI', 'INVOLTINI E RAVIOLI', '2023-10-25 00:00:20'),
(40, 'ZUPPE', 'ZUPPA', '2023-10-25 00:00:44'),
(41, 'SPAGHETTI', 'DI SOIA DI RISO DI GRANO', '2023-10-25 00:01:16'),
(42, 'RISO', 'RISO', '2023-10-25 00:01:28'),
(43, 'GAMBERI', 'GAMBERI', '2023-10-25 00:02:07'),
(44, 'POLLO', 'POLLO', '2023-10-25 00:02:27'),
(45, 'ANATRA', 'ANATRA', '2023-10-25 00:03:08'),
(46, 'VITELLO', 'VITELLO', '2023-10-25 00:03:18'),
(47, 'MAIALE', 'MAIALE', '2023-10-25 00:03:31'),
(48, 'PESCE', 'PESCE', '2023-10-25 00:03:42'),
(49, 'VERDURE', 'VERDURE', '2023-10-25 00:03:52'),
(50, 'BEVANDE', 'BEVANDE', '2023-10-25 00:04:17');

-- --------------------------------------------------------

--
-- Struttura della tabella `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 2, '1271669848@qq.com', 3392143462, 0, '唱歌喝酒计划经济\r\n', '2023-10-26 22:36:30'),
(2, 1, 'admin@gmail.com', 1111111111, 0, 'sadasdadsa', '2023-10-29 17:41:22'),
(3, 1, 'admin@gmail.com', 1111111111, 0, 'wqdqdw', '2023-10-29 17:44:02');

-- --------------------------------------------------------

--
-- Struttura della tabella `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `contactreply`
--

INSERT INTO `contactreply` (`id`, `contactId`, `userId`, `message`, `datetime`) VALUES
(1, 1, 2, '16516', '2023-10-27 19:41:06');

-- --------------------------------------------------------

--
-- Struttura della tabella `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `deliverydetails`
--

INSERT INTO `deliverydetails` (`id`, `orderId`, `deliveryBoyName`, `deliveryBoyPhoneNo`, `deliveryTime`, `dateTime`) VALUES
(1, 1, 'haoxuan', 3392143462, 4, '2023-10-24 22:39:20'),
(2, 2, 'ONIGIRI', 3392143462, 3, '2023-10-25 01:12:40'),
(3, 3, 'DOLCE', 3392143462, 2, '2023-10-25 17:13:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `food`
--

CREATE TABLE `food` (
  `foodId` int(12) NOT NULL,
  `foodName` varchar(255) NOT NULL,
  `foodPrice` double NOT NULL,
  `foodDesc` text NOT NULL,
  `foodCategorieId` int(12) NOT NULL,
  `foodPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `food`
--

INSERT INTO `food` (`foodId`, `foodName`, `foodPrice`, `foodDesc`, `foodCategorieId`, `foodPubDate`) VALUES
(1, '01.EDAMAME', 3, 'fagioli di soia*', 22, '2023-10-28 13:01:44'),
(2, '02.SAKE FRESH', 9, '\r\ninvoltino di salmone, arancia, philadelphia, 4pz', 22, '2023-10-28 13:02:58'),
(3, '03.WAKAME SALAD', 3, 'alga marina in aceto e sesamo', 22, '2023-10-28 13:05:59'),
(4, '04. KAPPA-WAKAME SALAD', 3.5, '\r\nalga marina in aceto, sesamo e cetrioli', 22, '2023-10-28 13:17:20'),
(5, ' 05.WAKAME GOMA', 3, '\r\nalga marina, sesamo, soia e pepe rosso', 22, '2023-10-28 13:17:57'),
(6, '06.ZUPPA DI MISO', 2.99, 'miso, tofu, alghe, wakame, erba cipollina', 22, '2023-10-28 13:23:51'),
(7, '07.SASHIMI SALAD ', 6, 'insalata mista in aceto con filetti di pesce crudo', 22, '2023-10-28 13:24:39'),
(8, '08.TAKO SALAD', 6, ' alga marina,sesamo, filetti di polpo*', 22, '2023-10-28 13:25:14'),
(9, '09.EBI SALAD ', 6, 'alga marina,sesamo, gamberi cotti*', 22, '2023-10-28 13:25:40'),
(10, '10.RISO ', 2, ' riso bianco e sesamo', 22, '2023-10-28 13:27:32'),
(11, '11.SAKE ', 2.5, 'salmone NIGIRI 2pz ', 23, '2023-10-28 13:31:15'),
(12, '12.SAKE-AVOCADO', 3, 'salmone onion e avocado', 23, '2023-10-28 13:39:24'),
(13, '13.TUNA ', 3, 'tonno ', 23, '2023-10-28 13:39:50'),
(14, '14.TAI ', 2.5, 'orata ', 23, '2023-10-28 13:40:21'),
(15, '15.SUZUKI', 2.5, ' branzino', 23, '2023-10-28 13:41:08'),
(16, '16.TAKO ', 2.5, 'polpo* ', 23, '2023-10-28 13:44:18'),
(17, '17.EBI ', 2.5, 'gambero cotto*', 23, '2023-10-28 13:44:42'),
(18, '18.AMAEBI', 3, ' gambero crudo*', 23, '2023-10-28 13:45:03'),
(19, ' 19.ANAGO ', 3, 'anguilla* ', 23, '2023-10-28 13:46:07'),
(20, ' 20.CAPASANTA', 3, ' capasanta*', 23, '2023-10-28 13:50:31'),
(21, ' 21.CAPASANTA - IKURA ', 3.5, 'capasanta e uova di salmone* ', 23, '2023-10-28 13:51:50'),
(22, '22.RICCIOLA ', 3, 'ricciola ', 23, '2023-10-28 13:52:12'),
(23, '  23.SUPER NIGIRI ', 4.5, 'salmone, avocado, arancia e gambero* ', 23, '2023-10-28 13:53:20'),
(24, ' 24. IKURA', 3, ' uova di salmone* ', 23, '2023-10-28 14:02:16'),
(25, ' 25.DAIKON ', 2.5, 'rapa', 23, '2023-10-28 14:02:43'),
(26, '26.KAPPA ', 2.5, 'cetriolo ', 23, '2023-10-28 14:03:10'),
(27, '27.AVOCADO ', 2.5, 'avocado', 23, '2023-10-28 14:03:39'),
(28, ' 28.POMODORO ', 2.5, 'pomodoro', 23, '2023-10-28 14:04:07'),
(29, '001.ONIGIRI SPICY SALMON ', 3, 'polpetta di riso con tartare di salmone piccante', 24, '2023-10-28 14:04:43'),
(30, '002.ONIGIRI SPICY TUNA ', 3.5, 'polpetta di riso con tartare di tonno piccante', 24, '2023-10-28 14:05:30'),
(31, '003.ONIGIRI EBITEM ', 3, ' polpetta di riso con gamberi\" friti,salsa teriyaki', 24, '2023-10-28 14:06:45'),
(32, '004.ONIGIRI MIURA', 3, 'polpetta di riso con salmone cotto e philadelphia e teriyaki', 24, '2023-10-28 14:07:51'),
(33, '005.ONIGIRI TUNA MAYO ', 3, 'polpetta di riso con salsa di tonno,mais e maionese', 24, '2023-10-28 14:08:19'),
(34, '  006.ONIGIRI EBI ', 4, ' polpetta di riso nero con gamberi* cotti,maionese', 24, '2023-10-28 14:08:45'),
(35, ' 29.IKURA ', 3, ' uova di salmone*', 25, '2023-10-28 14:27:49'),
(36, ' 30. TOBIKKO ', 3, ' uova di pesce volante*', 25, '2023-10-28 14:28:15'),
(37, ' 31.SPICY TUNA', 3, ' tonno piccante', 25, '2023-10-28 14:28:40'),
(38, ' 32.SPICY SALMON ', 3, 'salmone piccante', 25, '2023-10-28 14:29:14'),
(39, ' 33. RICCIOLA ', 3, ' ricciola', 25, '2023-10-28 14:29:33'),
(40, '34. RICCIOLA SALMON', 3, ' ricciola e salmone', 25, '2023-10-28 14:29:54'),
(41, '37. TUNA SALMONE', 3, ' tonno e salmone', 25, '2023-10-28 14:30:37'),
(42, '38.AVOCADO TUNA', 3, ' tonno,avocado ', 25, '2023-10-28 14:31:56'),
(43, '39.AVOCADO SALMON ', 3, 'salmone,avocado', 25, '2023-10-28 14:32:34'),
(44, ' 40.AVOCADO RICCIOLA ', 3, 'ricciola,avocado', 25, '2023-10-28 14:33:02'),
(45, ' 41.SAKE AVOCADO ROLL ', 6, ' salmone,avocado', 26, '2023-10-28 19:16:31'),
(46, ' 42.TUNA AVOCADO ROLL', 7, 'tonno,avocado ', 26, '2023-10-28 19:17:34'),
(47, ' 43. CALIFORNIA ROLL ', 7, 'salsa di tonno,avocado e gambero cotto*', 26, '2023-10-28 19:18:22'),
(48, ' 43a.VEGETARIANO ROLL ', 6, 'avocado,insalata,cetriolo,philadelphia', 26, '2023-10-28 19:19:58'),
(49, ' 44.PHILADELPHIA ROLL ', 6, ' gambero cotto,avocado e philadelphia*', 26, '2023-10-28 19:21:32'),
(50, ' 45. SAKE PHILADELPHIA ROLL', 7, 'salmone,avocado,philadelphia', 26, '2023-10-28 19:22:15'),
(51, '46. SUPER SAKE PHILADELPHIA ROLL', 8.99, 'salmone,salsa teriyaki, philadelphia', 26, '2023-10-28 19:23:22'),
(52, ' 47.RAINBOW ROLL ', 9, 'avocado,tonno,salmone,branzino,gambero', 26, '2023-10-28 19:23:57'),
(53, ' 48.SUPER SPICY SALMON ', 9, 'salmone in salsa piccante', 26, '2023-10-28 19:25:11'),
(54, ' 49.NEGITORO', 9, 'tonno in salsa piccante', 26, '2023-10-28 19:25:29'),
(55, ' 50.SPICY SALMON', 8, ' salmone in salsa piccante', 26, '2023-10-28 19:26:55'),
(56, ' 51.SUPER NEGIGORO ', 10, 'tonno in salsa piccante', 26, '2023-10-28 19:27:29'),
(57, ' 52.ANAGO ROLL ', 10, ' anguilla,avocado,salsa kabayaki, patatine croccanti', 26, '2023-10-28 19:28:01'),
(58, ' 53.LION ROLL ', 9, 'salmone cotto,tobikko', 26, '2023-10-28 19:29:26'),
(59, ' 53a.MIURA ROLL ', 8, ' salmone cotto e philadelphia e teriyaki', 26, '2023-10-28 19:30:20'),
(60, ' 54.EBITEN ROLL', 7, ' gambero fritto,salsa teriyaki', 26, '2023-10-28 19:30:57'),
(61, ' 55. EBIFRY ROLL', 9, 'gambero in farina e pan grattato,avocado,salsa teriyaki', 26, '2023-10-28 19:31:23'),
(62, ' 56.SUPER EBITEN', 9, ' gambero fritto,salsa piccante,patatine croccanti', 26, '2023-10-28 19:32:09'),
(63, ' 57.DRAGON ROLL', 8, ' gambero fritto,avocado,salsa kabayaki', 26, '2023-10-28 19:32:33'),
(64, '58.TIGER ROLL ', 9, ' philadelphia,gambero fritto,salmone,salsa teriyaki', 26, '2023-10-28 19:33:29'),
(65, ' 59.MANGO ROLL', 10, 'mango,avocado,tobikko,philadelphia,gambero fritto,salsa teriyaki', 26, '2023-10-28 19:34:00'),
(66, '  60.ASTICE GRATINE ', 16, ' gambero fritto,maionese,avocado, astice gratinato,salsa kabayaki', 26, '2023-10-28 19:34:24'),
(67, ' 61.ASTICE ROLL ', 14, ' polpa di astice,avocado,salsa kabayaki', 26, '2023-10-28 19:34:46'),
(68, ' 62.KANI ROLL', 12, 'granchio morbido,avocado,tobikko,salsa teriaki', 26, '2023-10-28 19:35:13'),
(69, ' 63.HOTATE ROLL', 12, ' capesante fritte,avocado,salsa teriyaki,patatine croccanti,bacche di goji', 26, '2023-10-28 19:35:57'),
(70, ' 64. SCAMPO ROLL', 16, 'scampo,philadelphia,spicy salmon,salsa teriyaki,fiori di zucca,ikura', 26, '2023-10-28 19:36:23'),
(71, ' 65. MEDITERRANEO ROLL', 15, ' gambero rosso,philadelphia,avocado,salmone,tobikko,ketchup', 26, '2023-10-28 19:36:58'),
(72, ' 66. VULCANO ROLL', 14.99, ' gambero rosso impanato,patatine croccanti,salmone,salsa piccante,maionese,tobikko,saisa teriyaki', 26, '2023-10-28 19:37:23'),
(73, '  010.MIURA SPECIAL ROLL', 9.9, 'salmone fritto,philadelphia, patatine croccante,salsa teriyaki,riso nero', 27, '2023-10-28 19:46:57'),
(74, ' 011.EBITEN MANGO ROLL ', 10.9, ' mango e avocado esterno,gamberi fritto, phitadelphia,salsa teriyakl,riso nero', 27, '2023-10-28 19:48:05'),
(75, ' 012.SYDNEY ROLL', 9.9, 'gambero fritto,insalata,maionese,onion,terniyakl,riso nero', 27, '2023-10-28 19:49:19'),
(76, ' 013.SAN FRANCISCO ROLL', 9, 'salmone,avocado,philadelphia', 27, '2023-10-28 19:49:44'),
(77, ' 014.WONDERFUL ROLL', 9.9, 'salmone,philadelphia,sopra tempura, salsa di avocado e teriyaki,riso nero', 27, '2023-10-28 19:50:30'),
(78, ' 015.TONIC ROLL ', 9, ' gamber cotto,salsa di tonno,maionese, avocado,RISo nero', 27, '2023-10-28 19:51:04'),
(79, ' 016.CHICAGO ROLL', 9.9, 'pollo fritto,insalata,philadelphia, scaglie di mandorle, maionese,teriyaki,riso nero', 27, '2023-10-28 19:51:39'),
(80, '67.FUTOMAKI ', 8, ' salmone,gambero, avocado,tonno 8pz', 28, '2023-10-28 19:52:09'),
(81, ' 68.FUTOMAKI FRITTO ', 10, ' salmone scottato, philadelphia,tobiko,salsa teriyaki 12pz', 28, '2023-10-28 19:52:49'),
(82, ' 69.FUTOMAKI LITE', 8, 'salmone scottato, mozzarella,gambero coto 6pz', 28, '2023-10-28 19:53:14'),
(83, '70. SAKE MAKI', 3.5, 'salmone', 29, '2023-10-28 19:53:36'),
(84, ' 71. TEKKA MAKI ', 4, 'tonno', 29, '2023-10-28 19:54:20'),
(85, '  72. EBI MAKI ', 3.5, 'gambero cotto', 29, '2023-10-28 19:54:45'),
(86, ' 73.AMAEBI MAKI ', 4, 'gambero crudo', 29, '2023-10-28 19:55:07'),
(87, ' 74.ANAGO MAKI ', 4, 'anguilla', 29, '2023-10-28 19:55:33'),
(88, ' 75.KAPPA MAKI', 3, '\r\ncetriolo', 29, '2023-10-28 19:55:51'),
(89, ' 76. AVOCADO MAKI ', 3, 'AVOCADO ', 29, '2023-10-28 19:56:20'),
(90, ' salmone e philadelphia', 3.5, '77.SAKE PHILA MAKI', 29, '2023-10-28 19:56:46'),
(91, ' 78.SAKENORI PASSION ', 7, ' salmone,avocado e philadelphia,lime grattugiato,salsa piccante 8pz', 29, '2023-10-28 19:57:17'),
(92, ' 79.HOSO MAKI FRITTO', 5, '\r\nsalmone,philadelphia,patatinecroccant,salsa teriyaki 8pz\r\n\r\n', 29, '2023-10-28 19:57:36'),
(93, 'SUSHI MATSU ', 14, 'nigiri 9pz,hosomaki 6pz* ', 30, '2023-10-28 20:07:34'),
(94, ' 81.SUSHI TAKE', 12, ' nigiri 7pz, hosomaki 6pz* ', 30, '2023-10-28 20:08:15'),
(95, '82.SUSHI UME', 8, ' nigiri5pz,hosomaki 3pz* ', 30, '2023-10-28 20:09:20'),
(96, ' 83.MIX SUSHI-SASHIMI ', 17, 'sashimi 10pz, nigiri 6pz,hosomaki 3pz*', 30, '2023-10-28 20:09:46'),
(97, ' 84.SUSHI MIX ', 12, '\r\nnigiri mix 10pz*', 30, '2023-10-28 20:10:27'),
(98, ' 85.SUSHI VEGETARIANO', 12, 'nigiri 8pz,hosomaki 6pz', 30, '2023-10-28 20:10:42'),
(99, ' 86.SUSHI SAKE', 11, '\r\nsalmone 10pz', 30, '2023-10-28 20:11:11'),
(100, ' 87.SUSHI MAGURO ', 13, 'tonno 10pz', 30, '2023-10-28 20:11:44'),
(101, ' 88.SUSHI BIANCO ', 12, 'ricciola,branzino,orata 10pz', 30, '2023-10-28 20:12:00'),
(102, ' 89.BARCAx1', 19, '\r\nnigiri,maki,sashimi 22pz', 31, '2023-10-28 20:12:32'),
(103, ' 90.BARCAx2 ', 35, ' nigiri, maki,sashimi 44pz', 31, '2023-10-28 20:13:33'),
(104, '91.SASHIMI MATSU ', 15, '\r\nfiletti di pesce 15pz', 32, '2023-10-28 20:14:14'),
(105, ' 92.SASHIMI TAKE', 12, ' filetti di pesce 10pz', 32, '2023-10-28 20:14:54'),
(106, ' 93.SASHIMI DI SALMONE', 12, '\r\nfiletti di salmone 10pz', 32, '2023-10-28 20:15:28'),
(107, '94.SASHIMI DI TONNO', 13, ' fileti di tonno 10pz', 32, '2023-10-28 20:15:52'),
(108, ' 95.SASHIMI DI RICCIOLA', 13, '\r\n\r\nfiletti di ricciola 10pz', 32, '2023-10-28 20:16:26'),
(109, ' 96.CHIRASHI MIX ', 12, 'mix di fletti di pesce su letto di riso*', 33, '2023-10-28 20:16:57'),
(110, ' 97.CHIRASHI SALMONE', 11, '\r\nfileti di saimone su letto di riso', 33, '2023-10-28 20:17:26'),
(111, '98.CHIRASHI TONNO ', 12, ' fileti di tonno su letto di riso', 33, '2023-10-28 20:18:05'),
(112, ' 99.CHIRASHI SALMONE/TONNO ', 11.5, ' fileti di salmone e tonno su letto di riso', 33, '2023-10-28 20:18:26'),
(113, ' 100.SALMON PRESSURE ', 11, ' tartare salmone in salsa piccante su letto di riso', 34, '2023-10-28 20:28:26'),
(114, ' 101.TUNA PRESSURE ', 13, 'tartare tonno in salsa piccante su letto di riso', 34, '2023-10-28 20:28:47'),
(115, ' 102.MIX SALMON-TUNA PRESSURE', 12, '\r\n\r\ntartare tonno e salmone in salsa piccantsu letto di riso', 34, '2023-10-28 20:29:58'),
(116, ' 103.RICCIOLA', 15, '\r\nricciola,sale grosso e lime', 34, '2023-10-28 20:30:11'),
(117, ' 104 SALMON FUSION', 11, '\r\nsalmone,cipollotti,capperi,pinoli,olio dioliva e salsa ponzu', 34, '2023-10-28 20:30:35'),
(118, '105.TUNA FUSION', 12, 'tonno,cipollotti,capperi,pinoli,olio di oliva e salsa ponzu', 34, '2023-10-28 20:31:01'),
(119, ' 106.AMAEBI FUSION', 12, '\r\namaebi,capesante,pesce bianco,olio di oliva e salsa ponzu', 34, '2023-10-28 20:31:32'),
(120, '  107.SALMON AVOCADO', 10, '\r\nsalmone,letto di avocado,salsa special', 34, '2023-10-28 20:32:33'),
(121, '108. TUNA AVOCADO', 11, 'tonno,letto di avocado,salsa special', 34, '2023-10-28 20:32:53'),
(122, ' 109.SALMONE ', 11, 'salmone in salsa ponzu', 35, '2023-10-28 20:33:28'),
(123, '110.TONNO', 12, ' tonno in salsa ponzu', 35, '2023-10-28 20:33:59'),
(124, ' 111.BRANZINO ', 11, 'branzino in salsa ponzu', 35, '2023-10-28 20:34:24'),
(125, ' 112. MIX TONNO-SALMONE  ', 12, 'tonno e salmone in salsa ponzu', 35, '2023-10-28 20:34:45'),
(126, '  113. MIX TONNO-BRANZINO', 12, ' tonno e branzino in salsa ponzu', 35, '2023-10-28 20:35:04'),
(127, ' 114. TEMAKI SAKE-AVOCADO ', 3.5, '\r\nsalmone e avocado', 36, '2023-10-28 20:35:35'),
(128, ' 115.MAGURO AVOCADO', 4, '\r\ntonno', 36, '2023-10-28 20:35:52'),
(129, ' 116.EBI', 3.5, '\r\ngambero cotto e avocado*', 36, '2023-10-28 20:36:16'),
(130, ' 117.AMAEBI', 4, '\r\ngambero crudo*', 36, '2023-10-28 20:36:46'),
(131, ' 118.CALIFORNIA', 3.5, 'salsa di tonno,gambero cotto,avocado*', 36, '2023-10-28 20:37:10'),
(132, '  119.PHILADELPHIA', 3.5, '\r\nphiladelphia,gambero cotto,avocado*', 36, '2023-10-28 20:37:39'),
(133, ' 120.EBITEM', 4, '\r\ngamberi in tampura,salsa teriaki', 36, '2023-10-28 20:38:06'),
(134, '121.ANAGO', 3.99, '\r\n\r\nanguilla,avocado e salsa kabayaki*', 36, '2023-10-28 20:38:27'),
(135, '122.IKURA', 4, '\r\nuova di salmone*', 36, '2023-10-28 20:39:18'),
(136, ' 123.TARTARE SAKE', 3.48, '\r\ntartare di salmone', 36, '2023-10-28 20:39:46'),
(137, ' 124.TARTARE TUNA', 4, '\r\ntartare di tonno', 36, '2023-10-28 20:40:01'),
(138, ' 125.YAKI UDON ', 6, 'pasta di grano,verdure', 37, '2023-10-28 20:49:38'),
(139, ' 126.SHIROMI UDON ', 7, 'pasta di grano,verdure,gamberl,pesce bianco*', 37, '2023-10-28 20:50:22'),
(140, ' 127.TAI UDON', 7, 'pasta di grano,gamberi,zucchine,pollo,curry', 37, '2023-10-28 20:50:57'),
(141, ' 128.SAKE UDON ', 10, 'pasta fredda,salmone,sesamo', 37, '2023-10-28 20:51:14'),
(142, ' 129.YAKI SOBA', 6.99, '\r\npasta di grano saraceno,verdure', 37, '2023-10-28 20:51:39'),
(143, ' 130.SHIROMI SOBA', 8, '\r\npasta di grano saraceno,verdure,gamberi,pesce bianco', 37, '2023-10-28 20:52:01'),
(144, ' 131.TAI SOBA', 8, '\r\npasta di grano saraceno,curry,gamberi,zucchine,pollo*', 37, '2023-10-28 20:52:24'),
(145, ' 132.CHA SOBA ', 7, ' pasta di grano the verde con salmone verdure', 37, '2023-10-28 20:53:41'),
(146, ' 133.RAVIOLI GAMBERI FRITTI 4pz', 4.5, '\r\n.', 37, '2023-10-28 20:54:19'),
(147, '134.RAVIOLI CARNE FRITTI 4pz', 3.5, '.', 37, '2023-10-28 20:54:41'),
(148, '  135.RAVIOLI GAMBERI PIASTRA 4pz', 4.5, ' €4,50', 37, '2023-10-28 20:55:06'),
(149, ' 136.RAVIOLI CARNE PIASTRA 4pz', 3.5, ' €3,50', 37, '2023-10-28 20:55:23'),
(150, ' 137.UNAGI ', 8.99, 'anguilla alla biastra in salsa kabayaki*', 37, '2023-10-28 20:55:49'),
(151, ' 138.SALMONE TERIAKI', 10, '\r\nsalmone alla piastra in salsa teriyaki', 37, '2023-10-28 20:56:09'),
(152, ' 139.SALMONE SCOTTATO ', 10, 'salmone alla piastra in salsa ponzu e sesamo', 37, '2023-10-28 20:56:36'),
(153, ' 140.TONNO SCOTTATO', 11, '\r\ntonno alla piastra in salsa wasabi e sesamo', 37, '2023-10-28 20:57:20'),
(154, ' 141.TONNO AL PISTACCHIO ', 11, 'tonno alla piastra in salsa ponzu e pistacchio', 37, '2023-10-28 20:58:28'),
(155, '142. EBI TEMPURA ', 10, 'gamberi fritti in farina*', 37, '2023-10-28 20:59:16'),
(156, ' 142a.TEMPURA YASAI ', 5, 'verdure miste fritte', 37, '2023-10-28 20:59:34'),
(157, ' 143.EBIFRY ', 10, 'gamberi fritti in farina e pan grattato*', 37, '2023-10-28 21:00:03'),
(158, '144.SPIEDINI CAPASANTA', 11, 'capasanta alla piastra e lime*', 37, '2023-10-28 21:01:19'),
(159, ' 145.SPIEDINI SALMONE', 10, '\r\nsalmone alla piastra in salsa teriyaki-tonkatsu', 37, '2023-10-28 21:01:53'),
(160, ' 146.YAKI TORI ', 8, ' pollo alla piastra in salsa teriyaki-tonkatsu', 37, '2023-10-28 21:02:11'),
(161, ' 147.SPIEDINI DI GAMBERO', 8, '\r\ngambero alla piastra in salsa teriyaki-tonkatsu*', 37, '2023-10-28 21:03:01'),
(162, '160.SPIEDINI DI SEPPIA', 8, '\r\nseppia alla piastra in salsa teriyaki', 37, '2023-10-28 21:03:17'),
(163, '161.GAMBERONI ALLA GRIGLIA ', 6.99, '7,00', 37, '2023-10-28 21:03:41'),
(164, ' 148.MAKI FRAGOLA ', 5, 'carta di soia,nutella,fragola 6pz', 38, '2023-10-28 21:07:31'),
(165, '149.MAKI BANANA', 4, '\r\ncarta di soia, nutella,banana 6pz', 38, '2023-10-28 21:07:44'),
(166, '150.MAKI FRUIT', 5, '\r\n\r\ncarta di soia, riso frutti di bosco, mango,nutella 6pz', 38, '2023-10-28 21:08:05'),
(167, '151.MOCHI AL GELATO(2PZ)', 4, 'sesamo/the verde/mango/vaniglia', 38, '2023-10-28 21:08:29'),
(168, '152.MOCHI NON GELATO (2PZ)', 3, '\r\nsesamo/fagioli rosso/the verde', 38, '2023-10-28 21:08:56'),
(169, ' 153.TIRAMISU', 4, ' € 4,00', 38, '2023-10-28 21:09:13'),
(170, ' 154.BANANA TEM', 5, '\r\n', 38, '2023-10-28 21:09:32'),
(171, '  155.ANANAS', 4, ' € 4,00', 38, '2023-10-28 21:09:45'),
(172, '   156.MIX FRUIT ', 4, '€ 4,00', 38, '2023-10-28 21:10:00'),
(173, '205.INVOLTINO DI PRIMAVERA 2pz', 1.8, ' € 1,80', 39, '2023-10-28 21:21:27'),
(174, ' 206.INVOLTINO DI GAMBERI 2pz', 3.5, '\r\n€ 3,50', 39, '2023-10-28 21:21:48'),
(175, '207.INVOLTINO DI SALMONE 2pz', 4.5, '\r\n€ 4,50', 39, '2023-10-28 21:22:12'),
(176, ' 208.NUVOLE DI DRAGO ', 2, '€ 2,00', 39, '2023-10-28 21:22:31'),
(177, ' 209.PATATINE FRITTE ', 2, '€ 2,00', 39, '2023-10-28 21:22:49'),
(178, '210.WANTON FRITTO 4pz', 2, ' € 2,00', 39, '2023-10-28 21:23:13'),
(179, '212.RAVIOLI DI VERDURE AL VAPORE ', 3, '€ 3,00', 39, '2023-10-28 21:23:27'),
(180, ' 213.RAVIOLI DI CARNE AL VAPORE', 3, ' € 3,00', 39, '2023-10-28 21:23:55'),
(181, '214.RAVIOLI DI GAMBERI AL VAPORE ', 4, '€ 4,00', 39, '2023-10-28 21:24:31'),
(182, ' 217.PANE CINESE ', 1.5, '€ 1,50', 39, '2023-10-28 21:25:15'),
(183, ' 218.ZUPPA DI ASPARAGI E GRANCHIO ', 3, '€ 3,00', 40, '2023-10-28 21:25:39'),
(184, ' 219.ZUPPA DI MAIS E POLLO ', 2.99, '€ 3,00', 40, '2023-10-28 21:25:53'),
(185, ' 220.ZUPPA AGROPICCANTE ', 2.99, '€ 3,00', 40, '2023-10-28 21:26:11'),
(186, '221.ZUPPA DI WAN-TON ', 3.5, '€ 3,50', 40, '2023-10-28 21:26:24'),
(187, '  222.RAMEN IN BRODO CON GAMBERI,VERDURE E UOVO ', 6, '€ 6,00', 40, '2023-10-28 21:27:07'),
(188, '223.RAMEN IN BRODO CON CARNE,VERDURE E UOVO', 6, ' € 6,00', 40, '2023-10-28 21:27:39'),
(189, ' 224.SPAGHETTI DI RISO CON GAMBERI', 4, '', 41, '2023-10-28 21:29:23'),
(190, ' 225.SPAGHETTI DI RISO ALLA SINGAPORE ', 4, ' (speck,peperone,curry,gamberi,verdure miste)', 41, '2023-10-28 21:29:46'),
(191, '226.SPAGHETTI DI RISO CON POLLO', 4, '', 41, '2023-10-28 21:31:18'),
(192, ' 227.SPAGHETTI DI RISO CON VERDURE', 3.5, '', 41, '2023-10-28 21:31:39'),
(193, ' 228.SPAGHETTI DI SOIA CON GAMBERI ', 4, '', 41, '2023-10-28 21:31:54'),
(194, ' 229.SPAGHETTI DI SOIA CON VERDURE ', 3.5, '', 41, '2023-10-28 21:32:13'),
(195, '230.SPAGHETTI DI SOIA CON POLLO ', 3.99, '', 41, '2023-10-28 21:32:40'),
(196, ' 260.SPAGHETTI DI GRANO CINESE CON GAMBERI E VERDURE', 4.5, '', 41, '2023-10-28 21:33:19'),
(197, '  261.SPAGHETTI DI GRANO CINESE CON POLLO E VERDURE', 4.5, '', 41, '2023-10-28 21:33:41'),
(198, ' 262.SPAGHETTI DI GRANO CINESE CON PESCE MISTO E VERDURE ', 5, '', 41, '2023-10-28 21:34:11'),
(199, ' 262.SPAGHETTI DI GRANO CINESE CON PESCE MISTO E VERDURE ', 5, '', 41, '2023-10-28 21:34:19'),
(200, ' 263.GNOCCHI DI RISO CON GAMBERI E VERDURE', 4, '', 41, '2023-10-28 21:34:50'),
(201, '  264.GNOCCHI DI RISO CON POLLO E VERDURE', 3.99, '', 41, '2023-10-28 21:35:13'),
(202, ' 231.RISO CANTONESE ', 3, '', 42, '2023-10-28 21:35:54'),
(203, ' 232.RISO ALLA THAILANDESE', 4, '\r\n(foglie di limone,pomodoro,curry rosso piccante)', 42, '2023-10-28 21:48:18'),
(204, ' 233.RISO CON VERDURE MISTE ', 3, '', 42, '2023-10-28 21:48:36'),
(205, '234.RISO CON GAMBERI ', 4, '', 42, '2023-10-28 21:49:02'),
(206, '234a.RISO CON POLLO ', 3.48, '', 42, '2023-10-28 21:49:23'),
(207, '235.GAMBERI CON PATATE', 6, '', 43, '2023-10-28 21:49:46'),
(208, '236.GAMBERI IN SALSA PICCANTI ', 5.99, '(peperone,cipolle)', 43, '2023-10-28 21:50:12'),
(209, '237.GAMBERI ALLA GONGBAO', 6, '(arachide,peperone,cipolle)', 43, '2023-10-28 21:50:39'),
(210, '   238.GAMBERI IN SALSA AGRODOLCE ', 6, '', 43, '2023-10-28 21:51:11'),
(211, '  239.GAMBERI CON VERDURE', 6, '', 43, '2023-10-28 21:51:29'),
(212, ' 239a.GAMBERI CON SALE PEPE', 6, '', 43, '2023-10-28 21:51:57'),
(213, ' 265.GAMBERI FRITTI ', 6, '', 43, '2023-10-28 21:52:19'),
(214, ' 266.GAMBERI CON ANACARDI ', 7, '', 43, '2023-10-28 21:52:37'),
(215, ' 267.GAMBERI CON FUNGHI CINESE E BAMBU ', 5.99, '', 44, '2023-10-28 21:53:09'),
(216, ' 240.POLLO CON PATATE ', 5, '', 44, '2023-10-28 21:53:47'),
(217, ' 241.POLLO CON MANDORLE ', 5.5, '', 44, '2023-10-28 21:54:10'),
(218, '   242.POLLO IN SALSA PICCANTE ', 4.99, ' (peperone,cipolle)', 44, '2023-10-28 21:54:45'),
(219, ' 243.POLLO ALLA GONGBAO ', 5, '(arachide,peperone,cipolle)', 44, '2023-10-28 21:55:24'),
(220, ' 244.POLLO IN SALSA AGRODOLCE ', 5.5, '', 44, '2023-10-28 21:55:53'),
(221, ' 245.POLLO CON VERDURE ', 5, '', 44, '2023-10-28 21:56:14'),
(222, '268.POLLO FRITTO ', 5, '', 44, '2023-10-28 21:56:29'),
(223, ' 269.POLLO AL CURRY', 4.99, '', 44, '2023-10-28 21:57:03'),
(224, '270.POLLO AL LIMONE', 5, '', 44, '2023-10-28 21:58:00'),
(225, '271.POLLO CON ANANAS ', 5, '', 44, '2023-10-28 21:58:26'),
(226, '272.POLLO CON FUNGHI CINESE E BAMBU', 5.5, '', 44, '2023-10-28 21:58:43'),
(227, ' 273.PETTO DI POLLO ALLA GRIGLIA', 5.5, '', 44, '2023-10-28 21:59:03'),
(228, '274.ANATRA FRITTA ', 5.5, '', 45, '2023-10-28 22:14:08'),
(229, ' 275.ANATRA ARANCIA', 6, '', 45, '2023-10-28 22:14:44'),
(230, ' 276.ANATRA CON ANANAS FRESCO ', 5.99, '', 45, '2023-10-28 22:15:10'),
(231, ' 277.ANATRA IN SALSA PICCANTE ', 6, '', 45, '2023-10-28 22:15:31'),
(232, ' 278.ANATRA CON FUNGHI CINESE E BAMBU ', 5.99, '', 45, '2023-10-28 22:15:58'),
(233, '  246.VITELLO CON PATATE ', 5.5, '', 46, '2023-10-28 22:16:39'),
(234, ' 247.VITELLO IN SALSA PICCANTE ', 5.5, '(peperone,cipolle)', 46, '2023-10-29 16:46:32'),
(235, '248.VITELLO ALLA GONGBAO', 5.5, '\r\n\r\n\r\n(arachide,peperone, cipolle)', 46, '2023-10-29 16:47:04'),
(236, ' 249.VITELLO CON VERDURE', 5.5, '', 46, '2023-10-29 16:47:31'),
(237, ' 279.VITELLO AL CURRY ', 5.5, '', 46, '2023-10-29 16:48:01'),
(238, '280.VITELLO CON FUNGHI CINESE E BAMBU ', 6, '', 46, '2023-10-29 16:48:31'),
(239, ' 281.MAIALE CON FUNGHI CINESE E BAMBU', 5.5, '', 47, '2023-10-29 16:49:05'),
(240, ' 282. MAIALE IN SALSA AGRODLOCE ', 5.5, '', 47, '2023-10-29 16:49:30'),
(241, ' 283.MAIALE IN SALSA PICCANTE ', 5, '', 47, '2023-10-29 16:50:11'),
(242, ' 284.MAIALE AL CURRY ', 5, '', 47, '2023-10-29 16:50:39'),
(243, '285.MAIALE CON PEPERONE ', 5, '', 47, '2023-10-29 16:53:04'),
(244, '250. BRANZINO ALLA GRIGLIA ', 10, '', 48, '2023-10-29 16:53:30'),
(245, '251. BRANZINO CON VERDURE SALTATO', 12, '', 48, '2023-10-29 16:53:58'),
(246, '255.VERDURE MISTO SALTATO ', 3.5, '(zucchine,carote,asparagi,bambù)', 49, '2023-10-29 16:54:27'),
(247, '256.INSALATA CON MAIS E POMODORI ', 3, '', 49, '2023-10-29 16:54:53'),
(248, 'ACQUA NATURALE/FRIZZANTE PICCOLO ', 1, '', 50, '2023-10-29 16:56:00'),
(249, ' ACQUA NATURALE/FRIZZANTE GRANDE ', 2, '', 50, '2023-10-29 16:56:33'),
(250, ' FANTA(LATTINA) ', 2, '', 50, '2023-10-29 16:57:01'),
(251, ' SPRITE(LATTINA) ', 2, '', 50, '2023-10-29 16:58:05'),
(252, ' COCA COLA(LATTINA) ', 2, '', 50, '2023-10-29 16:58:27'),
(253, 'COCA COLA 1.5L ', 3.5, '', 50, '2023-10-29 16:58:55'),
(254, ' COCA ZERO(LATTINA) ', 2, '', 50, '2023-10-29 16:59:17'),
(255, ' Tè LIMONE(LATTINA)', 2, '', 50, '2023-10-29 17:00:03'),
(256, 'THE PESCA(LATTINA)', 2, '', 50, '2023-10-29 17:00:29'),
(257, ' BIRRA CERES 33CL ', 3, '', 50, '2023-10-29 17:00:55'),
(258, ' BIRRA MORETTI 33CL ', 2.5, '', 50, '2023-10-29 17:01:25'),
(259, ' BIRRA MORETTI 66CL', 3, '', 50, '2023-10-29 17:01:54'),
(260, '   BIRRA HEINEKEN 33CL ', 3, '', 50, '2023-10-29 17:02:15'),
(261, '  BIRRA HEINEKEN 66CL', 3.5, '', 50, '2023-10-29 17:02:37'),
(262, 'BIRRA KRIN,ASAHI,SAPPORO ,TSINGTAO ', 4, 'BIRRA TSINGTAO 64CL \r\nBIRRA KRIN,ASAHI,SAPPORO 50CL', 50, '2023-10-29 17:03:40'),
(263, ' SAKE CALDO(VINO DI RISO)250ML ', 5, '', 50, '2023-10-29 17:04:10'),
(264, '  SAKE CALDO(VINO DI RISO)100ML ', 2.5, '', 50, '2023-10-29 17:04:33'),
(265, ' SAKE(BOTTIGLIA)300ML ', 8, '', 50, '2023-10-29 17:04:56'),
(266, 'MERLOT VENEZIE ', 6, '', 50, '2023-10-29 17:05:19'),
(267, 'NERO D AVOLA', 12, '', 50, '2023-10-29 17:06:31'),
(268, ' BARBERA', 10, '', 50, '2023-10-29 17:06:56'),
(269, 'BARBERA FRIZZANTE', 9.99, '', 50, '2023-10-29 17:09:02'),
(270, 'BONARDA', 15, '', 50, '2023-10-29 17:09:26'),
(271, 'CHIANTI', 18, '', 50, '2023-10-29 17:10:05'),
(272, ' BIANCO DI CUSTOZA(PIEVE)', 6, 'VINO BIANCO ', 50, '2023-10-29 17:11:17'),
(273, ' PIGNOLETTO(VINO FRIZZANTE)', 6, '', 50, '2023-10-29 17:11:46'),
(274, 'GRECANICO', 12, '', 50, '2023-10-29 17:12:42'),
(275, 'CHARDONNAY', 12, '', 50, '2023-10-29 17:13:07'),
(276, ' CHARDONNAY FRIZZANTE', 10, '', 50, '2023-10-29 17:13:34'),
(277, 'SPUMANTE', 15, '', 50, '2023-10-29 17:14:08'),
(278, 'chao fan', 4, 'riso saltato', 42, '2023-10-29 17:14:45');

-- --------------------------------------------------------

--
-- Struttura della tabella `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `foodId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `foodId`, `itemQuantity`) VALUES
(13, 6, 5, 1),
(14, 6, 6, 1),
(15, 7, 7, 1),
(16, 7, 4, 1),
(17, 8, 31, 1),
(18, 9, 36, 1),
(19, 10, 30, 1),
(20, 11, 13, 1),
(21, 12, 11, 1),
(22, 13, 33, 4),
(23, 14, 30, 1),
(24, 15, 31, 1),
(25, 16, 12, 1),
(26, 17, 38, 1),
(27, 18, 14, 1),
(28, 19, 12, 1),
(29, 20, 2, 1),
(30, 21, 31, 1),
(31, 22, 32, 1),
(32, 23, 123, 1),
(33, 24, 31, 1),
(34, 25, 31, 1),
(35, 26, 31, 1),
(36, 27, 31, 1),
(37, 27, 32, 1),
(38, 28, 12, 2),
(39, 28, 11, 2),
(40, 28, 16, 3),
(41, 28, 74, 1),
(42, 28, 77, 1),
(43, 28, 1, 1),
(44, 29, 31, 3),
(45, 30, 37, 1),
(46, 31, 12, 3),
(47, 32, 30, 1),
(48, 33, 30, 2),
(49, 34, 11, 1),
(50, 35, 12, 2),
(51, 36, 12, 1),
(52, 37, 30, 1),
(53, 38, 12, 1),
(54, 39, 31, 1),
(55, 40, 12, 1),
(56, 41, 30, 1),
(57, 42, 12, 1),
(58, 43, 1, 1),
(59, 44, 29, 1),
(60, 45, 12, 1),
(61, 46, 12, 1),
(62, 47, 12, 1),
(63, 48, 11, 1),
(64, 4, 30, 1),
(65, 5, 12, 3),
(66, 6, 11, 1),
(67, 7, 11, 1),
(68, 8, 11, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(5, 1, 'Via montegrappa 144, Via montegrappa 144', 20092, 3392143462, 9, '0', '0', '2023-11-01 16:08:05'),
(6, 1, 'Via montegrappa 144, ', 20092, 3392143462, 3, '0', '0', '2023-11-03 01:14:46'),
(7, 1, 'Via montegrappa, Via montegrappa', 20092, 3392143462, 3, '0', '0', '2023-11-08 00:07:08'),
(8, 1, 'Via montegrappa, 144', 20092, 3392143462, 17, '0', '0', '2023-11-09 18:05:09');

-- --------------------------------------------------------

--
-- Struttura della tabella `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'ristorante haru', 'xu1271669848@gmail.com', 3392143462, 3662116818, 'Via cimarosa 1', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58'),
(2, 'qqq', 't5', 'u', '1271669848@qq.com', 3392143462, '0', '$2y$10$5jvktKLOse4NFoGj3psfQO0bjUQQgubEbwLm55TgnS5sMIM5NofX2', '2023-10-26 15:52:59'),
(5, 'ad3', '23', '324', 'haoxuan.xu@mail.polimi.it', 3333392143, '0', '$2y$10$3T2hp4L1SzN56vrK1JQpOeO/c46KBIGAtFs3uK4lXtwQ9hEzelj.q', '2023-10-29 20:25:31'),
(6, 'admin22', '', '', '', 2222222222, '0', '$2y$10$E9Zv9QGCfoSiH5dNmPsf5.2TuwpfWveL5nL5atmlf/WeyDrSkGNha', '2023-10-29 21:07:21');

-- --------------------------------------------------------

--
-- Struttura della tabella `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `foodId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `viewcart`
--

INSERT INTO `viewcart` (`cartItemId`, `foodId`, `itemQuantity`, `userId`, `addedDate`) VALUES
(21, 12, 1, 2, '2023-10-29 19:23:20'),
(81, 12, 1, 1, '2023-11-09 18:06:27'),
(82, 36, 1, 1, '2023-11-11 18:09:26');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indici per le tabelle `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indici per le tabelle `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indici per le tabelle `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodId`);
ALTER TABLE `food` ADD FULLTEXT KEY `pizzaName` (`foodName`,`foodDesc`);

--
-- Indici per le tabelle `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indici per le tabelle `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indici per le tabelle `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT per la tabella `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `food`
--
ALTER TABLE `food`
  MODIFY `foodId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT per la tabella `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
