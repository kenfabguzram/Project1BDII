
BEGIN TRANSACTION;

DROP TABLE IF EXISTS EvaluacionesComentarios;
DROP TABLE IF EXISTS EvaluacionesArchivos;
DROP TABLE IF EXISTS Evaluaciones;
DROP TABLE IF EXISTS Actividades;
DROP TABLE IF EXISTS PeriodosMatricula;
DROP TABLE IF EXISTS Rubros;
DROP TABLE IF EXISTS EvaluacionCurso;
DROP TABLE IF EXISTS PlanesCursosDependencias;
DROP TABLE IF EXISTS ArchivosCarreras;
DROP TABLE IF EXISTS Archivos;
DROP TABLE IF EXISTS TipoArchivo;
DROP TABLE IF EXISTS Planes;
DROP TABLE IF EXISTS PlanesCursosRequisitos;
DROP TABLE IF EXISTS PlanesCursos;
DROP TABLE IF EXISTS EstadosPlan;
DROP TABLE IF EXISTS Carreras;
DROP TABLE IF EXISTS PeriodosLectivosCursos;
DROP TABLE IF EXISTS Cursos;
DROP TABLE IF EXISTS Escuelas;
DROP TABLE IF EXISTS Profesores;
DROP TABLE IF EXISTS AsistentesProfesores;
DROP TABLE IF EXISTS Estudiantes;
DROP TABLE IF EXISTS GruposHorarios;
DROP TABLE IF EXISTS Horarios;
DROP TABLE IF EXISTS Grupos;
DROP TABLE IF EXISTS PeriodosLectivos;
DROP TABLE IF EXISTS Tipos;
DROP TABLE IF EXISTS ActividadesEstudiantesArchivos;
DROP TABLE IF EXISTS EstadosPeriodo;
COMMIT TRANSACTION;

CREATE TABLE EvaluacionesComentarios (
    Id int PRIMARY KEY,
    IdEvaluacion int,
    Comentario varchar(255)
);

CREATE TABLE Evaluaciones (
    Id int PRIMARY KEY,
    IdActividad int,
    Comentario varchar(255),
    Nota float
);

CREATE TABLE EvaluacionesArchivos (
    Id int PRIMARY KEY,
    IdEvaluacion int,
    IdArchivo int
);

CREATE TABLE Actividades (
    Id int PRIMARY KEY,
    IdRubro int,
    FechaEntrega date,
    Porcentaje float
);

CREATE TABLE PeriodosMatricula (
    Id int PRIMARY KEY,
    IdPeriodoLectivo int,
    FechaInicio datetime,
    FechaFinal datetime
);

CREATE TABLE Rubros (
    Id int PRIMARY KEY,
    IdGrupo int,
    Nombre varchar(25),
    Porcentaje float
);

CREATE TABLE PeriodosLectivos (
    Id int PRIMARY KEY,
    IdTipo int,
    IdEstadoPeriodo int,
    Inicio date,
    Final date,
    NombreAmigable varchar(50)
);

CREATE TABLE EstadosPeriodo (
    Id int PRIMARY KEY,
    Nombre varchar(10)
);

CREATE TABLE Tipos (
    Id int PRIMARY KEY,
    Nombre varchar(13)
);

CREATE TABLE TipoArchivo (
    Id int PRIMARY KEY,
    Nombre varchar(15)
);

CREATE TABLE Archivos (
    Id int PRIMARY KEY,
    IdUsuario int,
    IdTipoArchivo int,
    IdPeriodo int,
    IdCurso int,
    FechaCreacion date,
    FechaUltimaModificacion date,
    Nombre varchar(25),
    Descripcion varchar(255),
    Version varchar(8),
    Latest bit
);

CREATE TABLE EvaluacionCurso (
    Id int PRIMARY KEY,
    IdCurso int,
    Nota float
);

CREATE TABLE PlanesCursosDependencias (
    Id int PRIMARY KEY,
    IdPlanesCursos int,
    IdDependencia int,
    IdCurso int
);

CREATE TABLE ArchivosCarreras (
    Id int PRIMARY KEY,
    IdCarrera int,
    IdArchivo int
);

CREATE TABLE EstadosPlan (
    Id int PRIMARY KEY,
    Nombre varchar(7)
);

CREATE TABLE Planes (
    Id int PRIMARY KEY,
    IdEstadoPlan int,
    IdCarrera int,
    Numero int,
    FechaCreacion date,
    FechaActivacion date,
    FechaFinalizacion date
);

CREATE TABLE PlanesCursosRequisitos (
    Id int PRIMARY KEY,
    IdPlanesCursos int,
    IdRequisito int,
    IdCurso int
);

CREATE TABLE PlanesCursos (
    Id int PRIMARY KEY,
    IdCurso int,
    IdPlan int
);

