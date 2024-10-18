-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 14-10-2024 a las 18:47:20
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `PA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Coord_Per_Prof`
--

CREATE TABLE `Coord_Per_Prof` (
  `ID` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `Codigo` varchar(12) DEFAULT NULL,
  `Paterno` varchar(35) DEFAULT NULL,
  `Materno` varchar(35) DEFAULT NULL,
  `Nombres` varchar(60) DEFAULT NULL,
  `Nombre_completo` varchar(60) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `Departamento` varchar(60) DEFAULT NULL,
  `Categoria_actual` varchar(60) DEFAULT NULL,
  `Categoria_actual_dos` varchar(60) DEFAULT NULL,
  `Horas_frente_grupo` int DEFAULT NULL,
  `Division` varchar(60) DEFAULT NULL,
  `Tipo_plaza` varchar(60) DEFAULT NULL,
  `Cat_act` varchar(60) DEFAULT NULL,
  `Carga_horaria` varchar(60) DEFAULT NULL,
  `Horas_definitivas` int DEFAULT NULL,
  `Horario` varchar(60) DEFAULT NULL,
  `Turno` varchar(15) DEFAULT NULL,
  `Investigacion_nombramiento_cambio_funcion` varchar(30) DEFAULT NULL,
  `SNI` varchar(15) DEFAULT NULL,
  `SIN_desde` date DEFAULT NULL,
  `Cambio_dedicacion` varchar(30) DEFAULT NULL,
  `Inicio` date DEFAULT NULL,
  `Fin` date DEFAULT NULL,
  `2024A` varchar(15) DEFAULT NULL,
  `Telefono_particular` int DEFAULT NULL,
  `Telefono_oficina` int DEFAULT NULL,
  `Domicilio` varchar(60) DEFAULT NULL,
  `Colonia` varchar(60) DEFAULT NULL,
  `CP` int DEFAULT NULL,
  `Ciudad` varchar(30) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  `No_imss` int DEFAULT NULL,
  `CURP` varchar(30) DEFAULT NULL,
  `RFC` varchar(30) DEFAULT NULL,
  `Lugar_nacimiento` varchar(50) DEFAULT NULL,
  `Estado_civil` varchar(15) DEFAULT NULL,
  `Tipo_sangre` varchar(5) DEFAULT NULL,
  `Fecha_nacimiento` varchar(15) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Nacionalidad` varchar(20) DEFAULT NULL,
  `Correo` varchar(60) DEFAULT NULL,
  `Correos_oficiales` varchar(60) DEFAULT NULL,
  `Ultimo_grado` varchar(5) DEFAULT NULL,
  `Programa` varchar(70) DEFAULT NULL,
  `Nivel` varchar(10) DEFAULT NULL,
  `Institucion` varchar(30) DEFAULT NULL,
  `Estado_pais` varchar(25) DEFAULT NULL,
  `Año` int DEFAULT NULL,
  `Gdo_exp` varchar(15) DEFAULT NULL,
  `Otro_grado` varchar(5) DEFAULT NULL,
  `Otro_programa` varchar(70) DEFAULT NULL,
  `Otro_nivel` varchar(10) DEFAULT NULL,
  `Otro_institucion` varchar(30) DEFAULT NULL,
  `Otro_estado_pais` varchar(25) DEFAULT NULL,
  `Otro_año` int DEFAULT NULL,
  `Otro_gdo_exp` varchar(15) DEFAULT NULL,
  `Otro_grado_alternativo` varchar(5) DEFAULT NULL,
  `Otro_programa_alternativo` varchar(70) DEFAULT NULL,
  `Otro_nivel_altenrativo` varchar(10) DEFAULT NULL,
  `Otro_institucion_alternativo` varchar(30) DEFAULT NULL,
  `Otro_estado_pais_alternativo` varchar(25) DEFAULT NULL,
  `Otro_año_alternativo` int DEFAULT NULL,
  `Otro_gdo_exp_alternativo` varchar(15) DEFAULT NULL,
  `Proesde_24_25` varchar(15) DEFAULT NULL,
  `A_partir_de` date DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  `Antiguedad` varchar(25) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Administración`
--

CREATE TABLE `Data_Administración` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Auditoría`
--

CREATE TABLE `Data_Auditoría` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Ciencias_Sociales`
--

CREATE TABLE `Data_Ciencias_Sociales` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Contabilidad`
--

CREATE TABLE `Data_Contabilidad` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Economía`
--

CREATE TABLE `Data_Economía` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Estudios_Regionales`
--

CREATE TABLE `Data_Estudios_Regionales` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Finanzas`
--

CREATE TABLE `Data_Finanzas` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Impuestos`
--

CREATE TABLE `Data_Impuestos` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Mercadotecnia`
--

CREATE TABLE `Data_Mercadotecnia` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Métodos_Cuantitativos`
--

CREATE TABLE `Data_Métodos_Cuantitativos` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_PALE`
--

CREATE TABLE `Data_PALE` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Políticas_Públicas`
--

CREATE TABLE `Data_Políticas_Públicas` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Posgrados`
--

CREATE TABLE `Data_Posgrados` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Recursos_Humanos`
--

CREATE TABLE `Data_Recursos_Humanos` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Sistemas_de_Información`
--

CREATE TABLE `Data_Sistemas_de_Información` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Data_Turismo`
--

CREATE TABLE `Data_Turismo` (
  `ID_Plantilla` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `CICLO` varchar(10) NOT NULL,
  `CRN` varchar(15) NOT NULL,
  `MATERIA` varchar(80) NOT NULL,
  `CVE_MATERIA` varchar(5) NOT NULL,
  `SECCION` varchar(5) NOT NULL,
  `NIVEL` varchar(25) NOT NULL,
  `NIVEL_TIPO` varchar(25) NOT NULL,
  `TIPO` varchar(1) NOT NULL,
  `C_MIN` varchar(2) NOT NULL,
  `H_TOTALES` varchar(2) NOT NULL,
  `ESTATUS` varchar(10) NOT NULL,
  `TIPO_CONTRATO` varchar(30) NOT NULL,
  `CODIGO_PROFESOR` varchar(9) NOT NULL,
  `NOMBRE_PROFESOR` varchar(60) NOT NULL,
  `CATEGORIA` varchar(40) NOT NULL,
  `DESCARGA` varchar(2) NOT NULL,
  `CODIGO_DESCARGA` varchar(9) NOT NULL,
  `NOMBRE_DESCARGA` varchar(60) NOT NULL,
  `NOMBRE_DEFINITIVO` varchar(60) NOT NULL,
  `TITULAR` varchar(2) NOT NULL,
  `HORAS` varchar(1) DEFAULT NULL,
  `CODIGO_DEPENDENCIA` varchar(4) DEFAULT NULL,
  `L` varchar(5) DEFAULT NULL,
  `M` varchar(5) DEFAULT NULL,
  `I` varchar(5) DEFAULT NULL,
  `J` varchar(5) DEFAULT NULL,
  `V` varchar(5) DEFAULT NULL,
  `S` varchar(5) DEFAULT NULL,
  `D` varchar(5) DEFAULT NULL,
  `DIA_PRESENCIAL` varchar(10) DEFAULT NULL,
  `DIA_VIRTUAL` varchar(10) DEFAULT NULL,
  `MODALIDAD` varchar(10) DEFAULT NULL,
  `FECHA_INICIAL` varchar(10) DEFAULT NULL,
  `FECHA_FINAL` varchar(10) DEFAULT NULL,
  `HORA_INICIAL` char(10) DEFAULT NULL,
  `HORA_FINAL` char(10) DEFAULT NULL,
  `MODULO` varchar(10) DEFAULT NULL,
  `AULA` char(10) DEFAULT NULL,
  `CUPO` varchar(3) NOT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `EXAMEN_EXTRAORDINARIO` varchar(2) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Departamentos`
--

CREATE TABLE `Departamentos` (
  `Departamento_ID` int NOT NULL,
  `Nombre_Departamento` varchar(100) NOT NULL,
  `Departamentos` varchar(100) NOT NULL
);

--
-- Volcado de datos para la tabla `Departamentos`
--

INSERT INTO `Departamentos` (`Departamento_ID`, `Nombre_Departamento`, `Departamentos`) VALUES
(1, 'Estudios_Regionales', 'Estudios Regionales'),
(2, 'Finanzas', 'Finanzas'),
(3, 'Ciencias_Sociales', 'Ciencias Sociales'),
(4, 'PALE', 'PALE'),
(5, 'Posgrados', 'Posgrados'),
(6, 'Economía', 'Economía'),
(7, 'Recursos_Humanos', 'Recursos Humanos'),
(8, 'Métodos_Cuantitativos', 'Métodos Cuantitativos'),
(9, 'Políticas_Públicas', 'Políticas Públicas'),
(10, 'Administración', 'Administración'),
(11, 'Auditoría', 'Auditoría'),
(12, 'Mercadotecnia', 'Mercadotecnia y Negocios Internacionales'),
(13, 'Impuestos', 'Impuestos'),
(14, 'Sistemas_de_Información', 'Sistemas de Información'),
(15, 'Turismo', 'Turismo'),
(16, 'Contabilidad', 'Contabilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Espacios`
--

CREATE TABLE `Espacios` (
  `id` int NOT NULL,
  `Modulo` varchar(10) DEFAULT NULL,
  `Espacio` varchar(15) DEFAULT NULL,
  `Etiqueta` varchar(40) DEFAULT NULL,
  `Equipo` varchar(255) DEFAULT NULL,
  `Observaciones` text,
  `Reportes` text
);

--
-- Volcado de datos para la tabla `Espacios`
--

INSERT INTO `Espacios` (`id`, `Modulo`, `Espacio`, `Etiqueta`, `Equipo`, `Observaciones`, `Reportes`) VALUES
(1, 'CEDA', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(2, 'CEDA', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(3, 'CEDA', '0103', 'Oficina Administrativa', NULL, NULL, NULL),
(4, 'CEDA', '0104', 'Oficina Administrativa', NULL, NULL, NULL),
(5, 'CEDA', '0201', 'Oficina Administrativa', NULL, NULL, NULL),
(6, 'CEDA', '0202', 'Bodega', NULL, NULL, NULL),
(7, 'CEDA', '0203', 'Aula', NULL, NULL, NULL),
(8, 'CEDA', '0204', 'Oficina Administrativa', NULL, NULL, NULL),
(9, 'CEDA', '0205', 'Oficina Administrativa', NULL, NULL, NULL),
(10, 'CEDA', '0206', 'Oficina Administrativa', NULL, NULL, NULL),
(11, 'CEDA', '0301', 'Aula', NULL, NULL, NULL),
(12, 'CEDA', '0302', 'Aula', NULL, NULL, NULL),
(13, 'CEDA', '0303', 'Aula', NULL, NULL, NULL),
(14, 'CEDA', '0304', 'Aula', NULL, NULL, NULL),
(15, 'CEDA', '0305', 'Bodega', NULL, NULL, NULL),
(16, 'CEDA', '0306', 'Aula', NULL, NULL, NULL),
(17, 'CEDA', '0307', 'Aula', NULL, NULL, NULL),
(18, 'CEDA', '0308', 'Aula', NULL, NULL, NULL),
(19, 'CEDA', '0309', 'Oficina Administrativa', NULL, NULL, NULL),
(20, 'CEDB', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(21, 'CEDB', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(22, 'CEDB', '0103', 'Bodega', NULL, NULL, NULL),
(23, 'CEDB', '0104', 'Oficina Administrativa', NULL, NULL, NULL),
(24, 'CEDB', '0105', 'Oficina Administrativa', NULL, NULL, NULL),
(25, 'CEDB', '0106', 'Oficina Administrativa', NULL, NULL, NULL),
(26, 'CEDB', '0107', 'Oficina Administrativa', NULL, NULL, NULL),
(27, 'CEDB', '0108', 'Laboratorio', NULL, NULL, NULL),
(28, 'CEDB', '0109', 'Oficina Administrativa', NULL, NULL, NULL),
(29, 'CEDB', '0110', 'Oficina Administrativa', NULL, NULL, NULL),
(30, 'CEDB', '0201', 'Oficina Administrativa', NULL, NULL, NULL),
(31, 'CEDB', '0202', 'Oficina Administrativa', NULL, NULL, NULL),
(32, 'CEDB', '0301', 'Aula', NULL, NULL, NULL),
(33, 'CEDB', '0302', 'Aula', NULL, NULL, NULL),
(34, 'CEDB', '0303', 'Aula', NULL, NULL, NULL),
(35, 'CEDB', '0304', 'Aula', NULL, NULL, NULL),
(36, 'CEDB', '0305', 'Aula', NULL, NULL, NULL),
(37, 'CEDB', '0306', 'Oficina Administrativa', NULL, NULL, NULL),
(38, 'CEDB', '0307', 'Oficina Administrativa', NULL, NULL, NULL),
(39, 'CEDB', '0308', 'Oficina Administrativa', NULL, NULL, NULL),
(40, 'CEDC', '0101', 'Aula', NULL, NULL, NULL),
(41, 'CEDC', '0102', 'Aula', NULL, NULL, NULL),
(42, 'CEDC', '0103', 'Aula', NULL, NULL, NULL),
(43, 'CEDC', '0104', 'Aula', NULL, NULL, NULL),
(44, 'CEDC', '0105', 'Aula', NULL, NULL, NULL),
(45, 'CEDC', '0201', 'Aula', NULL, NULL, NULL),
(46, 'CEDC', '0202', 'Aula', NULL, NULL, NULL),
(47, 'CEDC', '0203', 'Aula', NULL, NULL, NULL),
(48, 'CEDC', '0204', 'Aula', NULL, NULL, NULL),
(49, 'CEDC', '0205', 'Aula', NULL, NULL, NULL),
(50, 'CEDC', '0206', 'Aula', NULL, NULL, NULL),
(51, 'CEDC', '0207', 'Aula', NULL, NULL, NULL),
(52, 'CEDC', '0208', 'Aula', NULL, NULL, NULL),
(53, 'CEDC', '0209', 'Aula', NULL, NULL, NULL),
(54, 'CEDC', '0301', 'Aula', NULL, NULL, NULL),
(55, 'CEDC', '0302', 'Aula', NULL, NULL, NULL),
(56, 'CEDC', '0303', 'Aula', NULL, NULL, NULL),
(57, 'CEDC', '0304', 'Aula', NULL, NULL, NULL),
(58, 'CEDC', '0305', 'Aula', NULL, NULL, NULL),
(59, 'CEDC', '0306', 'Aula', NULL, NULL, NULL),
(60, 'CEDC', '0307', 'Aula', NULL, NULL, NULL),
(61, 'CEDC', '0308', 'Aula', NULL, NULL, NULL),
(62, 'CEDC', '0309', 'Aula', NULL, NULL, NULL),
(63, 'CEDC', '0310', 'Aula', NULL, NULL, NULL),
(64, 'CEDD', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(65, 'CEDD', '0102', 'Aula', NULL, NULL, NULL),
(66, 'CEDD', '0103', 'Aula', NULL, NULL, NULL),
(67, 'CEDD', '0105', 'Bodega', NULL, NULL, NULL),
(68, 'CEDD', '0106', 'Aula', NULL, NULL, NULL),
(69, 'CEDD', '0107', 'Aula', NULL, NULL, NULL),
(70, 'CEDD', '0108', 'Aula', NULL, NULL, NULL),
(71, 'CEDD', '0201', 'Aula', NULL, NULL, NULL),
(72, 'CEDD', '0202', 'Aula', NULL, NULL, NULL),
(73, 'CEDD', '0203', 'Aula', NULL, NULL, NULL),
(74, 'CEDD', '0204', 'Aula', NULL, NULL, NULL),
(75, 'CEDD', '0205', 'Oficina Administrativa', NULL, NULL, NULL),
(76, 'CEDD', '0206', 'Aula', NULL, NULL, NULL),
(77, 'CEDD', '0207', 'Aula', NULL, NULL, NULL),
(78, 'CEDD', '0208', 'Aula', NULL, NULL, NULL),
(79, 'CEDD', '0209', 'Aula', NULL, NULL, NULL),
(80, 'CEDD', '0301', 'Aula', NULL, NULL, NULL),
(81, 'CEDD', '0302', 'Aula', NULL, NULL, NULL),
(82, 'CEDD', '0303', 'Aula', NULL, NULL, NULL),
(83, 'CEDD', '0304', 'Aula', NULL, NULL, NULL),
(84, 'CEDD', '0305', 'Aula', NULL, NULL, NULL),
(85, 'CEDD', '0306', 'Aula', NULL, NULL, NULL),
(86, 'CEDD', '0307', 'Aula', NULL, NULL, NULL),
(87, 'CEDD', '0308', 'Aula', NULL, NULL, NULL),
(88, 'CEDD', '0309', 'Aula', NULL, NULL, NULL),
(89, 'CEDE', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(90, 'CEDE', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(91, 'CEDE', '0103', 'Aula', NULL, NULL, NULL),
(92, 'CEDE', '0104', 'Aula', NULL, NULL, NULL),
(93, 'CEDE', '0106', 'Aula', NULL, NULL, NULL),
(94, 'CEDE', '0107', 'Aula', NULL, NULL, NULL),
(95, 'CEDE', '0108', 'Aula', NULL, NULL, NULL),
(96, 'CEDE', '0109', 'Aula', NULL, NULL, NULL),
(97, 'CEDE', '0201', 'Aula', NULL, NULL, NULL),
(98, 'CEDE', '0202', 'Aula', NULL, NULL, NULL),
(99, 'CEDE', '0203', 'Aula', NULL, NULL, NULL),
(100, 'CEDE', '0204', 'Aula', NULL, NULL, NULL),
(101, 'CEDE', '0205', 'Aula', NULL, NULL, NULL),
(102, 'CEDE', '0206', 'Aula', NULL, NULL, NULL),
(103, 'CEDE', '0207', 'Aula', NULL, NULL, NULL),
(104, 'CEDE', '0208', 'Aula', NULL, NULL, NULL),
(105, 'CEDE', '0209', 'Aula', NULL, NULL, NULL),
(106, 'CEDE', '0210', 'Aula', NULL, NULL, NULL),
(107, 'CEDE', '0301', 'Aula', NULL, NULL, NULL),
(108, 'CEDE', '0302', 'Aula', NULL, NULL, NULL),
(109, 'CEDE', '0303', 'Aula', NULL, NULL, NULL),
(110, 'CEDE', '0304', 'Aula', NULL, NULL, NULL),
(111, 'CEDE', '0305', 'Aula', NULL, NULL, NULL),
(112, 'CEDE', '0306', 'Aula', NULL, NULL, NULL),
(113, 'CEDE', '0307', 'Aula', NULL, NULL, NULL),
(114, 'CEDE', '0308', 'Aula', NULL, NULL, NULL),
(115, 'CEDE', '0309', 'Aula', NULL, NULL, NULL),
(116, 'CEDF', '0101', 'Aula', NULL, NULL, NULL),
(117, 'CEDF', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(118, 'CEDF', '0103', 'Oficina Administrativa', NULL, NULL, NULL),
(119, 'CEDF', '0104', 'Oficina Administrativa', NULL, NULL, NULL),
(120, 'CEDF', '0105', 'Aula', NULL, NULL, NULL),
(121, 'CEDF', '0106', 'Aula', NULL, NULL, NULL),
(122, 'CEDF', '0108', 'Laboratorio', NULL, NULL, NULL),
(123, 'CEDF', '0201', 'Aula', NULL, NULL, NULL),
(124, 'CEDF', '0202', 'Aula', NULL, NULL, NULL),
(125, 'CEDF', '0203', 'Aula', NULL, NULL, NULL),
(126, 'CEDF', '0204', 'Aula', NULL, NULL, NULL),
(127, 'CEDF', '0205', 'Aula', NULL, NULL, NULL),
(128, 'CEDF', '0206', 'Aula', NULL, NULL, NULL),
(129, 'CEDF', '0207', 'Aula', NULL, NULL, NULL),
(130, 'CEDF', '0208', 'Aula', NULL, NULL, NULL),
(131, 'CEDF', '0209', 'Aula', NULL, NULL, NULL),
(132, 'CEDF', '0301', 'Aula', NULL, NULL, NULL),
(133, 'CEDF', '0302', 'Aula', NULL, NULL, NULL),
(134, 'CEDF', '0303', 'Aula', NULL, NULL, NULL),
(135, 'CEDF', '0304', 'Aula', NULL, NULL, NULL),
(136, 'CEDF', '0305', 'Aula', NULL, NULL, NULL),
(137, 'CEDF', '0306', 'Aula', NULL, NULL, NULL),
(138, 'CEDF', '0307', 'Aula', NULL, NULL, NULL),
(139, 'CEDF', '0308', 'Aula', NULL, NULL, NULL),
(140, 'CEDF', '0309', 'Aula', NULL, NULL, NULL),
(141, 'CEDG', '0101-A', 'Oficina Administrativa', NULL, NULL, NULL),
(142, 'CEDG', '0101', 'Laboratorio', NULL, NULL, NULL),
(143, 'CEDG', '0102', 'Bodega', NULL, NULL, NULL),
(144, 'CEDG', '0103', 'Laboratorio', NULL, NULL, NULL),
(145, 'CEDG', '0106', 'Bodega', NULL, NULL, NULL),
(146, 'CEDG', '0107', 'Laboratorio', NULL, NULL, NULL),
(147, 'CEDG', '0108', 'Oficina Administrativa', NULL, NULL, NULL),
(148, 'CEDG', '0109', 'Oficina Administrativa', NULL, NULL, NULL),
(149, 'CEDG', '0201', 'Oficina Administrativa', NULL, NULL, NULL),
(150, 'CEDG', '0202', 'Oficina Administrativa', NULL, NULL, NULL),
(151, 'CEDG', '0203', 'Oficina Administrativa', NULL, NULL, NULL),
(152, 'CEDG', '0206', 'Oficina Administrativa', NULL, NULL, NULL),
(153, 'CEDG', '0207', 'Oficina Administrativa', NULL, NULL, NULL),
(154, 'CEDG', '0208', 'Oficina Administrativa', NULL, NULL, NULL),
(155, 'CEDG', '0301', 'Oficina Administrativa', NULL, NULL, NULL),
(156, 'CEDG', '0302', 'Oficina Administrativa', NULL, NULL, NULL),
(157, 'CEDG', '0303', 'Oficina Administrativa', NULL, NULL, NULL),
(158, 'CEDG', '0306', 'Oficina Administrativa', NULL, NULL, NULL),
(159, 'CEDG', '0307', 'Oficina Administrativa', NULL, NULL, NULL),
(160, 'CEDG', '0309', 'Oficina Administrativa', NULL, NULL, NULL),
(161, 'CEDH', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(162, 'CEDH', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(163, 'CEDH', '0103', 'Oficina Administrativa', NULL, NULL, NULL),
(164, 'CEDH', '0104', 'Oficina Administrativa', NULL, NULL, NULL),
(165, 'CEDH', '0105', 'Oficina Administrativa', NULL, NULL, NULL),
(166, 'CEDH', '0106', 'Oficina Administrativa', NULL, NULL, NULL),
(167, 'CEDH', '0201', 'Bodega', NULL, NULL, NULL),
(168, 'CEDH', '0202', 'Bodega', NULL, NULL, NULL),
(169, 'CEDH', '0205', 'Bodega', NULL, NULL, NULL),
(170, 'CEDH', '0301', 'Aula', NULL, NULL, NULL),
(171, 'CEDH', '0302', 'Aula', NULL, NULL, NULL),
(172, 'CEDH', '0303', 'Aula', NULL, NULL, NULL),
(173, 'CEDH', '0304', 'Aula', NULL, NULL, NULL),
(174, 'CEDH', '0305', 'Bodega', NULL, NULL, NULL),
(175, 'CEDH', '0306', 'Aula', NULL, NULL, NULL),
(176, 'CEDH', '0307', 'Aula', NULL, NULL, NULL),
(177, 'CEDH', '0308', 'Aula', NULL, NULL, NULL),
(178, 'CEDH', '0309', 'Aula', NULL, NULL, NULL),
(179, 'CEDI', '0101', 'Bodega', NULL, NULL, NULL),
(180, 'CEDI', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(181, 'CEDI', '0103', 'Oficina Administrativa', NULL, NULL, NULL),
(182, 'CEDI', '0104', 'Oficina Administrativa', NULL, NULL, NULL),
(183, 'CEDI', '0105', 'Oficina Administrativa', NULL, NULL, NULL),
(184, 'CEDI', '0106', 'Bodega', NULL, NULL, NULL),
(185, 'CEDI', '0107', 'Laboratorio', NULL, NULL, NULL),
(186, 'CEDI', '0108', 'Laboratorio', NULL, NULL, NULL),
(187, 'CEDI', '0110', 'Oficina Administrativa', NULL, NULL, NULL),
(188, 'CEDI', '0201', 'Aula', NULL, NULL, NULL),
(189, 'CEDI', '0202', 'Oficina Administrativa', NULL, NULL, NULL),
(190, 'CEDI', '0203', 'Laboratorio', NULL, NULL, NULL),
(191, 'CEDI', '0204', 'Laboratorio', NULL, NULL, NULL),
(192, 'CEDI', '0205', 'Aula', NULL, NULL, NULL),
(193, 'CEDI', '0206', 'Aula', NULL, NULL, NULL),
(194, 'CEDI', '0207', 'Aula', NULL, NULL, NULL),
(195, 'CEDI', '0208', 'Aula', NULL, NULL, NULL),
(196, 'CEDI', '0301', 'Aula', NULL, NULL, NULL),
(197, 'CEDI', '0302', 'Aula', NULL, NULL, NULL),
(198, 'CEDI', '0303', 'Aula', NULL, NULL, NULL),
(199, 'CEDI', '0304', 'Aula', NULL, NULL, NULL),
(200, 'CEDI', '0305', 'Aula', NULL, NULL, NULL),
(201, 'CEDI', '0306', 'Aula', NULL, NULL, NULL),
(202, 'CEDI', '0307', 'Aula', NULL, NULL, NULL),
(203, 'CEDI', '0308', 'Aula', NULL, NULL, NULL),
(204, 'CEDI', '0309', 'Aula', NULL, NULL, NULL),
(205, 'CEDJ', '0101', 'Oficina Administrativa', NULL, NULL, NULL),
(206, 'CEDJ', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(207, 'CEDJ', '0104', 'Bodega', NULL, NULL, NULL),
(208, 'CEDJ', '0201', 'Aula', NULL, NULL, NULL),
(209, 'CEDJ', '0202', 'Aula', NULL, NULL, NULL),
(210, 'CEDJ', '0203', 'Aula', NULL, NULL, NULL),
(211, 'CEDJ', '0204', 'Aula', NULL, NULL, NULL),
(212, 'CEDJ', '0205', 'Aula', NULL, NULL, NULL),
(213, 'CEDJ', '0206', 'Aula', NULL, NULL, NULL),
(214, 'CEDJ', '0207', 'Aula', NULL, NULL, NULL),
(215, 'CEDJ', '0208', 'Aula', NULL, NULL, NULL),
(216, 'CEDJ', '0209', 'Aula', NULL, NULL, NULL),
(217, 'CEDJ', '0301', 'Aula', NULL, NULL, NULL),
(218, 'CEDJ', '0302', 'Aula', NULL, NULL, NULL),
(219, 'CEDJ', '0303', 'Aula', NULL, NULL, NULL),
(220, 'CEDJ', '0304', 'Aula', NULL, NULL, NULL),
(221, 'CEDJ', '0305', 'Aula', NULL, NULL, NULL),
(222, 'CEDJ', '0306', 'Aula', NULL, NULL, NULL),
(223, 'CEDJ', '0307', 'Aula', NULL, NULL, NULL),
(224, 'CEDJ', '0308', 'Aula', NULL, NULL, NULL),
(225, 'CEDJ', '0309', 'Aula', NULL, NULL, NULL),
(226, 'CEDK', '0102', 'Oficina Administrativa', NULL, NULL, NULL),
(227, 'CEDK', '0103', 'Oficina Administrativa', NULL, NULL, NULL),
(228, 'CEDK', '0109', 'Bodega', NULL, NULL, NULL),
(229, 'CEDK', '0110', 'Oficina Administrativa', NULL, NULL, NULL),
(230, 'CEDK', '0111', 'Bodega', NULL, NULL, NULL),
(231, 'CEDK', '0112', 'Bodega', NULL, NULL, NULL),
(232, 'CEDK', '0114', 'Laboratorio', NULL, NULL, NULL),
(233, 'CEDK', '0115', 'Oficina Administrativa', NULL, NULL, NULL),
(234, 'CEDK', '0202', 'Oficina Administrativa', NULL, NULL, NULL),
(235, 'CEDK', '0203', 'Aula', NULL, NULL, NULL),
(236, 'CEDK', '0204', 'Aula', NULL, NULL, NULL),
(237, 'CEDK', '0205', 'Aula', NULL, NULL, NULL),
(238, 'CEDK', '0206', 'Aula', NULL, NULL, NULL),
(239, 'CEDK', '0207', 'Aula', NULL, NULL, NULL),
(240, 'CEDK', '0208', 'Aula', NULL, NULL, NULL),
(241, 'CEDK', '0209', 'Aula', NULL, NULL, NULL),
(242, 'CEDK', '0210', 'Aula', NULL, NULL, NULL),
(243, 'CEDK', '0302', 'Oficina Administrativa', NULL, NULL, NULL),
(244, 'CEDK', '0303', 'Oficina Administrativa', NULL, NULL, NULL),
(245, 'CEDL', '0101', 'Aula', NULL, NULL, NULL),
(246, 'CEDL', '0102', 'Laboratorio', NULL, NULL, NULL),
(247, 'CEDL', '0103', 'Laboratorio', NULL, NULL, NULL),
(248, 'CEDL', '0104', 'Laboratorio', NULL, NULL, NULL),
(249, 'CEDL', '0105', 'Oficina Administrativa', NULL, NULL, NULL),
(250, 'CEDL', '0108', 'Laboratorio', NULL, NULL, NULL),
(251, 'CEDL', '0109', 'Oficina Administrativa', NULL, NULL, NULL),
(252, 'CEDL', '0201', 'Laboratorio', NULL, NULL, NULL),
(253, 'CEDL', '0202', 'Laboratorio', NULL, NULL, NULL),
(254, 'CEDL', '0204', 'Laboratorio', NULL, NULL, NULL),
(255, 'CEDL', '0205', 'Oficina Administrativa', NULL, NULL, NULL),
(256, 'CEDL', '0206', 'Laboratorio', NULL, NULL, NULL),
(257, 'CEDL', '0207', 'Laboratorio', NULL, NULL, NULL),
(258, 'CEDL', '0208', 'Laboratorio', NULL, NULL, NULL),
(259, 'CEDL', '0209', 'Laboratorio', NULL, NULL, NULL),
(260, 'CEDL', '0301', 'Laboratorio', NULL, NULL, NULL),
(261, 'CEDL', '0302', 'Laboratorio', NULL, NULL, NULL),
(262, 'CEDL', '0303', 'Laboratorio', NULL, NULL, NULL),
(263, 'CEDL', '0304', 'Oficina Administrativa', NULL, NULL, NULL),
(264, 'CEDL', '0305', 'Oficina Administrativa', NULL, NULL, NULL),
(265, 'CEDL', '0306', 'Aula', NULL, NULL, NULL),
(266, 'CEDL', '0308', 'Oficina Administrativa', NULL, NULL, NULL),
(267, 'CEDM', '0101', 'Laboratorio', NULL, NULL, NULL),
(268, 'CEDM', '0102', 'Aula', NULL, NULL, NULL),
(269, 'CEDM', '0103', 'Aula', NULL, NULL, NULL),
(270, 'CEDM', '0104', 'Aula', NULL, NULL, NULL),
(271, 'CEDM', '0105', 'Aula', NULL, NULL, NULL),
(272, 'CEDM', '0106', 'Aula', NULL, NULL, NULL),
(273, 'CEDM', '0107', 'Oficina Administrativa', NULL, NULL, NULL),
(274, 'CEDM', '0108', 'Oficina Administrativa', NULL, NULL, NULL),
(275, 'CEDM', '0201', 'Oficina Administrativa', NULL, NULL, NULL),
(276, 'CEDM', '0203', 'Oficina Administrativa', NULL, NULL, NULL),
(277, 'CEDM', '0301', 'Oficina Administrativa', NULL, NULL, NULL),
(278, 'CEDN', '0101', 'Laboratorio', NULL, NULL, NULL),
(279, 'CEDN', '0102', 'Laboratorio', NULL, NULL, NULL),
(280, 'CEDN', '0103', 'Aula', NULL, NULL, NULL),
(281, 'CEDN', '0104', 'Aula', NULL, NULL, NULL),
(282, 'CEDN', '0105', 'Aula', NULL, NULL, NULL),
(283, 'CEDN', '0106', 'Aula', NULL, NULL, NULL),
(284, 'CEDN', '0107', 'Aula', NULL, NULL, NULL),
(285, 'CEDN', '0108', 'Aula', NULL, NULL, NULL),
(286, 'CEDN', '0200', 'Oficina Administrativa', NULL, NULL, NULL),
(287, 'CEDN', '0201', 'Aula', NULL, NULL, NULL),
(288, 'CEDN', '0202', 'Aula', NULL, NULL, NULL),
(289, 'CEDN', '0203', 'Aula', NULL, NULL, NULL),
(290, 'CEDN', '0204', 'Aula', NULL, NULL, NULL),
(291, 'CEDN', '0205', 'Aula', NULL, NULL, NULL),
(292, 'CEDN', '0206A', 'Oficina Administrativa', NULL, NULL, NULL),
(293, 'CEDN', '0206', 'Laboratorio', NULL, NULL, NULL),
(294, 'CEDN', '0207', 'Aula', NULL, NULL, NULL),
(295, 'CEDN', '0208', 'Aula', NULL, NULL, NULL),
(296, 'CEDN', '0209', 'Aula', NULL, NULL, NULL),
(297, 'CEDN', '0210', 'Aula', NULL, NULL, NULL),
(298, 'CEDN', '0211', 'Aula', NULL, NULL, NULL),
(299, 'CEDN', '0212', 'Aula', NULL, NULL, NULL),
(300, 'CEDN', '0213', 'Aula', NULL, NULL, NULL),
(301, 'CEDN', '0300', 'Aula', NULL, NULL, NULL),
(302, 'CEDN', '0301', 'Aula', NULL, NULL, NULL),
(303, 'CEDN', '0302', 'Oficina Administrativa', NULL, NULL, NULL),
(304, 'CEDN', '0304', 'Oficina Administrativa', NULL, NULL, NULL),
(305, 'CEDN', '0305', 'Aula', NULL, NULL, NULL),
(306, 'CEDN', '0306', 'Aula', NULL, NULL, NULL),
(307, 'CEDN', '0307', 'Aula', NULL, NULL, NULL),
(308, 'CEDN', '0308', 'Aula', NULL, NULL, NULL),
(309, 'CEDN', '0309', 'Aula', NULL, NULL, NULL),
(310, 'CEDN', '0310', 'Aula', NULL, NULL, NULL),
(311, 'CEDN', '0311', 'Aula', NULL, NULL, NULL),
(312, 'CEDAA', '0001', 'Aula Amplia', NULL, NULL, NULL),
(313, 'CEDAA', '0002', 'Aula Amplia', NULL, NULL, NULL),
(314, 'CEDAA', '0003', 'Aula Amplia', NULL, NULL, NULL),
(315, 'CEDAA', '0004', 'Aula Amplia', NULL, NULL, NULL),
(316, 'CEDAA', '0005', 'Aula Amplia', NULL, NULL, NULL),
(317, 'CEDAA', '0006', 'Aula Amplia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Eventos_Admin`
--

CREATE TABLE `Eventos_Admin` (
  `ID_Evento` int NOT NULL,
  `Nombre_Evento` varchar(255) NOT NULL,
  `Descripcion_Evento` text,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Fin` time NOT NULL,
  `Etiqueta` varchar(100) DEFAULT NULL,
  `Participantes` text NOT NULL,
  `Notificaciones` text,
  `Hora_Noti` time NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fechas_Limite`
--

CREATE TABLE `Fechas_Limite` (
  `ID` int NOT NULL,
  `Fecha_Limite` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `Usuario_ID` bigint DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Justificaciones`
--

CREATE TABLE `Justificaciones` (
  `ID_Justificacion` int NOT NULL,
  `Departamento_ID` int NOT NULL,
  `Codigo_Usuario` bigint NOT NULL,
  `Justificacion` text NOT NULL,
  `Fecha_Justificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Justificacion_Enviada` tinyint(1) DEFAULT '0',
  `Notificacion_Vista` tinyint(1) DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Notificaciones`
--

CREATE TABLE `Notificaciones` (
  `ID` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Mensaje` text NOT NULL,
  `Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Usuario_ID` bigint DEFAULT NULL,
  `Vista` tinyint(1) DEFAULT '0',
  `Emisor_ID` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Plantilla_Dep`
--

CREATE TABLE `Plantilla_Dep` (
  `ID_Archivo_Dep` int NOT NULL,
  `Nombre_Archivo_Dep` varchar(255) NOT NULL,
  `Tamaño_Archivo_Dep` int NOT NULL,
  `Usuario_ID` bigint DEFAULT NULL,
  `Fecha_Subida_Dep` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Departamento_ID` int NOT NULL,
  `Notificacion_Vista` tinyint(1) DEFAULT '0'
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Plantilla_SA`
--

CREATE TABLE `Plantilla_SA` (
  `ID_Archivo_Dep` int NOT NULL,
  `Nombre_Archivo_Dep` varchar(255) NOT NULL,
  `Contenido_Archivo_Dep` longblob NOT NULL,
  `Fecha_Subida_Dep` varchar(255) NOT NULL,
  `Departamento_ID` int NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Roles`
--

CREATE TABLE `Roles` (
  `Rol_ID` int NOT NULL,
  `Nombre_Rol` varchar(80) NOT NULL
);

--
-- Volcado de datos para la tabla `Roles`
--

INSERT INTO `Roles` (`Rol_ID`, `Nombre_Rol`) VALUES
(1, 'Jefe de Departamento'),
(2, 'Secretaría Administrativa'),
(3, 'Coordinación de Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `Codigo` bigint NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Rol_ID` int DEFAULT NULL,
  `IconoColor` varchar(7) DEFAULT NULL
);

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`Codigo`, `Nombre`, `Apellido`, `Correo`, `Pass`, `Genero`, `Rol_ID`, `IconoColor`) VALUES
(2100123456, 'Juan', 'Perez', 'juan.perez@cucea.udg', '$2y$10$2A9Pn2fxwfwdXDAnIFbKquI1k0V2GAYTMqhzwbINKN7qFJbZoHcuW', 'Masculino', 1, '0'),
(2101234567, 'Maria', 'Lopez', 'maria.lopez@cucea.udg', '$2y$10$rHll2Scs8aLrdHq/V.xs9eLckxvpKNptrNkO6IrNCmMBXE625UmJe', 'Femenino', 2, '0'),
(2102345678, 'Luis', 'Garcia', 'luis.garcia@cucea.udg', '$2y$10$F103AIZ/hM54Z4kxoOQN4ON/9u3zc9eZgtnqwdEVRevGU4UoyilIK', 'Masculino', 3, '0'),
(2103456789, 'Ana', 'Martinez', 'ana.martinez@cucea.udg', '$2y$10$uJfMIyGysq9SHFILhEUUb.sCz0e1DgA9GcgiWTF1WTjA5ZFuwjQr6', 'Femenino', 1, '0'),
(2104567890, 'Denisse', 'Murillo', 'denisse.murillo@cucea.udg', '$2y$10$ryeIOeB4.B1Mu0XDikiCd.PxmypLkJalBfHZ1s/VRPyhk9sm9csau', 'Femenino', 2, '0'),
(2105678901, 'Sofia', 'Gonzalez', 'sofia.gonzalez@cucea.udg', '$2y$10$exYWpri5mFr28eddLe1N9uTpGBcpjQ1VHlC500PJuzsSfE400TS8y', 'Femenino', 3, '#FF6F32'),
(2106789012, 'Carlos', 'Hernandez', 'carlos.hernandez@cucea.udg', '$2y$10$KKSdXiE1SlnwuCZMe.PECe6RPOL9.iJB8fZzDmWfpzVAEqXuCDtRC', 'Masculino', 1, '0'),
(2107890123, 'Aldo', 'Ceja', 'aldo.ceja@cucea.udg', '$2y$10$IBjmuFM9Tr4wtXmoxEkG1uJmNJ6QVCVSjunp5dhBRox15z9kaFpea', 'Masculino', 2, '0'),
(2108901234, 'Daniel', 'Sanchez', 'daniel.sanchez@cucea.udg', '$2y$10$Ga5nalPVMTBLflzQs/HGZuDn.QC62eQ73YbHuGRoNFd8iougiMziG', 'Masculino', 3, '0'),
(2109012345, 'Monica', 'Ramirez', 'monica.ramirez@cucea.udg', '$2y$10$yLFO/TZ13f84vFiiQchiA.ll7ZdSrVQo75D.Xj0kd1.nt20Pc3U9e', 'Femenino', 3, '0'),
(2110123456, 'Pedro', 'Gómez', 'pedro.gomez@cucea.udg', '$2y$10$b0Sj/bzmz6zx9KSnqrVCKO4Kcika03V2X6Gh0.MoJoDlRP/e1J/Ma', 'Masculino', 1, '0'),
(2111234567, 'Laura', 'Torres', 'laura.torres@cucea.udg', '$2y$10$Nij2ES6PLh2dDeYoXMwS3.UvCNauWm9Kz6ga8dxPoN7Kj1YMACYAu', 'Femenino', 1, '0'),
(2112345678, 'Javier', 'Ruiz', 'javier.ruiz@cucea.udg', '$2y$10$Mv9xJYuiDx/UkAfed3DKj.jLtUt3.KgHiSLe7JHbzZ.a61EBWAszG', 'Masculino', 1, '0'),
(2113456789, 'Sara', 'Robles', 'srobles@cucea.udg', '$2y$10$0rnpmcMYrDafjhiWvYUuJuMBmJhpqb1ftZM7wd8OPAt/bbPitaAKO', 'Femenino', 1, '0'),
(2114567890, 'Guillermo', 'Sierra', 'gsierraj@cucea.udg', '$2y$10$OD1ibJKf4W6sEsgqDgsgFOad78huJoH30wFM1KHD5IRuzBPuj2Ilu', 'Masculino', 1, '0'),
(2115678901, 'Mariana', 'Ponce', 'mariana.ponce@cucea.udg', '$2y$10$E12hhQu5WgqX6C9OQfdU6ulQnk559nvAqAqVLvUCb9rURPNDRErQ2', 'Femenino', 1, '0'),
(2116789012, 'César', 'Mora', 'cesar.mora@cucea.udg', '$2y$10$2viLr.pTNLk.o9dxhwwequwA0L0sXPosLupQd/jruXWJAfKRSWAde', 'Masculino', 1, '0'),
(2121234567, 'Alejandro', 'Campos', 'a.campos@cucea.udg', '$2y$10$V50JUBgSX7j9u2It6Yq0YOkdwBgeqOqmGNAxunPV2dJE2cptwiesm', 'Masculino', 1, '0'),
(2130192837, 'José', 'Sánchez', 'jsanchez@cucea.udg', '$2y$10$BHxc82uVfhvFpy0VgxhGgufr2T7/on0NXpDx5pV7yie6dwrk2CPaq', 'Masculino', 1, '0'),
(2140596871, 'Cristian', 'Alcantar', 'cristian.alcantar@cucea.udg', '$2y$10$r/3a2kmXp9iM3LYMXMntK.Q/.lAxp8Ab.gwwfgqYxhZ8U./ogNGW.', 'Masculino', 1, '0'),
(2151234098, 'Alejandro', 'López', 'alejandro.lopez@cucea.udg', '$2y$10$t8lIDPY7VJ8Gw6DEphaayemkfCwWSAS2Guk7vkcySZiDqzdAdNxgi', 'Masculino', 1, '0'),
(2161098234, 'Carlos', 'Flores', 'carlos.flores@cucea.udg', '$2y$10$zfiPi/LefmaQn1B/SZaJs.JUY3xo3y2Vm3o29kLH5mSEBhL95rsNi', 'Masculino', 1, '0'),
(2176859401, 'Javier', 'Ramirez', 'javierr@cucea.udg', '$2y$10$0BTkv7CYwMB/XoRrjOiQt.9JBdJ2a2oKkiqQe0YwVtCWfcCBJs0Fq', 'Masculino', 1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_Departamentos`
--

CREATE TABLE `Usuarios_Departamentos` (
  `Usuario_ID` bigint NOT NULL,
  `Departamento_ID` int NOT NULL
);

--
-- Volcado de datos para la tabla `Usuarios_Departamentos`
--

INSERT INTO `Usuarios_Departamentos` (`Usuario_ID`, `Departamento_ID`) VALUES
(2100123456, 1),
(2103456789, 2),
(2106789012, 3),
(2110123456, 4),
(2111234567, 5),
(2112345678, 6),
(2113456789, 7),
(2114567890, 8),
(2115678901, 9),
(2116789012, 10),
(2121234567, 11),
(2130192837, 12),
(2140596871, 13),
(2151234098, 14),
(2161098234, 15),
(2176859401, 16);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Coord_Per_Prof`
--
ALTER TABLE `Coord_Per_Prof`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Administración`
--
ALTER TABLE `Data_Administración`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Auditoría`
--
ALTER TABLE `Data_Auditoría`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Ciencias_Sociales`
--
ALTER TABLE `Data_Ciencias_Sociales`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Contabilidad`
--
ALTER TABLE `Data_Contabilidad`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Economía`
--
ALTER TABLE `Data_Economía`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Estudios_Regionales`
--
ALTER TABLE `Data_Estudios_Regionales`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Finanzas`
--
ALTER TABLE `Data_Finanzas`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Impuestos`
--
ALTER TABLE `Data_Impuestos`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Mercadotecnia`
--
ALTER TABLE `Data_Mercadotecnia`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Métodos_Cuantitativos`
--
ALTER TABLE `Data_Métodos_Cuantitativos`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_PALE`
--
ALTER TABLE `Data_PALE`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Políticas_Públicas`
--
ALTER TABLE `Data_Políticas_Públicas`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Posgrados`
--
ALTER TABLE `Data_Posgrados`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Recursos_Humanos`
--
ALTER TABLE `Data_Recursos_Humanos`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Sistemas_de_Información`
--
ALTER TABLE `Data_Sistemas_de_Información`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Data_Turismo`
--
ALTER TABLE `Data_Turismo`
  ADD PRIMARY KEY (`ID_Plantilla`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Departamentos`
--
ALTER TABLE `Departamentos`
  ADD PRIMARY KEY (`Departamento_ID`);

--
-- Indices de la tabla `Espacios`
--
ALTER TABLE `Espacios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Eventos_Admin`
--
ALTER TABLE `Eventos_Admin`
  ADD PRIMARY KEY (`ID_Evento`);

--
-- Indices de la tabla `Fechas_Limite`
--
ALTER TABLE `Fechas_Limite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `Justificaciones`
--
ALTER TABLE `Justificaciones`
  ADD PRIMARY KEY (`ID_Justificacion`),
  ADD KEY `Departamento_ID` (`Departamento_ID`),
  ADD KEY `Codigo_Usuario` (`Codigo_Usuario`);

--
-- Indices de la tabla `Notificaciones`
--
ALTER TABLE `Notificaciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Usuario_ID` (`Usuario_ID`);

--
-- Indices de la tabla `Plantilla_Dep`
--
ALTER TABLE `Plantilla_Dep`
  ADD PRIMARY KEY (`ID_Archivo_Dep`),
  ADD KEY `Usuario_ID` (`Usuario_ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Plantilla_SA`
--
ALTER TABLE `Plantilla_SA`
  ADD PRIMARY KEY (`ID_Archivo_Dep`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- Indices de la tabla `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`Rol_ID`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Rol_ID` (`Rol_ID`);

--
-- Indices de la tabla `Usuarios_Departamentos`
--
ALTER TABLE `Usuarios_Departamentos`
  ADD PRIMARY KEY (`Usuario_ID`,`Departamento_ID`),
  ADD KEY `Departamento_ID` (`Departamento_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Coord_Per_Prof`
--
ALTER TABLE `Coord_Per_Prof`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Administración`
--
ALTER TABLE `Data_Administración`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Auditoría`
--
ALTER TABLE `Data_Auditoría`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Ciencias_Sociales`
--
ALTER TABLE `Data_Ciencias_Sociales`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Contabilidad`
--
ALTER TABLE `Data_Contabilidad`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Economía`
--
ALTER TABLE `Data_Economía`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Estudios_Regionales`
--
ALTER TABLE `Data_Estudios_Regionales`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Finanzas`
--
ALTER TABLE `Data_Finanzas`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Impuestos`
--
ALTER TABLE `Data_Impuestos`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Mercadotecnia`
--
ALTER TABLE `Data_Mercadotecnia`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Métodos_Cuantitativos`
--
ALTER TABLE `Data_Métodos_Cuantitativos`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_PALE`
--
ALTER TABLE `Data_PALE`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Políticas_Públicas`
--
ALTER TABLE `Data_Políticas_Públicas`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Posgrados`
--
ALTER TABLE `Data_Posgrados`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Recursos_Humanos`
--
ALTER TABLE `Data_Recursos_Humanos`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Sistemas_de_Información`
--
ALTER TABLE `Data_Sistemas_de_Información`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Data_Turismo`
--
ALTER TABLE `Data_Turismo`
  MODIFY `ID_Plantilla` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Departamentos`
--
ALTER TABLE `Departamentos`
  MODIFY `Departamento_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `Espacios`
--
ALTER TABLE `Espacios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `Eventos_Admin`
--
ALTER TABLE `Eventos_Admin`
  MODIFY `ID_Evento` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Fechas_Limite`
--
ALTER TABLE `Fechas_Limite`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Justificaciones`
--
ALTER TABLE `Justificaciones`
  MODIFY `ID_Justificacion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Notificaciones`
--
ALTER TABLE `Notificaciones`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Plantilla_Dep`
--
ALTER TABLE `Plantilla_Dep`
  MODIFY `ID_Archivo_Dep` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Plantilla_SA`
--
ALTER TABLE `Plantilla_SA`
  MODIFY `ID_Archivo_Dep` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Roles`
--
ALTER TABLE `Roles`
  MODIFY `Rol_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Coord_Per_Prof`
--
ALTER TABLE `Coord_Per_Prof`
  ADD CONSTRAINT `coord_per_prof_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Administración`
--
ALTER TABLE `Data_Administración`
  ADD CONSTRAINT `data_administración_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Auditoría`
--
ALTER TABLE `Data_Auditoría`
  ADD CONSTRAINT `data_auditoría_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Ciencias_Sociales`
--
ALTER TABLE `Data_Ciencias_Sociales`
  ADD CONSTRAINT `data_ciencias_sociales_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Contabilidad`
--
ALTER TABLE `Data_Contabilidad`
  ADD CONSTRAINT `data_contabilidad_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Economía`
--
ALTER TABLE `Data_Economía`
  ADD CONSTRAINT `data_economía_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Estudios_Regionales`
--
ALTER TABLE `Data_Estudios_Regionales`
  ADD CONSTRAINT `data_estudios_regionales_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Finanzas`
--
ALTER TABLE `Data_Finanzas`
  ADD CONSTRAINT `data_finanzas_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Impuestos`
--
ALTER TABLE `Data_Impuestos`
  ADD CONSTRAINT `data_impuestos_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Mercadotecnia`
--
ALTER TABLE `Data_Mercadotecnia`
  ADD CONSTRAINT `data_mercadotecnia_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Métodos_Cuantitativos`
--
ALTER TABLE `Data_Métodos_Cuantitativos`
  ADD CONSTRAINT `data_métodos_cuantitativos_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_PALE`
--
ALTER TABLE `Data_PALE`
  ADD CONSTRAINT `data_pale_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Políticas_Públicas`
--
ALTER TABLE `Data_Políticas_Públicas`
  ADD CONSTRAINT `data_políticas_públicas_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Posgrados`
--
ALTER TABLE `Data_Posgrados`
  ADD CONSTRAINT `data_posgrados_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Recursos_Humanos`
--
ALTER TABLE `Data_Recursos_Humanos`
  ADD CONSTRAINT `data_recursos_humanos_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Sistemas_de_Información`
--
ALTER TABLE `Data_Sistemas_de_Información`
  ADD CONSTRAINT `data_sistemas_de_información_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Data_Turismo`
--
ALTER TABLE `Data_Turismo`
  ADD CONSTRAINT `data_turismo_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Fechas_Limite`
--
ALTER TABLE `Fechas_Limite`
  ADD CONSTRAINT `fechas_limite_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`Codigo`);

--
-- Filtros para la tabla `Justificaciones`
--
ALTER TABLE `Justificaciones`
  ADD CONSTRAINT `justificaciones_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`),
  ADD CONSTRAINT `justificaciones_ibfk_2` FOREIGN KEY (`Codigo_Usuario`) REFERENCES `Usuarios` (`Codigo`);

--
-- Filtros para la tabla `Notificaciones`
--
ALTER TABLE `Notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`Codigo`);

--
-- Filtros para la tabla `Plantilla_Dep`
--
ALTER TABLE `Plantilla_Dep`
  ADD CONSTRAINT `plantilla_dep_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`Codigo`),
  ADD CONSTRAINT `plantilla_dep_ibfk_2` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Plantilla_SA`
--
ALTER TABLE `Plantilla_SA`
  ADD CONSTRAINT `plantilla_sa_ibfk_1` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`);

--
-- Filtros para la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Rol_ID`) REFERENCES `Roles` (`Rol_ID`);

--
-- Filtros para la tabla `Usuarios_Departamentos`
--
ALTER TABLE `Usuarios_Departamentos`
  ADD CONSTRAINT `usuarios_departamentos_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`Codigo`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_departamentos_ibfk_2` FOREIGN KEY (`Departamento_ID`) REFERENCES `Departamentos` (`Departamento_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
