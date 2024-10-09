-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-10-2024 a las 23:11:08
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
-- Base de datos: `escuela_primaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id_administrativo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `grado_academico` varchar(50) DEFAULT NULL,
  `numero_cedula` varchar(20) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `nss` varchar(15) DEFAULT NULL,
  `experiencia_laboral` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`id_administrativo`, `id_usuario`, `puesto`, `grado_academico`, `numero_cedula`, `salario`, `nss`, `experiencia_laboral`) VALUES
(1, 218, 'Gerente de Recursos Humanos', 'Licenciatura en Psicología', '123456789', 35000.00, '123-45-6789', 'Más de 5 años en recursos humanos.'),
(2, 219, 'Coordinador de Proyectos', 'Ingeniería Industrial', '987654321', 45000.00, '987-65-4321', 'Gestión de proyectos en el sector tecnológico.'),
(3, 220, 'Analista Financiero', 'Licenciatura en Finanzas', '112233445', 40000.00, '123-12-1234', 'Experiencia en análisis de estados financieros.'),
(4, 221, 'Jefe de Marketing', 'Licenciatura en Mercadotecnia', '556677889', 48000.00, '987-98-7654', 'Estrategias de marketing digital y análisis de mercado.'),
(5, 222, 'Supervisor de Ventas', 'Licenciatura en Administración', '223344556', 37000.00, '321-54-9876', 'Más de 4 años de experiencia en ventas.'),
(6, 223, 'Asistente Administrativo', 'Licenciatura en Administración', '778899001', 25000.00, '654-32-1098', 'Funciones de apoyo administrativo y gestión de agenda.'),
(7, 224, 'Director de Operaciones', 'MBA', '998877665', 60000.00, '111-22-3333', 'Gestión de operaciones en empresas multinacionales.'),
(8, 225, 'Analista de Sistemas', 'Ingeniería en Sistemas', '333222111', 42000.00, '444-55-6666', 'Desarrollo y análisis de sistemas de información.'),
(9, 226, 'Gerente de TI', 'Ingeniería en Computación', '777888999', 70000.00, '222-33-4444', 'Implementación de tecnología en empresas.'),
(10, 227, 'Encargado de Logística', 'Ingeniería en Logística', '555666777', 38000.00, '555-66-7777', 'Coordinación de transporte y distribución.'),
(11, 228, 'Responsable de Calidad', 'Licenciatura en Calidad', '444555666', 42000.00, '888-99-0000', 'Gestión de calidad y mejora continua.'),
(12, 229, 'Contador', 'Licenciatura en Contaduría', '111222333', 45000.00, '777-88-9999', 'Contabilidad y auditoría financiera.'),
(13, 230, 'Director Financiero', 'MBA', '999888777', 75000.00, '123-45-6789', 'Gestión financiera en empresas.'),
(14, 231, 'Coordinador de Capacitación', 'Licenciatura en Educación', '123321123', 36000.00, '987-65-4321', 'Diseño e implementación de programas de capacitación.'),
(15, 232, 'Asesor Legal', 'Licenciatura en Derecho', '456654456', 50000.00, '543-21-6789', 'Asesoría legal en temas corporativos.'),
(16, 233, 'Desarrollador Web', 'Ingeniería en Sistemas', '789987789', 47000.00, '111-22-3333', 'Desarrollo de aplicaciones web y móviles.'),
(17, 234, 'Investigador de Mercado', 'Licenciatura en Mercadotecnia', '123456789', 34000.00, '222-33-4444', 'Investigación y análisis de tendencias de mercado.'),
(18, 235, 'Ejecutivo de Cuentas', 'Licenciatura en Administración', '987654321', 32000.00, '333-44-5555', 'Gestión de relaciones con clientes.'),
(19, 236, 'Jefe de Seguridad', 'Licenciatura en Seguridad', '654321987', 42000.00, '444-55-6666', 'Implementación de protocolos de seguridad.'),
(20, 237, 'Gerente de Proyectos', 'Ingeniería en Sistemas', '456123789', 50000.00, '555-66-7777', 'Gestión de proyectos tecnológicos.'),
(21, 238, 'Director de Recursos Humanos', 'MBA', '789456123', 60000.00, '666-77-8888', 'Liderazgo en recursos humanos.'),
(22, 239, 'Analista de Calidad', 'Licenciatura en Calidad', '321654987', 37000.00, '777-88-9999', 'Control de calidad en procesos.'),
(23, 240, 'Coordinador de Ventas', 'Licenciatura en Administración', '654789321', 40000.00, '888-99-0000', 'Coordinación de equipo de ventas.'),
(24, 241, 'Asistente de Marketing', 'Licenciatura en Mercadotecnia', '321321321', 28000.00, '111-22-3333', 'Apoyo en campañas de marketing.'),
(25, 242, 'Consultor de Negocios', 'MBA', '456456456', 52000.00, '222-33-4444', 'Asesoría a empresas para optimización.'),
(26, 243, 'Jefe de Compras', 'Licenciatura en Administración', '654654654', 45000.00, '333-44-5555', 'Gestión de compras y proveedores.'),
(27, 244, 'Gerente de Innovación', 'Licenciatura en Diseño', '789789789', 55000.00, '444-55-6666', 'Fomento a la innovación en productos.'),
(28, 245, 'Coordinador de Eventos', 'Licenciatura en Turismo', '987987987', 35000.00, '555-66-7777', 'Organización de eventos corporativos.'),
(29, 246, 'Asesor Financiero', 'Licenciatura en Finanzas', '654321456', 48000.00, '666-77-8888', 'Asesoría financiera personalizada.'),
(30, 247, 'Jefe de IT', 'Ingeniería en Sistemas', '321654321', 62000.00, '777-88-9999', 'Liderazgo en proyectos de IT.'),
(31, 248, 'Gerente de Relaciones Públicas', 'Licenciatura en Comunicación', '123654789', 50000.00, '888-99-0000', 'Gestión de relaciones con medios.'),
(32, 249, 'Encargado de Control Interno', 'Licenciatura en Contaduría', '789321654', 40000.00, '111-22-3333', 'Supervisión de auditorías internas.'),
(33, 250, 'Responsable de Responsabilidad Social', 'Licenciatura en Trabajo Social', '654789321', 39000.00, '222-33-4444', 'Gestión de programas de responsabilidad social.'),
(34, 251, 'Asistente de Administración', 'Licenciatura en Administración', '456321789', 26000.00, '333-44-5555', 'Apoyo en tareas administrativas.'),
(35, 252, 'Director de Proyectos Especiales', 'MBA', '987654123', 75000.00, '444-55-6666', 'Gestión de proyectos especiales.'),
(36, 253, 'Coordinador de Comunicación Interna', 'Licenciatura en Comunicación', '123789456', 35000.00, '555-66-7777', 'Comunicación interna y cultura organizacional.'),
(37, 254, 'Supervisor de Mantenimiento', 'Ingeniería Mecánica', '321987654', 43000.00, '666-77-8888', 'Supervisión de mantenimiento de instalaciones.'),
(38, 255, 'Gerente de Servicios Generales', 'Licenciatura en Administración', '987123456', 47000.00, '777-88-9999', 'Gestión de servicios generales y proveedores.'),
(52, 256, 'Jefe de Proyectos de Construcción', 'Ingeniería Civil', '111222333', 62000.00, '321-54-9876', 'Gestión de proyectos de construcción.'),
(53, 257, 'Responsable de Auditoría', 'Licenciatura en Contaduría', '444555666', 48000.00, '654-32-1098', 'Auditorías internas y externas.'),
(54, 258, 'Coordinador de Ventas Internacionales', 'Licenciatura en Comercio Internacional', '999888777', 55000.00, '123-45-6789', 'Desarrollo de estrategias de ventas en el extranjero.'),
(55, 259, 'Analista de Recursos Humanos', 'Licenciatura en Psicología', '222333444', 37000.00, '987-65-4321', 'Selección y capacitación de personal.'),
(56, 260, 'Gerente de Innovación y Desarrollo', 'MBA', '555666777', 70000.00, '111-22-3333', 'Fomento a la innovación en procesos y productos.'),
(57, 261, 'Director de Estrategia', 'Licenciatura en Administración', '888999000', 80000.00, '222-33-4444', 'Definición y seguimiento de la estrategia empresarial.'),
(58, 262, 'Jefe de Proyectos de IT', 'Ingeniería en Sistemas', '333444555', 65000.00, '333-44-5555', 'Liderazgo en proyectos tecnológicos.'),
(59, 263, 'Coordinador de Gestión de Talento', 'Licenciatura en Recursos Humanos', '666777888', 48000.00, '444-55-6666', 'Desarrollo y gestión de talento humano.'),
(60, 264, 'Asesor de Ventas', 'Licenciatura en Mercadotecnia', '999000111', 32000.00, '555-66-7777', 'Asesoría a clientes en productos y servicios.'),
(61, 265, 'Director de Tecnología', 'MBA', '123123123', 72000.00, '666-77-8888', 'Gestión de la infraestructura tecnológica.'),
(62, 266, 'Gerente de Producción', 'Ingeniería Industrial', '456456456', 60000.00, '777-88-9999', 'Supervisión de procesos de producción.'),
(63, 267, 'Coordinador de Marketing Digital', 'Licenciatura en Mercadotecnia', '789789789', 45000.00, '888-99-0000', 'Estrategias de marketing en línea.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `grado` varchar(10) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `historial_academico` text DEFAULT NULL,
  `acta_nacimiento` text DEFAULT NULL,
  `escuela_procedencia` varchar(100) DEFAULT NULL,
  `generacion_escolar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `id_usuario`, `matricula`, `grupo`, `grado`, `fecha_ingreso`, `historial_academico`, `acta_nacimiento`, `escuela_procedencia`, `generacion_escolar`) VALUES
