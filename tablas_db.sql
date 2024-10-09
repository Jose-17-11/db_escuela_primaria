
-- 

CREATE DATABASE escuela_primaria;

USE DATABASE escuela_primaria;

-- Tabla tipo rol -> 
CREATE TABLE tipo_de_rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nivel_rol INT NOT NULL,
    nombre_rol VARCHAR(255) NOT NULL
);

-- Direccion
CREATE TABLE direccion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    numero VARCHAR(10) DEFAULT NULL
);

-- Tabla de usuarios
CREATE TABLE usuarios (
    id_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    apellido_paterno VARCHAR(50) DEFAULT NULL,
    apellido_materno VARCHAR(50) DEFAULT NULL,
    nombre VARCHAR(50) DEFAULT NULL,
    email VARCHAR(100) DEFAULT NULL,
    telefono VARCHAR(18) DEFAULT NULL,
    curp VARCHAR(18) DEFAULT NULL,
    fecha_nacimiento DATE DEFAULT NULL,
    genero ENUM('M', 'F', 'otro') DEFAULT NULL,
    rfc VARCHAR(13) DEFAULT NULL,
    tipo_usuario INT DEFAULT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tipo_usuario) REFERENCES tipo_de_rol(id)
);

-- Tabla de Direcciones
CREATE TABLE direccion (
    direccion_id INT AUTO_INCREMENT,
    id_usuarios INT,
    calle VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    numero VARCHAR(10) DEFAULT NULL,
    PRIMARY KEY (direccion_id, id_usuarios),
    FOREIGN KEY (id_usuarios) REFERENCES usuarios(id_usuarios)
);


-- Rol
CREATE TABLE roles (
    id_roles INT AUTO_INCREMENT PRIMARY KEY,
    tipo_rol_id INT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    FOREIGN KEY (tipo_rol_id) REFERENCES tipo_de_rol(id)
);

-- Usuarios del sistemas
CREATE TABLE usuario_sistema (
    id_usuario_sistema INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_rol INT NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios),
    FOREIGN KEY (id_rol) REFERENCES roles(id_roles)
);

-- Tipo de contrato
CREATE TABLE tipo_contrato (
  id INT PRIMARY KEY AUTO_INCREMENT,   
  nivel INT,                           
  nombre VARCHAR(100)                  
);

-- Administrativos
CREATE TABLE administrativos (
  id_administrativo INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,  -- Clave foránea que depende de usuarios
  puesto VARCHAR(100),
  grado_academico VARCHAR(50),
  numero_cedula VARCHAR(20),
  salario DECIMAL(10, 2),
  nss VARCHAR(15),
  experiencia_laboral TEXT,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios)
);

-- Docentes
CREATE TABLE docentes (
  id_docente INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,  -- Clave foránea que depende de usuarios
  grado_academico VARCHAR(100),
  numero_cedula VARCHAR(50),
  grado_impartido VARCHAR(20),
  rfc VARCHAR(13),
  nss VARCHAR(15),
  fecha_ingreso DATE,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios)
);

-- Asistencia docentes
CREATE TABLE asistencia_docentes (
  id_asistencia INT PRIMARY KEY AUTO_INCREMENT,
  id_docente INT,  
  genero ENUM('presente', 'ausente', 'justificado') DEFAULT NULL,   
  FOREIGN KEY (id_docente) REFERENCES docentes(id_docente)
);

-- Contrato
CREATE TABLE contrato (
  id_contrato INT PRIMARY KEY AUTO_INCREMENT,   
  fecha_contrato DATE,                          
  salario DECIMAL(10, 2),                       
  reglamento TEXT,                              
  numero_contrato VARCHAR(50),                  
  periodo_vacacional VARCHAR(50),               
  tipo_contrato INT,                            
  convenio VARCHAR(100),                        
  id_administrativo INT,                        
  id_docente INT,                               
  FOREIGN KEY (tipo_contrato) REFERENCES tipo_contrato(id),  
  FOREIGN KEY (id_administrativo) REFERENCES administrativos(id_administrativo),  
  FOREIGN KEY (id_docente) REFERENCES docentes(id_docente)  
);

