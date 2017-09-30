-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 27 aug 2017 kl 10:24
-- Serverversion: 10.1.16-MariaDB
-- PHP-version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `dm`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `lastname` varchar(40) CHARACTER SET utf8 NOT NULL,
  `givennames` varchar(40) CHARACTER SET utf8 NOT NULL,
  `company` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `customertype` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'p',
  `idno` varchar(11) COLLATE utf8_swedish_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 NOT NULL,
  `address` varchar(60) CHARACTER SET utf8 NOT NULL,
  `postcode` varchar(14) CHARACTER SET utf8 NOT NULL,
  `city` varchar(40) CHARACTER SET utf8 NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `customer`
--

INSERT INTO `customer` (`customerid`, `memberid`, `lastname`, `givennames`, `company`, `customertype`, `idno`, `mobile`, `email`, `address`, `postcode`, `city`, `status`) VALUES
(0, 0, 'Eget köp', '', NULL, 'p', NULL, '', '', '', '', '', 0),
(1, 10000, 'Andersson', 'Per', 'Pizzeria Pingvin', 'c', NULL, '077-1231222', 'pingvin@bogrus.com', 'Grimstsgatan 12', '162 44', 'Vällingby', 0),
(2, 10000, 'Roland', 'Fredriksson', '', 'p', NULL, '076-1234545', 'fredrik@bogrus.com', 'Bergsgatan', '112 44', 'Stockhom', 0),
(3, 10000, 'Eriksson', 'Janne', '', 'p', NULL, '076 1345656', 'erik@bogrus.com', 'Bergsgatan 33', '133 45', 'Stockholm', 0),
(9, 10001, 'Grusell', 'Bo', '', 'p', NULL, '076-1443878', 'bo.grus@yahoo.com', 'Kanngjutargränd 28', '162 57', 'Vällingby', 0),
(10, 10015, 'Anka', 'Arne', '', 'p', NULL, '968478755', 'Aa@aa.se', 'Hjk', '35556', 'Ghhhh', 0),
(11, 10021, 'Hedberg', 'Henrik', 'Skidleasing', 'c', NULL, '070-7606624', 'Henrik@swedensnowsports.com', 'Gustavslundsv 149 R', '167 51', 'Bromma', 0),
(12, 10022, 'Hedberg', 'Henrik', '', 'p', NULL, '07012345971', 'Henrik@swedensnowsports.com', 'Grubbensgata', '11', '2', 0),
(13, 10022, 'Heddberg', 'Jorl', '', 'p', NULL, '070918', 'joel@swedensnowsports.com', 'O', 'E', 'L', 0),
(14, 10001, 'Grus', 'Bosse', '', 'p', NULL, '076-1443878', 'bo.grusell@goodminton.se', 'Bergsgatan 122', '123 23', 'Stockholm', 0),
(15, 10020, 'Ehn', 'Gunnar', '', 'p', NULL, '0702696734', 'guehn@hotmail.com', 'Inedalsgatan 25', '11233', 'Stockholm', 0),
(16, 10019, 'Lefranc Åhman', 'Cécile', '', 'p', NULL, '0736388653', 'cecileahman@gmail.com', 'Kristinehovsgatan 14 lgh 1401', '11729', 'Stockholm', 0),
(17, 10015, 'Hedberg', 'Henrik', 'Sweden Snowsport AB', 'c', NULL, '070760624', 'Henrik@swedensnowsports.com', 'Gustavslundsvägen 149R', '16751', 'Bromma', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `group_goal`
--

CREATE TABLE `group_goal` (
  `groupgoalid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `goalname` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal` decimal(10,2) NOT NULL,
  `result` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dashboard` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `group_goal`
--

INSERT INTO `group_goal` (`groupgoalid`, `groupid`, `goalname`, `start_date`, `end_date`, `goal`, `result`, `dashboard`) VALUES
(1, 2, 'Q1', '2017-01-01', '2017-03-31', '40000.00', '0.00', ''),
(2, 6, 'Resan', '2016-11-15', '2016-12-31', '40000.00', '0.00', ''),
(4, 7, 'Klassresa i 6:an', '2016-11-22', '2016-12-31', '10000.00', '0.00', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `group_link`
--

CREATE TABLE `group_link` (
  `grouplinkid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `group_link`
--

INSERT INTO `group_link` (`grouplinkid`, `groupid`, `memberid`) VALUES
(11, 2, 10001),
(4, 2, 10013),
(6, 7, 10016),
(7, 7, 10017),
(8, 7, 10018),
(9, 7, 10019),
(10, 7, 10020),
(12, 7, 10021),
(13, 7, 10022),
(14, 7, 10023),
(15, 7, 10024),
(16, 7, 10025);

-- --------------------------------------------------------

--
-- Tabellstruktur `member`
--

CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `membertype` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 's',
  `email` varchar(60) CHARACTER SET utf8 NOT NULL,
  `zxcv` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(40) CHARACTER SET utf8 NOT NULL,
  `givennames` varchar(40) CHARACTER SET utf8 NOT NULL,
  `personno` varchar(12) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(60) CHARACTER SET utf8 NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `city` varchar(40) CHARACTER SET utf8 NOT NULL,
  `countrycode` char(2) CHARACTER SET utf8 NOT NULL DEFAULT 'se',
  `copy_confirm` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'y',
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `memberstatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `member`
--

INSERT INTO `member` (`memberid`, `membertype`, `email`, `zxcv`, `lastname`, `givennames`, `personno`, `mobile`, `address`, `postcode`, `city`, `countrycode`, `copy_confirm`, `regdate`, `memberstatus`) VALUES
(0, 'x', '', '', '', '', '', '', '', '', '', 'se', 'y', '2016-10-18 09:06:44', 1),
(10000, 's', 'bo.grus@yahoo.com', '$2y$10$t7Y.1ad3OjOcl7XrfHhxh.3ZtLPeIVjOWMToyftwsub0oml1YELvC', 'Grusell', 'Bo', '571104-0054', '076-1443878', 'Kanngjutargränd 28', '162 57', 'Vällingby', 'se', 'y', '2016-09-10 10:34:46', 0),
(10001, 'g', 'erica@bogrus.com', '$2y$10$foHdkkf2FpYOPTEcR.yDr.aqbF2HrCHtjY6UBdDLyq2jYkbBSkk8C', 'Grus', 'Erica M', '', '075-154544', '', '', '', 'se', 'y', '2016-09-10 10:50:22', 0),
(10003, 's', 'Skogkristian@gmail.com', '$2y$10$KGq/9iPOdO3ZLAYvdjXD6u4/V6owjQ4xfBCGrVzKU7r0aVntAOX1y', 'Skog', 'Kristian', '199411041396', '0762101133', 'Inedalsgatan 8', '11233', 'Stockholm', 'se', 'y', '2016-09-12 06:07:32', 0),
(10005, 's', 'Joakim@glantans.com', '$2y$10$wf3P4qB.QK3CRJkY0Jw4rO9zdFhP65uoNsPpsHAyV//qX/i9z/7rK', 'Wiik-Hansen', 'Joakm', '19841204-163', '0730-297587', 'Drottninggatan 20', '60224', 'Norrköping', 'se', 'y', '2016-09-13 12:25:46', 0),
(10007, 's', 'Adam@bappnet.se', '$2y$10$sUXSEccb/Te7Bq4S5EQ.TeRBVZLmaZqfjA.C9bmBGO6JJQk5TPlRS', 'Hedberg', 'Adam', '19680924-701', '070675667', 'Gräsvägen 7', '24446', 'Orsa', 'se', 'y', '2016-10-24 20:11:38', 0),
(10013, 'g', 'frank@bogrus.com', '$2y$10$iTWweaD9jJDkCHIhvncxce.0YcOAtlDo6bWkfF83go65rObkCnv22', 'Petersson', 'Frank', '', '076/1232323', '', '', '', 'se', 'y', '2016-11-16 05:35:12', 0),
(10015, 's', 'henrik@skidleasing.se', '$2y$10$45d0cIn6Md0S.s2jsf7Iw.Auo.XfnG9AtVqX/dCLVMf2f/c2D5HQK', 'Hedberg', 'Henrik', '19680924-701', '070-7606624', 'Grubbens gata 11', '11232', 'Stockholm', 'se', 'y', '2016-11-22 17:17:49', 0),
(10016, 'g', 'dknegishi@gmail.com', '$2y$10$1BZVmj6Pe/kjLNJs/SA26Ou9Dfe/rirIRmJE6Vze2Uc/3v9HcJi/a', 'Negishi', 'Daniel', '', '0700029203', '', '', '', 'se', 'y', '2016-11-22 18:24:57', 0),
(10017, 'g', 'Sompamail@gmail.com', '$2y$10$OLDl48cXaCDwVp.1EO/WS.3O8Ac3SDTqOlyf2G341SCuaLT2WHUKy', 'Nordberg', 'Sonja', '', '0736248532', '', '', '', 'se', 'y', '2016-11-22 18:26:35', 0),
(10018, 'g', 'Lars.peter.svanberg@gmail.com', '$2y$10$K/WuXN3NZG3RSZFlUFMfzuzcryrWXOqvbi4WVkx8vGv.eYmos3Ydq', 'Svanberg', 'Lars-Peter', '', '0709147207', '', '', '', 'se', 'y', '2016-11-22 18:27:59', 0),
(10019, 'g', 'cecileahman@gmail.com', '$2y$10$GCBnn/P/x1wqOaLwfIhubuVNDl.FBkmGq5Lc.V7RYI0FFLPKhpmqC', 'Lefranc Åhman', 'Cécile ', '', '0736388653', '', '', '', 'se', 'y', '2016-11-22 18:29:58', 0),
(10020, 'g', 'guehn@hotmail.com', '$2y$10$QMIdsS.f9SHIZMbLXOmSvOmHIKQhBbSlYqHLN3lVhTpD3gMjrkHTS', 'Ehn', 'Gunnar', '', '0702696734', '', '', '', 'se', 'y', '2016-11-22 18:31:12', 0),
(10021, 'g', 'Carolinehedberg1@gmail.com', '$2y$10$pD.m5Wk5.yXLkFw0WoBziO0U.x8.jIfTGD0oL.xOz4pjtrsC64y6O', 'Hedberg', 'Caroline', '', '0706990888', '', '', '', 'se', 'y', '2016-11-23 18:13:47', 0),
(10022, 'g', 'Adam@swedensnowsports.com', '$2y$10$lnomZb0fheqpHNNuHZdol.Jrbk7KEH3iyz/.zUbZoIzANEuVBOLwm', 'Hedberg', 'Adam', '', '0707276004', '', '', '', 'se', 'y', '2016-11-24 19:49:56', 0),
(10023, 'g', 'joel.hedberg2@icloud.com', '$2y$10$N8hDO.MgAD.I2KEE3ZFqo.gRxgE8JI.gb2bIKkw05TPV2F1Jo29xy', 'Hedberg', 'Joel', '', '0737275697', '', '', '', 'se', 'y', '2016-11-26 15:38:53', 0),
(10024, 'g', 'Henrik@electrosurf.se', '$2y$10$EwXJQ0eGL4aM2Emlrg4LW.KpqTu1zDZ1h8ccNkKi1t.ljDqcCmiQ2', 'Hebbesson', 'Hebbe', '', '0707647886', '', '', '', 'se', 'y', '2016-11-26 18:33:34', 0),
(10025, 'g', 'Henrik.hedberg@goodminton.se', '$2y$10$9WDMDaXPcd3uz6D8qjsyfeiQsZPLyRXcxory/yVl2bmRZvWJv1q/m', 'Hedlund', 'Herbert', '', '074757898', '', '', '', 'se', 'y', '2016-11-26 18:34:46', 0),
(10026, 's', 'Magnus.ravander@gmail.com', '$2y$10$UXVHaN.TXmRJufkvAsKraeqDTsgK4rzTvc2g96dCy6iBFtKwFqSzi', 'Ravander', 'Magnus', '19671201-355', '072-5214618', 'Träsnidarvägen 19', '12638', 'Hägersten', 'se', 'y', '2017-02-09 15:29:25', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `member_group`
--

CREATE TABLE `member_group` (
  `groupid` int(11) NOT NULL,
  `groupname` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `shortgroupname` varchar(6) COLLATE utf8_swedish_ci NOT NULL,
  `ownerid` int(11) NOT NULL,
  `accounttype` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'c',
  `accountname` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `accountbank` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `accountno` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `accountref` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `taxno` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `signincode` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `invitation` text COLLATE utf8_swedish_ci NOT NULL,
  `customer_note` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `send_email` char(1) COLLATE utf8_swedish_ci NOT NULL,
  `accountstatus` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `member_group`
--

INSERT INTO `member_group` (`groupid`, `groupname`, `shortgroupname`, `ownerid`, `accounttype`, `accountname`, `accountbank`, `accountno`, `accountref`, `taxno`, `signincode`, `invitation`, `customer_note`, `send_email`, `accountstatus`) VALUES
(0, 'Eget köp', '', 0, 'c', '', '', '', '', '', '', '', '', '', '0'),
(1, 'Vällingby AIK P01', 'VA01', 10000, 'a', 'Vällingby AIK', 'SEB', '622-22323-56', 'Pojkar 01', '', 'vaik01', 'Inbjudan till Sponsor försäljning via Bappnet. Logga in med medföljande länk, din E-post och lösen.', '', '', '0'),
(2, 'Kina resor', 'KIna', 10000, 'a', 'Kina klubb EK', 'Handelsbanken', '456765234', 'Bappnet', '', 'kina', 'Inbjudan till Sponsor försäljning via Bappnet. Logga in med medföljande länk, din E-post och lösen.', 'Sponsor försäljning Klassreas 5B', '', '0'),
(7, 'Klassen 5D', '5D', 10015, 'a', 'Henrik Hedberg', 'SEB', '53960004044', 'Kungsholmen gsk 5D', '', 'Klassresa', ' \r\n		hej, här är länk för att logga in och börja sälja med Bappnet. Begränsa er till att sälja kaffet tills vidare. Kör hårt!', '', '', '0');

-- --------------------------------------------------------

--
-- Tabellstruktur `member_oitem`
--

CREATE TABLE `member_oitem` (
  `oitemid` int(11) NOT NULL,
  `orderid` char(9) NOT NULL,
  `shopid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `number` int(11) NOT NULL,
  `item_comm` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `member_oitem`
--

INSERT INTO `member_oitem` (`oitemid`, `orderid`, `shopid`, `productid`, `price`, `number`, `item_comm`) VALUES
(1, '6M9F0F315', 3, 13, '259.00', 2, '104'),
(2, '6M9F0F315', 3, 27, '289.00', 2, '173'),
(3, '4YIWE0VO3', 3, 9, '49.00', 10, '147'),
(4, 'SFT9DT4EV', 4, 15, '849.00', 25, '4245'),
(5, 'GGWU6AW7U', 3, 13, '259.00', 25, '1295'),
(6, 'GGWU6AW7U', 3, 27, '289.00', 25, '2168'),
(7, 'GGWU6AW7U', 3, 9, '49.00', 25, '368'),
(8, 'FXROCQ10X', 3, 13, '259.00', 25, '1295'),
(9, 'FXROCQ10X', 3, 27, '289.00', 25, '2168'),
(10, 'FXROCQ10X', 3, 9, '49.00', 25, '368'),
(11, 'BCOLRLHZY', 2, 26, '1200.00', 25, '6000'),
(12, 'BCOLRLHZY', 2, 2, '400.00', 25, '2000'),
(13, 'BCOLRLHZY', 2, 4, '400.00', 25, '2000'),
(14, 'BCOLRLHZY', 2, 6, '400.00', 25, '2000'),
(15, 'BCOLRLHZY', 2, 7, '400.00', 25, '2000'),
(16, 'BCOLRLHZY', 2, 24, '200.00', 25, '1000'),
(17, 'BCOLRLHZY', 2, 25, '1200.00', 25, '6000'),
(18, 'OI58E63KA', 4, 14, '119.00', 25, '595'),
(19, 'OI58E63KA', 4, 15, '849.00', 25, '4245'),
(20, 'OI58E63KA', 4, 16, '149.00', 25, '745'),
(21, 'OI58E63KA', 4, 17, '152.00', 25, '760'),
(22, 'OI58E63KA', 4, 18, '239.00', 25, '1195'),
(23, 'OI58E63KA', 4, 19, '169.00', 25, '845'),
(24, 'OI58E63KA', 4, 20, '149.00', 25, '745'),
(25, 'OI58E63KA', 4, 21, '139.00', 25, '695'),
(26, 'OI58E63KA', 4, 22, '259.00', 25, '1295'),
(27, 'OI58E63KA', 4, 23, '199.00', 25, '995'),
(29, '37JUXUJ18', 3, 27, '289.00', 5, '434'),
(30, 'ZS7S9EF2E', 3, 27, '289.00', 1, '87'),
(31, 'ZS7S9EF2E', 3, 9, '49.00', 1, '15'),
(33, 'ET3CHY9TQ', 3, 27, '289.00', 1, '87'),
(35, '636HT1HDX', 3, 9, '49.00', 6, '88'),
(36, 'PMVIQ52KA', 2, 26, '1200.00', 4, '960'),
(37, 'PMVIQ52KA', 2, 2, '400.00', 3, '240'),
(38, 'QT2L5XG2V', 3, 9, '49.00', 6, '88'),
(41, 'USAAKX1K7', 3, 13, '259.00', 3, '155'),
(42, 'USAAKX1K7', 3, 9, '49.00', 10, '147'),
(43, 'YUWZPIBP4', 3, 13, '259.00', 5, '259');

-- --------------------------------------------------------

--
-- Tabellstruktur `member_order`
--

CREATE TABLE `member_order` (
  `orderid` char(9) NOT NULL,
  `shopid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `memberid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `customerid` int(11) NOT NULL,
  `ordersum` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `vat` decimal(8,2) DEFAULT NULL,
  `rebate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vat_percentage` decimal(4,2) NOT NULL,
  `rebate_percentage` decimal(3,0) NOT NULL,
  `shippment_free` char(1) NOT NULL DEFAULT 'n',
  `shippment_cost` decimal(8,2) NOT NULL,
  `order_comm` decimal(8,0) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `invoicedate` date DEFAULT NULL,
  `updated` datetime NOT NULL,
  `orderstatus` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `member_order`
--

INSERT INTO `member_order` (`orderid`, `shopid`, `orderdate`, `memberid`, `groupid`, `customerid`, `ordersum`, `total`, `vat`, `rebate`, `vat_percentage`, `rebate_percentage`, `shippment_free`, `shippment_cost`, `order_comm`, `invoiceno`, `invoicedate`, `updated`, `orderstatus`) VALUES
('0', 3, '2016-11-24 21:01:15', 0, 7, 0, '0.00', '0.00', '0.00', '0.00', '12.00', '0', '', '0.00', '0', 9500264, '2016-12-14', '2016-11-24 21:01:15', 1),
('37JUXUJ18', 3, '2016-11-24 23:24:30', 10001, 0, 9, '1445.00', '1445.00', '154.62', '0.00', '12.00', '0', 'y', '0.00', '0', 0, NULL, '2016-11-24 23:24:30', 0),
('4YIWE0VO3', 3, '2016-11-23 19:21:22', 10021, 7, 11, '490.00', '539.00', '57.67', '0.00', '12.00', '0', 'n', '49.00', '147', 9500260, '2016-12-13', '2016-11-23 19:21:22', 1),
('636HT1HDX', 3, '2016-12-16 06:45:24', 10019, 0, 0, '490.00', '539.00', '57.67', '0.00', '12.00', '0', 'n', '49.00', '0', 0, NULL, '2016-12-16 06:45:24', 0),
('6M9F0F315', 3, '2016-11-23 12:03:37', 10001, 2, 9, '1096.00', '1096.00', '117.27', '0.00', '12.00', '0', 'y', '0.00', '277', 9500259, '2016-12-13', '2016-11-23 12:03:37', 1),
('BCOLRLHZY', 2, '2016-11-24 21:03:40', 10022, 7, 13, '105000.00', '105000.00', '11235.00', '0.00', '12.00', '0', 'y', '0.00', '21000', 950664, '2016-12-14', '2016-11-24 21:03:40', 1),
('ET3CHY9TQ', 3, '2016-12-03 17:53:51', 10020, 0, 0, '259.00', '308.00', '32.96', '0.00', '12.00', '0', 'n', '49.00', '0', 0, NULL, '2016-12-03 17:53:51', 0),
('FXROCQ10X', 3, '2016-11-24 21:02:38', 10022, 7, 13, '14925.00', '14925.00', '1596.98', '0.00', '12.00', '0', 'y', '0.00', '3830', 9500269, '2016-12-14', '2016-11-24 21:02:38', 1),
('GGWU6AW7U', 3, '2016-11-24 21:00:41', 10022, 7, 13, '14925.00', '14925.00', '1596.98', '0.00', '12.00', '0', 'y', '0.00', '3830', 9500261, '2016-12-14', '2016-11-24 21:00:40', 1),
('OI58E63KA', 4, '2016-11-24 21:05:41', 10022, 7, 13, '60575.00', '60575.00', '12115.00', '0.00', '25.00', '0', 'y', '0.00', '12115', 10024, '2016-12-14', '2016-11-24 21:05:41', 1),
('PMVIQ52KA', 2, '2017-01-04 20:38:45', 10000, 2, 1, '6000.00', '6000.00', '642.00', '0.00', '12.00', '0', 'y', '0.00', '1200', 950665, '2017-01-24', '2017-01-04 20:38:45', 1),
('QT2L5XG2V', 3, '2017-01-09 07:54:47', 10019, 7, 16, '294.00', '343.00', '36.70', '0.00', '12.00', '0', 'n', '49.00', '88', 9500274, '2017-01-29', '2017-01-09 07:54:47', 1),
('SFT9DT4EV', 4, '2016-11-24 20:56:50', 10022, 7, 12, '21225.00', '21225.00', '4245.00', '0.00', '25.00', '0', 'y', '0.00', '4245', 10023, '2016-12-14', '2016-11-24 20:56:50', 1),
('USAAKX1K7', 3, '2017-02-09 09:56:48', 10015, 0, 0, '1267.00', '1267.00', '135.57', '0.00', '12.00', '0', 'y', '0.00', '0', 0, NULL, '2017-02-09 09:56:48', 0),
('YUWZPIBP4', 3, '2017-02-09 14:16:01', 10015, 7, 10, '1295.00', '1295.00', '138.57', '0.00', '12.00', '0', 'y', '0.00', '259', 9500276, '2017-03-01', '2017-02-09 14:16:01', 1),
('ZS7S9EF2E', 3, '2016-11-24 23:28:06', 10001, 2, 14, '338.00', '387.00', '41.41', '0.00', '12.00', '0', 'n', '49.00', '101', 9500271, '2016-12-14', '2016-11-24 23:28:06', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `page`
--

CREATE TABLE `page` (
  `pagename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `seo_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `seo_title` varchar(69) CHARACTER SET utf8 NOT NULL,
  `seo_description` varchar(156) CHARACTER SET utf8 NOT NULL,
  `template` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `page`
--

INSERT INTO `page` (`pagename`, `title`, `content`, `seo_url`, `seo_title`, `seo_description`, `template`) VALUES
('about-us', 'Om oss', '', 'om-oss', 'Klubb-Baren ....', '', 'about-us'),
('butiker', 'Butiker', '', 'butiker', '', '', 'butiker'),
('contact-us', 'Kontakta oss', '', 'kontakta-oss', '', '', 'contact-us'),
('Group', 'Group', '', 'grupp', 'group', '', 'group'),
('group-signin', 'group signin', '', 'group-signin', 'group-signin', '', 'group-signin'),
('home', 'Home', '', 'home', 'Klubb Baren', '', 'home'),
('Signup', 'Sign Up', '', 'bli-medlem', '', '', 'signup');

-- --------------------------------------------------------

--
-- Tabellstruktur `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `productno` varchar(20) NOT NULL,
  `product` varchar(50) NOT NULL,
  `producttype` char(1) NOT NULL DEFAULT 'n',
  `parent_productid` int(11) NOT NULL,
  `option_color_on` char(1) NOT NULL DEFAULT 'n',
  `option_size_on` char(1) NOT NULL DEFAULT 'n',
  `option_color` varchar(10) NOT NULL,
  `option_size` varchar(10) NOT NULL,
  `categoryid` varchar(15) NOT NULL,
  `slogan` varchar(40) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `price` decimal(8,0) NOT NULL DEFAULT '0',
  `comm` int(3) NOT NULL,
  `image` varchar(128) NOT NULL,
  `info` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `product`
--

INSERT INTO `product` (`productid`, `shopid`, `productno`, `product`, `producttype`, `parent_productid`, `option_color_on`, `option_size_on`, `option_color`, `option_size`, `categoryid`, `slogan`, `description`, `price`, `comm`, `image`, `info`, `sortorder`, `supplierid`, `status`) VALUES
(1, 2, '0101-00010', 'Klubb-Bar Chokladkrisp', 's', 0, 'n', 'n', '', '', '', '10-pack', 'Klubb-Bar Chokladkrisp. God och näringsriktig energibar. Lämplig som mellanmål.', '200', 20, 'klubb-bar-choklad-10-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, fruktossirap, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), cikoriarotfiber (inulin), arom, kakaopulver, vegetabilisk olja (raps), fuktighetsbevarandemedel glycerol, salt.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|30 g|\r\n|Kolhydrater, g|44 g|\r\n|varav sockerarter, g|29 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|5 g|\r\n|- enkelmättat|fett	1 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|4 g|\r\n|Natrium|0,1 g|\r\n', 10, 0, 1),
(2, 2, '0101-00020', 'Klubb-Bar Chokladkrisp', 's', 0, 'n', 'n', '', '', '', 'Låda 20 st', 'Gott och nyttigt mellanmål. 20-pack bars, choklad.', '400', 20, 'klubb-bar-choklad-20-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, fruktossirap, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), cikoriarotfiber (inulin), arom, kakaopulver, vegetabilisk olja (raps), fuktighetsbevarandemedel glycerol, salt.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|30 g|\r\n|Kolhydrater, g|44 g|\r\n|varav sockerarter, g|29 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|5 g|\r\n|- enkelmättat|fett	1 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|4 g|\r\n|Natrium|0,1 g|\r\n', 30, 0, 0),
(3, 2, '0102-00010', 'Klubb-Bar Blåbär', 's', 0, 'n', 'n', '', '', '', '10-pack', 'God och näringsrik bar. Ett energirikt mellanmål.', '200', 20, 'klubb-bar-blabar-10-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, överdrag (socker, vegetabilisk fett, skummjölkspulver, cikoriarotfiber (inulin), yoghurtpulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), blåbärsgranulat (socker, glukossirap, blåbär, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom, antioxidant citronsyra.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|360|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|8 g|\r\n|varav||\r\n|- mättat fett|5,5 g|\r\n|- enkelmättat|fett	1,5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,03 g|\r\n', 40, 0, 1),
(4, 2, '0102-00020', 'Klubb-Bar Blåbär', 's', 0, 'n', 'n', '', '', '', 'Låda 20 st', '', '400', 20, 'klubb-bar-blabar-20-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, överdrag (socker, vegetabilisk fett, skummjölkspulver, cikoriarotfiber (inulin), yoghurtpulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), blåbärsgranulat (socker, glukossirap, blåbär, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom, antioxidant citronsyra.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|360|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|8 g|\r\n|varav||\r\n|- mättat fett|5,5 g|\r\n|- enkelmättat|fett	1,5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,03 g|\r\n', 50, 0, 0),
(5, 2, '0103-00010', 'Klubb-Bar Hallon', 's', 0, 'n', 'n', '', '', '', '10-pack', 'God och näringsrik bar. Ett energirikt mellanmål med choklad- och hallonsmak.', '200', 20, 'klubb-bar-hallon-bar-10-pack.jpg', '###Ingredienser\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, sojaprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), hallongranulat (maltodextrin, hallon, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\nTorrt, ej över rumstemperatur.\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|8 g|\r\n|- enkelmättat|fett	1.5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,3 g|', 70, 0, 1),
(6, 2, '0103-00020', 'Klubb-Bar Hallon', 's', 0, 'n', 'n', '', '', '', 'Låda 20 st', 'Klubb-bar. Energirik proteinbar. Lämplig som mellanmål.', '400', 20, 'klubb-bar-hallon-20-pack.jpg', '###Ingredienser\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, sojaprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), hallongranulat (maltodextrin, hallon, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\nTorrt, ej över rumstemperatur.\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|8 g|\r\n|- enkelmättat|fett	1.5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,3 g|', 80, 0, 0),
(7, 2, '0105-00020', 'Klubb-Bar Mixed', 's', 0, 'n', 'n', '', '', '', 'Låda 20 st', 'Klubb-bar. Energirik proteinbar. Lämplig som mellanmål.', '400', 20, 'klubb-bar-mixed-20-pack.jpg', '###Ingredienser Blåbär\r\n\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, överdrag (socker, vegetabilisk fett, skummjölkspulver, cikoriarotfiber (inulin), yoghurtpulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), blåbärsgranulat (socker, glukossirap, blåbär, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom, antioxidant citronsyra.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n  \r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|360|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|8 g|\r\n|varav||\r\n|- mättat fett|5,5 g|\r\n|- enkelmättat|fett	1,5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,03 g|\r\n\r\n###Ingredienser Choklad\r\n\r\nGlukossirap, mjölkprotein, överdrag (socker, härdat vegetabilisk fett innehållande sorbitantristearat, kakaopulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, fruktossirap, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), cikoriarotfiber (inulin), arom, kakaopulver, vegetabilisk olja (raps), fuktighetsbevarandemedel glycerol, salt.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|30 g|\r\n|Kolhydrater, g|44 g|\r\n|varav sockerarter, g|29 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|5 g|\r\n|- enkelmättat|fett	1 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|4 g|\r\n|Natrium|0,1 g|\r\n  \r\n\r\nKlubb-bar. Energirik proteinbar. Lämplig som mellanmål.\r\n\r\n###Ingredienser Hallon\r\n\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, sojaprotein, överdrag (socker, härdat vegetabilisk fett innehållande sorbitantristearat, kakaopulver, emulgeringsmedel sojalecitin, arom ), oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), hallongranulat (maltodextrin, hallon, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n\r\n###Ingredienser\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, sojaprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), hallongranulat (maltodextrin, hallon, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\nTorrt, ej över rumstemperatur.\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|8 g|\r\n|- enkelmättat|fett	1.5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,3 g|\r\n\r\n\r\n\r\n\r\n', 100, 0, 0),
(9, 3, 'jb4002', 'Extra Aroma', 's', 0, 'n', 'n', '', '', '', 'Malet 250 gram ', '', '49', 30, 'extra-aroma-malet.jpg', '###Beskrivning\r\nExtra Aroma är ett mörkt rostat, fylligt och aromatiskt kaffe som är gjort på de finaste bönor såsom Santos pärlböna, Kenya AA, Sumatra och Monsum Malabar – allt för att ge ett riktigt bra bryggkaffe.\r\n\r\nExtra Aroma är förpackat i 250g påsar med backventil så att de gaser som bildas, kan komma ut men inget syre kan komma in – allt för bästa kvalitet.\r\n\r\nExtra Aroma lämpar sig bäst för bryggning eller presskanna.', 30, 0, 0),
(10, 2, '0101-00100', 'Klubb-Bar Chokladkrisp', 's', 0, 'n', 'n', '', '', '', 'Kartong, 120 st.', '', '2200', 20, 'klubb-bar-120-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, fruktossirap, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), cikoriarotfiber (inulin), arom, kakaopulver, vegetabilisk olja (raps), fuktighetsbevarandemedel glycerol, salt.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|30 g|\r\n|Kolhydrater, g|44 g|\r\n|varav sockerarter, g|29 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|5 g|\r\n|- enkelmättat|fett	1 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|4 g|\r\n|Natrium|0,1 g|\r\n', 30, 0, 1),
(11, 2, '0103-00100', 'Klubb-Bar Hallon', 's', 0, 'n', 'n', '', '', '', 'Kartong 120 st. ', '', '2200', 20, 'klubb-bar-120-pack.jpg', '###Ingredienser\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, sojaprotein, överdrag (socker, vegetabilisk fett, kakaopulver, emulgeringsmedel sojalecitin, arom ), oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), hallongranulat (maltodextrin, hallon, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\nTorrt, ej över rumstemperatur.\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n###Näringsvärde\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|370|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|7 g|\r\n|varav||\r\n|- mättat fett|8 g|\r\n|- enkelmättat|fett	1.5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,3 g|', 90, 0, 1),
(12, 2, '0102-00100', 'Klubb-Bar Blåbär', 's', 0, 'n', 'n', '', '', '', 'Kartong 120 st. ', '', '2200', 20, 'klubb-bar-120-pack.jpg', '###Ingredienser\r\n\r\nGlukossirap, mjölkprotein, choklad (kakaomassa, socker, kakaofett, emulgeringsmedel sojalecitin, arom), fruktossirap, överdrag (socker, vegetabilisk fett, skummjölkspulver, cikoriarotfiber (inulin), yoghurtpulver, emulgeringsmedel sojalecitin, arom ), sojaprotein, oligofruktos, vassleproteinkrisp (vassleproteinisolat, rismjöl och emulgeringsmedel sojalecitin), blåbärsgranulat (socker, glukossirap, blåbär, förtjockningsmedel natriumalginat), kakaopulver, vegetabilisk olja (raps), fuktighetsbevarande medel (glycerol), arom, antioxidant citronsyra.\r\n\r\nKan innehålla spår av ägg.\r\n\r\n###Förvaring\r\n\r\nTorrt, ej över rumstemperatur.\r\n\r\n###Hållbarhet\r\n\r\nmin 12 mån (oöppnad förp) vid förvaring enligt nämnda lagringsförutsättningar.\r\n\r\n###Näringsvärde\r\n\r\n|||\r\n|------------|----|\r\n|**Näringsvärde**|**100g**|\r\n|Energi, kJ|1550|\r\n|Energi, kcal|360|\r\n|Protein, g|29 g|\r\n|Kolhydrater, g|41 g|\r\n|varav sockerarter, g|28 g|\r\n|Fett|8 g|\r\n|varav||\r\n|- mättat fett|5,5 g|\r\n|- enkelmättat|fett	1,5 g|\r\n|- fleromättat|fett	0,5 g|\r\n|Fibrer|6,5 g|\r\n|Natrium|0,03 g|\r\n', 60, 0, 1),
(13, 3, 'jb-aroma', 'Caffè Mauro De Luxe', 's', 0, 'n', 'n', '', '', '0', 'Caffè Mauros storsäljare', '', '259', 20, 'caffe-mauro-de-luxe.jpg', '###Beskrivning\nCaffè Mauro De Luxe Caffè Mauros storsäljare och den blandning som fått mest utmärkelser för sin goda smak. Med 70% arabica (fem olika sorters sydamerikanska arabicabönor) och 30% robusta i absolut högsta kvalitet levererar DE LUXE en aromatisk, sammetslen blend med stor, fruktig bouquet och med en touche av choklad.\n', 10, 0, 0),
(14, 4, 'SDC4/16GB', '16GB Micro SD Kort ', 's', 0, 'n', 'n', '', '', '', 'Inkl-adapter KINGSTON Klass 4', '', '119', 20, '16gb-micro-sd-kort.jpg', 'Micro-SD kort med adapter fungerar på samma sätt som ett SD-kort i ordinarie storlek, men har större användningsområde för kortet då det även går att användas i t ex mobiltelefoner.\r\n\r\n###Mer Information\r\nMicro-SD kort med adapter fungerar på samma sätt som ett SD-kort i ordinarie storlek, men har större användningsområde för kortet då det även går att användas i t ex mobiltelefoner. Optimal hastighet och prestanda för SDHC-kompatibla enheter. Med den medföljande adaptern kan du använda det som ett vanligt SD-kort i t ex digitalkameror, bärbara datorer, MP3-spelare och andra elektroniska enheter.\r\n\r\nProdukttyp: Flash-minneskort\r\n\r\nKompatibilitet: Ej specifikt\r\n\r\n###Datablad\r\n|||\r\n|------------|----|\r\n|**Minneskapacitet (i GB)**|16|\r\n|**Formfaktor**|microSDHC|\r\n|**SD-hastighetsklass**|4|\r\n\r\n', 10, 0, 0),
(15, 4, '', 'Divoom Voombox Party', 's', 0, 'n', 'n', '', '', '', 'Portabel Bluetooth-högtalare', '', '849', 20, 'divoom.jpg', '*Robust och tålig Portabel Bluetooth-högtalare som även kan fungera som högtalartelefon*.   \r\n\r\nDu parar din surfplatta eller smartphone via Bluetooth och du kan ha högtalaren upp till 10 meter ifrån den enhet du spelar ifrån. \r\n\r\nDen har en gummerad yta runtom högtalaren som gör den extra stryktålig. \r\n\r\nDen tål dessutom fukt och regn, den är något tyngre än dom flesta modellerna av portabla Bluetooth-högtalare vilket gör den till den perfekta högtalaren att ha med sig när du campar eller firar midsommar.  \r\n\r\nTrots sin lilla och kompakta design finner du hela fem stycken element, med bland annat en inbyggd woofer för att ge så bra ljud som möjligtvis kan i detta format.  \r\n\r\nDet inbyggda batteriet på 4200mAh klarar av att leverera musik i upp till 8 timmar och tar cirka 3-4 timmar på sig att ladda sig fullt. \r\n\r\nVill du inte använda dig av Bluetooth har den även ett 3,5mm minitele-kontakt på ena sidan där du kan ansluta din enhet via stereo-kabel.  \r\n\r\n* NFC \r\n* Bluetooth 4.0 \r\n* A2DP V1.2 StereoxSignal/brusförhållande: ≥75dB\r\n  \r\n0,5m USB Typ A till Micro-B kabel (laddning), 0,5m minitele-kabel hane-hane, praktiskt handledsband samt manual ingår i förpackningen.  \r\n\r\nMått(BxDxH): 233x54x103mm.', 20, 0, 0),
(16, 4, '4001', 'SNES USB Kontroller ', 's', 0, 'n', 'n', '', '', '', 'Spelkontrol och  Netflix fjärkontroll', '', '149', 20, 'snes-usb.jpg', 'En snygg SNES handkontroll av hög kvalité som ökar retro- och spelkänslan när du spelar spel via din PC eller MAC.\r\n\r\n* Plug n'' Play\r\n\r\n* Kan användas från allt till spelkontroll till "Netflix fjärkontroll"\r\n\r\n* En av dem bästa designerna på en spelkontroll genom tiderna nu till datorn! ', 30, 0, 0),
(17, 4, '', 'A4TECH Lasermus', 's', 0, 'n', 'n', '', '', '', 'Behaglig och Optisk Lasermus', '', '152', 20, 'optisk-lasermus.jpg', '*Behaglig standard lasermus för dig som vill ha en enkel, bekväm och hållbar mus antingen till ditt hem eller kontor.*\r\n\r\nMetallfötterna gör att musen glider jämnt och perfekt oavsett underlag och V-Track tekniken gör att lasern fungerar optimalt på alla typer av ytor.\r\n\r\n* Anslutningsteknik: Kabelansluten\r\n* Gränssnitt: USB\r\n* Teknik för rörelsedetektering: Optisk\r\n* Antal knappar: 2\r\n* Rörelseupplösning: 1000 dpi\r\n* Kabellängd: 1.5 m\r\n* Egenskaper: Scrollhjul, V-Track-teknik, metallfötter\r\n* Gränssnitt: 1 x USB - 4 pin USB typ A\r\n\r\nOperativsystem: Microsoft Windows XP 64-bit Edition, Microsoft Windows XP Media Center Edition 2005, Microsoft Windows 98SE/2000/ME/XP/Vista/7/8/10"\r\n', 40, 40, 0),
(18, 4, '', 'Gaming mouse', 's', 0, 'n', 'n', '', '', '', 'Programmerbara knappar och 2500 dpi', '', '239', 20, 'gaming-mouse.jpg', '*Denna häftiga spelmus från Tyska Perixx har 5 stycken programmerbara knappar som har Omron Micro Switches och Ultra Polling 1000HZ.*\r\n\r\nKvalitén märks i allt från användandet till den guldpläterade USB-kontakten.   \r\n\r\n* Märke: perixx\r\n* Vikt: 272 g\r\n* Storlek: 22.1 x 16.3 x 5.1 cm\r\n* Färg: Röd', 50, 0, 0),
(19, 4, '', 'Gaming musmatta', 's', 0, 'n', 'n', '', '', '', 'Passar alla typer av möss\n', '', '169', 20, 'gaming-musmatta.jpg', '*Bloody Mousepad, gaming-musmatta i tyg med handmotiv, 275x225x4mm, svart/röd*\r\n\r\nEn musmatta som passar alla typer av möss. Undersidan ser till att musmattan hålls på plats ovansidan balanserad mellan perfekt glid och motstånd.', 60, 0, 0),
(20, 4, '', 'Sporthörlurar', 's', 0, 'n', 'n', '', '', '', 'Mikrofon och 3,5mm Anslutning', '', '149', 20, 'sporthorlurar.jpg', '*Sköna hörlurar som med hjälp av öronbygeln sitter på plats även vid stora rörelser.*\r\n\r\nSporthörlurar med med öronbygel som gör hindrar att de lossnar under hastiga rörelser. Kabeln är trasselfri som underlättar hanteringen av lurarna. På kabeln sitter en mikrofon med tillhörande svarsknapp som gör det enkelt att svara eller lägga på ett samtal. Fungerar med de flesta smartphones.\r\n\r\n* Impedans: 32 Ohm\r\n* Anslutning: 3,5mm\r\n* Trasselfri\r\n* Kabellängd: 1,2m\r\n* Fungerar med de flesta smartphones\r\n', 70, 0, 0),
(21, 4, '', 'Laddningsbara AAA batterier', 's', 0, 'n', 'n', '', '', '', '1000mAh, 1,2V, 4-pack\n', '', '139', 20, 'alkalin-15v.jpg', '*Verbatim laddningsbara batterier, AAA(LR03), Ni-MH, 1000mAh, 1,2V, 4-pack*', 80, 0, 0),
(22, 4, '', 'Gaming Headset PC', 's', 0, 'n', 'n', '', '', '', 'Med volymkontroll på kabel\n', '', '259', 20, 'gaming-headset.jpg', 'Bekvämt headset med rejäla kåpor. \r\n\r\nVolymen kan justeras med reglage på kabeln. \r\n\r\nMikrofonen kan vridas så att den inte är i vägen när den inte används. \r\n\r\n* Volymkontroll på kabeln. \r\n* Mjukt vadderade kåpor. \r\n* Justerbar vadderad huvudbygel. \r\n* Vrid och böjbar mikrofonarm."', 90, 0, 0),
(23, 4, '', 'Iphone 6 Fodral Lila', 's', 0, 'n', 'n', '', '', '', 'Handgjord för högsta kvalité', '', '199', 20, 'fodral-iphone-6-lila.jpg', '*Handgjort plånboksfodral för iphone 6 i hög kvalité och i lila från svenska MTU.*\r\n\r\nFodralet har en stor ficka för sedlar och två kortfack för tex körkort och kontokort.\r\n', 100, 0, 0),
(24, 2, '', 'RE:DO Sportdricka', 's', 0, 'n', 'n', '', '', '', ' 40 portioner', '', '200', 20, 'klubb-bar-sportdryck.jpg', '*Prova elitens val av sportdricka. Svensktillverkad sportdricka med optimal mix av kolhydrater.*\r\n\r\nFramtagen i nära samarbete med elitidrottare. I påse till 100 ml vatten.\r\n\r\n###Beskrivning\r\n\r\n* Svensktillverkad\r\n* Isotonisk\r\n* Optimal mix av kolhydrater\r\n* Alla viktiga aminosyror/proteiner\r\n* Enbart naturliga smaksättare och färgämnen\r\n* Skonsam för magen\r\n* Garanterat fri från doping och prestationshöjare\r\n* En påse till 100 ml vatten', 110, 0, 0),
(25, 2, '', 'Juice PLUS+® Premium', 's', 0, 'n', 'n', '', '', '', '100% real juice', '', '1200', 20, 'juice-plus-premium.jpg', '###Power-trion\r\n\r\nJuice PLUS+ Premium-kapslarna innehåller ett flertal naturliga sekundära metaboliter. Kapslarnas hälsosamma ingredienser kommer från 26 olika sorters frukter, grönsaker och bär. Juice PLUS+ Premium: Frukt, grönsaker och bär som skördas när de är perfekt mogna och sedan omsorgsfullt behandlas med vår egen patenterade process. För ett maximalt intag av hälsosamma ingredienser - varje dag\r\n\r\n###Naturligt\r\n\r\nNaturligt färgrika frukter, grönsaker och bär utgör de hälsobringande ingredienserna i Juice PLUS+.\r\n\r\nNaturlig renhet som garanteras genom konstant laboratorieövervakning utförd av SGS INSTITUT FRESENIUS.\r\n\r\n###Anvisningar\r\n\r\nTa 2 fruktkapslar, 2 grönsakskapslar och 2 bärkapslar om dagen, helst i samband med måltid, och drick mycket vatten.\r\n\r\n###Varje paket består av\r\n\r\n* 2 burkar Juice PLUS+ grönsak\r\n\r\n* 2 burkar Juice PLUS+ frukt\r\n\r\n* 2 burkar Juice PLUS+ bär\r\n\r\n* 1 burk innehåller 120 kapslar.\r\n', 200, 0, 0),
(26, 2, '', 'Juice PLUS+® Premium Soft Chewables', 's', 0, 'n', 'n', '', '', '', 'Godis som ger ny Energy', '', '1200', 20, 'juice-plus-chew.jpg', '###Ett urval av läckra smaker\r\n\r\nDet hälsosamma Juice PLUS+ pulvret består av 26 sorters frukter, grönsaker och bär i sin godaste tappning. Juice PLUS+ Soft Chews är mycket populära bland barn och erbjuder ett hälsosamt tillskott till deras kost. Juice PLUS+ Soft Chews kan även användas av vuxna i dubbel dos.\r\n\r\n###Rekommenderad användning för barn\r\n\r\n2 Soft Chew frukt, 2 Soft Chew grönsak och 2 Soft Chew bär om dagen. Från 14 år och uppåt rekommenderas ett dagligt intag av 4 Soft Chew frukt, 4 Soft Chew grönsak och 4 Soft Chew bär.\r\n\r\n###Varje paket innehåller\r\n\r\n* 2 påsar Juice PLUS+ grönsak\r\n\r\n* 2 påsar Juice PLUS+ frukt\r\n\r\n* 2 påsar Juice PLUS+ bär\r\n\r\n* 1 påse innehåller 120 Soft Chewables\r\n', 0, 210, 0),
(27, 3, 'JB-Eko', 'Caffè Mauro Eko', 's', 0, 'n', 'n', '', '', '', 'Ekologiskt kaffe', '', '289', 30, 'jb-eko.jpg', '###Beskrivning\r\nRättvisemärkta ekologiska kaffebönor. Fairtrade märkning innebär rättvisare handelsvillkor och möjligheter för producenter i utvecklingsländer att investera i sina företag och samhällen för en hållbar framtid.\r\n\r\n100 % arabica blend med härlig arom, bra kropp och typiska toner, frukt och syra i en perfekt balans. Även ekokaffet har rostats enligt Caffè Mauros traditionella "a tostatura lenta" dvs. långsam rostning. Vilket ökar aromen och ger den perfekta smaken av en god italiensk espresso.\r\n\r\nEkokaffet är ett kaffe för alla kaffegourmeter. Den avnjutes med fördel som en god espresso, cappuccino eller latte. Men passar även väldigt bra att brygga.', 20, 0, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `shop`
--

CREATE TABLE `shop` (
  `shopid` int(11) NOT NULL,
  `shopurl` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `shopname` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `shortname` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `info` text COLLATE utf8_swedish_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `address` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `postcode` varchar(14) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `contact_email` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `contact_mobile` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `companyname` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `regno` varchar(12) COLLATE utf8_swedish_ci NOT NULL,
  `taxno` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `account1` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `account2` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `minorder` decimal(8,0) NOT NULL,
  `shippment` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'p',
  `shippment_free` decimal(8,2) NOT NULL DEFAULT '0.00',
  `shippment_cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `vatcode` tinyint(1) NOT NULL DEFAULT '1',
  `fixed` char(1) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'y',
  `rebate` int(3) NOT NULL,
  `commission` int(3) NOT NULL,
  `bglogo` varchar(7) COLLATE utf8_swedish_ci NOT NULL,
  `invoice_last` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `shop`
--

INSERT INTO `shop` (`shopid`, `shopurl`, `shopname`, `shortname`, `slogan`, `info`, `logo`, `address`, `postcode`, `city`, `email`, `phone`, `contact`, `contact_email`, `contact_mobile`, `companyname`, `regno`, `taxno`, `account1`, `account2`, `minorder`, `shippment`, `shippment_free`, `shippment_cost`, `vatcode`, `fixed`, `rebate`, `commission`, `bglogo`, `invoice_last`, `status`) VALUES
(1, 'demo', 'BappNet - Demonstration', '', 'BappNet Demo', 'Om', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', 'p', '0.00', '0.00', 1, 'y', 0, 0, '', 0, 1),
(2, 'klubb-baren', 'Klubb Baren', 'KBAR', 'Äkta Energi  För Äkta Vinnare', '#Om oss\r\n\r\n##Genialiskt koncept för skola och föreningsliv!\r\n\r\nKlubb-baren bygger på idén att tillgodose förenings-livets behov av intäkter till sina verksamheter samtidigt som de som motionerar, tränar eller tävlar har behov av god energi, för att få ut maximalt av sin idrott, fritidsaktivitet och även av sitt vardagsliv, såsom arbete och skola.\r\n\r\n###Äkta energi för äkta vinnare\r\n\r\nGod energi är rätt energi- och vätskebalans för att kunna prestera optimalt. God energi får man genom framförallt god kosthållning, väl sammansatt mat och dryck. En väl sammansatt kost innehåller tillräcklig energimängd som täcker kroppens behov av näringsämnen. Basen för god energi är regelbundna måltider och mellanmål av mat och dryck baserade på naturliga råvaror.\r\n\r\n###Viktiga riktlinjer!\r\n\r\nRiksidrottsförbundets kostpolicy tar upp många konkreta tips och uppmaningar. Vid framtagandet av produkter och marknadsföringskoncept, har Klubb-Baren försökt att följa Riksidrottsförbundets riktlinjer och värderingar.\r\n\r\n###Här är ett axplock:\r\n\r\nStimulera till goda matvanor och rätt kost i samband med idrottsutövning.\r\n\r\nSträva efter att ett hälsosamt utbud erbjuds vid idrottens anläggningar.\r\n\r\nVerka för att minska konsumtionen av ”skräpmat”.\r\n\r\nSträva efter samarbete med företag som har hälso- samma produkter och se till att det finns sunda kost- alternativ på arenor som har barn- och ungdomsidrott.\r\n\r\nÖka medvetenheten om betydelsen av språkbruk och attityder kring den aktives matvanor, kropp och vikt.\r\n\r\nÖka kunskapen om mat och tillskott bland ledare, utövare och föräldrar. Tillskott kan aldrig ersätta en väl sammansatt kost.\r\n\r\n###Bra energi och god ekonomi\r\n\r\nVi har gjort det enkelt för föreningar, lag och skolklasser att bli vinnare med Klubb-baren. Genom en smart e-handelslösning på klubb-baren.se är det enkelt att göra en insats för idrotten och andra ideella föreningsverksamheter och skolklasser! Genom en registrering av din förening, lag eller skolklass – öppnas tre möjligheter till intäkter och god energi!\r\n', 'klubb-baren.jpg', 'Gamla Brottkärrsvägen 33', '436 58', 'Hovås', 'info@klubb-baren.se', '031 - 763 20 10', 'Liselotte Harrie', 'liselotte.harrie@c4l.se', '07--1231212', 'Klubb-Baren AB', '556875-9418', '01-556875-9418-01', '98456-8', '554-1234', '400', 'p', '400.00', '50.00', 2, 'y', 20, 30, '#000000', 950665, 0),
(3, 'jb-coffee', 'JB Coffeehouse', 'JBCO', '', 'Om oss\r\n======\r\n\r\nJB Coffeehouse startades 1991 med ett tydligt mål: Att vi Nordbor också ska få avnjuta det bästa kaffet.\r\n\r\nSedan dess har vi med såväl försäljning som utbildning och konsultverksamhet ökat medvetenheten och kvaliteten bland baristor, kaféägare och övriga som verkar inom specialkaffesegmentet. Men inte minst bland kaffeälskare!\r\n\r\nMed lika delar galenskap och passion driver vi företaget enligt grundarens ”pazzione” (en lek med orden för just galenskap och passion på italienska). \r\n\r\nFör det är så vi känner inför såväl en god espresso som gott bryggkaffe och vår mission att möta våra kunders önskan om att servera det bästa kaffet till sig själva och sina gäster.\r\n\r\n', 'jb-coffee.jpg', 'Hammarbacken 10', '191 49 ', 'Sollentuna', 'support@bappnet.se', '', 'Marie Wernerman', '', '', 'JB Coffeehouse AB', '556451806501', '', '5388-4458', '', '259', 'p', '500.00', '49.00', 2, 'y', 20, 30, '#ffffff', 9500276, 0),
(4, 'gaming-gadgets', 'GamingGadgets', 'GAGA', '', '#Om Gaminggadgets\r\n\r\n##Vi Älskar Teknik , Spel och Nördigheter*\r\n\r\nGör du också det? I så fall kommer du uppskatta att vi själva testat och gillar alla produkter vi säljer.\r\n\r\nDet gör nämligen att vi vet att det som vi säljer inte bara fungerar utan är bland det bästa du kan hitta inom varje område, så att du vet att du gör ett bra köp!\r\n\r\nDet gör också så att vi känner till alla våra produkter och mer än gärna svarar på frågor för att hjälpa dig igång med att börja använda det som du har valt att köpa från oss. \r\n\r\n Men det viktigaste av allt är att vi bryr oss något oerhört om varje enskild order och kund. Lägger du en order idag hoppas jag att du kommer att märka det redan imorgon!', 'gaming-gadgets.jpg', 'Varlabergsvägen 10 ', '434 39 ', 'Kungsbacka', 'sebastian.soder@accencea.se', '070-522 13 16', '', ' info@accencea.se', '', 'GamingGadgets Sweden AB ', '559026-9063', '', ' 171-2819 ', '', '1', 'p', '499.00', '49.00', 1, 'y', 0, 20, '#fefefe', 10024, 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `idno` (`idno`),
  ADD KEY `memberid` (`memberid`);

--
-- Index för tabell `group_goal`
--
ALTER TABLE `group_goal`
  ADD PRIMARY KEY (`groupgoalid`),
  ADD KEY `groupid` (`groupid`);

--
-- Index för tabell `group_link`
--
ALTER TABLE `group_link`
  ADD PRIMARY KEY (`grouplinkid`),
  ADD UNIQUE KEY `groupid_member_id` (`groupid`,`memberid`),
  ADD KEY `memberid` (`memberid`);

--
-- Index för tabell `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index för tabell `member_group`
--
ALTER TABLE `member_group`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `ownerid` (`ownerid`);

--
-- Index för tabell `member_oitem`
--
ALTER TABLE `member_oitem`
  ADD PRIMARY KEY (`oitemid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `productid` (`productid`);

--
-- Index för tabell `member_order`
--
ALTER TABLE `member_order`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `shopid` (`shopid`),
  ADD KEY `memberid` (`memberid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `groupid` (`groupid`);

--
-- Index för tabell `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pagename`);

--
-- Index för tabell `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `shopid` (`shopid`);

--
-- Index för tabell `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopid`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT för tabell `group_goal`
--
ALTER TABLE `group_goal`
  MODIFY `groupgoalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `group_link`
--
ALTER TABLE `group_link`
  MODIFY `grouplinkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT för tabell `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10027;
--
-- AUTO_INCREMENT för tabell `member_group`
--
ALTER TABLE `member_group`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT för tabell `member_oitem`
--
ALTER TABLE `member_oitem`
  MODIFY `oitemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT för tabell `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT för tabell `shop`
--
ALTER TABLE `shop`
  MODIFY `shopid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`);

--
-- Restriktioner för tabell `group_link`
--
ALTER TABLE `group_link`
  ADD CONSTRAINT `group_link_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `member_group` (`groupid`),
  ADD CONSTRAINT `group_link_ibfk_2` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`);

--
-- Restriktioner för tabell `member_group`
--
ALTER TABLE `member_group`
  ADD CONSTRAINT `member_group_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `member` (`memberid`);

--
-- Restriktioner för tabell `member_oitem`
--
ALTER TABLE `member_oitem`
  ADD CONSTRAINT `member_oitem_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `member_order` (`orderid`),
  ADD CONSTRAINT `member_oitem_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Restriktioner för tabell `member_order`
--
ALTER TABLE `member_order`
  ADD CONSTRAINT `member_order_ibfk_1` FOREIGN KEY (`shopid`) REFERENCES `shop` (`shopid`),
  ADD CONSTRAINT `member_order_ibfk_2` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`),
  ADD CONSTRAINT `member_order_ibfk_3` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `member_order_ibfk_4` FOREIGN KEY (`groupid`) REFERENCES `member_group` (`groupid`);

--
-- Restriktioner för tabell `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`shopid`) REFERENCES `shop` (`shopid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
