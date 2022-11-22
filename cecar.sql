-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2022 a las 22:43:26
-- Versión del servidor: 10.4.25-MariaDB-log
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_cecar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `R_admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `Email`, `contraseña`, `R_admin`) VALUES
(7, 'jesusadmin@gmail.com', 'jesus', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratacion`
--

CREATE TABLE `contratacion` (
  `Id_contratacion` int(10) NOT NULL,
  `Tiempo` varchar(30) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contratacion`
--

INSERT INTO `contratacion` (`Id_contratacion`, `Tiempo`, `salario`) VALUES
(1, 'Tiempo Completo', 4600000),
(2, 'Tiempo Catedra', 3900000),
(3, 'Tiempo Medio', 2300000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Id_curso` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Num_Credito` varchar(10) NOT NULL,
  `Int_Horaria` varchar(5) NOT NULL,
  `Id_programa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Id_curso`, `Nombre`, `Num_Credito`, `Int_Horaria`, `Id_programa`) VALUES
(1, 'Sistemas Distribuidos', '3', '65', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Id_Docentes` int(10) NOT NULL,
  `Cedula` int(10) NOT NULL,
  `Nombres` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `F_nacimiento` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Id_Programa` int(10) NOT NULL,
  `Id_Sede` int(10) NOT NULL,
  `id_contratacion` int(10) NOT NULL,
  `rol_docente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`Id_Docentes`, `Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Direccion`, `Email`, `F_nacimiento`, `Ciudad`, `Id_Programa`, `Id_Sede`, `id_contratacion`, `rol_docente`) VALUES
