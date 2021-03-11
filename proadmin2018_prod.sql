-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2021 at 05:21 PM
-- Server version: 10.3.27-MariaDB-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proadmin2018_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `user_id` char(13) NOT NULL,
  `address` text NOT NULL,
  `town` varchar(255) NOT NULL,
  `townId` int(11) NOT NULL,
  `county` varchar(255) DEFAULT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`, `town`, `townId`, `county`, `x`, `y`) VALUES
(6, '29', 'Soseaua Pantelimon Nr. 352, Bl. 3, Sc. B, Etj. 9, Apt. 73', 'bucuresti', 0, '', '', ''),
(13, '115', 'test', 'test', 0, '', '', ''),
(14, '29', 'Belciugatele', 'Calarasi', 0, 'Calarasi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `BlogCategoryID` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contentText` text CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `postSlug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `BlogCategoryID`, `date_added`, `year`, `month`, `description`, `contentText`, `postSlug`) VALUES
(3, 'Lac pentru lemn cu efect de ceara – Protejeaza lemnul impotriva impuritatilor', 'https://pro-staff.ro/wp-content/uploads/2020/05/Lac-pentru-lemn-incolor.png\" \r\n', 0, '2020-05-07', '', '', 'Lacul pentru lemn TIXE cu efect de ceara, este foarte rezistent la zgarieturi , asigura o protectie definitiva, poate fi utilizat atat in ??interior cat si in exterior, confera lemnului o finisare moale, catifelata. Lacul este foarte rezistent la agentii ', '<p>Lacul pentru lemn TIXE cu efect de ceara, este foarte rezistent la zgarieturi , asigura o protectie definitiva,\r\n    poate fi utilizat atat in ​​interior cat si in exterior, confera lemnului o finisare moale, catifelata. Lacul\r\n    este foarte rezistent la agentii atmosferici si razele UV.</p>\r\n    <strong>CARACTERISTICI PRINCIPALE</strong>\r\n    <ul>\r\n       \r\n    </ul>\r\n    <li>Contine ceara naturala;</li>\r\n    <li>Produs hiidrofug;</li>\r\n    <li>Finisaj catifelat;</li>\r\n    <li>Nu se sparge si nu crapa.</li>\r\n    <p>Lacul se poate aplica pe lemn nou sau deja vopsit, in aer liber sau in interior, in orice mediu (marin, munte,\r\n    urban, industrial), pe corpuri de iluminat, usi, balustrade, balcoane, barci etc.</p>\r\n\r\n   <p>Echipat atat cu o penetrare excelenta, cat si cu un efect de bariera, sporeste rezistenta lemnului la agresiune\r\n    atmosferice si umiditate. Selectia tinta a componentelor de formulare garanteaza o protectie prelungita a\r\n    lemnului impotriva putrefactiei, impotriva ciupercilor si impotriva activitatii INSECTELOR (viermi, termite\r\n    etc.), printr-o actiune preventiva.</p>\r\n    <p>Prezenta pigmentilor, inzestrata cu o stabilitate extrema, sporeste rigiditatea lemnului si ofera gravura in\r\n    tonul dorit.</p>\r\n  </p>\r\n  <div id=\"gallery-3\" class=\"gallery galleryid-3484 gallery-columns-1 gallery-size-large\">\r\n    <figure class=\"gallery-item\">\r\n      <div class=\"gallery-icon landscape\">\r\n        <a href=\"https://pro-staff.ro/lac-pentru-lemn-cu-efect-de-ceara-protejeaza-lemnul-impotriva-impuritatilor/lac-cu-efect-de-ceara/\"\r\n          data-wpel-link=\"internal\"><img width=\"466\" height=\"466\"\r\n            src=\"https://pro-staff.ro/wp-content/uploads/2020/05/lac-cu-efect-de-ceara.jpg\"\r\n            class=\"attachment-large size-large\" alt=\"\"\r\n            srcset=\"https://pro-staff.ro/wp-content/uploads/2020/05/lac-cu-efect-de-ceara.jpg 466w, https://pro-staff.ro/wp-content/uploads/2020/05/lac-cu-efect-de-ceara-150x150.jpg 150w, https://pro-staff.ro/wp-content/uploads/2020/05/lac-cu-efect-de-ceara-300x300.jpg 300w, https://pro-staff.ro/wp-content/uploads/2020/05/lac-cu-efect-de-ceara-100x100.jpg 100w\"\r\n            sizes=\"(max-width: 466px) 100vw, 466px\"></a>\r\n      </div>\r\n    </figure>\r\n  </div>\r\n<p>Suprafata care va fi vopsita cu lacul pentru lemn cu efect de ceara trebuie sa fie pregatita cu un tratament\r\n    adecvat, si anume:</p>\r\n  <ul>\r\n      \r\n  </ul>\r\n  <li>PE SUPRAFETE NOI: pentru o durabilitate mai mare, suprafata trebuie sa fie fara grasimi sau ulei.\r\n  Aplicati una sau mai multe straturi de produs la cel putin 12 ore una de alta, intrerupeti cu slefuire usoara.</li>\r\n  <li>PE SUPRAFETE VOPSITE: daca stratul de vopsea preexistent nu recomanda eliminarea completa, degresati cu apa si\r\n  detergent, clatiti. Daca vopselele existente se decojesc pe perie si slefuieste bine aceste parti sau procedeaza\r\n  la indepartarea vopselei cu un decapant de vopsea. Aplicati una sau mai multe straturi de produs intersectate cu\r\n  slefuire usoara.</li>\r\n  <p>Lacul pentru lemn cu efect de ceara se poate aplica cu pensula, trafaletul sau prin pulverizare.</p>\r\n  <p>Randament: 9-11 mp / litru/ strat</p>\r\n  <p>Uscare: 5 ore la atingere ; 18 ore in profunzime .</p>\r\n  <div class=\"gallery\">\r\n    <figure class=\"gallery-item\">\r\n      <div class=\"gallery-icon landscape\">\r\n\r\n        <img width=\"640\" height=\"640\"\r\n          src=\"https://pro-staff.ro/wp-content/uploads/2020/05/Lac-pentru-lemn-cu-efect-de-ceara.jpg\"\r\n          class=\"attachment-large size-large\">\r\n      </div>\r\n    </figure>\r\n  </div>', 'lac-pentru-lemn-cu-efect-de-ceara-protejeaza-lemnul-impotriva-impuritatilor'),
(4, 'Vopsea tabla de scris – Intotdeauna o alegere buna!', 'https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris.png', 0, '2020-04-24', '', '', 'O vopsea tabla de scris nu numai ca poate aduce un plus locuintei tale, dar te poate scapa si de un stres, mai ales daca ai copii mici. Indiferent de locul in care alegi sa aplici vopseaua cu efect de tabla de scris, trebuie sa te asiguri ca el este curat', '', 'vopsea-tabla-de-scris-intotdeauna-o-alegere-buna'),
(5, 'Vopsea tabla de scris – Intotdeauna o alegere buna!', 'https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-tabla-de-scris.png', 0, '2020-12-16', '', '', 'O vopsea tabla de scris nu numai ca poate aduce un plus locuintei tale, dar te poate scapa si de un stres, mai ales daca ai copii mici. Indiferent de locul in care alegi sa aplici vopseaua cu efect de tabla de scris, trebuie sa te asiguri ca el este curat', '', 'vopsea-tabla-de-scris-intotdeauna-o-alegere-buna'),
(6, 'Lavabila pentru interior – Ce culori alegem pentru reamenajarea locuintei?', 'https://pro-staff.ro/wp-content/uploads/2020/04/lavabila-pentru-interior.jpg', 0, '2020-04-15', '', '', 'Tendintele in materie de design interior se schimba de la an la an. Daca in trecut sfatul specialistilor era sa optam pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. insa, cand vine vorba de vopsitul peretilor cu vopse', '', 'lavabila-pentru-interior-ce-culori-alegem-pentru-reamenajarea-locuintei'),
(7, 'Efect decorativ de piatra sparta', 'https://pro-staff.ro/wp-content/uploads/2020/04/72102896_1633104420154737_4643384942951137280_o.png', 0, '2020-04-08', '', '', 'Tendintele in materie de design interior se schimba de la an la an. Daca in trecut sfatul specialistilor era sa optam pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. insa, cand vine vorba de vopsitul peretilor cu vopse', '', 'efect-decorativ-de-piatra-sparta'),
(8, 'TIXE-ORGANZA- Vopsea decorativa cu efect de matase', 'https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa-2.jpg', 0, '2019-10-08', '', '', 'Tendintele in materie de design interior se schimba de la an la an. Daca in trecut sfatul specialistilor era sa optam pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. insa, cand vine vorba de vopsitul peretilor cu vopse', '', 'TIXE-ORGANZA-vopsea-decorativa-cu-efect-de-matase'),
(9, 'Vopsea decorativa interior – pentru o casa cu personalitate!', 'https://pro-staff.ro/wp-content/uploads/2019/10/0.jpg', 0, '2019-10-14', '', '', 'Tendintele in materie de design interior se schimba de la an la an. Daca in trecut sfatul specialistilor era sa optam pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. insa, cand vine vorba de vopsitul peretilor cu vopse', '', 'vopsea-decorativa-interior-pentru-o-casa-cu-personalitate!'),
(10, 'Vopsea lavabila – solutia perfecta pentru reimprospatarea locuintei tale!', 'https://pro-staff.ro/wp-content/uploads/2019/10/pppppppppppppppp.png', 0, '2019-10-14', '', '', 'Tendintele in materie de design interior se schimba de la an la an. Daca in trecut sfatul specialistilor era sa optam pentru culori naturale, pastelate, anul acesta accentul se pune pe culori puternice. insa, cand vine vorba de vopsitul peretilor cu vopse', '', 'vopsea-lavabila-solutia-perfecta-pentru-reimprospatarea-locuintei-tale'),
(11, 'Cum se face corect amorsarea peretilor?', 'https://pro-staff.ro/wp-content/uploads/2019/10/Untitled.png', 0, '2019-04-23', '', '', 'Cum se face corect amorsarea peretilor? In cazul in care nu doresti sa angajezi un profesionist pentru lucrarile de finisare ale casei sau daca pur si simplu doresti sa cunosti detaliile tehnice, este foarte important sa stii pasii pe care trebuie sa ii u', '', 'cum-se-face-corect-amorsarea-peretilor'),
(12, 'Tutorial aplicare – RENOVATIX – TIXE', 'https://pro-staff.ro/wp-content/uploads/2019/04/RENOVATIX-by-TIXE.jpg', 0, '2019-04-23', '', '', 'Tutorial aplicare – RENOVATIX – TIXE VOPSEA EMAIL PENTRU CERAMICA Vopsea bicomponenta cu duritate si stralucire exceptionala de folosit pentru vopsirea ceramicii.tru: chiuvete, cazi sanitare inclusiv din fibra de sticla.   CARACTERISTICI PRINCIPALE Aderen', '', 'tutorial-aplicare-RENOVATIX-TIXE'),
(13, 'Tutorial aplicare – PERLATIX – TIXE', 'https://pro-staff.ro/wp-content/uploads/2018/06/perlatix2.jpg', 0, '2019-04-23', '', '', 'Tutorial aplicare – PERLATIX – TIXE VOPSEA DECORATIVA CU EFECT PERLAT Vopsea decorativa cu efect perlat usor de aplicat si ideala pentru a da viata culorilor deja prezente in incapere. imbogateste suprafata tratata cu o suprafata exceptionala cu efect per', '', 'tutorial-aplicare-PERLATIX-TIXE'),
(14, 'Tutorial aplicare – GLACIAL – TIXE', 'https://pro-staff.ro/wp-content/uploads/2019/04/glacial.jpg\r\n', 0, '2019-04-06', '', '', 'Tutorial aplicare – GLACIAL – TIXE VOPSEA EFECT METALE PRETIOASE Vopsea pentru finisaj decorativ pe baza de apa, formulata cu pulbere de bronz, pentru suprafete mari ce confera efectul metalic a mai multor metale pretioase. Ideal pentru medii prestigioase', '', 'tutorial-aplicare-GLACIAL-TIXE'),
(15, 'Tutorial aplicare – QIBLI – TIXE', 'https://pro-staff.ro/wp-content/uploads/2019/04/qibli-tixe.jpg', 0, '2019-04-06', '', '', 'Tutorial aplicare – QIBLI – TIXE Finisaj decorativ pe baza de apa formulat cu nisip si pulberi metalice pentru a reproduce efectul real metalizat nisipos inclusiv pe suprafete mari, conferind suportului aspectul celor mai pretioase metale. CARACTERISTICI ', '', 'tutorial-aplicare-QIBLI-TIXE'),
(16, 'Tutorial aplicare – WOOD TIX – TIXE', 'https://pro-staff.ro/wp-content/uploads/2019/03/Schermata-2018-06-01-alle-12.07.49.png', 0, '2019-03-30', '', '', 'Tutorial aplicare – WOOD TIX – TIXE', '', 'tutorial-aplicare-WOOD-TIX-TIXE'),
(17, 'Tutorial aplicare – DORATURA – TIXE', 'https://pro-staff.ro/wp-content/uploads/2018/06/doratura-interni-acqua-5.jpg', 0, '2018-10-27', '', '', 'Tutorial aplicare DORATURA – TIXE VOPSEA DECORATIVA EXTERIOR CU EFECT AURIU METALIC PE BAZA SOLVENT Vopsea pe baza de rasina sintetica, pulbere pigmentata cu bronz, in nuante diferite. Este gata de utilizat. Ideal pentru tratarea stalpurilor de lemn pentr', '', 'tutorial-aplicare-DORATURA-TIXE'),
(18, 'Pompa hidraulica Wagner HC 950', '', 0, '2018-08-12', '', '', 'Cu pompa hidraulica Wagner HC 950 si gletul Krea Kolori poti acoperi suprafete mari, minim 500 mp/zi. Gletul autonivelant se aplica intr-o singura mana, aplicat bine nu necesita slefuire, peste el se aplica o singura mana de lavabila. Wagner HC 950 este u', '', 'pompa-hidraulica-Wagner-HC-950'),
(19, 'Tutorial aplicare – GLITTERTIX – TIXE', 'https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie.jpg', 0, '2018-05-05', '', '', 'Sclipici de aur si argint in emulsie neutra speciala. Simplu de utilizat, acestea pot fi aplicate pe peretii deja zugraviti pentru a infrumuseta aspectul final. Glittertix de la Tixe are un avantaj imens: acesta poate fi adaugat direct la vopselele comune', '', 'tutorial-aplicare-GLITTERTIX-TIXE'),
(20, 'Aplicare vopsea epoxidica pentru parodoseli – TIKKURILA', 'https://pro-staff.ro/wp-content/uploads/2018/05/0e2afd13184053.5627157fcb57c.jpg', 0, '2018-01-25', '', '', 'Tikkurila – Produse disponibile la noi in magazin! – finisaje pentru pardoseli, – aplicatii industriale pentru lemn si metal', '', 'aplicare-vopsea-epoxidica-pentru-parodoseli-TIKKURILA'),
(21, 'Din luna aprilie magazinul nostru vinde produsele brandului Italia TIXE', 'https://pro-staff.ro/wp-content/uploads/2018/01/TIXE-PRODUSE_001-Copie.jpg', 0, '2018-01-25', '2018', '01', 'Avem placerea sa va anuntam ca incepand din luna Aprilie acestui an, magazinul nostru va importa produsele brandului Italia Tixe – produse destinate pentru decoratiuni si finisaje interioare. Catalog prezentare TIXE ', '', 'din-luna-aprilie-magazinul-nostru-vinde-produsele-brandului-Italia-TIXE');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `blog_category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category_name`, `slug`) VALUES
(1, 'Noutati', 'noutati'),
(2, 'Interior', 'interior'),
(3, 'Tutoriale', 'tutoriale'),
(4, 'Constructii si amenajari', 'constructii-si-amenajari'),
(5, 'Exterior', 'exterior');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `slug`) VALUES
(1, 'CP Italia', 'cp-italia'),
(2, 'Tikkurila', 'tikkurila'),
(3, 'V33', 'v33'),
(4, 'BioComb', 'biocomb'),
(5, 'Maston', 'maston'),
(6, 'Zenit', 'zenit'),
(7, 'Gieffe', 'gieffe'),
(8, 'Wagner', 'wagner'),
(9, 'Tixe', 'tixe'),
(10, 'Tecsit', 'tecsit'),
(11, 'Krea', 'krea');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` char(13) NOT NULL,
  `products` text NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `banner`, `featured`) VALUES
(37, 'Vopsea lavabila', 'vopsea-lavabila', 'https://pro-staff.ro/upload/categories/vopsea-lavabila-prostaff.jpg', 'https://pro-staff.ro/upload/categories/lavabila.jpg'),
(50, 'Pentru lemn', 'pentru-lemn', 'https://pro-staff.ro/upload/categories/vopsea-lemn-prostaff.jpg', NULL),
(63, 'Vopsea metal', 'vopsea-metal', 'https://pro-staff.ro/upload/categories/Vopsea-metal.jpg\r\n', NULL),
(83, 'Vopsea pardoseala', 'vopsea-pardoseala', 'https://pro-staff.ro/upload/categories/vopsea-pardoseala-prostaff.jpg', NULL),
(87, 'Vopsea decorativa', 'vopsea-decorativa', 'https://pro-staff.ro/upload/categories/vopsea-decorativa-prostaff.jpg', 'https://pro-staff.ro/upload/categories/vopsea-derativa-homepage.jpg'),
(160, 'Aparate si scule de vopsit', 'aparate-si-scule-de-vopsit', 'https://pro-staff.ro/upload/categories/Accesorii-profesionale-de-vospit.jpg', 'https://pro-staff.ro/upload/categories/accesorii.jpg'),
(166, 'Hidroizolatii', 'hidroizolatii', 'https://pro-staff.ro/upload/categories/vopsea-hidroizolatii.jpg', NULL),
(171, 'Camere copii', 'camere-copii', 'https://pro-staff.ro/upload/categories/vopsea-pentru-camera-copilului.jpg', NULL),
(204, 'Vopsea ceramica', 'vopsea-ceramica', 'https://pro-staff.ro/upload/categories/vopsea-ceramica-prostaff-bucuresti.jpg', NULL),
(205, 'Amorsa', 'amorsa', 'https://pro-staff.ro/upload/categories/amorsa-prostaff.jpg', NULL),
(206, 'Gleturi', 'gleturi', 'https://pro-staff.ro/upload/categories/gleturi.jpg', NULL),
(208, 'Produse eco', 'produse-eco', 'https://pro-staff.ro/upload/categories/vopsea-eco.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_blogs`
--

CREATE TABLE `categories_blogs` (
  `id` int(11) NOT NULL,
  `BlogCategorID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_blogs`
--

INSERT INTO `categories_blogs` (`id`, `BlogCategorID`, `BlogID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 1, 3),
(6, 1, 4),
(7, 3, 4),
(8, 1, 5),
(9, 2, 5),
(10, 3, 5),
(11, 2, 6),
(12, 1, 7),
(13, 2, 7),
(14, 4, 7),
(15, 1, 8),
(16, 2, 8),
(17, 4, 8),
(18, 5, 8),
(19, 3, 9),
(20, 3, 10),
(21, 3, 11),
(22, 3, 12),
(23, 3, 13),
(24, 3, 14),
(25, 3, 15),
(26, 3, 16),
(27, 3, 17),
(28, 1, 18),
(29, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `color_base`
--

CREATE TABLE `color_base` (
  `id` int(11) NOT NULL,
  `base_name` varchar(255) NOT NULL,
  `base_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_base`
--

INSERT INTO `color_base` (`id`, `base_name`, `base_image`) VALUES
(1, 'Base Argento', 'https://pro-staff.ro/upload/colors/baza argento'),
(2, 'Base Rame', 'https://pro-staff.ro/upload/colors/base rame.jpg'),
(3, 'Base Oro', 'https://pro-staff.ro/upload/colors/base oro.jpg'),
(4, 'Base Platino', 'https://pro-staff.ro/upload/colors/base platino.jpg'),
(5, 'Versione Madreperla Sabbiata', 'https://pro-staff.ro/upload/colors/Versione Madreperla Sabbiata'),
(6, 'Versione Madreperla Liscia', 'https://pro-staff.ro/upload/colors/Versione Madreperla Liscia'),
(7, 'Kedive Base Argento', 'https://pro-staff.ro/upload/colors/kedive base argento.jpg'),
(8, 'Kedive Base Oro', 'https://pro-staff.ro/upload/colors/kedive base oro.jpg'),
(9, 'Kedive Base Platinum', 'https://pro-staff.ro/upload/colors/kedive base platinum.jpg'),
(10, 'Kedive Base Rame', 'https://pro-staff.ro/upload/colors/kedive base rame.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `color_palettes`
--

CREATE TABLE `color_palettes` (
  `id` int(11) NOT NULL,
  `palette_name` varchar(255) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_palettes`
--

INSERT INTO `color_palettes` (`id`, `palette_name`, `added_at`) VALUES
(13, 'NCS', '2020-09-29 11:51:36'),
(12, 'RAL', '2020-09-29 11:36:38'),
(17, 'QIBLI', '2020-10-15 11:51:47'),
(18, 'Oystar', '2020-10-21 10:47:03'),
(19, 'Kedive', '2020-10-21 14:24:24'),
(20, 'Organza', '2020-10-22 13:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `percent` varchar(3) NOT NULL DEFAULT '10',
  `type` enum('newsletter','promotion','','') DEFAULT 'newsletter',
  `used` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `email`, `percent`, `type`, `used`) VALUES
(13, '01U11UDMC2QQ2VLNEAY21', 'alexandru.manta@hotmail.com', '10', 'newsletter', 0),
(14, '01QQA6SW82N21K8CCZI21', 'daniel.popa@terra-agency.ro', '10', 'newsletter', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `invoiceAddressId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `email`, `phone`, `invoiceAddressId`, `shippingAddressId`) VALUES
(170, 'Alex', 'manta', 'alexandru.manta@hotmail.com', '+40785696811', NULL, 121),
(171, 'daniel', 'popa', 'danielpopa701@gmail.com', '0761990600', NULL, 122),
(172, 'daniel', 'popa', 'danielpopa701@gmail.com', '0761990600', NULL, 123);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(5) NOT NULL,
  `order_uuid` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customerId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `shippingDetailId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_uuid`, `reference`, `discount`, `total`, `date`, `customerId`, `paymentId`, `shippingDetailId`) VALUES
(117, '600bfde93f6507.83226992', '600bfde93f6507.83226992', '0', '79.92', '2021-01-23 12:43:09', 170, 121, 117),
(118, '6019275058e454.87314319', '6019275058e454.87314319', '0', '520.24', '2021-02-02 12:19:26', 171, 122, 118),
(119, '60192751eeb162.74706127', '60192751eeb162.74706127', '0', '0', '2021-02-02 12:19:26', 172, 123, 119);

-- --------------------------------------------------------

--
-- Table structure for table `orders_invoice_address`
--

CREATE TABLE `orders_invoice_address` (
  `id` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `registerNumber` varchar(255) NOT NULL,
  `cui` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bankAccount` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int(11) NOT NULL,
  `transactionId` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_payment`
--

INSERT INTO `orders_payment` (`id`, `transactionId`, `amount`, `method`, `date`) VALUES
(121, '7518', '49.90', 'ramburs', '2021-01-23 12:40:11'),
(122, '3231', '470.00', 'card', '2021-02-02 12:18:25'),
(123, '6432', '470.00', 'card', '2021-02-02 12:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders_shipping_address`
--

CREATE TABLE `orders_shipping_address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_shipping_address`
--

INSERT INTO `orders_shipping_address` (`id`, `address`, `county`, `town`, `lat`, `lng`) VALUES
(121, 'Soseaua Pantelimon Nr. 352, Bl. 3, Sc. B, Etj. 9, Apt. 73', 'BUCURESTI', 'BUCURESTI', '44.436141', '26.10272'),
(122, 'Test test', 'BUCURESTI', 'BUCURESTI', '44.436141', '26.10272'),
(123, 'Test test', 'BUCURESTI', 'BUCURESTI', '44.436141', '26.10272');

-- --------------------------------------------------------

--
-- Table structure for table `orders_shipping_details`
--

CREATE TABLE `orders_shipping_details` (
  `id` int(11) NOT NULL,
  `tracking` varchar(255) NOT NULL,
  `carrier` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_shipping_details`
--

INSERT INTO `orders_shipping_details` (`id`, `tracking`, `carrier`, `weight`, `fee`, `date`) VALUES
(117, '0', 'DPD Courier', '1', '30.02', '2021-01-23 12:43:09'),
(118, '0', 'DPD Courier', '6', '50.24', '2021-02-02 12:19:26'),
(119, '0', 'DPD Courier', '6', '50.24', '2021-02-02 12:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `status_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `order_id`, `status_id`, `status_date`) VALUES
(52, '600bfde93f6507.83226992', 7, '2021-01-23 10:43:53'),
(53, '6019275058e454.87314319', 2, '2021-02-02 10:20:00'),
(54, '60192751eeb162.74706127', 2, '2021-02-02 10:20:02'),
(55, '3590', 4, '2021-02-03 08:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `palette_colors`
--

CREATE TABLE `palette_colors` (
  `id` int(11) NOT NULL,
  `ColorPaletteID` int(11) NOT NULL,
  `BaseColorID` int(11) NOT NULL DEFAULT 0,
  `color` varchar(255) NOT NULL,
  `color_image` varchar(255) DEFAULT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `palette_colors`
--

INSERT INTO `palette_colors` (`id`, `ColorPaletteID`, `BaseColorID`, `color`, `color_image`, `added_at`) VALUES
(2216, 17, 2, 'CS 03', 'https://pro-staff.ro/upload/colors/cs03.jpg', '2020-10-15 13:15:09'),
(2215, 17, 2, 'CS 02', 'https://pro-staff.ro/upload/colors/cs02.jpg', '2020-10-15 13:09:36'),
(2214, 17, 2, 'CS 01', 'https://pro-staff.ro/upload/colors/cs01.jpg', '2020-10-15 13:02:59'),
(2212, 17, 1, 'SS 30', 'https://pro-staff.ro/upload/colors/ss30.jpg', '2020-10-15 12:44:01'),
(2210, 17, 1, 'SS 28', 'https://pro-staff.ro/upload/colors/ss28.jpg', '2020-10-15 12:36:29'),
(2207, 17, 1, 'SS 26', 'https://pro-staff.ro/upload/colors/ss26.jpg', '2020-10-15 12:26:50'),
(20, 12, 0, 'RAL 1001', '#D1BC8A', '2020-09-29 14:49:51'),
(21, 12, 0, 'RAL 1002', '#D2B773', '2020-09-29 14:49:51'),
(22, 12, 0, 'RAL 1003', '#F7BA0B', '2020-09-29 14:49:51'),
(23, 12, 0, 'RAL 1004', '#E2B007', '2020-09-29 14:49:51'),
(24, 12, 0, 'RAL 1005', '#C89F04', '2020-09-29 14:49:51'),
(25, 12, 0, 'RAL 1006', '#E1A100', '2020-09-29 14:49:51'),
(26, 12, 0, 'RAL 1007', '#E79C00', '2020-09-29 14:49:51'),
(27, 12, 0, 'RAL 1011', '#AF8A54', '2020-09-29 14:49:51'),
(28, 12, 0, 'RAL 1012', '#D9C022', '2020-09-29 14:49:51'),
(29, 12, 0, 'RAL 1013', '#E9E5CE', '2020-09-29 14:49:51'),
(30, 12, 0, 'RAL 1014', '#DFCEA1', '2020-09-29 14:49:51'),
(31, 12, 0, 'RAL 1015', '#EADEBD', '2020-09-29 14:49:51'),
(32, 12, 0, 'RAL 1016', '#EAF044', '2020-09-29 14:49:51'),
(33, 12, 0, 'RAL 1017', '#F4B752', '2020-09-29 14:49:51'),
(34, 12, 0, 'RAL 1018', '#F3E03B', '2020-09-29 14:49:51'),
(35, 12, 0, 'RAL 1019', '#A4957D', '2020-09-29 14:49:51'),
(36, 12, 0, 'RAL 1020', '#9A9464', '2020-09-29 14:49:51'),
(37, 12, 0, 'RAL 1021', '#EEC900', '2020-09-29 14:49:51'),
(38, 12, 0, 'RAL 1023', '#F0CA00', '2020-09-29 14:49:51'),
(39, 12, 0, 'RAL 1024', '#B89C50', '2020-09-29 14:49:51'),
(40, 12, 0, 'RAL 1026', '#F5FF00', '2020-09-29 14:49:51'),
(41, 12, 0, 'RAL 1027', '#A38C15', '2020-09-29 14:49:51'),
(42, 12, 0, 'RAL 1028', '#FFAB00', '2020-09-29 14:49:51'),
(43, 12, 0, 'RAL 1032', '#DDB20F', '2020-09-29 14:49:51'),
(44, 12, 0, 'RAL 1033', '#FAAB21', '2020-09-29 14:49:51'),
(45, 12, 0, 'RAL 1034', '#EDAB56', '2020-09-29 14:49:51'),
(46, 12, 0, 'RAL 1035', '#A29985', '2020-09-29 14:49:51'),
(47, 12, 0, 'RAL 1036', '#927549', '2020-09-29 14:49:51'),
(48, 12, 0, 'RAL 1037', '#EEA205', '2020-09-29 14:49:51'),
(49, 12, 0, 'RAL 2000', '#DD7907', '2020-09-29 14:49:51'),
(50, 12, 0, 'RAL 2001', '#BE4E20', '2020-09-29 14:49:51'),
(51, 12, 0, 'RAL 2002', '#C63927', '2020-09-29 14:49:51'),
(52, 12, 0, 'RAL 2003', '#FA842B', '2020-09-29 14:49:51'),
(53, 12, 0, 'RAL 2004', '#E75B12', '2020-09-29 14:49:51'),
(54, 12, 0, 'RAL 2005', '#FF2300', '2020-09-29 14:49:51'),
(55, 12, 0, 'RAL 2007', '#FFA421', '2020-09-29 14:49:51'),
(56, 12, 0, 'RAL 2008', '#F3752C', '2020-09-29 14:49:51'),
(57, 12, 0, 'RAL 2009', '#E15501', '2020-09-29 14:49:51'),
(58, 12, 0, 'RAL 2010', '#D4652F', '2020-09-29 14:49:51'),
(59, 12, 0, 'RAL 2011', '#EC7C25', '2020-09-29 14:49:51'),
(60, 12, 0, 'RAL 2012', '#DB6A50', '2020-09-29 14:49:51'),
(61, 12, 0, 'RAL 2013', '#954527', '2020-09-29 14:49:51'),
(62, 12, 0, 'RAL 3000', '#AB2524', '2020-09-29 14:49:51'),
(63, 12, 0, 'RAL 3001', '#A02128', '2020-09-29 14:49:51'),
(64, 12, 0, 'RAL 3002', '#A1232B', '2020-09-29 14:49:51'),
(65, 12, 0, 'RAL 3003', '#8D1D2C', '2020-09-29 14:49:51'),
(66, 12, 0, 'RAL 3004', '#701F29', '2020-09-29 14:49:51'),
(67, 12, 0, 'RAL 3005', '#5E2028', '2020-09-29 14:49:51'),
(68, 12, 0, 'RAL 3007', '#402225', '2020-09-29 14:49:51'),
(69, 12, 0, 'RAL 3009', '#703731', '2020-09-29 14:49:51'),
(70, 12, 0, 'RAL 3011', '#7E292C', '2020-09-29 14:49:51'),
(71, 12, 0, 'RAL 3012', '#CB8D73', '2020-09-29 14:49:51'),
(72, 12, 0, 'RAL 3013', '#9C322E', '2020-09-29 14:49:51'),
(73, 12, 0, 'RAL 3014', '#D47479', '2020-09-29 14:49:51'),
(74, 12, 0, 'RAL 3015', '#E1A6AD', '2020-09-29 14:49:51'),
(75, 12, 0, 'RAL 3016', '#AC4034', '2020-09-29 14:49:51'),
(76, 12, 0, 'RAL 3017', '#D3545F', '2020-09-29 14:49:51'),
(77, 12, 0, 'RAL 3018', '#D14152', '2020-09-29 14:49:51'),
(78, 12, 0, 'RAL 3020', '#C1121C', '2020-09-29 14:49:51'),
(79, 12, 0, 'RAL 3022', '#D56D56', '2020-09-29 14:49:51'),
(80, 12, 0, 'RAL 3024', '#F70000', '2020-09-29 14:49:51'),
(81, 12, 0, 'RAL 3026', '#FF0000', '2020-09-29 14:49:51'),
(82, 12, 0, 'RAL 3027', '#B42041', '2020-09-29 14:49:51'),
(83, 12, 0, 'RAL 3028', '#E72512', '2020-09-29 14:49:51'),
(84, 12, 0, 'RAL 3031', '#AC323B', '2020-09-29 14:49:51'),
(85, 12, 0, 'RAL 3032', '#711521', '2020-09-29 14:49:51'),
(86, 12, 0, 'RAL 3033', '#B24C43', '2020-09-29 14:49:51'),
(87, 12, 0, 'RAL 4001', '#8A5A83', '2020-09-29 14:49:51'),
(88, 12, 0, 'RAL 4002', '#933D50', '2020-09-29 14:49:51'),
(89, 12, 0, 'RAL 4003', '#D15B8F', '2020-09-29 14:49:51'),
(90, 12, 0, 'RAL 4004', '#691639', '2020-09-29 14:49:51'),
(91, 12, 0, 'RAL 4005', '#83639D', '2020-09-29 14:49:51'),
(92, 12, 0, 'RAL 4006', '#992572', '2020-09-29 14:49:51'),
(93, 12, 0, 'RAL 4007', '#4A203B', '2020-09-29 14:49:51'),
(94, 12, 0, 'RAL 4008', '#904684', '2020-09-29 14:49:51'),
(95, 12, 0, 'RAL 4009', '#A38995', '2020-09-29 14:49:51'),
(96, 12, 0, 'RAL 4010', '#C63678', '2020-09-29 14:49:51'),
(97, 12, 0, 'RAL 4011', '#8773A1', '2020-09-29 14:49:51'),
(98, 12, 0, 'RAL 4012', '#6B6880', '2020-09-29 14:49:51'),
(99, 12, 0, 'RAL 5000', '#384C70', '2020-09-29 14:49:51'),
(100, 12, 0, 'RAL 5001', '#1F4764', '2020-09-29 14:49:51'),
(101, 12, 0, 'RAL 5002', '#2B2C7C', '2020-09-29 14:49:51'),
(102, 12, 0, 'RAL 5003', '#2A3756', '2020-09-29 14:49:51'),
(103, 12, 0, 'RAL 5004', '#1D1F2A', '2020-09-29 14:49:51'),
(104, 12, 0, 'RAL 5005', '#154889', '2020-09-29 14:49:51'),
(105, 12, 0, 'RAL 5007', '#41678D', '2020-09-29 14:49:51'),
(106, 12, 0, 'RAL 5008', '#313C48', '2020-09-29 14:49:51'),
(107, 12, 0, 'RAL 5009', '#2E5978', '2020-09-29 14:49:51'),
(108, 12, 0, 'RAL 5010', '#13447C', '2020-09-29 14:49:51'),
(109, 12, 0, 'RAL 5011', '#232C3F', '2020-09-29 14:49:51'),
(110, 12, 0, 'RAL 5012', '#3481B8', '2020-09-29 14:49:51'),
(111, 12, 0, 'RAL 5013', '#232D53', '2020-09-29 14:49:51'),
(112, 12, 0, 'RAL 5014', '#6C7C98', '2020-09-29 14:49:51'),
(113, 12, 0, 'RAL 5015', '#2874B2', '2020-09-29 14:49:51'),
(114, 12, 0, 'RAL 5017', '#0E518D', '2020-09-29 14:49:51'),
(115, 12, 0, 'RAL 5018', '#21888F', '2020-09-29 14:49:51'),
(116, 12, 0, 'RAL 5019', '#1A5784', '2020-09-29 14:49:51'),
(117, 12, 0, 'RAL 5020', '#0B4151', '2020-09-29 14:49:51'),
(118, 12, 0, 'RAL 5021', '#07737A', '2020-09-29 14:49:51'),
(119, 12, 0, 'RAL 5022', '#2F2A5A', '2020-09-29 14:49:51'),
(120, 12, 0, 'RAL 5023', '#4D668E', '2020-09-29 14:49:51'),
(121, 12, 0, 'RAL 5024', '#6A93B0', '2020-09-29 14:49:51'),
(122, 12, 0, 'RAL 5025', '#296478', '2020-09-29 14:49:51'),
(123, 12, 0, 'RAL 5026', '#102C54', '2020-09-29 14:49:51'),
(124, 12, 0, 'RAL 6000', '#327662', '2020-09-29 14:49:51'),
(125, 12, 0, 'RAL 6001', '#28713E', '2020-09-29 14:49:51'),
(126, 12, 0, 'RAL 6002', '#276235', '2020-09-29 14:49:51'),
(127, 12, 0, 'RAL 6003', '#4B573E', '2020-09-29 14:49:51'),
(128, 12, 0, 'RAL 6004', '#0E4243', '2020-09-29 14:49:51'),
(129, 12, 0, 'RAL 6005', '#0F4336', '2020-09-29 14:49:51'),
(130, 12, 0, 'RAL 6006', '#40433B', '2020-09-29 14:49:51'),
(131, 12, 0, 'RAL 6007', '#283424', '2020-09-29 14:49:51'),
(132, 12, 0, 'RAL 6008', '#35382E', '2020-09-29 14:49:51'),
(133, 12, 0, 'RAL 6009', '#26392F', '2020-09-29 14:49:51'),
(134, 12, 0, 'RAL 6010', '#3E753B', '2020-09-29 14:49:51'),
(135, 12, 0, 'RAL 6011', '#68825B', '2020-09-29 14:49:51'),
(136, 12, 0, 'RAL 6012', '#31403D', '2020-09-29 14:49:51'),
(137, 12, 0, 'RAL 6013', '#797C5A', '2020-09-29 14:49:51'),
(138, 12, 0, 'RAL 6014', '#444337', '2020-09-29 14:49:51'),
(139, 12, 0, 'RAL 6015', '#3D403A', '2020-09-29 14:49:51'),
(140, 12, 0, 'RAL 6016', '#026A52', '2020-09-29 14:49:51'),
(141, 12, 0, 'RAL 6017', '#468641', '2020-09-29 14:49:51'),
(142, 12, 0, 'RAL 6018', '#48A43F', '2020-09-29 14:49:51'),
(143, 12, 0, 'RAL 6019', '#B7D9B1', '2020-09-29 14:49:51'),
(144, 12, 0, 'RAL 6020', '#354733', '2020-09-29 14:49:51'),
(145, 12, 0, 'RAL 6021', '#86A47C', '2020-09-29 14:49:51'),
(146, 12, 0, 'RAL 6022', '#3E3C32', '2020-09-29 14:49:51'),
(147, 12, 0, 'RAL 6024', '#008754', '2020-09-29 14:49:51'),
(148, 12, 0, 'RAL 6025', '#53753C', '2020-09-29 14:49:51'),
(149, 12, 0, 'RAL 6026', '#005D52', '2020-09-29 14:49:51'),
(150, 12, 0, 'RAL 6027', '#81C0BB', '2020-09-29 14:49:51'),
(151, 12, 0, 'RAL 6028', '#2D5546', '2020-09-29 14:49:51'),
(152, 12, 0, 'RAL 6029', '#007243', '2020-09-29 14:49:51'),
(153, 12, 0, 'RAL 6032', '#0F8558', '2020-09-29 14:49:51'),
(154, 12, 0, 'RAL 6033', '#478A84', '2020-09-29 14:49:51'),
(155, 12, 0, 'RAL 6034', '#7FB0B2', '2020-09-29 14:49:51'),
(156, 12, 0, 'RAL 6035', '#1B542C', '2020-09-29 14:49:51'),
(157, 12, 0, 'RAL 6036', '#005D4C', '2020-09-29 14:49:51'),
(158, 12, 0, 'RAL 6037', '#25E712', '2020-09-29 14:49:51'),
(159, 12, 0, 'RAL 6038', '#00F700', '2020-09-29 14:49:51'),
(160, 12, 0, 'RAL 7000', '#7E8B92', '2020-09-29 14:49:51'),
(161, 12, 0, 'RAL 7001', '#8F999F', '2020-09-29 14:49:51'),
(162, 12, 0, 'RAL 7002', '#817F68', '2020-09-29 14:49:51'),
(163, 12, 0, 'RAL 7003', '#7A7B6D', '2020-09-29 14:49:51'),
(164, 12, 0, 'RAL 7004', '#9EA0A1', '2020-09-29 14:49:51'),
(165, 12, 0, 'RAL 7005', '#6B716F', '2020-09-29 14:49:51'),
(166, 12, 0, 'RAL 7006', '#756F61', '2020-09-29 14:49:51'),
(167, 12, 0, 'RAL 7008', '#746643', '2020-09-29 14:49:51'),
(168, 12, 0, 'RAL 7009', '#5B6259', '2020-09-29 14:49:51'),
(169, 12, 0, 'RAL 7010', '#575D57', '2020-09-29 14:49:51'),
(170, 12, 0, 'RAL 7011', '#555D61', '2020-09-29 14:49:51'),
(171, 12, 0, 'RAL 7012', '#596163', '2020-09-29 14:49:51'),
(172, 12, 0, 'RAL 7013', '#555548', '2020-09-29 14:49:51'),
(173, 12, 0, 'RAL 7015', '#51565C', '2020-09-29 14:49:51'),
(174, 12, 0, 'RAL 7016', '#373F43', '2020-09-29 14:49:51'),
(175, 12, 0, 'RAL 7021', '#2E3234', '2020-09-29 14:49:51'),
(176, 12, 0, 'RAL 7022', '#4B4D46', '2020-09-29 14:49:51'),
(177, 12, 0, 'RAL 7023', '#818479', '2020-09-29 14:49:51'),
(178, 12, 0, 'RAL 7024', '#474A50', '2020-09-29 14:49:51'),
(179, 12, 0, 'RAL 7026', '#374447', '2020-09-29 14:49:51'),
(180, 12, 0, 'RAL 7030', '#939388', '2020-09-29 14:49:51'),
(181, 12, 0, 'RAL 7031', '#5D6970', '2020-09-29 14:49:51'),
(182, 12, 0, 'RAL 7032', '#B9B9A8', '2020-09-29 14:49:51'),
(183, 12, 0, 'RAL 7033', '#818979', '2020-09-29 14:49:51'),
(184, 12, 0, 'RAL 7034', '#939176', '2020-09-29 14:49:51'),
(185, 12, 0, 'RAL 7035', '#CBD0CC', '2020-09-29 14:49:51'),
(186, 12, 0, 'RAL 7036', '#9A9697', '2020-09-29 14:49:51'),
(187, 12, 0, 'RAL 7037', '#7C7F7E', '2020-09-29 14:49:51'),
(188, 12, 0, 'RAL 7038', '#B4B8B0', '2020-09-29 14:49:51'),
(189, 12, 0, 'RAL 7039', '#6B695F', '2020-09-29 14:49:51'),
(190, 12, 0, 'RAL 7040', '#9DA3A6', '2020-09-29 14:49:51'),
(191, 12, 0, 'RAL 7042', '#8F9695', '2020-09-29 14:49:51'),
(192, 12, 0, 'RAL 7043', '#4E5451', '2020-09-29 14:49:51'),
(193, 12, 0, 'RAL 7044', '#BDBDB2', '2020-09-29 14:49:51'),
(194, 12, 0, 'RAL 7045', '#91969A', '2020-09-29 14:49:51'),
(195, 12, 0, 'RAL 7046', '#82898E', '2020-09-29 14:49:51'),
(196, 12, 0, 'RAL 7047', '#CFD0CF', '2020-09-29 14:49:51'),
(197, 12, 0, 'RAL 7048', '#888175', '2020-09-29 14:49:51'),
(198, 12, 0, 'RAL 8000', '#887142', '2020-09-29 14:49:51'),
(199, 12, 0, 'RAL 8001', '#9C6B30', '2020-09-29 14:49:51'),
(200, 12, 0, 'RAL 8002', '#7B5141', '2020-09-29 14:49:51'),
(201, 12, 0, 'RAL 8003', '#80542F', '2020-09-29 14:49:51'),
(202, 12, 0, 'RAL 8004', '#8F4E35', '2020-09-29 14:49:51'),
(203, 12, 0, 'RAL 8007', '#6F4A2F', '2020-09-29 14:49:51'),
(204, 12, 0, 'RAL 8008', '#6F4F28', '2020-09-29 14:49:51'),
(205, 12, 0, 'RAL 8011', '#5A3A29', '2020-09-29 14:49:51'),
(206, 12, 0, 'RAL 8012', '#673831', '2020-09-29 14:49:51'),
(207, 12, 0, 'RAL 8014', '#49392D', '2020-09-29 14:49:51'),
(208, 12, 0, 'RAL 8015', '#633A34', '2020-09-29 14:49:51'),
(209, 12, 0, 'RAL 8016', '#4C2F26', '2020-09-29 14:49:51'),
(210, 12, 0, 'RAL 8017', '#44322D', '2020-09-29 14:49:51'),
(211, 12, 0, 'RAL 8019', '#3F3A3A', '2020-09-29 14:49:51'),
(212, 12, 0, 'RAL 8022', '#211F20', '2020-09-29 14:49:51'),
(213, 12, 0, 'RAL 8023', '#A65E2F', '2020-09-29 14:49:51'),
(214, 12, 0, 'RAL 8024', '#79553C', '2020-09-29 14:49:51'),
(215, 12, 0, 'RAL 8025', '#755C49', '2020-09-29 14:49:51'),
(216, 12, 0, 'RAL 8028', '#4E3B31', '2020-09-29 14:49:51'),
(217, 12, 0, 'RAL 8029', '#763C28', '2020-09-29 14:49:51'),
(218, 12, 0, 'RAL 9001', '#FDF4E3', '2020-09-29 14:49:51'),
(219, 12, 0, 'RAL 9002', '#E7EBDA', '2020-09-29 14:49:51'),
(220, 12, 0, 'RAL 9003', '#F4F4F4', '2020-09-29 14:49:51'),
(221, 12, 0, 'RAL 9004', '#282828', '2020-09-29 14:49:51'),
(222, 12, 0, 'RAL 9005', '#0A0A0A', '2020-09-29 14:49:51'),
(223, 12, 0, 'RAL 9006', '#A5A5A5', '2020-09-29 14:49:51'),
(224, 12, 0, 'RAL 9007', '#8F8F8F', '2020-09-29 14:49:51'),
(225, 12, 0, 'RAL 9010', '#FFFFFF', '2020-09-29 14:49:51'),
(226, 12, 0, 'RAL 9011', '#1C1C1C', '2020-09-29 14:49:51'),
(227, 12, 0, 'RAL 9016', '#F6F6F6', '2020-09-29 14:49:51'),
(228, 12, 0, 'RAL 9017', '#1E1E1E', '2020-09-29 14:49:51'),
(229, 12, 0, 'RAL 9018', '#D7D7D7', '2020-09-29 14:49:51'),
(230, 12, 0, 'RAL 9022', '#9C9C9C', '2020-09-29 14:49:51'),
(231, 12, 0, 'RAL 9023', '#828282', '2020-09-29 14:49:51'),
(232, 13, 0, '0500-N', '#f2f2f2', '2020-09-29 15:09:33'),
(233, 13, 0, '0502-B', '#f5fbff', '2020-09-29 15:09:33'),
(234, 13, 0, '0502-B50G', '#f7fffe', '2020-09-29 15:09:33'),
(235, 13, 0, '0502-G', '#f4fff8', '2020-09-29 15:09:33'),
(236, 13, 0, '0502-G50Y', '#fdfff6', '2020-09-29 15:09:33'),
(237, 13, 0, '0502-R', '#fff1f2', '2020-09-29 15:09:33'),
(238, 13, 0, '0502-R50B', '#fef6fd', '2020-09-29 15:09:33'),
(239, 13, 0, '0502-Y', '#fffdf6', '2020-09-29 15:09:33'),
(240, 13, 0, '0502-Y50R', '#fef8f4', '2020-09-29 15:09:33'),
(241, 13, 0, '0505-B', '#e8f6fe', '2020-09-29 15:09:33'),
(242, 13, 0, '0505-B20G', '#eafbff', '2020-09-29 15:09:33'),
(243, 13, 0, '0505-B50G', '#ecfffe', '2020-09-29 15:09:33'),
(244, 13, 0, '0505-B80G', '#eafffa', '2020-09-29 15:09:33'),
(245, 13, 0, '0505-G', '#e4ffef', '2020-09-29 15:09:33'),
(246, 13, 0, '0505-G10Y', '#ecffec', '2020-09-29 15:09:33'),
(247, 13, 0, '0505-G20Y', '#f1ffeb', '2020-09-29 15:09:33'),
(248, 13, 0, '0505-G30Y', '#f4ffea', '2020-09-29 15:09:33'),
(249, 13, 0, '0505-G40Y', '#f7ffe9', '2020-09-29 15:09:33'),
(250, 13, 0, '0505-G50Y', '#faffea', '2020-09-29 15:09:33'),
(251, 13, 0, '0505-G60Y', '#fcffeb', '2020-09-29 15:09:33'),
(252, 13, 0, '0505-G70Y', '#feffeb', '2020-09-29 15:09:33'),
(253, 13, 0, '0505-G80Y', '#fffeec', '2020-09-29 15:09:33'),
(254, 13, 0, '0505-G90Y', '#fefdeb', '2020-09-29 15:09:33'),
(255, 13, 0, '0505-R', '#ffdee0', '2020-09-29 15:09:33'),
(256, 13, 0, '0505-R10B', '#ffdfe3', '2020-09-29 15:09:33'),
(257, 13, 0, '0505-R20B', '#ffe1e7', '2020-09-29 15:09:33'),
(258, 13, 0, '0505-R30B', '#ffe3ec', '2020-09-29 15:09:33'),
(259, 13, 0, '0505-R40B', '#fee6f2', '2020-09-29 15:09:33'),
(260, 13, 0, '0505-R50B', '#ffeafb', '2020-09-29 15:09:33'),
(261, 13, 0, '0505-R60B', '#f8e9fe', '2020-09-29 15:09:33'),
(262, 13, 0, '0505-R70B', '#f0e8ff', '2020-09-29 15:09:33'),
(263, 13, 0, '0505-R80B', '#e1e6ff', '2020-09-29 15:09:33'),
(264, 13, 0, '0505-R90B', '#e3ecfe', '2020-09-29 15:09:33'),
(265, 13, 0, '0505-Y', '#fffbea', '2020-09-29 15:09:33'),
(266, 13, 0, '0505-Y10R', '#fffaea', '2020-09-29 15:09:33'),
(267, 13, 0, '0505-Y20R', '#fff7e9', '2020-09-29 15:09:33'),
(268, 13, 0, '0505-Y30R', '#fff5e8', '2020-09-29 15:09:33'),
(269, 13, 0, '0505-Y40R', '#fff3e6', '2020-09-29 15:09:33'),
(270, 13, 0, '0505-Y50R', '#fff0e5', '2020-09-29 15:09:33'),
(271, 13, 0, '0505-Y60R', '#feede4', '2020-09-29 15:09:33'),
(272, 13, 0, '0505-Y70R', '#ffe9e2', '2020-09-29 15:09:33'),
(273, 13, 0, '0505-Y80R', '#fee5e0', '2020-09-29 15:09:33'),
(274, 13, 0, '0505-Y90R', '#ffe2e0', '2020-09-29 15:09:33'),
(275, 13, 0, '0507-B', '#dff3ff', '2020-09-29 15:09:33'),
(276, 13, 0, '0507-B20G', '#e3faff', '2020-09-29 15:09:33'),
(277, 13, 0, '0507-B80G', '#e2fff8', '2020-09-29 15:09:33'),
(278, 13, 0, '0507-G', '#dbffe9', '2020-09-29 15:09:33'),
(279, 13, 0, '0507-G40Y', '#f4ffe0', '2020-09-29 15:09:33'),
(280, 13, 0, '0507-G80Y', '#fffee4', '2020-09-29 15:09:33'),
(281, 13, 0, '0507-R', '#ffd2d5', '2020-09-29 15:09:33'),
(282, 13, 0, '0507-R20B', '#ffd6de', '2020-09-29 15:09:33'),
(283, 13, 0, '0507-R40B', '#ffddee', '2020-09-29 15:09:33'),
(284, 13, 0, '0507-R60B', '#f5e0ff', '2020-09-29 15:09:33'),
(285, 13, 0, '0507-R80B', '#d6ddff', '2020-09-29 15:09:33'),
(286, 13, 0, '0507-Y', '#fffae3', '2020-09-29 15:09:33'),
(287, 13, 0, '0507-Y20R', '#fff5e0', '2020-09-29 15:09:33'),
(288, 13, 0, '0507-Y40R', '#ffeedd', '2020-09-29 15:09:33'),
(289, 13, 0, '0507-Y60R', '#ffe6da', '2020-09-29 15:09:33'),
(290, 13, 0, '0507-Y80R', '#fedcd5', '2020-09-29 15:09:33'),
(291, 13, 0, '0510-B', '#d3eeff', '2020-09-29 15:09:33'),
(292, 13, 0, '0510-B10G', '#d6f4ff', '2020-09-29 15:09:33'),
(293, 13, 0, '0510-B30G', '#d9fbff', '2020-09-29 15:09:33'),
(294, 13, 0, '0510-B50G', '#dafffd', '2020-09-29 15:09:33'),
(295, 13, 0, '0510-B70G', '#d8fef9', '2020-09-29 15:09:33'),
(296, 13, 0, '0510-B90G', '#d1ffea', '2020-09-29 15:09:33'),
(297, 13, 0, '0510-G', '#cdffe0', '2020-09-29 15:09:33'),
(298, 13, 0, '0510-G10Y', '#dbffdc', '2020-09-29 15:09:33'),
(299, 13, 0, '0510-G20Y', '#e4ffd9', '2020-09-29 15:09:33'),
(300, 13, 0, '0510-G30Y', '#ebffd6', '2020-09-29 15:09:33'),
(301, 13, 0, '0510-G40Y', '#f0ffd4', '2020-09-29 15:09:33'),
(302, 13, 0, '0510-G50Y', '#f5ffd6', '2020-09-29 15:09:33'),
(303, 13, 0, '0510-G60Y', '#f9ffd8', '2020-09-29 15:09:33'),
(304, 13, 0, '0510-G70Y', '#fdffd9', '2020-09-29 15:09:33'),
(305, 13, 0, '0510-G80Y', '#fffdda', '2020-09-29 15:09:33'),
(306, 13, 0, '0510-G90Y', '#fefbd8', '2020-09-29 15:09:33'),
(307, 13, 0, '0510-R', '#ffc2c6', '2020-09-29 15:09:33'),
(308, 13, 0, '0510-R10B', '#ffc4cb', '2020-09-29 15:09:33'),
(309, 13, 0, '0510-R20B', '#ffc7d2', '2020-09-29 15:09:33'),
(310, 13, 0, '0510-R30B', '#ffcbdb', '2020-09-29 15:09:33'),
(311, 13, 0, '0510-R40B', '#ffd0e7', '2020-09-29 15:09:33'),
(312, 13, 0, '0510-R50B', '#ffd7f7', '2020-09-29 15:09:33'),
(313, 13, 0, '0510-R60B', '#f1d4ff', '2020-09-29 15:09:33'),
(314, 13, 0, '0510-R70B', '#e3d4ff', '2020-09-29 15:09:33'),
(315, 13, 0, '0510-R80B', '#c6d1ff', '2020-09-29 15:09:33'),
(316, 13, 0, '0510-R90B', '#cbdcff', '2020-09-29 15:09:33'),
(317, 13, 0, '0510-Y', '#fff9d8', '2020-09-29 15:09:33'),
(318, 13, 0, '0510-Y10R', '#fff5d6', '2020-09-29 15:09:33'),
(319, 13, 0, '0510-Y20R', '#fff1d4', '2020-09-29 15:09:33'),
(320, 13, 0, '0510-Y30R', '#ffedd2', '2020-09-29 15:09:33'),
(321, 13, 0, '0510-Y40R', '#ffe8d0', '2020-09-29 15:09:33'),
(322, 13, 0, '0510-Y50R', '#ffe3ce', '2020-09-29 15:09:33'),
(323, 13, 0, '0510-Y60R', '#ffddcc', '2020-09-29 15:09:33'),
(324, 13, 0, '0510-Y70R', '#fed7c9', '2020-09-29 15:09:33'),
(325, 13, 0, '0510-Y80R', '#ffd0c6', '2020-09-29 15:09:33'),
(326, 13, 0, '0510-Y90R', '#ffc9c5', '2020-09-29 15:09:33'),
(327, 13, 0, '0515-B', '#c0e7ff', '2020-09-29 15:09:33'),
(328, 13, 0, '0515-B20G', '#c5f5fe', '2020-09-29 15:09:33'),
(329, 13, 0, '0515-B50G', '#c8fffd', '2020-09-29 15:09:33'),
(330, 13, 0, '0515-B80G', '#c4fff1', '2020-09-29 15:09:33'),
(331, 13, 0, '0515-G', '#b8ffd4', '2020-09-29 15:09:33'),
(332, 13, 0, '0515-G20Y', '#d8ffc8', '2020-09-29 15:09:33'),
(333, 13, 0, '0515-G40Y', '#eaffc1', '2020-09-29 15:09:33'),
(334, 13, 0, '0515-G60Y', '#f7fec6', '2020-09-29 15:09:33'),
(335, 13, 0, '0515-G80Y', '#fffdc8', '2020-09-29 15:09:33'),
(336, 13, 0, '0515-G90Y', '#fff9c7', '2020-09-29 15:09:33'),
(337, 13, 0, '0515-R', '#feaaaf', '2020-09-29 15:09:33'),
(338, 13, 0, '0515-R10B', '#feadb7', '2020-09-29 15:09:33'),
(339, 13, 0, '0515-R20B', '#feb1c0', '2020-09-29 15:09:33'),
(340, 13, 0, '0515-R40B', '#ffbcdd', '2020-09-29 15:09:33'),
(341, 13, 0, '0515-R60B', '#ebc1ff', '2020-09-29 15:09:33'),
(342, 13, 0, '0515-R80B', '#b0befe', '2020-09-29 15:09:33'),
(343, 13, 0, '0515-R90B', '#b6ceff', '2020-09-29 15:09:33'),
(344, 13, 0, '0515-Y', '#fff6c6', '2020-09-29 15:09:33'),
(345, 13, 0, '0515-Y10R', '#fff1c4', '2020-09-29 15:09:33'),
(346, 13, 0, '0515-Y20R', '#ffebc1', '2020-09-29 15:09:33'),
(347, 13, 0, '0515-Y30R', '#ffe5bf', '2020-09-29 15:09:33'),
(348, 13, 0, '0515-Y40R', '#ffdebc', '2020-09-29 15:09:33'),
(349, 13, 0, '0515-Y50R', '#ffd7b9', '2020-09-29 15:09:33'),
(350, 13, 0, '0515-Y60R', '#ffcfb6', '2020-09-29 15:09:33'),
(351, 13, 0, '0515-Y70R', '#ffc6b3', '2020-09-29 15:09:33'),
(352, 13, 0, '0515-Y80R', '#ffbdaf', '2020-09-29 15:09:33'),
(353, 13, 0, '0515-Y90R', '#ffb4ae', '2020-09-29 15:09:33'),
(354, 13, 0, '0520-B', '#aee0ff', '2020-09-29 15:09:33'),
(355, 13, 0, '0520-B10G', '#b2ebff', '2020-09-29 15:09:33'),
(356, 13, 0, '0520-B30G', '#b6f8ff', '2020-09-29 15:09:33'),
(357, 13, 0, '0520-B40G', '#b8fcff', '2020-09-29 15:09:33'),
(358, 13, 0, '0520-B50G', '#b8fffc', '2020-09-29 15:09:33'),
(359, 13, 0, '0520-B60G', '#b7fff8', '2020-09-29 15:09:33'),
(360, 13, 0, '0520-B70G', '#b5fff4', '2020-09-29 15:09:33'),
(361, 13, 0, '0520-B90G', '#abffd9', '2020-09-29 15:09:33'),
(362, 13, 0, '0520-G', '#a5ffc8', '2020-09-29 15:09:33'),
(363, 13, 0, '0520-G10Y', '#bdffc0', '2020-09-29 15:09:33'),
(364, 13, 0, '0520-G20Y', '#cdffb9', '2020-09-29 15:09:33'),
(365, 13, 0, '0520-G30Y', '#daffb4', '2020-09-29 15:09:33'),
(366, 13, 0, '0520-G40Y', '#e4ffb0', '2020-09-29 15:09:33'),
(367, 13, 0, '0520-G50Y', '#edffb3', '2020-09-29 15:09:33'),
(368, 13, 0, '0520-G60Y', '#f4feb5', '2020-09-29 15:09:33'),
(369, 13, 0, '0520-G70Y', '#fbffb8', '2020-09-29 15:09:33'),
(370, 13, 0, '0520-G80Y', '#fffcb8', '2020-09-29 15:09:33'),
(371, 13, 0, '0520-G90Y', '#fff7b6', '2020-09-29 15:09:33'),
(372, 13, 0, '0520-R', '#ff959c', '2020-09-29 15:09:33'),
(373, 13, 0, '0520-R10B', '#ff98a5', '2020-09-29 15:09:33'),
(374, 13, 0, '0520-R20B', '#ff9cb0', '2020-09-29 15:09:33'),
(375, 13, 0, '0520-R30B', '#ffa2c0', '2020-09-29 15:09:33'),
(376, 13, 0, '0520-R40B', '#ffa9d4', '2020-09-29 15:09:33'),
(377, 13, 0, '0520-R50B', '#ffb4f0', '2020-09-29 15:09:33'),
(378, 13, 0, '0520-R60B', '#e5b0ff', '2020-09-29 15:09:33'),
(379, 13, 0, '0520-R70B', '#cbb0ff', '2020-09-29 15:09:33'),
(380, 13, 0, '0520-R80B', '#9caeff', '2020-09-29 15:09:33'),
(381, 13, 0, '0520-R90B', '#a3c1ff', '2020-09-29 15:09:33'),
(382, 13, 0, '0520-Y', '#fff3b5', '2020-09-29 15:09:33'),
(383, 13, 0, '0520-Y10R', '#feedb2', '2020-09-29 15:09:33'),
(384, 13, 0, '0520-Y20R', '#ffe5b0', '2020-09-29 15:09:33'),
(385, 13, 0, '0520-Y30R', '#ffddad', '2020-09-29 15:09:33'),
(386, 13, 0, '0520-Y40R', '#ffd5aa', '2020-09-29 15:09:33'),
(387, 13, 0, '0520-Y50R', '#ffcca7', '2020-09-29 15:09:33'),
(388, 13, 0, '0520-Y60R', '#ffc2a3', '2020-09-29 15:09:33'),
(389, 13, 0, '0520-Y70R', '#ffb89f', '2020-09-29 15:09:33'),
(390, 13, 0, '0520-Y80R', '#ffac9b', '2020-09-29 15:09:33'),
(391, 13, 0, '0520-Y90R', '#ffa19b', '2020-09-29 15:09:33'),
(392, 13, 0, '0525-R60B', '#e09ffe', '2020-09-29 15:09:33'),
(393, 13, 0, '0525-R70B', '#c1a0ff', '2020-09-29 15:09:33'),
(394, 13, 0, '0530-B', '#8ed4ff', '2020-09-29 15:09:33'),
(395, 13, 0, '0530-B10G', '#92e3ff', '2020-09-29 15:09:33'),
(396, 13, 0, '0530-B30G', '#98f5ff', '2020-09-29 15:09:33'),
(397, 13, 0, '0530-B40G', '#9afcff', '2020-09-29 15:09:33'),
(398, 13, 0, '0530-B50G', '#9afffb', '2020-09-29 15:09:33'),
(399, 13, 0, '0530-B60G', '#98fff5', '2020-09-29 15:09:33'),
(400, 13, 0, '0530-B70G', '#96ffef', '2020-09-29 15:09:33'),
(401, 13, 0, '0530-B90G', '#8bffcb', '2020-09-29 15:09:33'),
(402, 13, 0, '0530-G', '#84ffb4', '2020-09-29 15:09:33'),
(403, 13, 0, '0530-G10Y', '#a3ffa7', '2020-09-29 15:09:33'),
(404, 13, 0, '0530-G20Y', '#baff9e', '2020-09-29 15:09:33'),
(405, 13, 0, '0530-G30Y', '#cbff96', '2020-09-29 15:09:33'),
(406, 13, 0, '0530-G40Y', '#dafe90', '2020-09-29 15:09:33'),
(407, 13, 0, '0530-G50Y', '#e6ff93', '2020-09-29 15:09:33'),
(408, 13, 0, '0530-G60Y', '#f0fe96', '2020-09-29 15:09:33'),
(409, 13, 0, '0530-G70Y', '#f9fe99', '2020-09-29 15:09:33'),
(410, 13, 0, '0530-G80Y', '#fefb9a', '2020-09-29 15:09:33'),
(411, 13, 0, '0530-G90Y', '#fef598', '2020-09-29 15:09:33'),
(412, 13, 0, '0530-R', '#ff737c', '2020-09-29 15:09:33'),
(413, 13, 0, '0530-R10B', '#ff7687', '2020-09-29 15:09:33'),
(414, 13, 0, '0530-R20B', '#fe7b95', '2020-09-29 15:09:33'),
(415, 13, 0, '0530-R30B', '#ff81a9', '2020-09-29 15:09:33'),
(416, 13, 0, '0530-R40B', '#fe89c4', '2020-09-29 15:09:33'),
(417, 13, 0, '0530-R50B', '#ff95ea', '2020-09-29 15:09:33'),
(418, 13, 0, '0530-R80B', '#7a92ff', '2020-09-29 15:09:33'),
(419, 13, 0, '0530-R90B', '#81aaff', '2020-09-29 15:09:33'),
(420, 13, 0, '0530-Y', '#ffef96', '2020-09-29 15:09:33'),
(421, 13, 0, '0530-Y10R', '#fee593', '2020-09-29 15:09:33'),
(422, 13, 0, '0530-Y20R', '#ffdb90', '2020-09-29 15:09:33'),
(423, 13, 0, '0530-Y30R', '#ffd08d', '2020-09-29 15:09:33'),
(424, 13, 0, '0530-Y40R', '#fec589', '2020-09-29 15:09:33'),
(425, 13, 0, '0530-Y50R', '#feb986', '2020-09-29 15:09:33'),
(426, 13, 0, '0530-Y60R', '#feac82', '2020-09-29 15:09:33'),
(427, 13, 0, '0530-Y70R', '#ff9f7e', '2020-09-29 15:09:33'),
(428, 13, 0, '0530-Y80R', '#ff9079', '2020-09-29 15:09:33'),
(429, 13, 0, '0530-Y90R', '#ff8279', '2020-09-29 15:09:33'),
(430, 13, 0, '0540-B', '#72caff', '2020-09-29 15:09:33'),
(431, 13, 0, '0540-B10G', '#76dcff', '2020-09-29 15:09:33'),
(432, 13, 0, '0540-B30G', '#7cf2ff', '2020-09-29 15:09:33'),
(433, 13, 0, '0540-G', '#68ffa3', '2020-09-29 15:09:33'),
(434, 13, 0, '0540-G10Y', '#8eff93', '2020-09-29 15:09:33'),
(435, 13, 0, '0540-G20Y', '#a9ff86', '2020-09-29 15:09:33'),
(436, 13, 0, '0540-G30Y', '#bfff7c', '2020-09-29 15:09:33'),
(437, 13, 0, '0540-G40Y', '#d0ff74', '2020-09-29 15:09:33'),
(438, 13, 0, '0540-G50Y', '#dfff77', '2020-09-29 15:09:33'),
(439, 13, 0, '0540-G60Y', '#ecff7a', '2020-09-29 15:09:33'),
(440, 13, 0, '0540-G70Y', '#f8fe7d', '2020-09-29 15:09:33'),
(441, 13, 0, '0540-G80Y', '#fffa7e', '2020-09-29 15:09:33'),
(442, 13, 0, '0540-G90Y', '#fff27c', '2020-09-29 15:09:33'),
(443, 13, 0, '0540-R', '#ff5863', '2020-09-29 15:09:33'),
(444, 13, 0, '0540-R10B', '#ff5b6f', '2020-09-29 15:09:33'),
(445, 13, 0, '0540-R20B', '#ff5f7f', '2020-09-29 15:09:33'),
(446, 13, 0, '0540-R30B', '#ff6596', '2020-09-29 15:09:33'),
(447, 13, 0, '0540-R90B', '#6598ff', '2020-09-29 15:09:33'),
(448, 13, 0, '0540-Y', '#ffeb7a', '2020-09-29 15:09:33'),
(449, 13, 0, '0540-Y10R', '#ffdf77', '2020-09-29 15:09:33'),
(450, 13, 0, '0540-Y20R', '#ffd274', '2020-09-29 15:09:33'),
(451, 13, 0, '0540-Y30R', '#ffc571', '2020-09-29 15:09:33'),
(452, 13, 0, '0540-Y40R', '#ffb76d', '2020-09-29 15:09:33'),
(453, 13, 0, '0540-Y50R', '#ffa96a', '2020-09-29 15:09:33'),
(454, 13, 0, '0540-Y60R', '#fe9a66', '2020-09-29 15:09:33'),
(455, 13, 0, '0540-Y70R', '#ff8a62', '2020-09-29 15:09:33'),
(456, 13, 0, '0540-Y80R', '#ff7a5e', '2020-09-29 15:09:33'),
(457, 13, 0, '0540-Y90R', '#ff695f', '2020-09-29 15:09:33'),
(458, 13, 0, '0550-G10Y', '#7bff81', '2020-09-29 15:09:33'),
(459, 13, 0, '0550-G20Y', '#9aff71', '2020-09-29 15:09:33'),
(460, 13, 0, '0550-G30Y', '#b3ff65', '2020-09-29 15:09:33'),
(461, 13, 0, '0550-G40Y', '#c8ff5b', '2020-09-29 15:09:33'),
(462, 13, 0, '0550-G50Y', '#daff5e', '2020-09-29 15:09:33'),
(463, 13, 0, '0550-G60Y', '#e8ff61', '2020-09-29 15:09:33'),
(464, 13, 0, '0550-G70Y', '#f7ff64', '2020-09-29 15:09:33'),
(465, 13, 0, '0550-G80Y', '#fffa65', '2020-09-29 15:09:33'),
(466, 13, 0, '0550-G90Y', '#ffef62', '2020-09-29 15:09:33'),
(467, 13, 0, '0550-R', '#ff424e', '2020-09-29 15:09:33'),
(468, 13, 0, '0550-R10B', '#ff455b', '2020-09-29 15:09:33'),
(469, 13, 0, '0550-Y', '#ffe761', '2020-09-29 15:09:33'),
(470, 13, 0, '0550-Y10R', '#ffd95e', '2020-09-29 15:09:33'),
(471, 13, 0, '0550-Y20R', '#ffca5b', '2020-09-29 15:09:33'),
(472, 13, 0, '0550-Y30R', '#ffbb58', '2020-09-29 15:09:33'),
(473, 13, 0, '0550-Y40R', '#ffab55', '2020-09-29 15:09:33'),
(474, 13, 0, '0550-Y50R', '#ff9b52', '2020-09-29 15:09:33'),
(475, 13, 0, '0550-Y60R', '#ff8a4e', '2020-09-29 15:09:33'),
(476, 13, 0, '0550-Y70R', '#fe794b', '2020-09-29 15:09:33'),
(477, 13, 0, '0550-Y80R', '#ff6747', '2020-09-29 15:09:33'),
(478, 13, 0, '0550-Y90R', '#ff5549', '2020-09-29 15:09:33'),
(479, 13, 0, '0560-G10Y', '#6bff71', '2020-09-29 15:09:33'),
(480, 13, 0, '0560-G20Y', '#8eff5f', '2020-09-29 15:09:33'),
(481, 13, 0, '0560-G30Y', '#a9ff51', '2020-09-29 15:09:33'),
(482, 13, 0, '0560-G40Y', '#c0ff45', '2020-09-29 15:09:33'),
(483, 13, 0, '0560-G50Y', '#d4ff47', '2020-09-29 15:09:33'),
(484, 13, 0, '0560-G60Y', '#e5ff4a', '2020-09-29 15:09:33'),
(485, 13, 0, '0560-G70Y', '#f6ff4d', '2020-09-29 15:09:33'),
(486, 13, 0, '0560-G80Y', '#fff94d', '2020-09-29 15:09:33'),
(487, 13, 0, '0560-G90Y', '#ffed4b', '2020-09-29 15:09:33'),
(488, 13, 0, '0560-R', '#ff303e', '2020-09-29 15:09:33'),
(489, 13, 0, '0560-Y', '#fee34a', '2020-09-29 15:09:33'),
(490, 13, 0, '0560-Y10R', '#ffd347', '2020-09-29 15:09:33'),
(491, 13, 0, '0560-Y20R', '#ffc345', '2020-09-29 15:09:33'),
(492, 13, 0, '0560-Y30R', '#ffb242', '2020-09-29 15:09:33'),
(493, 13, 0, '0560-Y40R', '#ffa140', '2020-09-29 15:09:33'),
(494, 13, 0, '0560-Y50R', '#fe8f3d', '2020-09-29 15:09:33'),
(495, 13, 0, '0560-Y60R', '#ff7d3a', '2020-09-29 15:09:33'),
(496, 13, 0, '0560-Y70R', '#ff6a37', '2020-09-29 15:09:33'),
(497, 13, 0, '0560-Y80R', '#ff5734', '2020-09-29 15:09:33'),
(498, 13, 0, '0560-Y90R', '#ff4437', '2020-09-29 15:09:33'),
(499, 13, 0, '0565-G10Y', '#63ff6a', '2020-09-29 15:09:33'),
(500, 13, 0, '0565-G50Y', '#d2ff3d', '2020-09-29 15:09:33'),
(501, 13, 0, '0565-R', '#ff2836', '2020-09-29 15:09:33'),
(502, 13, 0, '0570-G20Y', '#82ff4f', '2020-09-29 15:09:33'),
(503, 13, 0, '0570-G30Y', '#a1ff3f', '2020-09-29 15:09:33'),
(504, 13, 0, '0570-G40Y', '#baff31', '2020-09-29 15:09:33'),
(505, 13, 0, '0570-G60Y', '#e2ff35', '2020-09-29 15:09:33'),
(506, 13, 0, '0570-G70Y', '#f4ff37', '2020-09-29 15:09:33'),
(507, 13, 0, '0570-G80Y', '#fff837', '2020-09-29 15:09:33'),
(508, 13, 0, '0570-G90Y', '#ffeb36', '2020-09-29 15:09:33'),
(509, 13, 0, '0570-Y', '#ffe035', '2020-09-29 15:09:33'),
(510, 13, 0, '0570-Y10R', '#ffcf33', '2020-09-29 15:09:33'),
(511, 13, 0, '0570-Y20R', '#ffbd31', '2020-09-29 15:09:33'),
(512, 13, 0, '0570-Y30R', '#feaa2f', '2020-09-29 15:09:33'),
(513, 13, 0, '0570-Y40R', '#fe982d', '2020-09-29 15:09:33'),
(514, 13, 0, '0570-Y50R', '#ff852b', '2020-09-29 15:09:33'),
(515, 13, 0, '0570-Y60R', '#ff7128', '2020-09-29 15:09:33'),
(516, 13, 0, '0570-Y70R', '#ff5e26', '2020-09-29 15:09:33'),
(517, 13, 0, '0570-Y80R', '#fe4a24', '2020-09-29 15:09:33'),
(518, 13, 0, '0570-Y90R', '#fe3628', '2020-09-29 15:09:33'),
(519, 13, 0, '0575-G20Y', '#7dff48', '2020-09-29 15:09:33'),
(520, 13, 0, '0575-G40Y', '#b7ff28', '2020-09-29 15:09:33'),
(521, 13, 0, '0575-G60Y', '#e1ff2b', '2020-09-29 15:09:33'),
(522, 13, 0, '0575-G70Y', '#f4ff2d', '2020-09-29 15:09:33'),
(523, 13, 0, '0575-G90Y', '#ffea2c', '2020-09-29 15:09:33'),
(524, 13, 0, '0580-G30Y', '#99ff2e', '2020-09-29 15:09:33'),
(525, 13, 0, '0580-Y', '#ffdd22', '2020-09-29 15:09:33'),
(526, 13, 0, '0580-Y10R', '#ffca20', '2020-09-29 15:09:33'),
(527, 13, 0, '0580-Y10R', '#ffca20', '2020-09-29 15:09:33'),
(528, 13, 0, '0580-Y20R', '#feb71f', '2020-09-29 15:09:33'),
(529, 13, 0, '0580-Y20R', '#feb71f', '2020-09-29 15:09:33'),
(530, 13, 0, '0580-Y30R', '#ffa31d', '2020-09-29 15:09:33'),
(531, 13, 0, '0580-Y40R', '#ff901c', '2020-09-29 15:09:33'),
(532, 13, 0, '0580-Y50R', '#ff7b1b', '2020-09-29 15:09:33'),
(533, 13, 0, '0580-Y60R', '#ff6719', '2020-09-29 15:09:33'),
(534, 13, 0, '0580-Y70R', '#ff5318', '2020-09-29 15:09:33'),
(535, 13, 0, '0580-Y80R', '#ff3e16', '2020-09-29 15:09:33'),
(536, 13, 0, '0580-Y90R', '#ff2a1b', '2020-09-29 15:09:33'),
(537, 13, 0, '0585-Y20R', '#ffb416', '2020-09-29 15:09:33'),
(538, 13, 0, '0585-Y30R', '#ffa015', '2020-09-29 15:09:33'),
(539, 13, 0, '0585-Y40R', '#fe8c14', '2020-09-29 15:09:33'),
(540, 13, 0, '0585-Y50R', '#ff7713', '2020-09-29 15:09:33'),
(541, 13, 0, '0585-Y60R', '#ff6212', '2020-09-29 15:09:33'),
(542, 13, 0, '0585-Y70R', '#ff4e11', '2020-09-29 15:09:33'),
(543, 13, 0, '0585-Y80R', '#ff3910', '2020-09-29 15:09:33'),
(544, 13, 0, '0603-G40Y', '#f7fcef', '2020-09-29 15:09:33'),
(545, 13, 0, '0603-G80Y', '#fcfbf0', '2020-09-29 15:09:33'),
(546, 13, 0, '0603-R20B', '#fceaed', '2020-09-29 15:09:33'),
(547, 13, 0, '0603-R40B', '#fcedf4', '2020-09-29 15:09:33'),
(548, 13, 0, '0603-R60B', '#f8effc', '2020-09-29 15:09:33'),
(549, 13, 0, '0603-R80B', '#e9edfc', '2020-09-29 15:09:33'),
(550, 13, 0, '0603-Y20R', '#fcf8ef', '2020-09-29 15:09:33'),
(551, 13, 0, '0603-Y40R', '#fcf5ed', '2020-09-29 15:09:33'),
(552, 13, 0, '0603-Y60R', '#fcf1eb', '2020-09-29 15:09:33'),
(553, 13, 0, '0603-Y80R', '#fcede9', '2020-09-29 15:09:33'),
(554, 13, 0, '0804-B50G', '#e8f6f6', '2020-09-29 15:09:33'),
(555, 13, 0, '0804-G20Y', '#ecf6e7', '2020-09-29 15:09:33'),
(556, 13, 0, '0804-G60Y', '#f4f6e7', '2020-09-29 15:09:33'),
(557, 13, 0, '0804-G90Y', '#f6f5e7', '2020-09-29 15:09:33'),
(558, 13, 0, '0804-R10B', '#f6dee1', '2020-09-29 15:09:33'),
(559, 13, 0, '0804-R30B', '#f6e1e8', '2020-09-29 15:09:33'),
(560, 13, 0, '0804-R50B', '#f6e7f3', '2020-09-29 15:09:33'),
(561, 13, 0, '0804-R70B', '#ebe5f6', '2020-09-29 15:09:33'),
(562, 13, 0, '0804-R90B', '#e1e8f6', '2020-09-29 15:09:33'),
(563, 13, 0, '0804-Y10R', '#f6f3e6', '2020-09-29 15:09:33'),
(564, 13, 0, '0804-Y30R', '#f6efe5', '2020-09-29 15:09:33'),
(565, 13, 0, '0804-Y50R', '#f6ebe3', '2020-09-29 15:09:33'),
(566, 13, 0, '0804-Y70R', '#f6e6e0', '2020-09-29 15:09:33'),
(567, 13, 0, '0804-Y90R', '#f6e0de', '2020-09-29 15:09:33'),
(568, 13, 0, '0907-B20G', '#d9eff4', '2020-09-29 15:09:33'),
(569, 13, 0, '0907-B80G', '#d8f4ee', '2020-09-29 15:09:33'),
(570, 13, 0, '0907-G20Y', '#e1f4da', '2020-09-29 15:09:33'),
(571, 13, 0, '0907-G60Y', '#f0f4d9', '2020-09-29 15:09:33'),
(572, 13, 0, '0907-G90Y', '#f4f1da', '2020-09-29 15:09:33'),
(573, 13, 0, '0907-R10B', '#f4cbd0', '2020-09-29 15:09:33'),
(574, 13, 0, '0907-R30B', '#f4d0db', '2020-09-29 15:09:33'),
(575, 13, 0, '0907-R50B', '#f4d9ef', '2020-09-29 15:09:33'),
(576, 13, 0, '0907-R70B', '#e0d6f4', '2020-09-29 15:09:33'),
(577, 13, 0, '0907-R90B', '#d0dcf4', '2020-09-29 15:09:33'),
(578, 13, 0, '0907-Y10R', '#f4edd8', '2020-09-29 15:09:33'),
(579, 13, 0, '0907-Y30R', '#f4e8d5', '2020-09-29 15:09:33'),
(580, 13, 0, '0907-Y50R', '#f4e1d2', '2020-09-29 15:09:33'),
(581, 13, 0, '0907-Y70R', '#f4d8cf', '2020-09-29 15:09:33'),
(582, 13, 0, '0907-Y90R', '#f4cecc', '2020-09-29 15:09:33'),
(583, 13, 0, '1000-N', '#e5e5e5', '2020-09-29 15:09:33'),
(584, 13, 0, '1002-B', '#e8eef1', '2020-09-29 15:09:33'),
(585, 13, 0, '1002-B', '#e8eef1', '2020-09-29 15:09:33'),
(586, 13, 0, '1002-B50G', '#eaf1f1', '2020-09-29 15:09:33'),
(587, 13, 0, '1002-G', '#e7f1eb', '2020-09-29 15:09:33'),
(588, 13, 0, '1002-G', '#e7f1eb', '2020-09-29 15:09:33'),
(589, 13, 0, '1002-G50Y', '#eff1e9', '2020-09-29 15:09:33'),
(590, 13, 0, '1002-R', '#f1e4e5', '2020-09-29 15:09:33'),
(591, 13, 0, '1002-R', '#f1e4e5', '2020-09-29 15:09:33'),
(592, 13, 0, '1002-R50B', '#f1e9f0', '2020-09-29 15:09:33'),
(593, 13, 0, '1002-Y', '#f1f0e9', '2020-09-29 15:09:33'),
(594, 13, 0, '1002-Y50R', '#f1ebe7', '2020-09-29 15:09:33'),
(595, 13, 0, '1005-B', '#dce9f1', '2020-09-29 15:09:33'),
(596, 13, 0, '1005-B20G', '#deeef1', '2020-09-29 15:09:33'),
(597, 13, 0, '1005-B50G', '#dff1f1', '2020-09-29 15:09:33'),
(598, 13, 0, '1005-B80G', '#ddf1ed', '2020-09-29 15:09:33'),
(599, 13, 0, '1005-B80G', '#ddf1ed', '2020-09-29 15:09:33'),
(600, 13, 0, '1005-G', '#d8f1e2', '2020-09-29 15:09:33'),
(601, 13, 0, '1005-G10Y', '#dff1e0', '2020-09-29 15:09:33'),
(602, 13, 0, '1005-G20Y', '#e4f1de', '2020-09-29 15:09:33'),
(603, 13, 0, '1005-G20Y', '#e4f1de', '2020-09-29 15:09:33'),
(604, 13, 0, '1005-G30Y', '#e7f1dd', '2020-09-29 15:09:33'),
(605, 13, 0, '1005-G40Y', '#eaf1dc', '2020-09-29 15:09:33'),
(606, 13, 0, '1005-G50Y', '#edf1dd', '2020-09-29 15:09:33'),
(607, 13, 0, '1005-G60Y', '#eef1de', '2020-09-29 15:09:33'),
(608, 13, 0, '1005-G70Y', '#f0f1df', '2020-09-29 15:09:33'),
(609, 13, 0, '1005-G80Y', '#f1f1df', '2020-09-29 15:09:33'),
(610, 13, 0, '1005-G80Y', '#f1f1df', '2020-09-29 15:09:33'),
(611, 13, 0, '1005-G90Y', '#f1efdf', '2020-09-29 15:09:33'),
(612, 13, 0, '1005-R', '#f1d2d4', '2020-09-29 15:09:33'),
(613, 13, 0, '1005-R10B', '#f1d3d7', '2020-09-29 15:09:33'),
(614, 13, 0, '1005-R20B', '#f1d5db', '2020-09-29 15:09:33'),
(615, 13, 0, '1005-R20B', '#f1d5db', '2020-09-29 15:09:33'),
(616, 13, 0, '1005-R30B', '#f1d7e0', '2020-09-29 15:09:33'),
(617, 13, 0, '1005-R40B', '#f1dae6', '2020-09-29 15:09:33'),
(618, 13, 0, '1005-R50B', '#f1deed', '2020-09-29 15:09:33'),
(619, 13, 0, '1005-R60B', '#eadcf1', '2020-09-29 15:09:33'),
(620, 13, 0, '1005-R70B', '#e3dcf1', '2020-09-29 15:09:33'),
(621, 13, 0, '1005-R80B', '#d5daf1', '2020-09-29 15:09:33'),
(622, 13, 0, '1005-R90B', '#d7e0f1', '2020-09-29 15:09:33'),
(623, 13, 0, '1005-Y', '#f1eede', '2020-09-29 15:09:33'),
(624, 13, 0, '1005-Y10R', '#f1ecdd', '2020-09-29 15:09:33'),
(625, 13, 0, '1005-Y20R', '#f1eadc', '2020-09-29 15:09:33'),
(626, 13, 0, '1005-Y20R', '#f1eadc', '2020-09-29 15:09:33'),
(627, 13, 0, '1005-Y30R', '#f1e8db', '2020-09-29 15:09:33'),
(628, 13, 0, '1005-Y40R', '#f1e6da', '2020-09-29 15:09:33'),
(629, 13, 0, '1005-Y50R', '#f1e3d9', '2020-09-29 15:09:33'),
(630, 13, 0, '1005-Y60R', '#f1e0d8', '2020-09-29 15:09:33'),
(631, 13, 0, '1005-Y70R', '#f1ddd6', '2020-09-29 15:09:33'),
(632, 13, 0, '1005-Y80R', '#f1d9d4', '2020-09-29 15:09:33'),
(633, 13, 0, '1005-Y90R', '#f1d6d4', '2020-09-29 15:09:33'),
(634, 13, 0, '1010-B', '#c8e2f1', '2020-09-29 15:09:33'),
(635, 13, 0, '1010-B10G', '#cae7f1', '2020-09-29 15:09:33'),
(636, 13, 0, '1010-B30G', '#cdeef1', '2020-09-29 15:09:33'),
(637, 13, 0, '1010-B50G', '#cef1f0', '2020-09-29 15:09:33'),
(638, 13, 0, '1010-B70G', '#ccf1ec', '2020-09-29 15:09:33'),
(639, 13, 0, '1010-B90G', '#c6f1de', '2020-09-29 15:09:33'),
(640, 13, 0, '1010-G', '#c2f1d5', '2020-09-29 15:09:33'),
(641, 13, 0, '1010-G10Y', '#cff1d1', '2020-09-29 15:09:33'),
(642, 13, 0, '1010-G20Y', '#d8f1cd', '2020-09-29 15:09:33'),
(643, 13, 0, '1010-G30Y', '#def1cb', '2020-09-29 15:09:33'),
(644, 13, 0, '1010-G40Y', '#e4f1c9', '2020-09-29 15:09:33'),
(645, 13, 0, '1010-G50Y', '#e8f1cb', '2020-09-29 15:09:33'),
(646, 13, 0, '1010-G60Y', '#ecf1cc', '2020-09-29 15:09:33'),
(647, 13, 0, '1010-G70Y', '#eff1ce', '2020-09-29 15:09:33'),
(648, 13, 0, '1010-G80Y', '#f1f0ce', '2020-09-29 15:09:33'),
(649, 13, 0, '1010-G90Y', '#f1eecd', '2020-09-29 15:09:33'),
(650, 13, 0, '1010-R', '#f1b8bb', '2020-09-29 15:09:33'),
(651, 13, 0, '1010-R10B', '#f1bac0', '2020-09-29 15:09:33'),
(652, 13, 0, '1010-R20B', '#f1bdc7', '2020-09-29 15:09:33'),
(653, 13, 0, '1010-R30B', '#f1c0d0', '2020-09-29 15:09:33'),
(654, 13, 0, '1010-R40B', '#f1c5db', '2020-09-29 15:09:33'),
(655, 13, 0, '1010-R50B', '#f1ccea', '2020-09-29 15:09:33'),
(656, 13, 0, '1010-R60B', '#e4c9f1', '2020-09-29 15:09:33'),
(657, 13, 0, '1010-R70B', '#d7c8f1', '2020-09-29 15:09:33'),
(658, 13, 0, '1010-R80B', '#bcc6f1', '2020-09-29 15:09:33'),
(659, 13, 0, '1010-R90B', '#c1d1f1', '2020-09-29 15:09:33'),
(660, 13, 0, '1010-Y', '#f1eccc', '2020-09-29 15:09:33'),
(661, 13, 0, '1010-Y10R', '#f1e8cb', '2020-09-29 15:09:33'),
(662, 13, 0, '1010-Y20R', '#f1e4c9', '2020-09-29 15:09:33'),
(663, 13, 0, '1010-Y30R', '#f1e0c7', '2020-09-29 15:09:33'),
(664, 13, 0, '1010-Y40R', '#f1dcc5', '2020-09-29 15:09:33'),
(665, 13, 0, '1010-Y50R', '#f1d7c3', '2020-09-29 15:09:33'),
(666, 13, 0, '1010-Y60R', '#f1d1c1', '2020-09-29 15:09:33'),
(667, 13, 0, '1010-Y70R', '#f1cbbe', '2020-09-29 15:09:33'),
(668, 13, 0, '1010-Y80R', '#f1c5bc', '2020-09-29 15:09:33'),
(669, 13, 0, '1010-Y90R', '#f1bebb', '2020-09-29 15:09:33'),
(670, 13, 0, '1015-B', '#b6dbf1', '2020-09-29 15:09:33'),
(671, 13, 0, '1015-B20G', '#bbe8f1', '2020-09-29 15:09:33'),
(672, 13, 0, '1015-B50G', '#bef1ef', '2020-09-29 15:09:33'),
(673, 13, 0, '1015-B80G', '#baf1e5', '2020-09-29 15:09:33'),
(674, 13, 0, '1015-G', '#aef1c8', '2020-09-29 15:09:33'),
(675, 13, 0, '1015-G20Y', '#cdf1be', '2020-09-29 15:09:33'),
(676, 13, 0, '1015-G40Y', '#def1b7', '2020-09-29 15:09:33'),
(677, 13, 0, '1015-G60Y', '#eaf1bc', '2020-09-29 15:09:33'),
(678, 13, 0, '1015-G80Y', '#f1f0be', '2020-09-29 15:09:33'),
(679, 13, 0, '1015-G90Y', '#f1ecbd', '2020-09-29 15:09:33'),
(680, 13, 0, '1015-R', '#f1a1a6', '2020-09-29 15:09:33'),
(681, 13, 0, '1015-R10B', '#f1a4ad', '2020-09-29 15:09:33'),
(682, 13, 0, '1015-R20B', '#f1a7b6', '2020-09-29 15:09:33'),
(683, 13, 0, '1015-R40B', '#f1b2d2', '2020-09-29 15:09:33'),
(684, 13, 0, '1015-R60B', '#dfb7f1', '2020-09-29 15:09:33'),
(685, 13, 0, '1015-R80B', '#a6b4f1', '2020-09-29 15:09:33'),
(686, 13, 0, '1015-R90B', '#acc3f1', '2020-09-29 15:09:33'),
(687, 13, 0, '1015-Y', '#f1e9bb', '2020-09-29 15:09:33'),
(688, 13, 0, '1015-Y10R', '#f1e4b9', '2020-09-29 15:09:33'),
(689, 13, 0, '1015-Y20R', '#f1dfb7', '2020-09-29 15:09:33'),
(690, 13, 0, '1015-Y30R', '#f1d9b5', '2020-09-29 15:09:33'),
(691, 13, 0, '1015-Y40R', '#f1d2b2', '2020-09-29 15:09:33'),
(692, 13, 0, '1015-Y50R', '#f1cbb0', '2020-09-29 15:09:33'),
(693, 13, 0, '1015-Y60R', '#f1c4ad', '2020-09-29 15:09:33'),
(694, 13, 0, '1015-Y70R', '#f1bca9', '2020-09-29 15:09:33'),
(695, 13, 0, '1015-Y80R', '#f1b3a6', '2020-09-29 15:09:33'),
(696, 13, 0, '1015-Y90R', '#f1aaa5', '2020-09-29 15:09:33'),
(697, 13, 0, '1020-B', '#a5d5f1', '2020-09-29 15:09:33'),
(698, 13, 0, '1020-B10G', '#a8dff1', '2020-09-29 15:09:33'),
(699, 13, 0, '1020-B30G', '#adebf1', '2020-09-29 15:09:33'),
(700, 13, 0, '1020-B40G', '#afeff1', '2020-09-29 15:09:33'),
(701, 13, 0, '1020-B50G', '#aef1ef', '2020-09-29 15:09:33'),
(702, 13, 0, '1020-B60G', '#adf1eb', '2020-09-29 15:09:33'),
(703, 13, 0, '1020-B70G', '#abf1e7', '2020-09-29 15:09:33'),
(704, 13, 0, '1020-B90G', '#a2f1ce', '2020-09-29 15:09:33'),
(705, 13, 0, '1020-G', '#9cf1bd', '2020-09-29 15:09:33'),
(706, 13, 0, '1020-G10Y', '#b3f1b5', '2020-09-29 15:09:33'),
(707, 13, 0, '1020-G20Y', '#c2f1af', '2020-09-29 15:09:33'),
(708, 13, 0, '1020-G30Y', '#cef1aa', '2020-09-29 15:09:33'),
(709, 13, 0, '1020-G40Y', '#d8f1a6', '2020-09-29 15:09:33'),
(710, 13, 0, '1020-G50Y', '#e1f1a9', '2020-09-29 15:09:33'),
(711, 13, 0, '1020-G60Y', '#e7f1ac', '2020-09-29 15:09:33'),
(712, 13, 0, '1020-G70Y', '#eef1ae', '2020-09-29 15:09:33'),
(713, 13, 0, '1020-G80Y', '#f1efae', '2020-09-29 15:09:33'),
(714, 13, 0, '1020-G90Y', '#f1eaad', '2020-09-29 15:09:33'),
(715, 13, 0, '1020-R', '#f18d94', '2020-09-29 15:09:33'),
(716, 13, 0, '1020-R10B', '#f1909c', '2020-09-29 15:09:33'),
(717, 13, 0, '1020-R20B', '#f194a7', '2020-09-29 15:09:33'),
(718, 13, 0, '1020-R30B', '#f19ab5', '2020-09-29 15:09:33'),
(719, 13, 0, '1020-R40B', '#f1a1c9', '2020-09-29 15:09:33'),
(720, 13, 0, '1020-R50B', '#f1aae4', '2020-09-29 15:09:33'),
(721, 13, 0, '1020-R60B', '#d9a7f1', '2020-09-29 15:09:33'),
(722, 13, 0, '1020-R70B', '#c1a7f1', '2020-09-29 15:09:33'),
(723, 13, 0, '1020-R80B', '#93a5f1', '2020-09-29 15:09:33'),
(724, 13, 0, '1020-R90B', '#9ab7f1', '2020-09-29 15:09:33'),
(725, 13, 0, '1020-Y', '#f1e7ab', '2020-09-29 15:09:33'),
(726, 13, 0, '1020-Y10R', '#f1e0a9', '2020-09-29 15:09:33'),
(727, 13, 0, '1020-Y20R', '#f1d9a7', '2020-09-29 15:09:33'),
(728, 13, 0, '1020-Y30R', '#f1d2a4', '2020-09-29 15:09:33'),
(729, 13, 0, '1020-Y40R', '#f1caa1', '2020-09-29 15:09:33'),
(730, 13, 0, '1020-Y50R', '#f1c19e', '2020-09-29 15:09:33'),
(731, 13, 0, '1020-Y60R', '#f1b89a', '2020-09-29 15:09:33'),
(732, 13, 0, '1020-Y70R', '#f1ae97', '2020-09-29 15:09:33'),
(733, 13, 0, '1020-Y80R', '#f1a393', '2020-09-29 15:09:33'),
(734, 13, 0, '1020-Y90R', '#f19892', '2020-09-29 15:09:33'),
(735, 13, 0, '1030-B', '#86c9f1', '2020-09-29 15:09:33'),
(736, 13, 0, '1030-B10G', '#8bd7f1', '2020-09-29 15:09:33'),
(737, 13, 0, '1030-B30G', '#90e8f1', '2020-09-29 15:09:33'),
(738, 13, 0, '1030-B40G', '#92eef1', '2020-09-29 15:09:33'),
(739, 13, 0, '1030-B50G', '#92f1ee', '2020-09-29 15:09:33'),
(740, 13, 0, '1030-B60G', '#90f1e8', '2020-09-29 15:09:33'),
(741, 13, 0, '1030-B70G', '#8ef1e2', '2020-09-29 15:09:33'),
(742, 13, 0, '1030-B90G', '#84f1c0', '2020-09-29 15:09:33'),
(743, 13, 0, '1030-G', '#7df1aa', '2020-09-29 15:09:33'),
(744, 13, 0, '1030-G10Y', '#9bf19f', '2020-09-29 15:09:33'),
(745, 13, 0, '1030-G20Y', '#b0f195', '2020-09-29 15:09:33'),
(746, 13, 0, '1030-G30Y', '#c1f18e', '2020-09-29 15:09:33'),
(747, 13, 0, '1030-G40Y', '#cef188', '2020-09-29 15:09:33'),
(748, 13, 0, '1030-G50Y', '#daf18b', '2020-09-29 15:09:33'),
(749, 13, 0, '1030-G60Y', '#e3f18e', '2020-09-29 15:09:33'),
(750, 13, 0, '1030-G70Y', '#ecf191', '2020-09-29 15:09:33'),
(751, 13, 0, '1030-G80Y', '#f1ee92', '2020-09-29 15:09:33'),
(752, 13, 0, '1030-G90Y', '#f1e890', '2020-09-29 15:09:33'),
(753, 13, 0, '1030-R', '#f16d76', '2020-09-29 15:09:33'),
(754, 13, 0, '1030-R10B', '#f17080', '2020-09-29 15:09:33'),
(755, 13, 0, '1030-R20B', '#f1748d', '2020-09-29 15:09:33'),
(756, 13, 0, '1030-R30B', '#f17aa0', '2020-09-29 15:09:33'),
(757, 13, 0, '1030-R40B', '#f182b9', '2020-09-29 15:09:33'),
(758, 13, 0, '1030-R50B', '#f18dde', '2020-09-29 15:09:33'),
(759, 13, 0, '1030-R60B', '#d088f1', '2020-09-29 15:09:33'),
(760, 13, 0, '1030-R70B', '#ae8af1', '2020-09-29 15:09:33'),
(761, 13, 0, '1030-R80B', '#738bf1', '2020-09-29 15:09:33'),
(762, 13, 0, '1030-R90B', '#7aa1f1', '2020-09-29 15:09:33'),
(763, 13, 0, '1030-Y', '#f1e28e', '2020-09-29 15:09:33'),
(764, 13, 0, '1030-Y10R', '#f1d98b', '2020-09-29 15:09:33'),
(765, 13, 0, '1030-Y20R', '#f1d088', '2020-09-29 15:09:33'),
(766, 13, 0, '1030-Y30R', '#f1c585', '2020-09-29 15:09:33'),
(767, 13, 0, '1030-Y40R', '#f1bb82', '2020-09-29 15:09:33'),
(768, 13, 0, '1030-Y50R', '#f1af7f', '2020-09-29 15:09:33'),
(769, 13, 0, '1030-Y60R', '#f1a37b', '2020-09-29 15:09:33'),
(770, 13, 0, '1030-Y70R', '#f19677', '2020-09-29 15:09:33'),
(771, 13, 0, '1030-Y80R', '#f18973', '2020-09-29 15:09:33'),
(772, 13, 0, '1030-Y90R', '#f17b73', '2020-09-29 15:09:33'),
(773, 13, 0, '1040-B', '#6cbff1', '2020-09-29 15:09:33'),
(774, 13, 0, '1040-B10G', '#70d0f1', '2020-09-29 15:09:33'),
(775, 13, 0, '1040-B20G', '#73dcf1', '2020-09-29 15:09:33'),
(776, 13, 0, '1040-B30G', '#75e5f1', '2020-09-29 15:09:33'),
(777, 13, 0, '1040-B40G', '#77eef1', '2020-09-29 15:09:33'),
(778, 13, 0, '1040-B50G', '#77f1ed', '2020-09-29 15:09:33'),
(779, 13, 0, '1040-B60G', '#75f1e6', '2020-09-29 15:09:33'),
(780, 13, 0, '1040-B70G', '#74f1de', '2020-09-29 15:09:33'),
(781, 13, 0, '1040-B80G', '#71f1d5', '2020-09-29 15:09:33'),
(782, 13, 0, '1040-B90G', '#69f1b4', '2020-09-29 15:09:33'),
(783, 13, 0, '1040-G', '#63f19a', '2020-09-29 15:09:33'),
(784, 13, 0, '1040-G10Y', '#86f18b', '2020-09-29 15:09:33'),
(785, 13, 0, '1040-G20Y', '#a0f17f', '2020-09-29 15:09:33'),
(786, 13, 0, '1040-G30Y', '#b5f175', '2020-09-29 15:09:33'),
(787, 13, 0, '1040-G40Y', '#c5f16e', '2020-09-29 15:09:33'),
(788, 13, 0, '1040-G50Y', '#d4f171', '2020-09-29 15:09:33'),
(789, 13, 0, '1040-G60Y', '#dff174', '2020-09-29 15:09:33'),
(790, 13, 0, '1040-G70Y', '#ebf177', '2020-09-29 15:09:33'),
(791, 13, 0, '1040-G80Y', '#f1ed77', '2020-09-29 15:09:33'),
(792, 13, 0, '1040-G90Y', '#f1e575', '2020-09-29 15:09:33'),
(793, 13, 0, '1040-R', '#f1535e', '2020-09-29 15:09:33'),
(794, 13, 0, '1040-R10B', '#f15669', '2020-09-29 15:09:33'),
(795, 13, 0, '1040-R20B', '#f15a79', '2020-09-29 15:09:33'),
(796, 13, 0, '1040-R30B', '#f1608e', '2020-09-29 15:09:33'),
(797, 13, 0, '1040-R40B', '#f167ac', '2020-09-29 15:09:33'),
(798, 13, 0, '1040-R50B', '#f172d9', '2020-09-29 15:09:33'),
(799, 13, 0, '1040-R60B', '#c76ef1', '2020-09-29 15:09:33'),
(800, 13, 0, '1040-R70B', '#9e72f1', '2020-09-29 15:09:33'),
(801, 13, 0, '1040-R80B', '#5975f1', '2020-09-29 15:09:33'),
(802, 13, 0, '1040-R90B', '#6090f1', '2020-09-29 15:09:33'),
(803, 13, 0, '1040-Y', '#f1de74', '2020-09-29 15:09:33'),
(804, 13, 0, '1040-Y10R', '#f1d371', '2020-09-29 15:09:33'),
(805, 13, 0, '1040-Y20R', '#f1c76e', '2020-09-29 15:09:33'),
(806, 13, 0, '1040-Y30R', '#f1bb6b', '2020-09-29 15:09:33'),
(807, 13, 0, '1040-Y40R', '#f1ae67', '2020-09-29 15:09:33'),
(808, 13, 0, '1040-Y50R', '#f1a064', '2020-09-29 15:09:33'),
(809, 13, 0, '1040-Y60R', '#f19260', '2020-09-29 15:09:33'),
(810, 13, 0, '1040-Y70R', '#f1835d', '2020-09-29 15:09:33'),
(811, 13, 0, '1040-Y80R', '#f17359', '2020-09-29 15:09:33'),
(812, 13, 0, '1040-Y90R', '#f1645a', '2020-09-29 15:09:33'),
(813, 13, 0, '1050-B', '#54b6f1', '2020-09-29 15:09:33'),
(814, 13, 0, '1050-B10G', '#58caf1', '2020-09-29 15:09:33'),
(815, 13, 0, '1050-B20G', '#5bd8f1', '2020-09-29 15:09:33'),
(816, 13, 0, '1050-B30G', '#5de3f1', '2020-09-29 15:09:33'),
(817, 13, 0, '1050-B40G', '#5fedf1', '2020-09-29 15:09:33'),
(818, 13, 0, '1050-B50G', '#5ff1ec', '2020-09-29 15:09:33'),
(819, 13, 0, '1050-B60G', '#5df1e3', '2020-09-29 15:09:33'),
(820, 13, 0, '1050-B70G', '#5cf1db', '2020-09-29 15:09:33'),
(821, 13, 0, '1050-B80G', '#59f1cf', '2020-09-29 15:09:33'),
(822, 13, 0, '1050-B90G', '#52f1aa', '2020-09-29 15:09:33'),
(823, 13, 0, '1050-G', '#4cf18c', '2020-09-29 15:09:33'),
(824, 13, 0, '1050-G10Y', '#75f17a', '2020-09-29 15:09:33'),
(825, 13, 0, '1050-G10Y', '#75f17a', '2020-09-29 15:09:33'),
(826, 13, 0, '1050-G20Y', '#92f16b', '2020-09-29 15:09:33'),
(827, 13, 0, '1050-G20Y', '#92f16b', '2020-09-29 15:09:33'),
(828, 13, 0, '1050-G30Y', '#aaf160', '2020-09-29 15:09:33'),
(829, 13, 0, '1050-G40Y', '#bdf156', '2020-09-29 15:09:33'),
(830, 13, 0, '1050-G50Y', '#cef159', '2020-09-29 15:09:33'),
(831, 13, 0, '1050-G60Y', '#dcf15c', '2020-09-29 15:09:33'),
(832, 13, 0, '1050-G70Y', '#eaf15f', '2020-09-29 15:09:33'),
(833, 13, 0, '1050-G80Y', '#f1ed5f', '2020-09-29 15:09:33'),
(834, 13, 0, '1050-G90Y', '#f1e35d', '2020-09-29 15:09:33'),
(835, 13, 0, '1050-R', '#f13f4a', '2020-09-29 15:09:33'),
(836, 13, 0, '1050-R10B', '#f14157', '2020-09-29 15:09:33'),
(837, 13, 0, '1050-R20B', '#f14567', '2020-09-29 15:09:33'),
(838, 13, 0, '1050-R30B', '#f1497f', '2020-09-29 15:09:33'),
(839, 13, 0, '1050-R40B', '#f150a1', '2020-09-29 15:09:33'),
(840, 13, 0, '1050-R90B', '#4a81f1', '2020-09-29 15:09:33'),
(841, 13, 0, '1050-Y', '#f1db5c', '2020-09-29 15:09:33'),
(842, 13, 0, '1050-Y10R', '#f1cd59', '2020-09-29 15:09:33'),
(843, 13, 0, '1050-Y20R', '#f1c056', '2020-09-29 15:09:33'),
(844, 13, 0, '1050-Y30R', '#f1b153', '2020-09-29 15:09:33'),
(845, 13, 0, '1050-Y40R', '#f1a250', '2020-09-29 15:09:33'),
(846, 13, 0, '1050-Y50R', '#f1934d', '2020-09-29 15:09:33'),
(847, 13, 0, '1050-Y60R', '#f1834a', '2020-09-29 15:09:33'),
(848, 13, 0, '1050-Y70R', '#f17247', '2020-09-29 15:09:33'),
(849, 13, 0, '1050-Y80R', '#f16143', '2020-09-29 15:09:33'),
(850, 13, 0, '1050-Y90R', '#f15045', '2020-09-29 15:09:33'),
(851, 13, 0, '1055-B90G', '#47f1a5', '2020-09-29 15:09:33'),
(852, 13, 0, '1060-B', '#40aff1', '2020-09-29 15:09:33'),
(853, 13, 0, '1060-G', '#39f180', '2020-09-29 15:09:33'),
(854, 13, 0, '1060-G10Y', '#65f16b', '2020-09-29 15:09:33'),
(855, 13, 0, '1060-G20Y', '#86f15a', '2020-09-29 15:09:33'),
(856, 13, 0, '1060-G30Y', '#a0f14c', '2020-09-29 15:09:33'),
(857, 13, 0, '1060-G40Y', '#b6f141', '2020-09-29 15:09:33'),
(858, 13, 0, '1060-G50Y', '#c9f144', '2020-09-29 15:09:33'),
(859, 13, 0, '1060-G60Y', '#d9f146', '2020-09-29 15:09:33'),
(860, 13, 0, '1060-G70Y', '#e9f149', '2020-09-29 15:09:33'),
(861, 13, 0, '1060-G80Y', '#f1ec49', '2020-09-29 15:09:33'),
(862, 13, 0, '1060-G90Y', '#f1e147', '2020-09-29 15:09:33'),
(863, 13, 0, '1060-R', '#f12e3a', '2020-09-29 15:09:33'),
(864, 13, 0, '1060-R10B', '#f13047', '2020-09-29 15:09:33');
INSERT INTO `palette_colors` (`id`, `ColorPaletteID`, `BaseColorID`, `color`, `color_image`, `added_at`) VALUES
(865, 13, 0, '1060-R20B', '#f13259', '2020-09-29 15:09:33'),
(866, 13, 0, '1060-R30B', '#f13672', '2020-09-29 15:09:33'),
(867, 13, 0, '1060-Y', '#f1d746', '2020-09-29 15:09:33'),
(868, 13, 0, '1060-Y10R', '#f1c844', '2020-09-29 15:09:33'),
(869, 13, 0, '1060-Y20R', '#f1b941', '2020-09-29 15:09:33'),
(870, 13, 0, '1060-Y30R', '#f1a93f', '2020-09-29 15:09:33'),
(871, 13, 0, '1060-Y40R', '#f1983c', '2020-09-29 15:09:33'),
(872, 13, 0, '1060-Y50R', '#f1883a', '2020-09-29 15:09:33'),
(873, 13, 0, '1060-Y60R', '#f17637', '2020-09-29 15:09:33'),
(874, 13, 0, '1060-Y70R', '#f16534', '2020-09-29 15:09:33'),
(875, 13, 0, '1060-Y80R', '#f15331', '2020-09-29 15:09:33'),
(876, 13, 0, '1060-Y90R', '#f14134', '2020-09-29 15:09:33'),
(877, 13, 0, '1070-G10Y', '#57f15e', '2020-09-29 15:09:33'),
(878, 13, 0, '1070-G20Y', '#7bf14b', '2020-09-29 15:09:33'),
(879, 13, 0, '1070-G30Y', '#98f13b', '2020-09-29 15:09:33'),
(880, 13, 0, '1070-G40Y', '#b0f12e', '2020-09-29 15:09:33'),
(881, 13, 0, '1070-G50Y', '#c5f130', '2020-09-29 15:09:33'),
(882, 13, 0, '1070-G60Y', '#d6f132', '2020-09-29 15:09:33'),
(883, 13, 0, '1070-G70Y', '#e8f134', '2020-09-29 15:09:33'),
(884, 13, 0, '1070-G80Y', '#f1eb35', '2020-09-29 15:09:33'),
(885, 13, 0, '1070-G90Y', '#f1df33', '2020-09-29 15:09:33'),
(886, 13, 0, '1070-R', '#f11f2d', '2020-09-29 15:09:33'),
(887, 13, 0, '1070-R10B', '#f1213a', '2020-09-29 15:09:33'),
(888, 13, 0, '1070-R20B', '#f1234c', '2020-09-29 15:09:33'),
(889, 13, 0, '1070-Y', '#f1d432', '2020-09-29 15:09:33'),
(890, 13, 0, '1070-Y10R', '#f1c430', '2020-09-29 15:09:33'),
(891, 13, 0, '1070-Y20R', '#f1b32e', '2020-09-29 15:09:33'),
(892, 13, 0, '1070-Y30R', '#f1a12c', '2020-09-29 15:09:33'),
(893, 13, 0, '1070-Y40R', '#f1902a', '2020-09-29 15:09:33'),
(894, 13, 0, '1070-Y50R', '#f17e28', '2020-09-29 15:09:33'),
(895, 13, 0, '1070-Y60R', '#f16b26', '2020-09-29 15:09:33'),
(896, 13, 0, '1070-Y70R', '#f15924', '2020-09-29 15:09:33'),
(897, 13, 0, '1070-Y80R', '#f14622', '2020-09-29 15:09:33'),
(898, 13, 0, '1070-Y90R', '#f13326', '2020-09-29 15:09:33'),
(899, 13, 0, '1075-G20Y', '#76f144', '2020-09-29 15:09:33'),
(900, 13, 0, '1075-G40Y', '#adf126', '2020-09-29 15:09:33'),
(901, 13, 0, '1075-G50Y', '#c3f127', '2020-09-29 15:09:33'),
(902, 13, 0, '1075-G60Y', '#d5f129', '2020-09-29 15:09:33'),
(903, 13, 0, '1075-G70Y', '#e7f12b', '2020-09-29 15:09:33'),
(904, 13, 0, '1075-G80Y', '#f1eb2b', '2020-09-29 15:09:33'),
(905, 13, 0, '1075-G90Y', '#f1de2a', '2020-09-29 15:09:33'),
(906, 13, 0, '1080-G30Y', '#91f12c', '2020-09-29 15:09:33'),
(907, 13, 0, '1080-R', '#f11322', '2020-09-29 15:09:33'),
(908, 13, 0, '1080-Y', '#f1d220', '2020-09-29 15:09:33'),
(909, 13, 0, '1080-Y10R', '#f1c01e', '2020-09-29 15:09:33'),
(910, 13, 0, '1080-Y20R', '#f1ad1d', '2020-09-29 15:09:33'),
(911, 13, 0, '1080-Y30R', '#f19b1c', '2020-09-29 15:09:33'),
(912, 13, 0, '1080-Y40R', '#f1881b', '2020-09-29 15:09:33'),
(913, 13, 0, '1080-Y50R', '#f17519', '2020-09-29 15:09:33'),
(914, 13, 0, '1080-Y60R', '#f16218', '2020-09-29 15:09:33'),
(915, 13, 0, '1080-Y70R', '#f14e16', '2020-09-29 15:09:33'),
(916, 13, 0, '1080-Y80R', '#f13b15', '2020-09-29 15:09:33'),
(917, 13, 0, '1080-Y90R', '#f1281a', '2020-09-29 15:09:33'),
(918, 13, 0, '1085-Y80R', '#f1360f', '2020-09-29 15:09:33'),
(919, 13, 0, '1085-Y90R', '#f12214', '2020-09-29 15:09:33'),
(920, 13, 0, '1500-N', '#d8d8d8', '2020-09-29 15:09:33'),
(921, 13, 0, '1502-B', '#dbe1e4', '2020-09-29 15:09:33'),
(922, 13, 0, '1502-B50G', '#dde4e3', '2020-09-29 15:09:33'),
(923, 13, 0, '1502-G', '#dae4de', '2020-09-29 15:09:33'),
(924, 13, 0, '1502-G50Y', '#e2e4dc', '2020-09-29 15:09:33'),
(925, 13, 0, '1502-R', '#e4d7d8', '2020-09-29 15:09:33'),
(926, 13, 0, '1502-R50B', '#e4dce2', '2020-09-29 15:09:33'),
(927, 13, 0, '1502-Y', '#e4e3dc', '2020-09-29 15:09:33'),
(928, 13, 0, '1502-Y50R', '#e4deda', '2020-09-29 15:09:33'),
(929, 13, 0, '1505-G80Y', '#e4e3d3', '2020-09-29 15:09:33'),
(930, 13, 0, '1505-G90Y', '#e4e2d2', '2020-09-29 15:09:33'),
(931, 13, 0, '1505-Y', '#e4e1d2', '2020-09-29 15:09:33'),
(932, 13, 0, '1505-Y10R', '#e4dfd1', '2020-09-29 15:09:33'),
(933, 13, 0, '1505-Y20R', '#e4ddd0', '2020-09-29 15:09:33'),
(934, 13, 0, '1505-Y30R', '#e4dbcf', '2020-09-29 15:09:33'),
(935, 13, 0, '1505-Y40R', '#e4d9ce', '2020-09-29 15:09:33'),
(936, 13, 0, '1505-Y50R', '#e4d7cd', '2020-09-29 15:09:33'),
(937, 13, 0, '1505-Y60R', '#e4d4cc', '2020-09-29 15:09:33'),
(938, 13, 0, '1505-Y70R', '#e4d1ca', '2020-09-29 15:09:33'),
(939, 13, 0, '1505-Y80R', '#e4cdc9', '2020-09-29 15:09:33'),
(940, 13, 0, '1505-Y90R', '#e4cac8', '2020-09-29 15:09:33'),
(941, 13, 0, '1510-B', '#bdd5e4', '2020-09-29 15:09:33'),
(942, 13, 0, '1510-B20G', '#c1dee4', '2020-09-29 15:09:33'),
(943, 13, 0, '1510-B50G', '#c3e4e3', '2020-09-29 15:09:33'),
(944, 13, 0, '1510-B80G', '#c0e4dc', '2020-09-29 15:09:33'),
(945, 13, 0, '1510-G', '#b8e4c9', '2020-09-29 15:09:33'),
(946, 13, 0, '1510-G20Y', '#cce4c2', '2020-09-29 15:09:33'),
(947, 13, 0, '1510-G40Y', '#d7e4be', '2020-09-29 15:09:33'),
(948, 13, 0, '1510-G60Y', '#dfe4c1', '2020-09-29 15:09:33'),
(949, 13, 0, '1510-G80Y', '#e4e3c3', '2020-09-29 15:09:33'),
(950, 13, 0, '1510-G90Y', '#e4e0c2', '2020-09-29 15:09:33'),
(951, 13, 0, '1510-R', '#e4adb1', '2020-09-29 15:09:33'),
(952, 13, 0, '1510-R10B', '#e4afb6', '2020-09-29 15:09:33'),
(953, 13, 0, '1510-R20B', '#e4b2bc', '2020-09-29 15:09:33'),
(954, 13, 0, '1510-R40B', '#e4bacf', '2020-09-29 15:09:33'),
(955, 13, 0, '1510-R60B', '#d8bee4', '2020-09-29 15:09:33'),
(956, 13, 0, '1510-R80B', '#b2bbe4', '2020-09-29 15:09:33'),
(957, 13, 0, '1510-R90B', '#b6c5e4', '2020-09-29 15:09:33'),
(958, 13, 0, '1510-Y', '#e4dec1', '2020-09-29 15:09:33'),
(959, 13, 0, '1510-Y10R', '#e4dbbf', '2020-09-29 15:09:33'),
(960, 13, 0, '1510-Y20R', '#e4d8be', '2020-09-29 15:09:33'),
(961, 13, 0, '1510-Y30R', '#e4d4bc', '2020-09-29 15:09:33'),
(962, 13, 0, '1510-Y40R', '#e4d0ba', '2020-09-29 15:09:33'),
(963, 13, 0, '1510-Y50R', '#e4cbb8', '2020-09-29 15:09:33'),
(964, 13, 0, '1510-Y60R', '#e4c6b6', '2020-09-29 15:09:33'),
(965, 13, 0, '1510-Y70R', '#e4c0b4', '2020-09-29 15:09:33'),
(966, 13, 0, '1510-Y80R', '#e4bab1', '2020-09-29 15:09:33'),
(967, 13, 0, '1510-Y90R', '#e4b4b1', '2020-09-29 15:09:33'),
(968, 13, 0, '1515-B', '#accfe4', '2020-09-29 15:09:33'),
(969, 13, 0, '1515-B20G', '#b1dbe4', '2020-09-29 15:09:33'),
(970, 13, 0, '1515-B50G', '#b3e4e2', '2020-09-29 15:09:33'),
(971, 13, 0, '1515-B80G', '#afe4d8', '2020-09-29 15:09:33'),
(972, 13, 0, '1515-G', '#a5e4bd', '2020-09-29 15:09:33'),
(973, 13, 0, '1515-G20Y', '#c1e4b3', '2020-09-29 15:09:33'),
(974, 13, 0, '1515-G40Y', '#d1e4ad', '2020-09-29 15:09:33'),
(975, 13, 0, '1515-G60Y', '#dde4b1', '2020-09-29 15:09:33'),
(976, 13, 0, '1515-G80Y', '#e4e2b3', '2020-09-29 15:09:33'),
(977, 13, 0, '1515-G90Y', '#e4dfb2', '2020-09-29 15:09:33'),
(978, 13, 0, '1515-R', '#e4989d', '2020-09-29 15:09:33'),
(979, 13, 0, '1515-R10B', '#e49ba3', '2020-09-29 15:09:33'),
(980, 13, 0, '1515-R20B', '#e49eac', '2020-09-29 15:09:33'),
(981, 13, 0, '1515-R40B', '#e4a8c6', '2020-09-29 15:09:33'),
(982, 13, 0, '1515-R60B', '#d2ade4', '2020-09-29 15:09:33'),
(983, 13, 0, '1515-R80B', '#9daae4', '2020-09-29 15:09:33'),
(984, 13, 0, '1515-R90B', '#a3b8e4', '2020-09-29 15:09:33'),
(985, 13, 0, '1515-Y', '#e4dcb1', '2020-09-29 15:09:33'),
(986, 13, 0, '1515-Y10R', '#e4d7af', '2020-09-29 15:09:33'),
(987, 13, 0, '1515-Y20R', '#e4d2ad', '2020-09-29 15:09:33'),
(988, 13, 0, '1515-Y30R', '#e4cdab', '2020-09-29 15:09:33'),
(989, 13, 0, '1515-Y40R', '#e4c7a8', '2020-09-29 15:09:33'),
(990, 13, 0, '1515-Y50R', '#e4c0a6', '2020-09-29 15:09:33'),
(991, 13, 0, '1515-Y60R', '#e4b9a3', '2020-09-29 15:09:33'),
(992, 13, 0, '1515-Y70R', '#e4b1a0', '2020-09-29 15:09:33'),
(993, 13, 0, '1515-Y80R', '#e4a99d', '2020-09-29 15:09:33'),
(994, 13, 0, '1515-Y90R', '#e4a19c', '2020-09-29 15:09:33'),
(995, 13, 0, '1550-R70B', '#8857e4', '2020-09-29 15:09:33'),
(996, 13, 0, '1550-R80B', '#405ee4', '2020-09-29 15:09:33'),
(997, 13, 0, '1555-B10G', '#49bce4', '2020-09-29 15:09:33'),
(998, 13, 0, '1555-R70B', '#824ee4', '2020-09-29 15:09:33'),
(999, 13, 0, '1555-R80B', '#3757e4', '2020-09-29 15:09:33'),
(1000, 13, 0, '1560-R90B', '#346ee4', '2020-09-29 15:09:33'),
(1001, 13, 0, '1565-B', '#33a1e4', '2020-09-29 15:09:33'),
(1002, 13, 0, '1565-G', '#2de474', '2020-09-29 15:09:33'),
(1003, 13, 0, '1575-R10B', '#e41931', '2020-09-29 15:09:33'),
(1004, 13, 0, '1580-R', '#e41220', '2020-09-29 15:09:33'),
(1005, 13, 0, '1580-Y80R', '#e43814', '2020-09-29 15:09:33'),
(1006, 13, 0, '1580-Y90R', '#e42518', '2020-09-29 15:09:33'),
(1007, 13, 0, '2000-N', '#cccccc', '2020-09-29 15:09:33'),
(1008, 13, 0, '2002-B', '#cfd3d6', '2020-09-29 15:09:33'),
(1009, 13, 0, '2002-B50G', '#d0d6d6', '2020-09-29 15:09:33'),
(1010, 13, 0, '2002-G', '#cdd6d1', '2020-09-29 15:09:33'),
(1011, 13, 0, '2002-G50Y', '#d5d6cf', '2020-09-29 15:09:33'),
(1012, 13, 0, '2002-R', '#d6cbcb', '2020-09-29 15:09:33'),
(1013, 13, 0, '2002-R50B', '#d6cfd5', '2020-09-29 15:09:33'),
(1014, 13, 0, '2002-Y', '#d6d5cf', '2020-09-29 15:09:33'),
(1015, 13, 0, '2002-Y50R', '#d6d1cd', '2020-09-29 15:09:33'),
(1016, 13, 0, '2005-B', '#c3cfd6', '2020-09-29 15:09:33'),
(1017, 13, 0, '2005-B20G', '#c5d3d6', '2020-09-29 15:09:33'),
(1018, 13, 0, '2005-B20G', '#c5d3d6', '2020-09-29 15:09:33'),
(1019, 13, 0, '2005-B50G', '#c6d6d6', '2020-09-29 15:09:33'),
(1020, 13, 0, '2005-B80G', '#c5d6d2', '2020-09-29 15:09:33'),
(1021, 13, 0, '2005-B80G', '#c5d6d2', '2020-09-29 15:09:33'),
(1022, 13, 0, '2005-G', '#c0d6c9', '2020-09-29 15:09:33'),
(1023, 13, 0, '2005-G10Y', '#c6d6c7', '2020-09-29 15:09:33'),
(1024, 13, 0, '2005-G20Y', '#cbd6c6', '2020-09-29 15:09:33'),
(1025, 13, 0, '2005-G20Y', '#cbd6c6', '2020-09-29 15:09:33'),
(1026, 13, 0, '2005-G30Y', '#ced6c5', '2020-09-29 15:09:33'),
(1027, 13, 0, '2005-G40Y', '#d0d6c4', '2020-09-29 15:09:33'),
(1028, 13, 0, '2005-G50Y', '#d2d6c5', '2020-09-29 15:09:33'),
(1029, 13, 0, '2005-G60Y', '#d4d6c6', '2020-09-29 15:09:33'),
(1030, 13, 0, '2005-G70Y', '#d6d6c6', '2020-09-29 15:09:33'),
(1031, 13, 0, '2005-G80Y', '#d6d6c6', '2020-09-29 15:09:33'),
(1032, 13, 0, '2005-G90Y', '#d6d5c6', '2020-09-29 15:09:33'),
(1033, 13, 0, '2005-R', '#d6bbbc', '2020-09-29 15:09:33'),
(1034, 13, 0, '2005-R10B', '#d6bcbf', '2020-09-29 15:09:33'),
(1035, 13, 0, '2005-R20B', '#d6bdc2', '2020-09-29 15:09:33'),
(1036, 13, 0, '2005-R20B', '#d6bdc2', '2020-09-29 15:09:33'),
(1037, 13, 0, '2005-R30B', '#d6bfc7', '2020-09-29 15:09:33'),
(1038, 13, 0, '2005-R40B', '#d6c2cc', '2020-09-29 15:09:33'),
(1039, 13, 0, '2005-R50B', '#d6c5d3', '2020-09-29 15:09:33'),
(1040, 13, 0, '2005-R50B', '#d6c5d3', '2020-09-29 15:09:33'),
(1041, 13, 0, '2005-R60B', '#d0c4d6', '2020-09-29 15:09:33'),
(1042, 13, 0, '2005-R70B', '#cac3d6', '2020-09-29 15:09:33'),
(1043, 13, 0, '2005-R80B', '#bdc2d6', '2020-09-29 15:09:33'),
(1044, 13, 0, '2005-R90B', '#c0c7d6', '2020-09-29 15:09:33'),
(1045, 13, 0, '2005-Y', '#d6d4c5', '2020-09-29 15:09:33'),
(1046, 13, 0, '2005-Y10R', '#d6d2c5', '2020-09-29 15:09:33'),
(1047, 13, 0, '2005-Y20R', '#d6d0c4', '2020-09-29 15:09:33'),
(1048, 13, 0, '2005-Y30R', '#d6cfc3', '2020-09-29 15:09:33'),
(1049, 13, 0, '2005-Y40R', '#d6ccc2', '2020-09-29 15:09:33'),
(1050, 13, 0, '2005-Y50R', '#d6cac1', '2020-09-29 15:09:33'),
(1051, 13, 0, '2005-Y50R', '#d6cac1', '2020-09-29 15:09:33'),
(1052, 13, 0, '2005-Y60R', '#d6c7c0', '2020-09-29 15:09:33'),
(1053, 13, 0, '2005-Y70R', '#d6c4be', '2020-09-29 15:09:33'),
(1054, 13, 0, '2005-Y80R', '#d6c1bd', '2020-09-29 15:09:33'),
(1055, 13, 0, '2005-Y90R', '#d6bebc', '2020-09-29 15:09:33'),
(1056, 13, 0, '2010-B', '#b2c9d6', '2020-09-29 15:09:33'),
(1057, 13, 0, '2010-B10G', '#b4ced6', '2020-09-29 15:09:33'),
(1058, 13, 0, '2010-B30G', '#b6d3d6', '2020-09-29 15:09:33'),
(1059, 13, 0, '2010-B50G', '#b7d6d5', '2020-09-29 15:09:33'),
(1060, 13, 0, '2010-B70G', '#b6d6d1', '2020-09-29 15:09:33'),
(1061, 13, 0, '2010-B90G', '#b0d6c5', '2020-09-29 15:09:33'),
(1062, 13, 0, '2010-G', '#add6bd', '2020-09-29 15:09:33'),
(1063, 13, 0, '2010-G10Y', '#b8d6b9', '2020-09-29 15:09:33'),
(1064, 13, 0, '2010-G20Y', '#c0d6b7', '2020-09-29 15:09:33'),
(1065, 13, 0, '2010-G30Y', '#c6d6b4', '2020-09-29 15:09:33'),
(1066, 13, 0, '2010-G40Y', '#cad6b3', '2020-09-29 15:09:33'),
(1067, 13, 0, '2010-G50Y', '#ced6b4', '2020-09-29 15:09:33'),
(1068, 13, 0, '2010-G60Y', '#d2d6b6', '2020-09-29 15:09:33'),
(1069, 13, 0, '2010-G70Y', '#d5d6b7', '2020-09-29 15:09:33'),
(1070, 13, 0, '2010-G80Y', '#d6d5b7', '2020-09-29 15:09:33'),
(1071, 13, 0, '2010-G90Y', '#d6d3b6', '2020-09-29 15:09:33'),
(1072, 13, 0, '2010-R', '#d6a3a6', '2020-09-29 15:09:33'),
(1073, 13, 0, '2010-R10B', '#d6a5ab', '2020-09-29 15:09:33'),
(1074, 13, 0, '2010-R20B', '#d6a8b1', '2020-09-29 15:09:33'),
(1075, 13, 0, '2010-R30B', '#d6abb9', '2020-09-29 15:09:33'),
(1076, 13, 0, '2010-R40B', '#d6afc3', '2020-09-29 15:09:33'),
(1077, 13, 0, '2010-R50B', '#d6b5d0', '2020-09-29 15:09:33'),
(1078, 13, 0, '2010-R60B', '#cbb3d6', '2020-09-29 15:09:33'),
(1079, 13, 0, '2010-R70B', '#bfb2d6', '2020-09-29 15:09:33'),
(1080, 13, 0, '2010-R80B', '#a7b0d6', '2020-09-29 15:09:33'),
(1081, 13, 0, '2010-R90B', '#abb9d6', '2020-09-29 15:09:33'),
(1082, 13, 0, '2010-Y', '#d6d1b6', '2020-09-29 15:09:33'),
(1083, 13, 0, '2010-Y10R', '#d6ceb4', '2020-09-29 15:09:33'),
(1084, 13, 0, '2010-Y20R', '#d6cbb3', '2020-09-29 15:09:33'),
(1085, 13, 0, '2010-Y30R', '#d6c7b1', '2020-09-29 15:09:33'),
(1086, 13, 0, '2010-Y40R', '#d6c3af', '2020-09-29 15:09:33'),
(1087, 13, 0, '2010-Y50R', '#d6bfae', '2020-09-29 15:09:33'),
(1088, 13, 0, '2010-Y60R', '#d6baac', '2020-09-29 15:09:33'),
(1089, 13, 0, '2010-Y70R', '#d6b5a9', '2020-09-29 15:09:33'),
(1090, 13, 0, '2010-Y80R', '#d6afa7', '2020-09-29 15:09:33'),
(1091, 13, 0, '2010-Y90R', '#d6a9a6', '2020-09-29 15:09:33'),
(1092, 13, 0, '2020-B', '#92bdd6', '2020-09-29 15:09:33'),
(1093, 13, 0, '2020-B10G', '#96c6d6', '2020-09-29 15:09:33'),
(1094, 13, 0, '2020-B30G', '#9ad1d6', '2020-09-29 15:09:33'),
(1095, 13, 0, '2020-B40G', '#9bd5d6', '2020-09-29 15:09:33'),
(1096, 13, 0, '2020-B50G', '#9bd6d4', '2020-09-29 15:09:33'),
(1097, 13, 0, '2020-B60G', '#9ad6d1', '2020-09-29 15:09:33'),
(1098, 13, 0, '2020-B70G', '#98d6cd', '2020-09-29 15:09:33'),
(1099, 13, 0, '2020-B90G', '#90d6b7', '2020-09-29 15:09:33'),
(1100, 13, 0, '2020-G', '#8bd6a8', '2020-09-29 15:09:33'),
(1101, 13, 0, '2020-G10Y', '#9fd6a1', '2020-09-29 15:09:33'),
(1102, 13, 0, '2020-G20Y', '#add69c', '2020-09-29 15:09:33'),
(1103, 13, 0, '2020-G30Y', '#b7d697', '2020-09-29 15:09:33'),
(1104, 13, 0, '2020-G40Y', '#c0d694', '2020-09-29 15:09:33'),
(1105, 13, 0, '2020-G50Y', '#c8d696', '2020-09-29 15:09:33'),
(1106, 13, 0, '2020-G60Y', '#ced699', '2020-09-29 15:09:33'),
(1107, 13, 0, '2020-G70Y', '#d3d69b', '2020-09-29 15:09:33'),
(1108, 13, 0, '2020-G80Y', '#d6d49b', '2020-09-29 15:09:33'),
(1109, 13, 0, '2020-G90Y', '#d6d09a', '2020-09-29 15:09:33'),
(1110, 13, 0, '2020-R', '#d67e83', '2020-09-29 15:09:33'),
(1111, 13, 0, '2020-R10B', '#d6808b', '2020-09-29 15:09:33'),
(1112, 13, 0, '2020-R20B', '#d68494', '2020-09-29 15:09:33'),
(1113, 13, 0, '2020-R30B', '#d688a1', '2020-09-29 15:09:33'),
(1114, 13, 0, '2020-R40B', '#d68fb3', '2020-09-29 15:09:33'),
(1115, 13, 0, '2020-R50B', '#d697ca', '2020-09-29 15:09:33'),
(1116, 13, 0, '2020-R60B', '#c194d6', '2020-09-29 15:09:33'),
(1117, 13, 0, '2020-R70B', '#ab94d6', '2020-09-29 15:09:33'),
(1118, 13, 0, '2020-R80B', '#8392d6', '2020-09-29 15:09:33'),
(1119, 13, 0, '2020-R90B', '#89a2d6', '2020-09-29 15:09:33'),
(1120, 13, 0, '2020-Y', '#d6cd98', '2020-09-29 15:09:33'),
(1121, 13, 0, '2020-Y10R', '#d6c796', '2020-09-29 15:09:33'),
(1122, 13, 0, '2020-Y20R', '#d6c194', '2020-09-29 15:09:33'),
(1123, 13, 0, '2020-Y30R', '#d6bb92', '2020-09-29 15:09:33'),
(1124, 13, 0, '2020-Y40R', '#d6b38f', '2020-09-29 15:09:33'),
(1125, 13, 0, '2020-Y50R', '#d6ac8c', '2020-09-29 15:09:33'),
(1126, 13, 0, '2020-Y60R', '#d6a389', '2020-09-29 15:09:33'),
(1127, 13, 0, '2020-Y70R', '#d69b86', '2020-09-29 15:09:33'),
(1128, 13, 0, '2020-Y80R', '#d69183', '2020-09-29 15:09:33'),
(1129, 13, 0, '2020-Y90R', '#d68882', '2020-09-29 15:09:33'),
(1130, 13, 0, '2030-B', '#77b3d6', '2020-09-29 15:09:33'),
(1131, 13, 0, '2030-B10G', '#7bbfd6', '2020-09-29 15:09:33'),
(1132, 13, 0, '2030-B30G', '#80ced6', '2020-09-29 15:09:33'),
(1133, 13, 0, '2030-B40G', '#82d4d6', '2020-09-29 15:09:33'),
(1134, 13, 0, '2030-B50G', '#81d6d3', '2020-09-29 15:09:33'),
(1135, 13, 0, '2030-B60G', '#80d6ce', '2020-09-29 15:09:33'),
(1136, 13, 0, '2030-B70G', '#7ed6c9', '2020-09-29 15:09:33'),
(1137, 13, 0, '2030-B90G', '#75d6ab', '2020-09-29 15:09:33'),
(1138, 13, 0, '2030-G', '#6fd697', '2020-09-29 15:09:33'),
(1139, 13, 0, '2030-G10Y', '#8ad68d', '2020-09-29 15:09:33'),
(1140, 13, 0, '2030-G20Y', '#9cd685', '2020-09-29 15:09:33'),
(1141, 13, 0, '2030-G30Y', '#abd67e', '2020-09-29 15:09:33'),
(1142, 13, 0, '2030-G40Y', '#b7d679', '2020-09-29 15:09:33'),
(1143, 13, 0, '2030-G50Y', '#c2d67c', '2020-09-29 15:09:33'),
(1144, 13, 0, '2030-G60Y', '#cad67f', '2020-09-29 15:09:33'),
(1145, 13, 0, '2030-G70Y', '#d2d681', '2020-09-29 15:09:33'),
(1146, 13, 0, '2030-G80Y', '#d6d481', '2020-09-29 15:09:33'),
(1147, 13, 0, '2030-G90Y', '#d6ce80', '2020-09-29 15:09:33'),
(1148, 13, 0, '2030-R', '#d66168', '2020-09-29 15:09:33'),
(1149, 13, 0, '2030-R10B', '#d66471', '2020-09-29 15:09:33'),
(1150, 13, 0, '2030-R20B', '#d6677e', '2020-09-29 15:09:33'),
(1151, 13, 0, '2030-R30B', '#d66c8e', '2020-09-29 15:09:33'),
(1152, 13, 0, '2030-R40B', '#d673a5', '2020-09-29 15:09:33'),
(1153, 13, 0, '2030-R50B', '#d67dc5', '2020-09-29 15:09:33'),
(1154, 13, 0, '2030-R60B', '#b979d6', '2020-09-29 15:09:33'),
(1155, 13, 0, '2030-R70B', '#9b7bd6', '2020-09-29 15:09:33'),
(1156, 13, 0, '2030-R80B', '#677bd6', '2020-09-29 15:09:33'),
(1157, 13, 0, '2030-R90B', '#6d8fd6', '2020-09-29 15:09:33'),
(1158, 13, 0, '2030-Y', '#d6c97e', '2020-09-29 15:09:33'),
(1159, 13, 0, '2030-Y10R', '#d6c17c', '2020-09-29 15:09:33'),
(1160, 13, 0, '2030-Y20R', '#d6b979', '2020-09-29 15:09:33'),
(1161, 13, 0, '2030-Y30R', '#d6b076', '2020-09-29 15:09:33'),
(1162, 13, 0, '2030-Y40R', '#d6a674', '2020-09-29 15:09:33'),
(1163, 13, 0, '2030-Y50R', '#d69c70', '2020-09-29 15:09:33'),
(1164, 13, 0, '2030-Y60R', '#d6916d', '2020-09-29 15:09:33'),
(1165, 13, 0, '2030-Y70R', '#d6856a', '2020-09-29 15:09:33'),
(1166, 13, 0, '2030-Y80R', '#d67966', '2020-09-29 15:09:33'),
(1167, 13, 0, '2030-Y90R', '#d66d66', '2020-09-29 15:09:33'),
(1168, 13, 0, '2040-B', '#60aad6', '2020-09-29 15:09:33'),
(1169, 13, 0, '2040-B10G', '#64b9d6', '2020-09-29 15:09:33'),
(1170, 13, 0, '2040-B20G', '#66c4d6', '2020-09-29 15:09:33'),
(1171, 13, 0, '2040-B30G', '#68ccd6', '2020-09-29 15:09:33'),
(1172, 13, 0, '2040-B40G', '#6ad3d6', '2020-09-29 15:09:33'),
(1173, 13, 0, '2040-B50G', '#6ad6d3', '2020-09-29 15:09:33'),
(1174, 13, 0, '2040-B60G', '#68d6cc', '2020-09-29 15:09:33'),
(1175, 13, 0, '2040-B70G', '#67d6c6', '2020-09-29 15:09:33'),
(1176, 13, 0, '2040-B80G', '#65d6bd', '2020-09-29 15:09:33'),
(1177, 13, 0, '2040-B90G', '#5dd6a0', '2020-09-29 15:09:33'),
(1178, 13, 0, '2040-G', '#58d689', '2020-09-29 15:09:33'),
(1179, 13, 0, '2040-G10Y', '#77d67c', '2020-09-29 15:09:33'),
(1180, 13, 0, '2040-G20Y', '#8ed671', '2020-09-29 15:09:33'),
(1181, 13, 0, '2040-G30Y', '#a0d668', '2020-09-29 15:09:33'),
(1182, 13, 0, '2040-G40Y', '#afd661', '2020-09-29 15:09:33'),
(1183, 13, 0, '2040-G50Y', '#bcd664', '2020-09-29 15:09:33'),
(1184, 13, 0, '2040-G60Y', '#c7d667', '2020-09-29 15:09:33'),
(1185, 13, 0, '2040-G70Y', '#d1d66a', '2020-09-29 15:09:33'),
(1186, 13, 0, '2040-G80Y', '#d6d36a', '2020-09-29 15:09:33'),
(1187, 13, 0, '2040-G90Y', '#d6cc68', '2020-09-29 15:09:33'),
(1188, 13, 0, '2040-R', '#d64a53', '2020-09-29 15:09:33'),
(1189, 13, 0, '2040-R10B', '#d64d5d', '2020-09-29 15:09:33'),
(1190, 13, 0, '2040-R20B', '#d6506b', '2020-09-29 15:09:33'),
(1191, 13, 0, '2040-R30B', '#d6557e', '2020-09-29 15:09:33'),
(1192, 13, 0, '2040-R40B', '#d65c99', '2020-09-29 15:09:33'),
(1193, 13, 0, '2040-R50B', '#d666c1', '2020-09-29 15:09:33'),
(1194, 13, 0, '2040-R60B', '#b162d6', '2020-09-29 15:09:33'),
(1195, 13, 0, '2040-R70B', '#8d65d6', '2020-09-29 15:09:33'),
(1196, 13, 0, '2040-R80B', '#4f68d6', '2020-09-29 15:09:33'),
(1197, 13, 0, '2040-R90B', '#5580d6', '2020-09-29 15:09:33'),
(1198, 13, 0, '2040-Y', '#d6c667', '2020-09-29 15:09:33'),
(1199, 13, 0, '2040-Y10R', '#d6bc64', '2020-09-29 15:09:33'),
(1200, 13, 0, '2040-Y20R', '#d6b162', '2020-09-29 15:09:33'),
(1201, 13, 0, '2040-Y30R', '#d6a65f', '2020-09-29 15:09:33'),
(1202, 13, 0, '2040-Y40R', '#d69a5c', '2020-09-29 15:09:33'),
(1203, 13, 0, '2040-Y50R', '#d68e59', '2020-09-29 15:09:33'),
(1204, 13, 0, '2040-Y60R', '#d68156', '2020-09-29 15:09:33'),
(1205, 13, 0, '2040-Y70R', '#d67452', '2020-09-29 15:09:33'),
(1206, 13, 0, '2040-Y80R', '#d6664f', '2020-09-29 15:09:33'),
(1207, 13, 0, '2040-Y90R', '#d65950', '2020-09-29 15:09:33'),
(1208, 13, 0, '2050-B', '#4ba2d6', '2020-09-29 15:09:33'),
(1209, 13, 0, '2050-B10G', '#4fb4d6', '2020-09-29 15:09:33'),
(1210, 13, 0, '2050-B20G', '#51c0d6', '2020-09-29 15:09:33'),
(1211, 13, 0, '2050-B30G', '#53cad6', '2020-09-29 15:09:33'),
(1212, 13, 0, '2050-B40G', '#55d3d6', '2020-09-29 15:09:33'),
(1213, 13, 0, '2050-B50G', '#55d6d2', '2020-09-29 15:09:33'),
(1214, 13, 0, '2050-B60G', '#53d6ca', '2020-09-29 15:09:33'),
(1215, 13, 0, '2050-B70G', '#51d6c3', '2020-09-29 15:09:33'),
(1216, 13, 0, '2050-B80G', '#4fd6b8', '2020-09-29 15:09:33'),
(1217, 13, 0, '2050-B90G', '#49d697', '2020-09-29 15:09:33'),
(1218, 13, 0, '2050-G', '#44d67d', '2020-09-29 15:09:33'),
(1219, 13, 0, '2050-G10Y', '#68d66c', '2020-09-29 15:09:33'),
(1220, 13, 0, '2050-G20Y', '#82d660', '2020-09-29 15:09:33'),
(1221, 13, 0, '2050-G30Y', '#97d655', '2020-09-29 15:09:33'),
(1222, 13, 0, '2050-G40Y', '#a8d64d', '2020-09-29 15:09:33'),
(1223, 13, 0, '2050-G50Y', '#b7d64f', '2020-09-29 15:09:33'),
(1224, 13, 0, '2050-G60Y', '#c4d652', '2020-09-29 15:09:33'),
(1225, 13, 0, '2050-G70Y', '#d0d654', '2020-09-29 15:09:33'),
(1226, 13, 0, '2050-G80Y', '#d6d255', '2020-09-29 15:09:33'),
(1227, 13, 0, '2050-G90Y', '#d6ca53', '2020-09-29 15:09:33'),
(1228, 13, 0, '2050-R', '#d63842', '2020-09-29 15:09:33'),
(1229, 13, 0, '2050-R10B', '#d63a4d', '2020-09-29 15:09:33'),
(1230, 13, 0, '2050-R20B', '#d63d5c', '2020-09-29 15:09:33'),
(1231, 13, 0, '2050-R30B', '#d64171', '2020-09-29 15:09:33'),
(1232, 13, 0, '2050-R40B', '#d6478f', '2020-09-29 15:09:33'),
(1233, 13, 0, '2050-R50B', '#d650bd', '2020-09-29 15:09:33'),
(1234, 13, 0, '2050-R60B', '#aa4dd6', '2020-09-29 15:09:33'),
(1235, 13, 0, '2050-R70B', '#8052d6', '2020-09-29 15:09:33'),
(1236, 13, 0, '2050-R80B', '#3c59d6', '2020-09-29 15:09:33'),
(1237, 13, 0, '2050-R90B', '#4172d6', '2020-09-29 15:09:33'),
(1238, 13, 0, '2050-Y', '#d6c251', '2020-09-29 15:09:33'),
(1239, 13, 0, '2050-Y10R', '#d6b74f', '2020-09-29 15:09:33'),
(1240, 13, 0, '2050-Y20R', '#d6aa4d', '2020-09-29 15:09:33'),
(1241, 13, 0, '2050-Y30R', '#d69e4a', '2020-09-29 15:09:33'),
(1242, 13, 0, '2050-Y40R', '#d69047', '2020-09-29 15:09:33'),
(1243, 13, 0, '2050-Y50R', '#d68345', '2020-09-29 15:09:33'),
(1244, 13, 0, '2050-Y60R', '#d67442', '2020-09-29 15:09:33'),
(1245, 13, 0, '2050-Y70R', '#d6663f', '2020-09-29 15:09:33'),
(1246, 13, 0, '2050-Y80R', '#d6573c', '2020-09-29 15:09:33'),
(1247, 13, 0, '2050-Y90R', '#d6483e', '2020-09-29 15:09:33'),
(1248, 13, 0, '2055-B10G', '#45b1d6', '2020-09-29 15:09:33'),
(1249, 13, 0, '2060-B', '#399bd6', '2020-09-29 15:09:33'),
(1250, 13, 0, '2060-B50G', '#41d6d1', '2020-09-29 15:09:33'),
(1251, 13, 0, '2060-B70G', '#3ed6c0', '2020-09-29 15:09:33'),
(1252, 13, 0, '2060-B90G', '#37d68f', '2020-09-29 15:09:33'),
(1253, 13, 0, '2060-G', '#32d672', '2020-09-29 15:09:33'),
(1254, 13, 0, '2060-G10Y', '#5ad65f', '2020-09-29 15:09:33'),
(1255, 13, 0, '2060-G20Y', '#77d650', '2020-09-29 15:09:33'),
(1256, 13, 0, '2060-G30Y', '#8fd644', '2020-09-29 15:09:33'),
(1257, 13, 0, '2060-G40Y', '#a2d63a', '2020-09-29 15:09:33'),
(1258, 13, 0, '2060-G50Y', '#b3d63c', '2020-09-29 15:09:33'),
(1259, 13, 0, '2060-G60Y', '#c1d63e', '2020-09-29 15:09:33'),
(1260, 13, 0, '2060-G70Y', '#cfd640', '2020-09-29 15:09:33'),
(1261, 13, 0, '2060-G80Y', '#d6d241', '2020-09-29 15:09:33'),
(1262, 13, 0, '2060-G90Y', '#d6c83f', '2020-09-29 15:09:33'),
(1263, 13, 0, '2060-R', '#d62934', '2020-09-29 15:09:33'),
(1264, 13, 0, '2060-R10B', '#d62a3f', '2020-09-29 15:09:33'),
(1265, 13, 0, '2060-R20B', '#d62d4f', '2020-09-29 15:09:33'),
(1266, 13, 0, '2060-R30B', '#d63065', '2020-09-29 15:09:33'),
(1267, 13, 0, '2060-R40B', '#d63586', '2020-09-29 15:09:33'),
(1268, 13, 0, '2060-R70B', '#7642d6', '2020-09-29 15:09:33'),
(1269, 13, 0, '2060-R80B', '#2c4cd6', '2020-09-29 15:09:33'),
(1270, 13, 0, '2060-R90B', '#3067d6', '2020-09-29 15:09:33'),
(1271, 13, 0, '2060-Y', '#d6c03e', '2020-09-29 15:09:33'),
(1272, 13, 0, '2060-Y10R', '#d6b23c', '2020-09-29 15:09:33'),
(1273, 13, 0, '2060-Y20R', '#d6a43a', '2020-09-29 15:09:33'),
(1274, 13, 0, '2060-Y30R', '#d69638', '2020-09-29 15:09:33'),
(1275, 13, 0, '2060-Y40R', '#d68835', '2020-09-29 15:09:33'),
(1276, 13, 0, '2060-Y50R', '#d67933', '2020-09-29 15:09:33'),
(1277, 13, 0, '2060-Y60R', '#d66931', '2020-09-29 15:09:33'),
(1278, 13, 0, '2060-Y70R', '#d6592e', '2020-09-29 15:09:33'),
(1279, 13, 0, '2060-Y80R', '#d6492c', '2020-09-29 15:09:33'),
(1280, 13, 0, '2060-Y90R', '#d6392f', '2020-09-29 15:09:33'),
(1281, 13, 0, '2065-B', '#3098d6', '2020-09-29 15:09:33'),
(1282, 13, 0, '2065-R20B', '#d62649', '2020-09-29 15:09:33'),
(1283, 13, 0, '2065-R90B', '#2962d6', '2020-09-29 15:09:33'),
(1284, 13, 0, '2070-G10Y', '#4ed654', '2020-09-29 15:09:33'),
(1285, 13, 0, '2070-G20Y', '#6ed643', '2020-09-29 15:09:33'),
(1286, 13, 0, '2070-G30Y', '#87d635', '2020-09-29 15:09:33'),
(1287, 13, 0, '2070-G40Y', '#9dd629', '2020-09-29 15:09:33'),
(1288, 13, 0, '2070-G50Y', '#afd62b', '2020-09-29 15:09:33'),
(1289, 13, 0, '2070-G60Y', '#bed62d', '2020-09-29 15:09:33'),
(1290, 13, 0, '2070-G70Y', '#ced62e', '2020-09-29 15:09:33'),
(1291, 13, 0, '2070-G80Y', '#d6d12f', '2020-09-29 15:09:33'),
(1292, 13, 0, '2070-G90Y', '#d6c62d', '2020-09-29 15:09:33'),
(1293, 13, 0, '2070-R', '#d61c28', '2020-09-29 15:09:33'),
(1294, 13, 0, '2070-R10B', '#d61d34', '2020-09-29 15:09:33'),
(1295, 13, 0, '2070-Y', '#d6bd2c', '2020-09-29 15:09:33'),
(1296, 13, 0, '2070-Y10R', '#d6ae2b', '2020-09-29 15:09:33'),
(1297, 13, 0, '2070-Y20R', '#d69f29', '2020-09-29 15:09:33'),
(1298, 13, 0, '2070-Y30R', '#d68f27', '2020-09-29 15:09:33'),
(1299, 13, 0, '2070-Y40R', '#d68026', '2020-09-29 15:09:33'),
(1300, 13, 0, '2070-Y50R', '#d67024', '2020-09-29 15:09:33'),
(1301, 13, 0, '2070-Y60R', '#d65f22', '2020-09-29 15:09:33'),
(1302, 13, 0, '2070-Y70R', '#d64f20', '2020-09-29 15:09:33'),
(1303, 13, 0, '2070-Y80R', '#d63e1e', '2020-09-29 15:09:33'),
(1304, 13, 0, '2070-Y90R', '#d62d22', '2020-09-29 15:09:33'),
(1305, 13, 0, '2075-G20Y', '#69d63c', '2020-09-29 15:09:33'),
(1306, 13, 0, '2075-G30Y', '#84d62e', '2020-09-29 15:09:33'),
(1307, 13, 0, '2075-Y60R', '#d65b1b', '2020-09-29 15:09:33'),
(1308, 13, 0, '2075-Y70R', '#d64a1a', '2020-09-29 15:09:33'),
(1309, 13, 0, '2500-N', '#bfbfbf', '2020-09-29 15:09:33'),
(1310, 13, 0, '2502-B', '#c2c6c9', '2020-09-29 15:09:33'),
(1311, 13, 0, '2502-G', '#c0c9c4', '2020-09-29 15:09:33'),
(1312, 13, 0, '2502-R', '#c9bebf', '2020-09-29 15:09:33'),
(1313, 13, 0, '2502-Y', '#c9c8c2', '2020-09-29 15:09:33'),
(1314, 13, 0, '2555-B20G', '#43b3c9', '2020-09-29 15:09:33'),
(1315, 13, 0, '2555-B30G', '#44bcc9', '2020-09-29 15:09:33'),
(1316, 13, 0, '2555-B40G', '#46c5c9', '2020-09-29 15:09:33'),
(1317, 13, 0, '2555-B60G', '#44c9bd', '2020-09-29 15:09:33'),
(1318, 13, 0, '2555-B80G', '#41c9ab', '2020-09-29 15:09:33'),
(1319, 13, 0, '2565-G', '#28c967', '2020-09-29 15:09:33'),
(1320, 13, 0, '2565-R80B', '#2341c9', '2020-09-29 15:09:33'),
(1321, 13, 0, '2570-G20Y', '#67c93e', '2020-09-29 15:09:33'),
(1322, 13, 0, '2570-G30Y', '#7fc931', '2020-09-29 15:09:33'),
(1323, 13, 0, '2570-R', '#c91a25', '2020-09-29 15:09:33'),
(1324, 13, 0, '2570-Y30R', '#c98725', '2020-09-29 15:09:33'),
(1325, 13, 0, '2570-Y40R', '#c97823', '2020-09-29 15:09:33'),
(1326, 13, 0, '2570-Y50R', '#c96922', '2020-09-29 15:09:33'),
(1327, 13, 0, '2570-Y60R', '#c95920', '2020-09-29 15:09:33'),
(1328, 13, 0, '2570-Y70R', '#c94a1e', '2020-09-29 15:09:33'),
(1329, 13, 0, '2570-Y80R', '#c93a1c', '2020-09-29 15:09:33'),
(1330, 13, 0, '2570-Y90R', '#c92b20', '2020-09-29 15:09:33'),
(1331, 13, 0, '3000-N', '#b2b2b2', '2020-09-29 15:09:33'),
(1332, 13, 0, '3005-B20G', '#adb9bc', '2020-09-29 15:09:33'),
(1333, 13, 0, '3005-B80G', '#acbcb8', '2020-09-29 15:09:33'),
(1334, 13, 0, '3005-G20Y', '#b1bcad', '2020-09-29 15:09:33'),
(1335, 13, 0, '3005-G50Y', '#b8bcac', '2020-09-29 15:09:33'),
(1336, 13, 0, '3005-G80Y', '#bcbbae', '2020-09-29 15:09:33'),
(1337, 13, 0, '3005-R20B', '#bca6aa', '2020-09-29 15:09:33'),
(1338, 13, 0, '3005-R50B', '#bcacb9', '2020-09-29 15:09:33'),
(1339, 13, 0, '3005-R80B', '#a5aabc', '2020-09-29 15:09:33'),
(1340, 13, 0, '3005-Y20R', '#bcb6ab', '2020-09-29 15:09:33'),
(1341, 13, 0, '3005-Y50R', '#bcb1a9', '2020-09-29 15:09:33'),
(1342, 13, 0, '3005-Y80R', '#bca9a5', '2020-09-29 15:09:33'),
(1343, 13, 0, '3010-B', '#9cb0bc', '2020-09-29 15:09:33'),
(1344, 13, 0, '3010-B10G', '#9db4bc', '2020-09-29 15:09:33'),
(1345, 13, 0, '3010-B30G', '#a0b9bc', '2020-09-29 15:09:33'),
(1346, 13, 0, '3010-B50G', '#a0bcbb', '2020-09-29 15:09:33'),
(1347, 13, 0, '3010-B70G', '#9fbcb7', '2020-09-29 15:09:33'),
(1348, 13, 0, '3010-B90G', '#9abcad', '2020-09-29 15:09:33'),
(1349, 13, 0, '3010-G', '#97bca5', '2020-09-29 15:09:33'),
(1350, 13, 0, '3010-G10Y', '#a1bca2', '2020-09-29 15:09:33'),
(1351, 13, 0, '3010-G20Y', '#a8bca0', '2020-09-29 15:09:33'),
(1352, 13, 0, '3010-G30Y', '#adbc9e', '2020-09-29 15:09:33'),
(1353, 13, 0, '3010-G40Y', '#b1bc9c', '2020-09-29 15:09:33'),
(1354, 13, 0, '3010-G50Y', '#b5bc9e', '2020-09-29 15:09:33'),
(1355, 13, 0, '3010-G60Y', '#b8bc9f', '2020-09-29 15:09:33'),
(1356, 13, 0, '3010-G70Y', '#babca0', '2020-09-29 15:09:33'),
(1357, 13, 0, '3010-G80Y', '#bcbba0', '2020-09-29 15:09:33'),
(1358, 13, 0, '3010-G90Y', '#bcb9a0', '2020-09-29 15:09:33'),
(1359, 13, 0, '3010-R', '#bc8f92', '2020-09-29 15:09:33'),
(1360, 13, 0, '3010-R10B', '#bc9096', '2020-09-29 15:09:33'),
(1361, 13, 0, '3010-R20B', '#bc939b', '2020-09-29 15:09:33'),
(1362, 13, 0, '3010-R30B', '#bc96a2', '2020-09-29 15:09:33'),
(1363, 13, 0, '3010-R40B', '#bc99aa', '2020-09-29 15:09:33'),
(1364, 13, 0, '3010-R50B', '#bc9eb6', '2020-09-29 15:09:33'),
(1365, 13, 0, '3010-R60B', '#b29cbc', '2020-09-29 15:09:33'),
(1366, 13, 0, '3010-R70B', '#a79cbc', '2020-09-29 15:09:33'),
(1367, 13, 0, '3010-R80B', '#929abc', '2020-09-29 15:09:33'),
(1368, 13, 0, '3010-R90B', '#96a2bc', '2020-09-29 15:09:33'),
(1369, 13, 0, '3010-Y', '#bcb79f', '2020-09-29 15:09:33'),
(1370, 13, 0, '3010-Y10R', '#bcb59e', '2020-09-29 15:09:33'),
(1371, 13, 0, '3010-Y20R', '#bcb29c', '2020-09-29 15:09:33'),
(1372, 13, 0, '3010-Y30R', '#bcae9b', '2020-09-29 15:09:33'),
(1373, 13, 0, '3010-Y40R', '#bcab9a', '2020-09-29 15:09:33'),
(1374, 13, 0, '3010-Y50R', '#bca798', '2020-09-29 15:09:33'),
(1375, 13, 0, '3010-Y60R', '#bca396', '2020-09-29 15:09:33'),
(1376, 13, 0, '3010-Y70R', '#bc9e94', '2020-09-29 15:09:33'),
(1377, 13, 0, '3010-Y80R', '#bc9992', '2020-09-29 15:09:33'),
(1378, 13, 0, '3010-Y90R', '#bc9491', '2020-09-29 15:09:33'),
(1379, 13, 0, '3020-B', '#80a5bc', '2020-09-29 15:09:33'),
(1380, 13, 0, '3020-B10G', '#83adbc', '2020-09-29 15:09:33'),
(1381, 13, 0, '3020-B30G', '#86b7bc', '2020-09-29 15:09:33'),
(1382, 13, 0, '3020-B40G', '#88babc', '2020-09-29 15:09:33'),
(1383, 13, 0, '3020-B50G', '#88bcba', '2020-09-29 15:09:33'),
(1384, 13, 0, '3020-B60G', '#86bcb7', '2020-09-29 15:09:33'),
(1385, 13, 0, '3020-B70G', '#85bcb3', '2020-09-29 15:09:33'),
(1386, 13, 0, '3020-B90G', '#7ebca0', '2020-09-29 15:09:33'),
(1387, 13, 0, '3020-G', '#7abc93', '2020-09-29 15:09:33'),
(1388, 13, 0, '3020-G10Y', '#8bbc8d', '2020-09-29 15:09:33'),
(1389, 13, 0, '3020-G20Y', '#97bc88', '2020-09-29 15:09:33'),
(1390, 13, 0, '3020-G30Y', '#a1bc84', '2020-09-29 15:09:33'),
(1391, 13, 0, '3020-G40Y', '#a8bc81', '2020-09-29 15:09:33'),
(1392, 13, 0, '3020-G50Y', '#afbc84', '2020-09-29 15:09:33'),
(1393, 13, 0, '3020-G60Y', '#b4bc86', '2020-09-29 15:09:33'),
(1394, 13, 0, '3020-G70Y', '#b9bc87', '2020-09-29 15:09:33'),
(1395, 13, 0, '3020-G80Y', '#bcba88', '2020-09-29 15:09:33'),
(1396, 13, 0, '3020-G90Y', '#bcb686', '2020-09-29 15:09:33'),
(1397, 13, 0, '3020-R', '#bc6e73', '2020-09-29 15:09:33'),
(1398, 13, 0, '3020-R10B', '#bc7079', '2020-09-29 15:09:33'),
(1399, 13, 0, '3020-R20B', '#bc7382', '2020-09-29 15:09:33'),
(1400, 13, 0, '3020-R30B', '#bc778d', '2020-09-29 15:09:33'),
(1401, 13, 0, '3020-R40B', '#bc7d9c', '2020-09-29 15:09:33'),
(1402, 13, 0, '3020-R50B', '#bc84b1', '2020-09-29 15:09:33'),
(1403, 13, 0, '3020-R60B', '#a982bc', '2020-09-29 15:09:33'),
(1404, 13, 0, '3020-R70B', '#9682bc', '2020-09-29 15:09:33'),
(1405, 13, 0, '3020-R80B', '#7380bc', '2020-09-29 15:09:33'),
(1406, 13, 0, '3020-R90B', '#788ebc', '2020-09-29 15:09:33'),
(1407, 13, 0, '3020-Y', '#bcb385', '2020-09-29 15:09:33'),
(1408, 13, 0, '3020-Y10R', '#bcae83', '2020-09-29 15:09:33'),
(1409, 13, 0, '3020-Y20R', '#bca982', '2020-09-29 15:09:33'),
(1410, 13, 0, '3020-Y30R', '#bca37f', '2020-09-29 15:09:33'),
(1411, 13, 0, '3020-Y40R', '#bc9d7d', '2020-09-29 15:09:33'),
(1412, 13, 0, '3020-Y50R', '#bc967b', '2020-09-29 15:09:33'),
(1413, 13, 0, '3020-Y60R', '#bc8f78', '2020-09-29 15:09:33'),
(1414, 13, 0, '3020-Y70R', '#bc8775', '2020-09-29 15:09:33'),
(1415, 13, 0, '3020-Y80R', '#bc7f72', '2020-09-29 15:09:33'),
(1416, 13, 0, '3020-Y90R', '#bc7772', '2020-09-29 15:09:33'),
(1417, 13, 0, '3030-B', '#689cbc', '2020-09-29 15:09:33'),
(1418, 13, 0, '3030-B10G', '#6ca7bc', '2020-09-29 15:09:33'),
(1419, 13, 0, '3030-B30G', '#70b4bc', '2020-09-29 15:09:33'),
(1420, 13, 0, '3030-B40G', '#71b9bc', '2020-09-29 15:09:33'),
(1421, 13, 0, '3030-B50G', '#71bcb9', '2020-09-29 15:09:33'),
(1422, 13, 0, '3030-B60G', '#70bcb5', '2020-09-29 15:09:33'),
(1423, 13, 0, '3030-B70G', '#6ebcb0', '2020-09-29 15:09:33'),
(1424, 13, 0, '3030-B90G', '#66bc95', '2020-09-29 15:09:33'),
(1425, 13, 0, '3030-G', '#61bc84', '2020-09-29 15:09:33'),
(1426, 13, 0, '3030-G10Y', '#78bc7b', '2020-09-29 15:09:33'),
(1427, 13, 0, '3030-G20Y', '#89bc74', '2020-09-29 15:09:33'),
(1428, 13, 0, '3030-G30Y', '#96bc6e', '2020-09-29 15:09:33'),
(1429, 13, 0, '3030-G40Y', '#a0bc6a', '2020-09-29 15:09:33'),
(1430, 13, 0, '3030-G50Y', '#a9bc6c', '2020-09-29 15:09:33'),
(1431, 13, 0, '3030-G60Y', '#b1bc6f', '2020-09-29 15:09:33'),
(1432, 13, 0, '3030-G70Y', '#b8bc71', '2020-09-29 15:09:33'),
(1433, 13, 0, '3030-G80Y', '#bcb971', '2020-09-29 15:09:33'),
(1434, 13, 0, '3030-G90Y', '#bcb470', '2020-09-29 15:09:33'),
(1435, 13, 0, '3030-R', '#bc555b', '2020-09-29 15:09:33'),
(1436, 13, 0, '3030-R10B', '#bc5763', '2020-09-29 15:09:33'),
(1437, 13, 0, '3030-R20B', '#bc5a6e', '2020-09-29 15:09:33'),
(1438, 13, 0, '3030-R30B', '#bc5f7c', '2020-09-29 15:09:33'),
(1439, 13, 0, '3030-R40B', '#bc6590', '2020-09-29 15:09:33'),
(1440, 13, 0, '3030-R50B', '#bc6dad', '2020-09-29 15:09:33'),
(1441, 13, 0, '3030-R60B', '#a26abc', '2020-09-29 15:09:33'),
(1442, 13, 0, '3030-R70B', '#876bbc', '2020-09-29 15:09:33'),
(1443, 13, 0, '3030-R80B', '#5a6cbc', '2020-09-29 15:09:33'),
(1444, 13, 0, '3030-R90B', '#5f7ebc', '2020-09-29 15:09:33'),
(1445, 13, 0, '3030-Y', '#bcb06e', '2020-09-29 15:09:33'),
(1446, 13, 0, '3030-Y10R', '#bca96c', '2020-09-29 15:09:33'),
(1447, 13, 0, '3030-Y20R', '#bca16a', '2020-09-29 15:09:33'),
(1448, 13, 0, '3030-Y30R', '#bc9a68', '2020-09-29 15:09:33'),
(1449, 13, 0, '3030-Y40R', '#bc9165', '2020-09-29 15:09:33'),
(1450, 13, 0, '3030-Y50R', '#bc8862', '2020-09-29 15:09:33'),
(1451, 13, 0, '3030-Y60R', '#bc7f5f', '2020-09-29 15:09:33'),
(1452, 13, 0, '3030-Y70R', '#bc755c', '2020-09-29 15:09:33'),
(1453, 13, 0, '3030-Y80R', '#bc6a59', '2020-09-29 15:09:33'),
(1454, 13, 0, '3030-Y90R', '#bc6059', '2020-09-29 15:09:33'),
(1455, 13, 0, '3040-B', '#5495bc', '2020-09-29 15:09:33'),
(1456, 13, 0, '3040-B10G', '#57a2bc', '2020-09-29 15:09:33'),
(1457, 13, 0, '3040-B20G', '#59abbc', '2020-09-29 15:09:33'),
(1458, 13, 0, '3040-B30G', '#5bb3bc', '2020-09-29 15:09:33'),
(1459, 13, 0, '3040-B40G', '#5db9bc', '2020-09-29 15:09:33'),
(1460, 13, 0, '3040-B50G', '#5dbcb8', '2020-09-29 15:09:33'),
(1461, 13, 0, '3040-B60G', '#5bbcb3', '2020-09-29 15:09:33'),
(1462, 13, 0, '3040-B70G', '#5abcad', '2020-09-29 15:09:33'),
(1463, 13, 0, '3040-B80G', '#58bca5', '2020-09-29 15:09:33'),
(1464, 13, 0, '3040-B90G', '#52bc8c', '2020-09-29 15:09:33'),
(1465, 13, 0, '3040-G', '#4dbc78', '2020-09-29 15:09:33'),
(1466, 13, 0, '3040-G10Y', '#68bc6c', '2020-09-29 15:09:33'),
(1467, 13, 0, '3040-G20Y', '#7dbc63', '2020-09-29 15:09:33'),
(1468, 13, 0, '3040-G30Y', '#8cbc5b', '2020-09-29 15:09:33'),
(1469, 13, 0, '3040-G40Y', '#99bc55', '2020-09-29 15:09:33'),
(1470, 13, 0, '3040-G50Y', '#a5bc58', '2020-09-29 15:09:33'),
(1471, 13, 0, '3040-G60Y', '#aebc5a', '2020-09-29 15:09:33'),
(1472, 13, 0, '3040-G70Y', '#b7bc5c', '2020-09-29 15:09:33'),
(1473, 13, 0, '3040-G80Y', '#bcb95d', '2020-09-29 15:09:33'),
(1474, 13, 0, '3040-G90Y', '#bcb25b', '2020-09-29 15:09:33'),
(1475, 13, 0, '3040-R', '#bc4149', '2020-09-29 15:09:33'),
(1476, 13, 0, '3040-R10B', '#bc4352', '2020-09-29 15:09:33'),
(1477, 13, 0, '3040-R20B', '#bc465e', '2020-09-29 15:09:33'),
(1478, 13, 0, '3040-R30B', '#bc4a6e', '2020-09-29 15:09:33'),
(1479, 13, 0, '3040-R40B', '#bc5086', '2020-09-29 15:09:33'),
(1480, 13, 0, '3040-R50B', '#bc59a9', '2020-09-29 15:09:33'),
(1481, 13, 0, '3040-R60B', '#9b55bc', '2020-09-29 15:09:33'),
(1482, 13, 0, '3040-R70B', '#7b58bc', '2020-09-29 15:09:33'),
(1483, 13, 0, '3040-R80B', '#455bbc', '2020-09-29 15:09:33'),
(1484, 13, 0, '3040-R90B', '#4b70bc', '2020-09-29 15:09:33'),
(1485, 13, 0, '3040-Y', '#bcad5a', '2020-09-29 15:09:33'),
(1486, 13, 0, '3040-Y10R', '#bca458', '2020-09-29 15:09:33'),
(1487, 13, 0, '3040-Y20R', '#bc9b55', '2020-09-29 15:09:33'),
(1488, 13, 0, '3040-Y30R', '#bc9153', '2020-09-29 15:09:33'),
(1489, 13, 0, '3040-Y40R', '#bc8750', '2020-09-29 15:09:33'),
(1490, 13, 0, '3040-Y50R', '#bc7c4e', '2020-09-29 15:09:33'),
(1491, 13, 0, '3040-Y60R', '#bc714b', '2020-09-29 15:09:33'),
(1492, 13, 0, '3040-Y70R', '#bc6648', '2020-09-29 15:09:33'),
(1493, 13, 0, '3040-Y80R', '#bc5a45', '2020-09-29 15:09:33'),
(1494, 13, 0, '3040-Y90R', '#bc4d46', '2020-09-29 15:09:33'),
(1495, 13, 0, '3050-B', '#428ebc', '2020-09-29 15:09:33'),
(1496, 13, 0, '3050-B10G', '#459dbc', '2020-09-29 15:09:33'),
(1497, 13, 0, '3050-B20G', '#47a8bc', '2020-09-29 15:09:33'),
(1498, 13, 0, '3050-B30G', '#49b1bc', '2020-09-29 15:09:33'),
(1499, 13, 0, '3050-B40G', '#4ab8bc', '2020-09-29 15:09:33'),
(1500, 13, 0, '3050-B50G', '#4abcb8', '2020-09-29 15:09:33'),
(1501, 13, 0, '3050-B60G', '#49bcb1', '2020-09-29 15:09:33'),
(1502, 13, 0, '3050-B70G', '#47bcaa', '2020-09-29 15:09:33'),
(1503, 13, 0, '3050-B80G', '#45bca1', '2020-09-29 15:09:33'),
(1504, 13, 0, '3050-B90G', '#40bc84', '2020-09-29 15:09:33'),
(1505, 13, 0, '3050-G', '#3bbc6d', '2020-09-29 15:09:33'),
(1506, 13, 0, '3050-G10Y', '#5bbc5f', '2020-09-29 15:09:33'),
(1507, 13, 0, '3050-G20Y', '#72bc54', '2020-09-29 15:09:33'),
(1508, 13, 0, '3050-G30Y', '#84bc4a', '2020-09-29 15:09:33'),
(1509, 13, 0, '3050-G40Y', '#93bc43', '2020-09-29 15:09:33'),
(1510, 13, 0, '3050-G50Y', '#a0bc45', '2020-09-29 15:09:33'),
(1511, 13, 0, '3050-G60Y', '#abbc47', '2020-09-29 15:09:33'),
(1512, 13, 0, '3050-G70Y', '#b6bc4a', '2020-09-29 15:09:33'),
(1513, 13, 0, '3050-G80Y', '#bcb84a', '2020-09-29 15:09:33'),
(1514, 13, 0, '3050-G90Y', '#bcb048', '2020-09-29 15:09:33'),
(1515, 13, 0, '3050-R', '#bc313a', '2020-09-29 15:09:33'),
(1516, 13, 0, '3050-R10B', '#bc3343', '2020-09-29 15:09:33'),
(1517, 13, 0, '3050-R20B', '#bc3550', '2020-09-29 15:09:33'),
(1518, 13, 0, '3050-R30B', '#bc3963', '2020-09-29 15:09:33'),
(1519, 13, 0, '3050-R40B', '#bc3e7d', '2020-09-29 15:09:33'),
(1520, 13, 0, '3050-R50B', '#bc46a5', '2020-09-29 15:09:33'),
(1521, 13, 0, '3050-R60B', '#9543bc', '2020-09-29 15:09:33'),
(1522, 13, 0, '3050-R70B', '#7048bc', '2020-09-29 15:09:33'),
(1523, 13, 0, '3050-R80B', '#354ebc', '2020-09-29 15:09:33'),
(1524, 13, 0, '3050-R90B', '#3964bc', '2020-09-29 15:09:33'),
(1525, 13, 0, '3050-Y', '#bcaa47', '2020-09-29 15:09:33'),
(1526, 13, 0, '3050-Y10R', '#bca045', '2020-09-29 15:09:33'),
(1527, 13, 0, '3050-Y20R', '#bc9543', '2020-09-29 15:09:33'),
(1528, 13, 0, '3050-Y30R', '#bc8a41', '2020-09-29 15:09:33'),
(1529, 13, 0, '3050-Y40R', '#bc7e3e', '2020-09-29 15:09:33'),
(1530, 13, 0, '3050-Y50R', '#bc723c', '2020-09-29 15:09:33'),
(1531, 13, 0, '3050-Y60R', '#bc663a', '2020-09-29 15:09:33'),
(1532, 13, 0, '3050-Y70R', '#bc5937', '2020-09-29 15:09:33'),
(1533, 13, 0, '3050-Y80R', '#bc4c34', '2020-09-29 15:09:33'),
(1534, 13, 0, '3050-Y90R', '#bc3f36', '2020-09-29 15:09:33'),
(1535, 13, 0, '3055-B50G', '#41bcb7', '2020-09-29 15:09:33'),
(1536, 13, 0, '3055-R30B', '#bc315d', '2020-09-29 15:09:33'),
(1537, 13, 0, '3055-R40B', '#bc3679', '2020-09-29 15:09:33'),
(1538, 13, 0, '3055-R50B', '#bc3ea3', '2020-09-29 15:09:33'),
(1539, 13, 0, '3060-B', '#3188bc', '2020-09-29 15:09:33'),
(1540, 13, 0, '3060-B10G', '#3499bc', '2020-09-29 15:09:33'),
(1541, 13, 0, '3060-B20G', '#36a5bc', '2020-09-29 15:09:33'),
(1542, 13, 0, '3060-B30G', '#37afbc', '2020-09-29 15:09:33'),
(1543, 13, 0, '3060-B40G', '#39b8bc', '2020-09-29 15:09:33'),
(1544, 13, 0, '3060-B70G', '#36bca8', '2020-09-29 15:09:33'),
(1545, 13, 0, '3060-B90G', '#30bc7d', '2020-09-29 15:09:33'),
(1546, 13, 0, '3060-G', '#2cbc64', '2020-09-29 15:09:33'),
(1547, 13, 0, '3060-G10Y', '#4fbc53', '2020-09-29 15:09:33'),
(1548, 13, 0, '3060-G20Y', '#68bc46', '2020-09-29 15:09:33'),
(1549, 13, 0, '3060-G30Y', '#7dbc3b', '2020-09-29 15:09:33'),
(1550, 13, 0, '3060-G40Y', '#8ebc33', '2020-09-29 15:09:33'),
(1551, 13, 0, '3060-G50Y', '#9cbc35', '2020-09-29 15:09:33'),
(1552, 13, 0, '3060-G60Y', '#a9bc36', '2020-09-29 15:09:33'),
(1553, 13, 0, '3060-G70Y', '#b5bc38', '2020-09-29 15:09:33'),
(1554, 13, 0, '3060-G80Y', '#bcb739', '2020-09-29 15:09:33'),
(1555, 13, 0, '3060-G90Y', '#bcaf37', '2020-09-29 15:09:33'),
(1556, 13, 0, '3060-R', '#bc232d', '2020-09-29 15:09:33'),
(1557, 13, 0, '3060-R10B', '#bc2537', '2020-09-29 15:09:33'),
(1558, 13, 0, '3060-R20B', '#bc2745', '2020-09-29 15:09:33'),
(1559, 13, 0, '3060-R70B', '#673abc', '2020-09-29 15:09:33'),
(1560, 13, 0, '3060-R80B', '#2742bc', '2020-09-29 15:09:33'),
(1561, 13, 0, '3060-R90B', '#2a5abc', '2020-09-29 15:09:33'),
(1562, 13, 0, '3060-Y', '#bca836', '2020-09-29 15:09:33'),
(1563, 13, 0, '3060-Y10R', '#bc9c34', '2020-09-29 15:09:33'),
(1564, 13, 0, '3060-Y20R', '#bc9033', '2020-09-29 15:09:33'),
(1565, 13, 0, '3060-Y30R', '#bc8331', '2020-09-29 15:09:33'),
(1566, 13, 0, '3060-Y40R', '#bc772f', '2020-09-29 15:09:33'),
(1567, 13, 0, '3060-Y50R', '#bc692d', '2020-09-29 15:09:33'),
(1568, 13, 0, '3060-Y60R', '#bc5c2b', '2020-09-29 15:09:33'),
(1569, 13, 0, '3060-Y70R', '#bc4e29', '2020-09-29 15:09:33'),
(1570, 13, 0, '3060-Y80R', '#bc4026', '2020-09-29 15:09:33'),
(1571, 13, 0, '3060-Y90R', '#bc3229', '2020-09-29 15:09:33'),
(1572, 13, 0, '3065-G10Y', '#49bc4e', '2020-09-29 15:09:33'),
(1573, 13, 0, '3065-G40Y', '#8bbc2b', '2020-09-29 15:09:33'),
(1574, 13, 0, '3065-G50Y', '#9bbc2d', '2020-09-29 15:09:33'),
(1575, 13, 0, '3065-G60Y', '#a8bc2f', '2020-09-29 15:09:33'),
(1576, 13, 0, '3065-R90B', '#2456bc', '2020-09-29 15:09:33'),
(1577, 13, 0, '3065-Y20R', '#bc8d2b', '2020-09-29 15:09:33'),
(1578, 13, 0, '3500-N', '#a5a5a5', '2020-09-29 15:09:33'),
(1579, 13, 0, '3502-B', '#a8acae', '2020-09-29 15:09:33'),
(1580, 13, 0, '3502-G', '#a7aeaa', '2020-09-29 15:09:33'),
(1581, 13, 0, '3502-R', '#aea5a5', '2020-09-29 15:09:33'),
(1582, 13, 0, '3502-Y', '#aeada9', '2020-09-29 15:09:33'),
(1583, 13, 0, '3555-B60G', '#3baea4', '2020-09-29 15:09:33'),
(1584, 13, 0, '3555-B80G', '#39ae94', '2020-09-29 15:09:33'),
(1585, 13, 0, '3555-R60B', '#8836ae', '2020-09-29 15:09:33'),
(1586, 13, 0, '3560-G', '#29ae5d', '2020-09-29 15:09:33'),
(1587, 13, 0, '3560-G10Y', '#49ae4d', '2020-09-29 15:09:33'),
(1588, 13, 0, '3560-G20Y', '#61ae41', '2020-09-29 15:09:33'),
(1589, 13, 0, '3560-G30Y', '#74ae37', '2020-09-29 15:09:33'),
(1590, 13, 0, '3560-G40Y', '#84ae2f', '2020-09-29 15:09:33'),
(1591, 13, 0, '3560-G50Y', '#91ae31', '2020-09-29 15:09:33'),
(1592, 13, 0, '3560-G60Y', '#9dae33', '2020-09-29 15:09:33'),
(1593, 13, 0, '3560-G70Y', '#a8ae34', '2020-09-29 15:09:33'),
(1594, 13, 0, '3560-R', '#ae212a', '2020-09-29 15:09:33'),
(1595, 13, 0, '3560-R80B', '#243dae', '2020-09-29 15:09:33'),
(1596, 13, 0, '3560-R90B', '#2754ae', '2020-09-29 15:09:33'),
(1597, 13, 0, '3560-Y', '#ae9c32', '2020-09-29 15:09:33'),
(1598, 13, 0, '3560-Y20R', '#ae852f', '2020-09-29 15:09:33'),
(1599, 13, 0, '3560-Y30R', '#ae7a2d', '2020-09-29 15:09:33'),
(1600, 13, 0, '3560-Y40R', '#ae6e2b', '2020-09-29 15:09:33'),
(1601, 13, 0, '3560-Y50R', '#ae622a', '2020-09-29 15:09:33'),
(1602, 13, 0, '3560-Y60R', '#ae5528', '2020-09-29 15:09:33'),
(1603, 13, 0, '3560-Y70R', '#ae4926', '2020-09-29 15:09:33'),
(1604, 13, 0, '3560-Y80R', '#ae3c24', '2020-09-29 15:09:33'),
(1605, 13, 0, '3560-Y90R', '#ae2f26', '2020-09-29 15:09:33'),
(1606, 13, 0, '4000-N', '#999999', '2020-09-29 15:09:33'),
(1607, 13, 0, '4005-B20G', '#949fa1', '2020-09-29 15:09:33'),
(1608, 13, 0, '4005-B80G', '#94a19e', '2020-09-29 15:09:33'),
(1609, 13, 0, '4005-G20Y', '#98a194', '2020-09-29 15:09:33'),
(1610, 13, 0, '4005-G50Y', '#9ea194', '2020-09-29 15:09:33'),
(1611, 13, 0, '4005-G80Y', '#a1a095', '2020-09-29 15:09:33'),
(1612, 13, 0, '4005-R20B', '#a18e92', '2020-09-29 15:09:33'),
(1613, 13, 0, '4005-R50B', '#a1949e', '2020-09-29 15:09:33'),
(1614, 13, 0, '4005-R80B', '#8e91a1', '2020-09-29 15:09:33'),
(1615, 13, 0, '4005-Y20R', '#a19c93', '2020-09-29 15:09:33'),
(1616, 13, 0, '4005-Y50R', '#a19891', '2020-09-29 15:09:33'),
(1617, 13, 0, '4005-Y80R', '#a1918e', '2020-09-29 15:09:33'),
(1618, 13, 0, '4010-B10G', '#879aa1', '2020-09-29 15:09:33'),
(1619, 13, 0, '4010-B30G', '#899fa1', '2020-09-29 15:09:33'),
(1620, 13, 0, '4010-B50G', '#89a1a0', '2020-09-29 15:09:33'),
(1621, 13, 0, '4010-B70G', '#88a19d', '2020-09-29 15:09:33'),
(1622, 13, 0, '4010-B90G', '#84a194', '2020-09-29 15:09:33'),
(1623, 13, 0, '4010-G10Y', '#8aa18b', '2020-09-29 15:09:33'),
(1624, 13, 0, '4010-G30Y', '#94a187', '2020-09-29 15:09:33'),
(1625, 13, 0, '4010-G50Y', '#9ba187', '2020-09-29 15:09:33'),
(1626, 13, 0, '4010-G70Y', '#a0a189', '2020-09-29 15:09:33'),
(1627, 13, 0, '4010-G90Y', '#a19e89', '2020-09-29 15:09:33'),
(1628, 13, 0, '4010-R10B', '#a17c80', '2020-09-29 15:09:33'),
(1629, 13, 0, '4010-R30B', '#a1808b', '2020-09-29 15:09:33'),
(1630, 13, 0, '4010-R50B', '#a1889c', '2020-09-29 15:09:33'),
(1631, 13, 0, '4010-R70B', '#8f86a1', '2020-09-29 15:09:33'),
(1632, 13, 0, '4010-R90B', '#808ba1', '2020-09-29 15:09:33'),
(1633, 13, 0, '4010-Y10R', '#a19b87', '2020-09-29 15:09:33'),
(1634, 13, 0, '4010-Y30R', '#a19585', '2020-09-29 15:09:33'),
(1635, 13, 0, '4010-Y50R', '#a18f82', '2020-09-29 15:09:33'),
(1636, 13, 0, '4010-Y70R', '#a1887f', '2020-09-29 15:09:33'),
(1637, 13, 0, '4010-Y90R', '#a17f7d', '2020-09-29 15:09:33'),
(1638, 13, 0, '4020-B', '#6e8ea1', '2020-09-29 15:09:33'),
(1639, 13, 0, '4020-B10G', '#7094a1', '2020-09-29 15:09:33'),
(1640, 13, 0, '4020-B30G', '#739da1', '2020-09-29 15:09:33'),
(1641, 13, 0, '4020-B50G', '#74a19f', '2020-09-29 15:09:33'),
(1642, 13, 0, '4020-B70G', '#72a19a', '2020-09-29 15:09:33'),
(1643, 13, 0, '4020-B90G', '#6ca189', '2020-09-29 15:09:33'),
(1644, 13, 0, '4020-G', '#68a17e', '2020-09-29 15:09:33'),
(1645, 13, 0, '4020-G10Y', '#77a179', '2020-09-29 15:09:33'),
(1646, 13, 0, '4020-G30Y', '#8aa171', '2020-09-29 15:09:33'),
(1647, 13, 0, '4020-G50Y', '#96a171', '2020-09-29 15:09:33'),
(1648, 13, 0, '4020-G70Y', '#9fa174', '2020-09-29 15:09:33'),
(1649, 13, 0, '4020-G90Y', '#a19c73', '2020-09-29 15:09:33'),
(1650, 13, 0, '4020-R', '#a15e62', '2020-09-29 15:09:33'),
(1651, 13, 0, '4020-R10B', '#a16068', '2020-09-29 15:09:33'),
(1652, 13, 0, '4020-R20B', '#a1636f', '2020-09-29 15:09:33'),
(1653, 13, 0, '4020-R30B', '#a16679', '2020-09-29 15:09:33'),
(1654, 13, 0, '4020-R40B', '#a16b86', '2020-09-29 15:09:33'),
(1655, 13, 0, '4020-R50B', '#a17298', '2020-09-29 15:09:33'),
(1656, 13, 0, '4020-R60B', '#916fa1', '2020-09-29 15:09:33'),
(1657, 13, 0, '4020-R70B', '#806fa1', '2020-09-29 15:09:33'),
(1658, 13, 0, '4020-R80B', '#626ea1', '2020-09-29 15:09:33'),
(1659, 13, 0, '4020-R90B', '#677aa1', '2020-09-29 15:09:33'),
(1660, 13, 0, '4020-Y', '#a19a72', '2020-09-29 15:09:33'),
(1661, 13, 0, '4020-Y10R', '#a19571', '2020-09-29 15:09:33'),
(1662, 13, 0, '4020-Y20R', '#a1916f', '2020-09-29 15:09:33'),
(1663, 13, 0, '4020-Y30R', '#a18c6d', '2020-09-29 15:09:33'),
(1664, 13, 0, '4020-Y40R', '#a1876b', '2020-09-29 15:09:33'),
(1665, 13, 0, '4020-Y50R', '#a18169', '2020-09-29 15:09:33'),
(1666, 13, 0, '4020-Y60R', '#a17b67', '2020-09-29 15:09:33'),
(1667, 13, 0, '4020-Y70R', '#a17464', '2020-09-29 15:09:33'),
(1668, 13, 0, '4020-Y80R', '#a16d62', '2020-09-29 15:09:33'),
(1669, 13, 0, '4020-Y90R', '#a16662', '2020-09-29 15:09:33'),
(1670, 13, 0, '4030-B', '#5a86a1', '2020-09-29 15:09:33'),
(1671, 13, 0, '4030-B10G', '#5c8fa1', '2020-09-29 15:09:33'),
(1672, 13, 0, '4030-B30G', '#609ba1', '2020-09-29 15:09:33'),
(1673, 13, 0, '4030-B50G', '#61a19f', '2020-09-29 15:09:33'),
(1674, 13, 0, '4030-B70G', '#5fa197', '2020-09-29 15:09:33'),
(1675, 13, 0, '4030-B90G', '#58a180', '2020-09-29 15:09:33'),
(1676, 13, 0, '4030-G', '#53a171', '2020-09-29 15:09:33'),
(1677, 13, 0, '4030-G10Y', '#67a16a', '2020-09-29 15:09:33'),
(1678, 13, 0, '4030-G30Y', '#80a15f', '2020-09-29 15:09:33'),
(1679, 13, 0, '4030-G50Y', '#91a15d', '2020-09-29 15:09:33'),
(1680, 13, 0, '4030-G70Y', '#9ea161', '2020-09-29 15:09:33'),
(1681, 13, 0, '4030-G90Y', '#a19a60', '2020-09-29 15:09:33'),
(1682, 13, 0, '4030-R', '#a1494e', '2020-09-29 15:09:33'),
(1683, 13, 0, '4030-R10B', '#a14b55', '2020-09-29 15:09:33'),
(1684, 13, 0, '4030-R20B', '#a14d5e', '2020-09-29 15:09:33'),
(1685, 13, 0, '4030-R30B', '#a1516b', '2020-09-29 15:09:33'),
(1686, 13, 0, '4030-R40B', '#a1567c', '2020-09-29 15:09:33'),
(1687, 13, 0, '4030-R50B', '#a15e94', '2020-09-29 15:09:33'),
(1688, 13, 0, '4030-R60B', '#8b5ba1', '2020-09-29 15:09:33'),
(1689, 13, 0, '4030-R70B', '#745ca1', '2020-09-29 15:09:33'),
(1690, 13, 0, '4030-R80B', '#4d5ca1', '2020-09-29 15:09:33'),
(1691, 13, 0, '4030-R90B', '#516ca1', '2020-09-29 15:09:33'),
(1692, 13, 0, '4030-Y', '#a1975f', '2020-09-29 15:09:33'),
(1693, 13, 0, '4030-Y10R', '#a1915d', '2020-09-29 15:09:33'),
(1694, 13, 0, '4030-Y20R', '#a18a5b', '2020-09-29 15:09:33'),
(1695, 13, 0, '4030-Y30R', '#a18459', '2020-09-29 15:09:33'),
(1696, 13, 0, '4030-Y40R', '#a17c57', '2020-09-29 15:09:33'),
(1697, 13, 0, '4030-Y50R', '#a17554', '2020-09-29 15:09:33'),
(1698, 13, 0, '4030-Y60R', '#a16d52', '2020-09-29 15:09:33'),
(1699, 13, 0, '4030-Y70R', '#a1644f', '2020-09-29 15:09:33'),
(1700, 13, 0, '4030-Y80R', '#a15b4c', '2020-09-29 15:09:33'),
(1701, 13, 0, '4030-Y90R', '#a1524d', '2020-09-29 15:09:33'),
(1702, 13, 0, '4040-B', '#487fa1', '2020-09-29 15:09:33'),
(1703, 13, 0, '4040-B10G', '#4b8ba1', '2020-09-29 15:09:33');
INSERT INTO `palette_colors` (`id`, `ColorPaletteID`, `BaseColorID`, `color`, `color_image`, `added_at`) VALUES
(1704, 13, 0, '4040-B20G', '#4d93a1', '2020-09-29 15:09:33'),
(1705, 13, 0, '4040-B30G', '#4e99a1', '2020-09-29 15:09:33'),
(1706, 13, 0, '4040-B40G', '#509ea1', '2020-09-29 15:09:33'),
(1707, 13, 0, '4040-B50G', '#4fa19e', '2020-09-29 15:09:33'),
(1708, 13, 0, '4040-B60G', '#4ea199', '2020-09-29 15:09:33'),
(1709, 13, 0, '4040-B70G', '#4da194', '2020-09-29 15:09:33'),
(1710, 13, 0, '4040-B80G', '#4ba18e', '2020-09-29 15:09:33'),
(1711, 13, 0, '4040-B90G', '#46a178', '2020-09-29 15:09:33'),
(1712, 13, 0, '4040-G', '#42a167', '2020-09-29 15:09:33'),
(1713, 13, 0, '4040-G10Y', '#59a15d', '2020-09-29 15:09:33'),
(1714, 13, 0, '4040-G20Y', '#6ba155', '2020-09-29 15:09:33'),
(1715, 13, 0, '4040-G30Y', '#78a14e', '2020-09-29 15:09:33'),
(1716, 13, 0, '4040-G40Y', '#83a149', '2020-09-29 15:09:33'),
(1717, 13, 0, '4040-G50Y', '#8da14b', '2020-09-29 15:09:33'),
(1718, 13, 0, '4040-G60Y', '#95a14d', '2020-09-29 15:09:33'),
(1719, 13, 0, '4040-G70Y', '#9da14f', '2020-09-29 15:09:33'),
(1720, 13, 0, '4040-G80Y', '#a19e50', '2020-09-29 15:09:33'),
(1721, 13, 0, '4040-G90Y', '#a1994e', '2020-09-29 15:09:33'),
(1722, 13, 0, '4040-R', '#a1383e', '2020-09-29 15:09:33'),
(1723, 13, 0, '4040-R10B', '#a13946', '2020-09-29 15:09:33'),
(1724, 13, 0, '4040-R20B', '#a13c50', '2020-09-29 15:09:33'),
(1725, 13, 0, '4040-R30B', '#a1405f', '2020-09-29 15:09:33'),
(1726, 13, 0, '4040-R40B', '#a14573', '2020-09-29 15:09:33'),
(1727, 13, 0, '4040-R50B', '#a14c91', '2020-09-29 15:09:33'),
(1728, 13, 0, '4040-R60B', '#8549a1', '2020-09-29 15:09:33'),
(1729, 13, 0, '4040-R70B', '#694ca1', '2020-09-29 15:09:33'),
(1730, 13, 0, '4040-R80B', '#3b4ea1', '2020-09-29 15:09:33'),
(1731, 13, 0, '4040-R90B', '#4060a1', '2020-09-29 15:09:33'),
(1732, 13, 0, '4040-Y', '#a1944d', '2020-09-29 15:09:33'),
(1733, 13, 0, '4040-Y10R', '#a18d4b', '2020-09-29 15:09:33'),
(1734, 13, 0, '4040-Y20R', '#a18549', '2020-09-29 15:09:33'),
(1735, 13, 0, '4040-Y30R', '#a17c47', '2020-09-29 15:09:33'),
(1736, 13, 0, '4040-Y40R', '#a17445', '2020-09-29 15:09:33'),
(1737, 13, 0, '4040-Y50R', '#a16b43', '2020-09-29 15:09:33'),
(1738, 13, 0, '4040-Y60R', '#a16140', '2020-09-29 15:09:33'),
(1739, 13, 0, '4040-Y70R', '#a1573e', '2020-09-29 15:09:33'),
(1740, 13, 0, '4040-Y80R', '#a14d3b', '2020-09-29 15:09:33'),
(1741, 13, 0, '4040-Y90R', '#a1423c', '2020-09-29 15:09:33'),
(1742, 13, 0, '4050-B', '#387aa1', '2020-09-29 15:09:33'),
(1743, 13, 0, '4050-B10G', '#3b87a1', '2020-09-29 15:09:33'),
(1744, 13, 0, '4050-B20G', '#3d90a1', '2020-09-29 15:09:33'),
(1745, 13, 0, '4050-B30G', '#3e98a1', '2020-09-29 15:09:33'),
(1746, 13, 0, '4050-B40G', '#3f9ea1', '2020-09-29 15:09:33'),
(1747, 13, 0, '4050-B50G', '#3fa19e', '2020-09-29 15:09:33'),
(1748, 13, 0, '4050-B60G', '#3ea198', '2020-09-29 15:09:33'),
(1749, 13, 0, '4050-B70G', '#3da192', '2020-09-29 15:09:33'),
(1750, 13, 0, '4050-B80G', '#3ca18a', '2020-09-29 15:09:33'),
(1751, 13, 0, '4050-B90G', '#36a171', '2020-09-29 15:09:33'),
(1752, 13, 0, '4050-G', '#33a15d', '2020-09-29 15:09:33'),
(1753, 13, 0, '4050-G10Y', '#4ea151', '2020-09-29 15:09:33'),
(1754, 13, 0, '4050-G20Y', '#62a148', '2020-09-29 15:09:33'),
(1755, 13, 0, '4050-G30Y', '#71a140', '2020-09-29 15:09:33'),
(1756, 13, 0, '4050-G40Y', '#7ea139', '2020-09-29 15:09:33'),
(1757, 13, 0, '4050-G50Y', '#89a13b', '2020-09-29 15:09:33'),
(1758, 13, 0, '4050-G60Y', '#93a13d', '2020-09-29 15:09:33'),
(1759, 13, 0, '4050-G70Y', '#9ca13f', '2020-09-29 15:09:33'),
(1760, 13, 0, '4050-G80Y', '#a19e3f', '2020-09-29 15:09:33'),
(1761, 13, 0, '4050-G90Y', '#a1973e', '2020-09-29 15:09:33'),
(1762, 13, 0, '4050-R', '#a12a31', '2020-09-29 15:09:33'),
(1763, 13, 0, '4050-R10B', '#a12b3a', '2020-09-29 15:09:33'),
(1764, 13, 0, '4050-R20B', '#a12e45', '2020-09-29 15:09:33'),
(1765, 13, 0, '4050-R30B', '#a13154', '2020-09-29 15:09:33'),
(1766, 13, 0, '4050-R40B', '#a1356b', '2020-09-29 15:09:33'),
(1767, 13, 0, '4050-R50B', '#a13c8e', '2020-09-29 15:09:33'),
(1768, 13, 0, '4050-R60B', '#8039a1', '2020-09-29 15:09:33'),
(1769, 13, 0, '4050-R70B', '#603ea1', '2020-09-29 15:09:33'),
(1770, 13, 0, '4050-R80B', '#2d42a1', '2020-09-29 15:09:33'),
(1771, 13, 0, '4050-R90B', '#3156a1', '2020-09-29 15:09:33'),
(1772, 13, 0, '4050-Y', '#a1923d', '2020-09-29 15:09:33'),
(1773, 13, 0, '4050-Y10R', '#a1893b', '2020-09-29 15:09:33'),
(1774, 13, 0, '4050-Y20R', '#a18039', '2020-09-29 15:09:33'),
(1775, 13, 0, '4050-Y30R', '#a17637', '2020-09-29 15:09:33'),
(1776, 13, 0, '4050-Y40R', '#a16c36', '2020-09-29 15:09:33'),
(1777, 13, 0, '4050-Y50R', '#a16233', '2020-09-29 15:09:33'),
(1778, 13, 0, '4050-Y60R', '#a15731', '2020-09-29 15:09:33'),
(1779, 13, 0, '4050-Y70R', '#a14c2f', '2020-09-29 15:09:33'),
(1780, 13, 0, '4050-Y80R', '#a1412d', '2020-09-29 15:09:33'),
(1781, 13, 0, '4050-Y90R', '#a1362e', '2020-09-29 15:09:33'),
(1782, 13, 0, '4055-B', '#3177a1', '2020-09-29 15:09:33'),
(1783, 13, 0, '4055-B40G', '#389ea1', '2020-09-29 15:09:33'),
(1784, 13, 0, '4055-R70B', '#5c37a1', '2020-09-29 15:09:33'),
(1785, 13, 0, '4055-R95B', '#2d5fa1', '2020-09-29 15:09:33'),
(1786, 13, 0, '4055-Y10R', '#a18734', '2020-09-29 15:09:33'),
(1787, 13, 0, '4500-N', '#8c8c8c', '2020-09-29 15:09:33'),
(1788, 13, 0, '4502-B', '#8e9193', '2020-09-29 15:09:33'),
(1789, 13, 0, '4502-G', '#8d9390', '2020-09-29 15:09:33'),
(1790, 13, 0, '4502-R', '#938b8c', '2020-09-29 15:09:33'),
(1791, 13, 0, '4502-Y', '#93938f', '2020-09-29 15:09:33'),
(1792, 13, 0, '4550-B', '#336f93', '2020-09-29 15:09:33'),
(1793, 13, 0, '4550-B20G', '#388493', '2020-09-29 15:09:33'),
(1794, 13, 0, '4550-B30G', '#398b93', '2020-09-29 15:09:33'),
(1795, 13, 0, '4550-B40G', '#3a9193', '2020-09-29 15:09:33'),
(1796, 13, 0, '4550-B50G', '#3a9390', '2020-09-29 15:09:33'),
(1797, 13, 0, '4550-B80G', '#37937f', '2020-09-29 15:09:33'),
(1798, 13, 0, '4550-B90G', '#329368', '2020-09-29 15:09:33'),
(1799, 13, 0, '4550-G', '#2e9356', '2020-09-29 15:09:33'),
(1800, 13, 0, '4550-G10Y', '#47934b', '2020-09-29 15:09:33'),
(1801, 13, 0, '4550-G20Y', '#599342', '2020-09-29 15:09:33'),
(1802, 13, 0, '4550-G30Y', '#68933a', '2020-09-29 15:09:33'),
(1803, 13, 0, '4550-G40Y', '#749335', '2020-09-29 15:09:33'),
(1804, 13, 0, '4550-G50Y', '#7e9336', '2020-09-29 15:09:33'),
(1805, 13, 0, '4550-G60Y', '#879338', '2020-09-29 15:09:33'),
(1806, 13, 0, '4550-G70Y', '#8f933a', '2020-09-29 15:09:33'),
(1807, 13, 0, '4550-R70B', '#583993', '2020-09-29 15:09:33'),
(1808, 13, 0, '4550-R80B', '#293d93', '2020-09-29 15:09:33'),
(1809, 13, 0, '4550-R90B', '#2d4f93', '2020-09-29 15:09:33'),
(1810, 13, 0, '4550-Y', '#938638', '2020-09-29 15:09:33'),
(1811, 13, 0, '4550-Y30R', '#936c33', '2020-09-29 15:09:33'),
(1812, 13, 0, '4550-Y40R', '#936331', '2020-09-29 15:09:33'),
(1813, 13, 0, '4550-Y50R', '#935a2f', '2020-09-29 15:09:33'),
(1814, 13, 0, '4550-Y60R', '#93502d', '2020-09-29 15:09:33'),
(1815, 13, 0, '4550-Y70R', '#93462b', '2020-09-29 15:09:33'),
(1816, 13, 0, '4550-Y80R', '#933b29', '2020-09-29 15:09:33'),
(1817, 13, 0, '4550-Y90R', '#93312a', '2020-09-29 15:09:33'),
(1818, 13, 0, '5000-N', '#7f7f7f', '2020-09-29 15:09:33'),
(1819, 13, 0, '5005-B20G', '#7b8486', '2020-09-29 15:09:33'),
(1820, 13, 0, '5005-B80G', '#7b8684', '2020-09-29 15:09:33'),
(1821, 13, 0, '5005-G20Y', '#7f867c', '2020-09-29 15:09:33'),
(1822, 13, 0, '5005-G50Y', '#83867b', '2020-09-29 15:09:33'),
(1823, 13, 0, '5005-G80Y', '#86867c', '2020-09-29 15:09:33'),
(1824, 13, 0, '5005-R20B', '#86767a', '2020-09-29 15:09:33'),
(1825, 13, 0, '5005-R50B', '#867b84', '2020-09-29 15:09:33'),
(1826, 13, 0, '5005-R80B', '#767986', '2020-09-29 15:09:33'),
(1827, 13, 0, '5005-Y20R', '#86827a', '2020-09-29 15:09:33'),
(1828, 13, 0, '5005-Y50R', '#867e79', '2020-09-29 15:09:33'),
(1829, 13, 0, '5005-Y80R', '#867976', '2020-09-29 15:09:33'),
(1830, 13, 0, '5010-B10G', '#708186', '2020-09-29 15:09:33'),
(1831, 13, 0, '5010-B30G', '#728486', '2020-09-29 15:09:33'),
(1832, 13, 0, '5010-B50G', '#738685', '2020-09-29 15:09:33'),
(1833, 13, 0, '5010-B70G', '#718683', '2020-09-29 15:09:33'),
(1834, 13, 0, '5010-B90G', '#6e867b', '2020-09-29 15:09:33'),
(1835, 13, 0, '5010-G10Y', '#738674', '2020-09-29 15:09:33'),
(1836, 13, 0, '5010-G30Y', '#7c8671', '2020-09-29 15:09:33'),
(1837, 13, 0, '5010-G50Y', '#818671', '2020-09-29 15:09:33'),
(1838, 13, 0, '5010-G70Y', '#858672', '2020-09-29 15:09:33'),
(1839, 13, 0, '5010-G90Y', '#868472', '2020-09-29 15:09:33'),
(1840, 13, 0, '5010-R10B', '#86676b', '2020-09-29 15:09:33'),
(1841, 13, 0, '5010-R30B', '#866b74', '2020-09-29 15:09:33'),
(1842, 13, 0, '5010-R50B', '#867182', '2020-09-29 15:09:33'),
(1843, 13, 0, '5010-R70B', '#776f86', '2020-09-29 15:09:33'),
(1844, 13, 0, '5010-R90B', '#6b7486', '2020-09-29 15:09:33'),
(1845, 13, 0, '5010-Y10R', '#868171', '2020-09-29 15:09:33'),
(1846, 13, 0, '5010-Y30R', '#867d6f', '2020-09-29 15:09:33'),
(1847, 13, 0, '5010-Y50R', '#86776d', '2020-09-29 15:09:33'),
(1848, 13, 0, '5010-Y70R', '#86716a', '2020-09-29 15:09:33'),
(1849, 13, 0, '5010-Y90R', '#866a68', '2020-09-29 15:09:33'),
(1850, 13, 0, '5020-B', '#5c7686', '2020-09-29 15:09:33'),
(1851, 13, 0, '5020-B10G', '#5e7c86', '2020-09-29 15:09:33'),
(1852, 13, 0, '5020-B30G', '#608286', '2020-09-29 15:09:33'),
(1853, 13, 0, '5020-B50G', '#618685', '2020-09-29 15:09:33'),
(1854, 13, 0, '5020-B70G', '#5f8680', '2020-09-29 15:09:33'),
(1855, 13, 0, '5020-B90G', '#5a8672', '2020-09-29 15:09:33'),
(1856, 13, 0, '5020-G', '#578669', '2020-09-29 15:09:33'),
(1857, 13, 0, '5020-G10Y', '#638665', '2020-09-29 15:09:33'),
(1858, 13, 0, '5020-G30Y', '#73865f', '2020-09-29 15:09:33'),
(1859, 13, 0, '5020-G50Y', '#7d865e', '2020-09-29 15:09:33'),
(1860, 13, 0, '5020-G70Y', '#848661', '2020-09-29 15:09:33'),
(1861, 13, 0, '5020-G90Y', '#868260', '2020-09-29 15:09:33'),
(1862, 13, 0, '5020-R', '#864e52', '2020-09-29 15:09:33'),
(1863, 13, 0, '5020-R10B', '#865057', '2020-09-29 15:09:33'),
(1864, 13, 0, '5020-R20B', '#86525d', '2020-09-29 15:09:33'),
(1865, 13, 0, '5020-R30B', '#865565', '2020-09-29 15:09:33'),
(1866, 13, 0, '5020-R40B', '#865970', '2020-09-29 15:09:33'),
(1867, 13, 0, '5020-R50B', '#865f7e', '2020-09-29 15:09:33'),
(1868, 13, 0, '5020-R60B', '#795d86', '2020-09-29 15:09:33'),
(1869, 13, 0, '5020-R70B', '#6b5d86', '2020-09-29 15:09:33'),
(1870, 13, 0, '5020-R80B', '#525b86', '2020-09-29 15:09:33'),
(1871, 13, 0, '5020-R90B', '#556586', '2020-09-29 15:09:33'),
(1872, 13, 0, '5020-Y', '#86805f', '2020-09-29 15:09:33'),
(1873, 13, 0, '5020-Y10R', '#867d5e', '2020-09-29 15:09:33'),
(1874, 13, 0, '5020-Y20R', '#86795c', '2020-09-29 15:09:33'),
(1875, 13, 0, '5020-Y30R', '#86755b', '2020-09-29 15:09:33'),
(1876, 13, 0, '5020-Y40R', '#867059', '2020-09-29 15:09:33'),
(1877, 13, 0, '5020-Y50R', '#866b58', '2020-09-29 15:09:33'),
(1878, 13, 0, '5020-Y60R', '#866656', '2020-09-29 15:09:33'),
(1879, 13, 0, '5020-Y70R', '#866154', '2020-09-29 15:09:33'),
(1880, 13, 0, '5020-Y80R', '#865b52', '2020-09-29 15:09:33'),
(1881, 13, 0, '5020-Y90R', '#865551', '2020-09-29 15:09:33'),
(1882, 13, 0, '5030-B', '#4b7086', '2020-09-29 15:09:33'),
(1883, 13, 0, '5030-B10G', '#4d7786', '2020-09-29 15:09:33'),
(1884, 13, 0, '5030-B30G', '#508186', '2020-09-29 15:09:33'),
(1885, 13, 0, '5030-B50G', '#518684', '2020-09-29 15:09:33'),
(1886, 13, 0, '5030-B70G', '#4f867e', '2020-09-29 15:09:33'),
(1887, 13, 0, '5030-B90G', '#49866b', '2020-09-29 15:09:33'),
(1888, 13, 0, '5030-G', '#45865f', '2020-09-29 15:09:33'),
(1889, 13, 0, '5030-G10Y', '#568658', '2020-09-29 15:09:33'),
(1890, 13, 0, '5030-G30Y', '#6b864f', '2020-09-29 15:09:33'),
(1891, 13, 0, '5030-G50Y', '#79864d', '2020-09-29 15:09:33'),
(1892, 13, 0, '5030-G70Y', '#838651', '2020-09-29 15:09:33'),
(1893, 13, 0, '5030-G90Y', '#868150', '2020-09-29 15:09:33'),
(1894, 13, 0, '5030-R', '#863c41', '2020-09-29 15:09:33'),
(1895, 13, 0, '5030-R10B', '#863e47', '2020-09-29 15:09:33'),
(1896, 13, 0, '5030-R20B', '#86404e', '2020-09-29 15:09:33'),
(1897, 13, 0, '5030-R30B', '#864459', '2020-09-29 15:09:33'),
(1898, 13, 0, '5030-R40B', '#864867', '2020-09-29 15:09:33'),
(1899, 13, 0, '5030-R50B', '#864e7b', '2020-09-29 15:09:33'),
(1900, 13, 0, '5030-R60B', '#734c86', '2020-09-29 15:09:33'),
(1901, 13, 0, '5030-R70B', '#614d86', '2020-09-29 15:09:33'),
(1902, 13, 0, '5030-R80B', '#404d86', '2020-09-29 15:09:33'),
(1903, 13, 0, '5030-R90B', '#445a86', '2020-09-29 15:09:33'),
(1904, 13, 0, '5030-Y', '#867e4f', '2020-09-29 15:09:33'),
(1905, 13, 0, '5030-Y10R', '#86794d', '2020-09-29 15:09:33'),
(1906, 13, 0, '5030-Y20R', '#86734c', '2020-09-29 15:09:33'),
(1907, 13, 0, '5030-Y30R', '#866e4a', '2020-09-29 15:09:33'),
(1908, 13, 0, '5030-Y40R', '#866848', '2020-09-29 15:09:33'),
(1909, 13, 0, '5030-Y50R', '#866146', '2020-09-29 15:09:33'),
(1910, 13, 0, '5030-Y60R', '#865b44', '2020-09-29 15:09:33'),
(1911, 13, 0, '5030-Y70R', '#865342', '2020-09-29 15:09:33'),
(1912, 13, 0, '5030-Y80R', '#864c40', '2020-09-29 15:09:33'),
(1913, 13, 0, '5030-Y90R', '#864440', '2020-09-29 15:09:33'),
(1914, 13, 0, '5040-B', '#3c6a86', '2020-09-29 15:09:33'),
(1915, 13, 0, '5040-B10G', '#3e7486', '2020-09-29 15:09:33'),
(1916, 13, 0, '5040-B20G', '#407a86', '2020-09-29 15:09:33'),
(1917, 13, 0, '5040-B30G', '#418086', '2020-09-29 15:09:33'),
(1918, 13, 0, '5040-B40G', '#428486', '2020-09-29 15:09:33'),
(1919, 13, 0, '5040-B50G', '#428684', '2020-09-29 15:09:33'),
(1920, 13, 0, '5040-B60G', '#418680', '2020-09-29 15:09:33'),
(1921, 13, 0, '5040-B70G', '#40867c', '2020-09-29 15:09:33'),
(1922, 13, 0, '5040-B80G', '#3f8676', '2020-09-29 15:09:33'),
(1923, 13, 0, '5040-B90G', '#3a8664', '2020-09-29 15:09:33'),
(1924, 13, 0, '5040-G', '#378656', '2020-09-29 15:09:33'),
(1925, 13, 0, '5040-G10Y', '#4b864d', '2020-09-29 15:09:33'),
(1926, 13, 0, '5040-G20Y', '#598646', '2020-09-29 15:09:33'),
(1927, 13, 0, '5040-G30Y', '#648641', '2020-09-29 15:09:33'),
(1928, 13, 0, '5040-G40Y', '#6e863d', '2020-09-29 15:09:33'),
(1929, 13, 0, '5040-G50Y', '#76863f', '2020-09-29 15:09:33'),
(1930, 13, 0, '5040-G60Y', '#7c8640', '2020-09-29 15:09:33'),
(1931, 13, 0, '5040-G70Y', '#838642', '2020-09-29 15:09:33'),
(1932, 13, 0, '5040-G80Y', '#868442', '2020-09-29 15:09:33'),
(1933, 13, 0, '5040-G90Y', '#867f41', '2020-09-29 15:09:33'),
(1934, 13, 0, '5040-R', '#862e34', '2020-09-29 15:09:33'),
(1935, 13, 0, '5040-R10B', '#86303a', '2020-09-29 15:09:33'),
(1936, 13, 0, '5040-R20B', '#863243', '2020-09-29 15:09:33'),
(1937, 13, 0, '5040-R30B', '#86354f', '2020-09-29 15:09:33'),
(1938, 13, 0, '5040-R40B', '#863960', '2020-09-29 15:09:33'),
(1939, 13, 0, '5040-R50B', '#863f78', '2020-09-29 15:09:33'),
(1940, 13, 0, '5040-R60B', '#6f3d86', '2020-09-29 15:09:33'),
(1941, 13, 0, '5040-R70B', '#583f86', '2020-09-29 15:09:33'),
(1942, 13, 0, '5040-R80B', '#324186', '2020-09-29 15:09:33'),
(1943, 13, 0, '5040-R90B', '#355086', '2020-09-29 15:09:33'),
(1944, 13, 0, '5040-Y', '#867c40', '2020-09-29 15:09:33'),
(1945, 13, 0, '5040-Y10R', '#86753f', '2020-09-29 15:09:33'),
(1946, 13, 0, '5040-Y20R', '#866f3d', '2020-09-29 15:09:33'),
(1947, 13, 0, '5040-Y30R', '#86683b', '2020-09-29 15:09:33'),
(1948, 13, 0, '5040-Y40R', '#866039', '2020-09-29 15:09:33'),
(1949, 13, 0, '5040-Y50R', '#865937', '2020-09-29 15:09:33'),
(1950, 13, 0, '5040-Y60R', '#865135', '2020-09-29 15:09:33'),
(1951, 13, 0, '5040-Y70R', '#864933', '2020-09-29 15:09:33'),
(1952, 13, 0, '5040-Y80R', '#864031', '2020-09-29 15:09:33'),
(1953, 13, 0, '5040-Y90R', '#863732', '2020-09-29 15:09:33'),
(1954, 13, 0, '5045-B10G', '#377286', '2020-09-29 15:09:33'),
(1955, 13, 0, '5500-N', '#727272', '2020-09-29 15:09:33'),
(1956, 13, 0, '5502-B', '#747779', '2020-09-29 15:09:33'),
(1957, 13, 0, '5502-G', '#747976', '2020-09-29 15:09:33'),
(1958, 13, 0, '5502-R', '#797272', '2020-09-29 15:09:33'),
(1959, 13, 0, '5502-Y', '#797875', '2020-09-29 15:09:33'),
(1960, 13, 0, '5540-B', '#366079', '2020-09-29 15:09:33'),
(1961, 13, 0, '5540-B10G', '#386879', '2020-09-29 15:09:33'),
(1962, 13, 0, '5540-B20G', '#396e79', '2020-09-29 15:09:33'),
(1963, 13, 0, '5540-B30G', '#3b7379', '2020-09-29 15:09:33'),
(1964, 13, 0, '5540-B40G', '#3c7779', '2020-09-29 15:09:33'),
(1965, 13, 0, '5540-B50G', '#3c7977', '2020-09-29 15:09:33'),
(1966, 13, 0, '5540-B80G', '#38796a', '2020-09-29 15:09:33'),
(1967, 13, 0, '5540-B90G', '#34795a', '2020-09-29 15:09:33'),
(1968, 13, 0, '5540-G', '#31794d', '2020-09-29 15:09:33'),
(1969, 13, 0, '5540-G10Y', '#437945', '2020-09-29 15:09:33'),
(1970, 13, 0, '5540-G20Y', '#50793f', '2020-09-29 15:09:33'),
(1971, 13, 0, '5540-G30Y', '#5a793b', '2020-09-29 15:09:33'),
(1972, 13, 0, '5540-G40Y', '#637937', '2020-09-29 15:09:33'),
(1973, 13, 0, '5540-G50Y', '#6a7938', '2020-09-29 15:09:33'),
(1974, 13, 0, '5540-G60Y', '#70793a', '2020-09-29 15:09:33'),
(1975, 13, 0, '5540-G70Y', '#76793b', '2020-09-29 15:09:33'),
(1976, 13, 0, '5540-R70B', '#4f3979', '2020-09-29 15:09:33'),
(1977, 13, 0, '5540-R90B', '#304879', '2020-09-29 15:09:33'),
(1978, 13, 0, '5540-Y90R', '#79322d', '2020-09-29 15:09:33'),
(1979, 13, 0, '6000-N', '#666666', '2020-09-29 15:09:33'),
(1980, 13, 0, '6005-B20G', '#636a6b', '2020-09-29 15:09:33'),
(1981, 13, 0, '6005-B80G', '#626b69', '2020-09-29 15:09:33'),
(1982, 13, 0, '6005-G20Y', '#656b63', '2020-09-29 15:09:33'),
(1983, 13, 0, '6005-G50Y', '#696b62', '2020-09-29 15:09:33'),
(1984, 13, 0, '6005-G80Y', '#6b6b63', '2020-09-29 15:09:33'),
(1985, 13, 0, '6005-R20B', '#6b5f61', '2020-09-29 15:09:33'),
(1986, 13, 0, '6005-R50B', '#6b636a', '2020-09-29 15:09:33'),
(1987, 13, 0, '6005-R80B', '#5f616b', '2020-09-29 15:09:33'),
(1988, 13, 0, '6005-Y20R', '#6b6862', '2020-09-29 15:09:33'),
(1989, 13, 0, '6005-Y50R', '#6b6560', '2020-09-29 15:09:33'),
(1990, 13, 0, '6005-Y80R', '#6b615e', '2020-09-29 15:09:33'),
(1991, 13, 0, '6010-B10G', '#5a676b', '2020-09-29 15:09:33'),
(1992, 13, 0, '6010-B30G', '#5b6a6b', '2020-09-29 15:09:33'),
(1993, 13, 0, '6010-B50G', '#5c6b6b', '2020-09-29 15:09:33'),
(1994, 13, 0, '6010-B70G', '#5b6b69', '2020-09-29 15:09:33'),
(1995, 13, 0, '6010-B90G', '#586b63', '2020-09-29 15:09:33'),
(1996, 13, 0, '6010-G10Y', '#5c6b5d', '2020-09-29 15:09:33'),
(1997, 13, 0, '6010-G30Y', '#636b5a', '2020-09-29 15:09:33'),
(1998, 13, 0, '6010-G50Y', '#676b5a', '2020-09-29 15:09:33'),
(1999, 13, 0, '6010-G70Y', '#6a6b5c', '2020-09-29 15:09:33'),
(2000, 13, 0, '6010-G90Y', '#6b6a5b', '2020-09-29 15:09:33'),
(2001, 13, 0, '6010-R10B', '#6b5356', '2020-09-29 15:09:33'),
(2002, 13, 0, '6010-R30B', '#6b565c', '2020-09-29 15:09:33'),
(2003, 13, 0, '6010-R50B', '#6b5a68', '2020-09-29 15:09:33'),
(2004, 13, 0, '6010-R70B', '#5f596b', '2020-09-29 15:09:33'),
(2005, 13, 0, '6010-R90B', '#565d6b', '2020-09-29 15:09:33'),
(2006, 13, 0, '6010-Y10R', '#6b675a', '2020-09-29 15:09:33'),
(2007, 13, 0, '6010-Y30R', '#6b6459', '2020-09-29 15:09:33'),
(2008, 13, 0, '6010-Y50R', '#6b5f57', '2020-09-29 15:09:33'),
(2009, 13, 0, '6010-Y70R', '#6b5a55', '2020-09-29 15:09:33'),
(2010, 13, 0, '6010-Y90R', '#6b5553', '2020-09-29 15:09:33'),
(2011, 13, 0, '6020-B', '#495e6b', '2020-09-29 15:09:33'),
(2012, 13, 0, '6020-B10G', '#4b636b', '2020-09-29 15:09:33'),
(2013, 13, 0, '6020-B30G', '#4d686b', '2020-09-29 15:09:33'),
(2014, 13, 0, '6020-B50G', '#4d6b6a', '2020-09-29 15:09:33'),
(2015, 13, 0, '6020-B70G', '#4c6b67', '2020-09-29 15:09:33'),
(2016, 13, 0, '6020-B90G', '#486b5b', '2020-09-29 15:09:33'),
(2017, 13, 0, '6020-G', '#456b54', '2020-09-29 15:09:33'),
(2018, 13, 0, '6020-G10Y', '#4f6b51', '2020-09-29 15:09:33'),
(2019, 13, 0, '6020-G30Y', '#5c6b4c', '2020-09-29 15:09:33'),
(2020, 13, 0, '6020-G50Y', '#646b4b', '2020-09-29 15:09:33'),
(2021, 13, 0, '6020-G70Y', '#6a6b4d', '2020-09-29 15:09:33'),
(2022, 13, 0, '6020-G90Y', '#6b684d', '2020-09-29 15:09:33'),
(2023, 13, 0, '6020-R', '#6b3f42', '2020-09-29 15:09:33'),
(2024, 13, 0, '6020-R10B', '#6b4045', '2020-09-29 15:09:33'),
(2025, 13, 0, '6020-R20B', '#6b424a', '2020-09-29 15:09:33'),
(2026, 13, 0, '6020-R30B', '#6b4451', '2020-09-29 15:09:33'),
(2027, 13, 0, '6020-R40B', '#6b4759', '2020-09-29 15:09:33'),
(2028, 13, 0, '6020-R50B', '#6b4c65', '2020-09-29 15:09:33'),
(2029, 13, 0, '6020-R60B', '#614a6b', '2020-09-29 15:09:33'),
(2030, 13, 0, '6020-R70B', '#564a6b', '2020-09-29 15:09:33'),
(2031, 13, 0, '6020-R80B', '#41496b', '2020-09-29 15:09:33'),
(2032, 13, 0, '6020-R90B', '#44516b', '2020-09-29 15:09:33'),
(2033, 13, 0, '6020-Y', '#6b674c', '2020-09-29 15:09:33'),
(2034, 13, 0, '6020-Y10R', '#6b644b', '2020-09-29 15:09:33'),
(2035, 13, 0, '6020-Y20R', '#6b614a', '2020-09-29 15:09:33'),
(2036, 13, 0, '6020-Y30R', '#6b5d49', '2020-09-29 15:09:33'),
(2037, 13, 0, '6020-Y40R', '#6b5a47', '2020-09-29 15:09:33'),
(2038, 13, 0, '6020-Y50R', '#6b5646', '2020-09-29 15:09:33'),
(2039, 13, 0, '6020-Y60R', '#6b5245', '2020-09-29 15:09:33'),
(2040, 13, 0, '6020-Y70R', '#6b4d43', '2020-09-29 15:09:33'),
(2041, 13, 0, '6020-Y80R', '#6b4841', '2020-09-29 15:09:33'),
(2042, 13, 0, '6020-Y90R', '#6b4441', '2020-09-29 15:09:33'),
(2043, 13, 0, '6030-B', '#3c596b', '2020-09-29 15:09:33'),
(2044, 13, 0, '6030-B10G', '#3e606b', '2020-09-29 15:09:33'),
(2045, 13, 0, '6030-B30G', '#40676b', '2020-09-29 15:09:33'),
(2046, 13, 0, '6030-B50G', '#416b6a', '2020-09-29 15:09:33'),
(2047, 13, 0, '6030-B70G', '#3f6b65', '2020-09-29 15:09:33'),
(2048, 13, 0, '6030-B90G', '#3a6b55', '2020-09-29 15:09:33'),
(2049, 13, 0, '6030-G', '#376b4c', '2020-09-29 15:09:33'),
(2050, 13, 0, '6030-G10Y', '#456b46', '2020-09-29 15:09:33'),
(2051, 13, 0, '6030-G30Y', '#566b3f', '2020-09-29 15:09:33'),
(2052, 13, 0, '6030-G50Y', '#616b3e', '2020-09-29 15:09:33'),
(2053, 13, 0, '6030-G70Y', '#696b40', '2020-09-29 15:09:33'),
(2054, 13, 0, '6030-G90Y', '#6b6740', '2020-09-29 15:09:33'),
(2055, 13, 0, '6030-R', '#6b3034', '2020-09-29 15:09:33'),
(2056, 13, 0, '6030-R10B', '#6b3239', '2020-09-29 15:09:33'),
(2057, 13, 0, '6030-R20B', '#6b343f', '2020-09-29 15:09:33'),
(2058, 13, 0, '6030-R30B', '#6b3647', '2020-09-29 15:09:33'),
(2059, 13, 0, '6030-R40B', '#6b3a52', '2020-09-29 15:09:33'),
(2060, 13, 0, '6030-R50B', '#6b3e63', '2020-09-29 15:09:33'),
(2061, 13, 0, '6030-R60B', '#5c3d6b', '2020-09-29 15:09:33'),
(2062, 13, 0, '6030-R70B', '#4d3d6b', '2020-09-29 15:09:33'),
(2063, 13, 0, '6030-R80B', '#333d6b', '2020-09-29 15:09:33'),
(2064, 13, 0, '6030-R90B', '#36486b', '2020-09-29 15:09:33'),
(2065, 13, 0, '6030-Y', '#6b653f', '2020-09-29 15:09:33'),
(2066, 13, 0, '6030-Y10R', '#6b613e', '2020-09-29 15:09:33'),
(2067, 13, 0, '6030-Y20R', '#6b5c3d', '2020-09-29 15:09:33'),
(2068, 13, 0, '6030-Y30R', '#6b583b', '2020-09-29 15:09:33'),
(2069, 13, 0, '6030-Y40R', '#6b533a', '2020-09-29 15:09:33'),
(2070, 13, 0, '6030-Y50R', '#6b4e38', '2020-09-29 15:09:33'),
(2071, 13, 0, '6030-Y60R', '#6b4836', '2020-09-29 15:09:33'),
(2072, 13, 0, '6030-Y70R', '#6b4335', '2020-09-29 15:09:33'),
(2073, 13, 0, '6030-Y80R', '#6b3d33', '2020-09-29 15:09:33'),
(2074, 13, 0, '6030-Y90R', '#6b3733', '2020-09-29 15:09:33'),
(2075, 13, 0, '6035-B60G', '#3a6b67', '2020-09-29 15:09:33'),
(2076, 13, 0, '6500-N', '#595959', '2020-09-29 15:09:33'),
(2077, 13, 0, '6502-B', '#5a5d5e', '2020-09-29 15:09:33'),
(2078, 13, 0, '6502-G', '#5a5e5b', '2020-09-29 15:09:33'),
(2079, 13, 0, '6502-R', '#5e5959', '2020-09-29 15:09:33'),
(2080, 13, 0, '6502-Y', '#5e5d5b', '2020-09-29 15:09:33'),
(2081, 13, 0, '6530-B30G', '#385a5e', '2020-09-29 15:09:33'),
(2082, 13, 0, '6530-B50G', '#395e5d', '2020-09-29 15:09:33'),
(2083, 13, 0, '6530-G10Y', '#3c5e3e', '2020-09-29 15:09:33'),
(2084, 13, 0, '6530-G50Y', '#555e36', '2020-09-29 15:09:33'),
(2085, 13, 0, '7000-N', '#4c4c4c', '2020-09-29 15:09:33'),
(2086, 13, 0, '7005-B20G', '#4a4f50', '2020-09-29 15:09:33'),
(2087, 13, 0, '7005-B80G', '#4a504f', '2020-09-29 15:09:33'),
(2088, 13, 0, '7005-G20Y', '#4c504a', '2020-09-29 15:09:33'),
(2089, 13, 0, '7005-G50Y', '#4f504a', '2020-09-29 15:09:33'),
(2090, 13, 0, '7005-G80Y', '#50504a', '2020-09-29 15:09:33'),
(2091, 13, 0, '7005-R20B', '#504749', '2020-09-29 15:09:33'),
(2092, 13, 0, '7005-R50B', '#504a4f', '2020-09-29 15:09:33'),
(2093, 13, 0, '7005-R80B', '#474950', '2020-09-29 15:09:33'),
(2094, 13, 0, '7005-Y20R', '#504e4a', '2020-09-29 15:09:33'),
(2095, 13, 0, '7005-Y50R', '#504c48', '2020-09-29 15:09:33'),
(2096, 13, 0, '7005-Y80R', '#504947', '2020-09-29 15:09:33'),
(2097, 13, 0, '7010-B10G', '#434d50', '2020-09-29 15:09:33'),
(2098, 13, 0, '7010-B30G', '#444f50', '2020-09-29 15:09:33'),
(2099, 13, 0, '7010-B50G', '#455050', '2020-09-29 15:09:33'),
(2100, 13, 0, '7010-B70G', '#44504f', '2020-09-29 15:09:33'),
(2101, 13, 0, '7010-B90G', '#42504a', '2020-09-29 15:09:33'),
(2102, 13, 0, '7010-G10Y', '#455046', '2020-09-29 15:09:33'),
(2103, 13, 0, '7010-G30Y', '#4a5044', '2020-09-29 15:09:33'),
(2104, 13, 0, '7010-G50Y', '#4e5044', '2020-09-29 15:09:33'),
(2105, 13, 0, '7010-G70Y', '#505045', '2020-09-29 15:09:33'),
(2106, 13, 0, '7010-G90Y', '#504f44', '2020-09-29 15:09:33'),
(2107, 13, 0, '7010-R10B', '#503e40', '2020-09-29 15:09:33'),
(2108, 13, 0, '7010-R30B', '#504045', '2020-09-29 15:09:33'),
(2109, 13, 0, '7010-R50B', '#50444e', '2020-09-29 15:09:33'),
(2110, 13, 0, '7010-R70B', '#484350', '2020-09-29 15:09:33'),
(2111, 13, 0, '7010-R90B', '#404650', '2020-09-29 15:09:33'),
(2112, 13, 0, '7010-Y10R', '#504d44', '2020-09-29 15:09:33'),
(2113, 13, 0, '7010-Y30R', '#504b42', '2020-09-29 15:09:33'),
(2114, 13, 0, '7010-Y50R', '#504841', '2020-09-29 15:09:33'),
(2115, 13, 0, '7010-Y70R', '#50443f', '2020-09-29 15:09:33'),
(2116, 13, 0, '7010-Y90R', '#503f3e', '2020-09-29 15:09:33'),
(2117, 13, 0, '7020-B', '#374750', '2020-09-29 15:09:33'),
(2118, 13, 0, '7020-B10G', '#384a50', '2020-09-29 15:09:33'),
(2119, 13, 0, '7020-B30G', '#3a4e50', '2020-09-29 15:09:33'),
(2120, 13, 0, '7020-B50G', '#3a5050', '2020-09-29 15:09:33'),
(2121, 13, 0, '7020-B70G', '#39504d', '2020-09-29 15:09:33'),
(2122, 13, 0, '7020-B90G', '#365045', '2020-09-29 15:09:33'),
(2123, 13, 0, '7020-G', '#34503f', '2020-09-29 15:09:33'),
(2124, 13, 0, '7020-G10Y', '#3c503c', '2020-09-29 15:09:33'),
(2125, 13, 0, '7020-G30Y', '#455039', '2020-09-29 15:09:33'),
(2126, 13, 0, '7020-G50Y', '#4b5038', '2020-09-29 15:09:33'),
(2127, 13, 0, '7020-G70Y', '#4f503a', '2020-09-29 15:09:33'),
(2128, 13, 0, '7020-G90Y', '#504e3a', '2020-09-29 15:09:33'),
(2129, 13, 0, '7020-R', '#502f31', '2020-09-29 15:09:33'),
(2130, 13, 0, '7020-R10B', '#503034', '2020-09-29 15:09:33'),
(2131, 13, 0, '7020-R20B', '#503138', '2020-09-29 15:09:33'),
(2132, 13, 0, '7020-R30B', '#50333c', '2020-09-29 15:09:33'),
(2133, 13, 0, '7020-R40B', '#503543', '2020-09-29 15:09:33'),
(2134, 13, 0, '7020-R50B', '#50394c', '2020-09-29 15:09:33'),
(2135, 13, 0, '7020-R60B', '#483750', '2020-09-29 15:09:33'),
(2136, 13, 0, '7020-R70B', '#403750', '2020-09-29 15:09:33'),
(2137, 13, 0, '7020-R80B', '#313750', '2020-09-29 15:09:33'),
(2138, 13, 0, '7020-R90B', '#333d50', '2020-09-29 15:09:33'),
(2139, 13, 0, '7020-Y', '#504d39', '2020-09-29 15:09:33'),
(2140, 13, 0, '7020-Y10R', '#504b38', '2020-09-29 15:09:33'),
(2141, 13, 0, '7020-Y20R', '#504837', '2020-09-29 15:09:33'),
(2142, 13, 0, '7020-Y30R', '#504637', '2020-09-29 15:09:33'),
(2143, 13, 0, '7020-Y40R', '#504336', '2020-09-29 15:09:33'),
(2144, 13, 0, '7020-Y50R', '#504035', '2020-09-29 15:09:33'),
(2145, 13, 0, '7020-Y60R', '#503d33', '2020-09-29 15:09:33'),
(2146, 13, 0, '7020-Y70R', '#503a32', '2020-09-29 15:09:33'),
(2147, 13, 0, '7020-Y80R', '#503631', '2020-09-29 15:09:33'),
(2148, 13, 0, '7020-Y90R', '#503331', '2020-09-29 15:09:33'),
(2149, 13, 0, '7500-N', '#3f3f3f', '2020-09-29 15:09:33'),
(2150, 13, 0, '7502-B', '#414243', '2020-09-29 15:09:33'),
(2151, 13, 0, '7502-G', '#404341', '2020-09-29 15:09:33'),
(2152, 13, 0, '7502-R', '#433f40', '2020-09-29 15:09:33'),
(2153, 13, 0, '7502-Y', '#434341', '2020-09-29 15:09:33'),
(2154, 13, 0, '8000-N', '#323232', '2020-09-29 15:09:33'),
(2155, 13, 0, '8005-B20G', '#313536', '2020-09-29 15:09:33'),
(2156, 13, 0, '8005-B80G', '#313635', '2020-09-29 15:09:33'),
(2157, 13, 0, '8005-G20Y', '#333632', '2020-09-29 15:09:33'),
(2158, 13, 0, '8005-G50Y', '#353631', '2020-09-29 15:09:33'),
(2159, 13, 0, '8005-G80Y', '#363632', '2020-09-29 15:09:33'),
(2160, 13, 0, '8005-R20B', '#362f31', '2020-09-29 15:09:33'),
(2161, 13, 0, '8005-R50B', '#363135', '2020-09-29 15:09:33'),
(2162, 13, 0, '8005-R80B', '#2f3036', '2020-09-29 15:09:33'),
(2163, 13, 0, '8005-Y20R', '#363431', '2020-09-29 15:09:33'),
(2164, 13, 0, '8005-Y50R', '#363330', '2020-09-29 15:09:33'),
(2165, 13, 0, '8005-Y80R', '#36302f', '2020-09-29 15:09:33'),
(2166, 13, 0, '8010-B10G', '#2d3336', '2020-09-29 15:09:33'),
(2167, 13, 0, '8010-B30G', '#2e3536', '2020-09-29 15:09:33'),
(2168, 13, 0, '8010-B50G', '#2e3635', '2020-09-29 15:09:33'),
(2169, 13, 0, '8010-B70G', '#2d3634', '2020-09-29 15:09:33'),
(2170, 13, 0, '8010-B90G', '#2c3631', '2020-09-29 15:09:33'),
(2171, 13, 0, '8010-G10Y', '#2e362e', '2020-09-29 15:09:33'),
(2172, 13, 0, '8010-G30Y', '#31362d', '2020-09-29 15:09:33'),
(2173, 13, 0, '8010-G50Y', '#34362d', '2020-09-29 15:09:33'),
(2174, 13, 0, '8010-G70Y', '#35362e', '2020-09-29 15:09:33'),
(2175, 13, 0, '8010-G90Y', '#36352e', '2020-09-29 15:09:33'),
(2176, 13, 0, '8010-R10B', '#36292b', '2020-09-29 15:09:33'),
(2177, 13, 0, '8010-R30B', '#362b2e', '2020-09-29 15:09:33'),
(2178, 13, 0, '8010-R50B', '#362d34', '2020-09-29 15:09:33'),
(2179, 13, 0, '8010-R70B', '#302d36', '2020-09-29 15:09:33'),
(2180, 13, 0, '8010-R90B', '#2b2e36', '2020-09-29 15:09:33'),
(2181, 13, 0, '8010-Y10R', '#36342d', '2020-09-29 15:09:33'),
(2182, 13, 0, '8010-Y30R', '#36322c', '2020-09-29 15:09:33'),
(2183, 13, 0, '8010-Y50R', '#36302b', '2020-09-29 15:09:33'),
(2184, 13, 0, '8010-Y70R', '#362d2a', '2020-09-29 15:09:33'),
(2185, 13, 0, '8010-Y90R', '#362a2a', '2020-09-29 15:09:33'),
(2186, 13, 0, '8500-N', '#262626', '2020-09-29 15:09:33'),
(2187, 13, 0, '8500-N', '#262626', '2020-09-29 15:09:33'),
(2188, 13, 0, '8502-B', '#272828', '2020-09-29 15:09:33'),
(2189, 13, 0, '8502-G', '#272827', '2020-09-29 15:09:33'),
(2190, 13, 0, '8502-R', '#282626', '2020-09-29 15:09:33'),
(2191, 13, 0, '8502-Y', '#282827', '2020-09-29 15:09:33'),
(2192, 13, 0, '8505-B20G', '#252828', '2020-09-29 15:09:33'),
(2193, 13, 0, '8505-B80G', '#252828', '2020-09-29 15:09:33'),
(2194, 13, 0, '8505-G20Y', '#262825', '2020-09-29 15:09:33'),
(2195, 13, 0, '8505-G80Y', '#282825', '2020-09-29 15:09:33'),
(2196, 13, 0, '8505-R20B', '#282425', '2020-09-29 15:09:33'),
(2197, 13, 0, '8505-R80B', '#242428', '2020-09-29 15:09:33'),
(2198, 13, 0, '8505-Y20R', '#282725', '2020-09-29 15:09:33'),
(2199, 13, 0, '8505-Y80R', '#282423', '2020-09-29 15:09:33'),
(2206, 17, 1, 'SS 25', 'https://pro-staff.ro/upload/colors/ss25.jpg', '2020-10-15 12:24:11'),
(2211, 17, 1, 'SS 29', 'https://pro-staff.ro/upload/colors/ss29.jpg', '2020-10-15 12:38:56'),
(2205, 17, 1, 'SS 01', 'https://pro-staff.ro/upload/colors/ss01.jpg', '2020-10-15 12:18:26'),
(2208, 17, 1, 'SS 27', 'https://pro-staff.ro/upload/colors/ss27.jpg', '2020-10-15 12:32:05'),
(2217, 17, 2, 'CS 05', 'https://pro-staff.ro/upload/colors/cs05.jpg', '2020-10-15 13:17:30'),
(2218, 17, 2, 'CS 06', 'https://pro-staff.ro/upload/colors/cs06.jpg', '2020-10-15 13:19:10'),
(2221, 17, 3, 'GS 15', 'https://pro-staff.ro/upload/colors/gs15.jpg', '2020-10-15 13:33:51'),
(2220, 17, 3, 'GS 02', 'https://pro-staff.ro/upload/colors/gs02.jpg', '2020-10-15 13:31:28'),
(2222, 17, 3, 'GS 22', 'https://pro-staff.ro/upload/colors/gs22.jpg', '2020-10-15 13:37:46'),
(2223, 17, 3, 'GS 27', 'https://pro-staff.ro/upload/colors/gs27.jpg', '2020-10-15 13:41:43'),
(2226, 17, 4, 'PS 06', 'https://pro-staff.ro/upload/colors/ps06.jpg', '2020-10-15 13:53:24'),
(2225, 17, 4, 'PS 01', 'https://pro-staff.ro/upload/colors/ps01.jpg', '2020-10-15 13:49:34'),
(2227, 17, 4, 'PS 13', 'https://pro-staff.ro/upload/colors/ps13.jpg', '2020-10-15 13:56:31'),
(2228, 17, 4, 'PS 17', 'https://pro-staff.ro/upload/colors/ps17.jpg', '2020-10-15 13:59:45'),
(2229, 17, 4, 'PS 18', 'https://pro-staff.ro/upload/colors/ps18.jpg', '2020-10-15 14:01:40'),
(2230, 17, 4, 'PS 19', 'https://pro-staff.ro/upload/colors/ps19.jpg', '2020-10-15 14:04:24'),
(2231, 17, 4, 'PS 20', 'https://pro-staff.ro/upload/colors/ps20.jpg', '2020-10-15 14:07:10'),
(2232, 17, 4, 'PS 23', 'https://pro-staff.ro/upload/colors/ps23.jpg', '2020-10-15 14:09:32'),
(2233, 17, 4, 'PS 25', 'https://pro-staff.ro/upload/colors/ps25.jpg', '2020-10-15 14:11:30'),
(2234, 17, 4, 'PS 27', 'https://pro-staff.ro/upload/colors/ps27.jpg', '2020-10-15 14:13:06'),
(2244, 18, 5, 'OS 25', 'https://pro-staff.ro/upload/colors/os 25.jpg', '2020-10-21 11:19:43'),
(2236, 18, 5, 'OS 01', 'https://pro-staff.ro/upload/colors/os 01.jpg', '2020-10-21 10:56:20'),
(2237, 18, 5, 'OS 13', 'https://pro-staff.ro/upload/colors/os 13.jpg', '2020-10-21 10:58:42'),
(2238, 18, 5, 'OS 17', 'https://pro-staff.ro/upload/colors/os 17.jpg', '2020-10-21 11:06:00'),
(2239, 18, 5, 'OS 18', 'https://pro-staff.ro/upload/colors/os 18.jpg', '2020-10-21 11:08:10'),
(2240, 18, 5, 'OS 19', 'https://pro-staff.ro/upload/colors/os 19.jpg', '2020-10-21 11:10:22'),
(2241, 18, 5, 'OS 20', 'https://pro-staff.ro/upload/colors/os 20.jpg', '2020-10-21 11:14:50'),
(2242, 18, 5, 'OS 23', 'https://pro-staff.ro/upload/colors/os 23.jpg', '2020-10-21 11:16:50'),
(2245, 18, 5, 'OS 27', 'https://pro-staff.ro/upload/colors/os 27.jpg', '2020-10-21 11:22:52'),
(2258, 19, 7, 'SV 01', 'https://pro-staff.ro/upload/colors/kedive sv 01.jpg', '2020-10-21 14:27:51'),
(2247, 18, 6, 'OL 01', 'https://pro-staff.ro/upload/colors/ol 01.jpg', '2020-10-21 13:25:38'),
(2248, 18, 6, 'OL 06', 'https://pro-staff.ro/upload/colors/ol 06.jpg', '2020-10-21 13:31:02'),
(2249, 18, 6, 'OL 13', 'https://pro-staff.ro/upload/colors/ol 13.jpg', '2020-10-21 13:34:53'),
(2250, 18, 6, 'OL 17', 'https://pro-staff.ro/upload/colors/ol 17.jpg', '2020-10-21 13:37:41'),
(2251, 18, 6, 'OL 18', 'https://pro-staff.ro/upload/colors/ol 18.jpg', '2020-10-21 13:39:52'),
(2252, 18, 6, 'OL 19', 'https://pro-staff.ro/upload/colors/ol 19.jpg', '2020-10-21 13:49:20'),
(2253, 18, 6, 'OL 20', 'https://pro-staff.ro/upload/colors/ol 20.jpg', '2020-10-21 13:50:05'),
(2254, 18, 6, 'OL 23', 'https://pro-staff.ro/upload/colors/ol 23.jpg', '2020-10-21 13:55:57'),
(2255, 18, 6, 'OL 25', 'https://pro-staff.ro/upload/colors/ol 25.jpg', '2020-10-21 14:08:00'),
(2256, 18, 6, 'OL 27', 'https://pro-staff.ro/upload/colors/ol 27.jpg', '2020-10-21 14:09:54'),
(2259, 19, 7, 'SV 16', 'https://pro-staff.ro/upload/colors/kedive sv 16.jpg', '2020-10-21 14:31:37'),
(2260, 19, 7, 'SV 24', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg', '2020-10-21 14:34:35'),
(2262, 19, 7, 'SV 26', 'https://pro-staff.ro/upload/colors/kedive sv 26.jpg', '2020-10-21 14:40:30'),
(2263, 19, 7, 'SV 25', 'https://pro-staff.ro/upload/colors/kedive sv 25.jpg', '2020-10-21 14:42:50'),
(2264, 19, 7, 'SV 27', 'https://pro-staff.ro/upload/colors/kedive sv 27.jpg', '2020-10-21 14:45:42'),
(2265, 19, 7, 'SV 28', 'https://pro-staff.ro/upload/colors/kedive sv 28.jpg', '2020-10-21 14:48:07'),
(2266, 19, 7, 'SV 29', 'https://pro-staff.ro/upload/colors/kedive sv 29.jpg', '2020-10-21 14:50:02'),
(2267, 19, 7, 'SV 30', 'https://pro-staff.ro/upload/colors/kedive sv 30.jpg', '2020-10-21 14:51:58'),
(2269, 19, 8, 'GV 02', 'https://pro-staff.ro/upload/colors/gv 02.jpg', '2020-10-21 16:07:23'),
(2270, 19, 8, 'GV 13', 'https://pro-staff.ro/upload/colors/kedive gv 13.jpg', '2020-10-22 09:26:32'),
(2271, 19, 8, 'GV 15', 'https://pro-staff.ro/upload/colors/kedive gv 15.jpg', '2020-10-22 09:28:57'),
(2272, 19, 8, 'GV 17', 'https://pro-staff.ro/upload/colors/kedive gv 17.jpg', '2020-10-22 09:32:29'),
(2273, 19, 8, 'GV 22', 'https://pro-staff.ro/upload/colors/kedive gv 22.jpg', '2020-10-22 09:34:47'),
(2274, 19, 8, 'GV 23', 'https://pro-staff.ro/upload/colors/kedive gv 23.jpg', '2020-10-22 09:38:17'),
(2275, 19, 8, 'GV 27', 'https://pro-staff.ro/upload/colors/kedive gv 27.jpg', '2020-10-22 09:40:00'),
(2278, 19, 9, 'PV 01', 'https://pro-staff.ro/upload/colors/kedive pv 01.jpg', '2020-10-22 10:37:23'),
(2279, 19, 9, 'PV 06', 'https://pro-staff.ro/upload/colors/kedive pv 06.jpg', '2020-10-22 10:39:18'),
(2280, 19, 9, 'PV 13', 'https://pro-staff.ro/upload/colors/kedive pv 13.jpg', '2020-10-22 10:41:15'),
(2281, 19, 9, 'PV 17', 'https://pro-staff.ro/upload/colors/kedive pv 17.jpg', '2020-10-22 10:42:34'),
(2282, 19, 9, 'PV 18', 'https://pro-staff.ro/upload/colors/kedive pv 18.jpg', '2020-10-22 10:45:25'),
(2283, 19, 9, 'PV 19', 'https://pro-staff.ro/upload/colors/kedive pv 19.jpg', '2020-10-22 10:46:59'),
(2284, 19, 9, 'PV 20', 'https://pro-staff.ro/upload/colors/kedive pv 20.jpg', '2020-10-22 11:01:53'),
(2285, 19, 9, 'PV 23', 'https://pro-staff.ro/upload/colors/kedive pv 23.jpg', '2020-10-22 11:02:00'),
(2286, 19, 9, 'PV 25', 'https://pro-staff.ro/upload/colors/kedive pv 25.jpg', '2020-10-22 11:04:35'),
(2287, 19, 9, 'PV 27', 'https://pro-staff.ro/upload/colors/kedive pv 27.jpg', '2020-10-22 11:07:00'),
(2294, 20, 0, 'Organza Base Bianca', 'https://pro-staff.ro/upload/colors/Organza Base Bianca.jpg', '2020-10-22 13:17:36'),
(2289, 19, 10, 'CV 01', 'https://pro-staff.ro/upload/colors/kedive cv 01.jpg', '2020-10-22 12:47:56'),
(2290, 19, 10, 'CV 02', 'https://pro-staff.ro/upload/colors/kedive cv 02.jpg', '2020-10-22 12:49:56'),
(2291, 19, 10, 'CV 03', 'https://pro-staff.ro/upload/colors/kedive cv 03.jpg', '2020-10-22 12:51:53'),
(2292, 19, 10, 'CV 05', 'https://pro-staff.ro/upload/colors/kedive cv 05.jpg', '2020-10-22 12:54:24'),
(2293, 19, 10, 'CV 06', 'https://pro-staff.ro/upload/colors/kedive cv 06.jpg', '2020-10-22 12:57:26'),
(2295, 20, 0, 'Organza Base Oro', 'https://pro-staff.ro/upload/colors/Organza Base Oro.jpg', '2020-10-22 13:23:36'),
(2296, 20, 0, 'Organza Base Argento', 'https://pro-staff.ro/upload/colors/Organza Base Argento.jpg', '2020-10-22 13:31:35'),
(2297, 20, 0, 'Organza Base Rubino', 'https://pro-staff.ro/upload/colors/Organza Base Rubio.jpg', '2020-10-22 13:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` double(7,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_romanian_ci DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `categoryfeatured` tinyint(1) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `datasheet` varchar(255) NOT NULL,
  `PaletteColorID` int(11) DEFAULT NULL,
  `tutorial` varchar(255) DEFAULT NULL,
  `orderProd` int(11) NOT NULL DEFAULT 999999
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `brand`, `sku`, `price`, `image_url`, `description`, `alias`, `featured`, `categoryfeatured`, `isActive`, `datasheet`, `PaletteColorID`, `tutorial`, `orderProd`) VALUES
(1011, 'Isocasa', 'CP Italia', 'CP-5205200000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Isocasa_CP_Italia.jpg', 'Izolant fixativ vinilic cu apa pentru interior. Puterea de legatura este ideala pentru a izola si a consolida suprafetele constructiilor, atat a celor vechi cat si a celor noi, inainte de aplicarea dispersiilor si acoperirea fatadelor. Produsul este recomandat ca o foarte buna amorsa pentru peretii de huma.', 'isocasa', 0, 1, 1, '', 0, NULL, 999999),
(1013, 'Polistuck pasta', 'CP Italia', 'CP-770770000001', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Polistuck_1kg_CP_Italia.jpg', 'Glet pasta special pentru interior, ideal pentru zid si lemn, usor de aplicat, ancorare optima si usor de slefuit.', 'polistuck-pasta', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Polistuck_Pasta_1kg.pdf', 0, NULL, 999999),
(1019, 'Feelings Universal Primer', 'Tikkurila', 'TK-7260201P130', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Feelings_Universal_Primer_Tikkurila.jpg', 'Amorsa acrilica pe baza de apa, cu continut de latex. Adecvata pentru aplicarea pe suprafete noi sau vopsite cu vopsele pe baza de apa, vopsele alchidice sau cu cataliza acida.', 'feelings-universal-primer', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Feelings_Universal_Primer.pdf', 0, NULL, 999999),
(1023, 'Optiva Primer', 'Tikkurila', 'TK-C668910010', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Optiva_Primer_9L_Tikkurila.jpg', 'Amorsa acrilica pe baza de apa pentru pereti si tavane la interior. Reduce si uniformizeaza absorbtia suprafetei suport si mareste astfel eficienta lavabilelor Optiva. Pentru vopsirea suprafetelor interioare din gipscarton, beton sau a celor tencuite cu tencuiala ciment-var. Nu se recomanda aplicarea pe suprafete vopsite cu vopsele pe baza de var sau clei.\n', 'optiva-primer', 0, 1, 1, '', 0, NULL, 999999),
(1025, 'Brionature impregnant', 'CP Italia', 'CP-635420200008', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Brionature_impregnant_0.75L_CP_Italia.jpg', 'Amorsa acrilica pe baza de apa pentru pereti si tavane la interior. Reduce si uniformizeaza absorbtia suprafetei suport si mareste astfel eficienta lavabilelor Optiva. Pentru vopsirea suprafetelor interioare din gipscarton, beton sau a celor tencuite cu tencuiala ciment-var. Nu se recomanda aplicarea pe suprafete vopsite cu vopsele pe baza de var sau clei.', 'brionature-impregnant', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Brionature_Impregnant_0.75L.pdf', 0, NULL, 999999),
(1029, 'Valtti Color', 'Tikkurila', 'TK-B693905910', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Valtti_Color_9L_Tikkurila.jpg', 'Lazura mata, semitransparenta pentru lemn exterior. Valtti Color New se impregneaza profund in structura lemnului si evidentiaza frumusetea naturala a lemnului. Formeaza suprafata rezistenta impotriva biocoroziunii, mareste rezistenta lemnului impotriva umiditatii si a radiatiilor UV. Se recomanda aplicarea pe suprafete grunduite cu Valtti Base+.', 'valtti-color', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Valtti_Color_2.7L.pdf', 0, NULL, 999999),
(1031, 'Tratament lemn multiefect', 'V33', 'V33-109713', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Tratament_lemn_multiefect_0.75L_V33.jpg', 'Distruge termitele si insectele. Impiedica reinfestarea. Proprietati anti-mucegai. Produs de generatie noua pentru tratamentul lemnului, cu garantie de 10 ani, efect imediat asupra insectelor lemnului si efect fungicid. Previne reinfectarea prin pastrarea substantei active incorporate in masa lemnului.', 'tratament-lemn-multiefect', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Tratament_multiefect_0.75L.pdf', 0, NULL, 999999),
(1037, 'Lazura parchet ECO PROTECT', 'V33', 'V33-59761', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/ECO_PROTECT_0.75L_V33.jpg', 'Lac de parchet pe baza de apa de calitate superioara. Protectie de lunga durata: rezistent la zgarieturi, socuri mecanice, apa si pete de grasime. Protejeaza mediul inconjurator prin cantitate redusa de COV (Compus Organic Volatil) ? mai putin de 5 g/L, lipsa emisie de aldehida formica (testat in concordanta cu standardul ISO EN 16 000), formula certificata cu eticheta eco si certificat EN71.3 privind protectia copiilor.', 'lazura-parchet-eco-protect', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Lazura_lemn_Eco_Protect_0.75L.pdf', 0, NULL, 999999),
(1041, 'Bait protectie superioara', 'V33', 'V33-59793', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Bait_protectie_superioara_0.75L_V33.jpg', 'Protectie ridicata impotriva radiatiilor UV si a intemperiilor. Impermeabil: protejeaza lemnul impotriva ploii si a umiditatii. Produs gata de aplicare. Penetreaza in lemn, ofera protectie si efect decorativ, nu picura. Usor de aplicat, V33 Lazura pentru lemn cu protectie superioara se poate reconditiona fara decapare prin aplicarea unui strat nou.', 'bait-protectie-superioara', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Bait_protectie_superioara_10L.pdf', 0, NULL, 999999),
(1049, 'Lazura lemn pe baza de apa', 'V33', 'V33-59765', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Lazura_lemn_baza_apa_0.75L_V33.jpg', 'Efect decorativ, protectie excelenta si rezistenta ridicata la apa. Rezistenta ridicata la radiatii UV si intemperii. Sistem anti-picurare: foarte usor de aplicat pe suprafete verticale, nupicura si adera excelent la substrat. Uscare rapida in jumatate de zi, inodor. Rezistenta la apa: impermeabilizare perfecta a substratului: apa nu poate sa penetreze in lemn. Microporos: putere de respingere a apei: impermeabilizeaza substratul in timp ce lasa lemnul sa respire, datorita structurii microporoase a acoperirii.', 'lazura-lemn-pe-baza-de-apa', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Lazura_lemn_baza_apa_2.5L.pdf', 0, NULL, 999999),
(1053, 'Otex', 'Tikkurila', 'TK-20362010110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Otex_0.9L_Tikkurila.jpg', 'Grund alchidic cu uscare rapida. Adecvat ca si grund sau strat intermediar pe suprafete vechi sau noi de lemn, placa fibrolemnoasa sau placa aglomerata. Are aderenta buna pe faianta, sticla, plasa din fibra de sticla, PVC, aluminiu, otel zincat si pe suprafete vopsite cu vopsele catalitice sau alchidice.', 'otex', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Otex_0.9L.pdf', 0, NULL, 999999),
(1059, 'Temaprime EE', 'Tikkurila', 'TK-gtvh', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temaprime_EE_2.7L_Tikkurila.jpg', 'Grund special anticoroziv monocomponent, cu uscare rapida.\nRECOMANDARI DE UTILIZARE SI CARACTERISTICI PRINCIPALE:\n* Grund pentru suprafete de otel, aluminiu si suprafete zincate.\n* Grundul sufera daune minime in urma arderii, sudarii sau taierii cu flacara. Vopseaua arsa se poate indeparta usor, de exemplu, cu o perie.\n* Proprietati anticorozive excelente.\n* Pe suprafete de otel aflate in incinte interioare uscate, se poate aplica si fara finisare ulterioara.\n* Recomandat ca grund pe suprafete aflate la interior sau exterior, deasupra liniei de plutire la vapoare, exterior rezervoare, utilaje agricole si alte tipuri de suprafete, in special acolo unde se cere aderenta buna si proprietati anticorozive.', 'temaprime-ee', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temaprime_EE_2.7L.pdf', 0, NULL, 999999),
(1061, 'Everal 1050', 'Tikkurila', 'TK-0061050U010', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Everal_diluant_universal_Tikkurila.jpg', 'Diluant universal', 'everal-1050', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Everal_1050.pdf', 0, NULL, 999999),
(1063, 'Unica Super', 'Tikkurila', 'TK-5566404P110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Unica_Super_0.9L_Tikkurila.jpg', 'Lac uretan-alchidic lucios sau semi-lucios cu uscare rapida, pentru lemn interior si exterior. Contine agent de protectie fata de radiatiile UV, incetineste efectul de ingalbenire cauzat de radiatiile solare. Varianta nuantata a produsului ofera protectie mai buna fata de efectele radiatiilor solare decat produsul incolor.', 'unica-super', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Unica_Super_0.9L.pdf', 0, NULL, 999999),
(1067, 'Valtti Akvacolor', 'Tikkurila', 'TK-45064040110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Valtti_Akvacolor_0.9L_Tikkurila.jpg', 'Lazura pe baza de apa pentru conservarea lemnului, cu liant alchidic pe baza de uleiuri vegetale. Produsul se absoarbe in intregime in lemn si nu creeaza pelicula dupa primul tratament. Incetineste procesul de degradare cauzat de efectele daunatoare ale radiatiilor UV, ale mucegaiului (si al mucegaiului albastru), incetineste procesul de putrezire. Se poate aplica pe grinzi, cherestea, lemn slefuit, placi de lemn, lemn durabil impregnat si lemn tratat termic, cu respectarea instructiunilor de utilizare.', 'valtti-akvacolor', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Valtti_Akvacolor_0.9L.pdf', 0, NULL, 999999),
(1071, 'Kiva Paneeli Assa', 'Tikkurila', 'TK-84564040110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Kiva_Paneeli_Assa_0.9L_Tikkurila.jpg', 'Lac acrilic pe baza de apa cu miros usor, pentru uz interior. Nu se ingalbeneste. Este adecvat pentru protejarea suprafetelor vopsite prin lacuire. Nu se recomanda aplicarea pe pardoseli si mobilier.', 'kiva-paneeli-assa', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Kiva_Paneeli_0.9L.pdf', 0, NULL, 999999),
(1073, 'Solutie indepartare mirosuri', 'BioComb', 'bioc_BC360035', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Solutie_indepartare_mirosuri_Biocomb.jpg', 'Solutia BioComb pentru indepartarea mirosurilor neplacute este un produs care indeparteaza mirosurile neplacute (mucegai, fungi) rapid si eficient.', 'solutie-indepartare-mirosuri', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Solutie_indepartare_mirosuri.pdf', 0, NULL, 999999),
(1075, 'Solutie curatare garduri', 'BioComb', 'bioc_IM202204', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Solutie_garduri_Biocomb.jpg', 'Solutia BioComb pentru curatarea gardurilor este conceputa pentru a distruge si a elimina proliferarea microbiana (mucegai, alge etc.) si pentru a realiza un impact preventiv de durata impotriva proliferarii microbiene. Produsul previne de asemenea descompunerea. Potrivit si pentru suprafete din plastic si metal.', 'solutie-curatare-garduri', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Solutie_curatare_garduri.pdf', 0, NULL, 999999),
(1077, 'Solutie curatare fatade', 'BioComb', 'bioc_IM202205', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Solutie_fatade_Biocomb.jpg', 'Solutia avansata BioComb pentru curatarea fatadelor extermina proliferarea microbiana de pe toate tipurile de fatade. Produsul indeparteaza eficient murdaria si proliferarea de microorganisme, cum ar fi bacteriile, mucegaiul, algele, lichenii si muschiul.\nSolutia poate fi folosita pe majoritatea materialelor, cum ar fi lemnul pictat, piatra, ipsosul, betonul, portelanul, plasticul, sticla si metalul.', 'solutie-curatare-fatade', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Solutie_curatare_fatade.pdf', 0, NULL, 999999),
(1079, 'Solutie curatare terase', 'BioComb', 'bioc_IM202105', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Solutie_terase_Biocomb.jpg', 'O mare problema pentru proprietarii de case sunt pardoselile si terasele contaminate si infestate de alge. Solutia BioComb pentru curatarea teraselor rezolva aceasta problema si curata si intretine aceste suprafete.', 'solutie-curatare-terase', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Solutie_curatare_terase.pdf', 0, NULL, 999999),
(1081, 'Solutie curatare acoperisuri', 'BioComb', 'bioc_IM202206', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Solutie_acoperisuri_5L_Biocomb.jpg', 'Extermina si curata suprafata de microorganisme si depuneri. Indeparteaza murdaria si proliferarea microorganismelor, cum ar fi bacteriile, mucegaiul, algele si lichenii de pe toate tipurile de acoperisuri.', 'solutie-curatare-acoperisuri', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Solutie_curatare_acoperisuri_5L.pdf', 0, NULL, 999999),
(1083, 'Antimuffa', 'CP Italia', 'CP-524508888008', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Antimuffa_CP_Italia.jpg', 'Concentrat universal antimucegai; confera oricarei vopsele solubile in apa, pentru pereti si acoperiri de fatade, o actiune puternica si permanenta impotriva ciupercilor si a mucegaiului de pe pereti.', 'antimuffa', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/02/ANTIMUFFA-interior.pdf', 0, NULL, 999999),
(1085, 'Maston One', 'Maston', 'MT-x', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Maston_One_Maston.jpg', 'Maston One! este o vopsea excelenta, adecvata pentru multiple utilizari, care poate transforma chiar si un utilizator incepator intr-un profesionist. Adecvata pentru aproape orice tipuri de suprafete: lemn, metal, plastic, piatra, beton, sticla, ceramica, plante uscate si carton. Tehnologia brevetata combinata cu turbina-valva de joasa presiune, omogenizeaza eficient vopseaua cu agentul propulsor, exact ca in cazul pistolului de pulverizare profesional. Contine cu 20% mai putini agenti propulsori, CU 25% mai multi lianti si de patru ori mai multi pigmenti de colorare fata de vopselele-spray conventionale. Tehnologia unica permite putere de acoperire aproape incredibila. Formula speciala pe baza de lianti acrilici de inalta calitate formeaza finisaj cu duritate excelenta, rezistenta la zgarieturi, cu timp de uscare senzational de scurt – de numai 15 minute!', 'maston-one', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Maston_One.pdf', 0, NULL, 999999),
(1087, 'Maston', 'Maston', 'MT-', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Maston_Maston.jpg', 'Spray vopsea pentru metal, lemn, plastic si alte materiale, diverse tipuri si culori.', 'maston', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Maston.pdf', 0, NULL, 999999),
(1093, 'Valtti Puuoljy', 'Tikkurila', 'TK-25700700160', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Valtti_Puuoljy_9L_Tikkurila.jpg', 'Ulei pe baza de solvent, pentru suprafete exterioare din lemn. Pentru suprafete de lemn brut, netratat sau tratat cu ulei pentru lemn. Produsul se poate aplica si pe suprafete din lemn dur, lemn impregnat sau tratat termic.', 'valtti-puuoljy', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Valtti_Puuoljy_0.9L.pdf', 0, NULL, 999999),
(1095, 'Betolux', 'Tikkurila', 'TK-27060010130', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Betolux_2.7L_Tikkurila.jpg', 'Vopsea uretan-alchidica pentru suprafete interioare din beton si pardoseli din lemn. Se poate aplica pe suprafete noi sau vopsite cu vopsele alchidice, epoxidice sau vopsite cu lac epoxidic.', 'betolux', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Betolux_2.7L.pdf', 0, NULL, 999999),
(1099, 'Finngard Silicone Protect', 'Tikkurila', 'TK-C493906601', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/baza-do-mieszalni-farb-finngard-silicone-protect-0-9-l-tikkurilabig.jpg', 'Vopsea acrilica mata pe baza de apa pentru fatade si socluri. Rezistenta foarte buna la intemperii.', 'finngard-silicone-protect', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/02/Finngard-Silicone-Protect-1.pdf', 0, NULL, 999999),
(1102, 'Maston Rubber', 'Maston', 'MT-0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Maston_Rubber_Maston.jpg', 'Vopsea cauciucata speciala, multifunctionala, cu uscare la aer. Se aplica facil, prin pulverizare. Protejeaza obiectele vopsite fata de umiditate, efect acid, uzura, coroziune, alunecare, si asigura manuire confortabila, controlata. Vopseaua RUBBERcomp® ramane flexibila si elastica in timp, nu se fisureaza si nu devine friabila in conditii atmosferice\nextreme. Testata la temperaturi intre -30°C si +90°C. Usor detasabila. Pentru atingerea grosimii de strat optime, se recomanda aplicarea a patru straturi.', 'maston-rubber', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Maston_Rubber.pdf', 0, NULL, 999999),
(1106, 'Vopsea pentru tabla scolara Liitu BlackBoard Paint', 'Tikkurila', 'TK-39V60010110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/121240_MA38IKwfXXSmpl9reFfL.jpg', 'Vopsea nuantabila pe baza de apa pentru tabla scolara. Pe suprafata vopsita creta prinde bine dar este si usor de sters.', 'vopsea-pentru-tabla-scolara-liitu-blackboard-paint', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Liitu_Blackboard_Paint.pdf', 0, NULL, 999999),
(1108, 'Magnetic', 'Tikkurila', 'TK-158000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Magnetic_Tikkurila.jpg', 'Vopsea speciala pe baza de apa pentru uz la interior. Formeaza suprafata magnetica. Daca culoarea gri a vopselei nu este corespunzatoare nevoilor utilizatorului, se poate finisa cu 1-2 straturi de lavabila aplicata in culoarea dorita. Atentie: grosimea excesiva a stratului de lavabila reduce proprietatile magnetice.', 'magnetic', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Magnetic.pdf', 0, NULL, 999999),
(1110, 'Decape - Velatura Silosanica', 'CP Italia', 'CP-DECAPE000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Decape_Velatura_Silosanica_1L_CP_Italia.jpg', 'Acoperire decorativa siloxanica transparenta opaca cu apa pentru interioare si exterioare. Rezistenta optima la spalare. Ideala pentru a obtine un efect de acoperire scenografic si sugestiv, ce aminteste de decoratiunile din secolul al XVII-lea. In plus, constituie o protectie eficace impotriva agentilor atmosferici, suportul respingand apa, fara a altera gradul de transpirabilitate.', 'decape---velatura-silosanica', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Decape_1L.pdf', 0, NULL, 999999),
(1116, 'Zorka Effecta 1.5 mm', 'Tikkurila', 'TK-0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Zorka_1.5mm_25kg_Tikkurila.jpg', 'Tencuielile acrilice decorative sunt vopsele gata preparate cu formula pastoasa, pentru decorarea si protectia fatadelor, in special a sistemelor de izolare termica. Caracteristici speciale: aderenta buna la substrat, permeabilitate buna la vapori, rezistenta la efectele fumului si a radiatiilor ultraviolete. Proprietatile hidrofuge fac aceste produse adecvate pentru aplicarea pe fatadele cladirilor inalte, cu expunere maxima la ploi intense. Datorita aditivilor speciali (care nu dauneaza sanatatii) cu miros special, tencuielile acrilice nu se recomanda a se utiliza pentru decorarea peretilor la interior. Domeniu de utilizare: Produsul se poate aplica pe toate tipurile de mortare minerale fine, stratul de baza (pe baza de ciment) al sistemelor termoizolante, beton, placi de fibrociment si gipscarton. Nu se recomanda aplicarea pe suprafete vopsite cu vopsele pe baza de creta (hidrosolubile) si pe baza de var, pe suprafete vopsite cu vopsele pe baza de ulei, lacuri sau emailuri si pe plastic sau lemn.', 'zorka-effecta-1-5-mm', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Zorka_Effecta_1.5mm_25kg.pdf', 0, NULL, 999999),
(1118, 'Zorka Effecta 2.0 mm', 'Tikkurila', 'TK-00', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Zorka_2mm_25kg_Tikkurila.jpg', 'Tencuielile acrilice decorative sunt vopsele gata preparate cu formula pastoasa, pentru decorarea si protectia fatadelor, in special a sistemelor de izolare termica. Caracteristici speciale: aderenta buna la substrat, permeabilitate buna la vapori, rezistenta la efectele fumului si a radiatiilor ultraviolete. Proprietatile hidrofuge fac aceste produse adecvate pentru aplicarea pe fatadele cladirilor inalte, cu expunere maxima la ploi intense. Datorita aditivilor speciali (care nu dauneaza sanatatii) cu miros special, tencuielile acrilice nu se recomanda a se utiliza pentru decorarea peretilor la interior. Domeniu de utilizare: Produsul se poate aplica pe toate tipurile de mortare minerale fine, stratul de baza (pe baza de ciment) al sistemelor termoizolante, beton, placi de fibrociment si gipscarton. Nu se recomanda aplicarea pe suprafete vopsite cu vopsele pe baza de creta (hidrosolubile) si pe baza de var, pe suprafete vopsite cu vopsele pe baza de ulei, lacuri sau emailuri si pe plastic sau lemn.', 'zorka-effecta-2-0-mm', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Zoraplast_25kg.pdf', 0, NULL, 999999),
(1120, 'Zoraplast', 'Tikkurila', 'TK-zork_tensoclcolor25', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Zoraplast_25kg_Tikkurila.jpg', 'Emulsia Zoraplast este o solutie pe baza de apa, folosita ca baza si in combinatie cu granule de marmura. Pentru a obtine aspectul de piatra masiva, emulsia se va omogeniza cu granulele de marmura de diferite culori. Se recomanda aplicarea pe peretii incintelor cu trafic intens si este in special adecvata aplicarii pe socluri. Tencuielile din familia de produse se disting prin aderenta buna la substrat, permeabilitatea suficienta la vapori, rezistenta la efectele fumului si a radiatiilor UV, si proprietatile hidrofuge, fapt pentru care constituie o alegere buna pentru suprafete expuse la ploi intense. Produsul se poate aplica pe toate tipurile de mortare minerale fine, stratul de baza (pe baza de ciment) al sistemelor termoizolante, beton, placi de fibrociment si gipscarton. Nu se recomanda aplicarea pe suprafete vopsite cu vopsele pe baza de creta (hidrosolubile) si pe baza de var, pe suprafete vopsite cu vopsele pe baza de ulei, lacuri sau emailuri, si pe plastic sau lemn.', 'zoraplast', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Zoraplast_25kg.pdf', 0, NULL, 999999),
(1122, 'Stucco Venetiano - Decospatola ', 'CP Italia', 'CP-780780000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/IMG_2597-1.jpg', 'Chit mineral pentru finisari decorative interioare, pe baza de var stins stabilizat si uscat. Putere optima de aderenta, fara folosirea produselor de fond. Usor de aplicat, transpirant si prin natura sa minerala, pe perete, desfasoara o actiune dezinfectanta si bactericida.', 'stucco-venetiano---decospatola-', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/02/DECOR-SPATOLA-interior.pdf', 0, NULL, 999999),
(1126, 'Ceara decorativa protectoare - Batik', 'CP Italia', 'CP-781781000001', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Batik_ceara_decorativa_1L_CP_Italia.jpg', 'BATIK este o ceara speciala protectoare pentru interioare, transparenta si cu aspect pastos. Este ideala pentru a oferi peretilor un aspect lucios, care respinge apa, placut la atingere. Este potrivita pentru ceruiri lucioase cu Decospatola, chit mineral pentru interioare.', 'ceara-decorativa-protectoare---batik', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Batik_1L.pdf', 0, NULL, 999999),
(1130, 'Finisaj decorativ pentru interior - Decore - Futuro Casa (Decori classici)', 'CP Italia', 'CP-58058000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Decore_Futuro_Casa_1L_CP_Italia.jpg', 'Finisaj decorativ, special, cu apa, pentru interioare. Lavabilitate optima si transpirabilitate. Efect deosebit de alternare a nuantelor de culori, care aminteste de decoratiunile din secolul al XVII-lea.', 'finisaj-decorativ-pentru-interior---decore---futuro-casa-decori-classici-', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Futuro_casa_1L.pdf', 0, NULL, 999999),
(1133, 'Finisare transparenta lucioasa - Cloque', 'CP Italia', 'CP-cloque000001', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Cloque_1L_CP_Italia.jpg', 'Finisare transparenta lucioasa, cu apa, pentru decoratiuni interioare. Mare rezistenta la spalare si abraziune. Cloque, prin eleganta sa, este asimilata pretiozitatii tesuturilor. Se foloseste peste aplicatia deja existenta de SilkArredo sau de alte vopsele solubile in apa, pentru pereti, lavabile.', 'finisare-transparenta-lucioasa---cloque', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/02/CLOQUE-interior.pdf', 0, NULL, 999999),
(1137, 'Tunto Karhea', 'Tikkurila', 'TK-85260910560', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Tunto_Karhea_Tikkurila.jpg', 'Glet decorativ acrilic mat pe baza de apa, de granulatie dura, pentru pereti si tavane interioare. Texturarea decorativa a suprafetelor tencuite, din beton nou sau deja vopsit, a celor din caramida, gipscarton si placa aglomerata.', 'tunto-karhea', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Tunto_Karhea.pdf', 0, NULL, 999999),
(1139, 'Taika Stardust silver', 'Tikkurila', 'TK-05', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Taika_Stardust_silver_1L_Tikkurila.jpg', 'Vopsea acrilica mata, pe baza de apa, cu efect decorativ. Vopseaua fiind transparenta, aspectul final al suprafetei este foarte mult influentat de culoarea substratului. Efectele speciale se pot scoate in evidenta prin iluminarea puternica a suprafetei. Domenii de utilizare: Vopsirea de efect a suprafetelor interioare, uscate, vopsite in prealabil cu Feelings Interior Paint, in cladiri rezidentiale, birouri, unitati comerciale, etc.', 'taika-stardust-silver', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Taika_Stardust_silver_1L.pdf', 0, NULL, 999999),
(1141, 'Taika Stardust gold', 'Tikkurila', 'TK-04', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Taika_Stardust__Gold__1L_Tikkurila.jpg', 'Vopsea acrilica mata, pe baza de apa, cu efect decorativ. Vopseaua fiind transparenta, aspectul final al suprafetei este foarte mult influentat de culoarea substratului. Efectele speciale se pot scoate in evidenta prin iluminarea puternica a suprafetei. Domenii de utilizare: Vopsirea de efect a suprafetelor interioare, uscate, vopsite in prealabil cu Feelings Interior Paint, in cladiri rezidentiale, birouri, unitati comerciale, etc.', 'taika-stardust-gold', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Taika_Stardust_gold_1L.pdf', 0, NULL, 999999),
(1143, 'Taika Pearl Glaze', 'Tikkurila', 'TK-017', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Taika_Pearl_Glaze_0.9L_Tikkurila.jpg', 'Vopsea speciala semi-transparenta pe baza de apa, pentru crearea aspectului perlat. Datorita faptului ca vopseaua este semi-transparenta, aspectul final este foarte mult influentat de culoarea suportului. Efectele speciale create de vopsea se pot scoate in evidenta prin iluminarea favorabila a suprafetei. Domenii de utilizare: Vopsirea suprafetelor interioare uscate, acolo unde se doreste crearea efectelor de culoare speciale.', 'taika-pearl-glaze', 0, 0, 1, '', 0, NULL, 999999),
(1145, 'Taika Pearl Paint', 'Tikkurila', 'TK-01', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Taika_Pearl_Paint_0.9L_Tikkurila.jpg', 'Vopsea de finisare acrilica sidefie, nuantabila, cu efect perlat, pe baza de apa. Iluminarea favorabila a suprafetei vopsite cu acest produs sporeste efectul de ansamblu al ambientului. Domenii de utilizare: Vopsirea suprafetelor interioare din lemn, PFL, placa aglomerata, suprafete metalice, din gipscarton, beton, etc.', 'taika-pearl-paint', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Taika_Pearl_Paint_0.9L.pdf', 0, NULL, 999999),
(1149, 'Brionature Ferromicaceo', 'CP Italia', 'CP-046620699008', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Brionature_Ferromicaceo_0.75L_CP_Italia.jpg', 'Email acrilic, pe baza de apa pentru interior si exterior, efect decorativ cu aspect final antichizat.', 'brionature-ferromicaceo', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Ferromicaceo_0.75L.pdf', 0, NULL, 999999),
(1153, 'Panssarimaali', 'Tikkurila', 'TK-46060030110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Panssarimaali_0.9L_Tikkurila.jpg', 'Vopsea alchidica semilucioasa cu continut de pigmenti anticorozivi pentru suprafete exterioare de metal: tabla zincata, aluminiu si otel.', 'panssarimaali', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Panssarimaali_2.7L.pdf', 0, NULL, 999999),
(1157, 'Temalac AB 50', 'Tikkurila', 'TK-ab50tal', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temalac_AB50_2.7L_Tikkurila.jpg', 'Vopsea alchidica monocomponenta, semilucioasa sau lucioasa.\n∗ Finisaj semilucios sau lucios al sistemelor alchidice pe suprafete metalice.\n∗ Mentinere a luciului si retentie a culorii, chiar si in medii industriale.\n∗ Se poate aplica cu pensula sau prin pulverizare.\n∗ Se poate aplica si pe suprafete de lemn.\n∗ Recomandata in special pentru vopsirea structurilor de otel aflate in medii industriale, in incinte de deservire sau publice sau din industria alimentara.', 'temalac-ab-50', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temalac_AB50_2.7L.pdf', 0, NULL, 999999),
(1161, 'Everal 30', 'Tikkurila', 'TK-B743905301', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Everal_email_alchidic_0.9L_Tikkurila.jpg', 'Email alchidic semimat pentru suprafete zincate si alte suprafete de metal, pentru lemn si derivate din lemn, in interior si exterior. Rezistent la uzura mecanica.', 'everal-30', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Everal_0.9L.pdf', 0, NULL, 999999),
(1165, 'Temafloor 150', 'Tikkurila', 'TK-TMF150', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temafloor_150_7.5L_Tikkurila.jpg', 'Vopsea epoxidica bicomponenta, fara solventi, pentru pardoseli la interior si la exterior.\n∗ Adecvata pentru vopsirea pardoselilor expuse la uzura mecanica si chimica moderata, in medii industriale, depozite, ateliere, etc.\n∗ Rezista la caldura uscata de +70oC si la temperaturi de +60oC in imersie.\n∗ Se poate aplica pe suprafete noi sau vechi, dar si pe suprafete vopsite cu vopsea pentru beton.\n∗ Produs adecvat pentru aplicarea pe pardoseli din asfalt, de asemenea in garaje, casa scarilor, terase, spalatorii, pivnite, etc.\n∗ Intaritorul TEMAFLOOR FLEX confera elasticitate acoperirii, care astfel are rezistenta marita la miscarea si craparea betonului.', 'temafloor-150', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temafloor_150_7.5L.pdf', 0, NULL, 999999),
(1167, 'Temafloor P300', 'Tikkurila', 'TK-t10', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temafloor_P300_10L_Tikkurila.jpg', 'Vopsea epoxidica bicomponenta, fara solventi.\n* Adecvata pentru aplicare pe pardoseli de beton, vechi sau noi, expuse la uzura mecanica si chimica intensa, in obiective industriale si de depozitare, ateliere de reparatii, coridoare, unitati de procesare si fabricare a hartiei etc.\n* Rezistenta buna la abraziune. Rezista la actiunea apei, uleiurilor, a grasimilor si chimicalelor. Rezista la solutii diluate de acizi neoxidanti, baze si saruri. Rezistenta temporara (redusa) la stropi de acizi oxidanti si produse chimice de inalbire. Tabel separat de rezistenta chimica disponibil la cerere.\n* Rezista la caldura uscata de +70oC si la temperaturi de +60oC in imersie.\n* Nu rezista la variatii de temperatura mari, bruste sau repetate.\n* Auto-intindere.\n* Intaritorul TEMAFLOOR FLEX confera elasticitate acoperirii, care dobandeste astfel rezistenta marita la miscarea si craparea betonului.', 'temafloor-p300', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temafloor_P300_10L.pdf', 0, NULL, 999999),
(1169, 'Temafloor 400', 'Tikkurila', 'TK-t6', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temafloor_400_6L_Tikkurila.jpg', 'Lac epoxidic bicomponent, fara solventi.\n* Se foloseste ca liant pentru sapa epoxidica Temafloor 4000.\n* Se foloseste de asemenea si ca finisaj de acoperire a produselor Temafloor si a sapelor.\n* Adecvata legarea suprafetei si amorsarea pardoselilor de beton nou sau vechi, sub acoperirile Temafloor.\n* Amestecat cu nisip, se foloseste si pentru lucrarile de reparare/cimentare a pardoselilor de beton.', 'temafloor-400', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temafloor_400_6L.pdf', 0, NULL, 999999),
(1173, 'Resista Silosanica', 'CP Italia', 'CP-046570P00005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Resista_5L_CP_Italia.jpg', 'Acoperire Siloxanica antimucegai, pentru exterior, de inalta transpirabilitate. Garanteaza o rezistenta maxima in timp, atat mecanica, cat si impotriva tuturor agentilor atmosferici. Datorita caracteristicilor sale speciale, este folosita atat pentru noile constructii cat si pentru edificiile istorice; este o acoperire de fatada, ideala pentru zugravirea palatelor de epoca, a vilelor din perioada Renasterii, a operelor publice de mare prestigiu arhitectural.', 'resista-silosanica', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Resista_5L.pdf', -1, NULL, 999999),
(1175, 'Thermo Casa - 4 L - Vopsea speciala super-lavabila, termoizolanta, anticondens si antimucegai', 'CP Italia', 'CP-525525000004', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/ThermoCasa_4L_CP_Italia.jpg', 'Thermo Casa este o vopsea speciala alba ultra-lavabila, solubila in apa, pentru pereti, termoizolanta, anticondens, antimucegai si antibacteriana, pe baza de dispersie, cu microsfere ceramice, ultra-rezistenta la spalare, rezistenta la murdarire si la patare, utilizata pentru vopsirea interioarelor supuse la uzura mare.\n\nVopseaua poate fi aplicata foarte usoara si are aderenta deosebita la suport cu putere mare de acoperire, pelicula continua, uniforma, semilucioasa, umple foarte bine porii si este permeabila la vapori de apa.', 'thermo-casa---4-l---vopsea-speciala-super-lavabila-termoizolanta-anticondens-si-antimucegai', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/02/THERMO-GROUND-%E2%80%93-interior.pdf', -1, NULL, 999999),
(1177, 'HIDROIZOLATIE POLIGOMMA ALB', 'CP Italia', 'CP-331599001004', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Poligomma_gri_4L_CP_Italia.jpg', 'Acoperire elastica impermeabilizanta. Daca este aplicat la grosime, fara a adauga apa, genereaza un fel de membrana acoperitoare cauciucata, ideala pentru protejarea teraselor, a barnelor laterale si a corniselor, acolo unde este imposibil de aplicat membrane acoperitoare cauciucate, sub forma de foaie sudata la cald. Pentru o mai buna structura impermeabilizanta, poate fi aplicata panza rezistenta de cort intre un strat si altul. POLIGOMMA aplicat ca impermeabilizant cauciucat, nu este rezistent la calcarea continua si repetata in picioare.', 'hidroizolatie-poligomma-alb', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Poligomma_alb_4L.pdf', 0, NULL, 999999),
(1179, 'HIDROIZOLATIE POLIGOMMA GRI', 'CP Italia', 'CP-331599660004', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Poligomma_gri_4L_CP_Italia.jpg', 'Acoperire elastica impermeabilizanta. Daca este aplicat la grosime, fara a adauga apa, genereaza un fel de membrana acoperitoare cauciucata, ideala pentru protejarea teraselor, a barnelor laterale si a corniselor, acolo unde este imposibil de aplicat membrane acoperitoare cauciucate, sub forma de foaie sudata la cald. Pentru o mai buna structura impermeabilizanta, poate fi aplicata panza rezistenta de cort intre un strat si altul. POLIGOMMA aplicat ca impermeabilizant cauciucat, nu este rezistent la calcarea continua si repetata in picioare.', 'hidroizolatie-poligomma-gri', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Poligomma_gri_4L.pdf', 0, NULL, 999999),
(1182, 'Vopsea lavabila de exterior Elasto', 'CP Italia', 'CP-046332P00005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Elasto_5L_CP_Italia.jpg', 'Vopsea Elastomerica cu apa, pe baza de rasini Stirolo/Acrilice cu actiune preventiva impotriva crapaturilor. Se foloseste la protectia peretilor externi si interni. Ideala pentru protectia obiectelor din ciment prefabricat, lucrate de mana.', 'vopsea-lavabila-de-exterior-elasto', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Elasto_5L.pdf', -1, NULL, 999999),
(1184, 'Vopsea lavabila de exterior Resista', 'CP Italia', 'CP-046570P00005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Resista_5L_CP_Italia.jpg', 'Acoperire Siloxanica antimucegai, pentru exterior, de inalta transpirabilitate. Garanteaza o rezistenta maxima in timp, atat mecanica, cat si impotriva tuturor agentilor atmosferici. Datorita caracteristicilor sale speciale, este folosita atat pentru noile constructii cat si pentru edificiile istorice; este o acoperire de fatada, ideala pentru zugravirea palatelor de epoca, a vilelor din perioada Renasterii, a operelor publice de mare prestigiu arhitectural.', 'vopsea-lavabila-de-exterior-resista', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Resista_5L.pdf', -1, NULL, 999999),
(1185, 'Lavabila de exterior Restauro', 'CP Italia', 'CP-590590000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Restauro_5L_CP_Italia.jpg', 'Acoperire fatada, acrilica, antimucegai pentru exterior, cu mare rezistenta impotriva luminii, agentilor atmosferici si alcalinitatii. Printre caracteristicile sale cele mai bune, se evidentiaza rezistenta la ploile acide, la abraziune, pastrand o buna transpirabilitate. Restauro permite obtinerea unei suprafete catifelate de mare prestigiu decorativ.c', 'lavabila-de-exterior-restauro', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Restauro_5L.pdf', -1, NULL, 999999),
(1187, 'Lavabila de exterior Systema', 'CP Italia', 'CP-046560P00005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Systema_5L_CP_Italia.jpg', 'Vopsea de pereti pentru exterior pe baza de quart si rasini acrilico-stirolice. Are o foarte buna acoperire si transpirabilitate. Rezistenta la lumina si intemperii.', 'lavabila-de-exterior-systema', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Systema_14L.pdf', -1, NULL, 999999),
(1195, 'Quarzo Plas', 'CP Italia', 'CP-551553000005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Quarzo_Plas_5L_CP_Italia.jpg', 'Vopsea lavabila pe baza de faina de quart pentru toate suprafele de zidarie externe si interne. Creata cu o emulsie apoasa de polimer acrilic-stirolico, faina de quart cu granulatie medie, filler acoperitor si diodi de titan. Are o buna putere de acoperire, rezistenta la sfaramitare si o capacitate de uniformizare a suprafetelor, datorita proprietatilor de umplere.', 'quarzo-plas', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Quarzo_Plas_14L.pdf', -1, NULL, 999999),
(1207, 'Casa Scic Top', 'CP Italia', 'CP-515TOP000014', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Casa_Scic_Top_14L_CP_Italia.jpg', 'Vopsea superlavabila pentru interior si exterior. Dispersie, acrilica, superlavabila pentru interior si exterior. Poate fi usor aplicata cu pensula; acoperire optima.', 'casa-scic-top', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Casa_Scic_14L.pdf', -1, NULL, 999999),
(1209, 'Moniblanc', 'CP Italia', 'CP-046MONP00004', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Moniblanc_4L_CP_Italia.jpg', 'Vopsea lavabila extra, pentru interior, dotata cu un exceptional punct de alb, optima acoperire si transpirabilitate. Decor opac, usor de aplicat cu o extraordinara fluiditate in timpul aplicarii. Ideala pentru pereti si gips-carton.', 'moniblanc', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Moniblanc_4L.pdf', -1, NULL, 999999),
(1229, 'Feelings Extra Durable', 'Tikkurila', 'TK-7246001P110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Feelings_Extra_Durable_0.9L_Tikkurila.jpg', 'Vopsea acrilica pe baza de apa, cu continut de latex, pentru interior. Creeaza suprafata deosebit de lavabila. Adecvata pentru aplicarea pe suprafete amorsate de lemn sau metal si pe suprafete vopsite cu vopsele pe baza de apa, vopsele alchidice sau cu cataliza acida.', 'feelings-extra-durable', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Feelings_Extra_Durable_0.9L.pdf', -1, NULL, 999999),
(1235, 'Optiva 5', 'Tikkurila', 'TK-C193905101', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Optiva_5_0.9L_Tikkurila.jpg', 'Vopsea acrilica mata, cu continut de latex pentru interior. Se recomanda pentru vopsirea peretilor si tavanelor in spatii rezidentiale, birouri, institutii publice sau de sanatate. Se poate aplica si in incinte din industria alimentara, acolo unde suprafata vopsita nu vine in contact direct cu alimente. Creeaza finisaj extrem de neted, mat si lavabil.\n\n', 'optiva-5', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Optiva_5_0.9L.pdf', 0, NULL, 999999),
(1241, 'Optiva Colour', 'Tikkurila', 'TK-C193905401', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Optiva_Colour_0.9L_Tikkurila.jpg', 'Vopsea acrilica pe baza de dispersie apoasa si continut de latex, pentru interior, cum ar fi pereti si tavane in incinte publice, birouri si spatii rezidentiale. Se poate aplica si in incinte din industria alimentara, acolo unde suprafata vopsita nu vine in contact direct cu alimente. Creeaza finisaj extrem de neted, complet mat. Se recomanda pentru vopsirea suprafetelor interioare din gipscarton, beton sau a celor tencuite. Se poate utiliza si pentru reconditionarea suprafetelor vopsite anterior.', 'optiva-colour', 0, 1, 1, '', 0, NULL, 999999),
(1243, 'Vopsea lavabila latex int. Optiva Colour 2.7L - extra neted - finisaj mat', 'Tikkurila', 'TK-C193905403', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Optiva_Colour_2.7L_Tikkurila.jpg', 'Se poate aplica pe pereti si tavane in incinte publice, birouri si spatii rezidentiale,  si in incinte din industria alimentara, acolo unde suprafata vopsita nu vine in contact direct cu alimente.\nCreeaza finisaj extrem de neted, complet mat.\nSe recomanda pentru vopsirea suprafetelor interioare din gipscarton, beton sau a celor tencuite. Se poate utiliza si pentru reconditionarea suprafetelor vopsite anterior.', 'vopsea-lavabila-latex-int-optiva-colour-2-7l---extra-neted---finisaj-mat', 0, 1, 1, '', 0, NULL, 999999),
(1251, 'Silk Arredo', 'CP Italia', 'CP-508508001010', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/SilkArredo_10L_CP_Italia.jpg', 'Vopsea solubila in apa, pentru pereti, acrilica, cu apa pentru interioare si exterioare. Printre caracteristicile sale cele mai bune se evidentiaza: rezistenta mare la spalare (15000 cicluri Gardner), acoperire optima, punct de alb si decor placut in versiunile Opac.', 'silk-arredo', 0, 1, 0, '', 0, NULL, 999999),
(1259, 'Brionature satinat', 'CP Italia', 'CP-630420000007', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Brionature_lucios_CP_Italia.jpg', 'Email acrilic cu apa pentru interior si exterior. Ideal pentru vopsirea peretilor si a tocurilor de usi si ferestre din lemn si fier. Specific pentru zugravirea rapida a ambientelor de interior. Dilatare optima, inodor si neinflamabil. Vopsire compacta, lucioasa in versiunea lucioasa si satinat in versiunea opaca.', 'brionature-satinat', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Brionature_lucios.pdf', 0, NULL, 999999),
(1261, 'Feelings Furniture', 'Tikkurila', 'TK-7276003P110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Feelings_Furniture_0.9L_Tikkurila.jpg', 'Vopsea acrilica pe baza de apa, semimata, cu continut de latex. Are miros usor, nu se ingalbeneste. Se poate aplica pe o variatate de suprafete interioare, formeaza acoperire decorativa, masiva, usor de intretinut. Adecvata pentru aplicarea pe suprafete noi sau vopsite cu vopsele pe baza de apa, vopsele alchidice sau cu cataliza acida si de asemenea pentru aplicarea pe suprafete metalice grunduite.', 'feelings-furniture', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Feelings_Furniture_0.9L.pdf', 0, NULL, 999999),
(1265, 'Valtti Opaque', 'Tikkurila', 'TK-3006302P110', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Valtti_Opaque_0.9L_Tikkurila.jpg', 'Vopsea acrilica pe baza de apa, intarita alchidic, semimata, cu miros usor pentru lemn exterior. Formeaza acoperire extrem de durabila, flexibila, usor de intretinut, rezistenta la intemperii. Valtti Opaque are efect de reglare a umiditatii, acoperirea nu se fisureaza, nu se descuameaza si nu se umfla.', 'valtti-opaque', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Valtti_Opaque_2.7L.pdf', 0, NULL, 999999),
(1269, 'Temacoat GPL S Primer', 'Tikkurila', 'TK-grundepox', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temacoat_GPL_S_Primer_2.2L_Tikkurila.jpg', 'Grund epoxidic bicomponent. Formula intarita cu poliamide, cu continut de fosfat de zinc.\n* Utilizat ca grund sau strat intermediar in sisteme de acoperire epoxidice sau poliuretanice expuse la uzura mecanica si/sau uzura chimica.\n* Se poate utiliza ca strat intermediar peste vopsele epoxidice imbogatite cu zinc, sau vopsele zinc-silicatice.\n* Aderenta excelenta la suprafete din otel, zinc si aluminiu. Se poate revopsi rapid.\n* Domenii de utilizare recomandate: poduri, utilaje de transport, macarale, piloni de otel, benzi transportoare si alte echipamente si utilaje sau structuri din otel.\n* Produsul dispune de certificat MED (nr. VTT-C-11166-15-14) si este acceptat pentru vopsirea suprafetelor din interiorul vapoarelor.\n* Intaritorul 008 5610 permite uscarea si intarirea chiar si la temperaturi sub -10oC.', 'temacoat-gpl-s-primer', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temacoat_GPL_S_Primer_2.2L.pdf', 0, NULL, 999999),
(1271, 'Temacoat RM 40', 'Tikkurila', 'TK-40tvh', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temacoat_RM40_2.2L_Tikkurila.jpg', 'Vopsea epoxidica bicomponenta pe baza de rasini modificate.\n∗ Rezistenta excelenta la uzura mecanica, chimica si la imersie in apa.\n∗ Folosita ca grund pentru otel, aluminiu si tabla zincata in interior si exterior, pe suprafete expuse la uzura mecanica si/sau chimica – si pe suprafete subacvatice sau amplasate in sol.\n∗ Se poate utiliza si ca sistem de singura acoperire (=se aplica 1-2 straturi de Temacoat RM 40 fara aplicarea vreunui grund).\n∗ Domenii de utilizare recomandate: vopsirea structurilor de otel in constructii, poduri tubulare, benzi transportoare, corpul navelor, alte utilaje si echipamente din otel.\n∗ Datorita marcajului CE se poate utiliza si pentru vopsirea suprafetelor din beton.', 'temacoat-rm-40', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temacoat_RM40_2.2L.pdf', 0, NULL, 999999),
(1273, 'Temadur 90', 'Tikkurila', 'TK-p50', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Temadur_90_0.75L_Tikkurila.jpg', 'Vopsea poliuretanica bicomponenta, lucioasa, cu intaritor izocianat alifatic.\n∗ Rezistenta excelenta la uzura, rezistenta buna la intemperii.\n∗ Adecvata ca strat de finisaj lucios in sisteme epoxidice expuse la intemperii si/sau uzura chimica.\n∗ Formeaza strat rezistent la uzura, usor de curatat, care nu se creteaza, cu mentinere in timp a culorii si retentie buna a luciului.\n∗ Domenii de utilizare recomandate: vopsirea echipamentelor de transport si tractare, a exteriorului rezervoarelor, vopsirea structurilor si a altor suprafete din otel, diverse echipamente si utilaje. La aplicarea pe suprafete de lemn la interior, vezi ”Instructiuni de aplicare a Temadur 90 cu intaritorul 008 7596”', 'temadur-90', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Temadur_90_2.25L.pdf', 0, NULL, 999999),
(1279, 'Bidinea ECO Zenit', 'Zenit', 'ZE-0346037', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Eco_Zenit.jpg', '', 'bidinea-eco-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1281, 'Bidinea VICTORY ovala Zenit', 'Zenit', 'ZE-017.310', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Victory_Zenit.jpg', '', 'bidinea-victory-ovala-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1291, 'Trafalete MICROFINISH Zenit', 'Zenit', 'ZE-1965.23', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Microfinish_Zenit.jpg', 'Trafalete detasabil', 'trafalete-microfinish-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1295, 'Maner trafaleti Zenit', 'Zenit', 'ZE-143.23', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Maner_Zenit.jpg', '', 'maner-trafaleti-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1297, 'Trafalete DECOR Zenit', 'Zenit', 'ZE-11020GM', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Decor_Zenit.jpg', 'Efect decorativ', 'trafalete-decor-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1299, 'Trafalete APE Zenit', 'Zenit', 'ZE-115.20', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Ape_Zenit.jpg', 'Efect decorativ', 'trafalete-ape-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1301, 'Trafalete CAYMAN Zenit', 'Zenit', 'ZE-007.k', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Cayman_Zenit.jpg', 'Efect decorativ', 'trafalete-cayman-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1303, 'Trafalete DARWIN Zenit', 'Zenit', 'ZE-007.26', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Darwin_Zenit.jpg', 'Efect decorativ', 'trafalete-darwin-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1305, 'Trafalete TASMANIA Zenit', 'Zenit', 'ZE-007.21', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Tasmania_Zenit.jpg', 'Efect decorativ', 'trafalete-tasmania-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1307, 'Trafalete OCEAN Zenit', 'Zenit', 'ZE-007.27', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Ocean_Zenit.jpg', 'Efect decorativ', 'trafalete-ocean-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1309, 'Trafalete SYDNEY Zenit', 'Zenit', 'ZE-007.22', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Sydney_Zenit.jpg', 'Efect decorativ', 'trafalete-sydney-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1311, 'Gletiera QANTAS Zenit', 'Zenit', 'ZE-007.20', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Qantas_Zenit.jpg', 'Efect decorativ', 'gletiera-qantas-zenit', 0, 0, 1, '', 0, NULL, 999999);
INSERT INTO `products` (`id`, `product_name`, `brand`, `sku`, `price`, `image_url`, `description`, `alias`, `featured`, `categoryfeatured`, `isActive`, `datasheet`, `PaletteColorID`, `tutorial`, `orderProd`) VALUES
(1313, 'Tampon BYRON Zenit', 'Zenit', 'ZE-007.05', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Byron_Zenit.jpg', 'Efect decorativ', 'tampon-byron-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1317, 'Manusa CANYON Zenit', 'Zenit', 'ZE-004.R', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Canyon_Zenit.jpg', 'Efect decorativ', 'manusa-canyon-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1319, 'Manusa DOUBLE GIEFFE', 'Gieffe', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Double_Zenit.jpg', 'Efect decorativ', 'manusa-double-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1321, 'Lama dubla ZENIT', 'Zenit', 'ZE-007.42', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Lama_Zenit.jpg', '', 'lama-dubla-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1329, 'Gletiera inox trapezoidala Zenit', 'Zenit', 'ZE-2007.P1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Trapezoidala_Zenit.jpg', '', 'gletiera-inox-trapezoidala-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1331, 'Gletiera inox rectangulara Zenit', 'Zenit', 'ZE-2004.2', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Rectangulara_Zenit.jpg', '', 'gletiera-inox-rectangulara-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1335, 'Gletiera dintata Zenit', 'Zenit', 'ZE-292.r', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Racleta_Zenit.jpg', '', 'gletiera-dintata-zenit', 0, 0, 1, '', 0, NULL, 999999),
(1341, 'Pensula oblica colturi Gieffe', 'Gieffe', 'GF-ASO50320', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Pensula_colturi_Gieffe.jpg', '', 'pensula-oblica-colturi-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1343, 'Pensula calorifere extra lunga Gieffe', 'Gieffe', 'GF-RDOO267', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Pensula_calorifere_Gieffe.jpg', '', 'pensula-calorifere-extra-lunga-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1347, 'Gletiera Gieffe', 'Gieffe', 'GF-FR5019-24', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Gletiera_24x08_Gieffe.jpg', '', 'gletiera-gieffe', 0, 1, 1, '', 0, NULL, 999999),
(1349, 'Lama dubla GIEFFE', 'Gieffe', 'GF-SPO791', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Lama_Gieffe.jpg', '', 'lama-dubla-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1355, 'Gletiera inox Gieffe', 'Gieffe', 'GF-FR5001-24', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Gletiera_inox_24x11_Gieffe.jpg', '', 'gletiera-inox-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1357, 'Gletiera inox Gieffe', 'Gieffe', 'GF-FR5001-20', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Gletiera_inox_20x08_Gieffe.jpg', '', 'gletiera-inox-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1365, 'Burete de mare natural Gieffe', 'Gieffe', 'GF-SX0815-16', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Burete_Gieffe.jpg', 'Efect decorativ', 'burete-de-mare-natural-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1367, 'Tampon Gieffe decor', 'Gieffe', 'GF-TA0830', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Lemn_Gieffe.jpg', 'Efect decorativ imitatie lemn', 'tampon-gieffe-decor', 0, 0, 1, '', 0, NULL, 999999),
(1369, 'Trafalete PITONATO Gieffe', 'Gieffe', 'GF-RU1079-20', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Pitonato_Gieffe.jpg', 'Efect decorativ', 'trafalete-pitonato-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1371, 'Trafalete COCCODRILLO Gieffe', 'Gieffe', 'GF-RU1080-20', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Coccodrillo_Gieffe.jpg', 'Efect decorativ', 'trafalete-coccodrillo-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1375, 'Amestecator Gieffe', 'Gieffe', 'GF-MI4005', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Amestecator_Gieffe.jpg', '', 'amestecator-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1377, 'Tampon STRACIATO Gieffe', 'Gieffe', 'GF-TA000515', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Straciato_Gieffe.jpg', 'Efect decorativ', 'tampon-straciato-gieffe', 0, 0, 1, '', 0, NULL, 999999),
(1381, 'Bidinea PS Gieffe', 'Gieffe', 'GF-PL060237', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Bidinea_3x07_Gieffe.jpg', '', 'bidinea-ps-gieffe', 0, 1, 1, '', 0, NULL, 999999),
(1480, 'Handi Roller Wagner', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Wagner-handy-01.jpg', '', 'handi-roller-wagner', 0, 0, 1, '', 0, NULL, 999999),
(1484, 'Aparat Vopsit Wagner W590', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/w-590-product_1.jpg', '', 'aparat-vopsit-wagner-w590', 0, 0, 1, '', 0, NULL, 999999),
(1487, 'Aparat Vopsit Prof. Wagner Sf-23-Plus', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/sf23plus_lac_cartm.jpg', '', 'aparat-vopsit-prof-wagner-sf-23-plus', 0, 0, 1, '', 0, NULL, 999999),
(1490, 'APARAT CONTROLPRO 350M/P119', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Control-Pro-350-proizvod.jpg', '', 'aparat-controlpro-350m-p119', 0, 0, 1, '', 0, NULL, 999999),
(1493, 'Aparat ControlPro Wagner 250M/PP60', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/control-pro-250-m-product_1.jpg', '', 'aparat-controlpro-wagner-250m-pp60', 0, 0, 1, '', 0, NULL, 999999),
(1496, 'Aparat Vopsit Wagner W690 FLEXIO', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/w-590-product_1.jpg', '', 'aparat-vopsit-wagner-w690-flexio', 0, 0, 1, '', 0, NULL, 999999),
(1498, 'Pistol Vopsit Wagner W100', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/res_8a4e842f9d9f416d0c31328931560759_450x450_duq7.jpg', '', 'pistol-vopsit-wagner-w100', 0, 0, 1, '', 0, NULL, 999999),
(1501, 'Aparat Zugravit Wagner W450', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/aparat-de-vopsit-si-zugravit-wagner-w400_21525-e1543053321170.png', '• Acoperire completa cu material dintr-o singura trecere\n• Pistol detasabil pentru schimbul rapid si usor al atasamentului, vopselei, pentru reumplerea sau curatarea pistolului\n• Jet de vopsea reglabil pentru a se potrivi perfect obiectului ce trebuie pulverizat\n• Jet de vopsea complet reglabil pentru pulverizare cu precizie\n• Duza patentata I-SPRAY pentru atomizare extrafina chiar cu materiale cu viscozitate ridicata\n• Unitatea de baza poate fi asezata pe podea sau transportata usor cu ajutorul curelei de umar convenabile.', 'aparat-zugravit-wagner-w450', 0, 0, 1, '', 0, NULL, 999999),
(1504, 'Suflanta Aer Cald Wagner Furno500', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/furno500-left-1_1_orig.jpg', '', 'suflanta-aer-cald-wagner-furno500', 0, 0, 1, '', 0, NULL, 999999),
(1508, 'Aparat Slefuit Wagner Studio', 'Wagner', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Aparat-Slefuit-Wagner-Studio.png', '• Simplu de utilizat datorita greutatii mici si a design-ului compact .\n• Fin cu maner ergonomic pentru un plus de confort .\n• Șlefuitor versatil pentru proiecte mici și medii.\n• Baza de formă de lacrimă este ideală pentru a ajunge în spații mici și în zone greu accesibile\n• Cârlig și buclă pentru schimbarea rapidă și ușoară a smirghelului.\n• Livrat cu 3/4 foi de slefuire: 180/120/80\n• Dispune de sac de pânză pentru colectarea eficientă a prafului..', 'aparat-slefuit-wagner-studio', 0, 0, 1, '', 0, NULL, 999999),
(2030, 'VOPSEA DECORATIVA CU EFECT DE NISIP METALIC - QIBLI - TIXE', 'TIXE', '624.701', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/TIXE-QIBLI-01-Lt-–-BASE-OROARGENTO-RAME-MADREPERLA-.jpeg', 'Vopsea decorativacu efect de nisip, ce reproduce efectul metalic real, șlefuit, chiar pe suprafețe mari, oferind suportului aspectul celor mai prețioase metale.\nCARACTERISTICI PRINCIPALE\n– Efect metalic șlefuit\n– Acoperire excelenta\n– Aderenta excelenta\n– Lavabilitate excelenta\n– Ușurința de utilizare\nAplicarea se face cu pensula si trafaletul.\nProdusul este disponibil in culorile de baza: AURIU, ARAMIU, ARGINTIU si PLATINA', 'vopsea-decorativa-cu-efect-de-nisip-metalic---qibli---tixe', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/06/qibli-vopsea-decorativa-cu-efect-de-nisip-metal.pdf', 17, NULL, 999999),
(2067, 'Vopsea decorativa cu efect perlat-PERLATIX-TIXE', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/PERLATIX-prostaff-cutie.jpeg', 'Vopsea decorativa cu efect perlat ușor de aplicat și ideala pentru a da viață culorilor deja prezente în incapere. Îmbogățește suprafața tratată cu o suprafață excepțională cu efect perlat, ajuta la obtinerea unor efecte moderne si de culoare medii care variază în funcție de înclinația luminii. Aplicarea se face cu pensula si trafaletul.', 'vopsea-decorativa-cu-efect-perlat-perlatix-tixe', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Optiva_Colour_0.9L.pdf', 0, NULL, 999999),
(2070, 'GLITTERTIX 250 ml – VERDE, LILLA, ORO, ARGENTO, SABBIA, MADREPERLA - TIXE', 'TIXE', '625.307', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Glitterix-TIXE-cutie.jpg', 'Glitter în nuanțe diferite în emulsie specială neutră.\nProdusul poate fi utilizat ca aditiv, atât la vopsele pe baza de apă neutre sau colorate și la vopsele pe bază de apă de toate nuanțele.\nUșor de utilizat, poate fi aplicat pe pereții vopsiți pentru a înfrumuseța aspectul final.\nPoate fi adăugat, de asemenea, în apă sau în vopsitorie acrilice amestecate cu apa curata pentru a fi aplicat direct pe diferite suprafete (mobilier și obiecte din lemn și metal).', 'glittertix-250-ml-verde-lilla-oro-argento-sabbia-madreperla---tixe', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/pdfarchive/Optiva_Colour_0.9L.pdf', 0, NULL, 999999),
(2082, 'GALAXY - TIXE - vopsea decorativa capabila sa schimbe culoarea în functie de unghiul de vizualizare', 'TIXE', '626.701', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Galaxy-cutie-e1542534405683.jpg', 'Vopsea decorativa cu efect irizant\nVopsea decorativa pe baza de apa, in formula cu pigmenți, pentru un finisaj irizat special, capabila să schimbe culoarea în funcție de unghiul de vizualizare. Ideal pentru cladiri de prestigiu, institutii publice și birouri.\nPretul este pe bucata\nPretul include TVA', 'galaxy---tixe---vopsea-decorativa-capabila-sa-schimbe-culoarea-n-functie-de-unghiul-de-vizualizare', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/06/fisa-qibli-engl-it.pdf', 0, NULL, 999999),
(2085, 'Vopsea decorativa interior cu efect auriu metalic pe baza solvent - DORATURA - ORO, RICCO, PALIDO, RAME, DUCATO - TIXE', 'TIXE', '101.207', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/doratura_solvente.jpg', 'Solutie de pulbere metalica cu liant folosita la vopsirea ramelor sau a altor obiecte de interior. In general obiectele vopsite cu aceasta solutie de bronz necesita lacuire cu vernisuri speciale.\nPretul este pe bucata\nPretul include TVA', 'vopsea-decorativa-interior-cu-efect-auriu-metalic-pe-baza-solvent---doratura---oro-ricco-palido-rame-ducato---tixe', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/06/TDS-doratura-high-quality.pdf', 0, NULL, 999999),
(2124, 'TECSIT PRO T  TRANSPARENTE', 'TECSIT', 'PROT.10', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/TECSIT-PRO-T-KG-10-TRANSPARENTE.jpg', 'TECSIT PRO T® este o membrană transparentă din poliuretan mono-component, alifatică, dotată cu o bună elasticitate şi cu un conţinut ridicat de reziduu urcat, utilizată pentru impermeabilizare de lungă durată. Datorită structurii alifatice PRO T este stabil la razele UV, astfel că nu se îngălbeneşte în timp. Este rezistent la agresiunile chimico–fizice. Este utilizată în special pentru impermeabilizarea de mare fiabilitate.\nPretul este pe bucata\nPretul include TVA', 'tecsit-pro-t-transparente', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/tecsit-pro-t-rev_RO-1.pdf', 0, NULL, 999999),
(2141, 'TECSIT SALER PU TRANSP.', 'TECSIT', 'SALERPU.1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/saler-pu.jpg', 'TECSIT SALER PU® este un primer din poliuretan monocomponent, transparent, semi rigid care penetrează în profunzime. Este bazat pe solvenţi. Se usucă în contact cu suprafaţa şi umiditatea.\nDOMENII DE APLICARE TECSIT SALER PU® se utilizează în special ca primer pentru membranele din poliuretan impermeabilizabil şi pentru sigilanţii utilizaţi pentru rosturi pe suprafeţele absorbante precum: • ciment • ciment uşor • cărămizi din ciment • mortar • lemn, etc • Impermeabilizări pe acoperișuri cu izolare inversă TECSIT SALER PU® poate fi utilizat şi ca stabilizator pentru suprafeţe vechi şi fragile din ciment. Poate fi utilizat şi ca o peliculă de protecţie rezistentă la produsele chimice, uleiuri, grăsimi, umiditate şi alte lichide murdare.', 'tecsit-saler-pu-transp-', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/primer-tecsit-saler-pu-RO.pdf', 0, NULL, 999999),
(2143, 'TECSIT PRIMER T-S TRANSPARENT', 'TECSIT', 'PRIMERT.1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/TECSIT-PRIMER-T-S-KG-1-TRANSP..jpg', 'TECSIT PRIMER-T® este un primer monocomponent, incolor, care nu pătează, realizat pentru a asigura adeziunea la substraturi netede. Chiar dacă a fost proiectat pentru TECSIT PRO®, este complet compatibil cu toată gama PRO®. Compoziţia chimică a produsului PRIMER-T® este un amestec de silani organici reactivi, solvenţi şi aditivi care asigură o distribuţie completă în întreg substratul.\nPRIMER-T® este ușor de aplicat după curățarea suprafeței de protejat cu TECSIT PRO® cu o bucată de pânză curată. PRIMER-T® se usucă rapid, în 10-15 minute maxim.\nDupă uscare suprafața este gata pentru aplicare.\nPretul este pe bucata\nPretul include TVA', 'tecsit-primer-t-s-transparent', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/tecsitprimert1_RO.pdf', 0, NULL, 999999),
(2154, 'TECSIT HYDROBLOCK WB LT', 'TECSIT', 'HYDROWB.LT1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/22-Tecsit-Hydroblock-253x300-1.jpg', 'Tecsit Hydroblock WB este un Alchilsilan (Alkyl Silane) în emulsie apoasă, hidrofob şi cu efect perlat ridicat pentru materiale de construcţii minerale şi absorbante.\nPROPRIETĂŢI\nTecsit Hydroblock WB® este o emulsie apoasă pe bază de alchilsilan, fără componente organice volatile, necesar pentru a face hidrofobe materialele de construcţii absorbante şi pentru care se doreşte un efect perlat antiadeziv.\nTecsit Hydroblock WB® are următoarele caracteristici:\n– viteză mare de polimerizare;\n– efect perlat şi antiadeziv excelent;\n– absenţa variaţiilor cromatice pentru suprafeţele tratate;\n– agent hidrofob foarte eficient, transpirant, permeabil la abur, incolor;\n– fără formare de pelicule superficiale;\n– fără VOC;\n– stabilitate la razele UV;\n– eficacitate la microfisuri la 0.3 mm;\n– reducerea absorbţiei de apă foarte ridicată;\n– efect hidrofob ridicat şi penetrabilitate bună în materialele minerale de construcţie absorbante, care corespunde duratei lungi a efectului hidrofob.\nAPLICARE\nHydroblock WB® este indicat în special ca agent hidrofob pentru materiale de construcţie cu porozitate ridicată, cum ar fi:\n– tencuială minerală – pietre – gresie – cărămizi din teracotă – cărămizi – ciment expandat şi mortar – ţigle din teracotă sau ciment – materiale minerale pe bază de silicat pentru izolare – azbociment\nPretul este pe bucata\nPretul include TVA', 'tecsit-hydroblock-wb-lt', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/tecsit-hydroblockwb-RO.pdf', 0, NULL, 999999),
(2156, 'TECSIT DECOR STYLE GRANAFINE - MICROCIMENT', 'TECSIT', 'GRANAMEDIADEC.21', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Super_Lattix-1-270x144-e1547490298929.jpg', 'Produsul poate fi aplicat si pe podea si ca finisaj pentru mobilier.\nProdusele din seria DECOR STYLE sunt indicate în mod special pentru noile construcții şi pentru intervențiile de renovare şi restructurare, fără restricții, atât în locuințe cât şi în centre comerciale, parcuri tematice, restaurante, birouri, săli de conferință, magazine şi saloane. Poate fi aplicate cu trei grade diferite de diluție.\nDECOR STYLE + APĂ: ideal pentru pereți cu o bază de ciment.\nPermite obținerea unor finisaje bune.\nDECOR STYLE + 1/2 APĂ + 1/2 SUPER LATTIX: ideal pentru baze cu o adeziune dificilă şi podele supuse traficului mediu.\nDECOR STYLE + SUPER LATTIX: ideal pentru baze cu trafic ridicat/ mediu-înalt. Este combinația ideală pentru finisaje pe gresie, faianță pentru duș, ceramică şi mobilier în general.\nUŞURINŢĂ DE APLICARE Se aplică cu pensula ca un finisaj tradițional. Timpii lor de priză şi uscare au fost gândiți pentru a ușura cât mai mult aplicarea.\nPretul este pe kg\nPretul include TVA', 'tecsit-decor-style-granafine---microciment', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/decorstyle-RO.pdf', 0, NULL, 999999),
(2162, 'TECSIT DECOR STYLE GRANAMEDI', 'TECSIT', 'GRANAMEDIADEC.21-1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/Super_Lattix-1-270x144-e1547490298929.jpg', 'Finisaje pentru pereti, podele si mobilier cu adeziune optima si elasticitate medie. Produsul poate fi aplicat si pe podea, ca finisaj pentru mobilier.\n\nProdusele din seria DECOR STYLE sunt indicate în mod special pentru noile construcții şi pentru intervențiile de renovare şi restructurare, fără restricții, atât în locuințe cât şi în centre comerciale, parcuri tematice, restaurante, birouri, săli de conferință, magazine şi saloane. Poate fi aplicate cu trei grade diferite de diluție. DECOR STYLE + APĂ: ideal pentru pereți cu o bază de ciment. Permite obținerea unor finisaje bune. DECOR STYLE + 1/2 APĂ + 1/2 SUPER LATTIX: ideal pentru baze cu o adeziune dificilă şi podele supuse traficului mediu. DECOR STYLE + SUPER LATTIX: ideal pentru baze cu trafic ridicat/ mediu-înalt. Este combinația ideală pentru finisaje pe gresie, faianță pentru duș, ceramică şi mobilier în general.\nUŞURINŢĂ DE APLICARE Se aplică cu pensula ca un finisaj tradițional. Timpii lor de priză şi uscare au fost gândiți pentru a ușura cât mai mult aplicarea.\nPretul este pe kg.\nPretul include TVA', 'tecsit-decor-style-granamedi', 0, 0, 0, 'https://pro-staff.ro/wp-content/uploads/2018/06/decorstyle-RO.pdf', 0, NULL, 999999),
(2325, 'Isoacryl', 'CP Italia', 'amorsa', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/02/Isoacryl_CP_Italia.jpg', 'Amorsa acrilica pe baza de apa.Izolant fixativ acrilic cu apa pentru interior si exterior. Puterea de legatura este ideala pentru a izola si consolida suprafetele constructiilor, atat a celor vechi cat si a celor noi, inainte de aplicarea dispersiilor si acoperirea fatadelor.', 'isoacryl', 0, 1, 1, '', 0, NULL, 999999),
(2644, 'Vopsea gri antirugina BRILLTIX', 'TIXE', '104.542', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/p-tixee.jpg', 'Buna protectie antioxidanta\nAcoperire excelenta\nSe poate acoperi cu lacuri sintetice\nPentru suprafete din fier, lemn, zidarie. Poate fi aplicat pe produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie.', 'vopsea-gri-antirugina-brilltix', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/11/TDS-brilltix-antiruggine-IT-RO.pdf', 0, NULL, 999999),
(2648, 'Vopsea alba antirugina BRILLTIX', 'TIXE', '104.841', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/p-tixee.jpg', 'Buna protectie antioxidanta\nAcoperire excelenta\nSe poate acoperi cu lacuri sintetice\nPentru suprafete din fier, lemn, zidarie. Poate fi aplicat pe produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie.', 'vopsea-alba-antirugina-brilltix', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/11/TDS-brilltix-antiruggine-IT-RO.pdf', 0, NULL, 999999),
(2653, 'Vopsea pe baza de solvent HIDROTIX', 'TIXE', '411.700', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/hidrotix.png', 'HIDROTIX este o vopsea monocomponenta, transparenta, incolora, obturanta, nu formeaza film si are efect hidrofug.\nImpregneaza si protejeaza piatra de agentii atmosferici, de apa, de uleiuri si de murdarie, impiedigand patrunderea acestora\nPoate fi folosita pe podea, are o capacitate completa de umplere a porilor si o putere mare de aderenta.\nCuloarea pietrei este mai vie, desenul este improspatat si mai bine scos in evidenta\n\n– Aderare optima la orice suprafata\n– Protectia oricarui suport\n– Putere mare hidrofoba\n\nCu HIDROTIX se pot trata toate suprafetele din piatra sau din conglomerat de ciment netratate inca, atat pe podele cat si pe pereti din interior si exterior (ciment la vedere, marmura, travertin, granit, ardezie, ceramica, caramida, gresie, placi de caramida etc.)', 'vopsea-pe-baza-de-solvent-hidrotix', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/11/hidrotix-a-solvente1-IT-RO.pdf', 0, NULL, 999999),
(2662, 'Lac gri-violet SHIFTIX', 'TIXE', '613.501', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/LAC-SHIFTIX.jpg', 'Aderare optima la orice suprafata\nRezistenta buna la ingalbenire\nStralucire excelenta\nPoate fi aplicat pe Metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE), produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni', 'lac-gri-violet-shiftix', 0, 0, 1, '', 0, NULL, 999999),
(2665, 'Lac verde-portocaliu SHIFTIX', 'TIXE', '613.502', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/LAC-SHIFTIX.jpg', 'Aderare optima la orice suprafata\nRezistenta buna la ingalbenire\nStralucire excelenta\nPoate fi aplicat pe Metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE), produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni', 'lac-verde-portocaliu-shiftix', 0, 0, 1, '', 0, NULL, 999999),
(2671, 'Lac rosu-galbui SHIFTIX', 'TIXE', '613.503', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/LAC-SHIFTIX.jpg', 'Aderare optima la orice suprafata\nRezistenta buna la ingalbenire\nStralucire excelenta\nPoate fi aplicat pe Metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE), produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni', 'lac-rosu-galbui-shiftix', 0, 0, 1, '', 0, NULL, 999999),
(2678, 'Lac verde-albastrui SHIFTIX', 'TIXE', '613.205', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/LAC-SHIFTIX.jpg', 'Aderare optima la orice suprafata\nRezistenta buna la ingalbenire\nStralucire excelenta\nPoate fi aplicat pe Metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE), produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni', 'lac-verde-albastrui-shiftix', 0, 0, 1, '', 0, NULL, 999999),
(2681, 'Lac albastru-violet SHIFTIX', 'TIXE', '613.204', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/11/LAC-SHIFTIX.jpg', 'Aderare optima la orice suprafata\nRezistenta buna la ingalbenire\nStralucire excelenta\nPoate fi aplicat pe Metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE), produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni', 'lac-albastru-violet-shiftix', 0, 0, 1, '', 0, NULL, 999999),
(2780, 'Lac universal 2K SMALT-X', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/12/smalt-x-solvente.jpg', 'Lacul are o aderenta excelenta la orice suport (faianta, ceramica, gresie, aluminiu, tabla zincata, fier, plastic) fara a fi nevoie să se aplice vreun grund. SMALT-X este de asemenea un produs cu o duritate si rezistenta extrema la lovituri. Asadar, produsul poate fi utilizat pentru renovarea spatiilor din casa cum ar fi bucatarii si bai si inclusiv pe suporturi destinate exterioarelor.\n\nCARACTERISTICI PRINCIPALE\nAderenta optima la orice suprafata\nDuritate si rezistenta extrema la abraziune\nStralucire excelenta\n\nINTREBUINTARE\nCeramica, gresie, metal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE). Poate fi aplicat pe produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie.', 'lac-universal-2k-smalt-x', 0, 0, 1, '', 0, NULL, 999999),
(2784, 'Vopsea email pentru ceramica RENOVATIX', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/12/Vopsea-email-pentru-ceramica-RENOVATIX-TIXE.jpeg', 'Indicata pentru: chiuvete, cazi sanitare inclusiv din fibra de sticla, faianta, gresie, lemn si metal.\n\nCARACTERISTICI PRINCIPALE\nAderenta optima la orice suprafata.\nDuritate si rezistenta extrema la abraziune\nNuanta excelenta de alb.\n\nINTREBUINTARE\nMetal (fier tratat corespunzator cu anti-rugina) aliaje si tabla zincata, lemn, zidarie, plastic (exclus polietilen si PPE). Poate fi aplicat pe produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni.', 'vopsea-email-pentru-ceramica-renovatix', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/12/Vopsea-email-pentru-ceramica-RENOVATIX-TIXE.pdf', 0, NULL, 999999),
(2788, 'Vopsea email bicomponenta PAVTIX', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/12/Vopsea-email-bicomponenta-PAVTIX.jpeg', 'Finisajul satinat face produsul corespunzator pentru aplicarea pe podea, permitand reinnoirea podelelor vechi, uzate de trecerea timpului.\n\nCARACTERISTICI PRINCIPALE\nAderenta optima\nDuritate si rezistenta extrema la abraziune\nBuna rezistenta chimica\n\nINTREBUINTARE\nSuprafete din ceramica, teracota, gresie, lemn, linoleum, ciment, metal\n\n', 'vopsea-email-bicomponenta-pavtix', 0, 0, 1, 'https://pro-staff.ro/wp-content/uploads/2018/12/Vopsea-email-bicomponenta-PAVTIX.pdf', 0, NULL, 999999),
(2900, 'Lac universal anticoroziv lucios TIXEZINC', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2019/01/Lac-universal-anticoroziv-lucios-TIXEZINC.jpg', 'CARACTERISTICI PRINCIPALE\n– Aderenta optima la orice suprafata.\n– Stralucire deosebita\n– Actiune anticoroziva\n– Rezistenta in exterior\nINTREBUINTARE\nUtilizare ca lac de finisare sau grund de ancorare pentru lacuri sintetice, pentru balustrade, porti, suporturi din zinc, din fier sau din aliaje metalice destinate exterioarelor sau interioarelor.', 'lac-universal-anticoroziv-lucios-tixezinc', 1, 0, 1, '', 0, NULL, 999999),
(2912, 'Primer antirugina pe baza de apa - Tixe', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2019/01/Primer-grund-antirugina-pe-baza-de-apa-Tixe.jpg', 'CARACTERISTICI PRINCIPALE\n– Aderare optima la orice suprafata\n– Protectie buna antioxidanta\n\nINTREBUINTARE\nMetal (fier/aliaje si tabla zincata), lemn, zidarie, plastic (exclus polietilen si PPE)\nPoate fi aplicat pe produse de manufactura destinate expunerii intr-un mediu urban, rural, costier si industrial cu agresivitate medie. Este potrivit si pentru ambarcatiuni.', 'primer-antirugina-pe-baza-de-apa---tixe', 1, 0, 1, '', 0, NULL, 999999),
(2919, 'GLACIAL - TIXE - Vopsea efect metale pretioase', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2019/02/glacial.jpg', 'Ideal pentru medii prestigioase, locuri publice și birouri.\nAmestecarea cu alte emailuri/vopsele TIXE pe baza de apa:\n– raportul recomandat este 1: 8;\n– se amesteca astfel: 125 ml de email Tixe în fiecare litru de apă Tixe (250 ml în 2 litri).\nCulori – mai multe culori pot fi obținute cu sistemul de nuanțare Tixe.\nFormate disponibile: 2 l – 1 l', 'glacial---tixe---vopsea-efect-metale-pretioase', 1, 1, 1, '', 0, NULL, 999999),
(2924, 'Lac pentru lemn cu efect cerat - TIXE', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2019/02/finitura-cera-finish-vax.jpg', 'CARACTERISTICI PRINCIPALE\n– conține ceară naturală\n– hidrofug\n– finisaj catifelat\n– nu se sparge si nu crapa\nSe foloseste pe lemn nou sau deja vopsit, în aer liber sau în interior, în orice mediu (marin, munte, urban, industrial), pe corpuri de iluminat, uși, balustrade, balcoane, bărci etc.\nEchipat atât cu o penetrare excelentă, cât și cu un efect de barieră, sporește rezistența lemnului la agresiune atmosferice și umiditate. Selecția țintă a componentelor de formulare garantează o protecție prelungită a lemnului împotriva putrefacție (basidiomycetes), împotriva ciupercilorBLUE STAINS (ascomycetes), și împotriva activității INSECTELOR (viermi, termite etc.), printr-o acțiune preventivă. Prezența pigmenților, înzestrată cu o stabilitate extremă, sporește rigiditatea lemnului și oferă gravură în tonul dorit.', 'lac-pentru-lemn-cu-efect-cerat---tixe', 1, 0, 1, '', 0, NULL, 999999),
(2984, 'DORATURA - TIXE - Vopsea decorativa exterior cu efect auriu metalic pe baza solvent', 'TIXE', '101.207-1', NULL, 'https://pro-staff.ro/wp-content/uploads/2018/06/doratura_solvente.jpg', 'Solutie de pulbere metalica cu liant folosita la vopsirea ramelor sau a altor obiecte de interior. In general obiectele vopsite cu aceasta solutie de bronz necesita lacuire cu vernisuri speciale.\nTutorial aplicare\nPretul este pe bucata\nPretul include TVA', 'doratura---tixe---vopsea-decorativa-exterior-cu-efect-auriu-metalic-pe-baza-solvent', 1, 1, 1, '', 0, NULL, 999999),
(3024, 'Vopsea decorativa cu efect de matase sau cu nisip – OYSTAR – TIXE', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2019/03/oystar.jpeg', 'OYSTAR este o pictură decorativă netedă cu perle de mătase sau cu nisip, care este ușor de aplicat și are o acoperire excelentă. Datorită pigmenților prețioși, OYSTAR îmbracă suprafețele tratate cu un aspect perle excepțional, cu efect tactil, obținând astfel medii moderne cu efecte cromatice care variază în funcție de înclinația luminii.', 'vopsea-decorativa-cu-efect-de-matase-sau-cu-nisip-oystar-tixe', 1, 1, 1, '', 0, NULL, 999999),
(3294, 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2020/01/kedive_2019.jpg', 'Vopseaua decorativa Kedive permite obtinerea finisajelor decorative splendide, ideale pentru medii de prestigiu, institutii publice si birouri. Kedive este echipat cu o acoperire foarte inalta, intr-un singur strat, cu o aderenta excelenta, conferind suprafetelor peretilor cromatic umbrite si efectul de miscare.', 'vopsea-decorativa-cu-efect-de-matase---kedive---tixe', 1, 0, 1, 'https://pro-staff.ro/upload/datasheets/fisa-tehnica-kedive-RO.pdf', 19, NULL, 999999),
(3301, 'Glet de modelaj interior ce creeaza efect de travertin, piatra sparta , pietra spaccata - Tiberius - TIXE', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2020/01/tiberius-1.jpg', 'Simplitatea și versatilitatea TIBERIUS, permit realizarea mai multor finisaje decorative, cum ar fi travertin, ciment, ipsos, zgâriat, relief, țesătură, pietra spaccata, atât în versiunea clasică, cât și în versiunea madreperla.\nCARACTERISTICI PRINCIPALE\n– Efect decorativ travertin/ciment/graffiato/pietra spaccata\n– Acoperire optima\n– Umplere pentru pereți inegali\n– Aderenta excelenta\n– Usurinta in utilizare', 'glet-de-modelaj-interior-ce-creeaza-efect-de-travertin-piatra-sparta-pietra-spaccata---tiberius---tixe', 1, 1, 1, '', 0, NULL, 999999),
(3427, 'Vopsea decorativa cu efect de matase - TIXE - ORGANZA', 'TIXE', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2020/04/vopsea-decorativa.jpg', 'Vopsea decorativa care reproduce un efect de mătase acolo unde este aplicat. ORGANZA are o acoperire foarte ridicată într-un singur strat, cu aderență și lavabilitate excelente, oferind suprafețelor peretelui un aspect cromatic și tactil, precum țesătura de mătase chinezească..', 'vopsea-decorativa-cu-efect-de-matase---tixe---organza', 1, 1, 1, '', 0, NULL, 999999),
(3472, 'PENSULA PENTRU VOPSEA DECORATIVA , GIEFFE , DIN PAR NATURAL', 'Gieffe', '0', NULL, 'https://pro-staff.ro/wp-content/uploads/2020/04/pensula-vopsea-decorativa.jpg', 'Pensula 120mm pentru vopsea decorativa, din par natural, cu maner de lemn .\nAcesta pensula este ideala pentru aplicarea vopselelor cu efect decorativ.', 'pensula-pentru-vopsea-decorativa-gieffe-din-par-natural', 1, 1, 1, '', 0, NULL, 999999),
(3474, 'Stabilizza', 'CP Italia', '0', NULL, '', '', 'stabilizza', 0, 0, 1, 'https://pro-staff.ro/upload/datasheets/Stabilizza.pdf', NULL, NULL, 999999),
(3475, 'Plastone', 'CP Italia', '0', NULL, 'https://pro-staff.ro/upload/images/Plastone-14-L-CP-Italia.jpg', 'Vopsea solubila in apa , pentru pereti , transpiranta , vinil-acrilica pentru interioare, acoperire optima , poate fi usor aplicata cu pensula.Ideala pentru ambiente interne , bucatarii, pivnite , acolo unde in general este necesara o puternica transpirabilitate.Puncgt de alb - bun. Randament: 8-10 mp/ strat.', 'plastone', 0, 0, 1, 'https://pro-staff.ro/upload/datasheets/Plastone_14L.pdf', -1, NULL, 999999),
(3476, 'Zorka', 'Tikkurila', '0', NULL, NULL, '', 'zorka', 0, 0, 1, '', NULL, NULL, 999999),
(3477, 'Super White', 'Tikkurila', '0', NULL, 'https://pro-staff.ro/upload/images/160478_tikkurila_super_white_10L-1609754534.jpg', 'Vopsea de latex pe bază de apă, caracterizată de o putere de ascundere foarte bună. Dedicat pentru vopsirea decorativă și de protecție a pereților și tavanelor interioare din interiorul clădirilor rezidențiale, de birouri și de uz public (spitale - cu excepția pereților din jurul vasului de spălare, a chiuvetei de scurgere și a camerelor care necesită dezinfectare sau întreținere a asepticului pereților; școli, grădinițe); de asemenea în industria alimentară fără contact direct cu alimentele. Oferă un finisaj mat adânc al suprafeței.', 'super-white', 0, 0, 1, '', NULL, NULL, 999999),
(3478, 'Pro Tech', 'CP Italia', '0', NULL, 'https://pro-staff.ro/upload/images/Pro-Tech-10-L-CP-Italia.jpg', 'Vopsea acrilica lavabila pentru interioare cu o optima tranpirabilitate , excelenta acoperire si punct de al. Ideala pentru aplciare, chiar si un singur strat pe gips-carton. Aspectul de film opac , cu petere mare de mascare a inperfectiunilor de suprafata.', 'pro-tech', 0, 0, 1, 'https://pro-staff.ro/upload/datasheets/ProTech_10L.pdf', -1, NULL, 999999),
(3479, 'KREA GLET AIRLESS', 'Krea', '0', NULL, NULL, 'Glet special creat pentru aplicare mecanizată, rapidă și ușoară, 800-1000mp / zi , ', 'krea-glet-airless', 0, 0, 1, '', NULL, NULL, 999999),
(3480, 'KREA SUPERSTUCK', 'Krea', '0', NULL, NULL, 'Glet pentru reparatii', 'krea-superstuck', 0, 0, 1, '', NULL, NULL, 999999);

-- --------------------------------------------------------

--
-- Table structure for table `products_`
--

CREATE TABLE `products_` (
  `id` int(5) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `categoryfeatured` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `datasheet` varchar(255) CHARACTER SET utf8 COLLATE utf8_romanian_ci DEFAULT NULL,
  `PaletteColorID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_`
--

INSERT INTO `products_` (`id`, `product_name`, `sku`, `image_url`, `description`, `alias`, `featured`, `categoryfeatured`, `isActive`, `datasheet`, `PaletteColorID`) VALUES
(7, 'Vopsea lavabila de exterior Elasto ', 'CP-046332P00005', 'https://pro-staff.ro/upload/images/Elasto_5L_CP_Italia.jpg', 'Vopsea Elastomerica cu apa, pe baza de rasini Stirolo/Acrilice cu actiune preventiva impotriva crapaturilor. Se foloseste la protectia peretilor externi si interni. Ideala pentru protectia obiectelor din ciment prefabricat, lucrate de mana.', 'vopsea-lavabila-de-exterior-elasto-', 1, NULL, 1, 'https://pro-staff.ro/upload/datasheets/Elasto_5L.pdf', -1),
(6, 'DORATURA – TIXE – Vopsea decorativa exterior cu efect auriu metalic pe baza solvent', '101.207-1', 'https://pro-staff.ro/upload/images/doratura_solvente.jpg', 'Bronz lichid - Solutie de pulbere metalica cu liant folosita la vopsirea ramelor sau a altor obiecte de interior.\r\n\r\nSolutie de pulbere metalica cu liant folosita la vopsirea ramelor sau a altor obiecte de interior. In general obiectele vopsite cu aceasta solutie de bronz necesita lacuire cu vernisuri speciale.', 'doratura-tixe-vopsea-decorativa-exterior-cu-efect-auriu-metalic-pe-baza-solvent', 1, NULL, 1, 'https://pro-staff.ro/upload/datasheets/TDS-doratura-high-quality.pdf', 14);

-- --------------------------------------------------------

--
-- Table structure for table `products_complementary`
--

CREATE TABLE `products_complementary` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ComplementaryID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_complementary`
--

INSERT INTO `products_complementary` (`id`, `ProductID`, `ComplementaryID`) VALUES
(7, 7, 6),
(8, 1025, 1108),
(12, 1025, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`id`, `ProductID`, `BrandID`) VALUES
(1, 1011, 1),
(2, 1013, 1),
(3, 1025, 1),
(4, 1083, 1),
(5, 1110, 1),
(6, 1122, 1),
(7, 1126, 1),
(8, 1130, 1),
(9, 1133, 1),
(10, 1149, 1),
(11, 1173, 1),
(12, 1175, 1),
(13, 1177, 1),
(14, 1179, 1),
(15, 1182, 1),
(16, 1184, 1),
(17, 1185, 1),
(18, 1187, 1),
(19, 1195, 1),
(20, 1207, 1),
(21, 1209, 1),
(22, 1251, 1),
(23, 1259, 1),
(24, 2325, 1),
(25, 1019, 2),
(26, 1023, 2),
(27, 1029, 2),
(28, 1053, 2),
(29, 1059, 2),
(30, 1061, 2),
(31, 1063, 2),
(32, 1067, 2),
(33, 1071, 2),
(34, 1093, 2),
(35, 1095, 2),
(36, 1099, 2),
(37, 1106, 2),
(38, 1108, 2),
(39, 1116, 2),
(40, 1118, 2),
(41, 1120, 2),
(42, 1137, 2),
(43, 1139, 2),
(44, 1141, 2),
(45, 1143, 2),
(46, 1145, 2),
(47, 1153, 2),
(48, 1157, 2),
(49, 1161, 2),
(50, 1165, 2),
(51, 1167, 2),
(52, 1169, 2),
(53, 1229, 2),
(54, 1235, 2),
(55, 1241, 2),
(56, 1243, 2),
(57, 1261, 2),
(58, 1265, 2),
(59, 1269, 2),
(60, 1271, 2),
(61, 1273, 2),
(62, 1031, 3),
(63, 1037, 3),
(64, 1041, 3),
(65, 1049, 3),
(66, 1073, 4),
(67, 1075, 4),
(68, 1077, 4),
(69, 1079, 4),
(70, 1081, 4),
(71, 1085, 5),
(72, 1087, 5),
(73, 1102, 5),
(74, 1279, 6),
(75, 1281, 6),
(76, 1291, 6),
(77, 1295, 6),
(78, 1297, 6),
(79, 1299, 6),
(80, 1301, 6),
(81, 1303, 6),
(82, 1305, 6),
(83, 1307, 6),
(84, 1309, 6),
(85, 1311, 6),
(86, 1313, 6),
(87, 1317, 6),
(88, 1321, 6),
(89, 1329, 6),
(90, 1331, 6),
(91, 1335, 6),
(92, 1319, 7),
(93, 1341, 7),
(94, 1343, 7),
(95, 1347, 7),
(96, 1349, 7),
(97, 1355, 7),
(98, 1357, 7),
(99, 1365, 7),
(100, 1367, 7),
(101, 1369, 7),
(102, 1371, 7),
(103, 1375, 7),
(104, 1377, 7),
(105, 1381, 7),
(106, 3472, 7),
(107, 1480, 8),
(108, 1484, 8),
(109, 1487, 8),
(110, 1490, 8),
(111, 1493, 8),
(112, 1496, 8),
(113, 1498, 8),
(114, 1501, 8),
(115, 1504, 8),
(116, 1508, 8),
(117, 2030, 9),
(118, 2067, 9),
(119, 2070, 9),
(120, 2082, 9),
(121, 2085, 9),
(122, 2644, 9),
(123, 2648, 9),
(124, 2653, 9),
(125, 2662, 9),
(126, 2665, 9),
(127, 2671, 9),
(128, 2678, 9),
(129, 2681, 9),
(130, 2780, 9),
(131, 2784, 9),
(132, 2788, 9),
(133, 2900, 9),
(134, 2912, 9),
(135, 2919, 9),
(136, 2924, 9),
(137, 2984, 9),
(138, 3024, 9),
(139, 3294, 9),
(140, 3301, 9),
(141, 3427, 9),
(142, 2124, 10),
(143, 2141, 10),
(144, 2143, 10),
(145, 2154, 10),
(146, 2156, 10),
(147, 2162, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `ProductID`, `CategoryID`) VALUES
(1, 2788, 83),
(2, 2784, 204),
(3, 2657, 166),
(4, 2653, 166),
(5, 2162, 206),
(6, 2156, 83),
(7, 2154, 166),
(8, 2149, 166),
(9, 2143, 166),
(10, 2141, 205),
(11, 2135, 205),
(12, 2124, 166),
(14, 1229, 37),
(15, 1179, 166),
(16, 1019, 205),
(17, 1021, 205),
(18, 1023, 205),
(19, 1102, 63),
(20, 1106, 87),
(21, 1108, 87),
(22, 1110, 87),
(23, 1116, 87),
(24, 1118, 87),
(25, 1120, 87),
(26, 1122, 87),
(27, 1126, 87),
(28, 1130, 87),
(29, 1137, 87),
(30, 1139, 87),
(31, 1141, 87),
(32, 1143, 87),
(33, 1145, 87),
(34, 1147, 87),
(35, 1173, 37),
(36, 1184, 37),
(37, 1185, 37),
(38, 1187, 37),
(39, 1189, 37),
(40, 1195, 37),
(41, 1197, 37),
(42, 1205, 37),
(43, 1207, 37),
(44, 1209, 37),
(45, 1213, 37),
(46, 1231, 37),
(47, 1233, 37),
(48, 1237, 37),
(49, 1239, 37),
(50, 1241, 37),
(51, 1243, 37),
(52, 1245, 37),
(53, 1251, 37),
(55, 2030, 87),
(56, 2067, 87),
(57, 2070, 87),
(58, 2082, 87),
(59, 2085, 87),
(60, 2100, 87),
(61, 2780, 87),
(62, 2919, 87),
(63, 2984, 87),
(64, 3472, 160),
(65, 3470, 160),
(66, 3427, 87),
(67, 3301, 87),
(68, 3301, 206),
(69, 3294, 87),
(70, 3024, 87),
(71, 3133, 205),
(72, 2924, 50),
(73, 2912, 50),
(74, 2900, 50),
(75, 2900, 50),
(76, 2824, 205),
(77, 2681, 63),
(78, 2681, 63),
(79, 2678, 50),
(80, 2678, 50),
(81, 2676, 50),
(82, 2676, 63),
(83, 2674, 50),
(84, 2674, 63),
(85, 2671, 50),
(92, 2671, 50),
(94, 2665, 50),
(95, 2665, 50),
(110, 2662, 50),
(111, 2662, 50),
(113, 2648, 50),
(114, 2648, 50),
(115, 2646, 50),
(116, 2646, 63),
(117, 2644, 50),
(118, 2644, 50),
(119, 2639, 50),
(120, 2639, 63),
(121, 2325, 205),
(123, 1508, 160),
(124, 1504, 160),
(125, 1501, 160),
(126, 1498, 160),
(127, 1496, 160),
(128, 1493, 160),
(129, 1490, 160),
(130, 1487, 160),
(131, 1484, 160),
(132, 1480, 160),
(133, 1359, 160),
(134, 1365, 160),
(135, 1365, 160),
(136, 1367, 160),
(137, 1369, 160),
(138, 1371, 160),
(139, 1371, 160),
(140, 1373, 160),
(141, 1375, 160),
(142, 1377, 160),
(143, 1379, 160),
(144, 1381, 160),
(145, 1383, 160),
(146, 1385, 160),
(147, 1335, 160),
(148, 1331, 160),
(149, 1329, 160),
(150, 1319, 160),
(151, 1321, 160),
(152, 1341, 160),
(153, 1343, 160),
(154, 1347, 160),
(155, 1349, 160),
(156, 1351, 160),
(157, 1353, 160),
(158, 1355, 160),
(159, 1357, 160),
(160, 1299, 160),
(161, 1297, 160),
(162, 1295, 160),
(163, 1291, 160),
(164, 1281, 160),
(165, 1279, 160),
(166, 1301, 160),
(167, 1301, 160),
(168, 1303, 160),
(169, 1317, 160),
(170, 1313, 160),
(171, 1311, 160),
(172, 1309, 160),
(173, 1309, 160),
(174, 1307, 160),
(175, 1307, 160),
(176, 1305, 160),
(177, 1305, 160),
(178, 1259, 50),
(179, 1261, 50),
(180, 1263, 50),
(181, 1265, 50),
(182, 1267, 50),
(183, 1269, 63),
(184, 1271, 63),
(185, 1273, 63),
(186, 1275, 63),
(187, 1235, 208),
(188, 1235, 208),
(189, 1171, 83),
(190, 1169, 83),
(191, 1167, 83),
(192, 1165, 83),
(193, 1083, 37),
(194, 1175, 37),
(195, 1182, 37),
(196, 1177, 37),
(197, 1177, 37),
(198, 1133, 87),
(199, 1149, 63),
(200, 1163, 63),
(201, 1161, 63),
(202, 1159, 63),
(203, 1157, 63),
(204, 1155, 63),
(205, 1153, 63),
(206, 1151, 63),
(207, 1100, 37),
(208, 1099, 37),
(209, 1097, 83),
(210, 1095, 83),
(211, 1093, 50),
(212, 1091, 50),
(213, 1101, 37),
(214, 1067, 50),
(215, 1065, 50),
(216, 1063, 50),
(217, 1059, 63),
(218, 1057, 205),
(219, 1057, 63),
(220, 1055, 63),
(221, 1053, 63),
(222, 1051, 50),
(223, 1069, 50),
(224, 1071, 50),
(225, 1061, 63),
(226, 1089, 50),
(227, 1087, 63),
(228, 1087, 63),
(229, 1085, 63),
(230, 1085, 63),
(231, 1081, 37),
(232, 1079, 37),
(233, 1077, 37),
(234, 1075, 37),
(235, 1073, 37),
(236, 1029, 50),
(237, 1027, 50),
(238, 1025, 50),
(239, 1019, 205),
(240, 1017, 205),
(241, 1017, 37),
(242, 1015, 205),
(243, 1015, 37),
(244, 1013, 206),
(246, 1011, 205),
(247, 1011, 205),
(248, 1031, 50),
(249, 1033, 50),
(250, 1049, 50),
(251, 1047, 50),
(252, 1045, 50),
(253, 1043, 50),
(254, 1041, 50),
(255, 1039, 50),
(256, 1039, 171),
(257, 1037, 50),
(258, 1037, 50),
(259, 1035, 50),
(260, 1097, 207),
(261, 1095, 83),
(262, 3480, 160),
(263, 3482, NULL),
(264, 3485, 83),
(265, 3486, 83),
(266, 3487, 83),
(267, 3488, 83),
(268, 3489, 83),
(269, 3490, 63),
(270, 3491, 63),
(271, 3492, 83),
(272, 3493, 63),
(273, 3494, 63),
(274, 3495, 83),
(275, 3498, 63),
(276, 3499, 63),
(277, 3500, 50),
(278, 3501, 37),
(279, 3502, 87),
(280, 3503, 83),
(281, 3504, 83),
(282, 3505, 83),
(283, 3506, 87),
(284, 3507, 37),
(289, 6, 87),
(290, 7, 37),
(291, 3508, 87),
(292, 3473, NULL),
(293, 3474, 205),
(294, 3475, 37),
(295, 3476, 205),
(296, 3477, 37),
(297, 3478, 37),
(298, 3479, 206),
(299, 3480, 206);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `PaletteColorID` int(11) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `ProductID`, `PaletteColorID`, `added_at`) VALUES
(1, 3478, 1, '2020-09-11 13:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `image_reference` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `ProductID`, `image_reference`, `image_url`) VALUES
(45, 3294, NULL, 'https://pro-staff.ro/upload/images/Kedive.jpg'),
(51, 3294, NULL, 'https://pro-staff.ro/upload/images/Kedive1.jpg'),
(52, 3294, NULL, 'https://pro-staff.ro/upload/images/Kedive2.jpg'),
(56, 3294, NULL, 'https://pro-staff.ro/upload/images/Kedive3.jpg'),
(57, 3294, NULL, 'https://pro-staff.ro/upload/images/Kedive4.jpg'),
(58, 3475, NULL, 'https://pro-staff.ro/upload/images/Plastone-14-L-CP-Italia.jpg'),
(59, 3477, NULL, 'https://pro-staff.ro/upload/images/160478_tikkurila_super_white_10L-1609754534.jpg'),
(60, 3478, NULL, 'https://pro-staff.ro/upload/images/Pro-Tech-10-L-CP-Italia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `QuantityID` int(11) NOT NULL,
  `PaletteColorID` int(11) DEFAULT NULL,
  `old_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `datasheet` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`id`, `ProductID`, `QuantityID`, `PaletteColorID`, `old_price`, `price`, `datasheet`) VALUES
(1, 3478, 2, NULL, 50, 25, ''),
(2, 3480, 5, NULL, 50, 25, ''),
(3, 3480, 5, NULL, 70, 35, ''),
(4, 3480, 5, NULL, 250, 125, ''),
(5, 3482, 5, NULL, 50, 25, ''),
(6, 3482, 5, NULL, 70, 35, ''),
(7, 3482, 5, NULL, 250, 125, ''),
(8, 3494, 25, NULL, 22, 11, ''),
(9, 3494, 25, NULL, 0, 0, ''),
(10, 3494, 25, NULL, 0, 0, ''),
(11, 3494, 25, NULL, 0, 0, ''),
(12, 3494, 25, NULL, 0, 0, ''),
(13, 3494, 25, NULL, 0, 0, ''),
(14, 3495, 25, NULL, 22, 11, ''),
(15, 3495, 25, NULL, 0, 0, ''),
(16, 3495, 25, NULL, 0, 0, ''),
(17, 3495, 25, NULL, 0, 0, ''),
(18, 3495, 25, NULL, 0, 0, ''),
(19, 3495, 25, NULL, 0, 0, ''),
(20, 3499, 26, NULL, 22, 11, ''),
(21, 3499, 26, NULL, 0, 0, ''),
(22, 3499, 26, NULL, 0, 0, ''),
(23, 3499, 26, NULL, 0, 0, ''),
(24, 3499, 26, NULL, 0, 0, ''),
(25, 3499, 26, NULL, 0, 0, ''),
(26, 3500, 25, NULL, 22, 11, ''),
(27, 3500, 25, NULL, 0, 0, ''),
(28, 3500, 25, NULL, 0, 0, ''),
(29, 3500, 25, NULL, 0, 0, ''),
(30, 3500, 25, NULL, 0, 0, ''),
(31, 3500, 25, NULL, 0, 0, ''),
(32, 3501, 27, NULL, 22, 11, ''),
(33, 3501, 27, NULL, 0, 0, ''),
(34, 3501, 27, NULL, 0, 0, ''),
(35, 3501, 27, NULL, 0, 0, ''),
(36, 3501, 27, NULL, 0, 0, ''),
(37, 3501, 27, NULL, 0, 0, ''),
(38, 3501, 10, NULL, 0, 0, ''),
(39, 3501, 10, NULL, 33, 22, ''),
(40, 3501, 10, NULL, 0, 0, ''),
(41, 3501, 10, NULL, 0, 0, ''),
(42, 3501, 10, NULL, 0, 0, ''),
(43, 3501, 10, NULL, 0, 0, ''),
(44, 3502, 27, NULL, 22, 11, ''),
(45, 3502, 27, NULL, 0, 0, ''),
(46, 3502, 27, NULL, 0, 0, ''),
(47, 3502, 27, NULL, 0, 0, ''),
(48, 3502, 27, NULL, 0, 0, ''),
(49, 3502, 27, NULL, 0, 0, ''),
(50, 3505, 27, NULL, 22, 11, ''),
(51, 3505, 27, NULL, 0, 0, ''),
(52, 3505, 27, NULL, 0, 0, ''),
(53, 3505, 27, NULL, 0, 0, ''),
(54, 3505, 27, NULL, 0, 0, ''),
(55, 3505, 27, NULL, 0, 0, ''),
(56, 3506, 9, NULL, 22, 11, ''),
(57, 3506, 9, NULL, 0, 0, ''),
(58, 3506, 9, NULL, 0, 0, ''),
(59, 3506, 9, NULL, 0, 0, ''),
(60, 3506, 9, NULL, 0, 0, ''),
(61, 3506, 9, NULL, 0, 0, ''),
(62, 3506, 9, NULL, 0, 0, ''),
(63, 3506, 9, NULL, 0, 0, ''),
(64, 3506, 9, NULL, 0, 0, ''),
(65, 3506, 9, NULL, 0, 0, ''),
(66, 3506, 9, NULL, 0, 0, ''),
(67, 3506, 9, NULL, 0, 0, ''),
(68, 3507, 28, NULL, 0, 0, ''),
(69, 3507, 28, NULL, 0, 0, ''),
(70, 3507, 28, NULL, 0, 0, ''),
(71, 3507, 28, NULL, 0, 0, ''),
(72, 3507, 28, NULL, 0, 0, ''),
(73, 3507, 28, NULL, 0, 0, ''),
(74, 3507, 28, NULL, 0, 0, ''),
(75, 3507, 28, NULL, 0, 0, ''),
(76, 3507, 28, NULL, 0, 0, ''),
(77, 3507, 28, NULL, 0, 0, ''),
(78, 3507, 28, NULL, 22, 11, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_info_`
--

CREATE TABLE `product_info_` (
  `id` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `QuantityID` int(11) NOT NULL,
  `old_price` double(7,2) NOT NULL,
  `price` double(7,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info_`
--

INSERT INTO `product_info_` (`id`, `ProductID`, `QuantityID`, `old_price`, `price`) VALUES
(1, 2, 27, 33.00, 22.00),
(2, 2, 9, 22.00, 11.00),
(3, 5, 28, 0.00, 0.00),
(4, 6, 14, 0.00, 51.90),
(5, 6, 17, 0.00, 120.40),
(6, 7, 5, 199.00, 169.00),
(7, 3508, 28, 0.00, 0.00),
(8, 3473, 28, 0.00, 0.00),
(9, 3472, 30, 0.00, 44.90),
(10, 3472, 31, 0.00, 34.90),
(11, 1229, 32, 0.00, 59.00),
(12, 1229, 23, 0.00, 179.00),
(13, 1229, 8, 0.00, 549.00),
(14, 1207, 10, 480.00, 465.00),
(15, 1207, 5, 0.00, 149.00),
(16, 1011, 33, 0.00, 19.90),
(17, 1011, 5, 0.00, 95.00),
(18, 1013, 34, 0.00, 15.00),
(19, 1013, 4, 0.00, 49.90),
(20, 2325, 2, 0.00, 29.90),
(21, 2325, 5, 0.00, 95.00),
(22, 1019, 23, 0.00, 139.00),
(23, 1023, 8, 0.00, 149.00),
(24, 1023, 23, 0.00, 79.00),
(25, 1025, 33, 0.00, 32.00),
(26, 1071, 32, 0.00, 41.90),
(27, 1108, 35, 0.00, 119.90),
(28, 1029, 8, 0.00, 324.00),
(29, 1029, 23, 129.00, 114.90),
(30, 3294, 2, 0.00, 160.00),
(31, 1031, 33, 0.00, 34.00),
(32, 1031, 5, 0.00, 169.00),
(33, 1031, 13, 0.00, 559.00),
(34, 1037, 33, 0.00, 59.00),
(35, 1037, 22, 0.00, 169.00),
(36, 1041, 33, 0.00, 49.00),
(37, 1041, 22, 0.00, 149.00),
(38, 1041, 5, 0.00, 269.00),
(39, 1041, 9, 0.00, 499.00),
(40, 1049, 33, 0.00, 49.00),
(41, 1049, 22, 0.00, 139.00),
(42, 1053, 32, 0.00, 69.00),
(43, 1053, 23, 0.00, 199.00),
(44, 1053, 8, 0.00, 456.00),
(45, 1059, 23, 0.00, 189.90),
(46, 1061, 2, 0.00, 29.00),
(47, 1063, 32, 0.00, 52.00),
(48, 1063, 23, 0.00, 159.00),
(49, 2030, 2, 0.00, 160.00),
(50, 2030, 36, 0.00, 280.00),
(51, 1067, 32, 0.00, 49.00),
(52, 1067, 23, 0.00, 149.00),
(53, 1073, 35, 49.90, 44.90),
(54, 1075, 2, 0.00, 59.00),
(55, 1077, 2, 0.00, 59.00),
(56, 1079, 2, 0.00, 49.00),
(57, 1081, 5, 0.00, 159.00),
(58, 1083, 33, 0.00, 49.00),
(59, 1085, 37, 0.00, 29.00),
(60, 1087, 37, 0.00, 39.00),
(61, 1089, 32, 0.00, 43.90),
(62, 1089, 23, 0.00, 129.00),
(63, 1089, 8, 0.00, 369.00),
(64, 1093, 32, 0.00, 43.90),
(65, 1093, 23, 0.00, 129.00),
(66, 1093, 8, 0.00, 369.00),
(67, 1095, 23, 0.00, 159.00),
(68, 1095, 8, 0.00, 459.00),
(69, 1099, 32, 0.00, 39.00),
(70, 1099, 23, 0.00, 119.00),
(71, 1099, 8, 0.00, 299.00),
(72, 1102, 37, 0.00, 39.00),
(73, 1106, 2, 0.00, 56.90),
(74, 1110, 2, 0.00, 95.00),
(75, 1116, 38, 0.00, 159.00),
(76, 1118, 12, 0.00, 159.00),
(77, 1120, 12, 0.00, 159.00),
(78, 1122, 7, 259.00, 199.00),
(79, 1126, 2, 0.00, 102.00),
(80, 1130, 2, 0.00, 98.00),
(81, 1133, 2, 92.00, 79.00),
(82, 1137, 8, 370.00, 339.00),
(83, 1139, 2, 0.00, 69.00),
(84, 1141, 2, 0.00, 69.00),
(85, 1143, 32, 0.00, 119.00),
(86, 1145, 32, 0.00, 168.28),
(87, 1145, 23, 0.00, 469.00),
(88, 1149, 33, 49.00, 39.00),
(89, 1149, 36, 110.00, 89.90),
(90, 1153, 2, 0.00, 59.00),
(91, 1153, 23, 0.00, 189.00),
(92, 1157, 23, 0.00, 116.00),
(93, 1157, 8, 0.00, 249.90),
(94, 1161, 32, 0.00, 39.00),
(95, 1161, 23, 0.00, 119.00),
(96, 1165, 24, 0.00, 644.90),
(97, 1167, 9, 0.00, 799.90),
(98, 1169, 6, 0.00, 429.90),
(99, 1169, 11, 0.00, 1229.90),
(100, 1173, 5, 0.00, 310.00),
(101, 1175, 3, 149.00, 124.90),
(102, 1177, 3, 0.00, 114.50),
(103, 1179, 3, 0.00, 117.60),
(104, 1182, 5, 199.00, 169.00),
(105, 1184, 5, 319.00, 269.00),
(106, 1185, 5, 0.00, 159.00),
(107, 1187, 5, 129.00, 109.90),
(108, 1187, 10, 329.00, 279.90),
(109, 1195, 5, 94.00, 79.90),
(110, 1195, 10, 240.00, 204.00),
(111, 1209, 5, 0.00, 139.00),
(112, 1209, 10, 349.00, 279.00),
(113, 1237, 32, 0.00, 34.90),
(114, 1237, 23, 0.00, 89.90),
(115, 1237, 8, 0.00, 286.00),
(116, 1235, 32, 0.00, 34.90),
(117, 1235, 23, 0.00, 89.90),
(118, 1235, 8, 0.00, 299.00),
(119, 1241, 32, 0.00, 19.00),
(120, 1241, 8, 0.00, 149.00),
(121, 1243, 23, 0.00, 49.00),
(122, 1251, 9, 0.00, 393.00),
(123, 1253, 9, 349.00, 199.00),
(124, 1255, 10, 369.00, 319.00),
(125, 1259, 22, 157.00, 129.00),
(126, 1261, 32, 0.00, 79.00),
(127, 1261, 23, 229.00, 199.90),
(128, 1265, 32, 59.00, 52.90),
(129, 1265, 23, 0.00, 159.00),
(130, 1269, 20, 0.00, 129.90),
(131, 1271, 3, 0.00, 199.90),
(132, 1273, 33, 0.00, 124.00),
(133, 1273, 21, 0.00, 199.90),
(134, 1279, 39, 0.00, 21.90),
(135, 1281, 40, 0.00, 45.66),
(136, 1291, 41, 23.90, 18.90),
(137, 1295, 41, 9.90, 7.90),
(138, 1297, 42, 0.00, 19.00),
(139, 1299, 42, 26.00, 19.00),
(140, 1301, 42, 72.90, 59.90),
(141, 1303, 42, 0.00, 49.00),
(142, 1305, 42, 0.00, 69.00),
(143, 1307, 42, 0.00, 39.00),
(144, 1309, 42, 0.00, 64.90),
(145, 1311, 43, 0.00, 69.90),
(146, 1313, 44, 49.90, 39.90),
(147, 2067, 2, 0.00, 160.00),
(148, 2067, 36, 0.00, 280.00),
(149, 2070, 15, 0.00, 59.90),
(150, 1317, 45, 0.00, 19.90),
(151, 1319, 45, 29.90, 19.90),
(152, 1321, 46, 0.00, 19.90),
(153, 1329, 47, 0.00, 224.20),
(154, 1331, 48, 0.00, 49.90),
(155, 1335, 49, 69.90, 49.90),
(156, 1341, 50, 0.00, 19.00),
(157, 1343, 50, 29.90, 23.90),
(158, 1347, 51, 0.00, 29.90),
(159, 1347, 52, 49.90, 39.90),
(160, 1347, 53, 39.90, 29.90),
(161, 1347, 48, 0.00, 24.00),
(162, 1349, 46, 19.90, 14.90),
(163, 1357, 47, 0.00, 39.90),
(164, 1357, 54, 0.00, 49.90),
(165, 1355, 54, 86.90, 69.90),
(166, 1365, 55, 0.00, 65.90),
(167, 1377, 53, 0.00, 49.00),
(168, 1367, 45, 0.00, 39.90),
(169, 1369, 42, 0.00, 75.00),
(170, 1371, 42, 0.00, 75.00),
(171, 1375, 56, 0.00, 19.00),
(172, 1381, 39, 39.90, 29.90),
(173, 1381, 40, 0.00, 49.00),
(174, 1381, 57, 0.00, 69.90),
(175, 1381, 58, 0.00, 99.90),
(176, 1480, 50, 0.00, 149.00),
(177, 1484, 50, 0.00, 670.00),
(178, 1496, 50, 0.00, 744.00),
(179, 1487, 50, 0.00, 11.45),
(180, 1490, 50, 0.00, 2800.00),
(181, 1493, 50, 0.00, 2180.00),
(182, 1498, 50, 0.00, 320.00),
(183, 1501, 50, 0.00, 490.00),
(184, 1504, 50, 0.00, 187.00),
(185, 1508, 50, 0.00, 148.00),
(186, 1522, 12, 225.00, 179.90),
(187, 2082, 2, 0.00, 85.90),
(188, 2085, 14, 0.00, 31.90),
(189, 2085, 17, 0.00, 63.90),
(190, 2124, 26, 127.90, 99.90),
(191, 2141, 34, 73.90, 62.90),
(192, 2141, 4, 365.00, 299.90),
(193, 2143, 34, 121.00, 94.90),
(194, 2154, 2, 46.90, 35.90),
(195, 2154, 5, 224.00, 199.90),
(196, 2162, 34, 0.00, 69.00),
(197, 2156, 34, 0.00, 69.00),
(198, 2648, 17, 0.00, 29.90),
(199, 2648, 22, 0.00, 119.90),
(200, 2644, 17, 0.00, 29.90),
(201, 2644, 22, 0.00, 119.90),
(202, 2653, 2, 0.00, 42.90),
(203, 2653, 22, 0.00, 79.90),
(204, 2662, 17, 99.90, 69.90),
(205, 2665, 17, 99.90, 69.90),
(206, 2671, 17, 99.90, 69.90),
(207, 2681, 14, 39.90, 24.90),
(208, 2681, 17, 99.90, 69.90),
(209, 2678, 14, 39.90, 24.90),
(210, 2678, 17, 99.90, 69.90),
(211, 2780, 50, 0.00, 149.00),
(212, 2784, 50, 0.00, 189.00),
(214, 2900, 50, 0.00, 87.90),
(215, 2912, 50, 0.00, 49.90),
(216, 2919, 50, 0.00, 160.00),
(217, 2924, 50, 0.00, 204.90),
(218, 2984, 50, 0.00, 51.90),
(219, 3024, 2, 0.00, 160.00),
(220, 3427, 50, 0.00, 160.00),
(221, 3301, 12, 0.00, 475.90),
(222, 1207, 2, 0.00, 35.00),
(223, 1207, 9, 0.00, 339.00),
(224, 3474, 5, 0.00, 95.00),
(225, 3475, 5, 0.00, 69.00),
(226, 3475, 10, 0.00, 190.00),
(227, 3476, 5, 0.00, 59.00),
(228, 3477, 9, 0.00, 149.00),
(229, 3478, 5, 0.00, 149.00),
(230, 3478, 10, 0.00, 379.00),
(231, 3479, 12, 0.00, 149.00),
(232, 3480, 59, 0.00, 99.90),
(233, 2788, 18, 0.00, 189.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_romanian_ci NOT NULL,
  `quantity` int(3) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `selectedColorName` varchar(255) DEFAULT NULL,
  `selectedPrice` int(11) DEFAULT NULL,
  `selectedQnt` varchar(255) DEFAULT NULL,
  `selectedColor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `order_id`, `name`, `quantity`, `ProductID`, `selectedColorName`, `selectedPrice`, `selectedQnt`, `selectedColor`) VALUES
(90, '5ffae75cf370f0.77341084', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'Kedive Base Argento', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive base argento.jpg'),
(91, '5ffae80e137e29.49549170', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 26', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 26.jpg'),
(92, '5ffaf083524d35.73555131', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 27', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 27.jpg'),
(93, '5ffaf0e47861f5.71063424', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'PV 27', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive pv 27.jpg'),
(94, '5ffaf1e3abfd03.28230810', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'GV 27', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive gv 27.jpg'),
(95, '5ffb02106d85f8.51485853', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'GV 23', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive gv 23.jpg'),
(96, '5ffb027e88cc28.25208857', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'CV 06', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive cv 06.jpg'),
(97, '5ffb0337271bb1.20488549', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'CV 06', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive cv 06.jpg'),
(98, '5ffb03ac60c923.11435439', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'GV 23', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive gv 23.jpg'),
(99, '5ffb047a1bf731.22233886', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'CV 05', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive cv 05.jpg'),
(100, '5ffb0532bb1281.40303499', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'CV 01', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive cv 01.jpg'),
(101, '5ffb0532bb1281.40303499', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'GV 15', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive gv 15.jpg'),
(102, '5ffb06113915d6.16319050', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'PV 23', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive pv 23.jpg'),
(103, '5ffb0649de31d9.65156075', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'PV 18', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive pv 18.jpg'),
(104, '5ffb07472b44d3.22452140', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(105, '5ffb07fa15ffa2.15593002', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'PV 17', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive pv 17.jpg'),
(106, '5ffb0861921b67.05102573', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(107, '5ffb08e5042922.37946501', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(108, '5ffb094c03ebb6.60801156', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(109, '5ffb099e3a8003.62181838', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(110, '5ffc752b5aa976.17278072', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'SV 24', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive sv 24.jpg'),
(111, '5fff2d9f221135.21044913', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'Kedive Base Oro', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive base oro.jpg'),
(112, '5fff2f9c04a4c2.47304144', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, 'Kedive Base Oro', 180, '1 L', 'https://pro-staff.ro/upload/colors/kedive base oro.jpg'),
(113, '6001a34da8acf2.27683164', 'Vopsea decorativa cu efect de matase - Kedive - TIXE', 1, 3294, '', 160, '1 L', ''),
(114, '6001a49fa926e2.37666188', 'Vopsea decorativa cu efect de matase sau cu nisip – OYSTAR – TIXE', 1, 3024, '', 160, '1 L', ''),
(115, '6001e2660d51d2.94245346', 'Vopsea lavabila de exterior Elasto', 1, 1182, '', 169, '5 L', ''),
(116, '6003f207cba017.95463459', 'Vopsea decorativa cu efect de matase - TIXE - ORGANZA', 1, 3427, '', 160, '1 buc', ''),
(117, '6003f207cba017.95463459', 'Lac universal 2K SMALT-X', 2, 2780, '', 149, '1 buc', ''),
(118, '6003f272f0e605.56194946', 'Vopsea decorativa cu efect de matase - TIXE - ORGANZA', 1, 3427, '', 160, '1 buc', ''),
(119, '600850c0d0a9a3.82490458', 'Vopsea decorativa cu efect de matase - TIXE - ORGANZA', 1, 3427, '', 160, '1 buc', ''),
(120, '6008521647e1b7.34816117', 'Vopsea decorativa cu efect de matase - TIXE - ORGANZA', 1, 3427, '', 160, '1 buc', ''),
(121, '600bfde93f6507.83226992', 'Primer antirugina pe baza de apa - Tixe', 1, 2912, '', 50, '1 buc', ''),
(122, '6019275058e454.87314319', 'Resista Silosanica', 1, 1173, '', 310, '5 L', ''),
(123, '6019275058e454.87314319', 'GLACIAL - TIXE - Vopsea efect metale pretioase', 1, 2919, '', 160, '1 buc', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategories`
--

CREATE TABLE `product_subcategories` (
  `id` int(11) UNSIGNED NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `SubcategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_subcategories`
--

INSERT INTO `product_subcategories` (`id`, `ProductID`, `SubcategoryID`) VALUES
(1, 2984, 88),
(2, 2919, 88),
(3, 2780, 68),
(4, 2100, 88),
(5, 2085, 88),
(6, 2082, 88),
(7, 2070, 88),
(8, 2067, 88),
(9, 2030, 88),
(11, 1021, 38),
(12, 1023, 38),
(13, 1241, 133),
(14, 1243, 133),
(15, 1245, 133),
(16, 1251, 133),
(17, 1195, 133),
(18, 1197, 133),
(19, 1205, 133),
(20, 1207, 133),
(21, 1209, 133),
(22, 1213, 133),
(23, 1231, 133),
(24, 1233, 133),
(25, 1237, 133),
(26, 1239, 133),
(27, 1173, 128),
(28, 1189, 128),
(29, 1187, 128),
(30, 1185, 128),
(31, 1184, 128),
(32, 1143, 103),
(33, 1141, 103),
(34, 1139, 103),
(35, 1137, 103),
(36, 1130, 103),
(37, 1110, 103),
(38, 1145, 103),
(39, 1147, 103),
(40, 1118, 93),
(41, 1102, 77),
(42, 1126, 103),
(43, 1122, 103),
(44, 1120, 93),
(45, 1116, 93),
(46, 1108, 88),
(47, 1106, 88),
(48, 1019, 38),
(49, 3472, 148),
(50, 3472, 148),
(51, 3470, 147),
(52, 3470, 148),
(53, 3427, 88),
(54, 3427, 88),
(56, 3301, 88),
(57, 3301, 150),
(58, 3294, 88),
(59, 3294, 88),
(60, 3024, 88),
(61, 3024, 88),
(62, 2900, 64),
(63, 3133, 38),
(64, 2924, 68),
(65, 2912, 64),
(66, 2900, 64),
(67, 2824, 38),
(69, 2681, 68),
(70, 2678, 68),
(71, 2676, 68),
(72, 2674, 68),
(76, 2671, 68),
(77, 2665, 68),
(84, 2662, 68),
(85, 2648, 140),
(86, 2646, 140),
(87, 2644, 140),
(88, 2639, 140),
(89, 2325, 38),
(93, 1508, 147),
(94, 1493, 147),
(95, 1487, 147),
(1489, 1359, 148),
(1490, 1359, 147),
(1491, 1365, 148),
(1492, 1365, 148),
(1493, 1367, 148),
(1494, 1367, 148),
(1495, 1369, 148),
(1496, 1369, 148),
(1497, 1371, 148),
(1498, 1371, 148),
(1499, 1373, 148),
(1500, 1373, 147),
(1501, 1375, 148),
(1502, 1375, 148),
(1503, 1377, 148),
(1504, 1377, 148),
(1505, 1379, 148),
(1506, 1379, 147),
(1507, 1381, 148),
(1508, 1381, 148),
(1509, 1383, 148),
(1510, 1383, 147),
(1511, 1385, 148),
(1512, 1385, 147),
(1513, 1335, 148),
(1514, 1335, 148),
(1515, 1331, 148),
(1516, 1331, 148),
(1517, 1329, 148),
(1518, 1329, 148),
(1519, 1319, 148),
(1520, 1319, 148),
(1521, 1321, 148),
(1522, 1321, 148),
(1523, 1341, 148),
(1524, 1341, 148),
(1525, 1343, 148),
(1526, 1343, 148),
(1527, 1347, 148),
(1528, 1347, 148),
(1529, 1349, 148),
(1530, 1349, 148),
(1531, 1351, 148),
(1532, 1351, 147),
(1533, 1353, 148),
(1534, 1353, 147),
(1535, 1355, 148),
(1536, 1355, 148),
(1537, 1357, 148),
(1538, 1357, 148),
(1539, 1299, 148),
(1540, 1299, 148),
(1541, 1297, 148),
(1542, 1297, 148),
(1543, 1295, 148),
(1544, 1295, 148),
(1545, 1291, 148),
(1546, 1291, 148),
(1547, 1281, 148),
(1548, 1281, 148),
(1549, 1279, 148),
(1550, 1279, 148),
(1551, 1301, 148),
(1552, 1301, 148),
(1553, 1303, 148),
(1554, 1303, 148),
(1555, 1317, 148),
(1556, 1317, 148),
(1557, 1313, 148),
(1558, 1313, 148),
(1559, 1311, 148),
(1560, 1311, 148),
(1561, 1309, 148),
(1562, 1309, 148),
(1563, 1307, 148),
(1564, 1307, 148),
(1565, 1305, 148),
(1566, 1305, 148),
(1567, 1259, 140),
(1568, 1261, 140),
(1569, 1263, 140),
(1570, 1265, 140),
(1571, 1267, 140),
(1572, 1269, 145),
(1573, 1271, 145),
(1574, 1273, 145),
(1575, 1275, 145),
(1576, 1235, 133),
(1577, 1171, 120),
(1578, 1169, 120),
(1579, 1167, 120),
(1580, 1165, 120),
(1581, 1083, 125),
(1582, 1175, 125),
(1583, 1175, 125),
(1584, 1182, 128),
(1585, 1177, 125),
(1586, 1133, 103),
(1587, 1133, 103),
(1588, 1149, 113),
(1589, 1163, 113),
(1590, 1161, 113),
(1591, 1159, 113),
(1592, 1157, 113),
(1593, 1155, 113),
(1594, 1153, 113),
(1595, 1151, 113),
(1596, 1100, 128),
(1597, 1099, 128),
(1600, 1093, 81),
(1601, 1091, 81),
(1602, 1101, 128),
(1603, 1067, 68),
(1604, 1065, 68),
(1605, 1063, 68),
(1606, 1059, 64),
(1607, 1057, 64),
(1608, 1055, 64),
(1609, 1053, 64),
(1610, 1051, 51),
(1611, 1069, 68),
(1612, 1071, 68),
(1613, 1061, 64),
(1614, 1089, 81),
(1615, 1087, 77),
(1616, 1085, 77),
(1617, 1081, 73),
(1618, 1079, 73),
(1619, 1077, 73),
(1620, 1075, 73),
(1621, 1073, 73),
(1622, 1029, 51),
(1623, 1027, 51),
(1624, 1025, 51),
(1625, 1019, 38),
(1626, 1017, 38),
(1627, 1015, 38),
(1628, 1013, 149),
(1629, 1011, 38),
(1630, 1031, 51),
(1631, 1033, 51),
(1632, 1049, 51),
(1633, 1047, 51),
(1634, 1045, 51),
(1635, 1043, 51),
(1636, 1041, 51),
(1637, 1039, 51),
(1638, 1037, 51),
(1639, 1035, 51),
(1640, 3482, NULL),
(1641, 3482, NULL),
(1642, 3485, 120),
(1643, 3486, 120),
(1644, 3487, 120),
(1645, 3488, 120),
(1646, 3489, 120),
(1647, 3490, 77),
(1648, 3491, 77),
(1649, 3492, 120),
(1650, 3493, 77),
(1651, 3494, 77),
(1652, 3495, 120),
(1653, 3498, 77),
(1654, 3499, 77),
(1655, 3500, 140),
(1656, 3501, 133),
(1657, 3502, 103),
(1658, 3503, 120),
(1659, 3504, 120),
(1660, 3505, 120),
(1661, 3506, 103),
(1662, 3507, 133),
(1667, 6, 88),
(1668, 7, 128),
(1669, 3508, 93),
(1670, 3473, NULL),
(1671, 3301, 150),
(1672, 3474, 38),
(1673, 3475, 133),
(1674, 3476, 38),
(1675, 3477, 133),
(1676, 3478, 133),
(1677, 3479, 149),
(1678, 3480, 149);

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE `quantities` (
  `id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `um` varchar(255) NOT NULL DEFAULT 'L'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`id`, `quantity`, `um`) VALUES
(2, '1', 'L'),
(3, '4', 'L'),
(4, '5', 'Kg'),
(5, '5', 'L'),
(6, '6', 'L'),
(7, '8', 'kg'),
(8, '9', 'L'),
(9, '10', 'L'),
(10, '14', 'L'),
(11, '15', 'L'),
(12, '25', 'Kg'),
(13, '25', 'L'),
(14, '125', 'ml'),
(15, '250', 'ml'),
(16, '400', 'ml'),
(17, '500', 'ml'),
(18, '750', 'ml'),
(19, '900', 'ml'),
(20, '2.2', 'L'),
(21, '2.25', 'L'),
(22, '2.5', 'L'),
(23, '2.7', 'L'),
(24, '7.5', 'L'),
(25, '12', 'Kg'),
(26, '10', 'Kg'),
(27, '12', 'L'),
(35, '0.5', 'L'),
(29, '0.9', 'ml'),
(30, '120', 'mm'),
(31, '100', 'mm'),
(32, '0.9', 'L'),
(33, '0.75', 'L'),
(34, '1', 'Kg'),
(36, '2', 'L'),
(37, '0.4', 'L'),
(38, '27', 'Kg'),
(39, '3x7', 'cm'),
(40, '3x10', 'cm'),
(41, '23', 'cm'),
(42, '20', 'cm'),
(43, '20x20', 'cm'),
(44, '1.5', 'cm'),
(45, '13', 'cm'),
(46, '160x105', 'mm'),
(47, '20x8', 'cm'),
(48, '24x10', 'cm'),
(49, '25x15', 'cm'),
(50, '1', 'buc'),
(51, '24x08', 'cm'),
(52, '10x20', 'cm'),
(53, '15x15', 'cm'),
(54, '24x11', 'cm'),
(55, '16', 'cm'),
(56, '35', 'cm'),
(57, '4x14', 'cm'),
(58, '7x17', 'cm'),
(59, '20', 'Kg'),
(60, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_name`) VALUES
(5, 'Tikkurila'),
(3, 'Tixe'),
(6, 'Cp Italia');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `background` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `SliderID` int(11) NOT NULL,
  `h3` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `background`, `mobile`, `product`, `thumb`, `SliderID`, `h3`, `h1`, `link`) VALUES
(31, 'https://pro-staff.ro/upload/sliders/tixe-slider2.jpg', 'https://pro-staff.ro/upload/sliders/slider-tixe-mobile.jpg', 'https://pro-staff.ro/upload/sliders/vopsea-decorativa-cu-efect-special-tiberius.png', 'https://pro-staff.ro/upload/sliders/logo-tixe.png', 3, 'Vopsea decorativa', 'Dupa stilul si personalitatea ta', '/produse/vopsea-decorativa/brand/tixe'),
(32, 'https://pro-staff.ro/upload/sliders/SLIDER-CP-ITALIA-desktop.jpg', 'https://pro-staff.ro/upload/sliders/cp-italia-mobil-cu-produs.jpg\r\n', 'https://pro-staff.ro/upload/sliders/cp-italia-product.png', 'https://pro-staff.ro/upload/sliders/cp-italia-logo.jpg', 6, 'Vopsea speciala superlavabila', 'Antimucegai si Anticondens', '/produse/vopsea-lavabila'),
(33, 'https://pro-staff.ro/upload/sliders/tikurilla-slider-desktop2.jpg', 'https://pro-staff.ro/upload/sliders/tikurilla-slider-mobil-cu-produs.jpg', 'https://pro-staff.ro/upload/sliders/tikurilla-produs-slider3.png', 'https://pro-staff.ro/upload/sliders/tikurilla-logo.jpg', 5, 'Vopsea lavabila', 'Calitate de la interior la exterior', '/produse/vopsea-lavabila/brand/tikurilla');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `color`, `date`) VALUES
(1, 'status de test', 'green-700', '2020-09-11 15:53:01'),
(2, 'Awaiting payment', 'blue-500', '2020-09-11 17:02:22'),
(3, 'Payment error', 'red-900', '2020-09-12 10:17:54'),
(4, 'Payment accepted', 'green-500', '2020-09-12 10:20:06'),
(5, 'Preparing the order', 'orange-500', '2020-09-12 19:56:53'),
(6, 'Awaiting check payment', 'blue-500', '2020-09-21 12:16:43'),
(7, 'Order placed', 'blue-500', '2020-10-29 21:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(5) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `category_id` int(5) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `category_id`, `slug`) VALUES
(148, 'Accesorii profesionale', 160, 'accesorii-profesionale'),
(147, 'Scule profesionale', 160, 'scule-profesionale'),
(145, 'Vopsea poliuretanica', 63, 'vopsea-poliuretanica'),
(140, 'Vopsea lemn', 50, 'vopsea-lemn'),
(133, 'Vopsea lavabila de interior', 37, 'vopsea-lavabila-de-interior'),
(128, 'Vopsea lavabila de exterior', 37, 'vopsea-lavabila-de-exterior'),
(125, 'Vopsea lavabila antimucegai', 37, 'vopsea-lavabila-antimucegai'),
(120, 'Vopsea epoxidica pentru pardoseli', 83, 'vopsea-epoxidica-pentru-pardoseli'),
(113, 'Vopsea email', 63, 'vopsea-email'),
(103, 'Vopsea decorativa de interior', 87, 'vopsea-decorativa-de-interior'),
(93, 'Vopsea decorativa de exterior', 87, 'vopsea-decorativa-de-exterior'),
(88, 'Vopsea decorativa cu efect special', 87, 'vopsea-decorativa-cu-efect-special'),
(84, 'Vopsea beton', 83, 'vopsea-beton'),
(81, 'Ulei pentru lemn', 50, 'ulei-pentru-lemn'),
(77, 'Spray vopsea', 63, 'spray-vopsea'),
(73, 'Solutie antimucegai', 37, 'solutie-antimucegai'),
(68, 'Lac pentru lemn', 50, 'lac-pentru-lemn'),
(64, 'Grund metal', 63, 'grund-metal'),
(51, 'Bait lemn', 50, 'bait-lemn'),
(38, 'Amorse de interior si exterior', 205, 'amorse-de-interior-si-exterior'),
(149, 'Glet finisare', 206, 'glet-finisare'),
(150, 'Glet decorativ', 206, 'glet-decorativ'),
(152, 'Vopsea pentru gresie', 83, 'vopsea-pentru-gresie'),
(153, 'Hidroizolatie', 83, 'hidroizolatie'),
(154, 'Microciment', 83, 'microciment');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_last_visit` datetime NOT NULL DEFAULT current_timestamp(),
  `access` tinyint(4) NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `date_created`, `date_last_visit`, `access`, `token`) VALUES
(29, 'Alex', 'mantaa', 'alexandru.manta@hotmail.com', '$2y$10$/vl3edFZXVTxLCPURQ9Qtu56FsQbfyzbxEGy2G7EEtkOjVHQmsMQO', '2019-11-11 18:37:18', '2021-02-01 16:52:20', 0, '3704b88472d90a59c62aa6a237f1c112'),
(115, 'Daniel', 'Tuna', 'danieltuna97@gmail.com', '$2y$10$hbZkMabU3ftezejTY7mwHeMvgi2nRp1V0SX0hChEl1pjyV81zb9kq', '2020-04-24 16:15:56', '2020-06-03 12:00:29', 99, NULL),
(116, 'Daniel2', 'Tuna2', 'danieltuna971@gmail.com', '$2y$10$bCGLGsJgDCGVX5F6AfVfI.nB.hsZnYEbZpnw2/p0ug3m4dDIk3Jzm', '2020-09-11 07:43:53', '2020-09-11 07:43:53', 0, NULL),
(117, 'Daniel2', 'Tuna2', 'test@gmail.com', '$2y$10$Z58zXNLJhi.6C8Gfbo87MeEL9NZQAuR2mIALV2FQxpS3tzVxyGh7i', '2020-09-11 07:48:22', '2020-09-11 07:48:22', 0, NULL),
(118, 'Daniel3', 'Tuna3', 'test3@gmail.com', '$2y$10$ECql5Qe/zofNfu1krmQS0.yrfXNeaZxPMuDtvKiedgjlP5pT93ZUi', '2020-09-11 08:13:29', '2020-09-11 08:13:29', 0, 'e79f066f26d0618c9358fdfeb0142d87'),
(119, 'Alex manta', 'asdasd', 'test@test.ro', '$2y$10$s4A75K41AMtncHudiHy3ZujhZltMpBgulluHMJiBUnu5uzhZz.oO6', '2021-01-21 11:43:49', '2021-01-21 11:43:49', 0, '0f6f18334a1ef2c816524f7b1ee02573'),
(120, 'asdad', 'asdada', 'test1@test.ro', '$2y$10$QJ1pChtNQgdgezafX7A47uBT4eff1Dzg0/A4oZiDTMJ8SZsitwX7G', '2021-01-21 11:47:29', '2021-01-21 11:47:29', 0, 'db6fcf6545f1769402e2d3527f573c38'),
(122, 'Alex manta', 'asd', 'alexandru.manta1@hotmail.com', '$2y$10$8YIsiY06.2lWvBApmqyb2.g.j.N2jexAht14kRbXetArhHlimTXP6', '2021-01-21 11:55:42', '2021-01-21 11:55:42', 0, '57d898b7c5bb5077066b2c83f786b61f');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT current_timestamp(),
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@prostaff', '$P$B3VXF3d29iO94PnRkLvNwlbN6hLDf9/', 'adminprostaff', 'financiar@terra-agency.ro', '', '2018-01-03 11:48:29', '', 0, 'admin@prostaff'),
(4, 'Vlad', '$P$B4Sz1mjj7ih/DpYJ2DJI5JA/v3Pliq.', 'vlad', 'office@prostaff.ro', '', '2018-04-03 07:08:10', '', 0, 'Vlad'),
(312, 'mihaiovidiu', '$P$B3D9MVT6V4Zlz1m44Zw6B265yOuC7c0', 'mihaiovidiu', 'n@gmail.com', '', '2020-05-10 18:20:42', '', 0, 'Ovidiu Mihai'),
(29, 'wil.doker', '$P$BJPFsfy5IbRCt50UUJEckeq5tfzeFm.', 'wil-doker', 'wil.doker@yandex.com', '', '2019-01-07 19:18:50', '', 0, 'wil.doker'),
(30, 'kimdoker', '$P$BDpz57Rm4YYNFZng0XKCwXgtKw.Ul0/', 'kimdoker', 'kimdoker@yandex.com', '', '2019-01-09 04:29:48', '', 0, 'kimdoker'),
(31, 'wilrimov', '$P$BBMbYfKGoJhbIKiu3Is3rv.km.O9E0.', 'wilrimov', 'wilrimov@yandex.com', '', '2019-01-09 18:45:46', '', 0, 'wilrimov'),
(32, 'sid.golers', '$P$BpppyrGT8JB/KTToCSumQlsFamegd..', 'sid-golers', 'sid.golers@yandex.com', '', '2019-01-10 14:47:11', '', 0, 'sid.golers'),
(33, 'venvaler', '$P$BPtfx.9IFw7FLznrWOMbzD30zo6Aqf/', 'venvaler', 'venvaler@yandex.com', '', '2019-01-11 13:44:47', '', 0, 'venvaler'),
(34, 'bil.gersen', '$P$Bg6h/drK9BKhqfVs84z3RY5Akh5F7p1', 'bil-gersen', 'bil.gersen@yandex.com', '', '2019-01-18 22:19:55', '', 0, 'bil.gersen'),
(35, 'jakhensel', '$P$B7ad0KQpmgVqb6qzrv57WR.xX28aNa.', 'jakhensel', 'jakhensel@yandex.com', '', '2019-01-23 04:12:59', '', 0, 'jakhensel'),
(36, 'whitersvic', '$P$BQDyq7LvUhQf4dEDuEDVV80ApZvTZ4/', 'whitersvic', 'whitersvic@yandex.com', '', '2019-01-25 01:12:00', '', 0, 'whitersvic'),
(37, 'adriandima', '$P$BC9pp46Vnw..BilptW2Nge.v/vjSX3.', 'adriandima', 'adriandima@live.com', '', '2019-01-30 08:02:17', '', 0, 'adriandima'),
(38, 'filippberk', '$P$BLpB1brcPByawpPerzdKWZh2SIqc031', 'filippberk', 'filippberk@yandex.com', '', '2019-02-08 03:10:39', '', 0, 'filippberk'),
(39, 'timwilems', '$P$BLSGD2ODjqcKn/qIGVcuiDCmlSQzCC/', 'timwilems', 'timwilems@yandex.com', '', '2019-02-11 15:47:54', '', 0, 'timwilems'),
(40, 'whitersj', '$P$BBtWNzGJMsN.DN3kOOdkgsq/0iHEsC0', 'whitersj', 'whitersj@yandex.com', '', '2019-02-12 13:24:15', '', 0, 'whitersj'),
(41, 'Olah Karoly', '$P$BH9VzUEdlcxOT9TUIaHv339peQKZ1J0', 'olah-karoly', 'okkocsy@yahoo.com', '', '2019-03-06 15:59:55', '', 0, 'Olah Karoly'),
(42, 'visaicodrut', '$P$BT91P7YLRHKFTyaw.nu/bJh6xe78ut/', 'visaicodrut', 'visaicodrut@gmail.com', '', '2019-03-09 00:05:04', '', 0, 'visaicodrut'),
(43, 'ApnrLnbt5', '$P$BSWw34iL0uGf4DhixsNXpFksmbJURN.', 'apnrlnbt5', 'ApnrLnbt5@gmail.com', '', '2019-03-16 00:33:06', '', 0, 'ApnrLnbt5'),
(44, 'kellytam7778', '$P$BymfD2ja3CuL2II0D22avpKSJSemBS1', 'kellytam7778', 'dimail@lmail.website', '', '2019-03-21 22:53:50', '1553208830:$P$BAGRnNG2GUQq6eRX3ImS9z3m0rJWX0.', 0, 'kellytam7778'),
(45, 'vera_zz', '$P$B7yOR4OShW9e1/oVyDA8jNaCmhzbba.', 'vera_zz', 'vera_zz@yahoo.com', '', '2019-03-31 16:07:15', '', 0, 'vera_zz'),
(46, 'trio_profesional', '$P$Bz91Q3zoDu/Mvir.YmELrqY0ftIeMF/', 'trio_profesional', 'trio_profesional@yahoo.com', '', '2019-04-07 15:58:52', '', 0, 'trio_profesional'),
(47, 'darbyreimann', '$P$BzdcrOwYsNUmiPU7C5XtOWI.MQ2X6E1', 'darbyreimann', 'DarbyReimann@net.actices.com', '', '2019-04-08 00:07:52', '1554682073:$P$B0hupBwJyl/Y.L48vpv2/g0/HPYnsS.', 0, 'darbyreimann'),
(48, 'Luca Andrei', '$P$BUfD3zgBN22NozEBZpaWFY.1C6OcyL1', 'luca-andrei', 'vladutluca0@gmail.com', '', '2019-04-10 23:12:13', '', 0, 'Luca Andrei'),
(49, 'valerleohnard', '$P$B9KcPw.4LoRmAHeW3h3QZtEoGqdLJt/', 'valerleohnard', 'valerleohnard@yandex.com', '', '2019-04-14 04:39:50', '', 0, 'valerleohnard'),
(50, 'ciprianscutareanu', '$P$BK1N4sFJfHatDRzMekARo3sXh3BymJ0', 'ciprianscutareanu', 'ciprianscutareanu@gmail.com', '', '2019-04-15 11:32:06', '', 0, 'ciprianscutareanu'),
(51, 'alexandracofaru', '$P$BzKXE5pwcVyKcNUlp/Vyigh/358ALV1', 'alexandracofaru', 'alexandracofaru@yahoo.com', '', '2019-04-16 18:46:49', '', 0, 'alexandracofaru'),
(52, 'mikayla0395', '$P$BoGLJtyQBL0dIUH/OkQXWu50e51a0C1', 'mikayla0395', 'cimail@lmail.website', '', '2019-04-21 05:53:40', '1555826020:$P$BxQNYhUEWO48EsI98CoFpcDvkJY1/80', 0, 'mikayla0395'),
(53, 'Michael Gonzalez', '$P$B/Lk9M97gRum/Iry6OXHnPp10W9ypV0', 'michael-gonzalez', 'hcfmrhcaou_1556848395@tfbnw.net', '', '2019-05-06 01:59:32', '', 0, 'Michael Gonzalez'),
(54, 'Pak Maon', '$P$BvwNMgS2rIXJdow.Abdw3ON9Rxliyg.', 'pak-maon', 'fjfnbarega_1543819430@tfbnw.net', '', '2019-05-06 02:02:21', '', 0, 'Pak Maon'),
(115, 'corinavirlanuta', '$P$BskCh.sQDbRJOO4avxglhvoScZG2Es/', 'corinavirlanuta', 'corina.virlanuta@gmail.com', '', '2020-04-08 15:27:53', '', 0, 'Virlanuta Corina'),
(56, 'Ioana Irimescu', '$P$BBg0d.5kjM4dLtv.JTJXCmhhbxpLpe1', 'ioana-irimescu', 'irimescu.ioana22@gmail.com', '', '2019-05-14 21:57:55', '', 0, 'Ioana Irimescu'),
(57, 'geamanuemanuel5', '$P$BmehjdqJEffm1AY.sxIonEdao02Zgf0', 'geamanuemanuel5', 'geamanuemanuel5@yahoo.com', '', '2019-05-15 08:38:15', '', 0, 'geamanuemanuel5'),
(58, 'silviu doroftei', '$P$BEFdUMhfUpwfSMkrGi3iPjALGKkg171', 'silviu-doroftei', 'silviu.doroftei@gmail.com', '', '2019-05-20 18:06:18', '', 0, 'silviu doroftei'),
(59, 'dallascribb1502', '$P$BECBGM/gkT/Qi9vYDkcbKjur4veacU.', 'dallascribb1502', 'DallasCribb@third.eshreky.com', '', '2019-06-29 14:34:16', '1561818856:$P$BhYYSxnN9044vizcx1kZxEyx8QKf9/1', 0, 'dallascribb1502'),
(60, 'danielonofrei', '$P$BjHbLp0kvVOehU2dHiOb11702EF.HO.', 'danielonofrei', 'danielonofrei73@yahoo.com', '', '2019-07-13 20:37:50', '', 0, 'Onofrei Daniel'),
(61, 'm0hpphywvgs', '$P$Bhkp4SXirqUVafjLqMr19sPkEl8J/L.', 'm0hpphywvgs', 'm0hpphywvgs@yandex.com', '', '2019-07-22 07:30:54', '', 0, 'm0hpphywvgs'),
(62, 'munteanuflorin_2005', '$P$BmWnHrOHP50iIay/91G2gc3u5a2LPA/', 'munteanuflorin_2005', 'munteanuflorin_2005@yahoo.com', '', '2019-07-24 19:07:22', '', 0, 'munteanuflorin_2005'),
(63, 'Sendsdesr', '$P$BTk/SWG9/0nFGLf5Pjt6Iwk7AqZzpg1', 'sendsdesr', 'l8ghenry@gmx.com', '', '2019-07-24 21:15:07', '', 0, 'Sendsdesr'),
(64, 'danamartimo', '$P$BHaCjBEuNTHrHoo3P3AgyTuG6AQ0ne/', 'danamartimo', 'danamartimo@yahoo.com', '', '2019-07-29 17:21:05', '', 0, 'danamartimo'),
(65, 'tyqisa_1', '$P$B6BTnZ4FzGHTOXAkr5wZTLVOCblNsL1', 'tyqisa_1', 'tyqisa_1@mail.ru', '', '2019-08-19 16:46:12', '', 0, 'tyqisa_1'),
(66, 'Simy Lory', '$P$BgzzSsQjF8.WPciqdDax1z9fAnquDp.', 'simy-lory', 'simonyk_brunetzica@yahoo.com', '', '2019-08-21 11:48:27', '', 0, 'Simy Lory'),
(67, 'postmasterryyy', '$P$BMLrk1FEbYzOzLvj9isRJqN9JAZVRb.', 'postmasterryyy', 'postmaster@mail.dotomorrowthins.icu', '', '2019-08-29 12:40:08', '1567312336:$P$B3tvNyambYVe.7mYhz2iQMdfn0fsj5/', 0, 'postmasterryyy'),
(68, 'Yoon Yura', '$P$B3lCkAlg/aLhy.X6rv3b2tlJ49YVTl1', 'yoon-yura', 'geogatedproject220@gmail.com', '', '2019-09-02 03:39:46', '', 0, 'Yoon Yura'),
(69, 'MeHigh', '$P$BbBtQP7AS3sV0D259AOtEVWbRqYpcj0', 'mehigh', 'spritedouapunctep@gmail.com', '', '2019-09-08 22:45:31', '', 0, 'MeHigh'),
(70, 'omcialusttravath', '$P$BgllqBqKGQNyVJ/W.iSVKNnszcE5Ae.', 'omcialusttravath', 'omcialusttravath@niesleevlers.info', '', '2019-10-13 22:58:48', '1571007528:$P$BA0P.7EpmQTesBK7/FQG3rsOfAdxlx1', 0, 'omcialusttravath'),
(71, 'esplemremubip', '$P$Bwj8clrGc4eYOml7ET1BdnXV.QhCqx.', 'esplemremubip', 'esplemremubip@niesleevlers.info', '', '2019-10-15 00:25:28', '1571099128:$P$BREaAZ5Z2ZO/rDrGaI.X1Q3zzkN.NF0', 0, 'esplemremubip'),
(72, 'famethdownrearo', '$P$BsHFt.5oCKKuIaI7TFBS0T.hXgZEMu.', 'famethdownrearo', 'famethdownrearo@niesleevlers.info', '', '2019-10-18 05:51:33', '', 0, 'famethdownrearo'),
(73, 'florincherciu', '$P$BTptNNIGBlgQ.Km1guICOxH5cg4MpB.', 'florincherciu', 'frcherciu@gmail.com', '', '2019-10-25 21:47:26', '', 0, 'Cherciu Florin'),
(74, 'florinciocan', '$P$BUJa6MiZmOSaIzdCu8ATPlSAgg2frm.', 'florinciocan', 'fciocan468@gmail.com', '', '2019-11-11 16:17:18', '', 0, 'Ciocan Florin'),
(75, 'fomincev59', '$P$BEy78sXIxdiGw6mvpL96sEKKaEnsV6/', 'fomincev59', 'Fomincev59@thefmail.com', '', '2019-11-17 07:29:10', '', 0, 'fomincev59'),
(76, 'ovdej52', '$P$Ba83WIWTi5lUek.VX.OU2x1Ux8yzL71', 'ovdej52', 'Ovdej52@thefmail.com', '', '2019-11-19 23:44:51', '', 0, 'ovdej52'),
(77, 'klemin65', '$P$Bft.ZXAT8ZVGY5VrV5kD.C8k0hn9gC1', 'klemin65', 'Klemin65@thefmail.com', '', '2019-11-21 13:25:05', '', 0, 'klemin65'),
(78, 'stankov73', '$P$BmFkOFibEfGtgOP5MRAj0VJVR4.wJp.', 'stankov73', 'Stankov73@thefmail.com', '', '2019-11-22 23:32:05', '', 0, 'stankov73'),
(79, 'javolov89', '$P$BKrNeiAYpkK7aBq2jn81R6eKPGCCYz0', 'javolov89', 'Javolov89@thefmail.com', '', '2019-11-24 08:14:49', '', 0, 'javolov89'),
(80, 'bo.ri.s.197.7.gor.b.uno.v', '$P$BrOwshrsJhCE33fhYOTQbwSDIfozgm1', 'bo-ri-s-197-7-gor-b-uno-v', 'bo.ri.s.197.7.gor.b.uno.v@gmail.com', '', '2019-11-27 20:00:17', '', 0, 'bo.ri.s.197.7.gor.b.uno.v'),
(81, 'g.o.r.s.e.c.1.9.80.r.userv', '$P$BQGeN8jlrB74MdNAgivyEAKqO8WoP21', 'g-o-r-s-e-c-1-9-80-r-userv', 'g.o.r.s.e.c.1.9.80.r.userv@gmail.com', '', '2019-12-07 05:31:51', '', 0, 'g.o.r.s.e.c.1.9.80.r.userv'),
(82, 'litovko86', '$P$Bol319u6VTxNIsDifzwAzSI4i.MlLh0', 'litovko86', 'Litovko86@thefmail.com', '', '2019-12-19 16:58:56', '', 0, 'litovko86'),
(83, 'pl.e.n.kis.fil.m.by', '$P$BkQD2UDkA5ru1mg6/RZQDNUmWAWTyB0', 'pl-e-n-kis-fil-m-by', 'pl.e.n.kis.fil.m.by@gmail.com', '', '2019-12-20 10:27:37', '', 0, 'pl.e.n.kis.fil.m.by'),
(84, 'pr.imeg.ra.nit201.9', '$P$B6w7/knQb1rSHUkQO9txfbMh5c9jcn.', 'pr-imeg-ra-nit201-9', 'pr.imeg.ra.nit201.9@gmail.com', '', '2019-12-25 09:05:55', '', 0, 'pr.imeg.ra.nit201.9'),
(85, 'laurentiuiosif', '$P$BVH8xkclx99r8uZIwbaAWxe2EuJjAV0', 'laurentiuiosif', 'sc.viccom@gmail.com', '', '2020-01-08 07:17:12', '', 0, 'Iosif Laurentiu'),
(86, 'Romeo Prian', '$P$BsZtz1siWjDZVH7wlTHoPixS7DxqcX.', 'romeo-prian', 'romitza24@live.com', '', '2020-01-26 14:38:03', '', 0, 'Romeo Prian'),
(87, 'simplesmuser', '$P$BWONweggidS/a2LrKMnJyWiq4E6hDP/', 'simplesmuser', 'smail@destinyfernandi.com', '', '2020-02-03 22:45:51', '1580769951:$P$B5vHOfuMkXaY8nA8K44M.2dj8kt050/', 0, 'simplesmuser'),
(88, 'Kostas Antetokounmpo', '$P$BqiHmxVrc831IUNe3S/vaycCvHzSer/', 'kostas-antetokounmpo', 'geogatedproject215@gmail.com', '', '2020-02-25 00:49:22', '', 0, 'Kostas Antetokounmpo'),
(89, 'Princess Tinkerbelle', '$P$BPU8nk0li.x3Lwd5EdlRL9fhOGfdgi0', 'princess-tinkerbelle', 'geogatedproject300@gmail.com', '', '2020-02-25 01:14:41', '', 0, 'Princess Tinkerbelle'),
(90, 'ivanov28', '$P$Bi4geGKaOeHypP6uDM5AhMGIaGevSW1', 'ivanov28', 'ivanov28@thefmail.com', '', '2020-02-29 07:48:26', '', 0, 'ivanov28'),
(91, 'benonesimiciuc', '$P$BWtJZZI1UiGUP8ol3CsYYiJx43qYhj0', 'benonesimiciuc', 'benonesimiciuc@yahoo.com', '', '2020-03-10 15:14:59', '', 0, 'Simiciuc Benone'),
(92, 'telenchenko696', '$P$BGObIGj2KsqT5D4.IEXEf3WvyP9eb80', 'telenchenko696', 'Telenchenko696@thefmail.com', '', '2020-03-16 08:04:41', '', 0, 'telenchenko696'),
(93, 'bogdanmocanu', '$P$BpOPYfqDEt3sqzc876buJQ9GaI5CcY0', 'bogdanmocanu', 'bogdan@drmocanu.ro', '', '2020-03-28 15:45:52', '', 0, 'MOCANU Bogdan'),
(94, 'sergiusmadici', '$P$BMEjQd5EbLFxKQPi2BLz00tXJ1MFnG/', 'sergiusmadici', 'office.ambientroof@gmail.com', '', '2020-03-30 17:35:04', '', 0, 'Smadici Sergiu'),
(95, 'lencautanion', '$P$Bk8cC2wiCm/Q67CL6lX/okViL6C9pO0', 'lencautanion', 'vanolinc@gmail.com', '', '2020-03-30 20:42:17', '', 0, 'Ion Lencautan'),
(96, 'ioan cristiandanciu', '$P$BiDncAN6wQJrNM2oj0IIr9ntb1PL.U.', 'ioan-cristiandanciu', 'cristimi30@yahoo.com', '', '2020-04-02 07:37:27', '', 0, 'Danciu Ioan Cristian'),
(97, 'itomiuc', '$P$BkoJVOUtVE5oEQwU4HhCSgCeqx5Dsr/', 'itomiuc', 'itomiuc@yahoo.com', '', '2020-04-04 18:48:51', '', 0, 'itomiuc'),
(171, 'cip_iuga', '$P$BMzLgCh.6lO/EP7JEV6Wq7ELvt/b3w.', 'cip_iuga', 'cip_iuga@yahoo.com', '', '2020-04-10 18:38:59', '', 0, 'cip_iuga'),
(172, 'constantinschiteanu', '$P$BubnAhVNz5sfRaamnEKAbX0zt94xBQ/', 'constantinschiteanu', 'schiteanuc@yahoo.com', '', '2020-04-11 09:00:20', '', 0, 'Schiteanu Constantin'),
(173, 'beastrenj', '$P$BYqOb7UrJVf6m1e5XJYuf6idVJsGzc.', 'beastrenj', 'host@bestworldreceiverbe.xyz', '', '2020-04-11 19:24:48', '1586633090:$P$BuT3VAmHEPh.67gnm2OhZibDgoAK7s.', 0, 'beastrenj'),
(174, 'worpdressdebugss', '$P$BqlZMRYxHQDiS7ERaW7iOj12ybdVJs.', 'worpdressdebugss', 'postmaster@mail1.resolutiondestin.com', '', '2020-04-12 15:23:57', '1586705037:$P$BvgYJkhVOOPDZzWU5CI.nJFFsZKfu10', 0, 'worpdressdebugss'),
(175, 'sorin.nicolescu', '$P$BA0OTI3ByqMhFQk0/Up9geize6xwjr/', 'sorin-nicolescu', 'sorin.nicolescu@gmail.com', '', '2020-04-14 10:30:29', '', 0, 'sorin.nicolescu'),
(271, 'adrianvoicu', '$P$BWl4kpEyfxltLUmMnpkHXnb83LxmiO0', 'adrianvoicu', 'voicuadriann@yahoo.com', '', '2020-05-04 08:47:20', '', 0, 'Voicu Adrian'),
(272, 'Ana Maria', '$P$BKnL/B4sQgV4OVFiVmUHF9LFbLy1F9/', 'ana-maria', 'anapasat17@yahoo.ro', '', '2020-05-05 17:34:59', '', 0, 'Ana Maria'),
(273, 'mihai.hincovici', '$P$ByK4FoiUmhM2XwDD7cSxUfPdOK8Cob0', 'mihai-hincovici', 'mihai.hincovici@gmail.com', '', '2020-05-05 17:58:37', '', 0, 'mihai.hincovici'),
(278, 'dragosstroe', '$P$ButyY3QwxyJyQ/5nk9FjxGIZ/1lP3k0', 'dragosstroe', 'stroe1dragos@gmail.com', '', '2020-05-07 09:44:18', '', 0, 'Stroe Dragos'),
(298, 'Laurentiu Bogdan Radu', '$P$BESM2Qctnhllh0WEGvXO5N/ih9O6480', 'laurentiu-bogdan-radu', 'goldserv_laur@yahoo.com', '', '2020-05-08 08:48:16', '', 0, 'Laurentiu Bogdan Radu'),
(369, 'claimtrainnn', '$P$BgrZW/0klWbQm1cDrwHebOINUZuNRz/', 'claimtrainnn', 'claim@trainmysoldierg.best', '', '2020-06-03 09:58:41', '1591336649:$P$BcqSX/gP8mTUQnaIWhuHE3j3.yUsmd.', 0, 'claimtrainnn'),
(370, 'c.adrian.liviu', '$P$BglLnQyZy5RpHS5mBat7T4C02ToAhd.', 'c-adrian-liviu', 'c.adrian.liviu@gmail.com', '', '2020-06-08 05:47:21', '', 0, 'c.adrian.liviu'),
(373, 'costintocai', '$P$BKiDUSFiB9h5MZvtVbBix78OrhHIzo0', 'costintocai', 'costint20@yahoo.com', '', '2020-06-21 06:48:33', '', 0, 'Tocai costin'),
(379, 'amiebach48', '$P$BMZdh7Zf7RismFbQFLGDeu8mPqUZPu1', 'amiebach48', 'noeliadominik@enelopes.com', '', '2020-07-04 01:33:24', '', 0, 'amiebach48'),
(380, 'deltonsun', '$P$BYKqXov/n6bFgUHA0Hadj5wY7jOCo7/', 'deltonsun', 'postmaster@deliveryforfun.com', '', '2020-07-05 19:03:23', '', 0, 'deltonsun'),
(381, 'mmarya158', '$P$BlNolSU6lklF/cwOriGJ6xLKOQAlJR1', 'mmarya158', 'mmarya158@yahoo.com', '', '2020-07-06 12:34:19', '', 0, 'mmarya158'),
(382, 'kiera19137310571', '$P$BiT6wOPKfuIz7HKWg7mMOyCxcTr0LA0', 'kiera19137310571', 'hetty@handwashgel.online', '', '2020-07-13 13:10:09', '', 0, 'kiera19137310571'),
(383, 'facebookcom', '$P$BYhfttE942cL01f2PQpOpeZdrj1a9G/', 'facebookcom', 'Bronson5378@aembz.us', '', '2020-08-03 09:52:55', '1596448375:$P$B17ebMPpcl4e0FZZ1sEqh4gPZMZCjE/', 0, 'facebookcom'),
(384, 'jeremyutz851', '$P$BmT8gNeweb1O0H0jWz65z6o6LRQaYY/', 'jeremyutz851', 'madeline@zawrotnyinternet.pl', '', '2020-08-03 11:25:20', '', 0, 'jeremyutz851'),
(400, 'garunxivi', '$P$BQK3vMAiKa84glfFD/uU2XgijRJqp5/', 'garunxivi', 'garunxivi@sakhpubo.ru', '', '2020-08-06 20:42:52', '', 0, 'garunxivi'),
(414, 'oliva03055549', '$P$BMzNf/YFdSssTbUMpXLCjAXhLyXSrb/', 'oliva03055549', 'jetta@weihnachtswunsche.eu', '', '2020-08-09 05:33:35', '', 0, 'oliva03055549'),
(418, 'freyapassmore', '$P$BzBeY.KnTgbw7lhgGLSdwfXe0zcyvc/', 'freyapassmore', 'freyapassmore61@them.meupd.com', '', '2020-08-15 01:13:33', '1597454013:$P$B/WgkEnrc2WUkF70sVL0dlr.nvsb9W1', 0, 'freyapassmore'),
(419, 'adrianstnc', '$P$BR.sBv8QEHYPLI5bqJKSstDRu5.BPX.', 'adrianstnc', 'adrianstnc@gmail.com', '', '2020-08-15 09:39:00', '', 0, 'adrianstnc'),
(420, 'shasta68z2506033', '$P$BRNRz.ajFaqDznaSY1bpT./xhLYGff/', 'shasta68z2506033', 'jamaalfranklin@mcdrives.com', '', '2020-08-16 15:38:16', '', 0, 'shasta68z2506033'),
(475, 'caitlynnutt969', '$P$BNmlsdU330Kp4w.pb6r.yhDfZQ5.uJ/', 'caitlynnutt969', 'daleaugust@evezee.com', '', '2020-08-21 04:41:29', '', 0, 'caitlynnutt969'),
(476, 'junglara33', '$P$BCfIgVivt.5Rul24H9GiUCLuYbjAdW/', 'junglara33', 'daletyree@evezee.com', '', '2020-08-23 18:38:08', '', 0, 'junglara33'),
(477, 'thaddeus1435', '$P$BK8UZDOaxx7L4WwZf628Z3Rf1sPNoK0', 'thaddeus1435', 'leonidamurray@enelopes.com', '', '2020-08-24 03:18:37', '1598239117:$P$Bf.OAVHJQZq.mNLcb2qY3IoI3HykuC.', 0, 'thaddeus1435'),
(478, 'rhysstead700692', '$P$BJ22Pm6Umh7fO/SFK3qPKFsC19dE440', 'rhysstead700692', 'mel@odzywkidorzes.eu', '', '2020-08-24 13:44:25', '', 0, 'rhysstead700692'),
(479, 'launagavin602', '$P$BMP7Lq40Fy0uw5.igWvO8VYkYF/2Eu.', 'launagavin602', 'launagavin52@leave.jusuk.com', '', '2020-08-24 15:17:37', '1598282257:$P$B3sPQIVQEfQ2zPn3ysTWqOcowhtEAa/', 0, 'launagavin602'),
(510, 'aurelioruhl8118', '$P$B8VvNgG8OpNp/l3oGqOy6pgDZEjVC/0', 'aurelioruhl8118', 'twilaquentin@photoaim.com', '', '2020-08-26 07:23:38', '', 0, 'aurelioruhl8118');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_base`
--
ALTER TABLE `color_base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_palettes`
--
ALTER TABLE `color_palettes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_invoice_address`
--
ALTER TABLE `orders_invoice_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_shipping_address`
--
ALTER TABLE `orders_shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_shipping_details`
--
ALTER TABLE `orders_shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palette_colors`
--
ALTER TABLE `palette_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_`
--
ALTER TABLE `products_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_complementary`
--
ALTER TABLE `products_complementary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info_`
--
ALTER TABLE `product_info_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantities`
--
ALTER TABLE `quantities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `categories_blogs`
--
ALTER TABLE `categories_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `color_base`
--
ALTER TABLE `color_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `color_palettes`
--
ALTER TABLE `color_palettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `orders_invoice_address`
--
ALTER TABLE `orders_invoice_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `orders_shipping_address`
--
ALTER TABLE `orders_shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `orders_shipping_details`
--
ALTER TABLE `orders_shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `palette_colors`
--
ALTER TABLE `palette_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2298;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3481;

--
-- AUTO_INCREMENT for table `products_`
--
ALTER TABLE `products_`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_complementary`
--
ALTER TABLE `products_complementary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `product_info_`
--
ALTER TABLE `product_info_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1679;

--
-- AUTO_INCREMENT for table `quantities`
--
ALTER TABLE `quantities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
