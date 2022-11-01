-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-12-2021 a las 18:10:35
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17997396_seaninnvacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `idPersona` int(50) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `puntaje` int(100) NOT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `idPersona`, `nombre`, `tipo`, `ruta`, `puntaje`, `estado`) VALUES
(6, 13, 'PRUEBA', 'Asuntos Corporativos', '../public/documents/mis_ideas/13/SIGE-P01NC.pdf', 1, 'PENDIENTE'),
(21, 15, 'Idea Ganador', 'Comercializacion', '../public/documents/mis_ideas/15/Circular098-2021 Anexo.pdf', 90, 'SEGUNDO'),
(23, 14, 'IDEA GANADORA', 'Comercializacion', '../public/documents/mis_ideas/14/6404D-1 G3-PGRMV.pdf', 100, 'PRIMERO'),
(24, 14, 'IDEA GANADORA', 'Comercializacion', '../public/documents/mis_ideas/14/6404D-1 G3-PGRMV.pdf', 1, 'PENDIENTE'),
(25, 11, '', 'Asuntos Corporativos', '../public/documents/mis_ideas/11/6404D-1 G3-PGRMV.pdf', 100, 'PRIMERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premios`
--

CREATE TABLE `premios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(550) COLLATE utf8_unicode_ci NOT NULL,
  `idPersona` int(11) NOT NULL,
  `idArchivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `premios`
--

INSERT INTO `premios` (`id`, `nombre`, `descripcion`, `idPersona`, `idArchivo`) VALUES
(1, 'FERRARI PORTOFINO', 'CARRO ROJO', 14, 23),
(2, 'UN QUESO PARMESADO DEL ING ANIBAL', 'QUESITOS GOURMET', 11, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `telefono`, `correo`, `contraseña`, `nombre_completo`) VALUES
(1, 'A', '3004567645', 'scervantes@gecelca.com.co', '1045760152', 'ADIMINISTRADOR'),
(2, 'U', '3135080062', 'darwinquinones735@gmail.com', '12345', 'Darwin Quiñones'),
(3, 'U', '3135080062', 'david@gmail.com', '12345', 'David Lozano'),
(4, 'U', '3135138745', 'sebastiancervantes@uninorte.edu.co', '1234', 'Sebastian Cervantes'),
(5, 'U', '3135138745', 'sebastiancervantes11@uninorte.edu.co', '1234', 'Sebastian Cervantes'),
(6, 'U', '3135138745', 'sebastiancervantes_@uninorte.edu.co', '1111', 'Sebastian Cervantes'),
(7, 'U', '3135138745', 'sebastiancervantes00@uninorte.edu.co', 'vegeta12', 'Sebastian Cervantes'),
(8, 'U', '3135138745', 'sebastiancervantes_0@uninorte.edu.co', '1234', 'Sebastian Cervantes'),
(9, 'U', '3205033208', 'alinero@gecelca.com.co', 'demhug-kokByc-sothu0', 'Andrea Linero'),
(10, 'U', '00000000', 'jcharrymeza1@gmail.com', 'usuario', 'jesus manuel '),
(11, 'U', '3016591550', 'mmatus@gecelca.com.co', '1234', 'Maria Matus'),
(12, 'U', '', '', '', ''),
(13, 'U', '3164024024', 'msierra@gecelca.com.co', 'Diosesfiel2021', 'María Margarita Sierra Osorio'),
(14, 'U', '3135138745', 'sscervantes@gecelca.com.co', '1234', 'Sebastian Cervantes'),
(15, 'U', '3014166704', 'rsanchez@gecelca.com.co', '1001938213', 'Roberto Miguel Sánchez Castro'),
(16, 'U', '3008755005', 'kortiz@gecelca.com.co', '741Kathe!', 'Katheryn '),
(17, 'U', '3005476810', 'dbolivar@gecelca.com.co', '123456789d', 'Daniela Bolívar '),
(18, 'U', '306242361', 'cgarciami@gecelca.com.co', 'Gecelca.2021', 'Cristian Garcia'),
(19, 'U', '3303000', 'austa@gecelca.com.co', '12345', 'Alonso usta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archivos_usuarios` (`idPersona`);

--
-- Indices de la tabla `premios`
--
ALTER TABLE `premios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `premios_usuario` (`idPersona`),
  ADD KEY `premios_archivos` (`idArchivo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `premios`
--
ALTER TABLE `premios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_usuarios` FOREIGN KEY (`idPersona`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `premios`
--
ALTER TABLE `premios`
  ADD CONSTRAINT `premios_archivos` FOREIGN KEY (`idArchivo`) REFERENCES `archivos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `premios_usuario` FOREIGN KEY (`idPersona`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
