-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2023 a las 21:39:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20813021_byona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_queja` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `queja` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_queja`, `nombre`, `email`, `queja`) VALUES
(1, 'andres', 'andresito@bravo.com', 'q chimba de pagina'),
(2, 'Juan Sebastian Rodríguez', 'sevasyya@gmail.com', 'q gnrr de paginita'),
(3, 'jorge ', 'jdiazgarcia27@gmail.com', 'pene mucho pene si¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¿¿¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡'),
(4, 'jorge ', 'jdiazgarcia27@gmail.com', 'pene mucho pene si¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¿¿¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡'),
(5, 'manuel', 'manuel@gmail.com', '5 estrellas super bueno todo muy caro pero... '),
(6, 'Osiel Ismael Diaz Colina 10°1', '', '5 estrella,cumple lo que dicen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidores`
--

CREATE TABLE `distribuidores` (
  `id_distribuidores` int(100) NOT NULL,
  `precio_entrada` int(100) NOT NULL,
  `precio_final` int(100) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `fecha_llegada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `nombre` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `codpos` varchar(7) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `entrega`
--

INSERT INTO `entrega` (`nombre`, `numero`, `codpos`, `direccion`) VALUES
('jorge ', '1234567', '5555555', 'df324233'),
('', '', '', ''),
('', '', '', ''),
('jorge ', '1234567', '5555555', 'df324233'),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('samuel', '', '', ''),
('daniel', '1236257', '', ''),
('andres grupo 6 4', '3225733904', '', ''),
('andres ', '322573390', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio_venta`
--

CREATE TABLE `envio_venta` (
  `id_envio` int(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `num_contacto` int(100) NOT NULL,
  `distribuidor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(20) NOT NULL,
  `num_fact` int(20) NOT NULL,
  `precio` int(20) NOT NULL,
  `detalles` varchar(100) NOT NULL,
  `descuento` int(20) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(50) NOT NULL,
  `tipo_producto` varchar(100) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `precio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `email`, `pass`, `tipo`) VALUES
(1, 'manuel123', 'manuel123@gmail.com', '1111', 'admin'),
(2, 'messi', 'messi10@gmail.com', '555', 'admin'),
(8, 'mario1412', 'juanpablosalazarrincon1@gmail.com', '7545', 'user'),
(9, 'gallego', 'galle@gmail.com', '666', 'user'),
(12, 'sdsad', 'ssssss@ssss', '1111', 'user'),
(13, 'lionelandresmessicuccittini', 'messi@gmail.com', '12345', 'user'),
(14, 'JUANMELORXD', 'jestebanzabala11@gmail.com', 'juanito123', 'user'),
(15, 'juan', 'juan@gmail.com', '9999', 'user'),
(16, 'cristian', 'crisudo@gmail.com', '1234', 'user'),
(17, 'juanmelor', 'jestebanzabala11@gmail.com', '21991352', 'user'),
(29, '', '', '', 'user'),
(30, 'juanmelorsss', 'asdas@asd.as', '12345', 'user'),
(31, 'juanchosx', 'asij9w21dasdsq@asf', 'kdsnfwifwn', 'user'),
(32, 'juancho', 'juancho@iejose.com', '12345', 'user'),
(33, 'elpendejo123', 'elpendejo123422@gmail.com', '922331203685', 'user'),
(34, 'mariajose_moratt0', 'morratiiooparra@gmail.com', '12345678910qwertyuiop', 'user'),
(35, 'juancho123', 'laurasofiaagudelo25@gmail.com', 'aedf', 'user'),
(36, 'juancho45', 'asij9w21dasdsq@asf', '111', 'user'),
(37, 'cristiano', 'freefiremadra@gmail', '03052010', 'user'),
(38, 'santy', 'santy@gmail.com', 'SAN07250306', 'user'),
(39, 'juancho6666', 'laurasofiaagudelo25@gmail.com', 'SADF', 'user'),
(40, 'messi777', 'laurasofiaagudelo25@gmail.com', '111', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_queja`);

--
-- Indices de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD PRIMARY KEY (`id_distribuidores`);

--
-- Indices de la tabla `envio_venta`
--
ALTER TABLE `envio_venta`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_queja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  MODIFY `id_distribuidores` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `envio_venta`
--
ALTER TABLE `envio_venta`
  MODIFY `id_envio` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
