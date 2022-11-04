-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2017 a las 00:52:50
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `equitacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE IF NOT EXISTS `paquetes` (
  `idPaquete` int(11) NOT NULL,
  `fechaSalida` datetime NOT NULL,
  `fechaRetorno` datetime NOT NULL,
  `precio` int(11) NOT NULL DEFAULT '0',
  `numeroPlazas` int(11) NOT NULL DEFAULT '0',
  `idPromocion` int(11) NOT NULL DEFAULT '0',
  `idSitio` int(11) NOT NULL DEFAULT '0',
  `idSitio1` int(11) NOT NULL DEFAULT '0',
  `idSitio2` int(11) NOT NULL DEFAULT '0',
  `idSitio3` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`idPaquete`, `fechaSalida`, `fechaRetorno`, `precio`, `numeroPlazas`, `idPromocion`, `idSitio`, `idSitio1`, `idSitio2`, `idSitio3`) VALUES
(1, '2017-11-15 00:00:00', '2017-11-24 00:00:00', 250, 30, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE IF NOT EXISTS `promociones` (
  `idPromocion` int(11) NOT NULL,
  `temporada` varchar(50) NOT NULL DEFAULT '0',
  `porcentaje` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`idPromocion`, `temporada`, `porcentaje`) VALUES
(1, 'Baja', 60),
(2, 'Baja', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `idReserva` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idPaquete` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios`
--

CREATE TABLE IF NOT EXISTS `sitios` (
  `idSitio` int(11) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `purchase` int(10) DEFAULT NULL,
  `retail` int(10) DEFAULT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sitios`
--

INSERT INTO `sitios` (`idSitio`, `categoria_id`, `nombre`, `descripcion`, `quantity`, `purchase`, `retail`, `foto`) VALUES
(1, 1, 'limpiezaasd asd as', 'Articulos de limpieza de diferentes marcas tipos tallas para vestir de manera elegante y de una mejor vestimenta para el cliente', 20, 5, 6, 'img/limpieza1.jpg'),
(4, 1, 'Limpieza', 'paralas patas del caballo asd as', 20, 5, 6, 'img/20170926_164800.jpg'),
(5, 2, 'correa nixonas das das', 'Para las patas del caballo', 20, 5, 6, 'img/01 (1).jpg'),
(6, 2, 'Cabezada', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg'),
(7, 3, 'Cabezadaas das dasd', 'Hay de adiestramiento y de salto', 20, 5, 6, 'img/20170926_163107.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios1`
--

CREATE TABLE IF NOT EXISTS `sitios1` (
  `idSitio1` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sitios1`
--

INSERT INTO `sitios1` (`idSitio1`, `nombre`, `descripcion`, `foto`) VALUES
(3, 'Rodilleras', 'color negro', 'img/rodilla.jpg'),
(4, 'Corbata', 'color blanco', 'img/corbata.jpg'),
(5, 'Chamarra de cuerina', 'color rojo', 'img/Chompa.jpg'),
(6, 'Casco', 'color negro', 'img/casco.jpg'),
(7, 'Botas', 'color negro', 'img/bota.jpg'),
(8, 'buzos deportivos', 'de varios colores muy elegantes', 'img/buzo.jpg'),
(9, 'Camisas', 'elegantes de diferentes colores y tallas', 'img/poleras.jpg'),
(10, 'pantalones', 'especiales para jinetes', 'img/pantalon.jpg'),
(11, 'Pantalones', 'de diversos colores y modelos', 'img/panta.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios2`
--

CREATE TABLE IF NOT EXISTS `sitios2` (
  `idSitio2` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sitios2`
--

INSERT INTO `sitios2` (`idSitio2`, `nombre`, `descripcion`, `foto`) VALUES
(1, 'Montador', 'color cafe', 'img/monto.jpg'),
(2, 'Montador ', 'color blanco, negro', 'img/mo.jpg'),
(3, 'Manta', 'color rojo, azul, celeste, blanco, cafe, ', 'img/manta.jpg'),
(4, 'Protector de goma', 'color blanco, negro', 'img/protector.jpg'),
(5, 'Funda', 'color blanco', 'img/funda.jpg'),
(6, 'protector', 'color cafe', 'img/mon.jpg'),
(7, 'Correas', 'especiales para caballo', 'img/correa.jpg'),
(8, 'Articulos', 'especiales para caballo', 'img/12.jpg'),
(9, 'Protectores', 'de diferentes colores', 'img/protectores.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios3`
--

CREATE TABLE IF NOT EXISTS `sitios3` (
  `idSitio3` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE IF NOT EXISTS `tipo` (
  `idTipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idTipo`, `tipo`) VALUES
(1, 'Admin'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `ci` varchar(15) NOT NULL DEFAULT '0',
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apPat` varchar(50) NOT NULL DEFAULT '0',
  `apMat` varchar(50) NOT NULL DEFAULT '0',
  `cel` varchar(9) NOT NULL DEFAULT '0',
  `correo` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `ci`, `nombre`, `apPat`, `apMat`, `cel`, `correo`, `password`, `tipo`) VALUES
(1, '23434', 'juan', 'pere', 'perez', '333', 'j@ejemplo.com', '1234', 2),
(2, '56456', 'juan', 'perez', 'pares', '4566778', 'juan@ejemplo.com', '789', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`idPaquete`), ADD UNIQUE KEY `idSitio1` (`idSitio1`), ADD UNIQUE KEY `idSitio2` (`idSitio2`), ADD UNIQUE KEY `idSitio3` (`idSitio3`), ADD KEY `FK_paquete_promocion` (`idPromocion`), ADD KEY `FK_paquetes_sitios` (`idSitio`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`idPromocion`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`), ADD KEY `FK__paquete` (`idPaquete`);

--
-- Indices de la tabla `sitios`
--
ALTER TABLE `sitios`
  ADD PRIMARY KEY (`idSitio`);

--
-- Indices de la tabla `sitios1`
--
ALTER TABLE `sitios1`
  ADD PRIMARY KEY (`idSitio1`);

--
-- Indices de la tabla `sitios2`
--
ALTER TABLE `sitios2`
  ADD PRIMARY KEY (`idSitio2`);

--
-- Indices de la tabla `sitios3`
--
ALTER TABLE `sitios3`
  ADD PRIMARY KEY (`idSitio3`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`), ADD UNIQUE KEY `correo` (`correo`), ADD KEY `FK_usuarios_tipo` (`tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `idPaquete` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `idPromocion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sitios`
--
ALTER TABLE `sitios`
  MODIFY `idSitio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `sitios1`
--
ALTER TABLE `sitios1`
  MODIFY `idSitio1` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `sitios2`
--
ALTER TABLE `sitios2`
  MODIFY `idSitio2` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sitios3`
--
ALTER TABLE `sitios3`
  MODIFY `idSitio3` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paquetes`
--
ALTER TABLE `paquetes`
ADD CONSTRAINT `FK_paquete_promocion` FOREIGN KEY (`idPromocion`) REFERENCES `promociones` (`idPromocion`),
ADD CONSTRAINT `FK_paquetes_sitios` FOREIGN KEY (`idSitio`) REFERENCES `sitios` (`idSitio`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
ADD CONSTRAINT `FK__paquete` FOREIGN KEY (`idPaquete`) REFERENCES `paquetes` (`idPaquete`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
