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


-- Volcando estructura de base de datos para marianne
CREATE DATABASE IF NOT EXISTS `marianne` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `marianne`;

-- Volcando estructura para tabla marianne.adquiere
CREATE TABLE IF NOT EXISTS `adquiere` (
  `fecha_compra` datetime DEFAULT NULL,
  `cant_prendas` tinyint(3) DEFAULT NULL,
  `observacion` varchar(130) DEFAULT NULL,
  `idadq` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idadq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.adquiere: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `adquiere` DISABLE KEYS */;
REPLACE INTO `adquiere` (`fecha_compra`, `cant_prendas`, `observacion`, `idadq`) VALUES
	('2017-08-15 09:05:00', 30, '\'Ninguno\'', 1),
	('2017-05-14 11:45:01', 15, '\'Ninguna\'', 2),
	('2017-08-13 09:50:00', 10, 'vendas elasticas falta', 3);
/*!40000 ALTER TABLE `adquiere` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(8) NOT NULL AUTO_INCREMENT,
  `appaterno` varchar(25) DEFAULT NULL,
  `apmaterno` varchar(25) DEFAULT NULL,
  `direccionc` varchar(50) DEFAULT NULL,
  `telefonoc` varchar(10) DEFAULT NULL,
  `reservan` varchar(95) DEFAULT NULL,
  `pedido` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.cliente: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`id_cliente`, `appaterno`, `apmaterno`, `direccionc`, `telefonoc`, `reservan`, `pedido`) VALUES
	(1, 'Cavero', 'Nuñez', 'Calle Loayza Miraflores #124', '2229890', 'Fusta', 1),
	(2, 'Flores', 'Rivero', 'Calle Yanacocha Miraflores #130', '2249090', 'Fusta', 2),
	(3, 'Flores', 'Rivero', 'Calle Yanacocha Miraflores #130', '2249090', 'Fusta', 2),
	(4, 'Vargas', 'Terceros', 'Calle 5 Irpavi #6060', '2254812', 'Fusta', 3),
	(5, 'Gutiérrez', 'Borora', 'Calle 7 Irpavi #6160', '2724156', 'Fusta', 2),
	(6, 'Rojas', 'Gareca', 'Calle 10 Bolognia #5041', '2724150', 'Fusta para niños', 1),
	(7, 'Mamani', 'Mamani', 'Calle Aspiazu Sopocachi #4540', '2234512', 'Fusta para niños', 2),
	(8, 'Rodríguez', 'Veltzé', 'Avenida Brasil Sopocachi #2021', '2564185', 'Fusta para niños', 2),
	(9, 'López', 'Choque', 'Calle 10 Obrajes #4556', '2305214', 'Fusta para niños', 2),
	(10, 'Quispe', 'Feliciano', 'Calle 26 Chasquipampa #3052', '2415262', 'Fusta para niños', 2),
	(11, 'Fernandez', 'Yucra', 'Calle Kennedy Sopocachi #3052', '2458512', 'Cabezada normal', 1),
	(12, 'Gonzáles', 'Pinto', 'Avenida Soler Obrajes #1212', '2254414', 'Cabezada normal', 2),
	(13, 'Pérez', 'Jota', 'Calle Ecuador Miraflores #4150', '2458917', 'Cabezada normal', 2),
	(14, 'Benavidez', 'Llajuita', 'La callejuela de las brujas #3451', '2256412', 'Cabezada normal', 1),
	(15, 'Flores', 'Vargas', 'Av. Figueroa', '2246472', 'Cabezada normal', 2),
	(16, 'Gutiérrez', 'Rojas', 'Av. Figueroa', '2248472', 'Cabezada normal', 2),
	(17, 'Mamani', 'Rodríguez', 'Av. Santa Cruz', '2245672', 'Cabezada normal', 2),
	(18, 'López', 'Quispe', 'Av. Santa Cruz', '2212372', 'Cabezada normal', 2),
	(19, 'Fernández', 'Gonsales', 'Av. Armani', '2212362', 'Cabezada inglesa', 1),
	(20, 'Pérez', 'Garcia', 'Av. Calatayud', '2712362', 'Cabezada norma', 3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.color
CREATE TABLE IF NOT EXISTS `color` (
  `id_color` tinyint(2) NOT NULL AUTO_INCREMENT,
  `color` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.color: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
REPLACE INTO `color` (`id_color`, `color`) VALUES
	(1, 'Blanco'),
	(2, 'Mostaza'),
	(3, 'rosado'),
	(4, 'rojo'),
	(5, 'negro'),
	(6, 'negro');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.conforma
CREATE TABLE IF NOT EXISTS `conforma` (
  `cod_producto` int(4) DEFAULT NULL,
  `id_lote` smallint(3) DEFAULT NULL,
  `cod_proveedor` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.conforma: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `conforma` DISABLE KEYS */;
REPLACE INTO `conforma` (`cod_producto`, `id_lote`, `cod_proveedor`) VALUES
	(5, 2, 1),
	(4, 1, 1),
	(3, 2, 1),
	(2, 1, 1),
	(1, 4, 2);
/*!40000 ALTER TABLE `conforma` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` smallint(2) NOT NULL AUTO_INCREMENT,
  `telefono1` varchar(10) DEFAULT NULL,
  `telefono2` varchar(10) DEFAULT NULL,
  `cod_proveedor` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.contacto: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
REPLACE INTO `contacto` (`id_contacto`, `telefono1`, `telefono2`, `cod_proveedor`) VALUES
	(1, '7254863', '7451256', 1),
	(2, '7205941', '7201548', 2),
	(3, '7154682', NULL, 3);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `ide_empleado` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_pat` varchar(50) DEFAULT NULL,
  `apellido_mat` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contrasena` varchar(10) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `rol` smallint(2) DEFAULT NULL,
  `pasadmin` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ide_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.empleado: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
REPLACE INTO `empleado` (`ide_empleado`, `nombre`, `apellido_pat`, `apellido_mat`, `correo`, `usuario`, `contrasena`, `telefono`, `rol`, `pasadmin`) VALUES
	(1, 'Sheyla', 'Paredes', 'Urquiola', 'ashleyp@gmail.com', 'ashley', 'sistema', '2245614', 2, NULL),
	(2, 'María', 'Domínguez', 'Pérez', 'mariadp@hotmail.com', 'mariad', 'sistema', '2214565', 2, NULL),
	(3, 'María', 'De los Ángeles', 'Morales', 'marianneangel@hotmail.com', 'mariaangeles2017', 'marianne', '2251485', 1, 'marianne');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.lote
CREATE TABLE IF NOT EXISTS `lote` (
  `nro_lotes` smallint(3) DEFAULT NULL,
  `cod_producto` int(4) DEFAULT NULL,
  `id_lote` smallint(3) NOT NULL AUTO_INCREMENT,
  `ide_empleado` tinyint(2) DEFAULT NULL,
  `cod_proveedor` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.lote: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
REPLACE INTO `lote` (`nro_lotes`, `cod_producto`, `id_lote`, `ide_empleado`, `cod_proveedor`) VALUES
	(2, 6, 1, 1, 1),
	(1, 5, 2, 1, 1),
	(1, 4, 3, 1, 1),
	(2, 1, 4, 2, 2);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `id_marca` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.marca: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
REPLACE INTO `marca` (`id_marca`, `nombre_marca`) VALUES
	(1, 'QLP'),
	(2, 'Hermanos Gómez'),
	(3, 'kruuse'),
	(4, 'chadog');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.material
CREATE TABLE IF NOT EXISTS `material` (
  `id_material` tinyint(2) NOT NULL AUTO_INCREMENT,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.material: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
REPLACE INTO `material` (`id_material`, `material`) VALUES
	(1, 'Poliuretano'),
	(3, 'Cuero'),
	(6, 'microfibra'),
	(7, 'forro polar'),
	(8, 'vet flex'),
	(9, 'alfombra tela extra fuerte');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.precios
CREATE TABLE IF NOT EXISTS `precios` (
  `id_precio` tinyint(2) NOT NULL AUTO_INCREMENT,
  `preciocompra` float(5,2) DEFAULT NULL,
  `precioventa` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.precios: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
REPLACE INTO `precios` (`id_precio`, `preciocompra`, `precioventa`) VALUES
	(1, 25.00, 32.00),
	(2, 20.00, 30.00),
	(3, 169.00, 175.00),
	(4, 150.00, 165.00),
	(5, 7.00, 10.00),
	(6, 18.00, 19.00),
	(7, 73.00, 80.00),
	(8, 123.00, 135.00);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `cod_producto` int(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(40) DEFAULT NULL,
  `subtipo` varchar(60) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL,
  `talla` varchar(20) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `nombre_producto` varchar(90) DEFAULT NULL,
  `estado` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`cod_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.producto: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
REPLACE INTO `producto` (`cod_producto`, `tipo`, `subtipo`, `material`, `cantidad`, `talla`, `fecha_alta`, `nombre_producto`, `estado`) VALUES
	(1, 'Saltos', NULL, 'Poliuretano', 20, 'M', NULL, 'Fusta', 'bueno'),
	(2, 'Saltos', NULL, 'Poliuretano', 10, 'M', NULL, 'Fusta para niños', 'bueno'),
	(3, NULL, NULL, 'Cuero', 5, '45', NULL, 'Cabezada normal', 'dañado'),
	(4, NULL, NULL, 'Cuero', 5, '55', NULL, 'Cabezada inglesa', 'bueno'),
	(5, 'Limpieza', NULL, 'microfibra', 10, 'XL', NULL, 'Toalla', 'dañado'),
	(6, NULL, NULL, 'forro polar', 2, 'S', NULL, 'venda de descanso', 'bueno'),
	(7, NULL, NULL, 'vet flex', 3, '7x450 cm', NULL, 'venda elástica de descanso', 'bueno'),
	(8, 'impermeables', NULL, 'alfombra tela extra fuerte', 2, 'XL', NULL, 'capa impermeable', 'bueno');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `cod_proveedor` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(30) DEFAULT NULL,
  `direccionp` varchar(65) DEFAULT NULL,
  `nombre_empresa` varchar(60) DEFAULT NULL,
  `correoe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.proveedor: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
REPLACE INTO `proveedor` (`cod_proveedor`, `nombre_proveedor`, `direccionp`, `nombre_empresa`, `correoe`) VALUES
	(1, 'Guillermo Paredes', 'Calle Pasoskanqui Av. Estados Unidos #3545', 'Caballos S.R.L.', 'guilpar1@hotmail.com'),
	(2, 'Eduardo Pessoa', 'Av Pablo Sanchez Irpavi Calle #5', 'Oscar Pro', 'edupessoa@hotmail.com'),
	(3, 'Derek Nichols', 'Av. Vera Irpavi Calle #3', 'Goris', 'derenick@hotmail.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla marianne.reserva
CREATE TABLE IF NOT EXISTS `reserva` (
  `nro_venta` int(4) NOT NULL AUTO_INCREMENT,
  `cantidad` int(2) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `cod_producto` int(4) DEFAULT NULL,
  `id_cliente` int(8) DEFAULT NULL,
  PRIMARY KEY (`nro_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla marianne.reserva: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
REPLACE INTO `reserva` (`nro_venta`, `cantidad`, `fecha_venta`, `cod_producto`, `id_cliente`) VALUES
	(1, 2, '2017-08-05', 2, 1),
	(2, 1, '2017-08-06', 5, 2),
	(3, 1, '2017-08-07', 3, 3),
	(4, 2, '2017-08-07', 4, 1),
	(5, 1, '2017-08-07', 4, 2);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
