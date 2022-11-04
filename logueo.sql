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


-- Volcando estructura de base de datos para logueo
CREATE DATABASE IF NOT EXISTS `logueo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `logueo`;

-- Volcando estructura para tabla logueo.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Nombre` char(45) NOT NULL,
  `id_usuario` tinyint(1) NOT NULL AUTO_INCREMENT,
  `Contrasena` char(20) NOT NULL,
  `nombre_pagina` char(45) NOT NULL,
  `Nombrereal` varchar(95) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla logueo.usuarios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`Nombre`, `id_usuario`, `Contrasena`, `nombre_pagina`, `Nombrereal`) VALUES
	('mangeles2017', 1, 'marianne', 'Admin', 'Maria de los Ángeles Morales'),
	('mamaruperez', 2, 'sistema', 'Empleado María Amaru', 'Maria Amaru Perez'),
	('ashleymontanio', 3, 'sistema', 'Empleado Ashley Montaño', 'Ashley Montaño'),
	('gabrielafigueroa', 4, 'sistema', 'Empleado Gabriela', 'Gabriela Figueroa');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
