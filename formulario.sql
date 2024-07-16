-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2024 a las 01:03:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `cedulaRUC` varchar(13) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `cedulaRUC`, `telefono`, `fechaNacimiento`, `salario`, `email`, `contrasena`) VALUES
(1, 'Christian', 'Jaramillo', '1719139634', '0989807949', '2024-07-16', 500.00, 'joseabc2023@hotmail.com', '$2y$10$3V9ZvfAuGHsZjli7GpSjHug27XZVN/hb.lggVKoJFzS2Xkx/a7YiC'),
(4, 'Laura', 'Castillo', '1234567896321', '1211113143', '2024-07-16', 600.00, 'Laura@hotmail.com', '$2y$10$F1z6gOJLBV0AWzdZMZqEbODx.px1bKi8R0T5S.g5b2vdFDjChcmuy'),
(5, 'Pedro', 'Castillo', '1741234568', '6417165116', '2024-07-16', 480.00, 'pedro@hotmail.com', '$2y$10$ATkDGq5FJkunNVELrR22sO4hMFQgBpm.5q3FqQpGsfcL2GpETTGWG'),
(6, 'Karina', 'Castillo', '1718965431', '0952341766', '2024-07-16', 580.00, 'karina@hotmail.com', '$2y$10$SzUrSkxoZVrmFjK4hZB/IeuZPiQQRVxA7D7E0z3ihsSXquAEIsvGa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
