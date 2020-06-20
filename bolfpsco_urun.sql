-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2020 at 03:56 PM
-- Server version: 5.5.63-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolfpsco_urun`
--

-- --------------------------------------------------------

--
-- Table structure for table `veriler`
--

CREATE TABLE `veriler` (
  `tur` varchar(250) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'simple',
  `stokkod` int(250) NOT NULL,
  `isim` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `yayinlanma` int(250) NOT NULL DEFAULT '1',
  `onecikan` int(250) NOT NULL DEFAULT '0',
  `kataloggor` varchar(250) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'visible',
  `kisaaciklama` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `aciklama` text CHARACTER SET utf8mb4 NOT NULL,
  `indirimbaslangictarih` int(250) NOT NULL,
  `indirimbitistarih` int(250) NOT NULL,
  `vergidurumu` varchar(250) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'taxable',
  `vergisinif` int(250) NOT NULL,
  `stokta` int(250) NOT NULL DEFAULT '1',
  `stok` int(250) NOT NULL DEFAULT '0',
  `dusukstokmiktari` int(250) NOT NULL,
  `yoksatmayaizin` int(250) NOT NULL DEFAULT '0',
  `ayriayrimi` int(250) NOT NULL DEFAULT '0',
  `agirlik` int(250) NOT NULL,
  `uzunluk` int(250) NOT NULL,
  `genislik` int(250) NOT NULL,
  `yukseklik` int(250) NOT NULL,
  `musteriincelemeizin` int(250) NOT NULL DEFAULT '1',
  `satinalmanotu` int(250) NOT NULL,
  `indirimlifiyat` int(250) NOT NULL,
  `normalfiyat` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategoriler` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `etiketler` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `gonderimsinif` int(250) NOT NULL,
  `gorsel` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `indirmesinir` int(250) NOT NULL,
  `indirmesonaerme` int(250) NOT NULL,
  `ebevyn` int(250) NOT NULL,
  `grupurun` int(250) NOT NULL,
  `yukarisatis` int(250) NOT NULL,
  `caprazsatis` int(250) NOT NULL,
  `hariciurl` int(250) NOT NULL,
  `dugmemetni` int(250) NOT NULL,
  `konum` int(250) NOT NULL DEFAULT '0',
  `an` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `veriler`
--

INSERT INTO `veriler` (`tur`, `stokkod`, `isim`, `yayinlanma`, `onecikan`, `kataloggor`, `kisaaciklama`, `aciklama`, `indirimbaslangictarih`, `indirimbitistarih`, `vergidurumu`, `vergisinif`, `stokta`, `stok`, `dusukstokmiktari`, `yoksatmayaizin`, `ayriayrimi`, `agirlik`, `uzunluk`, `genislik`, `yukseklik`, `musteriincelemeizin`, `satinalmanotu`, `indirimlifiyat`, `normalfiyat`, `kategoriler`, `etiketler`, `gonderimsinif`, `gorsel`, `indirmesinir`, `indirmesonaerme`, `ebevyn`, `grupurun`, `yukarisatis`, `caprazsatis`, `hariciurl`, `dugmemetni`, `konum`, `an`) VALUES
('simple', 13296, 'Davetiyeli Zikirmatik-Z3007', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5015/Davetiyeli_Zikirmatik_Z3007.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13295, 'Davetiyeli Zikirmatik-Z3006', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5014/Davetiyeli_Zikirmatik_Z3006.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13294, 'Davetiyeli Zikirmatik-Z3005', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5013/Davetiyeli_Zikirmatik_Z3005.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13293, 'Davetiyeli Zikirmatik-Z3004', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5012/Davetiyeli_Zikirmatik_Z3004.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13292, 'Davetiyeli Zikirmatik-Z3003', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5011/Davetiyeli_Zikirmatik_Z3003.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13291, 'Davetiyeli Zikirmatik-Z3002', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5010/Davetiyeli_Zikirmatik_Z3002.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13290, 'Davetiyeli Zikirmatik-Z3001', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5009/Davetiyeli_Zikirmatik_Z3001.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('simple', 13273, 'Davetiyeli Zikirmatik-Z3000', 1, 0, 'visible', '', '\r\n                                Ürün İçeriği:\r\n1 Adet Zikirmatik\r\n1 Adet Davetiye Kartı\r\n1 Adet Jelatin\r\nZikirmatik  Özellikleri:\r\n5 Haneli\r\n99999\'a Kadar Sayar\r\n\r\n\r\nHafızalı\r\n\r\nHac ve Umre Hediyesi Olarak, Bebek Mevlüt Hediyesi Olarak, Kandil Hediyesi Olarak, Kutlu Doğum Hediyesi Olarak Tercih Edilebilecek.\r\n\r\n\r\n                            ', 0, 0, 'taxable', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '5.00', 'Mevlüt Setleri, Mevlüt Setleri > Zikirmatik', 'zikirmatik,hediye,mevlüt', 0, 'https://nevatoptan.net//upload/urunler//5008/Davetiyeli_Zikirmatik_Z3000.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
