-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.2.3-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para dbpos
CREATE DATABASE IF NOT EXISTS `dbpos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbpos`;

-- Volcando estructura para tabla dbpos.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dbpos.customers: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `name`, `contact`, `address`, `note`) VALUES
	(7, 'Walk in Customers', 'na', 'na', 'na'),
	(8, 'Paolo Asoy', '09456465465', 'Quezon City', 'na'),
	(9, 'Carl Moneda', '09431215641', 'Valenzuela', 'na'),
	(10, 'Ian Estabaya', '09644164565', 'Quezon City', 'na'),
	(11, 'Jun Magayanes', '09641513561', 'Malabon', 'na'),
	(12, 'Platea21', 'Gorchor', 'Peru', 'Hola');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Volcando estructura para tabla dbpos.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` int(11) NOT NULL,
  `retail` int(11) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`category`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dbpos.products: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `category`, `name`, `quantity`, `purchase`, `retail`, `supplier`) VALUES
	(21, '1', 'limpieza', 16, 5, 6, 'carisur'),
	(22, '2', 'funda', 20, 5, 6, 'Street Quek2x'),
	(23, '3', 'corbata', 20, 5, 6, 'Stick Fishing ball'),
	(24, '2', 'Montador', 20, 5, 6, 'Stick Fishing ball'),
	(25, '2', 'Protector de goma', 20, 5, 6, 'kakanin atb.'),
	(26, '2', 'Montador', 20, 5, 6, 'hermanos gomez'),
	(27, '2', 'protector', 20, 5, 6, 'hermanos gomez'),
	(28, '3', 'Casco', 20, 5, 6, 'Oscar Pro'),
	(29, '3', 'Botas', 20, 5, 6, 'Oscar Pro'),
	(30, '3', 'Chamarra de cuerina', 20, 5, 6, 'Oscar Pro'),
	(31, '2', 'Manta', 20, 5, 6, 'Oscar Pro'),
	(32, '2 ', 'Protectores\r\n', 20, 5, 6, 'Oscar Pro'),
	(33, '3', 'Pantalones', 20, 5, 6, 'carisur'),
	(34, '3', 'buzos deportivos', 20, 5, 6, 'carisur'),
	(35, '2', 'Correas', 20, 5, 6, 'carisur'),
	(36, '2', 'Articulos', 20, 5, 6, 'carisur'),
	(37, '3', 'pantalones', 20, 5, 6, 'carisur'),
	(38, '2', 'Cabezada', 20, 5, 6, 'carisur'),
	(39, '3', 'Cabezada de cuero', 20, 5, 6, 'carisur'),
	(40, '1', 'Cabezada', 20, 5, 6, 'carisur'),
	(41, '1', 'Cabezadas de cuero', 20, 5, 6, 'carisur'),
	(42, '1', 'Chamarra de cuerina', 20, 5, 6, 'carisur'),
	(43, '2', 'correa nixon', 20, 5, 6, 'carisur');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla dbpos.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates` date NOT NULL,
  `customers` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amnt` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `tendered` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dbpos.sales: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
REPLACE INTO `sales` (`id`, `dates`, `customers`, `category`, `name`, `amnt`, `quantity`, `total`, `profit`, `tendered`, `changed`) VALUES
	(1, '2015-11-13', 'Walk in Customers', '1', 'Chamarra de cuerina', 5, 3, 15, 6, 20, 5),
	(2, '2015-11-13', 'Platea21', '2', 'Correa nixon', 5, 1, 5, 2, 5, 0),
	(3, '2017-12-15', 'Walk in Customers', '2', 'Cabezada', 4, 1, 4, 0, 0, 0),
	(4, '2017-12-15', 'Walk in Customers', '2', 'Cabezadas de cuero', 4, 1, 4, 0, 0, 0),
	(5, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 6, 24, 0, 0, 0),
	(6, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 5, 20, 0, 0, 0),
	(7, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 5, 20, 0, 0, 0),
	(8, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 5, 20, 0, 0, 0),
	(9, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 20, 80, 0, 0, 0),
	(10, '2017-12-15', 'Walk in Customers', 'Finger Food', 'Beta max', 4, 5, 20, 0, 0, 0),
	(13, '2017-12-15', 'Walk in Customers', '1', 'limpiezaasd asd as', 6, 5, 30, 0, 0, 0),
	(14, '2017-12-15', 'Walk in Customers', '1', 'limpiezaasd asd as', 6, 5, 30, 0, 0, 0),
	(15, '2017-12-15', 'Walk in Customers', '1', 'limpiezaasd asd as', 6, 5, 30, 0, 0, 0),
	(16, '2017-12-15', 'Walk in Customers', '1', 'Chamarra de cuerina', 6, 1, 6, 0, 0, 0),
	(17, '2017-12-15', 'Walk in Customers', '1', 'limpieza', 6, 2, 12, 0, 0, 0),
	(18, '2017-12-15', 'Walk in Customers', '1', 'Chamarra de cuerina', 6, 3, 18, 0, 0, 0);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla dbpos.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliername` varchar(100) NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dbpos.supplier: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
REPLACE INTO `supplier` (`id`, `suppliername`, `contactperson`, `address`, `contactno`, `note`) VALUES
	(13, 'Mangboks betamax', 'Juli Sanjuan', 'Malabon', '09215454654', 'na'),
	(14, 'Siomai tbp.', 'Jezzy Jaime', 'Caloocan', '09646454564', 'na'),
	(15, 'Stick Fishing ball', 'Nardo Besoza', 'Valenzuela', '06365465446', 'na'),
	(16, 'kakanin atb.', 'Loui Cruz', 'Pasay', '09634654654', 'na'),
	(17, 'Street Quek2x', 'Nilo Cruz', 'Pasig', '09765464164', 'na');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- Volcando estructura para tabla dbpos.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dbpos.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`userid`, `username`, `password`, `access`) VALUES
	(1, 'admin', 'admin', 'Admin'),
	(2, 'usuario', 'usuario', 'Salesperson');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
