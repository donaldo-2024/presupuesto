-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2024 a las 01:01:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `presupuesto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `telefono`, `email`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Juana Ines', 'Beltran De Los Palotes', '04121090185', 'rebeca.quevedo08@outlook.com', '$2y$10$MCmUfLdWOKmasvejCXlkHejIqyJRLlAZTFKRzKztC18KYG22JxpOm', 1, '2024-09-03 00:00:00', '2024-09-04 00:00:00', NULL),
(8, 'Erika Maria', 'Fernandez Brito', '04121090185', 'erikab644@gmail.com', '$2y$10$Hh.wZisdtpX61zm/MyT5ceIjwa6eY/wQR3d/i2t76q6CzLXq0v3Ci', NULL, NULL, NULL, NULL),
(9, 'Kati Marry', 'Brito Quevedo', '04121090185', 'mundo.pc3@gmail.com', '$2y$10$v5XkvmfBh847Jb1IWXFlJ.yVbKzvFwJxzxYeerTm9np8EIMYszy82', NULL, NULL, NULL, NULL),
(10, 'Erika Maria', 'Fernandez Brito', '04121090185', 'yosoyproferika@gmail.com', '$2y$10$8wy8SIkiGv7Mr.zAvxlrDeR/D09QUfh1xdXQECdXLuIWG4PA2ZCpO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_presupuesto`
--

