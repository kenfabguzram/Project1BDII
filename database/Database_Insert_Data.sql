-- Agregar Escuelas
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Ciencias de la Computación');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Matemáticas');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Ciencias Sociales');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Ciencias Naturales');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Física');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Periodismo');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Administración de Empresas');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Ingeniería Mecánica');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Arquitectura');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Bellas Artes');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Psicología');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Historia');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Idiomas');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Enfermería');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Educación');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Derecho');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Economía');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Química');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Medicina');
  INSERT INTO Escuelas (Nombre) VALUES ('Escuela de Comunicación');
GO

-- Agregar Profesores
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (101, 1, 'Juan Pérez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (102, 2, 'María Rodríguez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (103, 3, 'Pedro Hernández');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (104, 4, 'Ana Morales');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (105, 5, 'Carlos Sánchez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (106, 6, 'Laura Jiménez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (107, 7, 'Ricardo González');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (108, 8, 'Paulina Castro');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (109, 9, 'José Ramírez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (110, 10, 'Fernanda Castillo');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (111, 1, 'Cristina Gómez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (112, 2, 'Arturo Álvarez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (113, 3, 'Mónica Aguilar');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (114, 4, 'Roberto Flores');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (115, 5, 'Alejandra Torres');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (116, 6, 'Jorge Fernández');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (117, 7, 'Marcela Muñoz');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (118, 8, 'David Rodríguez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (119, 9, 'Diana García');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (120, 10, 'Andrés Castro');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (121, 1, 'Sofía Medina');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (122, 2, 'Pablo García');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (123, 3, 'Carmen López');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (124, 4, 'Rodrigo Valenzuela');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (125, 5, 'Liliana Ortiz');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (126, 6, 'Mario Solís');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (127, 7, 'Laura Torres');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (128, 8, 'Alejandro León');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (129, 9, 'Lucía Álvarez');
  INSERT INTO Profesores (Id, IdEscuela, Nombre) VALUES (130, 10, 'David Torres');
GO

-- Agregar Tipos de curso
INSERT INTO Tipos (Nombre) VALUES ('Virtual');
INSERT INTO Tipos (Nombre) VALUES ('Presencial');
INSERT INTO Tipos (Nombre) VALUES ('Semi-virtual');
GO

--Agregar Cursos
INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 6, 'Comunicación Social y Cultura', 4, 5, 'Este curso explora la relación entre los medios de comunicación y la cultura.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 3, 'Álgebra Lineal', 5, 6, 'Este curso explora los conceptos básicos de álgebra lineal y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 4, 'Química Inorgánica', 3, 4, 'Este curso se enfoca en el estudio de la estructura y propiedades de los compuestos químicos inorgánicos.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 2, 'Cálculo I', 4, 5, 'Este curso explora los conceptos básicos de cálculo diferencial e integral y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 5, 'Derecho Internacional', 3, 4, 'Este curso se enfoca en el estudio de las leyes y normas internacionales que rigen las relaciones entre los países.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 1, 'Física General I', 5, 6, 'Este curso explora los conceptos básicos de mecánica clásica y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 3, 'Teoría Política', 4, 5, 'Este curso se enfoca en el estudio de las teorías políticas que han influido en la historia del pensamiento político occidental.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 2, 'Física General II', 5, 6, 'Este curso explora los conceptos básicos de electricidad y magnetismo y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 5, 'Cálculo III', 4, 5, 'Este curso explora los conceptos avanzados de cálculo diferencial e integral y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 1, 'Ciencia Política', 4, 5, 'Este curso se enfoca en el estudio de los sistemas políticos y las estructuras de poder en las sociedades humanas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 6, 'Biología Celular', 4, 5, 'Este curso se enfoca en el estudio de las células y sus componentes, así como en sus funciones y relaciones con otros organismos.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 2, 'Cálculo II', 4, 5, 'Este curso explora los conceptos avanzados de cálculo diferencial e integral y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 4, 'Psicología Social', 3, 4, 'Este curso se enfoca en el estudio de las relaciones sociales entre los individuos y su impacto en la percepción, el pensamiento y el comportamiento.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 3, 'Física General III', 5, 6, 'Este curso explora los conceptos avanzados de física y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 1, 'Cálculo IV', 4, 5, 'Este curso explora los conceptos avanzados de cálculo diferencial e integral y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 5, 'Derecho Laboral', 3, 4, 'Este curso se enfoca en el estudio de las leyes y normas relacionadas con el trabajo y las relaciones laborales.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 2, 'Óptica y Ondas', 4, 5, 'Este curso explora los conceptos básicos de óptica y ondas y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 3, 'Filosofía Política', 4, 5, 'Este curso se enfoca en el estudio de las teorías filosóficas relacionadas con la política y las estructuras de poder en las sociedades humanas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 6, 'Estadística I', 4, 5, 'Este curso explora los conceptos básicos de estadística y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 2, 'Teoría de la Computación', 4, 5, 'Este curso se enfoca en el estudio de los fundamentos teóricos de la informática y la computación.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (1, 4, 'Cálculo Diferencial', 3, 4, 'Este curso explora los conceptos básicos de cálculo diferencial y su aplicación en la resolución de problemas.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (2, 5, 'Mecánica Cuántica', 5, 6, 'Este curso se enfoca en el estudio de la mecánica cuántica y sus aplicaciones en la física moderna.');
  INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
  VALUES (3, 6, 'Periodismo Investigativo', 3, 4, 'Este curso se enfoca en el estudio y la práctica del periodismo investigativo.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (1, 3, 'Cálculo Integral', 3, 4, 'Este curso explora los conceptos básicos de cálculo integral y su aplicación en la resolución de problemas.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (2, 2, 'Física Moderna', 5, 6, 'Este curso se enfoca en el estudio de la física moderna y sus aplicaciones en la tecnología actual.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (3, 1, 'Política Comparada', 4, 5, 'Este curso se enfoca en el estudio comparado de los sistemas políticos y las estructuras de poder en las sociedades humanas.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (1, 5, 'Cálculo Vectorial', 4, 5, 'Este curso explora los conceptos avanzados de cálculo vectorial y su aplicación en la resolución de problemas.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (2, 4, 'Química Orgánica', 3, 4, 'Este curso se enfoca en el estudio de los compuestos químicos orgánicos y sus propiedades y reacciones.');
    INSERT INTO Cursos (IdTipo, IdEscuela, Nombre, Creditos, HorasPorSemana, Descripcion)
    VALUES (3, 3, 'Ética y Política', 4, 5, 'Este curso se enfoca en el estudio de las teorías éticas y su relación con la política y las estructuras de poder en las sociedades humanas.');
GO

-- Agregar Estados de plan
INSERT INTO EstadosPlan (Nombre) VALUES ('Creacion');
INSERT INTO EstadosPlan (Nombre) VALUES ('Activo');
INSERT INTO EstadosPlan (Nombre) VALUES ('Cerrado');
GO

-- Agregar Carreras
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (1, 'Ingeniería en Sistemas', 'Carrera de ingeniería en sistemas de computación');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (1, 'Ingeniería Electrónica', 'Carrera de ingeniería electrónica');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (2, 'Licenciatura en Administración', 'Carrera de licenciatura en administración de empresas');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (2, 'Licenciatura en Negocios Internacionales', 'Carrera de licenciatura en negocios internacionales');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (3, 'Licenciatura en Derecho', 'Carrera de licenciatura en derecho');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (3, 'Licenciatura en Criminología', 'Carrera de licenciatura en criminología');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (4, 'Licenciatura en Contaduría Pública', 'Carrera de licenciatura en contaduría pública');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (4, 'Licenciatura en Finanzas', 'Carrera de licenciatura en finanzas');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (5, 'Licenciatura en Psicología', 'Carrera de licenciatura en psicología');
  INSERT INTO Carreras (IdEscuela, Nombre, Descripcion) VALUES (5, 'Licenciatura en Educación', 'Carrera de licenciatura en educación');
GO

-- Agregar algunos planes de estudio para cada carrera
INSERT INTO Planes (IdEstadoPlan, IdCarrera, Numero, FechaCreacion, FechaActivacion, FechaFinalizacion)
VALUES
  (1, 1, 2, '2022-02-10', '2022-03-01', '2022-07-30'),
  (2, 2, 2, '2022-02-11', '2022-03-01', '2022-08-30'),
  (1, 3, 3, '2022-02-12', '2022-03-01', '2022-09-30'),
  (2, 4, 3, '2022-02-13', '2022-03-01', '2022-10-30'),
  (1, 5, 4, '2022-02-14', '2022-03-01', '2023-01-30'),
  (2, 6, 4, '2022-02-15', '2022-03-01', '2023-02-28'),
  (1, 7, 5, '2022-02-16', '2022-03-01', '2023-04-30'),
  (2, 8, 5, '2022-02-17', '2022-03-01', '2023-05-30'),
  (1, 9, 6, '2022-02-18', '2022-03-01', '2023-06-30'),
  (2, 10, 6, '2022-02-19', '2022-03-01', '2023-07-30'),
  (1, 6, 7, '2022-02-20', '2022-03-01', '2023-08-30'),
  (2, 6, 8, '2022-02-21', '2022-03-01', '2023-09-30'),
  (1, 7, 9, '2022-02-22', '2022-03-01', '2023-10-30'),
  (2, 7, 10, '2022-02-23', '2022-03-01', '2023-11-30'),
  (1, 8, 9, '2022-02-24', '2022-03-01', '2024-01-30'),
  (2, 8, 10, '2022-02-25', '2022-03-01', '2024-02-28'),
  (1, 9, 11, '2022-02-26', '2022-03-01', '2024-04-30'),
  (2, 9, 12, '2022-02-27', '2022-03-01', '2024-05-30'),
  (1, 10, 11, '2022-02-28', '2022-03-01', '2024-07-30'),
  (2, 10, 12, '2022-03-01', '2022-03-01', '2024-08-30'),
  (1, 1, 5, '2022-03-02', '2022-03-15', '2022-12-30'),
  (2, 2, 5, '2022-03-03', '2022-03-15', '2023-01-30'),
  (1, 3, 7, '2022-03-04', '2022-03-15', '2023-02-28'),
  (2, 4, 7, '2022-03-05', '2022-03-15', '2023-03-30'),
  (1, 5, 9, '2022-03-06', '2022-03-15', '2023-05-30'),
  (2, 6, 9, '2022-03-07', '2022-03-15', '2023-06-30'),
  (1, 7, 11, '2022-03-08', '2022-03-15', '2023-08-30'),
  (2, 8, 11, '2022-03-09', '2022-03-15', '2023-09-30'),
  (1, 9, 13, '2022-03-10', '2022-03-15', '2023-11-30'),
  (2, 10, 13, '2022-03-11', '2022-03-15', '2023-12-30');
GO

-- Agregar Cursos a los planes
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (1, 4);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (2, 7);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (3, 3);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (4, 1);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (5, 2);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (6, 5);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (7, 9);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (8, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (9, 8);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (10, 6);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (11, 6);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (12, 9);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (13, 9);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (14, 9);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (15, 9);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (16, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (17, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (18, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (19, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan)
  VALUES (20, 10);
  INSERT INTO PlanesCursos (IdCurso, IdPlan) VALUES(1,1);
  INSERT INTO PlanesCursos (IdCurso, IdPlan) VALUES(4,2);
  INSERT INTO PlanesCursos (IdCurso, IdPlan) VALUES(5,5);
  INSERT INTO PlanesCursos (IdCurso, IdPlan) VALUES(1,1);
GO
-- Agregar estudiantes
INSERT INTO Estudiantes (Id, Carne, Contrasena, Nombre, Apellido1, Apellido2, IdPlan) 
VALUES 
  (211, '202200011', 'contraseña123', 'Luis', 'Fernández', 'González', 6),
  (212, '202200012', 'contraseña123', 'Valentina', 'Castillo', 'Ramírez', 6),
  (213, '202200013', 'contraseña123', 'Roberto', 'Gutiérrez', 'Méndez', 7),
  (214, '202200014', 'contraseña123', 'Ana', 'Ramírez', 'Flores', 7),
  (215, '202200015', 'contraseña123', 'María', 'Santos', 'Rojas', 8),
  (216, '202200016', 'contraseña123', 'Miguel', 'Hernández', 'Gómez', 8),
  (217, '202200017', 'contraseña123', 'Sofía', 'López', 'Rodríguez', 9),
  (218, '202200018', 'contraseña123', 'Diego', 'García', 'Hernández', 9),
  (219, '202200019', 'contraseña123', 'Alejandra', 'Martínez', 'Castro', 10),
  (220, '202200020', 'contraseña123', 'Carlos', 'Sánchez', 'Gutiérrez', 10),
  (221, '202200021', 'contraseña123', 'Laura', 'Fernández', 'González', 11),
  (222, '202200022', 'contraseña123', 'Jorge', 'Castillo', 'Ramírez', 11),
  (223, '202200023', 'contraseña123', 'Carolina', 'Gutiérrez', 'Méndez', 12),
  (224, '202200024', 'contraseña123', 'Arturo', 'Ramírez', 'Flores', 12),
  (225, '202200025', 'contraseña123', 'Elena', 'Santos', 'Rojas', 13),
  (226, '202200026', 'contraseña123', 'Pablo', 'Hernández', 'Gómez', 13),
  (227, '202200027', 'contraseña123', 'Lucía', 'López', 'Rodríguez', 14),
  (228, '202200028', 'contraseña123', 'Gabriel', 'García', 'Hernández', 14),
  (229, '202200029', 'contraseña123', 'Marcela', 'Martínez', 'Castro', 15),
  (230, '202200030', 'contraseña123', 'Julián', 'Sánchez', 'Gutiérrez', 15),
  (231, '202200031', 'contraseña123', 'Isabella', 'Fernández', 'González', 16),
  (232, '202200032', 'contraseña123', 'Mateo', 'Castillo', 'Ramírez', 16),
  (233, '202200033', 'contraseña123', 'Lucas', 'Gutiérrez', 'Méndez', 17),
  (234, '202200034', 'contraseña123', 'Valeria', 'Ramírez', 'Flores', 17),
  (235, '202200035', 'contraseña123', 'Camila', 'Santos', 'Rojas', 18),
  (236, '202200036', 'contraseña123', 'Emiliano', 'Hernández', 'Gómez', 18),
  (237, '202200037', 'contraseña123', 'Marina', 'López', 'Rodríguez', 19),
  (238, '202200038', 'contraseña123', 'Samuel', 'García', 'Hernández', 19),
  (239, '202200039', 'contraseña123', 'Renata', 'Martínez', 'Castro', 20),
  (240, '202200040', 'contraseña123', 'Santiago', 'Sánchez', 'Gutiérrez', 20),
  (241, '202200041', 'contraseña123', 'Julia', 'Fernández', 'González', 21),
  (242, '202200042', 'contraseña123', 'Simón', 'Castillo', 'Ramírez', 21),
  (243, '202200043', 'contraseña123', 'Daniel', 'Gutiérrez', 'Méndez', 22),
  (244, '202200044', 'contraseña123', 'Florencia', 'Ramírez', 'Flores', 22),
  (245, '202200045', 'contraseña123', 'Agustín', 'Santos', 'Rojas', 23),
  (246, '202200046', 'contraseña123', 'Catalina', 'Hernández', 'Gómez', 23),
  (247, '202200047', 'contraseña123', 'Esteban', 'López', 'Rodríguez', 24),
  (248, '202200048', 'contraseña123', 'Jimena', 'García', 'Hernández', 24),
  (249, '202200049', 'contraseña123', 'David', 'Martínez', 'Castro', 25),
  (250, '202200050', 'contraseña123', 'Emma', 'Sánchez', 'Gutiérrez', 25);
GO

--Insertar tipos de archivos
INSERT INTO TipoArchivo (Nombre)
VALUES
  ('PDF'),
  ('DOC'),
  ('TXT'),
  ('XLS'),
  ('PPT'),
  ('JPG'),
  ('PNG'),
  ('MP3'),
  ('MP4'),
  ('AVI'),
  ('ZIP'),
  ('RAR'),
  ('GIF'),
  ('BMP'),
  ('TIFF'),
  ('ODT');
GO

-- Insertar horarios
INSERT INTO Horarios (Dia,Hora,Horas)
VALUES
  ('L',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('K',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('M',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('J',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('V',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('S',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('D',CONVERT(TIME(7), '07:30:00.0000000'),2),
  ('L',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('K',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('M',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('J',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('V',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('S',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('D',CONVERT(TIME(7), '07:30:00.0000000'),4),
  ('L',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('K',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('M',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('J',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('V',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('S',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('D',CONVERT(TIME(7), '09:30:00.0000000'),2),
  ('L',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('K',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('M',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('J',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('V',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('S',CONVERT(TIME(7), '13:00:00.0000000'),2),
  ('D',CONVERT(TIME(7), '13:00:00.0000000'),2);
GO

-- Insertar Asistentes de Profesores
INSERT INTO AsistentesProfesores (Id, IdProfesor, IdEstudiante)
VALUES
  (1,101,'KMOu688NidcytZlyv5U45AMfPdr1'),
  (2,102,'kv9qrKzXJNfkILoXeTy5omTHrqz1'),
  (3,103,'uW7lrtgzktMoPwM0K9KW8byAsbT2');
GO

-- Insertar Estados de Periodos
INSERT INTO EstadosPeriodo (Nombre)
VALUES
  ('Creado'),
  ('Actual'),--Cambiado en proceso por actual por temas de tamano
  ('Finalizado');
GO

-- Insertar Evaluaciones de cursos
INSERT INTO EvaluacionCurso (IdCurso, Nota)
VALUES
  (1,80.0),
  (2,77.0),
  (3,93.0),
  (4,61.0),
  (5,89.0),
  (6,52.0),
  (7,96.0),
  (8,45.0),
  (9,86.0),
  (10,77.0),
  (11,65.0),
  (12,72.0),
  (13,81.0),
  (14,98.0),
  (15,87.0),
  (16,40.0),
  (17,93.0),
  (18,55.0),
  (19,61.0),
  (20,87.0),
  (21,71.0),
  (22,90.0),
  (23,78.0),
  (24,69.0),
  (25,83.0),
  (26,92.0),
  (27,76.0),
  (28,84.0),
  (29,62.0);
GO

-- Insertar Priodos lectivos
INSERT INTO PeriodosLectivos (IdTipo, IdEstadoPeriodo, Inicio, Final, NombreAmigable)
VALUES
  (1,3,'2022-02-01','2022-06-28','I Semestre 2022'),
  (3,3,'2022-07-15','2022-12-04','II Semestre 2022'),
  (3,2,'2023-01-29','2023-06-25','I Semestre 2023'),
  (2,1,'2023-07-12','2023-12-01','II Semestre 2023'),
  (2,1,'2024-02-04','2024-07-01','I Semestre 2024'),
  (2,1,'2024-07-18','2024-12-12','II Semestre 2024'),
  (2,1,'2025-02-01','2025-06-28','I Semestre 2025');
GO

-- Insertar Grupos
INSERT INTO Grupos (IdPeriodo, IdCurso, IdProfesor, MaxEstudiantes)
VALUES
  (4, 14, 123, 27),
  (2, 26, 106, 27),
  (6, 2, 126, 33),
  (5, 1, 109, 27),
  (6, 18, 117, 27),
  (3, 15, 104, 29),
  (7, 11, 113, 31),
  (3, 12, 129, 25),
  (2, 12, 117, 30),
  (7, 1, 121, 28),
  (4, 4, 115, 30),
  (2, 2, 118, 22),
  (3, 28, 117, 23),
  (7, 20, 102, 28),
  (1, 19, 106, 20),
  (4, 14, 126, 28),
  (1, 23, 121, 25),
  (7, 10, 102, 25),
  (5, 6, 104, 22),
  (3, 3, 116, 26),
  (2, 9, 121, 30),
  (6, 3, 114, 29),
  (7, 25, 105, 22),
  (6, 20, 116, 28),
  (1, 6, 128, 35),
  (2, 6, 122, 31),
  (3, 13, 101, 21),
  (7, 17, 125, 22),
  (4, 21, 109, 29),
  (1, 16, 105, 25);
GO

-- Insertar Rubros
INSERT INTO Rubros (IdGrupo, Nombre, Porcentaje)
VALUES
  (1,'Completitud',100.0),
  (2,'Completitud',100.0),
  (3,'Completitud',100.0),
  (4,'Completitud',100.0),
  (5,'Completitud',100.0),
  (6,'Completitud',100.0),
  (7,'Completitud',100.0),
  (8,'Completitud',100.0),
  (9,'Completitud',100.0),
  (10,'Completitud',100.0),
  (11,'Completitud',100.0),
  (12,'Completitud',100.0),
  (13,'Completitud',100.0),
  (14,'Completitud',100.0),
  (15,'Completitud',100.0),
  (16,'Completitud',100.0),
  (17,'Completitud',100.0),
  (18,'Completitud',100.0),
  (19,'Completitud',100.0),
  (20,'Completitud',100.0),
  (21,'Completitud',100.0),
  (22,'Completitud',100.0),
  (23,'Completitud',100.0),
  (24,'Completitud',100.0),
  (25,'Completitud',100.0),
  (26,'Completitud',100.0),
  (27,'Completitud',100.0),
  (28,'Completitud',100.0),
  (29,'Completitud',100.0),
  (30,'Completitud',100.0);
GO

-- Insertar Actividades
INSERT INTO Actividades (IdRubro, FechaEntrega, Porcentaje)
VALUES
  (1,'2023-04-30',100.0),
  (2,'2023-05-30',100.0),
  (3,'2023-05-20',100.0),
  (4,'2023-05-20',100.0),
  (5,'2023-05-12',100.0),
  (6,'2023-05-10',100.0),
  (7,'2023-05-13',100.0),
  (8,'2023-05-03',100.0),
  (9,'2023-06-30',100.0),
  (10,'2023-06-30',100.0),
  (11,'2023-05-01',100.0),
  (12,'2023-05-30',100.0),
  (13,'2023-06-26',100.0),
  (14,'2023-07-28',100.0),
  (15,'2023-05-30',100.0),
  (16,'2023-04-27',100.0);
GO
-- Insertar Evaluaciones
INSERT INTO Evaluaciones (IdActividad, Comentario, Nota)
VALUES
  (1,'Comentario1', 100.0),
  (2,'Comentario2', 96.0),
  (3,'Comentario3', 92.5),
  (4,'Comentario4', 87.0),
  (5,'Comentario5', 70.5),
  (6,'Comentario6', 77.5),
  (7,'Comentario7', 83.0),
  (8,'Comentario8', 91.5),
  (9,'Comentario9', 98.0),
  (10,'Comentario10', 76.5),
  (11,'Comentario11', 83.5),
  (12,'Comentario12', 95.5),
  (13,'Comentario13', 78.5),
  (14,'Comentario14', 88.0),
  (15,'Comentario15', 91.0),
  (16,'Comentario16', 70.0);
GO

-- Insertar GruposEstudiantes (faltan los id de estudiante de firebase)
INSERT INTO GruposEstudiantes (IdEstudiante, IdGrupo)
VALUES
  ('6mpArFsddNYBTBErUpbEriGCjz22',1),
  ('KMOu688NidcytZlyv5U45AMfPdr1',1),
  ('kv9qrKzXJNfkILoXeTy5omTHrqz1',2),
  ('uW7lrtgzktMoPwM0K9KW8byAsbT2',2);
GO

-- Insertar GruposHorarios
INSERT INTO GruposHorarios (IdGrupo, IdHorario)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15),
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20),
  (21,21),
  (22,22),
  (23,23),
  (24,24),
  (25,25),
  (26,26),
  (27,27),
  (28,28),
  (29,28),
  (30,28);
GO