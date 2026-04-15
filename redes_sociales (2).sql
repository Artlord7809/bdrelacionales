-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2026 a las 17:11:32
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
-- Base de datos: `redes sociales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(155) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(3, 5, 'MINECRAFT EN VIVO', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhMVFRUWGRoXGBgYGB4eGhodGBcYGBcZFx0YHSggHR0lGxUYIjEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0lICUtLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/', '2026-04-15 16:58:59', 50000000),
(4, 5, 'MINECRAFT y COSTING', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUQEhMVFRUVGBUVFRcXFRUVFRUVFRUWFxUWFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGi0dFx0tLSstLS0tLS0rLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLTctLS0rLf/AABEIAOEA4QMBIgACEQEDEQH/', '2026-04-15 04:11:59', 20000100),
(5, 5, 'the forest', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq7ab1nSfWlU1QEqS0ivgeyIVJ5XcsnHVchg&s', '2026-04-15 17:05:38', 5345346),
(6, 4, 'ayudando a mi idolo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq7ab1nSfWlU1QEqS0ivgeyIVJ5XcsnHVchg&s', '2026-04-09 08:05:38', 55556),
(7, 4, 'ayudando', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq7ab1nSfWlU1QEqS0ivgeyIVJ5XcsnHVchg&s', '2024-11-04 08:07:19', 20000),
(8, 3, 'ulta kill en vivo', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUWGBcWFxUXGBcXFRYXFRUXFhUXFxcYHSggGBolHRUVIjEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lICYtLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKoBKQMBEQACEQEDEQH/', '2026-04-15 17:07:19', 45566),
(9, 4, 'pepe', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEBMVFRUXFxUXFhgXFxcYGhoXFRUWGBUXFRUbHSggGBolHhUVITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OFxAQGi0dHR0tLSstLS0tLS03LS0tLS0tLS0tLS0tNy0tLS4tLSstLSstLSsyKysrKy8tLSsvNzArMv/AABEIAOEA4QMBEQACEQEDEQH/', '2026-04-15 17:08:45', 100),
(10, 4, 'ppeeppee', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEBMWFRUWFxoVFRcYGBgWHxoYFxcWFxgXIxgYHSggGB0lGxYYLTEiJSsrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGzAmICUtLS0wLS8tLS0tMi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBEQACEQEDEQH/', '2026-04-15 17:08:45', 20000),
(11, 5, 'fornite ', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEBAQEBAQDw8PEA8PDw8PDw8NDQ4NFhEWFhURFRUYHSggGBolGxUVITEhJSkrMDouFx8zODMsNygtLjcBCgoKDg0OGhAQGi0dHSUuLS0tLS0tLSstLSsrLS0tLS0tLS0tLS0tKy0tLS4tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBEQACEQEDEQH/', '2025-11-04 08:41:57', 568687),
(12, 1, '6767676767', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFRUWFxcYGBgVFxcVFRUYFxgXFxYYFxUYHSggGBolHRcXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lHSUtLS0rLS0tLS0tLS0tLS0vKy0vLS0tLS0tLSstLTctLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/', '2026-04-16 08:09:33', 6767);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(2, 5, '2018-11-07'),
(1, 5, '2008-04-09'),
(4, 5, '2018-11-07'),
(3, 5, '2025-09-07'),
(5, 1, '2026-04-09'),
(5, 2, '2019-04-16'),
(5, 3, '2026-07-30'),
(5, 4, '2031-04-03'),
(5, 5, '1999-04-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarios` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bio` varchar(50) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarios`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'juanito67', 'juanitopro@gmail.com', 'muy pro', '2021-12-15'),
(2, 'juan666', 'juanitoXD@gmail.com', 'XD', '2020-01-21'),
(3, 'umrarr', 'umrarrelpro@gmail.com', 'soy umrarr', '2019-04-12'),
(4, 'pepe', 'pepe@gmail.com', 'hola soy pepe', '2026-06-26'),
(5, 'Vegeta777', 'Vegetita777@gmail.com', 'hola muy buenas a todos', '2002-02-17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `segudo_id` (`seguido_id`),
  ADD KEY `seguido_id` (`seguido_id`),
  ADD KEY `seguidor_id` (`seguidor_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuarios`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuarios`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`usuarios`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuarios`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