(1, 268, '2023-0001', 'A', '1°', '2023-08-15', 'Promedio: 9.0', 'Acta_268.pdf', 'Escuela Primaria ABC', 'Generación 2023'),
(2, 269, '2023-0002', 'B', '1°', '2023-08-15', 'Promedio: 8.5', 'Acta_269.pdf', 'Escuela Primaria DEF', 'Generación 2023'),
(3, 270, '2023-0003', 'A', '1°', '2023-08-15', 'Promedio: 9.5', 'Acta_270.pdf', 'Escuela Primaria GHI', 'Generación 2023'),
(4, 271, '2023-0004', 'C', '1°', '2023-08-15', 'Promedio: 7.5', 'Acta_271.pdf', 'Escuela Primaria JKL', 'Generación 2023'),
(5, 272, '2023-0005', 'B', '1°', '2023-08-15', 'Promedio: 8.0', 'Acta_272.pdf', 'Escuela Primaria MNO', 'Generación 2023'),
(6, 273, '2023-0006', 'A', '1°', '2023-08-15', 'Promedio: 9.2', 'Acta_273.pdf', 'Escuela Primaria PQR', 'Generación 2023'),
(7, 274, '2023-0007', 'C', '1°', '2023-08-15', 'Promedio: 6.8', 'Acta_274.pdf', 'Escuela Primaria STU', 'Generación 2023'),
(8, 275, '2023-0008', 'B', '1°', '2023-08-15', 'Promedio: 8.3', 'Acta_275.pdf', 'Escuela Primaria VWX', 'Generación 2023'),
(9, 276, '2023-0009', 'A', '1°', '2023-08-15', 'Promedio: 9.1', 'Acta_276.pdf', 'Escuela Primaria YZA', 'Generación 2023'),
(10, 277, '2023-0010', 'C', '1°', '2023-08-15', 'Promedio: 7.0', 'Acta_277.pdf', 'Escuela Primaria BCD', 'Generación 2023'),
(11, 278, '2023-0011', 'A', '2°', '2023-08-15', 'Promedio: 8.7', 'Acta_278.pdf', 'Escuela Primaria EFG', 'Generación 2023'),
(12, 279, '2023-0012', 'B', '2°', '2023-08-15', 'Promedio: 9.4', 'Acta_279.pdf', 'Escuela Primaria HIJ', 'Generación 2023'),
(13, 280, '2023-0013', 'C', '2°', '2023-08-15', 'Promedio: 7.8', 'Acta_280.pdf', 'Escuela Primaria KLM', 'Generación 2023'),
(14, 281, '2023-0014', 'A', '2°', '2023-08-15', 'Promedio: 8.1', 'Acta_281.pdf', 'Escuela Primaria NOP', 'Generación 2023'),
(15, 282, '2023-0015', 'B', '2°', '2023-08-15', 'Promedio: 9.0', 'Acta_282.pdf', 'Escuela Primaria QRS', 'Generación 2023'),
(16, 283, '2023-0016', 'C', '2°', '2023-08-15', 'Promedio: 8.5', 'Acta_283.pdf', 'Escuela Primaria TUV', 'Generación 2023'),
(17, 284, '2023-0017', 'A', '2°', '2023-08-15', 'Promedio: 9.3', 'Acta_284.pdf', 'Escuela Primaria WXY', 'Generación 2023'),
(18, 285, '2023-0018', 'B', '2°', '2023-08-15', 'Promedio: 7.2', 'Acta_285.pdf', 'Escuela Primaria ZAB', 'Generación 2023'),
(19, 286, '2023-0019', 'C', '2°', '2023-08-15', 'Promedio: 6.5', 'Acta_286.pdf', 'Escuela Primaria CDE', 'Generación 2023'),
(20, 287, '2023-0020', 'A', '3°', '2023-08-15', 'Promedio: 8.6', 'Acta_287.pdf', 'Escuela Primaria FGH', 'Generación 2023'),
(21, 288, '2023-0021', 'B', '3°', '2023-08-15', 'Promedio: 9.5', 'Acta_288.pdf', 'Escuela Primaria IJK', 'Generación 2023'),
(22, 289, '2023-0022', 'C', '3°', '2023-08-15', 'Promedio: 8.2', 'Acta_289.pdf', 'Escuela Primaria LMN', 'Generación 2023'),
(23, 290, '2023-0023', 'A', '3°', '2023-08-15', 'Promedio: 7.9', 'Acta_290.pdf', 'Escuela Primaria OPQ', 'Generación 2023'),
(24, 291, '2023-0024', 'B', '3°', '2023-08-15', 'Promedio: 9.1', 'Acta_291.pdf', 'Escuela Primaria RST', 'Generación 2023'),
(25, 292, '2023-0025', 'C', '3°', '2023-08-15', 'Promedio: 8.0', 'Acta_292.pdf', 'Escuela Primaria UVW', 'Generación 2023'),
(26, 293, '2023-0026', 'A', '3°', '2023-08-15', 'Promedio: 9.4', 'Acta_293.pdf', 'Escuela Primaria XYZ', 'Generación 2023'),
(27, 294, '2023-0027', 'B', '3°', '2023-08-15', 'Promedio: 7.4', 'Acta_294.pdf', 'Escuela Primaria ABC', 'Generación 2023'),
(28, 295, '2023-0028', 'C', '3°', '2023-08-15', 'Promedio: 8.3', 'Acta_295.pdf', 'Escuela Primaria DEF', 'Generación 2023'),
(29, 296, '2023-0029', 'A', '4°', '2023-08-15', 'Promedio: 9.0', 'Acta_296.pdf', 'Escuela Primaria GHI', 'Generación 2023'),
(30, 297, '2023-0030', 'B', '4°', '2023-08-15', 'Promedio: 8.5', 'Acta_297.pdf', 'Escuela Primaria JKL', 'Generación 2023'),
(31, 298, '2023-0031', 'C', '4°', '2023-08-15', 'Promedio: 7.8', 'Acta_298.pdf', 'Escuela Primaria MNO', 'Generación 2023'),
(32, 299, '2023-0032', 'A', '4°', '2023-08-15', 'Promedio: 9.1', 'Acta_299.pdf', 'Escuela Primaria PQR', 'Generación 2023'),
(33, 300, '2023-0033', 'B', '4°', '2023-08-15', 'Promedio: 8.7', 'Acta_300.pdf', 'Escuela Primaria STU', 'Generación 2023'),
(34, 301, '2023-0034', 'C', '4°', '2023-08-15', 'Promedio: 7.3', 'Acta_301.pdf', 'Escuela Primaria VWX', 'Generación 2023'),
(35, 302, '2023-0035', 'A', '4°', '2023-08-15', 'Promedio: 8.9', 'Acta_302.pdf', 'Escuela Primaria YZA', 'Generación 2023'),
(36, 303, '2023-0036', 'B', '4°', '2023-08-15', 'Promedio: 9.2', 'Acta_303.pdf', 'Escuela Primaria BCD', 'Generación 2023'),
(37, 304, '2023-0037', 'C', '4°', '2023-08-15', 'Promedio: 8.1', 'Acta_304.pdf', 'Escuela Primaria EFG', 'Generación 2023'),
(38, 305, '2023-0038', 'A', '4°', '2023-08-15', 'Promedio: 9.0', 'Acta_305.pdf', 'Escuela Primaria HIJ', 'Generación 2023'),
(39, 306, '2023-0039', 'B', '4°', '2023-08-15', 'Promedio: 7.5', 'Acta_306.pdf', 'Escuela Primaria KLM', 'Generación 2023'),
(40, 307, '2023-0040', 'C', '4°', '2023-08-15', 'Promedio: 8.2', 'Acta_307.pdf', 'Escuela Primaria NOP', 'Generación 2023'),
(41, 308, '2023-0041', 'A', '5°', '2023-08-15', 'Promedio: 9.4', 'Acta_308.pdf', 'Escuela Primaria QRS', 'Generación 2023'),
(42, 309, '2023-0042', 'B', '5°', '2023-08-15', 'Promedio: 8.3', 'Acta_309.pdf', 'Escuela Primaria TUV', 'Generación 2023'),
(43, 310, '2023-0043', 'C', '5°', '2023-08-15', 'Promedio: 7.7', 'Acta_310.pdf', 'Escuela Primaria WXY', 'Generación 2023'),
(44, 311, '2023-0044', 'A', '5°', '2023-08-15', 'Promedio: 8.6', 'Acta_311.pdf', 'Escuela Primaria ZAB', 'Generación 2023'),
(45, 312, '2023-0045', 'B', '5°', '2023-08-15', 'Promedio: 9.1', 'Acta_312.pdf', 'Escuela Primaria CDE', 'Generación 2023'),
(46, 313, '2023-0046', 'C', '5°', '2023-08-15', 'Promedio: 8.0', 'Acta_313.pdf', 'Escuela Primaria FGH', 'Generación 2023'),
(47, 314, '2023-0047', 'A', '5°', '2023-08-15', 'Promedio: 9.3', 'Acta_314.pdf', 'Escuela Primaria IJK', 'Generación 2023'),
(48, 315, '2023-0048', 'B', '5°', '2023-08-15', 'Promedio: 7.9', 'Acta_315.pdf', 'Escuela Primaria LMN', 'Generación 2023'),
(49, 316, '2023-0049', 'C', '5°', '2023-08-15', 'Promedio: 8.8', 'Acta_316.pdf', 'Escuela Primaria OPQ', 'Generación 2023'),
(50, 317, '2023-0050', 'A', '5°', '2023-08-15', 'Promedio: 9.5', 'Acta_317.pdf', 'Escuela Primaria RST', 'Generación 2023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_materias`
--

CREATE TABLE `asignacion_materias` (
  `id_asignacion` int(11) NOT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_materias`
--

INSERT INTO `asignacion_materias` (`id_asignacion`, `id_docente`, `id_grado`, `id_materia`) VALUES
(1, 81, 1, 13),
(2, 82, 2, 14),
(3, 83, 3, 15),
(4, 84, 4, 16),
(5, 85, 5, 17),
(6, 86, 6, 18),
(7, 87, 7, 19),
(8, 88, 8, 20),
(9, 89, 9, 21),
(10, 90, 10, 22),
(11, 91, 11, 23),
(12, 92, 12, 24),
(13, 93, 13, 13),
(14, 94, 14, 14),
(15, 95, 15, 15),
(16, 96, 16, 16),
(17, 97, 17, 17),
(18, 98, 18, 18),
(19, 99, 19, 19),
(20, 100, 20, 20),
(21, 101, 21, 21),
(22, 102, 22, 22),
(23, 103, 23, 23),
(24, 104, 24, 24),
(25, 105, 1, 13),
(26, 106, 2, 14),
(27, 107, 3, 15),
(28, 108, 4, 16),
(29, 109, 5, 17),
(30, 110, 6, 18),
(31, 111, 7, 19),
(32, 112, 8, 20),
(33, 113, 9, 21),
(34, 114, 10, 22),
(35, 115, 11, 23),
(36, 116, 12, 24),
(37, 117, 13, 13),
(38, 118, 14, 14),
(39, 119, 15, 15),
(40, 120, 16, 16),
(41, 121, 17, 17),
(42, 122, 18, 18),
(43, 123, 19, 19),
(44, 124, 20, 20),
(45, 125, 21, 21),
(46, 126, 22, 22),
(47, 127, 23, 23),
(48, 128, 24, 24),
(49, 129, 1, 13),
(50, 130, 2, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id_asistencia` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` enum('presente','ausente','justificado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id_asistencia`, `id_alumno`, `fecha`, `estado`) VALUES
(51, 1, '2024-09-06', 'presente'),
(52, 2, '2024-09-06', 'justificado'),
(53, 3, '2024-09-06', 'ausente'),
(54, 4, '2024-09-06', 'presente'),
(55, 5, '2024-09-06', 'justificado'),
(56, 6, '2024-09-06', 'presente'),
(57, 7, '2024-09-06', 'justificado'),
(58, 8, '2024-09-06', 'presente'),
(59, 9, '2024-09-06', 'ausente'),
(60, 10, '2024-09-06', 'presente'),
(61, 11, '2024-09-07', 'ausente'),
(62, 12, '2024-09-07', 'presente'),
(63, 13, '2024-09-07', 'presente'),
(64, 14, '2024-09-07', 'justificado'),
(65, 15, '2024-09-07', 'presente'),
(66, 16, '2024-09-07', 'ausente'),
(67, 17, '2024-09-07', 'presente'),
(68, 18, '2024-09-07', 'ausente'),
(69, 19, '2024-09-07', 'presente'),
(70, 20, '2024-09-07', 'justificado'),
(71, 21, '2024-09-08', 'presente'),
(72, 22, '2024-09-08', 'ausente'),
(73, 23, '2024-09-08', 'presente'),
(74, 24, '2024-09-08', 'justificado'),
(75, 25, '2024-09-08', 'ausente'),
(76, 26, '2024-09-08', 'presente'),
(77, 27, '2024-09-08', 'presente'),
(78, 28, '2024-09-08', 'justificado'),
(79, 29, '2024-09-08', 'ausente'),
(80, 30, '2024-09-08', 'presente'),
(81, 31, '2024-09-09', 'presente'),
(82, 32, '2024-09-09', 'justificado'),
(83, 33, '2024-09-09', 'ausente'),
(84, 34, '2024-09-09', 'presente'),
(85, 35, '2024-09-09', 'presente'),
(86, 36, '2024-09-09', 'ausente'),
(87, 37, '2024-09-09', 'presente'),
(88, 38, '2024-09-09', 'justificado'),
(89, 39, '2024-09-09', 'ausente'),
(90, 40, '2024-09-09', 'presente'),
(91, 41, '2024-09-10', 'ausente'),
(92, 42, '2024-09-10', 'presente'),
(93, 43, '2024-09-10', 'presente'),
(94, 44, '2024-09-10', 'ausente'),
(95, 45, '2024-09-10', 'justificado'),
(96, 46, '2024-09-10', 'presente'),
(97, 47, '2024-09-10', 'ausente'),
(98, 48, '2024-09-10', 'presente'),
(99, 49, '2024-09-10', 'justificado'),
(100, 50, '2024-09-10', 'ausente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_docentes`
--

CREATE TABLE `asistencia_docentes` (
  `id_asistencia` int(11) NOT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `genero` enum('presente','ausente','justificado') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencia_docentes`
--

INSERT INTO `asistencia_docentes` (`id_asistencia`, `id_docente`, `genero`) VALUES
(1, 81, 'presente'),
(2, 82, 'ausente'),
(3, 83, 'justificado'),
(4, 84, 'presente'),
(5, 85, 'ausente'),
(6, 86, 'justificado'),
(7, 87, 'presente'),
(8, 88, 'ausente'),
(9, 89, 'justificado'),
(10, 90, 'presente'),
(11, 91, 'ausente'),
(12, 92, 'justificado'),
(13, 93, 'presente'),
(14, 94, 'ausente'),
(15, 95, 'justificado'),
(16, 96, 'presente'),
(17, 97, 'ausente'),
(18, 98, 'justificado'),
(19, 99, 'presente'),
(20, 100, 'ausente'),
(21, 101, 'justificado'),
(22, 102, 'presente'),
(23, 103, 'ausente'),
(24, 104, 'justificado'),
(25, 105, 'presente'),
(26, 106, 'ausente'),
(27, 107, 'justificado'),
(28, 108, 'presente'),
(29, 109, 'ausente'),
(30, 110, 'justificado'),
(31, 111, 'presente'),
(32, 112, 'ausente'),
(33, 113, 'justificado'),
(34, 114, 'presente'),
(35, 115, 'ausente'),
(36, 116, 'justificado'),
(37, 117, 'presente'),
(38, 118, 'ausente'),
(39, 119, 'justificado'),
(40, 120, 'presente'),
(41, 121, 'ausente'),
(42, 122, 'justificado'),
(43, 123, 'presente'),
(44, 124, 'ausente'),
(45, 125, 'justificado'),
(46, 126, 'presente'),
(47, 127, 'ausente'),
(48, 128, 'justificado'),
(49, 129, 'presente'),
(50, 130, 'ausente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletas`
--

CREATE TABLE `boletas` (
  `id_boleta` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `ciclo_escolar` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boletas`
--

INSERT INTO `boletas` (`id_boleta`, `id_alumno`, `ciclo_escolar`, `observaciones`) VALUES
(1, 1, '2023-2024', 'Buen desempeño en matemáticas.'),
(2, 2, '2023-2024', 'Necesita mejorar en lectura.'),
(3, 3, '2023-2024', 'Participa activamente en clase.'),
(4, 4, '2023-2024', 'Excelente en deportes.'),
(5, 5, '2023-2024', 'Debe mejorar en asistencia.'),
(6, 6, '2023-2024', 'Desempeño sobresaliente en ciencias.'),
(7, 7, '2023-2024', 'Muestra interés por el arte.'),
(8, 8, '2023-2024', 'Muy responsable con sus tareas.'),
(9, 9, '2023-2024', 'Requiere apoyo en comprensión lectora.'),
(10, 10, '2023-2024', 'Trabaja bien en equipo.'),
(11, 11, '2023-2024', 'Necesita mejorar en puntualidad.'),
(12, 12, '2023-2024', 'Gran desempeño en historia.'),
(13, 13, '2023-2024', 'Participa activamente en proyectos grupales.'),
(14, 14, '2023-2024', 'Mejora en su actitud hacia el estudio.'),
(15, 15, '2023-2024', 'Requiere refuerzo en matemáticas.'),
(16, 16, '2023-2024', 'Sobresale en educación física.'),
(17, 17, '2023-2024', 'Excelente manejo de tecnologías.'),
(18, 18, '2023-2024', 'Participación destacada en actividades extracurriculares.'),
(19, 19, '2023-2024', 'Le cuesta concentrarse en clase.'),
(20, 20, '2023-2024', 'Buen progreso en habilidades de escritura.'),
(21, 21, '2023-2024', 'Requiere mejorar en participación en clase.'),
(22, 22, '2023-2024', 'Gran capacidad de análisis.'),
(23, 23, '2023-2024', 'Muy creativo en trabajos de arte.'),
(24, 24, '2023-2024', 'Debe mejorar en puntualidad y asistencia.'),
(25, 25, '2023-2024', 'Muy buen desempeño en trabajos en equipo.'),
(26, 26, '2023-2024', 'Requiere mejorar en tareas individuales.'),
(27, 27, '2023-2024', 'Participa en actividades de voluntariado.'),
(28, 28, '2023-2024', 'Destaca en exposiciones orales.'),
(29, 29, '2023-2024', 'Gran responsabilidad con los trabajos entregados.'),
(30, 30, '2023-2024', 'Mejorando en matemáticas, sigue trabajando.'),
(31, 31, '2023-2024', 'Excelente en ciencias naturales.'),
(32, 32, '2023-2024', 'Requiere mejorar en trabajo en grupo.'),
(33, 33, '2023-2024', 'Muestra iniciativa en proyectos escolares.'),
(34, 34, '2023-2024', 'Necesita mejorar en lectura comprensiva.'),
(35, 35, '2023-2024', 'Gran avance en redacción.'),
(36, 36, '2023-2024', 'Debe mejorar en matemáticas.'),
(37, 37, '2023-2024', 'Muestra interés por las ciencias sociales.'),
(38, 38, '2023-2024', 'Responsable y dedicado en tareas.'),
(39, 39, '2023-2024', 'Participa activamente en debates.'),
(40, 40, '2023-2024', 'Requiere refuerzo en actividades físicas.'),
(41, 41, '2023-2024', 'Excelente en proyectos tecnológicos.'),
(42, 42, '2023-2024', 'Debe mejorar en comunicación con sus compañeros.'),
(43, 43, '2023-2024', 'Destacado en actividades deportivas.'),
(44, 44, '2023-2024', 'Muy bueno en investigación científica.'),
(45, 45, '2023-2024', 'Muestra interés por la lectura, buen progreso.'),
(46, 46, '2023-2024', 'Debe mejorar en puntualidad.'),
(47, 47, '2023-2024', 'Gran desempeño en trabajos prácticos.'),
(48, 48, '2023-2024', 'Debe ser más participativo en clase.'),
(49, 49, '2023-2024', 'Excelente en habilidades matemáticas.'),
(50, 50, '2023-2024', 'Sobresale en educación artística.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificacion` int(11) NOT NULL,
  `id_boleta` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `calificacion` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificacion`, `id_boleta`, `id_materia`, `calificacion`) VALUES
(1, 1, 13, 8.50),
(2, 2, 14, 9.30),
(3, 3, 15, 7.25),
(4, 4, 16, 6.50),
(5, 5, 17, 9.80),
(6, 6, 18, 7.00),
(7, 7, 19, 8.10),
(8, 8, 20, 6.75),
(9, 9, 21, 9.00),
(10, 10, 22, 5.50),
(11, 11, 23, 9.70),
(12, 12, 24, 8.35),
(13, 13, 13, 7.90),
(14, 14, 14, 9.40),
(15, 15, 15, 6.00),
(16, 16, 16, 8.85),
(17, 17, 17, 7.60),
(18, 18, 18, 9.20),
(19, 19, 19, 8.00),
(20, 20, 20, 5.95),
(21, 21, 21, 7.75),
(22, 22, 22, 8.45),
(23, 23, 23, 9.90),
(24, 24, 24, 6.80),
(25, 25, 13, 8.20),
(26, 26, 14, 7.65),
(27, 27, 15, 6.40),
(28, 28, 16, 9.10),
(29, 29, 17, 8.55),
(30, 30, 18, 9.50),
(31, 31, 19, 7.30),
(32, 32, 20, 6.15),
(33, 33, 21, 8.95),
(34, 34, 22, 9.85),
(35, 35, 23, 7.80),
(36, 36, 24, 6.70),
(37, 37, 13, 9.25),
(38, 38, 14, 5.50),
(39, 39, 15, 9.60),
(40, 40, 16, 8.40),
(41, 41, 17, 6.50),
(42, 42, 18, 9.05),
(43, 43, 19, 7.85),
(44, 44, 20, 8.10),
(45, 45, 21, 6.35),
(46, 46, 22, 9.50),
(47, 47, 23, 7.15),
(48, 48, 24, 8.90),
(49, 49, 13, 6.20),
(50, 50, 14, 9.65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `fecha_contrato` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `reglamento` text DEFAULT NULL,
  `numero_contrato` varchar(50) DEFAULT NULL,
  `periodo_vacacional` varchar(50) DEFAULT NULL,
  `tipo_contrato` int(11) DEFAULT NULL,
  `convenio` varchar(100) DEFAULT NULL,
  `id_administrativo` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_alumno`
--

CREATE TABLE `datos_alumno` (
  `id_datos_alumno` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_alumno`
--

INSERT INTO `datos_alumno` (`id_datos_alumno`, `id_alumno`, `apellido_paterno`, `apellido_materno`, `nombre`) VALUES
(68, 1, 'Gómez', 'Pérez', 'Juan'),
(69, 2, 'López', 'Hernández', 'María'),
(70, 3, 'Martínez', 'Díaz', 'Carlos'),
(71, 4, 'Rodríguez', 'Sánchez', 'Ana'),
(72, 5, 'Fernández', 'Ramírez', 'Luis'),
(73, 6, 'García', 'Torres', 'Elena'),
(74, 7, 'Santos', 'Flores', 'Pedro'),
(75, 8, 'Morales', 'Gómez', 'Sofía'),
(76, 9, 'Castro', 'Mendoza', 'Javier'),
(77, 10, 'Ramos', 'Silva', 'Lucía'),
(78, 11, 'Ramírez', 'Cruz', 'Mateo'),
(79, 12, 'Sánchez', 'Martínez', 'Gabriela'),
(80, 13, 'Torres', 'López', 'Diego'),
(81, 14, 'Vega', 'Castro', 'Daniela'),
(82, 15, 'Medina', 'Santos', 'Miguel'),
(83, 16, 'Aguilar', 'Morales', 'Isabella'),
(84, 17, 'Ríos', 'Ramos', 'Felipe'),
(85, 18, 'Vargas', 'Ramírez', 'Valeria'),
(86, 19, 'Pérez', 'Sánchez', 'Hugo'),
(87, 20, 'Méndez', 'Torres', 'Paola'),
(88, 21, 'Cruz', 'Vega', 'Emilio'),
(89, 22, 'Flores', 'Medina', 'Fernanda'),
(90, 23, 'Hernández', 'Aguilar', 'Sebastián'),
(91, 24, 'Díaz', 'Ríos', 'Mariana'),
(92, 25, 'González', 'Vargas', 'Alejandro'),
(93, 26, 'Silva', 'Pérez', 'Adriana'),
(94, 27, 'Mendoza', 'Méndez', 'Tomás'),
(95, 28, 'Pineda', 'Cruz', 'Jimena'),
(96, 29, 'Reyes', 'Flores', 'Ignacio'),
(97, 30, 'Figueroa', 'Hernández', 'Andrea'),
(98, 31, 'Luna', 'Díaz', 'Iván'),
(99, 32, 'Rivera', 'González', 'Camila'),
(100, 33, 'Carrillo', 'Silva', 'Mauricio'),
(101, 34, 'Mora', 'Mendoza', 'Victoria'),
(102, 35, 'Valdez', 'Pineda', 'Leonardo'),
(103, 36, 'Salinas', 'Reyes', 'Mónica'),
(104, 37, 'Campos', 'Figueroa', 'Ángel'),
(105, 38, 'Navarro', 'Luna', 'Renata'),
(106, 39, 'Jiménez', 'Rivera', 'Rodrigo'),
(107, 40, 'Fuentes', 'Carrillo', 'Estefanía'),
(108, 41, 'Suárez', 'Mora', 'Santiago'),
(109, 42, 'Romero', 'Valdez', 'Regina'),
(110, 43, 'Escobar', 'Salinas', 'Gabriel'),
(111, 44, 'Blanco', 'Campos', 'Patricia'),
(112, 45, 'Bautista', 'Navarro', 'Raúl'),
(113, 46, 'Lara', 'Jiménez', 'Verónica'),
(114, 47, 'Villanueva', 'Fuentes', 'Alonso'),
(115, 48, 'Ortiz', 'Suárez', 'Carolina'),
(116, 49, 'Estrada', 'Romero', 'Francisco'),
(117, 50, 'Molina', 'Escobar', 'Ximena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_padre`
--

CREATE TABLE `datos_padre` (
  `id_datos_padre` int(11) NOT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_padre`
--

INSERT INTO `datos_padre` (`id_datos_padre`, `id_padre`, `apellido_paterno`, `apellido_materno`, `nombre`) VALUES
(1, 1, 'Gómez', 'Pérez', 'Juan'),
(2, 2, 'López', 'Hernández', 'María'),
(3, 3, 'Martínez', 'Díaz', 'Carlos'),
(4, 4, 'Rodríguez', 'Sánchez', 'Ana'),
(5, 5, 'Fernández', 'Ramírez', 'Luis'),
(6, 6, 'García', 'Torres', 'Elena'),
(7, 7, 'Santos', 'Flores', 'Pedro'),
(8, 8, 'Morales', 'Gómez', 'Sofía'),
(9, 9, 'Castro', 'Mendoza', 'Javier'),
(10, 10, 'Ramos', 'Silva', 'Lucía'),
(11, 11, 'Ramírez', 'Cruz', 'Mateo'),
(12, 12, 'Sánchez', 'Martínez', 'Gabriela'),
(13, 13, 'Torres', 'López', 'Diego'),
(14, 14, 'Vega', 'Castro', 'Daniela'),
(15, 15, 'Medina', 'Santos', 'Miguel'),
(16, 16, 'Aguilar', 'Morales', 'Isabella'),
(17, 17, 'Ríos', 'Ramos', 'Felipe'),
(18, 18, 'Vargas', 'Ramírez', 'Valeria'),
(19, 19, 'Pérez', 'Sánchez', 'Hugo'),
(20, 20, 'Méndez', 'Torres', 'Paola'),
(21, 21, 'Cruz', 'Vega', 'Emilio'),
(22, 22, 'Flores', 'Medina', 'Fernanda'),
(23, 23, 'Hernández', 'Aguilar', 'Sebastián'),
(24, 24, 'Díaz', 'Ríos', 'Mariana'),
(25, 25, 'González', 'Vargas', 'Alejandro'),
(26, 26, 'Silva', 'Pérez', 'Adriana'),
(27, 27, 'Mendoza', 'Méndez', 'Tomás'),
(28, 28, 'Pineda', 'Cruz', 'Jimena'),
(29, 29, 'Reyes', 'Flores', 'Ignacio'),
(30, 30, 'Figueroa', 'Hernández', 'Andrea'),
(31, 31, 'Luna', 'Díaz', 'Iván'),
(32, 32, 'Rivera', 'González', 'Camila'),
(33, 33, 'Carrillo', 'Silva', 'Mauricio'),
(34, 34, 'Mora', 'Mendoza', 'Victoria'),
(35, 35, 'Valdez', 'Pineda', 'Leonardo'),
(36, 36, 'Salinas', 'Reyes', 'Mónica'),
(37, 37, 'Campos', 'Figueroa', 'Ángel'),
(38, 38, 'Navarro', 'Luna', 'Renata'),
(39, 39, 'Jiménez', 'Rivera', 'Rodrigo'),
(40, 40, 'Fuentes', 'Carrillo', 'Estefanía'),
(41, 41, 'Suárez', 'Mora', 'Santiago'),
(42, 42, 'Romero', 'Valdez', 'Regina'),
(43, 43, 'Escobar', 'Salinas', 'Gabriel'),
(44, 44, 'Blanco', 'Campos', 'Patricia'),
(45, 45, 'Bautista', 'Navarro', 'Raúl'),
(46, 46, 'Lara', 'Jiménez', 'Verónica'),
(47, 47, 'Villanueva', 'Fuentes', 'Alonso'),
(48, 48, 'Ortiz', 'Suárez', 'Carolina'),
(49, 49, 'Estrada', 'Romero', 'Francisco'),
(50, 50, 'Molina', 'Escobar', 'Ximena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `id_persona` int(11) NOT NULL,
  `id_contrato` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `nss` varchar(50) DEFAULT NULL,
  `telefono` varchar(18) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` enum('M','F','otro') DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `direccion_id` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `numero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`direccion_id`, `id_usuarios`, `calle`, `ciudad`, `estado`, `codigo_postal`, `numero`) VALUES
(1, 168, 'Calle Ejemplo 1', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '101'),
(2, 169, 'Calle Ejemplo 2', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '102'),
(3, 170, 'Calle Ejemplo 3', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '103'),
(4, 171, 'Calle Ejemplo 4', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '104'),
(5, 172, 'Calle Ejemplo 5', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '105'),
(6, 173, 'Calle Ejemplo 6', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '106'),
(7, 174, 'Calle Ejemplo 7', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '107'),
(8, 175, 'Calle Ejemplo 8', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '108'),
(9, 176, 'Calle Ejemplo 9', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '109'),
(10, 177, 'Calle Ejemplo 10', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '110'),
(11, 178, 'Calle Ejemplo 11', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '111'),
(12, 179, 'Calle Ejemplo 12', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '112'),
(13, 180, 'Calle Ejemplo 13', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '113'),
(14, 181, 'Calle Ejemplo 14', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '114'),
(15, 182, 'Calle Ejemplo 15', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '115'),
(16, 183, 'Calle Ejemplo 16', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '116'),
(17, 184, 'Calle Ejemplo 17', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '117'),
(18, 185, 'Calle Ejemplo 18', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '118'),
(19, 186, 'Calle Ejemplo 19', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '119'),
(20, 187, 'Calle Ejemplo 20', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '120'),
(21, 188, 'Calle Ejemplo 21', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '121'),
(22, 189, 'Calle Ejemplo 22', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '122'),
(23, 190, 'Calle Ejemplo 23', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '123'),
(24, 191, 'Calle Ejemplo 24', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '124'),
(25, 192, 'Calle Ejemplo 25', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '125'),
(26, 193, 'Calle Ejemplo 26', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '126'),
(27, 194, 'Calle Ejemplo 27', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '127'),
(28, 195, 'Calle Ejemplo 28', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '128'),
(29, 196, 'Calle Ejemplo 29', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '129'),
(30, 197, 'Calle Ejemplo 30', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '130'),
(31, 198, 'Calle Ejemplo 31', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '131'),
(32, 199, 'Calle Ejemplo 32', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '132'),
(33, 200, 'Calle Ejemplo 33', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '133'),
(34, 201, 'Calle Ejemplo 34', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '134'),
(35, 202, 'Calle Ejemplo 35', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '135'),
(36, 203, 'Calle Ejemplo 36', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '136'),
(37, 204, 'Calle Ejemplo 37', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '137'),
(38, 205, 'Calle Ejemplo 38', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '138'),
(39, 206, 'Calle Ejemplo 39', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '139'),
(40, 207, 'Calle Ejemplo 40', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '140'),
(41, 208, 'Calle Ejemplo 41', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '141'),
(42, 209, 'Calle Ejemplo 42', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '142'),
(43, 210, 'Calle Ejemplo 43', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '143'),
(44, 211, 'Calle Ejemplo 44', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '144'),
(45, 212, 'Calle Ejemplo 45', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '145'),
(46, 213, 'Calle Ejemplo 46', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '146'),
(47, 214, 'Calle Ejemplo 47', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '147'),
(48, 215, 'Calle Ejemplo 48', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '148'),
(49, 216, 'Calle Ejemplo 49', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '149'),
(50, 217, 'Calle Ejemplo 50', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '150'),
(51, 218, 'Calle Ejemplo 51', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '151'),
(52, 219, 'Calle Ejemplo 52', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '152'),
(53, 220, 'Calle Ejemplo 53', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '153'),
(54, 221, 'Calle Ejemplo 54', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '154'),
(55, 222, 'Calle Ejemplo 55', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '155'),
(56, 223, 'Calle Ejemplo 56', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '156'),
(57, 224, 'Calle Ejemplo 57', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '157'),
(58, 225, 'Calle Ejemplo 58', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '158'),
(59, 226, 'Calle Ejemplo 59', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '159'),
(60, 227, 'Calle Ejemplo 60', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '160'),
(61, 228, 'Calle Ejemplo 61', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '161'),
(62, 229, 'Calle Ejemplo 62', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '162'),
(63, 230, 'Calle Ejemplo 63', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '163'),
(64, 231, 'Calle Ejemplo 64', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '164'),
(65, 232, 'Calle Ejemplo 65', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '165'),
(66, 233, 'Calle Ejemplo 66', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '166'),
(67, 234, 'Calle Ejemplo 67', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '167'),
(68, 235, 'Calle Ejemplo 68', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '168'),
(69, 236, 'Calle Ejemplo 69', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '169'),
(70, 237, 'Calle Ejemplo 70', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '170'),
(71, 238, 'Calle Ejemplo 71', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '171'),
(72, 239, 'Calle Ejemplo 72', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '172'),
(73, 240, 'Calle Ejemplo 73', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '173'),
(74, 241, 'Calle Ejemplo 74', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '174'),
(75, 242, 'Calle Ejemplo 75', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '175'),
(76, 243, 'Calle Ejemplo 76', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '176'),
(77, 244, 'Calle Ejemplo 77', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '177'),
(78, 245, 'Calle Ejemplo 78', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '178'),
(79, 246, 'Calle Ejemplo 79', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '179'),
(80, 247, 'Calle Ejemplo 80', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '180'),
(81, 248, 'Calle Ejemplo 81', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '181'),
(82, 249, 'Calle Ejemplo 82', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '182'),
(83, 250, 'Calle Ejemplo 83', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '183'),
(84, 251, 'Calle Ejemplo 84', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '184'),
(85, 252, 'Calle Ejemplo 85', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '185'),
(86, 253, 'Calle Ejemplo 86', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '186'),
(87, 254, 'Calle Ejemplo 87', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '187'),
(88, 255, 'Calle Ejemplo 88', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '188'),
(89, 256, 'Calle Ejemplo 89', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '189'),
(90, 257, 'Calle Ejemplo 90', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '190'),
(91, 258, 'Calle Ejemplo 91', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '191'),
(92, 259, 'Calle Ejemplo 92', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '192'),
(93, 260, 'Calle Ejemplo 93', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '193'),
(94, 261, 'Calle Ejemplo 94', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '194'),
(95, 262, 'Calle Ejemplo 95', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '195'),
(96, 263, 'Calle Ejemplo 96', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '196'),
(97, 264, 'Calle Ejemplo 97', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '197'),
(98, 265, 'Calle Ejemplo 98', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '198'),
(99, 266, 'Calle Ejemplo 99', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '199'),
(100, 267, 'Calle Ejemplo 100', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '200'),
(101, 268, 'Calle Ejemplo 101', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '201'),
(102, 269, 'Calle Ejemplo 102', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '202'),
(103, 270, 'Calle Ejemplo 103', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '203'),
(104, 271, 'Calle Ejemplo 104', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '204'),
(105, 272, 'Calle Ejemplo 105', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '205'),
(106, 273, 'Calle Ejemplo 106', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '206'),
(107, 274, 'Calle Ejemplo 107', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '207'),
(108, 275, 'Calle Ejemplo 108', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '208'),
(109, 276, 'Calle Ejemplo 109', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '209'),
(110, 277, 'Calle Ejemplo 110', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '210'),
(111, 278, 'Calle Ejemplo 111', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '211'),
(112, 279, 'Calle Ejemplo 112', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '212'),
(113, 280, 'Calle Ejemplo 113', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '213'),
(114, 281, 'Calle Ejemplo 114', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '214'),
(115, 282, 'Calle Ejemplo 115', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '215'),
(116, 283, 'Calle Ejemplo 116', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '216'),
(117, 284, 'Calle Ejemplo 117', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '217'),
(118, 285, 'Calle Ejemplo 118', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '218'),
(119, 286, 'Calle Ejemplo 119', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '219'),
(120, 287, 'Calle Ejemplo 120', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '220'),
(121, 288, 'Calle Ejemplo 121', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '221'),
(122, 289, 'Calle Ejemplo 122', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '222'),
(123, 290, 'Calle Ejemplo 123', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '223'),
(124, 291, 'Calle Ejemplo 124', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '224'),
(125, 292, 'Calle Ejemplo 125', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '225'),
(126, 293, 'Calle Ejemplo 126', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '226'),
(127, 294, 'Calle Ejemplo 127', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '227'),
(128, 295, 'Calle Ejemplo 128', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '228'),
(129, 296, 'Calle Ejemplo 129', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '229'),
(130, 297, 'Calle Ejemplo 130', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '230'),
(131, 298, 'Calle Ejemplo 131', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '231'),
(132, 299, 'Calle Ejemplo 132', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '232'),
(133, 300, 'Calle Ejemplo 133', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '233'),
(134, 301, 'Calle Ejemplo 134', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '234'),
(135, 302, 'Calle Ejemplo 135', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '235'),
(136, 303, 'Calle Ejemplo 136', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '236'),
(137, 304, 'Calle Ejemplo 137', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '237'),
(138, 305, 'Calle Ejemplo 138', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '238'),
(139, 306, 'Calle Ejemplo 139', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '239'),
(140, 307, 'Calle Ejemplo 140', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '240'),
(141, 308, 'Calle Ejemplo 141', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '241'),
(142, 309, 'Calle Ejemplo 142', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '242'),
(143, 310, 'Calle Ejemplo 143', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '243'),
(144, 311, 'Calle Ejemplo 144', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '244'),
(145, 312, 'Calle Ejemplo 145', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '245'),
(146, 313, 'Calle Ejemplo 146', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '246'),
(147, 314, 'Calle Ejemplo 147', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '247'),
(148, 315, 'Calle Ejemplo 148', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '248'),
(149, 316, 'Calle Ejemplo 149', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '249'),
(150, 317, 'Calle Ejemplo 150', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '250'),
(151, 468, 'Calle Ejemplo 151', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '251'),
(152, 469, 'Calle Ejemplo 152', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '252'),
(153, 470, 'Calle Ejemplo 153', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '253'),
(154, 471, 'Calle Ejemplo 154', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '254'),
(155, 472, 'Calle Ejemplo 155', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '255'),
(156, 473, 'Calle Ejemplo 156', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '256'),
(157, 474, 'Calle Ejemplo 157', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '257'),
(158, 475, 'Calle Ejemplo 158', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '258'),
(159, 476, 'Calle Ejemplo 159', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '259'),
(160, 477, 'Calle Ejemplo 160', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '260'),
(161, 478, 'Calle Ejemplo 161', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '261'),
(162, 479, 'Calle Ejemplo 162', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '262'),
(163, 480, 'Calle Ejemplo 163', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '263'),
(164, 481, 'Calle Ejemplo 164', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '264'),
(165, 482, 'Calle Ejemplo 165', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '265'),
(166, 483, 'Calle Ejemplo 166', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '266'),
(167, 484, 'Calle Ejemplo 167', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '267'),
(168, 485, 'Calle Ejemplo 168', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '268'),
(169, 486, 'Calle Ejemplo 169', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '269'),
(170, 487, 'Calle Ejemplo 170', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '270'),
(171, 488, 'Calle Ejemplo 171', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '271'),
(172, 489, 'Calle Ejemplo 172', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '272'),
(173, 490, 'Calle Ejemplo 173', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '273'),
(174, 491, 'Calle Ejemplo 174', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '274'),
(175, 492, 'Calle Ejemplo 175', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '275'),
(176, 493, 'Calle Ejemplo 176', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '276'),
(177, 494, 'Calle Ejemplo 177', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '277'),
(178, 495, 'Calle Ejemplo 178', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '278'),
(179, 496, 'Calle Ejemplo 179', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '279'),
(180, 497, 'Calle Ejemplo 180', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '280'),
(181, 498, 'Calle Ejemplo 181', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '281'),
(182, 499, 'Calle Ejemplo 182', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '282'),
(183, 500, 'Calle Ejemplo 183', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '283'),
(184, 501, 'Calle Ejemplo 184', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '284'),
(185, 502, 'Calle Ejemplo 185', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '285'),
(186, 503, 'Calle Ejemplo 186', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '286'),
(187, 504, 'Calle Ejemplo 187', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '287'),
(188, 505, 'Calle Ejemplo 188', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '288'),
(189, 506, 'Calle Ejemplo 189', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '289'),
(190, 507, 'Calle Ejemplo 190', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '290'),
(191, 508, 'Calle Ejemplo 191', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '291'),
(192, 509, 'Calle Ejemplo 192', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '292'),
(193, 510, 'Calle Ejemplo 193', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '293'),
(194, 511, 'Calle Ejemplo 194', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '294'),
(195, 512, 'Calle Ejemplo 195', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '295'),
(196, 513, 'Calle Ejemplo 196', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '296'),
(197, 514, 'Calle Ejemplo 197', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '297'),
(198, 515, 'Calle Ejemplo 198', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '298'),
(199, 516, 'Calle Ejemplo 199', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '299'),
(200, 517, 'Calle Ejemplo 200', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `grado_academico` varchar(100) DEFAULT NULL,
  `numero_cedula` varchar(50) DEFAULT NULL,
  `grado_impartido` varchar(20) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `nss` varchar(15) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `id_usuario`, `grado_academico`, `numero_cedula`, `grado_impartido`, `rfc`, `nss`, `fecha_ingreso`) VALUES
(81, 168, 'Licenciatura en Matemáticas', '1234567890', 'Primaria', 'ZAGA820715XXX', '98765432101', '2015-08-01'),
(82, 169, 'Maestría en Educación', '0987654321', 'Secundaria', 'NARE900104XXX', '98765432102', '2016-09-15'),
(83, 170, 'Licenciatura en Historia', '1122334455', 'Preparatoria', 'OLSF850922XXX', '98765432103', '2014-05-10'),
(84, 171, 'Doctorado en Filosofía', '5566778899', 'Universidad', 'SAHP930610XXX', '98765432104', '2012-01-20'),
(85, 172, 'Licenciatura en Física', '6677889900', 'Secundaria', 'VAPG860414XXX', '98765432105', '2018-03-30'),
(86, 173, 'Maestría en Química', '7788990011', 'Preparatoria', 'CAOS900918XXX', '98765432106', '2011-06-12'),
(87, 174, 'Licenciatura en Biología', '8899001122', 'Secundaria', 'GUVR830301XXX', '98765432107', '2013-11-18'),
(88, 175, 'Doctorado en Educación', '9900112233', 'Universidad', 'ORJM940607XXX', '98765432108', '2017-07-01'),
(89, 176, 'Licenciatura en Ingeniería', '1234432112', 'Preparatoria', 'RUFT820519XXX', '98765432109', '2010-04-15'),
(90, 177, 'Maestría en Psicología', '2344321123', 'Secundaria', 'MAGG890927XXX', '98765432110', '2019-09-21'),
(91, 178, 'Licenciatura', 'Cédula_001', 'Primaria', 'CORB850705XXX', 'NSS_001', '2024-01-01'),
(92, 179, 'Licenciatura', 'Cédula_002', 'Primaria', 'ESMJ760314XXX', 'NSS_002', '2024-01-01'),
(93, 180, 'Licenciatura', 'Cédula_003', 'Secundaria', 'LURV930612XXX', 'NSS_003', '2024-01-01'),
(94, 181, 'Licenciatura', 'Cédula_004', 'Secundaria', 'PECR850923XXX', 'NSS_004', '2024-01-01'),
(95, 182, 'Licenciatura', 'Cédula_005', 'Primaria', 'HEGM920402XXX', 'NSS_005', '2024-01-01'),
(96, 183, 'Licenciatura', 'Cédula_006', 'Secundaria', 'SEVC800712XXX', 'NSS_006', '2024-01-01'),
(97, 184, 'Licenciatura', 'Cédula_007', 'Primaria', 'RIGP900811XXX', 'NSS_007', '2024-01-01'),
(98, 185, 'Licenciatura', 'Cédula_008', 'Primaria', 'MEFA820918XXX', 'NSS_008', '2024-01-01'),
(99, 186, 'Licenciatura', 'Cédula_009', 'Secundaria', 'ORPL930103XXX', 'NSS_009', '2024-01-01'),
(100, 187, 'Licenciatura', 'Cédula_010', 'Secundaria', 'ROSA830206XXX', 'NSS_010', '2024-01-01'),
(101, 188, 'Licenciatura', 'Cédula_011', 'Primaria', 'LOMC910815XXX', 'NSS_011', '2024-01-01'),
(102, 189, 'Licenciatura', 'Cédula_012', 'Secundaria', 'ESDD870912XXX', 'NSS_012', '2024-01-01'),
(103, 190, 'Licenciatura', 'Cédula_013', 'Primaria', 'CAHG960411XXX', 'NSS_013', '2024-01-01'),
(104, 191, 'Licenciatura', 'Cédula_014', 'Secundaria', 'MOSR850409XXX', 'NSS_014', '2024-01-01'),
(105, 192, 'Licenciatura', 'Cédula_015', 'Primaria', 'JUND930225XXX', 'NSS_015', '2024-01-01'),
(106, 193, 'Licenciatura', 'Cédula_016', 'Primaria', 'VALP850810XXX', 'NSS_016', '2024-01-01'),
(107, 194, 'Licenciatura', 'Cédula_017', 'Secundaria', 'RAFA920308XXX', 'NSS_017', '2024-01-01'),
(108, 195, 'Licenciatura', 'Cédula_018', 'Primaria', 'LEMA890620XXX', 'NSS_018', '2024-01-01'),
(109, 196, 'Licenciatura', 'Cédula_019', 'Secundaria', 'VIDL880511XXX', 'NSS_019', '2024-01-01'),
(110, 197, 'Licenciatura', 'Cédula_020', 'Primaria', 'BAMC850723XXX', 'NSS_020', '2024-01-01'),
(111, 198, 'Licenciatura', 'Cédula_021', 'Primaria', 'HELM860202XXX', 'NSS_021', '2024-01-01'),
(112, 199, 'Licenciatura', 'Cédula_022', 'Secundaria', 'RITA800315XXX', 'NSS_022', '2024-01-01'),
(113, 200, 'Licenciatura', 'Cédula_023', 'Primaria', 'GUST920412XXX', 'NSS_023', '2024-01-01'),
(114, 201, 'Licenciatura', 'Cédula_024', 'Secundaria', 'PENA851124XXX', 'NSS_024', '2024-01-01'),
(115, 202, 'Licenciatura', 'Cédula_025', 'Primaria', 'HESP930215XXX', 'NSS_025', '2024-01-01'),
(116, 203, 'Licenciatura', 'Cédula_026', 'Secundaria', 'MARO820701XXX', 'NSS_026', '2024-01-01'),
(117, 204, 'Licenciatura', 'Cédula_027', 'Primaria', 'LOMZ990928XXX', 'NSS_027', '2024-01-01'),
(118, 205, 'Licenciatura', 'Cédula_028', 'Primaria', 'TLOV920814XXX', 'NSS_028', '2024-01-01'),
(119, 206, 'Licenciatura', 'Cédula_029', 'Secundaria', 'CHAU780525XXX', 'NSS_029', '2024-01-01'),
(120, 207, 'Licenciatura', 'Cédula_030', 'Secundaria', 'ALME840613XXX', 'NSS_030', '2024-01-01'),
(121, 208, 'Licenciatura', 'Cédula_031', 'Primaria', 'VENF890711XXX', 'NSS_031', '2024-01-01'),
(122, 209, 'Licenciatura', 'Cédula_032', 'Secundaria', 'COFL870417XXX', 'NSS_032', '2024-01-01'),
(123, 210, 'Licenciatura', 'Cédula_033', 'Primaria', 'POJO950206XXX', 'NSS_033', '2024-01-01'),
(124, 211, 'Licenciatura', 'Cédula_034', 'Secundaria', 'MERC800319XXX', 'NSS_034', '2024-01-01'),
(125, 212, 'Licenciatura', 'Cédula_035', 'Primaria', 'HOPG870820XXX', 'NSS_035', '2024-01-01'),
(126, 213, 'Licenciatura', 'Cédula_036', 'Primaria', 'PIZA970511XXX', 'NSS_036', '2024-01-01'),
(127, 214, 'Licenciatura', 'Cédula_037', 'Secundaria', 'FERR850428XXX', 'NSS_037', '2024-01-01'),
(128, 215, 'Licenciatura', 'Cédula_038', 'Primaria', 'ZULE870614XXX', 'NSS_038', '2024-01-01'),
(129, 216, 'Licenciatura', 'Cédula_039', 'Secundaria', 'AGUS900404XXX', 'NSS_039', '2024-01-01'),
(130, 217, 'Licenciatura', 'Cédula_040', 'Primaria', 'GAVI990928XXX', 'NSS_040', '2024-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `nombre_evento` varchar(100) DEFAULT NULL,
  `fecha_evento` date DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `organizador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `nombre_evento`, `fecha_evento`, `descripcion`, `organizador`) VALUES
(1, 'Concierto de Navidad', '2024-12-15', 'Un concierto festivo con música navideña.', 'Orquesta Sinfónica Local'),
(2, 'Feria de Tecnología', '2025-01-20', 'Una feria dedicada a las últimas innovaciones tecnológicas.', 'Tech Innovators'),
(3, 'Caminata por la Salud', '2025-02-10', 'Una caminata para promover un estilo de vida saludable.', 'Comunidad Saludable'),
(4, 'Taller de Arte', '2025-03-05', 'Taller de pintura y escultura para todas las edades.', 'Centro Cultural'),
(5, 'Cine al Aire Libre', '2025-04-12', 'Proyección de películas clásicas bajo las estrellas.', 'Cine Club Local'),
(6, 'Festival de Comida', '2025-05-18', 'Un festival donde se podrá degustar comida de diferentes países.', 'Gastronomía Internacional'),
(7, 'Maratón de Lectura', '2025-06-25', 'Un evento donde se fomenta la lectura entre niños y adultos.', 'Biblioteca Municipal'),
(8, 'Exposición de Fotografía', '2025-07-30', 'Muestra de fotografías de artistas locales.', 'Galería de Arte'),
(9, 'Competencia de Robótica', '2025-08-15', 'Competencia para estudiantes de robótica de diversas escuelas.', 'Escuelas de Innovación'),
(10, 'Cierre de Verano', '2025-09-05', 'Evento para despedir el verano con actividades recreativas.', 'Comunidad Recreativa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `aula` varchar(50) DEFAULT NULL,
  `turno` enum('matutino','vespertino') DEFAULT NULL,
  `ciclo_escolar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre`, `grupo`, `aula`, `turno`, `ciclo_escolar`) VALUES
(1, 'Primer Grado', 'A', 'Aula 101', 'matutino', '2024-2025'),
(2, 'Primer Grado', 'B', 'Aula 102', 'matutino', '2024-2025'),
(3, 'Segundo Grado', 'A', 'Aula 201', 'matutino', '2024-2025'),
(4, 'Segundo Grado', 'B', 'Aula 202', 'matutino', '2024-2025'),
(5, 'Tercer Grado', 'A', 'Aula 301', 'matutino', '2024-2025'),
(6, 'Tercer Grado', 'B', 'Aula 302', 'matutino', '2024-2025'),
(7, 'Cuarto Grado', 'A', 'Aula 401', 'matutino', '2024-2025'),
(8, 'Cuarto Grado', 'B', 'Aula 402', 'matutino', '2024-2025'),
(9, 'Quinto Grado', 'A', 'Aula 501', 'matutino', '2024-2025'),
(10, 'Quinto Grado', 'B', 'Aula 502', 'matutino', '2024-2025'),
(11, 'Sexto Grado', 'A', 'Aula 601', 'matutino', '2024-2025'),
(12, 'Sexto Grado', 'B', 'Aula 602', 'matutino', '2024-2025'),
(13, 'Primer Grado', 'A', 'Aula 103', 'vespertino', '2024-2025'),
(14, 'Primer Grado', 'B', 'Aula 104', 'vespertino', '2024-2025'),
(15, 'Segundo Grado', 'A', 'Aula 203', 'vespertino', '2024-2025'),
(16, 'Segundo Grado', 'B', 'Aula 204', 'vespertino', '2024-2025'),
(17, 'Tercer Grado', 'A', 'Aula 303', 'vespertino', '2024-2025'),
(18, 'Tercer Grado', 'B', 'Aula 304', 'vespertino', '2024-2025'),
(19, 'Cuarto Grado', 'A', 'Aula 403', 'vespertino', '2024-2025'),
(20, 'Cuarto Grado', 'B', 'Aula 404', 'vespertino', '2024-2025'),
(21, 'Quinto Grado', 'A', 'Aula 503', 'vespertino', '2024-2025'),
(22, 'Quinto Grado', 'B', 'Aula 504', 'vespertino', '2024-2025'),
(23, 'Sexto Grado', 'A', 'Aula 603', 'vespertino', '2024-2025'),
(24, 'Sexto Grado', 'B', 'Aula 604', 'vespertino', '2024-2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materias` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materias`, `nombre`, `descripcion`) VALUES
(13, 'Matemáticas', 'Estudio de números y operaciones.'),
(14, 'Español', 'Lectura y escritura en lengua española.'),
(15, 'Ciencias', 'Estudio de la naturaleza y el entorno.'),
(16, 'Historia', 'Conocimiento de eventos y civilizaciones pasadas.'),
(17, 'Geografía', 'Estudio de lugares y características del mundo.'),
(18, 'Educación Física', 'Actividades deportivas y ejercicios.'),
(19, 'Artes', 'Expresión artística a través de diversas técnicas.'),
(20, 'Música', 'Introducción a la teoría y práctica musical.'),
(21, 'Inglés', 'Aprendizaje del idioma inglés.'),
(22, 'Computación', 'Uso básico de herramientas tecnológicas.'),
(23, 'Ética', 'Formación de valores y convivencia.'),
(24, 'Civismo', 'Derechos y deberes ciudadanos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padres`
--

CREATE TABLE `padres` (
  `id_padre` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `alergias` text DEFAULT NULL,
  `tipo_sangre` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `padres`
--

INSERT INTO `padres` (`id_padre`, `id_usuario`, `id_alumno`, `parentesco`, `alergias`, `tipo_sangre`) VALUES
(1, 468, 1, 'Padre', 'Ninguna', 'O+'),
(2, 469, 2, 'Madre', 'Polen', 'A+'),
(3, 470, 3, 'Padre', 'Ninguna', 'B+'),
(4, 471, 4, 'Padre', 'Lácteos', 'AB+'),
(5, 472, 5, 'Madre', 'Ninguna', 'O-'),
(6, 473, 6, 'Padre', 'Ninguna', 'A-'),
(7, 474, 7, 'Madre', 'Penicilina', 'B-'),
(8, 475, 8, 'Padre', 'Gluten', 'AB-'),
(9, 476, 9, 'Padre', 'Ninguna', 'O+'),
(10, 477, 10, 'Madre', 'Frutos secos', 'A+'),
(11, 478, 11, 'Padre', 'Ninguna', 'B+'),
(12, 479, 12, 'Madre', 'Mariscos', 'AB+'),
(13, 480, 13, 'Padre', 'Polvo', 'O-'),
(14, 481, 14, 'Padre', 'Ninguna', 'A-'),
(15, 482, 15, 'Madre', 'Ninguna', 'B-'),
(16, 483, 16, 'Padre', 'Picaduras de insectos', 'AB-'),
(17, 484, 17, 'Padre', 'Ninguna', 'O+'),
(18, 485, 18, 'Madre', 'Ninguna', 'A+'),
(19, 486, 19, 'Padre', 'Ninguna', 'B+'),
(20, 487, 20, 'Madre', 'Penicilina', 'AB+'),
(21, 488, 21, 'Padre', 'Lácteos', 'O-'),
(22, 489, 22, 'Padre', 'Polen', 'A-'),
(23, 490, 23, 'Madre', 'Mariscos', 'B-'),
(24, 491, 24, 'Padre', 'Frutos secos', 'AB-'),
(25, 492, 25, 'Padre', 'Ninguna', 'O+'),
(26, 493, 26, 'Madre', 'Gluten', 'A+'),
(27, 494, 27, 'Padre', 'Ninguna', 'B+'),
(28, 495, 28, 'Padre', 'Ninguna', 'AB+'),
(29, 496, 29, 'Madre', 'Picaduras de insectos', 'O-'),
(30, 497, 30, 'Padre', 'Ninguna', 'A-'),
(31, 498, 31, 'Madre', 'Ninguna', 'B-'),
(32, 499, 32, 'Padre', 'Polen', 'AB-'),
(33, 500, 33, 'Padre', 'Penicilina', 'O+'),
(34, 501, 34, 'Madre', 'Mariscos', 'A+'),
(35, 502, 35, 'Padre', 'Lácteos', 'B+'),
(36, 503, 36, 'Madre', 'Frutos secos', 'AB+'),
(37, 504, 37, 'Padre', 'Ninguna', 'O-'),
(38, 505, 38, 'Madre', 'Polvo', 'A-'),
(39, 506, 39, 'Padre', 'Gluten', 'B-'),
(40, 507, 40, 'Padre', 'Ninguna', 'AB-'),
(41, 508, 41, 'Madre', 'Polen', 'O+'),
(42, 509, 42, 'Padre', 'Ninguna', 'A+'),
(43, 510, 43, 'Madre', 'Ninguna', 'B+'),
(44, 511, 44, 'Padre', 'Lácteos', 'AB+'),
(45, 512, 45, 'Madre', 'Picaduras de insectos', 'O-'),
(46, 513, 46, 'Padre', 'Frutos secos', 'A-'),
(47, 514, 47, 'Madre', 'Ninguna', 'B-'),
(48, 515, 48, 'Padre', 'Polvo', 'AB-'),
(49, 516, 49, 'Padre', 'Ninguna', 'O+'),
(50, 517, 50, 'Madre', 'Mariscos', 'A+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion_eventos`
--

CREATE TABLE `participacion_eventos` (
  `id_participacion` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `tipo_participacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `tipo_rol_id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_roles`, `tipo_rol_id`, `descripcion`) VALUES
(117, 1, 'Rol administrativo encargado de la gestión escolar.'),
(118, 2, 'Rol docente responsable de la enseñanza.'),
(119, 3, 'Rol padre que participa en la educación de los alumnos.'),
(120, 4, 'Rol alumno que asiste a clases y realiza actividades académicas.'),
(121, 1, 'Rol administrativo con funciones de soporte.'),
(122, 2, 'Rol docente especializado en matemáticas.'),
(123, 3, 'Rol padre que participa en las reuniones escolares.'),
(124, 4, 'Rol alumno destacado en actividades extracurriculares.'),
(125, 1, 'Rol administrativo encargado de la logística escolar.'),
(126, 2, 'Rol docente que imparte clases de ciencias.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contrato`
--

CREATE TABLE `tipo_contrato` (
  `id` int(11) NOT NULL,
  `nivel` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_contrato`
--

INSERT INTO `tipo_contrato` (`id`, `nivel`, `nombre`) VALUES
(1, 1, 'Contrato de tiempo completo'),
(2, 1, 'Contrato de medio tiempo'),
(3, 1, 'Contrato por horas'),
(4, 2, 'Contrato fijo'),
(5, 2, 'Contrato temporal'),
(6, 2, 'Contrato de prácticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_rol`
--

CREATE TABLE `tipo_de_rol` (
  `id` int(11) NOT NULL,
  `nivel_rol` int(11) NOT NULL,
  `nombre_rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_de_rol`
--

INSERT INTO `tipo_de_rol` (`id`, `nivel_rol`, `nombre_rol`) VALUES
(1, 1, 'administrativo'),
(2, 2, 'docente'),
(3, 3, 'padre'),
(4, 4, 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(18) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` enum('M','F','otro') DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `apellido_paterno`, `apellido_materno`, `nombre`, `email`, `telefono`, `curp`, `fecha_nacimiento`, `genero`, `rfc`, `tipo_usuario`, `fecha_registro`) VALUES
(168, 'García', 'López', 'Ana', 'ana.garcia@example.com', '5551234567', 'GALO880123HDFRRL01', '1988-01-23', 'F', 'GALO880123XXX', 2, '2024-10-08 19:23:41'),
(169, 'Pérez', 'Sánchez', 'Luis', 'luis.perez@example.com', '5559876543', 'PESL750415HDFRSN09', '1975-04-15', 'M', 'PESL750415XXX', 2, '2024-10-08 19:23:41'),
(170, 'Hernández', 'Martínez', 'Marta', 'marta.hernandez@example.com', '5555647382', 'HEMA920305MDFRRT08', '1992-03-05', 'F', 'HEMA920305XXX', 2, '2024-10-08 19:23:41'),
(171, 'Ramírez', 'Torres', 'Carlos', 'carlos.ramirez@example.com', '5557382946', 'RATO830620HDFRRR06', '1983-06-20', 'M', 'RATO830620XXX', 2, '2024-10-08 19:23:41'),
(172, 'Fernández', 'Castillo', 'Lucía', 'lucia.fernandez@example.com', '5559271834', 'FECL950211MDFRSL04', '1995-02-11', 'F', 'FECL950211XXX', 2, '2024-10-08 19:23:41'),
(173, 'Díaz', 'Moreno', 'Fernando', 'fernando.diaz@example.com', '5558392746', 'DIMF890729HDFRRN05', '1989-07-29', 'M', 'DIMF890729XXX', 2, '2024-10-08 19:23:41'),
(174, 'Soto', 'Vargas', 'Elena', 'elena.soto@example.com', '5557162849', 'SOVE860909MDFRRL03', '1986-09-09', 'F', 'SOVE860909XXX', 2, '2024-10-08 19:23:41'),
(175, 'Aguilar', 'Mendoza', 'Raúl', 'raul.aguilar@example.com', '5556382917', 'AGMR830215HDFRRL08', '1983-02-15', 'M', 'AGMR830215XXX', 2, '2024-10-08 19:23:41'),
(176, 'Jiménez', 'Ortega', 'Claudia', 'claudia.jimenez@example.com', '5551273648', 'JIOC910523MDFRRL02', '1991-05-23', 'F', 'JIOC910523XXX', 2, '2024-10-08 19:23:41'),
(177, 'Mora', 'Luna', 'Diego', 'diego.mora@example.com', '5559247836', 'MOLD880912HDFRRL07', '1988-09-12', 'M', 'MOLD880912XXX', 2, '2024-10-08 19:23:41'),
(178, 'Rojas', 'Paredes', 'Alma', 'alma.rojas@example.com', '5551274963', 'ROPA930715MDFRRL06', '1993-07-15', 'F', 'ROPA930715XXX', 2, '2024-10-08 19:23:41'),
(179, 'Salinas', 'Cruz', 'Mario', 'mario.salinas@example.com', '5558736251', 'SACM840504HDFRRL01', '1984-05-04', 'M', 'SACM840504XXX', 2, '2024-10-08 19:23:41'),
(180, 'Guzmán', 'Beltrán', 'Julia', 'julia.guzman@example.com', '5559264837', 'GUBE970610MDFRRL04', '1997-06-10', 'F', 'GUBE970610XXX', 2, '2024-10-08 19:23:41'),
(181, 'Castro', 'Flores', 'José', 'jose.castro@example.com', '5557182934', 'CAFL780804HDFRRL09', '1978-08-04', 'M', 'CAFL780804XXX', 2, '2024-10-08 19:23:41'),
(182, 'Ortega', 'Suárez', 'Gabriela', 'gabriela.ortega@example.com', '5551273846', 'ORSU940125MDFRRL02', '1994-01-25', 'F', 'ORSU940125XXX', 2, '2024-10-08 19:23:41'),
(183, 'Vargas', 'Reyes', 'David', 'david.vargas@example.com', '5551728394', 'VARE870910HDFRRL03', '1987-09-10', 'M', 'VARE870910XXX', 2, '2024-10-08 19:23:41'),
(184, 'Navarro', 'Silva', 'Paula', 'paula.navarro@example.com', '5558264957', 'NASP990514MDFRRL07', '1999-05-14', 'F', 'NASP990514XXX', 2, '2024-10-08 19:23:41'),
(185, 'López', 'González', 'Eduardo', 'eduardo.lopez@example.com', '5552348765', 'LOGE880124HDFRRL08', '1988-01-24', 'M', 'LOGE880124XXX', 2, '2024-10-08 19:23:41'),
(186, 'Vega', 'Ramírez', 'Carolina', 'carolina.vega@example.com', '5559276348', 'VERC950708MDFRRL01', '1995-07-08', 'F', 'VERC950708XXX', 2, '2024-10-08 19:23:41'),
(187, 'Morales', 'Escobar', 'Ricardo', 'ricardo.morales@example.com', '5558472639', 'MOER790614HDFRRL05', '1979-06-14', 'M', 'MOER790614XXX', 2, '2024-10-08 19:23:41'),
(188, 'Cortés', 'Ramírez', 'Beatriz', 'beatriz.cortes@example.com', '5558293746', 'CORB850705MDFRRN07', '1985-07-05', 'F', 'CORB850705XXX', 2, '2024-10-08 19:27:53'),
(189, 'Estrada', 'Molina', 'Javier', 'javier.estrada@example.com', '5559182736', 'ESMJ760314HDFRRR03', '1976-03-14', 'M', 'ESMJ760314XXX', 2, '2024-10-08 19:27:53'),
(190, 'Luna', 'Ramos', 'Valeria', 'valeria.luna@example.com', '5557381924', 'LURV930612MDFRRL08', '1993-06-12', 'F', 'LURV930612XXX', 2, '2024-10-08 19:27:53'),
(191, 'Peña', 'Castro', 'Raúl', 'raul.pena@example.com', '5558273645', 'PECR850923HDFRRN02', '1985-09-23', 'M', 'PECR850923XXX', 2, '2024-10-08 19:27:53'),
(192, 'Herrera', 'Guzmán', 'María', 'maria.herrera@example.com', '5558273648', 'HEGM920402MDFRRN05', '1992-04-02', 'F', 'HEGM920402XXX', 2, '2024-10-08 19:27:53'),
(193, 'Serrano', 'Villalobos', 'Carlos', 'carlos.serrano@example.com', '5557162847', 'SEVC800712HDFRRN04', '1980-07-12', 'M', 'SEVC800712XXX', 2, '2024-10-08 19:27:53'),
(194, 'Rivas', 'González', 'Patricia', 'patricia.rivas@example.com', '5558392734', 'RIGP900811MDFRRN01', '1990-08-11', 'F', 'RIGP900811XXX', 2, '2024-10-08 19:27:53'),
(195, 'Medina', 'Fuentes', 'Antonio', 'antonio.medina@example.com', '5557182938', 'MEFA820918HDFRRN03', '1982-09-18', 'M', 'MEFA820918XXX', 2, '2024-10-08 19:27:53'),
(196, 'Ortiz', 'Palacios', 'Luciana', 'luciana.ortiz@example.com', '5559172638', 'ORPL930103MDFRRN07', '1993-01-03', 'F', 'ORPL930103XXX', 2, '2024-10-08 19:27:53'),
(197, 'Romero', 'Salinas', 'Jorge', 'jorge.romero@example.com', '5559173648', 'ROSA830206HDFRRN08', '1983-02-06', 'M', 'ROSA830206XXX', 2, '2024-10-08 19:27:53'),
(198, 'Lozano', 'Mendoza', 'Clara', 'clara.lozano@example.com', '5556173849', 'LOMC910815MDFRRN09', '1991-08-15', 'F', 'LOMC910815XXX', 2, '2024-10-08 19:27:53'),
(199, 'Esquivel', 'Durán', 'Diego', 'diego.esquivel@example.com', '5557483926', 'ESDD870912HDFRRN06', '1987-09-12', 'M', 'ESDD870912XXX', 2, '2024-10-08 19:27:53'),
(200, 'Campos', 'Hernández', 'Gabriela', 'gabriela.campos@example.com', '5557263948', 'CAHG960411MDFRRN03', '1996-04-11', 'F', 'CAHG960411XXX', 2, '2024-10-08 19:27:53'),
(201, 'Moreno', 'Sandoval', 'Ricardo', 'ricardo.moreno@example.com', '5557361948', 'MOSR850409HDFRRN05', '1985-04-09', 'M', 'MOSR850409XXX', 2, '2024-10-08 19:27:53'),
(202, 'Juárez', 'Núñez', 'Daniela', 'daniela.juarez@example.com', '5559268374', 'JUND930225MDFRRN02', '1993-02-25', 'F', 'JUND930225XXX', 2, '2024-10-08 19:27:53'),
(203, 'Vázquez', 'López', 'Pedro', 'pedro.vazquez@example.com', '5556384729', 'VALP850810HDFRRN01', '1985-08-10', 'M', 'VALP850810XXX', 2, '2024-10-08 19:27:53'),
(204, 'Ramón', 'Flores', 'Ana', 'ana.ramon@example.com', '5557361928', 'RAFA920308MDFRRN04', '1992-03-08', 'F', 'RAFA920308XXX', 2, '2024-10-08 19:27:53'),
(205, 'Ledesma', 'Montes', 'Arturo', 'arturo.ledesma@example.com', '5559263847', 'LEMA890620HDFRRN02', '1989-06-20', 'M', 'LEMA890620XXX', 2, '2024-10-08 19:27:53'),
(206, 'Villalobos', 'Durán', 'Lorena', 'lorena.villalobos@example.com', '5559384726', 'VIDL880511MDFRRN07', '1988-05-11', 'F', 'VIDL880511XXX', 2, '2024-10-08 19:27:53'),
(207, 'Barajas', 'Cárdenas', 'Miguel', 'miguel.barajas@example.com', '5557462819', 'BAMC850723HDFRRN01', '1985-07-23', 'M', 'BAMC850723XXX', 2, '2024-10-08 19:27:53'),
(208, 'Zamora', 'García', 'Ángel', 'angel.zamora@example.com', '5558347261', 'ZAGA820715HDFRRN03', '1982-07-15', 'M', 'ZAGA820715XXX', 2, '2024-10-08 19:30:53'),
(209, 'Navarro', 'Reyes', 'Teresa', 'teresa.navarro@example.com', '5559374826', 'NARE900104MDFRRN02', '1990-01-04', 'F', 'NARE900104XXX', 2, '2024-10-08 19:30:53'),
(210, 'Olivares', 'Sánchez', 'Fernando', 'fernando.olivares@example.com', '5558273645', 'OLSF850922HDFRRN05', '1985-09-22', 'M', 'OLSF850922XXX', 2, '2024-10-08 19:30:53'),
(211, 'Salazar', 'Hernández', 'Paulina', 'paulina.salazar@example.com', '5557162846', 'SAHP930610MDFRRN09', '1993-06-10', 'F', 'SAHP930610XXX', 2, '2024-10-08 19:30:53'),
(212, 'Valencia', 'Pérez', 'Gustavo', 'gustavo.valencia@example.com', '5558172639', 'VAPG860414HDFRRN06', '1986-04-14', 'M', 'VAPG860414XXX', 2, '2024-10-08 19:30:53'),
(213, 'Castillo', 'Ortiz', 'Silvia', 'silvia.castillo@example.com', '5559273648', 'CAOS900918MDFRRN01', '1990-09-18', 'F', 'CAOS900918XXX', 2, '2024-10-08 19:30:53'),
(214, 'Guzmán', 'Vargas', 'Roberto', 'roberto.guzman@example.com', '5556384726', 'GUVR830301HDFRRN08', '1983-03-01', 'M', 'GUVR830301XXX', 2, '2024-10-08 19:30:53'),
(215, 'Ortega', 'Jiménez', 'Marta', 'marta.ortega@example.com', '5557263849', 'ORJM940607MDFRRN04', '1994-06-07', 'F', 'ORJM940607XXX', 2, '2024-10-08 19:30:53'),
(216, 'Ruiz', 'Flores', 'Tomás', 'tomas.ruiz@example.com', '5558172948', 'RUFT820519HDFRRN07', '1982-05-19', 'M', 'RUFT820519XXX', 2, '2024-10-08 19:30:53'),
(217, 'Maldonado', 'Gómez', 'Alicia', 'alicia.maldonado@example.com', '5559173649', 'MAGG890927MDFRRN02', '1989-09-27', 'F', 'MAGG890927XXX', 2, '2024-10-08 19:30:53'),
(218, 'García', 'López', 'Juan', 'juan.garcia@example.com', '5551234567', 'GALJ800101HDFLPN09', '1980-01-01', 'M', 'GALJ800101XXX', 1, '2024-10-08 19:50:37'),
(219, 'Martínez', 'Hernández', 'María', 'maria.martinez@example.com', '5552345678', 'MAMM850202MDFRNN06', '1985-02-02', 'F', 'MAMM850202XXX', 1, '2024-10-08 19:50:37'),
(220, 'Hernández', 'Ramírez', 'Luis', 'luis.hernandez@example.com', '5553456789', 'HERL920303HDFRMS02', '1992-03-03', 'M', 'HERL920303XXX', 1, '2024-10-08 19:50:37'),
(221, 'Pérez', 'González', 'Ana', 'ana.perez@example.com', '5554567890', 'PEZA900404MDFRAN09', '1990-04-04', 'F', 'PEZA900404XXX', 1, '2024-10-08 19:50:37'),
(222, 'Rodríguez', 'Jiménez', 'Carlos', 'carlos.rodriguez@example.com', '5555678901', 'RODC840505HDFJMR05', '1984-05-05', 'M', 'RODC840505XXX', 1, '2024-10-08 19:50:37'),
(223, 'López', 'Torres', 'Laura', 'laura.lopez@example.com', '5556789012', 'LOPL750606MDFLRA07', '1975-06-06', 'F', 'LOPL750606XXX', 1, '2024-10-08 19:50:37'),
(224, 'Sánchez', 'Mendoza', 'Jorge', 'jorge.sanchez@example.com', '5557890123', 'SAMJ880707HDFJRG01', '1988-07-07', 'M', 'SAMJ880707XXX', 1, '2024-10-08 19:50:37'),
(225, 'Ramírez', 'Reyes', 'Fernanda', 'fernanda.ramirez@example.com', '5558901234', 'RARF920808MDFRNF05', '1992-08-08', 'F', 'RARF920808XXX', 1, '2024-10-08 19:50:37'),
(226, 'González', 'Vásquez', 'Roberto', 'roberto.gonzalez@example.com', '5559012345', 'GOVR850909HDFZRS01', '1985-09-09', 'M', 'GOVR850909XXX', 1, '2024-10-08 19:50:37'),
(227, 'Torres', 'Cruz', 'Patricia', 'patricia.torres@example.com', '5550123456', 'TOCP760610MDFPRA03', '1976-10-10', 'F', 'TOCP760610XXX', 1, '2024-10-08 19:50:37'),
(228, 'Rojas', 'Salazar', 'Fernando', 'fernando.rojas@example.com', '5551234568', 'ROJF920711HDFRSN07', '1992-11-11', 'M', 'ROJF920711XXX', 1, '2024-10-08 19:50:37'),
(229, 'Vásquez', 'Maldonado', 'Isabel', 'isabel.vasquez@example.com', '5552345679', 'VAMI880812MDFSBL09', '1988-12-12', 'F', 'VAMI880812XXX', 1, '2024-10-08 19:50:37'),
(230, 'Jiménez', 'Medina', 'Eduardo', 'eduardo.jimenez@example.com', '5553456780', 'JIME840113HDFMDR02', '1984-01-13', 'M', 'JIME840113XXX', 1, '2024-10-08 19:50:37'),
(231, 'Salazar', 'Martínez', 'Mónica', 'monica.salazar@example.com', '5554567891', 'SAMO900314MDFMTN01', '1990-03-14', 'F', 'SAMO900314XXX', 1, '2024-10-08 19:50:37'),
(232, 'Cruz', 'Ramírez', 'Gabriel', 'gabriel.cruz@example.com', '5555678902', 'CRUG890415HDFRBG02', '1989-04-15', 'M', 'CRUG890415XXX', 1, '2024-10-08 19:50:37'),
(233, 'Maldonado', 'Córdova', 'Teresa', 'teresa.maldonado@example.com', '5556789013', 'MACR760516MDFTRS05', '1976-05-16', 'F', 'MACR760516XXX', 1, '2024-10-08 19:50:37'),
(234, 'Reyes', 'Rivas', 'Victor', 'victor.reyes@example.com', '5557890124', 'RERV950617HDFRVT01', '1995-06-17', 'M', 'RERV950617XXX', 1, '2024-10-08 19:50:37'),
(235, 'Medina', 'Luna', 'Gloria', 'gloria.medina@example.com', '5558901235', 'MELG820718MDFGRA04', '1982-07-18', 'F', 'MELG820718XXX', 1, '2024-10-08 19:50:37'),
(236, 'Córdova', 'Bermúdez', 'Raúl', 'raul.cordova@example.com', '5559012346', 'COER850819HDFRUL01', '1985-08-19', 'M', 'COER850819XXX', 1, '2024-10-08 19:50:37'),
(237, 'Rivas', 'López', 'Julieta', 'julieta.rivas@example.com', '5550123457', 'RILJ910920MDFLPU05', '1991-09-20', 'F', 'RILJ910920XXX', 1, '2024-10-08 19:50:37'),
(238, 'Bermúdez', 'Soto', 'Rafael', 'rafael.bermudez@example.com', '5551234569', 'BESR920821HDFMRF01', '1992-08-21', 'M', 'BESR920821XXX', 1, '2024-10-08 19:50:37'),
(239, 'Luna', 'Hernández', 'Sandra', 'sandra.luna@example.com', '5552345670', 'LUHS810322MDFSRA01', '1981-03-22', 'F', 'LUHS810322XXX', 1, '2024-10-08 19:50:37'),
(240, 'Soto', 'Morales', 'Javier', 'javier.soto@example.com', '5553456781', 'SOMJ970423HDFMRJ02', '1997-04-23', 'M', 'SOMJ970423XXX', 1, '2024-10-08 19:50:37'),
(241, 'Morales', 'González', 'Susana', 'susana.morales@example.com', '5554567892', 'MOGS870524MDFSUS04', '1987-05-24', 'F', 'MOGS870524XXX', 1, '2024-10-08 19:50:37'),
(242, 'García', 'Salas', 'Luis', 'luis.garcia@example.com', '5555678903', 'GASL920625HDFLUS05', '1992-06-25', 'M', 'GASL920625XXX', 1, '2024-10-08 19:50:37'),
(243, 'Salas', 'Martínez', 'Marta', 'marta.salas@example.com', '5556789014', 'SAMM800726MDFMTM02', '1980-07-26', 'F', 'SAMM800726XXX', 1, '2024-10-08 19:50:37'),
(244, 'Martínez', 'Morales', 'Hugo', 'hugo.martinez@example.com', '5557890125', 'MAMH890827HDFMUG01', '1989-08-27', 'M', 'MAMH890827XXX', 1, '2024-10-08 19:50:37'),
(245, 'Morales', 'Pérez', 'Cecilia', 'cecilia.morales@example.com', '5558901236', 'MOPC900828MDFCEC01', '1990-08-28', 'F', 'MOPC900828XXX', 1, '2024-10-08 19:50:37'),
(246, 'Pérez', 'López', 'Alberto', 'alberto.perez@example.com', '5559012347', 'PEAL920829HDFALB01', '1992-08-29', 'M', 'PEAL920829XXX', 1, '2024-10-08 19:50:37'),
(247, 'López', 'Salazar', 'Verónica', 'veronica.lopez@example.com', '5550123458', 'LOPV820830MDFVER05', '1982-08-30', 'F', 'LOPV820830XXX', 1, '2024-10-08 19:50:37'),
(248, 'Salazar', 'Rivas', 'Eduardo', 'eduardo.salazar@example.com', '5551234560', 'SARV910831HDFEDR01', '1991-08-31', 'M', 'SARV910831XXX', 1, '2024-10-08 19:50:37'),
(249, 'Rivas', 'Luna', 'Patricia', 'patricia.rivas@example.com', '5552345671', 'RILP800901MDFPAT06', '1980-09-01', 'F', 'RILP800901XXX', 1, '2024-10-08 19:50:37'),
(250, 'Luna', 'Martínez', 'Sergio', 'sergio.luna@example.com', '5553456782', 'LUMS850902HDFSER01', '1985-09-02', 'M', 'LUMS850902XXX', 1, '2024-10-08 19:50:37'),
(251, 'Martínez', 'Cruz', 'Leticia', 'leticia.martinez@example.com', '5554567893', 'MALC900903MDFLET01', '1990-09-03', 'F', 'MALC900903XXX', 1, '2024-10-08 19:50:37'),
(252, 'Cruz', 'Torres', 'Roberto', 'roberto.cruz@example.com', '5555678904', 'CRUR760904HDFRBO02', '1976-09-04', 'M', 'CRUR760904XXX', 1, '2024-10-08 19:50:37'),
(253, 'Torres', 'Salas', 'Marisol', 'marisol.torres@example.com', '5556789015', 'TOMA810905MDFMAR05', '1981-09-05', 'F', 'TOMA810905XXX', 1, '2024-10-08 19:50:37'),
(254, 'Salas', 'Jiménez', 'Alfonso', 'alfonso.salas@example.com', '5557890126', 'SAJA970906HDFALF01', '1997-09-06', 'M', 'SAJA970906XXX', 1, '2024-10-08 19:50:37'),
(255, 'Jiménez', 'Maldonado', 'Carmen', 'carmen.jimenez@example.com', '5558901237', 'JIMC860907MDFCAR01', '1986-09-07', 'F', 'JIMC860907XXX', 1, '2024-10-08 19:50:37'),
(256, 'Maldonado', 'Rojas', 'Guillermo', 'guillermo.maldonado@example.com', '5559012348', 'MARG850908HDFGIL01', '1985-09-08', 'M', 'MARG850908XXX', 1, '2024-10-08 19:50:37'),
(257, 'Rojas', 'Hernández', 'Nora', 'nora.rojas@example.com', '5550123459', 'ROHN920909MDFNRA05', '1992-09-09', 'F', 'ROHN920909XXX', 1, '2024-10-08 19:50:37'),
(258, 'Hernández', 'Vega', 'Sonia', 'sonia.hernandez@example.com', '5551234570', 'HEVS900101MDFHNO07', '1990-01-01', 'F', 'HEVS900101XXX', 1, '2024-10-08 19:51:59'),
(259, 'Vega', 'González', 'Francisco', 'francisco.vega@example.com', '5552345681', 'VEGF840202HDFRNC03', '1984-02-02', 'M', 'VEGF840202XXX', 1, '2024-10-08 19:51:59'),
(260, 'González', 'Ramos', 'Lucía', 'lucia.gonzalez@example.com', '5553456792', 'GORL920303MDFLCU04', '1992-03-03', 'F', 'GORL920303XXX', 1, '2024-10-08 19:51:59'),
(261, 'Ramos', 'Castillo', 'Pablo', 'pablo.ramos@example.com', '5554567803', 'RACP850404HDFPBL01', '1985-04-04', 'M', 'RACP850404XXX', 1, '2024-10-08 19:51:59'),
(262, 'Castillo', 'Sierra', 'Daniela', 'daniela.castillo@example.com', '5555678914', 'CASD920505MDFDAN01', '1992-05-05', 'F', 'CASD920505XXX', 1, '2024-10-08 19:51:59'),
(263, 'Sierra', 'Cordero', 'Ricardo', 'ricardo.sierra@example.com', '5556789025', 'SIRR840606HDFRCD03', '1984-06-06', 'M', 'SIRR840606XXX', 1, '2024-10-08 19:51:59'),
(264, 'Cordero', 'Delgado', 'Verónica', 'veronica.cordero@example.com', '5557890136', 'CODV920707MDFVER04', '1992-07-07', 'F', 'CODV920707XXX', 1, '2024-10-08 19:51:59'),
(265, 'Delgado', 'Sánchez', 'Santiago', 'santiago.delgado@example.com', '5558901247', 'DESA850808HDFSNT02', '1985-08-08', 'M', 'DESA850808XXX', 1, '2024-10-08 19:51:59'),
(266, 'Sánchez', 'Alonso', 'Claudia', 'claudia.sanchez@example.com', '5559012358', 'SAAC920909MDFCLA07', '1992-09-09', 'F', 'SAAC920909XXX', 1, '2024-10-08 19:51:59'),
(267, 'Alonso', 'Ponce', 'Andrés', 'andres.alonso@example.com', '5550123469', 'ALPA850010HDFAND01', '1985-10-10', 'M', 'ALPA850010XXX', 1, '2024-10-08 19:51:59'),
(268, 'García', 'López', 'Juan', 'juan.garcia@example.com', '5551234567', 'GALJ800101HDFLPN00', '1980-01-01', 'M', 'GALJ800101123', 4, '2024-10-08 20:21:38'),
(269, 'Martínez', 'Hernández', 'María', 'maria.martinez@example.com', '5552345678', 'MARM900202MDFNMR01', '1990-02-02', 'F', 'MARM900202321', 4, '2024-10-08 20:21:38'),
(270, 'Pérez', 'González', 'Luis', 'luis.perez@example.com', '5553456789', 'PEGL780303HDFRNS04', '1978-03-03', 'M', 'PEGL780303456', 4, '2024-10-08 20:21:38'),
(271, 'Sánchez', 'Ramírez', 'Ana', 'ana.sanchez@example.com', '5554567890', 'SARL940404MDFRMS05', '1994-04-04', 'F', 'SARL940404123', 4, '2024-10-08 20:21:38'),
(272, 'Rodríguez', 'Díaz', 'Carlos', 'carlos.rodriguez@example.com', '5555678901', 'RODC850505HDFZNL06', '1985-05-05', 'M', 'RODC850505654', 4, '2024-10-08 20:21:38'),
(273, 'Gómez', 'Jiménez', 'Lucía', 'lucia.gomez@example.com', '5556789012', 'GOJL960606MDFJMR07', '1996-06-06', 'F', 'GOJL960606987', 4, '2024-10-08 20:21:38'),
(274, 'Morales', 'Torres', 'Andrés', 'andres.morales@example.com', '5557890123', 'MOTR770707HDFBRD08', '1977-07-07', 'M', 'MOTR770707234', 4, '2024-10-08 20:21:38'),
(275, 'Hernández', 'Flores', 'Patricia', 'patricia.hernandez@example.com', '5558901234', 'HEFP880808MDFLRT09', '1988-08-08', 'F', 'HEFP880808543', 4, '2024-10-08 20:21:38'),
(276, 'Jiménez', 'Vargas', 'Fernando', 'fernando.jimenez@example.com', '5559012345', 'JIVF890909HDFGNR10', '1989-09-09', 'M', 'JIVF890909654', 4, '2024-10-08 20:21:38'),
(277, 'Ríos', 'Cruz', 'Isabel', 'isabel.rios@example.com', '5560123456', 'RICI950101MDFLBS11', '1995-01-01', 'F', 'RICI950101123', 4, '2024-10-08 20:21:38'),
(278, 'Cordero', 'Soto', 'Jorge', 'jorge.cordero@example.com', '5561234567', 'COSJ900202HDFRTS12', '1990-02-02', 'M', 'COSJ900202456', 4, '2024-10-08 20:21:38'),
(279, 'Castillo', 'Núñez', 'Valeria', 'valeria.castillo@example.com', '5562345678', 'CANV870303MDFBRS13', '1987-03-03', 'F', 'CANV870303789', 4, '2024-10-08 20:21:38'),
(280, 'Vega', 'Salazar', 'Diego', 'diego.vega@example.com', '5563456789', 'VESD940404HDFLNZ14', '1994-04-04', 'M', 'VESD940404321', 4, '2024-10-08 20:21:38'),
(281, 'Aguilar', 'Mendoza', 'Sofía', 'sofia.aguilar@example.com', '5564567890', 'AGMS920505MDFLSR15', '1992-05-05', 'F', 'AGMS920505654', 4, '2024-10-08 20:21:38'),
(282, 'Torres', 'García', 'Raúl', 'raul.torres@example.com', '5565678901', 'TOGR850606HDFQRM16', '1985-06-06', 'M', 'TOGR850606432', 4, '2024-10-08 20:21:38'),
(283, 'Ramírez', 'Santiago', 'Gabriela', 'gabriela.ramirez@example.com', '5566789012', 'RASG880707MDFRBL17', '1988-07-07', 'F', 'RASG880707789', 4, '2024-10-08 20:21:38'),
(284, 'Cruz', 'Ortega', 'Ricardo', 'ricardo.cruz@example.com', '5567890123', 'CUOR900808HDFMTN18', '1990-08-08', 'M', 'CUOR900808321', 4, '2024-10-08 20:21:38'),
(285, 'Flores', 'Pérez', 'Claudia', 'claudia.flores@example.com', '5568901234', 'FLPC850909MDFCTH19', '1985-09-09', 'F', 'FLPC850909543', 4, '2024-10-08 20:21:38'),
(286, 'Moreno', 'Vasquez', 'Juanita', 'juanita.moreno@example.com', '5569012345', 'MOVA940101HDFJSM20', '1994-01-01', 'F', 'MOVA940101123', 4, '2024-10-08 20:21:38'),
(287, 'Nava', 'Acosta', 'Eduardo', 'eduardo.nava@example.com', '5570123456', 'NAAE920202HDFQRO21', '1992-02-02', 'M', 'NAAE920202456', 4, '2024-10-08 20:21:38'),
(288, 'Soto', 'Morales', 'Teresa', 'teresa.soto@example.com', '5571234567', 'SOMT890303HDFPLN22', '1989-03-03', 'F', 'SOMT890303987', 4, '2024-10-08 20:21:38'),
(289, 'Alvarado', 'López', 'Esteban', 'esteban.alvarado@example.com', '5572345678', 'ALOE850404HDFJNW23', '1985-04-04', 'M', 'ALOE850404654', 4, '2024-10-08 20:21:38'),
(290, 'Valdez', 'González', 'Adriana', 'adriana.valdez@example.com', '5573456789', 'VAGL880505MDFBRT24', '1988-05-05', 'F', 'VAGL880505543', 4, '2024-10-08 20:21:38'),
(291, 'Salinas', 'Ríos', 'Mario', 'mario.salinas@example.com', '5574567890', 'SARM770606HDFBRN25', '1977-06-06', 'M', 'SARM770606789', 4, '2024-10-08 20:21:38'),
(292, 'Rangel', 'Hernández', 'Mónica', 'monica.rangel@example.com', '5575678901', 'RAHM940707MDFCNM26', '1994-07-07', 'F', 'RAHM940707654', 4, '2024-10-08 20:21:38'),
(293, 'Pacheco', 'Aguilar', 'Ángel', 'angel.pacheco@example.com', '5576789012', 'PACG850808HDFGTT27', '1985-08-08', 'M', 'PACG850808321', 4, '2024-10-08 20:21:38'),
(294, 'Ceballos', 'Serrano', 'Cecilia', 'cecilia.ceballos@example.com', '5577890123', 'CESE920909HDFPSY28', '1992-09-09', 'F', 'CESE920909987', 4, '2024-10-08 20:21:38'),
(295, 'Olivares', 'Romero', 'Horacio', 'horacio.olivares@example.com', '5578901234', 'OLRH870101HDFMTR29', '1987-01-01', 'M', 'OLRH870101234', 4, '2024-10-08 20:21:38'),
(296, 'Palacios', 'Salinas', 'Natalia', 'natalia.palacios@example.com', '5579012345', 'PASN900202HDFNLM30', '1990-02-02', 'F', 'PASN900202321', 4, '2024-10-08 20:21:38'),
(297, 'González', 'Espinosa', 'Fernando', 'fernando.gonzalez@example.com', '5580123456', 'GOEF910303HDFBSP31', '1991-03-03', 'M', 'GOEF910303654', 4, '2024-10-08 20:21:38'),
(298, 'Cordero', 'Salazar', 'Yolanda', 'yolanda.cordero@example.com', '5581234567', 'COSY920404MDFTSP32', '1992-04-04', 'F', 'COSY920404987', 4, '2024-10-08 20:21:38'),
(299, 'Marín', 'Hernández', 'Francisco', 'francisco.marin@example.com', '5582345678', 'MAHF940505HDFRBN33', '1994-05-05', 'M', 'MAHF940505123', 4, '2024-10-08 20:21:38'),
(300, 'Aguilar', 'García', 'Gabriel', 'gabriel.aguilar@example.com', '5583456789', 'AGGG940606HDFHGT34', '1994-06-06', 'M', 'AGGG940606987', 4, '2024-10-08 20:21:38'),
(301, 'González', 'Morales', 'Pamela', 'pamela.gonzalez@example.com', '5584567890', 'GOML950707MDFBRQ35', '1995-07-07', 'F', 'GOML950707234', 4, '2024-10-08 20:21:38'),
(302, 'Salas', 'Torres', 'Omar', 'omar.salas@example.com', '5585678901', 'SATM910808HDFBQT36', '1991-08-08', 'M', 'SATM910808654', 4, '2024-10-08 20:21:38'),
(303, 'Ponce', 'Cruz', 'Patricia', 'patricia.ponce@example.com', '5586789012', 'POCP890909HDFLPQ37', '1989-09-09', 'F', 'POCP890909123', 4, '2024-10-08 20:21:38'),
(304, 'Núñez', 'Rodríguez', 'Santiago', 'santiago.nunez@example.com', '5587890123', 'NURS860101HDFGNH38', '1986-01-01', 'M', 'NURS860101789', 4, '2024-10-08 20:21:38'),
(305, 'Cisneros', 'Castillo', 'Silvia', 'silvia.cisneros@example.com', '5588901234', 'CISI940202MDFNLP39', '1994-02-02', 'F', 'CISI940202456', 4, '2024-10-08 20:21:38'),
(306, 'Vargas', 'Sánchez', 'Ángel', 'angel.vargas@example.com', '5589012345', 'VASG880303HDFBRH40', '1988-03-03', 'M', 'VASG880303654', 4, '2024-10-08 20:21:38'),
(307, 'Estrada', 'Mendoza', 'Karla', 'karla.estrada@example.com', '5590123456', 'EMKA870404MDFRSR41', '1987-04-04', 'F', 'EMKA870404321', 4, '2024-10-08 20:21:38'),
(308, 'Sáenz', 'Vázquez', 'Ricardo', 'ricardo.saenz@example.com', '5591234567', 'SAVR860505HDFQNL42', '1986-05-05', 'M', 'SAVR860505789', 4, '2024-10-08 20:21:38'),
(309, 'Barrios', 'Hernández', 'Vanessa', 'vanessa.barrios@example.com', '5592345678', 'BAHV900606MDFQNM43', '1990-06-06', 'F', 'BAHV900606456', 4, '2024-10-08 20:21:38'),
(310, 'Villalobos', 'Salinas', 'Alberto', 'alberto.villalobos@example.com', '5593456789', 'VISA870707HDFBRM44', '1987-07-07', 'M', 'VISA870707987', 4, '2024-10-08 20:21:38'),
(311, 'Beltrán', 'González', 'Rocío', 'rocio.beltran@example.com', '5594567890', 'BEGR940808MDFNQR45', '1994-08-08', 'F', 'BEGR940808321', 4, '2024-10-08 20:21:38'),
(312, 'Marroquín', 'Serrano', 'Iván', 'ivan.marroquin@example.com', '5595678901', 'MASI890909HDFGTF46', '1989-09-09', 'M', 'MASI890909654', 4, '2024-10-08 20:21:38'),
(313, 'Salazar', 'Ríos', 'Miranda', 'miranda.salazar@example.com', '5596789012', 'SARM940101MDFFRR47', '1994-01-01', 'F', 'SARM940101987', 4, '2024-10-08 20:21:38'),
(314, 'Sandoval', 'Hernández', 'Alejandro', 'alejandro.sandoval@example.com', '5597890123', 'SAHA910202HDFNLJ48', '1991-02-02', 'M', 'SAHA910202654', 4, '2024-10-08 20:21:38'),
(315, 'Alcántara', 'Cordero', 'Jessica', 'jessica.alcantara@example.com', '5598901234', 'ALCJ920303MDFCZR49', '1992-03-03', 'F', 'ALCJ920303321', 4, '2024-10-08 20:21:38'),
(316, 'Castillo', 'Torres', 'Pablo', 'pablo.castillo@example.com', '5599012345', 'CATP860404HDFBRM50', '1986-04-04', 'M', 'CATP860404987', 4, '2024-10-08 20:21:38'),
(317, 'Morales', 'Gutiérrez', 'Javier', 'javier.morales@example.com', '5556789012', 'MOGJ800101HDFLRR08', '1980-01-01', 'M', 'MOGJ800101HDF', 4, '2024-10-08 20:24:13'),
(468, 'García', 'López', 'Juan', 'juan.garcia@mail.com', '555-1234', 'GALO900101HDFRRL01', '1990-01-01', 'M', 'GALO9001011R1', 3, '2024-10-09 19:34:47'),
(469, 'Pérez', 'Martínez', 'María', 'maria.perez@mail.com', '555-5678', 'PEMA910202MDFMRT02', '1991-02-02', 'F', 'PEMA9102021R2', 3, '2024-10-09 19:34:47'),
(470, 'Hernández', 'Gómez', 'Luis', 'luis.hernandez@mail.com', '555-8765', 'HEGL920303HDFGRZ03', '1992-03-03', 'M', 'HEGL9203031R3', 3, '2024-10-09 19:34:47'),
(471, 'Luna', 'Fernández', 'Ana', 'ana.luna@mail.com', '555-4321', 'LUFE930404MDFLNR04', '1993-04-04', 'F', 'LUFE9304041R4', 3, '2024-10-09 19:34:47'),
(472, 'Ramírez', 'Sánchez', 'Carlos', 'carlos.ramirez@mail.com', '555-6789', 'RASA940505HDFRSC05', '1994-05-05', 'M', 'RASA9405051R5', 3, '2024-10-09 19:34:47'),
(473, 'Díaz', 'Morales', 'Gabriela', 'gabriela.diaz@mail.com', '555-1357', 'DIMOG950606MDFMRA06', '1995-06-06', 'F', 'DIMOG9506061R6', 3, '2024-10-09 19:34:47'),
(474, 'Mendoza', 'Ruiz', 'Fernando', 'fernando.mendoza@mail.com', '555-9753', 'MERF960707HDFMNR07', '1996-07-07', 'M', 'MERF9607071R7', 3, '2024-10-09 19:34:47'),
(475, 'Ortiz', 'Torres', 'Laura', 'laura.ortiz@mail.com', '555-2468', 'ORTL970808MDFTRS08', '1997-08-08', 'F', 'ORTL9708081R8', 3, '2024-10-09 19:34:47'),
(476, 'Chávez', 'Vargas', 'Jorge', 'jorge.chavez@mail.com', '555-8642', 'CHVJ980909HDFVGR09', '1998-09-09', 'M', 'CHVJ9809091R9', 3, '2024-10-09 19:34:47'),
(477, 'Reyes', 'Cruz', 'Daniela', 'daniela.reyes@mail.com', '555-3579', 'RECD990101MDFCRS10', '1999-01-01', 'F', 'RECD9901011R0', 3, '2024-10-09 19:34:47'),
(478, 'Ramos', 'Fuentes', 'Diego', 'diego.ramos@mail.com', '555-7531', 'RAFUD000202HDFNTS11', '2000-02-02', 'M', 'RAFUD0002021R1', 3, '2024-10-09 19:34:47'),
(479, 'Vega', 'Molina', 'Andrea', 'andrea.vega@mail.com', '555-1593', 'VEMA010303MDFMNA12', '2001-03-03', 'F', 'VEMA0103031R2', 3, '2024-10-09 19:34:47'),
(480, 'Gómez', 'Ávila', 'José', 'jose.gomez@mail.com', '555-9517', 'GOAJ020404HDFMVA13', '2002-04-04', 'M', 'GOAJ0204041R3', 3, '2024-10-09 19:34:47'),
(481, 'Santos', 'Lara', 'Paola', 'paola.santos@mail.com', '555-2864', 'SAPA030505MDFLRA14', '2003-05-05', 'F', 'SAPA0305051R4', 3, '2024-10-09 19:34:47'),
(482, 'Molina', 'Flores', 'Pablo', 'pablo.molina@mail.com', '555-4682', 'MOFP040606HDFLFR15', '2004-06-06', 'M', 'MOFP0406061R5', 3, '2024-10-09 19:34:47'),
(483, 'Morales', 'Escobar', 'Liliana', 'liliana.morales@mail.com', '555-8426', 'MOEL050707MDFESL16', '2005-07-07', 'F', 'MOEL0507071R6', 3, '2024-10-09 19:34:47'),
(484, 'Ibarra', 'Ríos', 'David', 'david.ibarra@mail.com', '555-6248', 'IBRD060808HDFRRS17', '2006-08-08', 'M', 'IBRD0608081R7', 3, '2024-10-09 19:34:47'),
(485, 'Aguilar', 'Ramírez', 'Rosa', 'rosa.aguilar@mail.com', '555-7135', 'AGRR070909MDFRMZ18', '2007-09-09', 'F', 'AGRR0709091R8', 3, '2024-10-09 19:34:47'),
(486, 'Pineda', 'Navarro', 'Felipe', 'felipe.pineda@mail.com', '555-3517', 'PINF080101HDFNVR19', '2008-01-01', 'M', 'PINF0801011R9', 3, '2024-10-09 19:34:47'),
(487, 'Villalobos', 'Jiménez', 'Karen', 'karen.villalobos@mail.com', '555-1358', 'VIJK090202MDFLMZ20', '2009-02-02', 'F', 'VIJK0902021R0', 3, '2024-10-09 19:34:47'),
(488, 'Galván', 'Alvarado', 'Miguel', 'miguel.galvan@mail.com', '555-9764', 'GAMM100303HDFLVR21', '2010-03-03', 'M', 'GAMM1003031R1', 3, '2024-10-09 19:34:47'),
(489, 'Escobar', 'Salazar', 'Lucía', 'lucia.escobar@mail.com', '555-1597', 'ESLL110404MDFLZR22', '2011-04-04', 'F', 'ESLL1104041R2', 3, '2024-10-09 19:34:47'),
(490, 'Cortés', 'Blanco', 'Carlos', 'carlos.cortes@mail.com', '555-2684', 'COBC120505HDFLNC23', '2012-05-05', 'M', 'COBC1205051R3', 3, '2024-10-09 19:34:47'),
(491, 'Serrano', 'Castillo', 'Iván', 'ivan.serrano@mail.com', '555-8537', 'SECI130606HDFCSR24', '2013-06-06', 'M', 'SECI1306061R4', 3, '2024-10-09 19:34:47'),
(492, 'Montoya', 'Ortiz', 'Julia', 'julia.montoya@mail.com', '555-3146', 'MOJU140707MDFNTS25', '2014-07-07', 'F', 'MOJU1407071R5', 3, '2024-10-09 19:34:47'),
(493, 'Vargas', 'Martínez', 'Oscar', 'oscar.vargas@mail.com', '555-7894', 'VAMA150808HDFMRS26', '2015-08-08', 'M', 'VAMA1508081R6', 3, '2024-10-09 19:34:47'),
(494, 'López', 'Cabrera', 'Sandra', 'sandra.lopez@mail.com', '555-3578', 'LOCS160909MDFCBR27', '2016-09-09', 'F', 'LOCS1609091R7', 3, '2024-10-09 19:34:47'),
(495, 'Ramírez', 'Estrada', 'Luis', 'luis.ramirez@mail.com', '555-7539', 'RAEL170101HDFSTR28', '2017-01-01', 'M', 'RAEL1701011R8', 3, '2024-10-09 19:34:47'),
(496, 'González', 'Valdez', 'Alma', 'alma.gonzalez@mail.com', '555-4628', 'GOAL180202MDFLDS29', '2018-02-02', 'F', 'GOAL1802021R9', 3, '2024-10-09 19:34:47'),
(497, 'Flores', 'Galindo', 'Manuel', 'manuel.flores@mail.com', '555-9367', 'FLGM190303HDFGLN30', '2019-03-03', 'M', 'FLGM1903031R0', 3, '2024-10-09 19:34:47'),
(498, 'Navarro', 'Quintana', 'Isabel', 'isabel.navarro@mail.com', '555-1597', 'NAQI200404MDFQNA31', '2020-04-04', 'F', 'NAQI2004041R1', 3, '2024-10-09 19:34:47'),
(499, 'Cárdenas', 'Soto', 'José', 'jose.cardenas@mail.com', '555-8753', 'CASJ210505HDFSOT32', '2021-05-05', 'M', 'CASJ2105051R2', 3, '2024-10-09 19:34:47'),
(500, 'Arriaga', 'Hernández', 'Marcos', 'marcos.arriaga@mail.com', '555-3684', 'ARHM220606HDFNTR33', '2022-06-06', 'M', 'ARHM2206061R3', 3, '2024-10-09 19:34:47'),
(501, 'Torres', 'Olvera', 'Susana', 'susana.torres@mail.com', '555-4862', 'TROS230707MDFOLR34', '2023-07-07', 'F', 'TROS2307071R4', 3, '2024-10-09 19:34:47'),
(502, 'Márquez', 'Salinas', 'Fernando', 'fernando.marquez@mail.com', '555-8246', 'MASF240808HDFSAL35', '2024-08-08', 'M', 'MASF2408081R5', 3, '2024-10-09 19:34:47'),
(503, 'Ríos', 'Vásquez', 'Estela', 'estela.rios@mail.com', '555-2648', 'RIVA250909MDFVQS36', '2025-09-09', 'F', 'RIVA2509091R6', 3, '2024-10-09 19:34:47'),
(504, 'Méndez', 'Vega', 'César', 'cesar.mendez@mail.com', '555-7135', 'MEVC260101HDFVGZ37', '2026-01-01', 'M', 'MEVC2601011R7', 3, '2024-10-09 19:34:47'),
(505, 'Ortiz', 'Pacheco', 'Verónica', 'veronica.ortiz@mail.com', '555-3517', 'ORPV270202MDFPCO38', '2027-02-02', 'F', 'ORPV2702021R8', 3, '2024-10-09 19:34:47'),
(506, 'Núñez', 'Reyes', 'Javier', 'javier.nunez@mail.com', '555-1358', 'NURJ280303HDFRYS39', '2028-03-03', 'M', 'NURJ2803031R9', 3, '2024-10-09 19:34:47'),
(507, 'Rosales', 'Aranda', 'Marta', 'marta.rosales@mail.com', '555-9764', 'ROAM290404MDFRND40', '2029-04-04', 'F', 'ROAM2904041R0', 3, '2024-10-09 19:34:47'),
(508, 'Vázquez', 'Ortega', 'Sergio', 'sergio.vazquez@mail.com', '555-1597', 'VAOS300505HDFTRG41', '2030-05-05', 'M', 'VAOS3005051R1', 3, '2024-10-09 19:34:47'),
(509, 'Guerra', 'Montes', 'Juliana', 'juliana.guerra@mail.com', '555-2684', 'GUMJ310606MDFMNS42', '2031-06-06', 'F', 'GUMJ3106061R2', 3, '2024-10-09 19:34:47'),
(510, 'Solís', 'Peña', 'Adrián', 'adrian.solis@mail.com', '555-8537', 'SOPA320707HDFPNA43', '2032-07-07', 'M', 'SOPA3207071R3', 3, '2024-10-09 19:34:47'),
(511, 'Valencia', 'Pérez', 'Laura', 'laura.valencia@mail.com', '555-3146', 'VAPE330808MDFLRS44', '2033-08-08', 'F', 'VAPE3308081R4', 3, '2024-10-09 19:34:47'),
(512, 'Herrera', 'Nieves', 'Miguel', 'miguel.herrera@mail.com', '555-7894', 'HENM340909HDFNVZ45', '2034-09-09', 'M', 'HENM3409091R5', 3, '2024-10-09 19:34:47'),
(513, 'Escobedo', 'Cruz', 'Camila', 'camila.escobedo@mail.com', '555-3578', 'ESCC350101MDFCRS46', '2035-01-01', 'F', 'ESCC3501011R6', 3, '2024-10-09 19:34:47'),
(514, 'Jiménez', 'Gutiérrez', 'David', 'david.jimenez@mail.com', '555-7539', 'JIGD360202HDFGTS47', '2036-02-02', 'M', 'JIGD3602021R7', 3, '2024-10-09 19:34:47'),
(515, 'Fuentes', 'Alarcón', 'Iván', 'ivan.fuentes@mail.com', '555-4628', 'FUAI370303HDFLCN48', '2037-03-03', 'M', 'FUAI3703031R8', 3, '2024-10-09 19:34:47'),
(516, 'Bautista', 'Pineda', 'Luisa', 'luisa.bautista@mail.com', '555-9367', 'BAPL380404MDFPND49', '2038-04-04', 'F', 'BAPL3804041R9', 3, '2024-10-09 19:34:47'),
(517, 'Tovar', 'Estrada', 'Enrique', 'enrique.tovar@mail.com', '555-1597', 'TOEE390505HDFEST50', '2039-05-05', 'M', 'TOEE3905051R0', 3, '2024-10-09 19:34:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sistema`
--

CREATE TABLE `usuario_sistema` (
  `id_usuario_sistema` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_sistema`
--

INSERT INTO `usuario_sistema` (`id_usuario_sistema`, `id_usuario`, `id_rol`, `username`, `password`) VALUES
(1, 218, 117, 'user218', 'password218'),
(2, 219, 121, 'user219', 'password219'),
(3, 220, 125, 'user220', 'password220'),
(4, 221, 117, 'user221', 'password221'),
(5, 222, 121, 'user222', 'password222'),
(6, 223, 125, 'user223', 'password223'),
(7, 224, 117, 'user224', 'password224'),
(8, 225, 121, 'user225', 'password225'),
(9, 226, 125, 'user226', 'password226'),
(10, 227, 117, 'user227', 'password227'),
(11, 228, 121, 'user228', 'password228'),
(12, 229, 125, 'user229', 'password229'),
(13, 230, 117, 'user230', 'password230'),
(14, 231, 121, 'user231', 'password231'),
(15, 232, 125, 'user232', 'password232'),
(16, 233, 117, 'user233', 'password233'),
(17, 234, 121, 'user234', 'password234'),
(18, 235, 125, 'user235', 'password235'),
(19, 236, 117, 'user236', 'password236'),
(20, 237, 121, 'user237', 'password237'),
(21, 238, 125, 'user238', 'password238'),
(22, 239, 117, 'user239', 'password239'),
(23, 240, 121, 'user240', 'password240'),
(24, 241, 125, 'user241', 'password241'),
(25, 242, 117, 'user242', 'password242'),
(26, 243, 121, 'user243', 'password243'),
(27, 244, 125, 'user244', 'password244'),
(28, 245, 117, 'user245', 'password245'),
(29, 246, 121, 'user246', 'password246'),
(30, 247, 125, 'user247', 'password247'),
(31, 248, 117, 'user248', 'password248'),
(32, 249, 121, 'user249', 'password249'),
(33, 250, 125, 'user250', 'password250'),
(34, 251, 117, 'user251', 'password251'),
(35, 252, 121, 'user252', 'password252'),
(36, 253, 125, 'user253', 'password253'),
(37, 254, 117, 'user254', 'password254'),
(38, 255, 121, 'user255', 'password255'),
(39, 256, 125, 'user256', 'password256'),
(40, 257, 117, 'user257', 'password257'),
(41, 258, 121, 'user258', 'password258'),
(42, 259, 125, 'user259', 'password259'),
(43, 260, 117, 'user260', 'password260'),
(44, 261, 121, 'user261', 'password261'),
(45, 262, 125, 'user262', 'password262'),
(46, 263, 117, 'user263', 'password263'),
(47, 264, 121, 'user264', 'password264'),
(48, 265, 125, 'user265', 'password265'),
(49, 266, 117, 'user266', 'password266'),
(50, 267, 121, 'user267', 'password267'),
(51, 168, 118, 'user168', 'password168'),
(52, 169, 122, 'user169', 'password169'),
(53, 170, 126, 'user170', 'password170'),
(54, 171, 118, 'user171', 'password171'),
(55, 172, 122, 'user172', 'password172'),
(56, 173, 126, 'user173', 'password173'),
(57, 174, 118, 'user174', 'password174'),
(58, 175, 122, 'user175', 'password175'),
(59, 176, 126, 'user176', 'password176'),
(60, 177, 118, 'user177', 'password177'),
(61, 178, 122, 'user178', 'password178'),
(62, 179, 126, 'user179', 'password179'),
(63, 180, 118, 'user180', 'password180'),
(64, 181, 122, 'user181', 'password181'),
(65, 182, 126, 'user182', 'password182'),
(66, 183, 118, 'user183', 'password183'),
(67, 184, 122, 'user184', 'password184'),
(68, 185, 126, 'user185', 'password185'),
(69, 186, 118, 'user186', 'password186'),
(70, 187, 122, 'user187', 'password187'),
(71, 188, 126, 'user188', 'password188'),
(72, 189, 118, 'user189', 'password189'),
(73, 190, 122, 'user190', 'password190'),
(74, 191, 126, 'user191', 'password191'),
(75, 192, 118, 'user192', 'password192'),
(76, 193, 122, 'user193', 'password193'),
(77, 194, 126, 'user194', 'password194'),
(78, 195, 118, 'user195', 'password195'),
(79, 196, 122, 'user196', 'password196'),
(80, 197, 126, 'user197', 'password197'),
(81, 198, 118, 'user198', 'password198'),
(82, 199, 122, 'user199', 'password199'),
(83, 200, 126, 'user200', 'password200'),
(84, 201, 118, 'user201', 'password201'),
(85, 202, 122, 'user202', 'password202'),
(86, 203, 126, 'user203', 'password203'),
(87, 204, 118, 'user204', 'password204'),
(88, 205, 122, 'user205', 'password205'),
(89, 206, 126, 'user206', 'password206'),
(90, 207, 118, 'user207', 'password207'),
(91, 208, 122, 'user208', 'password208'),
(92, 209, 126, 'user209', 'password209'),
(93, 210, 118, 'user210', 'password210'),
(94, 211, 122, 'user211', 'password211'),
(95, 212, 126, 'user212', 'password212'),
(96, 213, 118, 'user213', 'password213'),
(97, 214, 122, 'user214', 'password214'),
(98, 215, 126, 'user215', 'password215'),
(99, 216, 118, 'user216', 'password216'),
(100, 217, 122, 'user217', 'password217'),
(151, 468, 119, 'user468', 'password468'),
(152, 469, 123, 'user469', 'password469'),
(153, 470, 119, 'user470', 'password470'),
(154, 471, 123, 'user471', 'password471'),
(155, 472, 119, 'user472', 'password472'),
(156, 473, 123, 'user473', 'password473'),
(157, 474, 119, 'user474', 'password474'),
(158, 475, 123, 'user475', 'password475'),
(159, 476, 119, 'user476', 'password476'),
(160, 477, 123, 'user477', 'password477'),
(161, 478, 119, 'user478', 'password478'),
(162, 479, 123, 'user479', 'password479'),
(163, 480, 119, 'user480', 'password480'),
(164, 481, 123, 'user481', 'password481'),
(165, 482, 119, 'user482', 'password482'),
(166, 483, 123, 'user483', 'password483'),
(167, 484, 119, 'user484', 'password484'),
(168, 485, 123, 'user485', 'password485'),
(169, 486, 119, 'user486', 'password486'),
(170, 487, 123, 'user487', 'password487'),
(171, 488, 119, 'user488', 'password488'),
(172, 489, 123, 'user489', 'password489'),
(173, 490, 119, 'user490', 'password490'),
(174, 491, 123, 'user491', 'password491'),
(175, 492, 119, 'user492', 'password492'),
(176, 493, 123, 'user493', 'password493'),
(177, 494, 119, 'user494', 'password494'),
(178, 495, 123, 'user495', 'password495'),
(179, 496, 119, 'user496', 'password496'),
(180, 497, 123, 'user497', 'password497'),
(181, 498, 119, 'user498', 'password498'),
(182, 499, 123, 'user499', 'password499'),
(183, 500, 119, 'user500', 'password500'),
(184, 501, 123, 'user501', 'password501'),
(185, 502, 119, 'user502', 'password502'),
(186, 503, 123, 'user503', 'password503'),
(187, 504, 119, 'user504', 'password504'),
(188, 505, 123, 'user505', 'password505'),
(189, 506, 119, 'user506', 'password506'),
(190, 507, 123, 'user507', 'password507'),
(191, 508, 119, 'user508', 'password508'),
(192, 509, 123, 'user509', 'password509'),
(193, 510, 119, 'user510', 'password510'),
(194, 511, 123, 'user511', 'password511'),
(195, 512, 119, 'user512', 'password512'),
(196, 513, 123, 'user513', 'password513'),
(197, 514, 119, 'user514', 'password514'),
(198, 515, 123, 'user515', 'password515'),
(199, 516, 119, 'user516', 'password516'),
(200, 517, 123, 'user517', 'password517');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`id_administrativo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `asignacion_materias`
--
ALTER TABLE `asignacion_materias`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD PRIMARY KEY (`id_boleta`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_boleta` (`id_boleta`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `tipo_contrato` (`tipo_contrato`),
  ADD KEY `id_administrativo` (`id_administrativo`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  ADD PRIMARY KEY (`id_datos_alumno`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `datos_padre`
--
ALTER TABLE `datos_padre`
  ADD PRIMARY KEY (`id_datos_padre`),
  ADD KEY `id_padre` (`id_padre`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_contrato` (`id_contrato`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`direccion_id`,`id_usuarios`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materias`);

--
-- Indices de la tabla `padres`
--
ALTER TABLE `padres`
  ADD PRIMARY KEY (`id_padre`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_padre` (`id_padre`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`),
  ADD KEY `tipo_rol_id` (`tipo_rol_id`);

--
-- Indices de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_de_rol`
--
ALTER TABLE `tipo_de_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `tipo_usuario` (`tipo_usuario`);

--
-- Indices de la tabla `usuario_sistema`
--
ALTER TABLE `usuario_sistema`
  ADD PRIMARY KEY (`id_usuario_sistema`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `id_administrativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `asignacion_materias`
--
ALTER TABLE `asignacion_materias`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `boletas`
--
ALTER TABLE `boletas`
  MODIFY `id_boleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  MODIFY `id_datos_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `datos_padre`
--
ALTER TABLE `datos_padre`
  MODIFY `id_datos_padre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `padres`
--
ALTER TABLE `padres`
  MODIFY `id_padre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_de_rol`
--
ALTER TABLE `tipo_de_rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT de la tabla `usuario_sistema`
--
ALTER TABLE `usuario_sistema`
  MODIFY `id_usuario_sistema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `asignacion_materias`
--
ALTER TABLE `asignacion_materias`
  ADD CONSTRAINT `asignacion_materias_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`),
  ADD CONSTRAINT `asignacion_materias_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`),
  ADD CONSTRAINT `asignacion_materias_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materias`);

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `asistencia_docentes`
--
ALTER TABLE `asistencia_docentes`
  ADD CONSTRAINT `asistencia_docentes_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`);

--
-- Filtros para la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD CONSTRAINT `boletas_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_boleta`) REFERENCES `boletas` (`id_boleta`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materias`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`tipo_contrato`) REFERENCES `tipo_contrato` (`id`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_administrativo`) REFERENCES `administrativos` (`id_administrativo`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`);

--
-- Filtros para la tabla `datos_alumno`
--
ALTER TABLE `datos_alumno`
  ADD CONSTRAINT `datos_alumno_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `padres` (`id_alumno`);

--
-- Filtros para la tabla `datos_padre`
--
ALTER TABLE `datos_padre`
  ADD CONSTRAINT `datos_padre_ibfk_1` FOREIGN KEY (`id_padre`) REFERENCES `padres` (`id_padre`);

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `datos_personales_ibfk_1` FOREIGN KEY (`id_contrato`) REFERENCES `contrato` (`id_contrato`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `padres`
--
ALTER TABLE `padres`
  ADD CONSTRAINT `padres_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `padres_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`);

--
-- Filtros para la tabla `participacion_eventos`
--
ALTER TABLE `participacion_eventos`
  ADD CONSTRAINT `participacion_eventos_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `participacion_eventos_ibfk_2` FOREIGN KEY (`id_padre`) REFERENCES `padres` (`id_padre`);

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`tipo_rol_id`) REFERENCES `tipo_de_rol` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_de_rol` (`id`);

--
-- Filtros para la tabla `usuario_sistema`
--
ALTER TABLE `usuario_sistema`
  ADD CONSTRAINT `usuario_sistema_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuarios`),
  ADD CONSTRAINT `usuario_sistema_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
