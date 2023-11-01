-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2023 a las 00:02:34
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
-- Base de datos: `ejerciciophp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_autos`
--

CREATE TABLE `modelos_autos` (
  `id_autos` int(10) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `año` int(10) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelos_autos`
--

INSERT INTO `modelos_autos` (`id_autos`, `marca`, `modelo`, `año`, `estado`) VALUES
(0, 'RENAULT', 'STEPWAY', 2023, 'NUEVO'),
(1, 'PEUGEOT', 'EXPLORER', 2020, 'USADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `provincia` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nombre`, `apellido`, `edad`, `fecha`, `provincia`) VALUES
(5, 'DANIEL', 'ROCHA', 37, '2023-10-23 17:15:00', 'BUENOS AIRES'),
(6, 'JOSE', 'ZAPATA', 39, '2023-10-23 17:15:00', 'Buenos Aires'),
(7, 'PEPE', 'RODRIGUEZ', 30, '2023-10-23 17:15:07', 'MAR DEL PLATA'),
(8, 'COSME', 'FULANITO', 28, '2023-10-23 17:15:07', 'LA PAMPA'),
(9, 'ALEJANDRO', 'ZAPATA', 40, '2023-10-23 17:16:01', 'LA PLATA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `modelos_autos`
--
ALTER TABLE `modelos_autos`
  ADD PRIMARY KEY (`id_autos`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
