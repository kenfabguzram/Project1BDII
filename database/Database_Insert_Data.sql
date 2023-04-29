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
VALUES (1, 7);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (2, 7);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (3, 7);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (4, 7);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (5, 7);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (6, 8);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (7, 8);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (8, 8);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (9, 8);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (10, 8);
INSERT INTO PlanesCursos (IdCurso, IdPlan)
VALUES (11, 9);
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
GO

-- Evaluaciones
INSERT INTO Evaluaciones (IdActividad, Comentario, Nota)
VALUES (1, 'Muy buen desempeño en esta actividad', 9.5),
       (1, 'Excelente trabajo', 10),
       (2, 'Necesitas practicar más', 6.5),
       (2, 'Falta profundidad en tus respuestas', 7.5),
       (3, 'Buen trabajo en esta actividad', 8.5),
       (3, 'Sigue así', 9),
       (4, 'Necesitas mejorar en la claridad de tus respuestas', 6.5),
       (4, 'Revisa la organización de tus ideas', 7),
       (5, 'Muy buen desempeño en esta actividad', 9),
       (5, 'Excelente trabajo', 10),
       (6, 'Necesitas practicar más', 7.5),
       (6, 'Falta profundidad en tus respuestas', 7),
       (7, 'Buen trabajo en esta actividad', 8),
       (7, 'Sigue así', 8.5),
       (8, 'Buen trabajo en esta actividad', 8),
       (8, 'Sigue así', 8.5),
       (9, 'Necesitas mejorar en la claridad de tus respuestas', 6),
       (9, 'Revisa la organización de tus ideas', 7),
       (10, 'Muy buen desempeño en esta actividad', 9.5),
       (10, 'Excelente trabajo', 10),
       (11, 'Necesitas practicar más', 7),
       (11, 'Falta profundidad en tus respuestas', 7.5),
       (12, 'Buen trabajo en esta actividad', 8),
       (12, 'Sigue así', 8.5),
       (13, 'Necesitas mejorar en la claridad de tus respuestas', 6),
       (13, 'Revisa la organización de tus ideas', 7),
       (14, 'Muy buen desempeño en esta actividad', 9.5),
       (14, 'Excelente trabajo', 10),
       (15, 'Necesitas practicar más', 7),
       (15, 'Falta profundidad en tus respuestas', 7.5),
       (16, 'Buen trabajo en esta actividad', 8),
       (16, 'Sigue así', 8.5),
       (17, 'Necesitas mejorar en la claridad de tus respuestas', 6);


-- Comentarios de evaluaciones
INSERT INTO EvaluacionesComentarios (IdEvaluacion, Comentario)
VALUES (1, 'Buen trabajo en esta actividad'),
       (1, 'Sigue así'),
       (2, 'Necesitas mejorar en la organización'),
       (2, 'Revisa la ortografía'),
       (3, 'Muy buen desempeño en esta actividad'),
       (3, 'Excelente trabajo'),
       (4, 'Necesitas practicar más'),
       (4, 'Falta profundidad en tus respuestas'),
       (5, 'Buen trabajo en esta actividad'),
       (5, 'Sigue así'),
       (6, 'Necesitas mejorar en la organización'),
       (6, 'Revisa la ortografía'),
       (7, 'Muy buen desempeño en esta actividad'),
       (7, 'Excelente trabajo'),
       (8, 'Necesitas practicar más'),
       (8, 'Falta profundidad en tus respuestas'),
       (9, 'Buen trabajo en esta actividad'),
       (9, 'Sigue así'),
       (10, 'Necesitas mejorar en la organización'),
       (10, 'Revisa la ortografía'),
       (11, 'Muy buen desempeño en esta actividad'),
       (11, 'Excelente trabajo'),
       (12, 'Necesitas practicar más'),
       (12, 'Falta profundidad en tus respuestas');
       
