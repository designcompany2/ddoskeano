-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-04-2019 a las 01:45:43
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rippsource`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actions`
--

DROP TABLE IF EXISTS `actions`;
CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `admin` varchar(64) NOT NULL,
  `client` varchar(64) NOT NULL,
  `action` varchar(6444) NOT NULL,
  `date` int(21) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addbalance`
--

DROP TABLE IF EXISTS `addbalance`;
CREATE TABLE IF NOT EXISTS `addbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `date` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `adminemail` varchar(56) NOT NULL,
  `method` varchar(15) NOT NULL,
  `status` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addbalance`
--

INSERT INTO `addbalance` (`id`, `username`, `date`, `email`, `adminemail`, `method`, `status`) VALUES
(1, 'OWNER', 1542959056, 'test@sss.sss', 'cmpcar90@gmail.com', '', 0),
(2, 'OWNER', 1542959254, 'test@sss.ss', 'cmpcar90@gmail.com', '', 0),
(3, 'OWNER', 1542959854, 'testing@ripx.com', 'cmpcar90@gmail.com', 'PayPal', 0),
(4, 'OWNER', 1554007642, 'tessdd@ssss.ss', 'cmpcar90@gmail.com', 'PayPal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `private` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addons`
--

INSERT INTO `addons` (`ID`, `name`, `vip`, `unit`, `length`, `price`, `private`) VALUES
(4, 'ViP Network', 1, 'Month', 1, 20, 0),
(3, '1 Concurrent', 1, 'Month', 1, 20, 0),
(7, '1 Servers per attack', 1, 'Month', 1, 45, 0),
(8, '2000 Seconds', 1, 'Month', 1, 20, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api`
--

DROP TABLE IF EXISTS `api`;
CREATE TABLE IF NOT EXISTS `api` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `api` varchar(1024) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(2000) NOT NULL,
  `vip` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastUsed` int(32) NOT NULL,
  `lastip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `api`
--

INSERT INTO `api` (`id`, `name`, `api`, `slots`, `methods`, `vip`, `status`, `lastUsed`, `lastip`) VALUES
(239, 'TESTING API', 'http://19.2.1.2/apirip.php?host=[host]&port=[port]&time=[time]&method=[method]&key=ripxsystemapixds', 4, 'LDAP D-II AVZ WINSYN', 1, 0, 0, '1.2.3.4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE IF NOT EXISTS `blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blacklist`
--

INSERT INTO `blacklist` (`ID`, `data`, `type`) VALUES
(11, '127.0.0.1', 'victim'),
(4, '192.168.1.1', 'victim'),
(5, '192.168.0.1', 'victim'),
(32, 'http://rip-stresser.com', 'victim'),
(33, 'https://rip-stresser.com', 'victim'),
(34, 'http://ripstresser.com', 'victim'),
(35, 'https://ripstresser.com', 'victim'),
(36, 'http://ripstresser.com/login.php', 'victim'),
(37, 'https://ripstresser.com/login.php', 'victim'),
(38, 'http://ripstresser.com/', 'victim'),
(39, 'https://ripstresser.com/index.php', 'victim'),
(40, 'http://ripstresser.com/index.php', 'victim'),
(41, 'https://ripstresser.com/header.php', 'victim'),
(42, 'http://ripstresser.com/header.php', 'victim'),
(54, '217.182.15.32', 'victim'),
(49, '54.36.212.129', 'victim'),
(51, '192.168.0.10', 'victim'),
(52, '::1', 'victim'),
(53, '79.147.75.254', 'victim'),
(55, '217.182.15.32', 'victim'),
(58, '176.97.239.188', 'victim'),
(61, '83.55.186.227', 'victim'),
(62, '177.236.28.113', 'victim'),
(63, '59.56.111.253', 'victim'),
(64, '59.56.19.222', 'victim'),
(65, '103.95.221.87', 'victim');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dailygift`
--

DROP TABLE IF EXISTS `dailygift`;
CREATE TABLE IF NOT EXISTS `dailygift` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `gift` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dailygift`
--

INSERT INTO `dailygift` (`ID`, `number`, `gift`) VALUES
(1, 2, '$1'),
(2, 4, '$2'),
(3, 7, '$3'),
(4, 9, '$4'),
(5, 11, '$5'),
(6, 18, '$6'),
(7, 23, '$7'),
(8, 29, '$8'),
(9, 33, '$9'),
(10, 40, '$10'),
(12, 55, '$10'),
(13, 60, '$10'),
(18, 100, '$10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dailygiftwon`
--

DROP TABLE IF EXISTS `dailygiftwon`;
CREATE TABLE IF NOT EXISTS `dailygiftwon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(6, 'Refound ?', 'Usually no since we pay for bandwidth, but if it\'s a fair reason such as \r\ndowntime or heavy mistakes on our part we will either compensate you \r\nwith added days or refund you.\r\n\r\n'),
(7, 'SISTEM VIP RULES', 'VIP is only allow for VPNs, NFOs and HOTSPOTS, WHY? Cuz home connections are super easy to take down \r\nand it only takes about 50Mbps to take down a home connection so is pointless to use vip on a home connection, \r\nand we also pay lots of money for vip Bandwidth so we will like to keep the power for when is need it, We also added \r\na system that will detects HOME connections and VPN connections, so if you send a VIP attack to a HOME connection \r\nyou will get a warning and you have 10 seconds to stop the attack and use none vip, also if you dont stop the attack \r\nthe second time your attack button will be disabled for 24 hours.'),
(9, 'REFOUND SISTEM [IMPORTANT]', 'Opening a chargeback without asking for any help will result in termination of your account\r\nwith no refund.\r\n\r\nWe have a system to win the disputes.'),
(10, 'INPORTANT 100% : responsibility', 'We are not responsible for any of your malicious uses, This web was not created to harm anyone at any time if we have serious problems We will suspend your account forever and you will not be able to buy more in this web. Thanks'),
(11, 'VIP FOR HOME IPS', 'if you make 5 vip attacks to an ip of home / home / no antiddos you will deactivate the vip of your plan!, You do not need vip power to make a house ip down\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giftlogs`
--

DROP TABLE IF EXISTS `giftlogs`;
CREATE TABLE IF NOT EXISTS `giftlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(65) NOT NULL,
  `amount` varchar(5) NOT NULL,
  `date` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `giftlogs`
--

INSERT INTO `giftlogs` (`id`, `user`, `amount`, `date`) VALUES
(2, 'OWNER', '$1', 1542381515),
(3, 'OWNER', '$1', 1542381560),
(4, 'OWNER', '$1', 1542381651),
(5, 'OWNER', '$1', 1542381662),
(6, 'OWNER', '$1', 1542295534),
(7, 'iLxSioNz', '$6', 1542378729),
(8, 'Mrghost', '$4', 1542464990),
(9, 'StayDropping', '$2', 1542477400),
(10, 'Acileq', '$7', 1542489929),
(11, 'rogerioth13', '$1', 1542603511),
(12, 'jackson1', '$10', 1542657203),
(13, 'BTC40', '$9', 1542711905),
(14, 'reueasd32', '$5', 1542769485),
(15, 'kuky14lf', '$8', 1542771642),
(16, 'physcocfw', '$1', 1542835999),
(17, 'mrexyboot', '$2', 1542909583),
(18, 'OWNER', '$5', 1544563258),
(19, 'OWNER', '$1', 1549885705);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginlogss`
--

DROP TABLE IF EXISTS `loginlogss`;
CREATE TABLE IF NOT EXISTS `loginlogss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `results` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(500) NOT NULL,
  `hostname` varchar(500) NOT NULL,
  `http` varchar(800) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logins_failed`
--

DROP TABLE IF EXISTS `logins_failed`;
CREATE TABLE IF NOT EXISTS `logins_failed` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_history`
--

DROP TABLE IF EXISTS `login_history`;
CREATE TABLE IF NOT EXISTS `login_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) NOT NULL,
  `password` text NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date` int(16) NOT NULL,
  `status` text NOT NULL,
  `platform` varchar(512) DEFAULT NULL,
  `method` text NOT NULL,
  `country` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(15) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `port` int(5) NOT NULL,
  `time` int(4) NOT NULL,
  `method` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `chart` varchar(255) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT '0',
  `handler` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `totalservers` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `date` int(20) NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `methods`
--

DROP TABLE IF EXISTS `methods`;
CREATE TABLE IF NOT EXISTS `methods` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `type` varchar(6) NOT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=880 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `methods`
--

INSERT INTO `methods` (`id`, `name`, `fullname`, `type`) VALUES
(859, 'XSYSTEM', 'XSYSTEM [Servers]', 'vips'),
(857, 'SYNACKW', 'SYNACKW', 'vips'),
(856, 'DIE', 'DIE', 'tcp'),
(855, 'ESPV2', 'ESPV2', 'vips'),
(854, 'XSYSTEM', 'XSYSTEM', 'layer4'),
(853, 'LDAP', 'LDAP', 'udp'),
(851, 'ALK_SYNTOX', 'ALK_SYNTOX', 'vips'),
(850, 'ALK_SGHOST', 'ALK_SGHOST', 'vips'),
(849, 'ALK_ACK', 'ALK_ACK', 'vips'),
(848, 'ALK_SYN', 'ALK_SYN', 'vips'),
(876, 'SYN9', 'SYN9 [Servers]', 'vips'),
(875, 'GREENSYN', 'GREENSYN [Servers]', 'vips'),
(871, 'L2TP', 'L2TP [Layer2]', 'vips'),
(864, 'PROWIN', 'PROWIN', 'vips'),
(872, 'BLUESYN', 'BLUESYN [Servers]', 'udp'),
(873, 'IPCOMP', 'IPCOMP [	IP Payload]', 'vips'),
(868, 'D-II', 'D-II [Servers]', 'tcp'),
(874, 'AVZ', 'AVZ [Servers]', 'tcp'),
(877, 'WINSYN', 'WINSYN [Servers]', 'tcp'),
(878, 'RIPXGRE', 'RIPXGRE [Gre Protoco', 'tcp'),
(879, 'pc', 'pc', 'layer7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metod`
--

