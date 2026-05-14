-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2026 a las 17:07:14
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
-- Base de datos: `copa mundo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confederacion`
--

CREATE TABLE `confederacion` (
  `id_confederacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `region` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `confederacion`
--

INSERT INTO `confederacion` (`id_confederacion`, `nombre`, `siglas`, `region`) VALUES
(1, 'Union of European Football Associations', 'UEFA', 'Europa.'),
(2, 'Confederación Sudamericana de Fútbol', 'CONMEBOL', 'Sudamérica'),
(3, 'Confederación de Norteamérica, Centroamérica y el Caribe de Fútbol', 'CONCACAF', 'América del Norte, Central y el Caribe'),
(4, 'Oceanía Football Confederation', 'OFC', 'Oceanía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `codigo_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `codigo_fifa`, `entrenador`, `id_confederacion`) VALUES
(1, 'México', 'MEX', 'Javier Aguirre', 3),
(2, 'Estados Unidos', 'USA', 'Mauricio Pochettino', 3),
(3, 'Argentina', 'ARG', 'Lionel Scaloni', 1),
(4, 'Francia', 'FRA', 'Didier Deschamps', 4),
(5, 'Japón', 'JPN', 'Hajime Moriyasu', 4),
(6, 'Marruecos', 'MAR', 'Walid Regragui', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE `estadio` (
  `id_estadio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`id_estadio`, `nombre`, `ciudad`, `pais`, `capacidad`) VALUES
(1, 'Estadio Rungrado Primero de Mayo', 'Pionyang', 'Corea del Norte', 114000),
(2, 'Melbourne Cricket Ground', 'Melbourne', 'Australia', 100024),
(3, 'Wembley Stadium', 'Londres', 'Reino Unido', 90000),
(4, 'Estadio Azteca', ' Ciudad de México', 'México', 87523);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `posicion`, `numero_dorsal`, `fecha_nac`, `id_equipo`) VALUES
(1, 'Carlos Ruiz', 'Portero', 1, '0000-00-00', 1),
(2, 'Luis Gómez', 'Defensa', 4, '0000-00-00', 6),
(3, 'Ana Martínez', 'Delantera', 10, '0000-00-00', 2),
(4, 'Juan Pérez', 'Centrocampista', 8, '0000-00-00', 1),
(5, 'María López', 'Defensa', 2, '0000-00-00', 6),
(6, 'Pedro Sánchez', 'Delantero', 9, '0000-00-00', 3),
(7, 'Sofía Díaz', 'Portera', 12, '0000-00-00', 2),
(8, 'David Torres', 'Defensa', 3, '0000-00-00', 4),
(9, 'Elena Ruiz', 'Centrocampista', 11, '0000-00-00', 5),
(10, 'kitasanblack', 'Centrocampista', 69, '2017-05-02', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fase` varchar(30) NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha`, `fase`, `goles_local`, `goles_visitante`, `id_estadio`, `id_local`, `id_visitante`) VALUES
(1, '2026-05-14 10:16:26', 'Fase de Grupos', 4, 7, 4, 1, 4),
(2, '2026-04-22 00:00:00', 'Fase de Grupos', 11, 4, 2, 3, 6),
(3, '2026-05-01 00:00:00', 'Fase de Grupos', 7, 7, 3, 1, 3),
(4, '2026-05-14 16:34:45', 'Cuartos de Final', 7, 7, 1, 4, 3),
(5, '2026-05-14 16:52:02', 'Final', 4, 5, 4, 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  ADD PRIMARY KEY (`id_confederacion`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederacion` (`id_confederacion`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`id_estadio`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_visitante` (`id_visitante`),
  ADD KEY `id_estadio` (`id_estadio`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confederacion`
--
ALTER TABLE `confederacion`
  MODIFY `id_confederacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_confederacion`) REFERENCES `confederacion` (`id_confederacion`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_visitante`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
