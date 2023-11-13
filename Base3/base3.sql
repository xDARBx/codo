-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 00:32:31
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
-- Base de datos: `base3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `dni` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `apellidos`) VALUES
('21644125', 'Valeria', 'Rojas'),
('32132112', 'Daniel', 'Rojas'),
('32145678', 'David', 'Fernandez'),
('35722478', 'Jorge', 'Perez'),
('44235363', 'Susana', 'Rosas'),
('45612325', 'Juan', 'Perez'),
('45677589', 'Cecilia', 'Santos'),
('54654785', 'Leonardo', 'Lopez'),
('74555678', 'Sabrina', 'Alvarez'),
('78925612', 'Oscar', 'Gomez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `concepto` varchar(20) NOT NULL,
  `clientes_dni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `concepto`, `clientes_dni`) VALUES
(1, 'consumidor', '44235363'),
(2, 'mayorista', '35722478'),
(3, 'mayorista', '45612325'),
(4, 'consumidor', '45677589'),
(5, 'mayorista', '45612325'),
(6, 'consumidor', '32145678'),
(7, 'minorista', '74555678'),
(8, 'consumidor', '45612325'),
(9, 'mayorista', '35722478'),
(10, 'consumidor', '45677589');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineascompra`
--

CREATE TABLE `lineascompra` (
  `numero` int(20) NOT NULL,
  `compras_id` int(20) NOT NULL,
  `producto` varchar(20) NOT NULL,
  `importe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineascompra`
--

INSERT INTO `lineascompra` (`numero`, `compras_id`, `producto`, `importe`) VALUES
(1, 1, 'alfajor pepe', 250),
(2, 2, 'alfajor lala', 100.5),
(3, 3, 'galletitas rolo', 200),
(4, 4, 'galletita salax', 500.75),
(5, 5, 'galletitas pepin', 220.5),
(6, 6, 'chocolate pato', 320.75),
(7, 7, 'aceite pirulin', 440.3),
(8, 8, 'jugo ting', 100.65),
(9, 9, 'yerba nene', 600.45),
(10, 10, 'alfajor pepa', 100.5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_dni` (`clientes_dni`);

--
-- Indices de la tabla `lineascompra`
--
ALTER TABLE `lineascompra`
  ADD PRIMARY KEY (`numero`,`compras_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id`) REFERENCES `lineascompra` (`compras_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