DROP TABLE IF EXISTS `metod`;
CREATE TABLE IF NOT EXISTS `metod` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `api` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`ID`, `color`, `icon`, `title`, `content`, `date`) VALUES
(105, 'bg-success', 'fa fa-rocket', 'Methods', 'In 24-48h we will have new methods', 1527706105),
(106, 'bg-warning', 'fa fa-paypal', 'Plans', 'All users were deactivated plans for a database error if you had plan contact with admin on livechat or discoord.', 1527736480),
(104, 'bg-danger', 'fa fa-check', 'Error DataBase', 'For an error many users were lost if you are one of them contact with admin on discoord or livechat to recover your plan thanks :)\r\n', 1527698722),
(107, 'bg-danger', 'fa fa-fighter-jet', 'FREE HUB', 'This week the free hub will be added', 1528645041),
(108, 'bg-success', 'fa fa-server', 'New Method ovhgame', 'New method OVHGAME --If you attack with method ovh a home ip you will be banned and it will not be refound money good day ;)', 1528759931),
(109, 'bg-primary', 'fa fa-bolt', 'Method for OVH PRO VIP', 'Method OVHPRO For vips added', 1528841912),
(110, 'bg-success', 'fa fa-space-shuttle', 'OVH METHOD', 'Added new method ovh game only down 70% OVHs', 1528890163),
(112, 'bg-danger', 'fa fa-bolt', 'Methods', 'Added New methods ALK For ViP Users', 1528974523),
(113, 'bg-secondary', 'fa fa-close', 'OVH METHOD', 'OVH METHOD IN MAINTECE 24-48H', 1529241103),
(115, 'bg-primary', 'fa fa-check', 'Discount', '30% Discount in LIFETIME: LiFeTiMe Gold Only This Week', 1529495614),
(116, 'bg-secondary', 'fa fa-server', 'xddd', 'test', 1542119796),
(117, 'bg-primary', 'fa fa-fighter-jet', 'new verison of rip-protocol!!', 'New source, New Methods, New Servers, More Power!! --this week will be added more methods and servers and lifetime plans back!', 1542223394),
(118, 'bg-danger', 'fa fa-server', 'Servers', 'All Servers down for error in my hosting.', 1542434709),
(119, 'bg-primary', 'fa fa-server', 'Servers Online now!', 'All servers online now!', 1542604376),
(120, 'bg-success', 'fa fa-bolt', 'test2222 x', 'testing', 1554007773);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` text NOT NULL,
  `planID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` text NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `api` int(1) NOT NULL DEFAULT '0',
  `totalservers` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`ID`, `name`, `vip`, `mbt`, `unit`, `length`, `price`, `concurrents`, `private`, `api`, `totalservers`) VALUES
(1, 'test', 1, 1200, 'Month', 1, 120, 1, 0, 1, 2),
(2, 'test', 1, 120, 'Years', 1, 120, 1, 0, 1, 1),
(3, 'test', 1, 120, 'Month', 5, 120, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `report` varchar(644) NOT NULL,
  `date` int(64) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `sitename` varchar(1024) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cooldown` int(11) NOT NULL,
  `cooldownTime` int(11) NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `bitcoin` varchar(50) NOT NULL,
  `maintaince` varchar(100) NOT NULL,
  `rotation` int(1) NOT NULL DEFAULT '0',
  `system` varchar(7) NOT NULL,
  `testboots` int(1) NOT NULL,
  `key` varchar(100) NOT NULL,
  `issuerId` varchar(50) NOT NULL,
  `coinpayments` varchar(50) NOT NULL,
  `ipnSecret` varchar(100) NOT NULL,
  `google_site` varchar(644) NOT NULL,
  `google_secret` varchar(644) NOT NULL,
  `btc_address` varchar(64) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `paypal_email` varchar(64) NOT NULL,
  `cloudflare_set` int(1) NOT NULL,
  `bootername_1` varchar(30) NOT NULL,
  `bootername_2` varchar(30) NOT NULL,
  `giftchances` int(5) NOT NULL,
  `giftsystem` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `key` (`key`),
  KEY `sitename` (`sitename`(767))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`sitename`, `url`, `description`, `cooldown`, `cooldownTime`, `paypal`, `bitcoin`, `maintaince`, `rotation`, `system`, `testboots`, `key`, `issuerId`, `coinpayments`, `ipnSecret`, `google_site`, `google_secret`, `btc_address`, `secretKey`, `paypal_email`, `cloudflare_set`, `bootername_1`, `bootername_2`, `giftchances`, `giftsystem`) VALUES
