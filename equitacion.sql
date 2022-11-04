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


-- Volcando estructura de base de datos para equitacion
CREATE DATABASE IF NOT EXISTS `equitacion` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `equitacion`;

-- Volcando estructura para tabla equitacion.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla equitacion.categorias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.paquetes
CREATE TABLE IF NOT EXISTS `paquetes` (
  `idPaquete` int(11) NOT NULL AUTO_INCREMENT,
  `fechaSalida` datetime NOT NULL,
  `fechaRetorno` datetime NOT NULL,
  `precio` int(11) NOT NULL DEFAULT 0,
  `numeroPlazas` int(11) NOT NULL DEFAULT 0,
  `idPromocion` int(11) NOT NULL DEFAULT 0,
  `idSitio` int(11) NOT NULL DEFAULT 0,
  `idSitio1` int(11) NOT NULL DEFAULT 0,
  `idSitio2` int(11) NOT NULL DEFAULT 0,
  `idSitio3` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idPaquete`),
  UNIQUE KEY `idSitio1` (`idSitio1`),
  UNIQUE KEY `idSitio2` (`idSitio2`),
  UNIQUE KEY `idSitio3` (`idSitio3`),
  KEY `FK_paquete_promocion` (`idPromocion`),
  KEY `FK_paquetes_sitios` (`idSitio`),
  CONSTRAINT `FK_paquete_promocion` FOREIGN KEY (`idPromocion`) REFERENCES `promociones` (`idPromocion`),
  CONSTRAINT `FK_paquetes_sitios` FOREIGN KEY (`idSitio`) REFERENCES `sitios` (`idSitio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.paquetes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
REPLACE INTO `paquetes` (`idPaquete`, `fechaSalida`, `fechaRetorno`, `precio`, `numeroPlazas`, `idPromocion`, `idSitio`, `idSitio1`, `idSitio2`, `idSitio3`) VALUES
	(1, '2017-11-15 00:00:00', '2017-11-24 00:00:00', 250, 30, 1, 1, 0, 0, 0);
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.promociones
CREATE TABLE IF NOT EXISTS `promociones` (
  `idPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `temporada` varchar(50) NOT NULL DEFAULT '0',
  `porcentaje` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.promociones: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
REPLACE INTO `promociones` (`idPromocion`, `temporada`, `porcentaje`) VALUES
	(1, 'Baja', 60),
	(2, 'Baja', 10);
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.reservas
CREATE TABLE IF NOT EXISTS `reservas` (
  `idReserva` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idPaquete` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `FK__paquete` (`idPaquete`),
  CONSTRAINT `FK__paquete` FOREIGN KEY (`idPaquete`) REFERENCES `paquetes` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.reservas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.sitios
CREATE TABLE IF NOT EXISTS `sitios` (
  `idSitio` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `purchase` int(10) DEFAULT NULL,
  `retail` int(10) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`idSitio`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.sitios: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `sitios` DISABLE KEYS */;
REPLACE INTO `sitios` (`idSitio`, `categoria_id`, `nombre`, `descripcion`, `quantity`, `purchase`, `retail`, `foto`) VALUES
	(1, 1, 'limpieza', 'Articulos de limpieza de diferentes marcas tipos tallas para vestir de manera elegante y de una mejor vestimenta para el cliente', 20, 5, 6, 'img/limpieza1.jpg'),
	(4, 1, 'Chamarra de cuerina', 'para las patas del caballo', 20, 5, 6, 'img/20170926_164800.jpg'),
	(5, 2, 'correa nixon', 'Para las patas del caballo', 20, 5, 6, 'img/01 (1).jpg'),
	(6, 2, 'Cabezada', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg'),
	(7, 3, 'Cabezadas de cuero', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg'),
	(8, 1, 'Cabezada', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg\r\n'),
	(9, 1, 'Cabezadas\r\n', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg'),
	(10, 2, 'Montador', 'color cafe', 20, 5, 6, 'img/monto.jpg'),
	(11, 2, 'Montador', 'color blanco, negro', 20, 5, 6, 'img/mo.jpg'),
	(12, 2, 'Manta', 'color rojo, azul, celeste, blanco, cafe, ', 20, 5, 6, 'img/manta.jpg'),
	(13, 2, 'Protector de goma', 'color blanco, negro', 20, 5, 6, 'img/protector.jpg\r\n'),
	(14, 2, 'Funda', 'color blanco', 20, 5, 6, 'img/funda.jpg'),
	(15, 2, 'protector', 'color cafe', 20, 5, 6, 'img/mon.jpg'),
	(16, 2, 'Correas', 'especiales para caballo', 20, 5, 6, 'img/correa.jpg'),
	(17, 2, 'Articulos', 'especiales para caballo', 20, 5, 6, 'img/12.jpg\r\n'),
	(18, 2, 'Protectores', 'de diferentes colores', 20, 5, 6, 'img/protectores.jpg'),
	(20, 3, 'Corbata', 'color blanco', 20, 5, 6, 'img/corbata.jpg'),
	(22, 3, 'Chamarra de cuerina', 'color rojo', 20, 5, 6, 'img/Chompa.jpg\r\n'),
	(23, 3, 'Casco', 'color negro', 20, 5, 6, 'img/casco.jpg\r\n'),
	(24, 3, 'Botas', 'color negro', 20, 5, 6, 'img/bota.jpg\r\n'),
	(25, 3, 'buzos deportivos', 'de varios colores muy elegantes', 20, 5, 6, 'img/buzo.jpg'),
	(27, 3, 'pantalones', 'especiales para jinetes', 20, 5, 6, 'img/pantalon.jpg'),
	(28, 3, 'Pantalones\r\n', 'de diversos colores y modelos', 20, 5, 6, 'img/panta.jpg');
/*!40000 ALTER TABLE `sitios` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.sitios1
CREATE TABLE IF NOT EXISTS `sitios1` (
  `idSitio1` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`idSitio1`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.sitios1: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `sitios1` DISABLE KEYS */;
REPLACE INTO `sitios1` (`idSitio1`, `nombre`, `descripcion`, `foto`) VALUES
	(3, 'Rodilleras', 'color negro', 'img/rodilla.jpg'),
	(4, 'Corbata', 'color blanco', 'img/corbata.jpg'),
	(5, 'Chamarra de cuerina', 'color rojo', 'img/Chompa.jpg'),
	(6, 'Casco', 'color negro', 'img/casco.jpg'),
	(7, 'Botas', 'color negro', 'img/bota.jpg'),
	(8, 'buzos deportivos', 'de varios colores muy elegantes', 'img/buzo.jpg'),
	(9, 'Camisas', 'elegantes de diferentes colores y tallas', 'img/poleras.jpg'),
	(10, 'pantalones', 'especiales para jinetes', 'img/pantalon.jpg'),
	(11, 'Pantalones', 'de diversos colores y modelos', 'img/panta.jpg');
/*!40000 ALTER TABLE `sitios1` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.sitios2
CREATE TABLE IF NOT EXISTS `sitios2` (
  `idSitio2` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`idSitio2`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.sitios2: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `sitios2` DISABLE KEYS */;
REPLACE INTO `sitios2` (`idSitio2`, `nombre`, `descripcion`, `foto`) VALUES
	(1, 'Montador', 'color cafe', 'img/monto.jpg'),
	(2, 'Montador ', 'color blanco, negro', 'img/mo.jpg'),
	(3, 'Manta', 'color rojo, azul, celeste, blanco, cafe, ', 'img/manta.jpg'),
	(4, 'Protector de goma', 'color blanco, negro', 'img/protector.jpg'),
	(5, 'Funda', 'color blanco', 'img/funda.jpg'),
	(6, 'protector', 'color cafe', 'img/mon.jpg'),
	(7, 'Correas', 'especiales para caballo', 'img/correa.jpg'),
	(8, 'Articulos', 'especiales para caballo', 'img/12.jpg'),
	(9, 'Protectores', 'de diferentes colores', 'img/protectores.jpg');
/*!40000 ALTER TABLE `sitios2` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.sitios3
CREATE TABLE IF NOT EXISTS `sitios3` (
  `idSitio3` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`idSitio3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.sitios3: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sitios3` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitios3` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.tipo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
REPLACE INTO `tipo` (`idTipo`, `tipo`) VALUES
	(1, 'Admin'),
	(2, 'Cliente');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

-- Volcando estructura para tabla equitacion.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `ci` varchar(15) NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apPat` varchar(50) NOT NULL DEFAULT '0',
  `apMat` varchar(50) NOT NULL DEFAULT '0',
  `cel` varchar(9) NOT NULL DEFAULT '0',
  `correo` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `FK_usuarios_tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla equitacion.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
REPLACE INTO `usuarios` (`idUsuario`, `ci`, `nombre`, `apPat`, `apMat`, `cel`, `correo`, `password`, `tipo`) VALUES
	(1, '23434', 'juan', 'pere', 'perez', '333', 'j@ejemplo.com', '1234', 2),
	(2, '56456', 'juan', 'perez', 'pares', '4566778', 'juan@ejemplo.com', '789', 2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
