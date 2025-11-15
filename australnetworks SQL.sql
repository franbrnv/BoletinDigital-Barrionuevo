-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2025 a las 00:43:01
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
-- Base de datos: `australnetworks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curso_id` int(11) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `orientacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curso_id`, `nombre_curso`, `orientacion`) VALUES
(1, '7mo 1ra', 'Tecnica'),
(2, '7mo 2da', 'Tecnica'),
(3, '7mo 3ra', 'Tecnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_materia`
--

CREATE TABLE `curso_materia` (
  `curso_materia_id` int(11) NOT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso_materia`
--

INSERT INTO `curso_materia` (`curso_materia_id`, `curso_id`, `materia_id`) VALUES
(11, 1, 1),
(12, 1, 2),
(13, 1, 3),
(14, 1, 4),
(15, 1, 5),
(16, 1, 6),
(17, 1, 7),
(18, 1, 8),
(19, 1, 9),
(20, 1, 10),
(21, 2, 1),
(22, 2, 2),
(23, 2, 3),
(24, 2, 4),
(25, 2, 5),
(26, 2, 6),
(27, 2, 7),
(28, 2, 8),
(29, 2, 9),
(30, 2, 10),
(31, 3, 1),
(32, 3, 2),
(33, 3, 3),
(34, 3, 4),
(35, 3, 5),
(36, 3, 6),
(37, 3, 7),
(38, 3, 8),
(39, 3, 9),
(40, 3, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `materia_id` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`materia_id`, `nombre_materia`) VALUES
(1, 'Matemáticas'),
(2, 'Inglés Técnico'),
(3, 'Marco Jurídico'),
(4, 'Asistencia 2'),
(5, 'Autogestión'),
(6, 'Hardware 4'),
(7, 'Prácticas Profesionalizantes 2'),
(8, 'Programación'),
(9, 'Redes 3'),
(10, 'EDI: Egg Tech');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `nota_id` int(11) NOT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `materia_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `nota` decimal(5,2) NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `informe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`nota_id`, `persona_id`, `materia_id`, `curso_id`, `nota`, `cuatrimestre`, `informe`) VALUES
(22, 48081866, 6, 1, 9.00, 2, 1),
(25, 34566895, 6, 1, 9.00, 1, 1),
(26, 48081866, 6, 1, 9.00, 1, 1),
(27, 48081866, 6, 1, 6.00, 1, 2),
(28, 48081865, 6, 3, 8.00, 1, 2),
(29, 48081866, 6, 1, 10.00, 2, 2),
(30, 22534258, 6, 3, 3.00, 1, 1),
(31, 46810297, 6, 3, 3.00, 1, 1),
(32, 48081865, 6, 3, 8.00, 1, 1),
(33, 22534258, 6, 3, 10.00, 2, 3),
(34, 46810297, 6, 3, 6.00, 2, 2),
(35, 48081865, 6, 3, 8.00, 2, 2),
(36, 46810297, 8, 1, 8.00, 1, 1),
(37, 48081866, 8, 1, 7.00, 1, 1),
(38, 46810230, 1, 3, 7.00, 1, 1),
(39, 46810297, 1, 3, 8.00, 1, 1),
(40, 48081865, 1, 3, 6.00, 1, 1),
(41, 48081866, 1, 3, 7.00, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `persona_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `tipo_usuario_id` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`persona_id`, `nombre`, `correo`, `contrasena`, `tipo_usuario_id`, `curso_id`) VALUES
(1, 'Administración ', 'australnetworks@gmail.com', '228098', 2, NULL),
(22534258, 'pamela torres', 'pami@gmail.com', 'river2020', 2, NULL),
(34566895, 'Nicolas Valdebenito', 'nico@gmail.com', 'llaucayliam', 3, NULL),
(35455891, 'Matias Fernandez', 'matif@gmail.com', '505', 3, NULL),
(46810230, 'Dylan Gabriel Ostertag Garcia', 'dylan@gmail.com', '1234', 1, 3),
(46810297, 'Uribe Brisa', 'uribebrisa@gmail.com', '101010', 1, 3),
(48081865, 'Franco Abdala', 'abdala@gmail.com', 'abdala10', 1, 3),
(48081866, 'Franco Barrionuevo', 'francobarrionuevo933@gmail.com', '1231', 1, 3),
(98675432, 'Veronica Godoy', 'vero@gmail.com', 'veroymaty', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tipo_usuario_id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`tipo_usuario_id`, `rol`) VALUES
(1, 'alumno'),
(2, 'administrador'),
(3, 'alumnado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curso_id`);

--
-- Indices de la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD PRIMARY KEY (`curso_materia_id`),
  ADD KEY `curso_materia_ibfk_1` (`curso_id`),
  ADD KEY `curso_materia_ibfk_2` (`materia_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`materia_id`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`nota_id`),
  ADD KEY `nota_ibfk_1` (`persona_id`),
  ADD KEY `nota_ibfk_2` (`materia_id`),
  ADD KEY `nota_ibfk_3` (`curso_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`persona_id`),
  ADD KEY `persona_ibfk_1` (`curso_id`),
  ADD KEY `persona_ibfk_2` (`tipo_usuario_id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`tipo_usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  MODIFY `curso_materia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `materia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
  MODIFY `nota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `tipo_usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD CONSTRAINT `curso_materia_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `curso_materia_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`materia_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`materia_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_ibfk_3` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`tipo_usuario_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
