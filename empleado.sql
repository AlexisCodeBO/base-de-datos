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


-- Volcando estructura de base de datos para empleado
CREATE DATABASE IF NOT EXISTS `empleado` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `empleado`;

-- Volcando estructura para tabla empleado.datos_empleado
CREATE TABLE IF NOT EXISTS `datos_empleado` (
  `ide` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contraseña` varchar(10) DEFAULT NULL,
  `Contacto1` int(8) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empleado.datos_empleado: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `datos_empleado` DISABLE KEYS */;
REPLACE INTO `datos_empleado` (`ide`, `nombre`, `usuario`, `contraseña`, `Contacto1`, `correo`) VALUES
	(1, 'María Amaru Pérez', 'mamaruperez', 'sistema', 72548621, 'mariaa@hotmail.com'),
	(2, 'Ashley Montaño', 'ashleymontanio', 'sistema', 75145285, 'ashely18@hotmail.com'),
	(3, 'Gabriela Figueroa', 'gabrielafigueroa', 'sistema', 75623141, 'gabifig@hotmail.com');
/*!40000 ALTER TABLE `datos_empleado` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