('RiP-Protocol', 'https://rip-protocol.com/', 'Welcome To ripstresser', 0, 1540382151, '1', '1', '', 0, 'api', 0, '', '', '', '123453923Ansuiaj19msA', '', '', '', '', '', 0, 'RiP', 'Protocol', 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smtpsettings`
--

DROP TABLE IF EXISTS `smtpsettings`;
CREATE TABLE IF NOT EXISTS `smtpsettings` (
  `host` text NOT NULL,
  `auth` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `port` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `priority` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `lastreply` varchar(10) NOT NULL,
  `read` int(1) NOT NULL DEFAULT '0',
  `time` int(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tos`
--

DROP TABLE IF EXISTS `tos`;
CREATE TABLE IF NOT EXISTS `tos` (
  `archive` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(65) NOT NULL,
  `receiver` varchar(65) NOT NULL,
  `amountsent` int(65) NOT NULL,
  `date` int(15) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `membership` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `balance` varchar(255) NOT NULL DEFAULT '0',
  `activity` int(64) NOT NULL DEFAULT '0',
  `atime` int(11) NOT NULL,
  `aserv` int(11) NOT NULL,
  `aconcu` int(11) NOT NULL,
  `avip` int(11) NOT NULL,
  `lastip` varchar(20) NOT NULL,
  `lastlogin` int(11) NOT NULL,
  `lastact` int(11) NOT NULL,
  `security_question` varchar(200) NOT NULL,
  `answer_question` varchar(200) NOT NULL,
  `ip_address` varchar(35) NOT NULL,
  `ip_address_api` varchar(25) NOT NULL,
  `log_redirect` varchar(60) NOT NULL,
  `code_account` varchar(5) NOT NULL,
  `code` varchar(15) NOT NULL,
  `reset` varchar(15) NOT NULL,
  `dailygiftdate` int(11) NOT NULL,
  `apikey` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