CREATE TABLE Carreras (
    Id int PRIMARY KEY,
    IdEscuela int,
    Nombre varchar(25),
    Descripcion varchar(255)
);

CREATE TABLE PeriodosLectivosCursos (
    Id int PRIMARY KEY,
    IdPeriodoLectivo int,
    IdCurso int
);

CREATE TABLE Cursos (
    Id int PRIMARY KEY,
    IdTipo int,
    IdEscuela int,
    Nombre varchar(25),
    Creditos int,
    HorasPorSemana int,
    Descripcion varchar(255)
);

CREATE TABLE Escuelas (
    Id int PRIMARY KEY,
    Nombre varchar(25)
);

CREATE TABLE Profesores (
    Id int PRIMARY KEY,
    IdEscuela int
);

CREATE TABLE AsistentesProfesores (
    Id int PRIMARY KEY,
    IdProfesor int,
    IdEstudiante int
);

CREATE TABLE Estudiantes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Carne VARCHAR(10),
    Contrasena VARCHAR(25)
);

CREATE TABLE Grupos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdPeriodo INT,
    IdCurso INT,
    IdProfesor INT,
    MaxEstudiantes INT
);

CREATE TABLE GruposHorarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdGrupo INT,
    IdHorario INT
);

CREATE TABLE Horarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Dia CHAR(1),
    Hora TIME,
    Horas INT
);

CREATE TABLE ActividadesEstudiantesArchivos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdActividad INT,
    IdEstudiante INT,
    IdArchivo INT
);
-- EvaluacionesComentarios
ALTER TABLE EvaluacionesComentarios
ADD CONSTRAINT FK_EvaluacionesComentarios_Evaluaciones
FOREIGN KEY (IdEvaluacion) REFERENCES Evaluaciones(Id);

-- Evaluaciones
ALTER TABLE Evaluaciones
ADD CONSTRAINT FK_Evaluaciones_Actividades
FOREIGN KEY (IdActividad) REFERENCES Actividades(Id);

-- EvaluacionesArchivos
ALTER TABLE EvaluacionesArchivos
ADD CONSTRAINT FK_EvaluacionesArchivos_Evaluaciones
FOREIGN KEY (IdEvaluacion) REFERENCES Evaluaciones(Id);
ALTER TABLE EvaluacionesArchivos
ADD CONSTRAINT FK_EvaluacionesArchivos_Archivos
FOREIGN KEY (IdArchivo) REFERENCES Archivos(Id);

-- Actividades
ALTER TABLE Actividades
ADD CONSTRAINT FK_Actividades_Rubros
FOREIGN KEY (IdRubro) REFERENCES Rubros(Id);

-- PeriodosMatricula
ALTER TABLE PeriodosMatricula
ADD CONSTRAINT FK_PeriodosMatricula_PeriodosLectivos
FOREIGN KEY (IdPeriodoLectivo) REFERENCES PeriodosLectivos(Id);

-- Rubros
ALTER TABLE Rubros
ADD CONSTRAINT FK_Rubros_Grupos
FOREIGN KEY (IdGrupo) REFERENCES Grupos(Id);

-- PeriodosLectivos
ALTER TABLE PeriodosLectivos
ADD CONSTRAINT FK_PeriodosLectivos_Tipos
FOREIGN KEY (IdTipo) REFERENCES Tipos(Id);
ALTER TABLE PeriodosLectivos
ADD CONSTRAINT FK_PeriodosLectivos_EstadosPeriodo
FOREIGN KEY (IdEstadoPeriodo) REFERENCES EstadosPeriodo(Id);

-- Archivos
ALTER TABLE Archivos
ADD CONSTRAINT FK_Archivos_TipoArchivo
FOREIGN KEY (IdTipoArchivo) REFERENCES TipoArchivo(Id);
ALTER TABLE Archivos
ADD CONSTRAINT FK_Archivos_Periodos
FOREIGN KEY (IdPeriodo) REFERENCES PeriodosLectivos(Id);
ALTER TABLE Archivos
ADD CONSTRAINT FK_Archivos_Cursos
FOREIGN KEY (IdCurso) REFERENCES Cursos(Id);

-- EvaluacionCurso
ALTER TABLE EvaluacionCurso
ADD CONSTRAINT FK_EvaluacionCurso_Cursos
FOREIGN KEY (IdCurso) REFERENCES Cursos(Id);

-- PlanesCursosDependencias
ALTER TABLE PlanesCursosDependencias
ADD CONSTRAINT FK_PlanesCursosDependencias_PlanesCursos
FOREIGN KEY (IdPlanesCursos) REFERENCES PlanesCursos(Id);
ALTER TABLE PlanesCursosDependencias
ADD CONSTRAINT FK_PlanesCursosDependencias_Dependencias
FOREIGN KEY (IdDependencia) REFERENCES Carreras(Id);