-- Datos personales
CREATE TABLE datos_personales (
  id_persona INT PRIMARY KEY AUTO_INCREMENT,
  id_contrato INT,  
  apellido_paterno VARCHAR(50),
  apellido_materno VARCHAR(50),
  nombre VARCHAR(50),
  nss VARCHAR(50),
  telefono VARCHAR(18),
  direccion TEXT,
  curp VARCHAR(18),
  fecha_nacimiento DATE,
  genero ENUM('M', 'F', 'otro'),
  rfc VARCHAR(13),
  FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato)
);

-- Alumnos
CREATE TABLE alumnos (
  id_alumno INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,  
  matricula VARCHAR(50),
  grupo VARCHAR(10),
  grado VARCHAR(10),
  fecha_ingreso DATE,
  historial_academico TEXT,
  acta_nacimiento TEXT,
  escuela_procedencia VARCHAR(100),
  generacion_escolar VARCHAR(50),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios)
);

-- Datos alumno
CREATE TABLE datos_alumno (
  id_datos_alumno INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT,  
  apellido_paterno VARCHAR(50),
  apellido_materno VARCHAR(50),
  nombre VARCHAR(50),
  FOREIGN KEY (id_alumno) REFERENCES padres(id_alumno)
);

-- Asistencias
CREATE TABLE asistencias (
  id_asistencia INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT,  
  fecha DATE,
  estado ENUM('presente', 'ausente', 'justificado'),
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

-- Boletas
CREATE TABLE boletas (
  id_boleta INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT,  
  ciclo_escolar VARCHAR(50),
  observaciones TEXT,
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

-- Calificaciones
CREATE TABLE calificaciones (
  id_calificacion INT PRIMARY KEY AUTO_INCREMENT,
  id_boleta INT,  
  id_materia INT, 
  calificacion DECIMAL(5, 2), 
  FOREIGN KEY (id_boleta) REFERENCES boletas(id_boleta),
  FOREIGN KEY (id_materia) REFERENCES materias(id_materias)
);

-- Grados
CREATE TABLE grados (
  id_grado INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),       
  grupo VARCHAR(50),         
  aula VARCHAR(50),          
  turno ENUM('matutino', 'vespertino'),
  ciclo_escolar VARCHAR(20) 
);

-- Asignacion materias
CREATE TABLE asignacion_materias (
  id_asignacion INT PRIMARY KEY AUTO_INCREMENT,
  id_docente INT,              
  id_grado INT,                
  id_materia INT,              
  FOREIGN KEY (id_docente) REFERENCES docentes(id_docente),
  FOREIGN KEY (id_grado) REFERENCES grados(id_grado),
  FOREIGN KEY (id_materia) REFERENCES materias(id_materias)
);

-- Materias
CREATE TABLE materias (
  id_materias INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(15),
  descripcion VARCHAR(50)
);

-- Padres
CREATE TABLE padres (
  id_padre INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT,  
  id_alumno INT,   
  parentesco VARCHAR(50),
  alergias TEXT,
  tipo_sangre VARCHAR(5),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuarios),
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

-- Datos padres
CREATE TABLE datos_padre (
  id_datos_padre INT PRIMARY KEY AUTO_INCREMENT,
  id_padre INT,  -- Clave foránea que hace referencia a padres
  apellido_paterno VARCHAR(50),
  apellido_materno VARCHAR(50),
  nombre VARCHAR(50),
  FOREIGN KEY (id_padre) REFERENCES padres(id_padre)
);

-- Eventos
CREATE TABLE eventos (
  id_evento INT PRIMARY KEY AUTO_INCREMENT,
  nombre_evento VARCHAR(100),
  fecha_evento DATE,
  descripcion TEXT,
  organizador VARCHAR(100)
);

-- Participacion eventos
CREATE TABLE participacion_eventos (
  id_participacion INT PRIMARY KEY AUTO_INCREMENT,
  id_evento INT,  
  id_padre INT,   
  tipo_participacion VARCHAR(50),
  FOREIGN KEY (id_evento) REFERENCES eventos(id_evento),
  FOREIGN KEY (id_padre) REFERENCES padres(id_padre)
);




inserccion usuarios:
-- Inserciones para la tabla usuarios
-- Inserciones adicionales para la tabla usuarios (Docentes)
INSERT INTO usuarios (apellido_paterno, apellido_materno, nombre, email, telefono, curp, fecha_nacimiento, genero, rfc, tipo_usuario) VALUES
('Vega', 'Cordero', 'Andrés', 'andres.vega@example.com', '555-0901', 'VECA900901HDFMZN01', '1985-01-01', 'M', 'VECA900901A23', 13),
('Cruz', 'Salinas', 'María', 'maria.cruz@example.com', '555-0902', 'CRUM900902HDFMZN02', '1986-02-02', 'F', 'CRUM900902A45', 13),
('Hernández', 'Pérez', 'José', 'jose.hernandez@example.com', '555-0903', 'HEPJ900903HDFMZN03', '1987-03-03', 'M', 'HEPJ900903A67', 13),
('Martínez', 'Reyes', 'Patricia', 'patricia.martinez@example.com', '555-0904', 'MARO900904HDFMZN04', '1988-04-04', 'F', 'MARO900904A89', 13),
('García', 'Bermúdez', 'Roberto', 'roberto.garcia@example.com', '555-0905', 'GABR900905HDFMZN05', '1989-05-05', 'M', 'GABR900905A90', 13),
('Alvarado', 'Sánchez', 'Lucía', 'lucia.alvarado@example.com', '555-1001', 'ALSL900601HDFMZN01', '1990-01-06', 'F', 'ALSL900601A23', 13),
('López', 'Vásquez', 'Javier', 'javier.lopez@example.com', '555-1002', 'LOVA900602HDFMZN02', '1990-02-07', 'M', 'LOVA900602A45', 13),
('Salas', 'Gutiérrez', 'Fernanda', 'fernanda.salas@example.com', '555-1003', 'SAGF900603HDFMZN03', '1990-03-08', 'F', 'SAGF900603A67', 13),
('Rojas', 'Córdova', 'Luis', 'luis.rojas@example.com', '555-1004', 'ROCL900604HDFMZN04', '1990-04-09', 'M', 'ROCL900604A89', 13),
('Núñez', 'Ramírez', 'Valeria', 'valeria.nunez@example.com', '555-1005', 'NURA900605HDFMZN05', '1990-05-10', 'F', 'NURA900605A90', 13),
('Soto', 'Salazar', 'Alfredo', 'alfredo.soto@example.com', '555-1101', 'SOSO900701HDFMZN01', '1990-01-11', 'M', 'SOSO900701A23', 13),
('Mendoza', 'Jiménez', 'Cristina', 'cristina.mendoza@example.com', '555-1102', 'MEJC900702HDFMZN02', '1990-02-12', 'F', 'MEJC900702A45', 13),
('Téllez', 'Díaz', 'Ricardo', 'ricardo.tellez@example.com', '555-1103', 'TEDR900703HDFMZN03', '1990-03-13', 'M', 'TEDR900703A67', 13),
('Quintero', 'Ceballos', 'Inés', 'ines.quintero@example.com', '555-1104', 'QUIN900704HDFMZN04', '1990-04-14', 'F', 'QUIN900704A89', 13),
('Zamora', 'Flores', 'Pedro', 'pedro.zamora@example.com', '555-1105', 'ZAFP900705HDFMZN05', '1990-05-15', 'M', 'ZAFP900705A90', 13),
('Hernández', 'Cruz', 'Esteban', 'esteban.hernandez@example.com', '555-1201', 'HECE900801HDFMZN01', '1990-01-16', 'M', 'HECE900801A23', 13),
('Pérez', 'Salazar', 'Silvia', 'silvia.perez@example.com', '555-1202', 'PESI900802HDFMZN02', '1990-02-17', 'F', 'PESI900802A45', 13),
('Montoya', 'Sánchez', 'Antonio', 'antonio.montoya@example.com', '555-1203', 'MOSA900803HDFMZN03', '1990-03-18', 'M', 'MOSA900803A67', 13),
('Moreno', 'González', 'Patricia', 'patricia.moreno@example.com', '555-1204', 'MOGP900804HDFMZN04', '1990-04-19', 'F', 'MOGP900804A89', 13),
('Castillo', 'Martín', 'Gabriel', 'gabriel.castillo@example.com', '555-1205', 'CAGM900805HDFMZN05', '1990-05-20', 'M', 'CAGM900805A90', 13),
('Ceballos', 'Ibarra', 'Julieta', 'julieta.ceballos@example.com', '555-1301', 'CEJU900901HDFMZN01', '1990-01-21', 'F', 'CEJU900901A23', 13),
('Cruz', 'Sotelo', 'Emilio', 'emilio.cruz@example.com', '555-1302', 'CRSE900902HDFMZN02', '1990-02-22', 'M', 'CRSE900902A45', 13),
('Salinas', 'Sierra', 'Marina', 'marina.salinas@example.com', '555-1303', 'SASM900903HDFMZN03', '1990-03-23', 'F', 'SASM900903A67', 13),
('Galindo', 'Rivas', 'Francisco', 'francisco.galindo@example.com', '555-1304', 'GARF900904HDFMZN04', '1990-04-24', 'M', 'GARF900904A89', 13),
('Fernández', 'Cabrera', 'Sofía', 'sofia.fernandez@example.com', '555-1305', 'FECA900905HDFMZN05', '1990-05-25', 'F', 'FECA900905A90', 13),
('Márquez', 'Alba', 'Héctor', 'hector.marquuez@example.com', '555-1401', 'MAHE900601HDFMZN01', '1990-01-26', 'M', 'MAHE900601A23', 13),
('Ponce', 'Salas', 'Adriana', 'adriana.ponce@example.com', '555-1402', 'POSA900602HDFMZN02', '1990-02-27', 'F', 'POSA900602A45', 13),
('Martínez', 'Fuentes', 'Rafael', 'rafael.martinez@example.com', '555-1403', 'MAFR900603HDFMZN03', '1990-03-28', 'M', 'MAFR900603A67', 13),
('Castañeda', 'Navarro', 'Valeria', 'valeria.castaneda@example.com', '555-1404', 'CANA900604HDFMZN04', '1990-04-29', 'F', 'CANA900604A89', 13),
('Aranda', 'Pérez', 'Saúl', 'saul.aranda@example.com', '555-1405', 'ARPS900605HDFMZN05', '1990-05-30', 'M', 'ARPS900605A90', 13),
('Pérez', 'Jiménez', 'Elena', 'elena.perez@example.com', '555-1501', 'PEJE900901HDFMZN01', '1981-07-05', 'F', 'PEJE900901A23', 13),
('Rodríguez', 'López', 'Javier', 'javier.rodriguez@example.com', '555-1502', 'ROLJ900902HDFMZN02', '1982-08-06', 'M', 'ROLJ900902A45', 13),
('García', 'López', 'Sofía', 'sofia.garcia@example.com', '555-1503', 'GALO900903HDFMZN03', '1983-09-07', 'F', 'GALO900903A67', 13),
('Morales', 'Vargas', 'Manuel', 'manuel.morales@example.com', '555-1504', 'MOVM900904HDFMZN04', '1984-10-08', 'M', 'MOVM900904A89', 13),
('Martínez', 'Aguirre', 'Carolina', 'carolina.martinez@example.com', '555-1505', 'MAAC900905HDFMZN05', '1985-11-09', 'F', 'MAAC900905A90', 13),
('Torres', 'Camacho', 'Diego', 'diego.torres@example.com', '555-1601', 'TOCD900901HDFMZN01', '1986-12-10', 'M', 'TOCD900901A23', 13),
('Fernández', 'Herrera', 'Mariana', 'mariana.fernandez@example.com', '555-1602', 'FEHM900902HDFMZN02', '1987-01-11', 'F', 'FEHM900902A45', 13),
('Ríos', 'Sánchez', 'Esteban', 'esteban.rios@example.com', '555-1603', 'RIES900903HDFMZN03', '1988-02-12', 'M', 'RIES900903A67', 13),
('Medina', 'Ramírez', 'Gabriela', 'gabriela.medina@example.com', '555-1604', 'MERG900904HDFMZN04', '1989-03-13', 'F', 'MERG900904A89', 13),
('Salinas', 'Gómez', 'Carlos', 'carlos.salinas@example.com', '555-1605', 'SAGC900905HDFMZN05', '1990-04-14', 'M', 'SAGC900905A90', 13);


INSERT INTO docentes (id_usuario, grado_academico, numero_cedula, grado_impartido, rfc, nss, fecha_ingreso) VALUES
(157, 'Licenciatura', '1234567890', 'Primero', 'PEJE900901A23', '123-45-6789', '2024-01-01'),
(158, 'Licenciatura', '1234567891', 'Segundo', 'ROLJ900902A45', '123-45-6788', '2024-01-01'),
(159, 'Licenciatura', '1234567892', 'Tercero', 'GALO900903A67', '123-45-6787', '2024-01-01'),
(160, 'Licenciatura', '1234567893', 'Cuarto', 'MOVM900904A89', '123-45-6786', '2024-01-01'),
(161, 'Maestría', '1234567894', 'Quinto', 'MAAC900905A90', '123-45-6785', '2024-01-01'),
(162, 'Licenciatura', '1234567895', 'Sexto', 'TOCD900901A23', '123-45-6784', '2024-01-01'),
(163, 'Maestría', '1234567896', 'Séptimo', 'FEHM900902A45', '123-45-6783', '2024-01-01'),
(164, 'Licenciatura', '1234567897', 'Octavo', 'RIES900903A67', '123-45-6782', '2024-01-01'),
(165, 'Licenciatura', '1234567898', 'Noveno', 'MERG900904A89', '123-45-6781', '2024-01-01'),
(166, 'Licenciatura', '1234567899', 'Décimo', 'SAGC900905A90', '123-45-6780', '2024-01-01');

-- 200 insercciones a direcciones
INSERT INTO direccion (id_usuarios, calle, ciudad, estado, codigo_postal, numero) VALUES
(168, 'Calle Ejemplo 1', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '101'),
(169, 'Calle Ejemplo 2', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '102'),
(170, 'Calle Ejemplo 3', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '103'),
(171, 'Calle Ejemplo 4', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '104'),
(172, 'Calle Ejemplo 5', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '105'),
(173, 'Calle Ejemplo 6', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '106'),
(174, 'Calle Ejemplo 7', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '107'),
(175, 'Calle Ejemplo 8', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '108'),
(176, 'Calle Ejemplo 9', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '109'),
(177, 'Calle Ejemplo 10', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '110'),
(178, 'Calle Ejemplo 11', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '111'),
(179, 'Calle Ejemplo 12', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '112'),
(180, 'Calle Ejemplo 13', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '113'),
(181, 'Calle Ejemplo 14', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '114'),
(182, 'Calle Ejemplo 15', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '115'),
(183, 'Calle Ejemplo 16', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '116'),
(184, 'Calle Ejemplo 17', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '117'),
(185, 'Calle Ejemplo 18', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '118'),
(186, 'Calle Ejemplo 19', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '119'),
(187, 'Calle Ejemplo 20', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '120'),
(188, 'Calle Ejemplo 21', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '121'),
(189, 'Calle Ejemplo 22', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '122'),
(190, 'Calle Ejemplo 23', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '123'),
(191, 'Calle Ejemplo 24', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '124'),
(192, 'Calle Ejemplo 25', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '125'),
(193, 'Calle Ejemplo 26', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '126'),
(194, 'Calle Ejemplo 27', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '127'),
(195, 'Calle Ejemplo 28', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '128'),
(196, 'Calle Ejemplo 29', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '129'),
(197, 'Calle Ejemplo 30', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '130'),
(198, 'Calle Ejemplo 31', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '131'),
(199, 'Calle Ejemplo 32', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '132'),
(200, 'Calle Ejemplo 33', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '133'),
(201, 'Calle Ejemplo 34', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '134'),
(202, 'Calle Ejemplo 35', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '135'),
(203, 'Calle Ejemplo 36', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '136'),
(204, 'Calle Ejemplo 37', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '137'),
(205, 'Calle Ejemplo 38', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '138'),
(206, 'Calle Ejemplo 39', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '139'),
(207, 'Calle Ejemplo 40', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '140'),
(208, 'Calle Ejemplo 41', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '141'),
(209, 'Calle Ejemplo 42', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '142'),
(210, 'Calle Ejemplo 43', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '143'),
(211, 'Calle Ejemplo 44', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '144'),
(212, 'Calle Ejemplo 45', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '145'),
(213, 'Calle Ejemplo 46', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '146'),
(214, 'Calle Ejemplo 47', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '147'),
(215, 'Calle Ejemplo 48', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '148'),
(216, 'Calle Ejemplo 49', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '149'),
(217, 'Calle Ejemplo 50', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '150'),
(218, 'Calle Ejemplo 51', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '151'),
(219, 'Calle Ejemplo 52', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '152'),
(220, 'Calle Ejemplo 53', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '153'),
(221, 'Calle Ejemplo 54', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '154'),
(222, 'Calle Ejemplo 55', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '155'),
(223, 'Calle Ejemplo 56', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '156'),
(224, 'Calle Ejemplo 57', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '157'),
(225, 'Calle Ejemplo 58', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '158'),
(226, 'Calle Ejemplo 59', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '159'),
(227, 'Calle Ejemplo 60', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '160'),
(228, 'Calle Ejemplo 61', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '161'),
(229, 'Calle Ejemplo 62', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '162'),
(230, 'Calle Ejemplo 63', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '163'),
(231, 'Calle Ejemplo 64', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '164'),
(232, 'Calle Ejemplo 65', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '165'),
(233, 'Calle Ejemplo 66', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '166'),
(234, 'Calle Ejemplo 67', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '167'),
(235, 'Calle Ejemplo 68', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '168'),
(236, 'Calle Ejemplo 69', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '169'),
(237, 'Calle Ejemplo 70', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '170'),
(238, 'Calle Ejemplo 71', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '171'),
(239, 'Calle Ejemplo 72', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '172'),
(240, 'Calle Ejemplo 73', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '173'),
(241, 'Calle Ejemplo 74', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '174'),
(242, 'Calle Ejemplo 75', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '175'),
(243, 'Calle Ejemplo 76', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '176'),
(244, 'Calle Ejemplo 77', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '177'),
(245, 'Calle Ejemplo 78', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '178'),
(246, 'Calle Ejemplo 79', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '179'),
(247, 'Calle Ejemplo 80', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '180'),
(248, 'Calle Ejemplo 81', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '181'),
(249, 'Calle Ejemplo 82', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '182'),
(250, 'Calle Ejemplo 83', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '183'),
(251, 'Calle Ejemplo 84', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '184'),
(252, 'Calle Ejemplo 85', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '185'),
(253, 'Calle Ejemplo 86', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '186'),
(254, 'Calle Ejemplo 87', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '187'),
(255, 'Calle Ejemplo 88', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '188'),
(256, 'Calle Ejemplo 89', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '189'),
(257, 'Calle Ejemplo 90', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '190'),
(258, 'Calle Ejemplo 91', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '191'),
(259, 'Calle Ejemplo 92', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '192'),
(260, 'Calle Ejemplo 93', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '193'),
(261, 'Calle Ejemplo 94', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '194'),
(262, 'Calle Ejemplo 95', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '195'),
(263, 'Calle Ejemplo 96', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '196'),
(264, 'Calle Ejemplo 97', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '197'),
(265, 'Calle Ejemplo 98', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '198'),
(266, 'Calle Ejemplo 99', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '199'),
(267, 'Calle Ejemplo 100', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '200'),
(268, 'Calle Ejemplo 101', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '201'),
(269, 'Calle Ejemplo 102', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '202'),
(270, 'Calle Ejemplo 103', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '203'),
(271, 'Calle Ejemplo 104', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '204'),
(272, 'Calle Ejemplo 105', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '205'),
(273, 'Calle Ejemplo 106', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '206'),
(274, 'Calle Ejemplo 107', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '207'),
(275, 'Calle Ejemplo 108', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '208'),
(276, 'Calle Ejemplo 109', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '209'),
(277, 'Calle Ejemplo 110', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '210'),
(278, 'Calle Ejemplo 111', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '211'),
(279, 'Calle Ejemplo 112', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '212'),
(280, 'Calle Ejemplo 113', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '213'),
(281, 'Calle Ejemplo 114', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '214'),
(282, 'Calle Ejemplo 115', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '215'),
(283, 'Calle Ejemplo 116', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '216'),
(284, 'Calle Ejemplo 117', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '217'),
(285, 'Calle Ejemplo 118', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '218'),
(286, 'Calle Ejemplo 119', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '219'),
(287, 'Calle Ejemplo 120', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '220'),
(288, 'Calle Ejemplo 121', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '221'),
(289, 'Calle Ejemplo 122', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '222'),
(290, 'Calle Ejemplo 123', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '223'),
(291, 'Calle Ejemplo 124', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '224'),
(292, 'Calle Ejemplo 125', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '225'),
(293, 'Calle Ejemplo 126', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '226'),
(294, 'Calle Ejemplo 127', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '227'),
(295, 'Calle Ejemplo 128', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '228'),
(296, 'Calle Ejemplo 129', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '229'),
(297, 'Calle Ejemplo 130', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '230'),
(298, 'Calle Ejemplo 131', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '231'),
(299, 'Calle Ejemplo 132', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '232'),
(300, 'Calle Ejemplo 133', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '233'),
(301, 'Calle Ejemplo 134', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '234'),
(302, 'Calle Ejemplo 135', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '235'),
(303, 'Calle Ejemplo 136', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '236'),
(304, 'Calle Ejemplo 137', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '237'),
(305, 'Calle Ejemplo 138', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '238'),
(306, 'Calle Ejemplo 139', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '239'),
(307, 'Calle Ejemplo 140', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '240'),
(308, 'Calle Ejemplo 141', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '241'),
(309, 'Calle Ejemplo 142', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '242'),
(310, 'Calle Ejemplo 143', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '243'),
(311, 'Calle Ejemplo 144', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '244'),
(312, 'Calle Ejemplo 145', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '245'),
(313, 'Calle Ejemplo 146', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '246'),
(314, 'Calle Ejemplo 147', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '247'),
(315, 'Calle Ejemplo 148', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '248'),
(316, 'Calle Ejemplo 149', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '249'),
(317, 'Calle Ejemplo 150', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '250'),
(468, 'Calle Ejemplo 151', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '251'),
(469, 'Calle Ejemplo 152', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '252'),
(470, 'Calle Ejemplo 153', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '253'),
(471, 'Calle Ejemplo 154', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '254'),
(472, 'Calle Ejemplo 155', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '255'),
(473, 'Calle Ejemplo 156', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '256'),
(474, 'Calle Ejemplo 157', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '257'),
(475, 'Calle Ejemplo 158', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '258'),
(476, 'Calle Ejemplo 159', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '259'),
(477, 'Calle Ejemplo 160', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '260'),
(478, 'Calle Ejemplo 161', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '261'),
(479, 'Calle Ejemplo 162', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '262'),
(480, 'Calle Ejemplo 163', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '263'),
(481, 'Calle Ejemplo 164', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '264'),
(482, 'Calle Ejemplo 165', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '265'),
(483, 'Calle Ejemplo 166', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '266'),
(484, 'Calle Ejemplo 167', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '267'),
(485, 'Calle Ejemplo 168', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '268'),
(486, 'Calle Ejemplo 169', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '269'),
(487, 'Calle Ejemplo 170', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '270'),
(488, 'Calle Ejemplo 171', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '271'),
(489, 'Calle Ejemplo 172', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '272'),
(490, 'Calle Ejemplo 173', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '273'),
(491, 'Calle Ejemplo 174', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '274'),
(492, 'Calle Ejemplo 175', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '275'),
(493, 'Calle Ejemplo 176', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '276'),
(494, 'Calle Ejemplo 177', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '277'),
(495, 'Calle Ejemplo 178', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '278'),
(496, 'Calle Ejemplo 179', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '279'),
(497, 'Calle Ejemplo 180', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '280'),
(498, 'Calle Ejemplo 181', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '281'),
(499, 'Calle Ejemplo 182', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '282'),
(500, 'Calle Ejemplo 183', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '283'),
(501, 'Calle Ejemplo 184', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '284'),
(502, 'Calle Ejemplo 185', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '285'),
(503, 'Calle Ejemplo 186', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '286'),
(504, 'Calle Ejemplo 187', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '287'),
(505, 'Calle Ejemplo 188', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '288'),
(506, 'Calle Ejemplo 189', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '289'),
(507, 'Calle Ejemplo 190', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '290'),
(508, 'Calle Ejemplo 191', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '291'),
(509, 'Calle Ejemplo 192', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '292'),
(510, 'Calle Ejemplo 193', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '293'),
(511, 'Calle Ejemplo 194', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '294'),
(512, 'Calle Ejemplo 195', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '295'),
(513, 'Calle Ejemplo 196', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '296'),
(514, 'Calle Ejemplo 197', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '297'),
(515, 'Calle Ejemplo 198', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '298'),
(516, 'Calle Ejemplo 199', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '299'),
(517, 'Calle Ejemplo 200', 'Ciudad Ejemplo', 'Estado Ejemplo', '12345', '300');