CREATE TABLE `detalle_presupuesto` (
  `id_detalle` int(11) NOT NULL,
  `id_presupuesto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre_mueble` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `producto1` varchar(100) DEFAULT NULL,
  `precio1` decimal(10,0) DEFAULT NULL,
  `producto2` varchar(100) DEFAULT NULL,
  `precio2` decimal(10,0) DEFAULT NULL,
  `producto3` varchar(100) DEFAULT NULL,
  `precio3` decimal(10,0) DEFAULT NULL,
  `producto4` varchar(100) DEFAULT NULL,
  `precio4` decimal(10,0) DEFAULT NULL,
  `producto5` varchar(100) DEFAULT NULL,
  `precio5` decimal(10,0) DEFAULT NULL,
  `precio6` decimal(10,0) DEFAULT NULL,
  `transporte` float NOT NULL,
  `descuento` float NOT NULL,
  `cond_pago` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tentrega` datetime NOT NULL,
  `garantia` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `statusmueble` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_presupuesto`
--

INSERT INTO `detalle_presupuesto` (`id_detalle`, `id_presupuesto`, `id_usuario`, `nombre_mueble`, `producto1`, `precio1`, `producto2`, `precio2`, `producto3`, `precio3`, `producto4`, `precio4`, `producto5`, `precio5`, `precio6`, `transporte`, `descuento`, `cond_pago`, `tentrega`, `garantia`, `subtotal`, `total`, `statusmueble`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 3, 'Mesa 4 Silla de Madera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750, 5, '50% para iniciar el mueble y 25% en la segunda fase y 25% al finalizar', '2024-09-27 00:00:00', '2 Años', 1275, 2025, 1, '2024-09-06 00:00:00', '2024-09-06 00:00:00', NULL),
(7, 2, 3, 'Sillas De Caoba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 740, 5, '50% para iniciar el mueble y 50% al finalizar', '2024-09-06 00:00:00', '2 Años', 1275, 1500, 1, '2024-09-06 00:00:00', '2024-09-06 00:00:00', NULL),
(8, 2, 3, 'Sillas De Caoba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, '50% para iniciar el mueble y 50% al finalizar', '2024-09-13 00:00:00', '2 Años', 1275, 1500, 1, '2024-09-06 00:00:00', NULL, NULL),
(9, 9, 3, 'Sillas De Caoba', 'Lamina de MDF', 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700, 5, '50% para iniciar el inmueble y 50% finalizado el inmueble', '2024-10-01 00:00:00', '2 Años', 79792.6, 75803, 1, '2024-10-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuest`
--

CREATE TABLE `presupuest` (
  `id_presupuesto` int(11) NOT NULL,
  `imagen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_tela` int(11) DEFAULT NULL,
  `id_madera` int(11) DEFAULT NULL,
  `id_cuero` int(11) DEFAULT NULL,
  `alto` float NOT NULL,
  `ancho` float NOT NULL,
  `profundidad` float NOT NULL,
  `acabado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presupuest`
--

INSERT INTO `presupuest` (`id_presupuesto`, `imagen`, `cliente_id`, `material`, `id_tela`, `id_madera`, `id_cuero`, `alto`, `ancho`, `profundidad`, `acabado`, `color`, `ubicacion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'images/580b57fcd9996e24bc43c27e.png', 4, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', 1, '2024-08-31 00:00:00', NULL, NULL),
(2, 'images/580b57fcd9996e24bc43c26b.png', 4, 'Caoba', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', 1, '2024-08-31 00:00:00', NULL, NULL),
(3, 'images/580b57fcd9996e24bc43c26a.png', 4, 'Caoba', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', 1, '2024-08-31 00:00:00', NULL, NULL),
(4, 'images/580b57fcd9996e24bc43c26a_3.png', 5, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-06 00:00:00', NULL, NULL),
(5, 'images/580b57fcd9996e24bc43c27e (1).png', 8, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-06 00:00:00', NULL, NULL),
(6, 'images/580b57fcd9996e24bc43c27e (1)_1.png', 5, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-06 00:00:00', NULL, NULL),
(7, 'images/580b57fcd9996e24bc43c26a_4.png', 5, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-26 00:00:00', NULL, NULL),
(8, 'images/580b57fcd9996e24bc43c27e (1)_2.png', 5, 'Madera', NULL, NULL, NULL, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-26 00:00:00', NULL, NULL),
(9, 'images/580b57fcd9996e24bc43c27e_1.png', 8, 'Madera', NULL, 4, 10, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-09-30 00:00:00', NULL, NULL),
(10, 'images/580b57fcd9996e24bc43c27e (1)_3.png', 5, 'Madera', 9, 4, 10, 45.6, 74, 0, 'Barniz', 'Marrón', 'Cocina', NULL, '2024-10-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `nombre_producto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_producto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo_producto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio_producto` float NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ancho` float DEFAULT NULL,
  `alto` float DEFAULT NULL,
  `profundidad` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_proveedor`, `nombre_producto`, `img_producto`, `tipo_producto`, `precio_producto`, `observacion`, `status`, `color`, `ancho`, `alto`, `profundidad`, `peso`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'Lamina de Cedro', 'images/roble_4.jpeg', 'Madera Maciza', 1478, 'Pagar en entrega', 1, 'Marrón', 74, 45.6, 0, 3.5, '2024-09-05 00:00:00', NULL, NULL),
(5, 1, 'Pega Liquida', 'images/pegamadera.jpeg', 'Líquidos', 250, 'Pega Liquida para madera', 1, 'Blanco', 0, 0, 0, 500, '2024-09-30 00:00:00', NULL, NULL),
(6, 1, 'Barniz', 'images/barniz.jpeg', 'Líquidos', 145.52, '', 1, 'Marrón', 0, 0, 0, 500, '2024-09-30 00:00:00', NULL, NULL),
(7, 1, 'Clavos grandes', 'images/clavos grandes.jpeg', 'Metal', 1478.23, '', 1, 'Metal', 0, 37, 0, 1000, '2024-09-30 00:00:00', NULL, NULL),
(8, 1, 'Lamina de MDF', 'images/mdf.jpeg', 'Madera MDF', 34789.2, '', 1, 'Marrón', 1785, 4006, 0, 0, '2024-09-30 00:00:00', NULL, NULL),
(9, 1, 'Tela Poliester', 'images/tela poliester.jpeg', 'Telas', 1478.23, '', 1, 'Azul Oscuro', 1000, 1000, 0, 0, '2024-09-30 00:00:00', NULL, NULL),
(10, 1, 'Semi Cuero', 'images/cuero_1.jpeg', 'Cuero', 2500.25, '', 1, 'Azul', 1000, 1000, 0, 0, '2024-09-30 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `logo_proveedor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_representante` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_empresa` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `logo_proveedor`, `nombre_representante`, `nombre_empresa`, `telefono`, `email`, `direccion`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'images/pokemon_3.png', 'Eugenia Buendía', 'PokeTienda', '04121090186', 'mundo.pc3@yahoo.com', 'Ciudad Guayana', 1, '2024-09-04 00:00:00', '2024-09-04 00:00:00', '0000-00-00 00:00:00'),
(3, 'images/figura2.png', 'Carla Herrera', 'MapachesMadera', '04121090185', 'erikab644@gmail.com', '186.185.42.186', 1, '2024-09-04 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `telefono`, `email`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Maria Efe', 'Quevedo Coba', '04878728241', 'rebeca.quevedo08@outlook.com', '$2y$10$UN3jt4cUYEFuoPGNWm.99.PykhowNmYUM45W/aEyx15Dz2w31KD5K', 0, NULL, '2024-09-04 00:00:00', NULL),
(4, 'Juana Ines', 'Beltran De Los Palotes', '04121090185', 'yosoyproferika@gmail.com', '$2y$10$ONe.GUNbePNck.BEnufHWeI2JRV9mI26AYDGP.vag/CXNyejetFaW', 1, NULL, NULL, NULL),
(12, 'Ana Maria', 'Musk Garcia', '04121090185', 'anamuk@gmail.com', '$2y$10$NckW7RS93OFZRAJ6SwU40eTr1tAB.KXUiMJtj.WtUoP52GkWuvg0O', 1, '2024-09-14 00:00:00', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_presupuesto`
--
ALTER TABLE `detalle_presupuesto`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `fk_presupuestoid` (`id_presupuesto`),
  ADD KEY `fk_usuarioid` (`id_usuario`);

--
-- Indices de la tabla `presupuest`
--
ALTER TABLE `presupuest`
  ADD PRIMARY KEY (`id_presupuesto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_proveedor_id` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_presupuesto`
--
ALTER TABLE `detalle_presupuesto`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `presupuest`
--
ALTER TABLE `presupuest`
  MODIFY `id_presupuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_presupuesto`
--
ALTER TABLE `detalle_presupuesto`
  ADD CONSTRAINT `fk_presupuestoid` FOREIGN KEY (`id_presupuesto`) REFERENCES `presupuest` (`id_presupuesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarioid` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_proveedor_id` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