-- ArchivosCarreras
ALTER TABLE ArchivosCarreras
ADD CONSTRAINT FK_ArchivosCarreras_Carreras
FOREIGN KEY (IdCarrera) REFERENCES Carreras(Id);
ALTER TABLE ArchivosCarreras
ADD CONSTRAINT FK_ArchivosCarreras_Archivos
FOREIGN KEY (IdArchivo) REFERENCES Archivos(Id);

-- EstadosPlan

-- Planes
ALTER TABLE Planes
ADD CONSTRAINT FK_Planes_EstadosPlan
FOREIGN KEY (IdEstadoPlan) REFERENCES EstadosPlan(Id);
ALTER TABLE Planes
ADD CONSTRAINT FK_Planes_Carreras
FOREIGN KEY (IdCarrera) REFERENCES Carreras(Id);

-- PlanesCursosRequisitos
ALTER TABLE PlanesCursosRequisitos
ADD CONSTRAINT FK_PlanesCursosRequisitos_PlanesCursos
FOREIGN KEY (IdPlanesCursos)
REFERENCES PlanesCursos(Id);

ALTER TABLE PlanesCursosRequisitos
ADD CONSTRAINT FK_PlanesCursosRequisitos_Cursos
FOREIGN KEY (IdCurso)
REFERENCES Cursos(Id);

-- PlanesCursos
ALTER TABLE PlanesCursos
ADD CONSTRAINT FK_PlanesCursos_Cursos
FOREIGN KEY (IdCurso)
REFERENCES Cursos(Id);

ALTER TABLE PlanesCursos
ADD CONSTRAINT FK_PlanesCursos_Planes
FOREIGN KEY (IdPlan)
REFERENCES Carreras(Id);
-- Carreras
ALTER TABLE Carreras
ADD CONSTRAINT FK_Carreras_Escuelas
FOREIGN KEY (IdEscuela)
REFERENCES Escuelas(Id);

-- PeriodosLectivosCursos

ALTER TABLE PeriodosLectivosCursos
ADD CONSTRAINT FK_PeriodosLectivosCursos_PeriodosLectivos
FOREIGN KEY (IdPeriodoLectivo)
REFERENCES PeriodosLectivos(Id);

ALTER TABLE PeriodosLectivosCursos
ADD CONSTRAINT FK_PeriodosLectivosCursos_Cursos
FOREIGN KEY (IdCurso)
REFERENCES Cursos(Id);

-- Cursos

ALTER TABLE Cursos
ADD CONSTRAINT FK_Cursos_Tipos
FOREIGN KEY (IdTipo)
REFERENCES Tipos(Id);

ALTER TABLE Cursos
ADD CONSTRAINT FK_Cursos_Escuelas
FOREIGN KEY (IdEscuela)
REFERENCES Escuelas(Id);

-- Profesores

ALTER TABLE Profesores
ADD CONSTRAINT FK_Profesores_Escuelas
FOREIGN KEY (IdEscuela)
REFERENCES Escuelas(Id);

-- AsistentesProfesores

ALTER TABLE AsistentesProfesores
ADD CONSTRAINT FK_AsistentesProfesores_Profesores
FOREIGN KEY (IdProfesor)
REFERENCES Profesores(Id);

ALTER TABLE AsistentesProfesores
ADD CONSTRAINT FK_AsistentesProfesores_Estudiantes
FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(Id);

-- Grupos

ALTER TABLE Grupos
ADD CONSTRAINT FK_Grupos_PeriodosLectivos
FOREIGN KEY (IdPeriodo)
REFERENCES PeriodosLectivos(Id);

ALTER TABLE Grupos
ADD CONSTRAINT FK_Grupos_Cursos
FOREIGN KEY (IdCurso)
REFERENCES Cursos(Id);

ALTER TABLE Grupos
ADD CONSTRAINT FK_Grupos_Profesores
FOREIGN KEY (IdProfesor)
REFERENCES Profesores(Id);

--GruposHorarios

ALTER TABLE GruposHorarios
ADD CONSTRAINT FK_GruposHorarios_Grupos
FOREIGN KEY (IdGrupo)
REFERENCES Grupos(Id);

ALTER TABLE GruposHorarios
ADD CONSTRAINT FK_GruposHorarios_Horarios
FOREIGN KEY (IdHorario)
REFERENCES Horarios(Id);

--ActividadesEstudiantesArchivos

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_ActividadesEstudiantes
FOREIGN KEY (IdActividad)
REFERENCES ActividadesEstudiantes(Id);

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_Estudiantes
FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(Id);

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_Archivos
FOREIGN KEY (IdArchivo)
REFERENCES Archivos(Id);