(1, 11033435, 'Jesus Fernando', 'Pineda Palacio', '30928232', 'Calle la 45', 'jesus.pineda@cecar.edu.co', '11-03-2001', 'Galeras', 1, 1, 1, 'docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_curso`
--

CREATE TABLE `docente_curso` (
  `IdCurso` int(10) NOT NULL,
  `Id_Curso` int(10) NOT NULL,
  `Grupos` int(10) NOT NULL,
  `Id_Docentes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id_Estudiante` int(10) NOT NULL,
  `Cedula` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `F_nacimiento` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Id_Programa` int(11) NOT NULL,
  `Id_Sede` int(11) NOT NULL,
  `R_estudiante` varchar(20) NOT NULL,
  `Direccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id_Estudiante`, `Cedula`, `Nombre`, `Apellido`, `Telefono`, `F_nacimiento`, `Ciudad`, `Email`, `Id_Programa`, `Id_Sede`, `R_estudiante`, `Direccion`) VALUES
(1, 1023498, 'Keisy David', 'Pacheco Nisperuza', '34567654567', '03/05/2001', 'San Andres', 'keisy@cecar.edu.co', 1, 2, 'estudiante', 'Calle nacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_curso`
--

CREATE TABLE `estudiante_curso` (
  `idcurso` int(11) NOT NULL,
  `Id_estudiante` int(11) NOT NULL,
  `Año_matricula` varchar(255) NOT NULL,
  `Periodo` varchar(255) NOT NULL,
  `Calificación` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante_curso`
--

INSERT INTO `estudiante_curso` (`idcurso`, `Id_estudiante`, `Año_matricula`, `Periodo`, `Calificación`) VALUES
(2, 1, '2022', '2021-2', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `Id_Facultad` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`Id_Facultad`, `Nombre`) VALUES
(1, 'FACULTAD DE CIENCIAS BÁSICAS, INGENIERÍAS Y ARQUITECTURA'),
(2, 'FACULTAD DE DERECHO Y CIENCIAS POLÍTICAS'),
(3, 'FACULTAD DE CIENCIAS ECONÓMICAS Y ADMINISTRATIVAS'),
(4, 'FACULTAD DE HUMANIDADES Y EDUCACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `Id_Programa` int(11) NOT NULL,
  `Nombre_p` varchar(50) NOT NULL,
  `Num_semestre` varchar(10) NOT NULL,
  `Modalidad` varchar(50) NOT NULL,
  `Id_Faculta` int(11) NOT NULL,
  `Precio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`Id_Programa`, `Nombre_p`, `Num_semestre`, `Modalidad`, `Id_Faculta`, `Precio`) VALUES
(1, 'Ingeniería de Sistemas', '10', 'Presencial', 1, '$3.040.098'),
(2, 'Derecho', '8', 'Virtual', 2, ' $3.789.600'),
(3, 'Contaduría Publica', '8', 'Virtual', 3, '$5.208.880'),
(4, 'Trabajo Social', '12', 'Presencial', 3, '$3.045.187');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_sede`
--

CREATE TABLE `programa_sede` (
  `id_Sprograma` int(11) NOT NULL,
  `Id_Sede` int(11) NOT NULL,
  `Id_Programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `programa_sede`
--

INSERT INTO `programa_sede` (`id_Sprograma`, `Id_Sede`, `Id_Programa`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_administrativo`
--

CREATE TABLE `p_administrativo` (
  `Id_personal` int(10) NOT NULL,
  `Cedula` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `F_nacimiento` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Id_sede` int(11) NOT NULL,
  `R_Padministrativo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `p_administrativo`
--

INSERT INTO `p_administrativo` (`Id_personal`, `Cedula`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Email`, `F_nacimiento`, `Ciudad`, `Id_sede`, `R_Padministrativo`) VALUES
(1, 1325511100, 'Jesus Eduardo', 'Toscano Figueroa', '366589899', 'Calle los Sueños', 'toscano@cecar.edu.co', '11/11/1999', 'Barranquilla', 1, 'administrativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `Id_rol` int(11) NOT NULL,
  `Rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`Id_rol`, `Rol`) VALUES
(1, 'administrador'),
(2, 'administrativo'),
(3, 'docente'),
(4, 'estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `Id_sede` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ID_Facultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`Id_sede`, `Nombre`, `Ciudad`, `Direccion`, `Telefono`, `Email`, `ID_Facultad`) VALUES
(1, 'Cecar Sincelejo', 'Sincelejo', 'Calle 40', '2335223', 'cecars@cecar.edu.co', 1),
(2, 'Cecar Montería', 'Monteria', 'Calle 50', '454000', 'cecarm@cecar.edu.co', 3),
(3, 'Cecar Villa Vicencio', 'Villavicencio', 'Calle 60', '227382372', 'cecarv@cecar.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`),
  ADD KEY `administrador_fk0` (`R_admin`);

--
-- Indices de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  ADD PRIMARY KEY (`Id_contratacion`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Id_curso`),
  ADD KEY `Curso_fk0` (`Id_programa`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`Id_Docentes`),
  ADD KEY `Docente_fk0` (`Id_Programa`),
  ADD KEY `Docente_fk1` (`Id_Sede`),
  ADD KEY `Docente_fk2` (`id_contratacion`),
  ADD KEY `Docente_fk3` (`rol_docente`);

--
-- Indices de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD PRIMARY KEY (`IdCurso`),
  ADD KEY `id_curso` (`Id_Curso`),
  ADD KEY `id_docentes` (`Id_Docentes`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id_Estudiante`),
  ADD KEY `Estudiante_fk0` (`Id_Programa`),
  ADD KEY `Estudiante_fk1` (`Id_Sede`),
  ADD KEY `Id_Rol` (`R_estudiante`);

--
-- Indices de la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
  ADD PRIMARY KEY (`idcurso`),
  ADD KEY `Estudiante_Curso_fk0` (`Id_estudiante`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`Id_Facultad`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`Id_Programa`),
  ADD KEY `idfacultad` (`Id_Faculta`);

--
-- Indices de la tabla `programa_sede`
--
ALTER TABLE `programa_sede`
  ADD PRIMARY KEY (`id_Sprograma`),
  ADD KEY `Programa_sede_fk1` (`Id_Programa`),
  ADD KEY `id_programa` (`Id_Sede`);

--
-- Indices de la tabla `p_administrativo`
--
ALTER TABLE `p_administrativo`
  ADD PRIMARY KEY (`Id_personal`),
  ADD KEY `id_sede` (`Id_sede`),
  ADD KEY `R_administrativo` (`R_Padministrativo`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Rol`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`Id_sede`),
  ADD KEY `idsede` (`ID_Facultad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  MODIFY `Id_contratacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `Id_Docentes` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  MODIFY `IdCurso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Id_Estudiante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `Id_Facultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `Id_Programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `programa_sede`
--
ALTER TABLE `programa_sede`
  MODIFY `id_Sprograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `p_administrativo`
--
ALTER TABLE `p_administrativo`
  MODIFY `Id_personal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `Id_sede` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_fk0` FOREIGN KEY (`R_admin`) REFERENCES `role` (`Rol`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `Curso_fk0` FOREIGN KEY (`Id_programa`) REFERENCES `programa` (`Id_Programa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `Docente_fk0` FOREIGN KEY (`Id_Programa`) REFERENCES `programa` (`Id_Programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Docente_fk1` FOREIGN KEY (`Id_Sede`) REFERENCES `sede` (`Id_sede`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Docente_fk2` FOREIGN KEY (`id_contratacion`) REFERENCES `contratacion` (`Id_contratacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Docente_fk3` FOREIGN KEY (`rol_docente`) REFERENCES `role` (`Rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD CONSTRAINT `id_curso` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_docentes` FOREIGN KEY (`Id_Docentes`) REFERENCES `docente` (`Id_Docentes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `Estudiante_fk0` FOREIGN KEY (`Id_Programa`) REFERENCES `programa` (`Id_Programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Estudiante_fk1` FOREIGN KEY (`Id_Sede`) REFERENCES `sede` (`Id_sede`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Id_Rol` FOREIGN KEY (`R_estudiante`) REFERENCES `role` (`Rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante_curso`
--
ALTER TABLE `estudiante_curso`
  ADD CONSTRAINT `Estudiante_Curso_fk0` FOREIGN KEY (`Id_estudiante`) REFERENCES `estudiante` (`Id_Estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `idfacultad` FOREIGN KEY (`Id_Faculta`) REFERENCES `facultad` (`Id_Facultad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programa_sede`
--
ALTER TABLE `programa_sede`
  ADD CONSTRAINT `Programa_sede_fk1` FOREIGN KEY (`Id_Programa`) REFERENCES `programa` (`Id_Programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_programa` FOREIGN KEY (`Id_Sede`) REFERENCES `sede` (`Id_sede`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `p_administrativo`
--
ALTER TABLE `p_administrativo`
  ADD CONSTRAINT `R_administrativo` FOREIGN KEY (`R_Padministrativo`) REFERENCES `role` (`Rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_sede` FOREIGN KEY (`Id_sede`) REFERENCES `sede` (`Id_sede`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `idsede` FOREIGN KEY (`ID_Facultad`) REFERENCES `facultad` (`Id_Facultad`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
