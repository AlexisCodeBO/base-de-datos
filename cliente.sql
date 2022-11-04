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


-- Volcando estructura de base de datos para cliente
CREATE DATABASE IF NOT EXISTS `cliente` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cliente`;

-- Volcando estructura para tabla cliente.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apaternoc` varchar(25) DEFAULT NULL,
  `amaternoc` varchar(25) DEFAULT NULL,
  `direccionc` varchar(55) DEFAULT NULL,
  `telefonoc` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cliente.cliente: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`id`, `apaternoc`, `amaternoc`, `direccionc`, `telefonoc`) VALUES
	(1, 'Cavero', 'Nuñez', 'Calle Loayza Miraflores #124', 2229890),
	(2, 'Flores', 'Rivero', 'Calle Yanacocha Miraflores #130', 2249090),
	(3, 'Flores', 'Rivero', 'Calle Yanacocha Miraflores #130', 2249090),
	(4, 'Vargas', 'Terceros', 'Calle 5 Irpavi #6060', 2254812),
	(5, 'Gutiérrez', 'Borora', 'Calle 7 Irpavi #6160', 2724156),
	(6, 'Rojas', 'Gareca', 'Calle 10 Bolognia #5041', 2724150),
	(7, 'Mamani', 'Mamani', 'Calle Aspiazu Sopocachi #4540', 2234512),
	(8, 'Rodríguez', 'Veltzé', 'Avenida Brasil Sopocachi #2021', 2564185),
	(9, 'López', 'Choque', 'Calle 10 Obrajes #4556', 2305214),
	(10, 'Quispe', 'Feliciano', 'Calle 26 Chasquipampa #3052', 2415262),
	(11, 'Fernandez', 'Yucra', 'Calle Kennedy Sopocachi #3052', 2458512),
	(12, 'Gonzáles', 'Pinto', 'Avenida Soler Obrajes #1212', 2254414),
	(13, 'Pérez', 'Jota', 'Calle Ecuador Miraflores #4150', 2458917);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
