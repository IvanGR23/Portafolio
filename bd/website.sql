-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 00:55:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `website`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cur_titulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_subtitulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_img` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cur_url` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `cur_desta` int(11) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `est`) VALUES
(1, 'Creación de Web1', 'Creación de Web1', '1.jpg', '#', 1, 1),
(2, 'Creación de Web2', 'Creación de Web2', '2.jpg', '#', 0, 1),
(3, 'Creación de Web3', 'Creación de Web3', '3.jpg', '#', 0, 1),
(4, 'Creación de Web4', 'Creación de Web4', '4.jpg', '#', 0, 1),
(5, 'Creación de Web5', 'Creación de Web5', '5.jpg', '#', 0, 1),
(6, 'Creación de Web6', 'Creación de Web6', '6.jpg', '#', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_nom`, `est`) VALUES
(1, 'NodeJS', 0),
(2, 'PHP', 1),
(3, 'Angular', 1),
(4, 'Laravel', 1),
(5, 'MYSQL', 1),
(6, 'SQL', 1),
(7, 'JavaScript', 1),
(8, 'Python', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon2` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_rutaweb` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `est`) VALUES
(1, 'Facebook', 'fb', 'social_facebook', '#', 1),
(2, 'Twitter', 'tw', 'social_twitter', '#', 1),
(3, 'Youtube', 'pt', 'social_youtube', '#', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indices de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
