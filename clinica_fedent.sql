-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-11-2021 a las 22:13:05
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica_fedent`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceder`
--

DROP TABLE IF EXISTS `acceder`;
CREATE TABLE IF NOT EXISTS `acceder` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_odontologo` int(50) NOT NULL,
  `id_tons` int(50) NOT NULL,
  `folio` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_odontologo` (`id_odontologo`),
  KEY `id_tons` (`id_tons`),
  KEY `folio` (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_clinicos`
--

DROP TABLE IF EXISTS `datos_clinicos`;
CREATE TABLE IF NOT EXISTS `datos_clinicos` (
  `id_datos_clinicos` int(50) NOT NULL AUTO_INCREMENT,
  `folio` int(50) NOT NULL,
  `padre_vivo` tinyint(1) NOT NULL,
  `enfermedad_padre` varchar(50) NOT NULL,
  `madre_viva` tinyint(1) NOT NULL,
  `enfermedad_madre` varchar(50) NOT NULL,
  `paciente_enfermo` tinyint(1) NOT NULL,
  `enfermedad_paciente` varchar(50) NOT NULL,
  `esta_tratamiento_medico` tinyint(1) NOT NULL,
  `tratamiento_medico` varchar(50) NOT NULL,
  `medicamentos_consumidos_habitualmente` varchar(50) NOT NULL,
  `medicamentos_ultimos_cinco_a` varchar(50) NOT NULL,
  `alergico` tinyint(1) NOT NULL,
  `alergia_a` varchar(50) NOT NULL,
  `cicatriza_bien` varchar(50) NOT NULL,
  `diabetico` tinyint(1) NOT NULL,
  `diabetes_controlada` varchar(50) NOT NULL,
  `fuma` tinyint(1) NOT NULL,
  `cuantos` int(50) NOT NULL,
  PRIMARY KEY (`id_datos_clinicos`),
  KEY `folio` (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_clinicos`
--

INSERT INTO `datos_clinicos` (`id_datos_clinicos`, `folio`, `padre_vivo`, `enfermedad_padre`, `madre_viva`, `enfermedad_madre`, `paciente_enfermo`, `enfermedad_paciente`, `esta_tratamiento_medico`, `tratamiento_medico`, `medicamentos_consumidos_habitualmente`, `medicamentos_ultimos_cinco_a`, `alergico`, `alergia_a`, `cicatriza_bien`, `diabetico`, `diabetes_controlada`, `fuma`, `cuantos`) VALUES
(1, 1, 1, 'ninguna', 1, 'ninguna', 0, 'ninguna', 0, 'ninguno', 'Rigotax', '[rigotax, loratadina, paracetamol]', 1, '[primavera, polvo]', 'si, ningún problema', 0, 'no', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

DROP TABLE IF EXISTS `ficha`;
CREATE TABLE IF NOT EXISTS `ficha` (
  `folio` int(50) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  PRIMARY KEY (`folio`),
  KEY `id_paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`folio`, `id_paciente`, `fecha`) VALUES
(1, 1, '30/10/2021'),
(2, 2, '28/10/2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_clinico`
--

DROP TABLE IF EXISTS `historial_clinico`;
CREATE TABLE IF NOT EXISTS `historial_clinico` (
  `id_historial_clinico` int(50) NOT NULL AUTO_INCREMENT,
  `folio` int(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `razon_ingreso` varchar(50) NOT NULL,
  `detalles` varchar(50) NOT NULL,
  PRIMARY KEY (`id_historial_clinico`),
  KEY `folio` (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial_clinico`
--

INSERT INTO `historial_clinico` (`id_historial_clinico`, `folio`, `fecha`, `razon_ingreso`, `detalles`) VALUES
(1, 1, '28/10/2021', 'se rompio un diente', 'se le hara una endodoncia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontograma`
--

DROP TABLE IF EXISTS `odontograma`;
CREATE TABLE IF NOT EXISTS `odontograma` (
  `id_odontograma` int(50) NOT NULL AUTO_INCREMENT,
  `folio` int(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `detalles` varchar(50) NOT NULL,
  PRIMARY KEY (`id_odontograma`),
  KEY `folio` (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `odontograma`
--

INSERT INTO `odontograma` (`id_odontograma`, `folio`, `fecha`, `detalles`) VALUES
(1, 1, '30/10/2021', 'se realizo una endodoncia'),
(2, 1, '31/10/2021', 'se realizo una limpieza bocal'),
(3, 2, '28/10/2021', 'ningun detalle'),
(4, 2, '30/10/2021', 'se realizo una limpieza bocal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontologo`
--

DROP TABLE IF EXISTS `odontologo`;
CREATE TABLE IF NOT EXISTS `odontologo` (
  `id_odontologo` int(50) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_odontologo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `odontologo`
--

INSERT INTO `odontologo` (`id_odontologo`, `nombre`, `rut`, `telefono`, `correo`) VALUES
(1, 'Bruno Araneda', '14569234-4', '56421536', 'brunoaraneda@gmail.com'),
(2, 'Carlos Vidal', '14222147-4', '45128796', 'carlosvidal@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontologo_tons`
--

DROP TABLE IF EXISTS `odontologo_tons`;
CREATE TABLE IF NOT EXISTS `odontologo_tons` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_odontologo` int(50) NOT NULL,
  `id_tons` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_odontologo` (`id_odontologo`),
  KEY `id_tons` (`id_tons`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `odontologo_tons`
--

INSERT INTO `odontologo_tons` (`id`, `id_odontologo`, `id_tons`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id_paciente` int(50) NOT NULL AUTO_INCREMENT,
  `id_odontologo` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `edad` int(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `lugar_trabajo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `id_odontologo` (`id_odontologo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `id_odontologo`, `nombre`, `rut`, `telefono`, `celular`, `estado_civil`, `edad`, `domicilio`, `profesion`, `lugar_trabajo`) VALUES
(1, 1, 'Reinaldo Bustamante', '19555874-4', '45632514', '85962145', 'Soltero', 24, 'soto aguilar', 'estudiante ', 'ninguna'),
(2, 2, 'Felipe Vidal', '19111111-1', '54632185', '45879765', 'Soltero', 24, 'asd', 'asd', 'asd'),
(6, 1, 'test', 'test', 'test', 'test', 'Soltero', 24, 'test', 'test', 'test'),
(7, 2, 'asd', 'asd', 'asd', 'asd', 'Soltero', 24, 'asd', 'asd', 'asd'),
(8, 1, 'TEST2', 'test2', 'TEST2', 'test2', 'Soltero', 24, 'test2', 'TEST2', 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

DROP TABLE IF EXISTS `piezas`;
CREATE TABLE IF NOT EXISTS `piezas` (
  `id_pieza` int(50) NOT NULL AUTO_INCREMENT,
  `numero` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `zona` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pieza`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `piezas`
--

INSERT INTO `piezas` (`id_pieza`, `numero`, `nombre`, `zona`) VALUES
(1, 1, 'Tercer Molar', 'Superior Derecha'),
(2, 2, 'Segundo Molar', 'Superior Derecha'),
(3, 3, 'Primer Molar', 'Superior Derecha'),
(4, 4, 'Segundo Premolar', 'Superior Derecha'),
(5, 5, 'Primer Premolar', 'Superior Derecha'),
(6, 6, 'Canino', 'Superior Derecha'),
(7, 7, 'Incisivo Lateral', 'Superior Derecha'),
(8, 8, 'Incisivo Central', 'Superior Derecha'),
(9, 9, 'Incisivo Central', 'Superior Izquierda'),
(10, 10, 'Incisivo Lateral', 'Superior Izquierda'),
(11, 11, 'Canino', 'Superior Izquierda'),
(12, 12, 'Primer Premolar', 'Superior Izquierda'),
(13, 13, 'Segundo Premolar', 'Superior Izquierda'),
(14, 14, 'Primer Molar', 'Superior Izquierda'),
(15, 15, 'Segundo Molar', 'Superior Izquierda'),
(16, 16, 'Tercer Molar', 'Superior Izquierda'),
(17, 17, 'Tercer Molar', 'Inferior Izquierda'),
(18, 18, 'Segundo Molar', 'Inferior Izquierda'),
(19, 19, 'Primer Molar', 'Inferior Izquierda'),
(20, 20, 'Segundo Premolar', 'Inferior Izquierda'),
(21, 21, 'Primer Premolar', 'Inferior Izquierda'),
(22, 22, 'Canino', 'Inferior Izquierda'),
(23, 23, 'Incisivo Lateral', 'Inferior Izquierda'),
(24, 24, 'Incisivo Central', 'Inferior Izquierda'),
(25, 25, 'Incisivo Central', 'Inferior Derecha'),
(26, 26, 'Incisivo Lateral', 'Inferior Derecha'),
(27, 27, 'Canino', 'Inferior Derecha'),
(28, 28, 'Primer Premolar', 'Inferior Derecha'),
(29, 29, 'Segundo Premolar', 'Inferior Derecha'),
(30, 30, 'Primer Molar', 'Inferior Derecha'),
(31, 31, 'Segundo Molar', 'Inferior Derecha'),
(32, 32, 'Tercer Molar', 'Inferior Derecha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza_odontograma`
--

DROP TABLE IF EXISTS `pieza_odontograma`;
CREATE TABLE IF NOT EXISTS `pieza_odontograma` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_odontograma` int(50) NOT NULL,
  `id_pieza` int(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `diagnostico` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_odontograma` (`id_odontograma`),
  KEY `id_pieza` (`id_pieza`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pieza_odontograma`
--

INSERT INTO `pieza_odontograma` (`id`, `id_odontograma`, `id_pieza`, `estado`, `diagnostico`) VALUES
(1, 1, 6, 'buen estado', 'carie'),
(2, 1, 24, 'en tratamiento', 'carie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tons`
--

DROP TABLE IF EXISTS `tons`;
CREATE TABLE IF NOT EXISTS `tons` (
  `id_tons` int(50) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tons`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tons`
--

INSERT INTO `tons` (`id_tons`, `nombre`, `rut`, `telefono`, `correo`) VALUES
(1, 'Pedro reyes', '14562324-2', '45128796', 'pedroreyes@gmail.com'),
(2, 'Juan rosales', '14575462-5', '54863214', 'juanrosales@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `nombre`, `rut`, `correo`, `telefono`, `rol`) VALUES
(1, 'admin', 'admin', 'Nombre Administrador', 'XX.XXX.XXX-X', 'administrador@gmail.com', '45125487', 'Administrador'),
(2, 'user1', 'user1', 'Nombre usuario1', '14.214.523-5', 'usuario@gmail.com', '45123869', 'Odontologo'),
(3, 'usuario2', 'usuario2', 'Reinaldo Bustamante', '19555874-4', 'reinaldobustamante@gmail.com', '45123265', 'tons'),
(4, 'usuario3', 'usuario3', 'Carla Saez', '19465924-5', 'carlasaez@gmail.com', '45125632', 'odontologo'),
(5, 'user5', 'user5', 'user 5', '45612345-2', 'user5@gmail.com', '45612345', 'odontologo'),
(6, 'user8', 'user8 ', 'user8 ', '145234125-4', 'user8 ', '45612345', 'tons');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceder`
--
ALTER TABLE `acceder`
  ADD CONSTRAINT `acceder_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `ficha` (`folio`),
  ADD CONSTRAINT `acceder_ibfk_2` FOREIGN KEY (`id_tons`) REFERENCES `tons` (`id_tons`),
  ADD CONSTRAINT `acceder_ibfk_3` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologo` (`id_odontologo`);

--
-- Filtros para la tabla `datos_clinicos`
--
ALTER TABLE `datos_clinicos`
  ADD CONSTRAINT `datos_clinicos_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `ficha` (`folio`);

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Filtros para la tabla `historial_clinico`
--
ALTER TABLE `historial_clinico`
  ADD CONSTRAINT `historial_clinico_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `ficha` (`folio`);

--
-- Filtros para la tabla `odontograma`
--
ALTER TABLE `odontograma`
  ADD CONSTRAINT `odontograma_ibfk_1` FOREIGN KEY (`folio`) REFERENCES `ficha` (`folio`);

--
-- Filtros para la tabla `odontologo_tons`
--
ALTER TABLE `odontologo_tons`
  ADD CONSTRAINT `odontologo_tons_ibfk_1` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologo` (`id_odontologo`),
  ADD CONSTRAINT `odontologo_tons_ibfk_2` FOREIGN KEY (`id_tons`) REFERENCES `tons` (`id_tons`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologo` (`id_odontologo`);

--
-- Filtros para la tabla `pieza_odontograma`
--
ALTER TABLE `pieza_odontograma`
  ADD CONSTRAINT `pieza_odontograma_ibfk_1` FOREIGN KEY (`id_odontograma`) REFERENCES `odontograma` (`id_odontograma`),
  ADD CONSTRAINT `pieza_odontograma_ibfk_2` FOREIGN KEY (`id_pieza`) REFERENCES `piezas` (`id_pieza`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
