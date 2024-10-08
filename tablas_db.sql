
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
