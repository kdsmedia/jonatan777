-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2023 at 11:37 AM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SCAM_NEXUS`
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
(1, 'Adminmaster', 'admin', 'admin', 'dev@king808.xyz', '081299335940', '081299335940', '', 'Admin', 'Aktif'),
(2, 'Demo', 'demo', 'demo', 'demo@king808.xyz', '000000', '000000', '', 'Anggota', 'Aktif');

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
(162, 2, 'DP-1140643700', 'bank', 117, 29, '25000', '', '2023-09-19 21:27:30', 'selesai');

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
(1, 1, 'vs20olympgate.jpg', 'Gates of Olympus', 'gates_of_olympus', '#link_asli', 'https://demogamesfree.pragmaticplay.net/gs2c/openGame.do?lang=id&cur=IDR&gameSymbol=vs20olympgate&websiteUrl=https%3A%2F%2Fdemogamesfree.pragmaticplay.net&jurisdiction=99&lobbyURL=https%3A%2F%2Fwww.pragmaticplay.com'),
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
(1, 'livechat', '2651869352_7373421351_live-chat.svg', 'Dukungan LiveChat 24 Jam', '#'),
(2, 'whatsapp', '4853093910_8863067456_whatsapp.svg', '+66378648535', 'Text Whatsapp'),
(3, 'footer', '&nbsp;', '    ', ''),
(4, 'line', 'KING808', '#', ''),
(5, 'twitter', 'KING808 OFFICIAL', '#', ''),
(6, 'instagram', 'KING808.OFFICIAL', '#', ''),
(7, 'facebook', 'KING808 OFFICIAL', '#', ''),
(8, 'livescore', 'lainnya-1.gif', 'link_livescore', ''),
(9, 'rtp_slot', '3333296433_fygjkjklpiouibhjbkl.gif', 'link_rtp_slot', ''),
(10, 'popup_pengumuman', '5840365206_3002175154_img_7896.gif', 'home', '<h4 style=\"text-align: justify; \"><b style=\"font-size: 13px; background-color: var(--vz-card-bg); text-align: var(--vz-body-text-align);\"><font color=\"#000000\">KONTAK RESMI KAMI HANYA DI :</font></b></h4><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">WHATSAPP : </font><font color=\"#bd9400\">https://wa.me/+66378648535</font></b></span></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">TELEGRAM : </font><font color=\"#bd9400\">https://t.me/KING808</font></b></span></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">LINE : </font><font color=\"#bd9400\">KING808</font></b></span></div><div><font color=\"#000000\"><br></font></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\">SALAM JACKPOT</font></b></span></div><div><span style=\"font-size: 13px;\"><b><font color=\"#000000\"><br></font></b></span></div><div><span style=\"font-size: 13px;\"><b style=\"\"><font color=\"#000000\">HATI-HATI PENIPUAN YANG MENGATASNAMAKAN WEBSITE KING808!</font></b></span></div><h3></h3>'),
(11, 'pusat_bantuan', '<p style=\"font-size: 16px;\">FAQs2</p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Membuat Akun di IBOPLAY?</p>\r\n    <p>Cara membuat akun di IBOPLAY sangat mudah, silahkan klik tombol \"Daftar\" yang terletak di bagian kanan atas pada halaman utama IBOPLAY . Lalu isi semua informasi yang dibutuhkan secara tepat dan benar. Anda harus mengkonfirmasi bahwa anda setidaknya berusia 18 tahun untuk melengkapi pendaftaran anda.</p>\r\n    <p class=\"mb-5\">Kolom nama belakang anda tidak dapat dikosongkan. Jika anda tidak memiliki nama belakang (nama keluarga), maka anda dapat mengulang penulisan nama depan anda. Cotoh: Andi Andi.</p>\r\n    <p style=\"font-size: 14px;\">Mata Uang Apa Saja yang Diterima di IBOPLAY?</p>\r\n    <p>\r\n      Dibawah ini adalah daftar semua mata uang yang diterima oleh IBOPLAY :\r\n      </p><ol>\r\n        <li>Rupiah (IDR)</li>\r\n      </ol>\r\n    <p></p>\r\n    <p class=\"mb-5\">\r\n      <span class=\"d-block mb-2\">Catatan:</span>\r\n      1 Unit Rupiah (IDR) di IBOPLAY akan mewakili Rp. 1.000.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Bagaimana Cara Menyetor Dana Ke Akun IBOPLAY Saya?</p>\r\n    <p class=\"mb-5\">\r\n      Sebelum anda dapat bertaruh, anda perlu melakukan deposit dana ke akun anda menggunakan salah satu opsi deposit berikut ini:\r\n      </p><ol>\r\n        <li>Bank Lokal</li>\r\n        <li>Online Deposit</li>\r\n      </ol>\r\n    <p></p>\r\n    <p style=\"font-size: 14px;\">Adakah batasan minimal dalam melakukan betting?</p>\r\n    <p class=\"mb-5\">\r\n      Setiap permainan yang disediakan oleh IBOPLAY memiliki taruhan minimal sesuai permainan yang dipilih. Semua informasi tersedia ketika member sudah masuk ke dalam permainan.\r\n    </p>\r\n    <p style=\"font-size: 14px;\">Apakah situs kami terpercaya?</p>\r\n    <p class=\"mb-5\">\r\n      Situs kami merupakan situs resmi yang berkantor di Manila, Filipina dimana sebelum kami beroperasi kami sudah mendapatkan lisensi PACGOR sebagai tanda bahwa kami web terpercaya. Seluruh transaksi data keuangan dan privasi anda menjadi salah satu prioritas kami dan tidak ada satupun member kami yang tidak dibayar kemenangannya.\r\n    </p>', '', ''),
(12, 'syarat_dan_ketentuan', '<p style=\"font-size: 16px;\">TERMS &amp; CONDITIONS</p>\r\n    <p style=\"font-size: 14px;\">Privacy Policy</p>\r\n    <p class=\"mb-5\">We recognize and respect your right to privacy. Keeping your data safe is our paramount concern. We will keep all of your personal data private and will not disclose this information to any third party unless required to do so by applicable laws and regulations or a court order; with the exception that we reserve the right to disclose and transfer your personal data to our respective payment settlement service providers and financial institutions to the extent necessary for the completion of payments for services provided through our website. All personal information supplied by users is transmitted via Secure Socket (SSL 128 bit encryption Standard) and is stored in secure operating environments that are not accessible by the public. Internal access to all data is limited and strictly monitored.</p>\r\n    <p style=\"font-size: 14px;\">Disclaimer</p>\r\n    <p class=\"mb-5\">The information contained in IBOPLAY .com is for general information purposes only. This information is provided by our site and while we strive to maintain up-to-date and correct information, we make no representations or warranties of any kind, express or implied, regarding the completeness, accuracy, reliability, suitability or availability with respect to the website or information , products, services or related images contained on the website for any purpose. Therefore, the risk is borne by you yourself about the dependence of placing that information.</p>', '', ''),
(13, 'responsible_gaming', '<p style=\"font-size: 16px;\">123</p>', '', ''),
(14, 'tentang', '<p style=\"font-size: 16px;\">TENTANG KAMI</p>\r\n    <p style=\"font-size: 14px;\">IBOPLAY</p>\r\n    <p class=\"mb-5\">\r\n      Selamat datang di IBOPLAY , situs taruhan online terkemuka di Asia, yang menyediakan beragam produk permainan terbaik di Asia.\r\n      <br><br>\r\n      IBOPLAY adalah situs permainan taruhan olahraga hingga kasino terkemuka dan terpercaya di Asia, IBOPLAY menawarkan pengalaman judi online terbaik dengan berbagai variasi permainan kasino & sportsbook yang dapat dipilih dengan odds paling kompetitif dalam dunia judi sepak bola. Kami menawarkan rata-rata 10.000 permainan Olahraga yang berbeda setiap bulan dan berbagai kompetisi di seluruh dunia dalam IBOPLAY  Sportsbook, sementara total lebih dari 100 permainan kasino dari variasi bakarat, slot, roulette dan permainan kasino lainnya dapat dimainkan di IBOPLAY  Casino.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">KEAMANAN</p>\r\n    <p class=\"mb-5\">\r\n      Domain aman dan privat serta integritas produk kami adalah poros fundamental dari pengalaman taruhan online di IBOPLAY . Kami selalu mengutamakan keamanan tercanggih dan memperbaharui semua permainan serta proses-proses kami secara berkala, demi memastikan pengalaman permainan online Anda 100% aman dan adil. Kami selalu mengutamakan menjaga kerahasiaan informasi Anda, dan kami tidak akan pernah membagikannya ataupun menjualnya ke pihak ketiga, kecuali diharuskan sesuai dengan yang disebutkan di Kebijakan Privasi kami.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PELAYANAN PELANGGAN</p>\r\n    <p class=\"mb-5\">\r\n      Didukung layanan pelanggan 24 jam, yang tersedia 7 hari seminggu, staf kami yang ramah dan profesional akan memastikan bahwa semua masalah yang Anda hadapi akan ditangani dengan cepat, efisien, dan secara ramah. Kami memberikan prioritas tinggi untuk memastikan sistem pembayaran yang aman dan memberikan kerahasiaan informasi pribadi.\r\n      <br><br>\r\n      Misi utama kami adalah selalu memberikan pengalaman taruhan online terbaik bagi pemain yang bertanggung jawab.\r\n      Silahkan hubungi kami melalui Livechat dan Whatsapp, dengan saran dan komentar Anda.\r\n      <br><br>\r\n      Kami memilki beberapa metode pembayaran yang mudah dan aman, demi kenyamanan Anda. Kami mengikuti kebijakan kenali pelanggan Anda (KYC) dan anti-pencucian uang (AML), dan kami bekerja sama dengan badan keuangan serta badan pengatur demi memastikan ketaatan berstandar tertinggi pada hukum dan peraturan.\r\n    </p>\r\n\r\n    <p style=\"font-size: 14px;\">PROGRAM DAN HIBURAN</p>\r\n    <p class=\"mb-5\">\r\n      Di IBOPLAY , kami berusaha untuk memberikan yang terbaik dalam permainan dan layanan online untuk menawarkan pengalaman unik & terbaik bagi pelanggan kami. Kami memiliki beberapa program berhadiah, yang memberikan pelanggan kami berbagai hadiah yang benar-benar layak untuk para pemain. Bermain di IBOPLAY tidak hanya menyenangkan dan menghibur, tetapi juga sangat menguntungkan!\r\n    </p>', '', ''),
(15, 'marquee_pengumuman', 'Harap diperhatikan kembali pada saat melakukan deposit, hati-hati penipuan mengatasnamakan PANDA138.', '#000000', '#c9a561'),
(16, 'logo', '7595488672_20230917_234356.png', '', ''),
(17, 'favicon', '3503389662_20230917_234051.png', '', ''),
(18, 'judul_website', 'Situs Bandar Judi Live Slot Online Terbaik Di Indonesia', '', ''),
(19, 'warna_utama', '#000000', '', ''),
(20, 'logo_admin_light', '6468874860_20230917_234356.png', '', ''),
(21, 'logo_admin_dark', '5767439048_ezgif.com-crop.gif', '', ''),
(22, 'logo_admin_sm', '7838398848_20230917_234356.png', '', ''),
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
(1, '110.137.37.240', 20, 9, 2023);

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
(19, '1891303439_20230918_041439.png', 'Bonus Referral 15%', '<p style=\"text-align: left;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">KING808 MEMBERIKAN PENDAPATAN PASIF SEUMUR HIDUP UNTUK ANDA</font></font></b></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Manfaatkan BONUS Referral yang dapat kami berikan dari persenan KOMISI TERBAIK dan TERBESAR untuk Anda untuk semua permainan yang ada di <b>KING808</b>.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Adapun Bonus Referral dari kami berkisar dari 2% hingga 15% untuk semua jenis permainan di <b>KING808</b>.</font></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">aranya sangat mudah, Anda hanya diminta mereferensikan teman Anda untuk melakukan pendaftaran di </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">.</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">Anda wajib mendaftar terlebih dahulu di </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">&nbsp;(pendaftaran gratis).</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><font color=\"#ffffff\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-weight: var(--vz-body-font-weight);\">Anda wajib memasukkan kode referral Anda (USERNAME Anda pada kolom referral pada formulir pendaftaran member </span><b>KING808</b><span style=\"font-weight: var(--vz-body-font-weight);\">), atau Anda juga dapat menggunakan link referral yang telah tersedia.</span></font></font></span><br></font></p><p style=\"text-align: justify;\"><span style=\"background-color: var(--vz-card-bg); font-family: var(--vz-body-font-family); font-size: var(--vz-body-font-size);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\"><span style=\"font-weight: var(--vz-body-font-weight);\">Withdraw / Penarikan Bonus referral bisa di lakukan jika nominal bonus referral yang Anda dapatkan minimal berjumlah </span><b>Rp 50.000</b><span style=\"font-weight: var(--vz-body-font-weight);\">,-.</span></font></font></span></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Sebarkanlah link yang Anda dapatkan dari menu REFERRAL setelah Anda melakukan login di <b>KING808</b>, maka Downline Anda yang mendaftar melalui link Referral Anda akan secara otomatis masuk sebagai downline Anda.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Syarat yang perlu Anda perhatikan agar berhak untuk berpartisipasi dalam program bonus referral adalah:</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Jika terdapat penipuan, penipuan, kolusi dan aktivitas pidana maka pihak <b>KING808</b>&nbsp;berhak untuk menghentikan atau mengeluarkan bawahan referral anda dari promosi referral.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Promo Referral dapat berubah sewaktu-waktu tanpa adanya pemberitahuan terlebih dahulu.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\" color=\"#ffffff\">Seluruh keputusan yang diberikan <b>KING808</b>&nbsp;bersifat mutlak dan tidak dapat diganggu gugat.</font></font></p><p style=\"text-align: justify;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><br></font></font></p>');

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
(11, 'pulsa', 'TELKOMSEL'),
(12, 'pulsa', 'AXIS'),
(13, 'pulsa', 'XL');

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
(29, 'bank', 1, 'Adminmaster BCA', '00000000'),
(30, 'bank', 3, 'Adminmaster CIMB', '00000000'),
(31, 'emoney', 8, 'Adminmaster DANA', '00000000');

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
(117, 2, 'bank', 1, 'Demo', '12345678');

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
(1, 2, '50000');

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
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

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
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `rekening_admin`
--
ALTER TABLE `rekening_admin`
  MODIFY `id_rekening_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rekening_anggota`
--
ALTER TABLE `rekening_anggota`
  MODIFY `id_rekening_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id_withdraw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
