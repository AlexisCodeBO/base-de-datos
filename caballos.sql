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


-- Volcando estructura de base de datos para caballos
CREATE DATABASE IF NOT EXISTS `caballos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `caballos`;

-- Volcando estructura para tabla caballos.adquiere
CREATE TABLE IF NOT EXISTS `adquiere` (
  `fecha_compra` datetime DEFAULT NULL,
  `cant_prendas` tinyint(3) DEFAULT NULL,
  `observacion` varchar(130) DEFAULT NULL,
  `idadq` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idadq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.adquiere: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `adquiere` DISABLE KEYS */;
REPLACE INTO `adquiere` (`fecha_compra`, `cant_prendas`, `observacion`, `idadq`) VALUES
	('2017-08-15 09:05:00', 30, '\'Ninguno\'', 1),
	('2017-05-14 11:45:01', 15, '\'Ninguna\'', 2),
	('2017-08-13 09:50:00', 10, 'vendas elasticas falta', 3);
/*!40000 ALTER TABLE `adquiere` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(8) NOT NULL AUTO_INCREMENT,
  `appaterno` varchar(25) DEFAULT NULL,
  `apmaterno` varchar(25) DEFAULT NULL,
  `direccionc` varchar(50) DEFAULT NULL,
  `telefonoc` varchar(10) DEFAULT NULL,
  `reservan` varchar(95) DEFAULT NULL,
  `pedido` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.cliente: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
REPLACE INTO `cliente` (`id_cliente`, `appaterno`, `apmaterno`, `direccionc`, `telefonoc`, `reservan`, `pedido`) VALUES
	(2, 'Flores', 'Flores', 'Calle Yanacocha Miraflores #130', '2249090', 'Fusta', 2),
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
	(19, 'Fernández', 'Gonsales', 'Av. Armani', '2212362', 'Cabezada inglesa', 1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.color
CREATE TABLE IF NOT EXISTS `color` (
  `id_color` tinyint(2) NOT NULL AUTO_INCREMENT,
  `color` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.color: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
REPLACE INTO `color` (`id_color`, `color`) VALUES
	(1, 'rojo'),
	(2, 'amarillo'),
	(3, 'azul'),
	(4, 'morado'),
	(5, 'verde'),
	(6, 'cafe'),
	(7, 'blanco'),
	(8, 'negro');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.conforma
CREATE TABLE IF NOT EXISTS `conforma` (
  `id_lote` smallint(6) NOT NULL AUTO_INCREMENT,
  `codigo_producto` int(11) DEFAULT NULL,
  `cod_proveedor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_lote`),
  KEY `codigo_producto` (`codigo_producto`),
  CONSTRAINT `codigo_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `producto` (`cod_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.conforma: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conforma` DISABLE KEYS */;
/*!40000 ALTER TABLE `conforma` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` smallint(2) NOT NULL AUTO_INCREMENT,
  `telefono1` varchar(10) DEFAULT NULL,
  `telefono2` varchar(10) DEFAULT NULL,
  `cod_proveedor` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.contacto: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
REPLACE INTO `contacto` (`id_contacto`, `telefono1`, `telefono2`, `cod_proveedor`) VALUES
	(1, '7254863', '7451256', 1),
	(2, '7205941', '7201548', 2),
	(3, '7154682', NULL, 3);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.empleado
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.empleado: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
REPLACE INTO `empleado` (`ide_empleado`, `nombre`, `apellido_pat`, `apellido_mat`, `correo`, `usuario`, `contrasena`, `telefono`, `rol`, `pasadmin`) VALUES
	(2, 'Maria', 'Dominguez', 'Perez', 'mariadp@hotmail.com', 'mariad', 'sistema', '2214565', 2, NULL),
	(3, 'Maria', 'De los Angeles', 'Morales', 'marianneangel@hotmail.com', 'mariaangeles2017', 'marianne', '2251485', 1, 'marianne'),
	(4, NULL, 'Ruiz', '', 'ashiruiz@gmail.com', 'Ashley', 'sistema', NULL, NULL, NULL),
	(6, NULL, 'FernÃ¡ndez', 'GastÃ³n', 'doro.teo@hotmail.com', 'Doroteo', 'sistema', NULL, NULL, NULL);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.lote
CREATE TABLE IF NOT EXISTS `lote` (
  `nro_lotes` smallint(6) DEFAULT NULL,
  `id_lote` smallint(6) NOT NULL AUTO_INCREMENT,
  `ide_empleado` tinyint(4) DEFAULT NULL,
  `cod_proveedor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.lote: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
REPLACE INTO `lote` (`nro_lotes`, `id_lote`, `ide_empleado`, `cod_proveedor`) VALUES
	(2, 1, 1, 1),
	(1, 2, 1, 1),
	(1, 3, 1, 1),
	(2, 4, 2, 2);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `id_marca` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.marca: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
REPLACE INTO `marca` (`id_marca`, `nombre_marca`) VALUES
	(1, 'QLP'),
	(2, 'Hermanos Gómez'),
	(3, 'carisur'),
	(4, 'elpla');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.material
CREATE TABLE IF NOT EXISTS `material` (
  `id_material` tinyint(2) NOT NULL AUTO_INCREMENT,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.material: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
REPLACE INTO `material` (`id_material`, `material`) VALUES
	(1, 'hierro'),
	(2, 'madera'),
	(3, 'algodón'),
	(5, 'goma'),
	(6, 'cuerina'),
	(7, 'poliuretano'),
	(8, 'cuero'),
	(9, 'tela');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.precios
CREATE TABLE IF NOT EXISTS `precios` (
  `id_precio` int(3) NOT NULL AUTO_INCREMENT,
  `preciocompra` float(5,2) DEFAULT NULL,
  `cod_producto` int(4) DEFAULT NULL,
  `precioventa` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_precio`),
  KEY `cod_producto` (`cod_producto`),
  CONSTRAINT `cod_producto` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`cod_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.precios: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
REPLACE INTO `precios` (`id_precio`, `preciocompra`, `cod_producto`, `precioventa`) VALUES
	(1, 25.00, 7, 32.00),
	(2, 20.00, 4, 30.00),
	(3, 169.00, 8, 175.00),
	(4, 150.00, 14, 165.00),
	(5, 7.00, 15, 10.00),
	(6, 18.00, 17, 19.00),
	(7, 73.00, 16, 80.00),
	(8, 123.00, 4, 135.00),
	(9, 50.00, 3, 60.00),
	(10, 60.00, 6, 65.00),
	(11, 70.50, 18, 75.20),
	(12, 85.10, 19, 100.00);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `cod_producto` int(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(40) DEFAULT NULL,
  `id_color` tinyint(2) DEFAULT NULL,
  `id_material` tinyint(2) DEFAULT NULL,
  `id_marca` tinyint(2) DEFAULT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `talla` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_producto`),
  KEY `id_color` (`id_color`),
  KEY `id_material` (`id_material`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `id_color` FOREIGN KEY (`id_color`) REFERENCES `color` (`id_color`),
  CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `id_material` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.producto: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
REPLACE INTO `producto` (`cod_producto`, `tipo`, `id_color`, `id_material`, `id_marca`, `nombre_producto`, `estado`, `descripcion`, `foto`, `talla`) VALUES
	(1, 'jinete', 7, 1, 3, 'Fusta', 'bueno', 'colores rojo, azul, blanco, negro', 'img/fusta1.jpg', 'M, L'),
	(2, 'jinete', 8, 2, 3, 'Fusta para niños', 'bueno', 'color negro', 'img/fusta2.jpg', 'S, M'),
	(3, 'caballo', 7, 8, 3, 'Cabezada normal', 'bueno', 'color blanco', 'img/fusta3.jpg', 'M, L'),
	(4, 'caballo', 7, 8, 4, 'Cabezada inglesa', 'bueno', 'de varios colores muy elegantes', 'img/fusta4.jpg', 'M, L'),
	(5, 'jinete', 7, 9, 4, 'Toalla', 'bueno', 'elegantes de diferentes colores y tallas', 'img/toalla.jpg', 'S,M,L'),
	(6, 'caballo', 2, 9, 4, 'venda de descanso', 'bueno', 'especiales para caballos', 'img/descvendas.jpg', 'M'),
	(7, 'caballo', 2, 9, 4, 'venda elástica de descanso', 'bueno', 'especiales para caballos', 'img/elasvenda.jpg', 'M'),
	(8, 'caballo', 2, 9, 4, 'capa impermeable', 'bueno', 'especiales', 'img/funda.jpg', 'M, L'),
	(9, 'jinete', 2, 9, 2, 'Sombrero #40', 'bueno', 'especiales', 'img/jinete.jpg', 'M, L'),
	(10, 'jinete', 3, 5, 2, 'Guantes', 'bueno', 'de diferentes colores', 'img/guante.jpg', 'S, M , L'),
	(11, 'jinete', 3, 5, 2, 'Rodilleras', 'bueno', 'muy cómodos', 'img/rodilla.jpg', 'M, L'),
	(12, 'jinete', 3, 9, 2, 'Corbata', 'dañado', 'con estilo', 'img/corbata.jpg', 'L'),
	(13, 'jinete', 3, 9, 2, 'Chamarra de cuerina', 'bueno', 'con estilo', 'img/Chompa.jpg', 'L'),
	(14, 'jinete', 3, 7, 2, 'Casco', 'bueno', 'cómodos', 'img/casco.jpg', 'L'),
	(15, 'jinete', 3, 8, 2, 'Botas', 'bueno', 'cómodos', 'img/bota.jpg', 'M, L'),
	(16, 'jinete', 7, 9, 1, 'buzos deportivos', 'bueno', 'cómodos', 'img/buzo.jpg', 'M, L'),
	(17, 'jinete', 6, 9, 1, 'Camisas', 'bueno', 'elegantes de diferentes colores y tallas', 'img/poleras.jpg', 'M, L'),
	(18, 'jinete', 6, 9, 3, 'pantalones', 'bueno', 'especiales para jinetes', 'img/pantalon.jpg', 'S'),
	(19, 'jinete', 4, 5, 3, 'Pantalones', 'bueno', 'de diversos colores y modelos}', 'img/panta.jpg', 'M,L');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `cod_proveedor` tinyint(2) NOT NULL AUTO_INCREMENT,
  `id_marca` tinyint(2) NOT NULL DEFAULT 0,
  `nombre_proveedor` varchar(30) DEFAULT NULL,
  `direccionp` varchar(65) DEFAULT NULL,
  `nombre_empresa` varchar(60) DEFAULT NULL,
  `correoe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.proveedor: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
REPLACE INTO `proveedor` (`cod_proveedor`, `id_marca`, `nombre_proveedor`, `direccionp`, `nombre_empresa`, `correoe`) VALUES
	(1, 0, 'Guillermo Paredes', 'Calle Pasoskanqui Av. Estados Unidos #3545', 'Caballos S.R.L.', 'guilpar1@hotmail.com'),
	(2, 0, 'Eduardo Pessoa', 'Av Pablo Sanchez Irpavi Calle #5', 'Oscar Pro', 'edupessoa@hotmail.com'),
	(3, 0, 'Derek Nichols', 'Av. Vera Irpavi Calle #3', 'Goris', 'derenick@hotmail.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla caballos.reserva
CREATE TABLE IF NOT EXISTS `reserva` (
  `nro_venta` int(4) NOT NULL AUTO_INCREMENT,
  `cantidad` int(2) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `cod_producto` int(4) DEFAULT NULL,
  `id_cliente` int(8) DEFAULT NULL,
  PRIMARY KEY (`nro_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla caballos.reserva: ~5 rows (aproximadamente)
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
