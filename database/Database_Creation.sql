CREATE TABLE EvaluacionesComentarios (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdEvaluacion int NOT NULL,
    Comentario varchar(255) NOT NULL
);

CREATE TABLE Evaluaciones (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdActividad int NOT NULL,
    Comentario varchar(255) NOT NULL,
    Nota float NOT NULL
);

CREATE TABLE EvaluacionesArchivos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdEvaluacion int NOT NULL,
    IdArchivo int NOT NULL
);

CREATE TABLE Actividades (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdRubro int NOT NULL,
    FechaEntrega date,
    Porcentaje float
);

CREATE TABLE PeriodosMatricula (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdPeriodoLectivo int NOT NULL,
    FechaInicio datetime NOT NULL,
    FechaFinal datetime NOT NULL
);

CREATE TABLE Rubros (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdGrupo int NOT NULL,
    Nombre varchar(25) NOT NULL,
    Porcentaje float NOT NULL
);

CREATE TABLE PeriodosLectivos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdTipo int NOT NULL,
    IdEstadoPeriodo int NOT NULL,
    Inicio date NOT NULL,
    Final date NOT NULL,
    NombreAmigable varchar(50)
);

CREATE TABLE EstadosPeriodo (
    Id int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(10) NOT NULL
);

CREATE TABLE Tipos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(13) NOT NULL
);

CREATE TABLE TipoArchivo (
    Id int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(15) NOT NULL
);

CREATE TABLE Archivos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdUsuario int NOT NULL,
    IdTipoArchivo int NOT NULL,
    IdPeriodo int NOT NULL,
    IdCurso int NOT NULL,
    FechaCreacion date NOT NULL,
    FechaUltimaModificacion date NOT NULL,
    Nombre varchar(25),
    Descripcion varchar(255),
    Version varchar(8) NOT NULL,
    Latest bit NOT NULL
);

CREATE TABLE EvaluacionCurso (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdCurso int NOT NULL,
    Nota float NOT NULL
);

CREATE TABLE PlanesCursosDependencias (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdPlanesCursos int NOT NULL,
    IdDependencia int NOT NULL,
    IdCurso int NOT NULL
);

CREATE TABLE ArchivosCarreras (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdCarrera int NOT NULL,
    IdArchivo int NOT NULL
);

CREATE TABLE EstadosPlan (
    Id int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(8) NOT NULL
);

CREATE TABLE Planes (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdEstadoPlan int NOT NULL,
    IdCarrera int NOT NULL,
    Numero int NOT NULL,
    FechaCreacion date NOT NULL,
    FechaActivacion date,
    FechaFinalizacion date
);

CREATE TABLE PlanesCursosRequisitos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdPlanesCursos int NOT NULL,
    IdRequisito int NOT NULL,
    IdCurso int NOT NULL
);

CREATE TABLE PlanesCursos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdCurso int NOT NULL,
    IdPlan int NOT NULL
);

CREATE TABLE Carreras (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdEscuela int NOT NULL,
    Nombre varchar(100) NOT NULL,
    Descripcion varchar(255)
);

CREATE TABLE PeriodosLectivosCursos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdPeriodoLectivo int NOT NULL,
    IdCurso int NOT NULL
);

CREATE TABLE Cursos (
    Id int PRIMARY KEY IDENTITY (1, 1),
    IdTipo int NOT NULL,
    IdEscuela int NOT NULL,
    Nombre varchar(100) NOT NULL,
    Creditos int NOT NULL,
    HorasPorSemana int NOT NULL,
    Descripcion varchar(255)
);

CREATE TABLE Escuelas (
    Id int PRIMARY KEY IDENTITY (1, 1),
    Nombre varchar(100) NOT NULL
);

CREATE TABLE Profesores (
    Id CHAR(28) PRIMARY KEY,
    IdEscuela int NOT NULL,
    Nombre varchar(25) NOT NULL
);

CREATE TABLE AsistentesProfesores (
    Id int PRIMARY KEY,
    IdProfesor char(28) NOT NULL,
    IdEstudiante char(28) NOT NULL
);

CREATE TABLE Estudiantes (
    Id CHAR(28) PRIMARY KEY,
    Carne VARCHAR(10) NOT NULL,
    Contrasena VARCHAR(25) NOT NULL,
    Nombre VARCHAR(25) NOT NULL,
    Apellido1 VARCHAR(25) NOT NULL,
    Apellido2 VARCHAR(25),
    IdPlan INT NOT NULL
);

CREATE TABLE Grupos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdPeriodo INT NOT NULL,
    IdCurso INT NOT NULL,
    IdProfesor char(28) NOT NULL,
    MaxEstudiantes INT NOT NULL
);

CREATE TABLE GruposHorarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdGrupo INT NOT NULL,
    IdHorario INT NOT NULL
);

CREATE TABLE Horarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Dia CHAR(1) NOT NULL,
    Hora TIME NOT NULL,
    Horas INT NOT NULL
);

CREATE TABLE ActividadesEstudiantesArchivos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdActividad INT NOT NULL,
    IdEstudiante char(28) NOT NULL,
    IdArchivo INT NOT NULL
);

CREATE TABLE GruposEstudiantes (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    IdEstudiante char(28) NOT NULL,
    IdGrupo INT NOT NULL
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

-- Estudiantes
ALTER TABLE Estudiantes
ADD CONSTRAINT FK_Estudiantes_Planes
FOREIGN KEY (IdPlan)
REFERENCES Planes(Id);

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

-- GruposHorarios

ALTER TABLE GruposHorarios
ADD CONSTRAINT FK_GruposHorarios_Grupos
FOREIGN KEY (IdGrupo)
REFERENCES Grupos(Id);

ALTER TABLE GruposHorarios
ADD CONSTRAINT FK_GruposHorarios_Horarios
FOREIGN KEY (IdHorario)
REFERENCES Horarios(Id);

-- ActividadesEstudiantesArchivos

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_Actividades
FOREIGN KEY (IdActividad)
REFERENCES Actividades(Id);

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_Estudiantes
FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(Id);

ALTER TABLE ActividadesEstudiantesArchivos
ADD CONSTRAINT FK_ActividadesEstudiantesArchivos_Archivos
FOREIGN KEY (IdArchivo)
REFERENCES Archivos(Id);

-- GruposEstudiantes

ALTER TABLE GruposEstudiantes
ADD CONSTRAINT FK_GruposEstudiantes_Grupos
FOREIGN KEY (IdGrupo)
REFERENCES Grupos(Id);
ALTER TABLE GruposEstudiantes
ADD CONSTRAINT FK_GruposEstudiantes_Estudiantes
FOREIGN KEY (IdEstudiante)
REFERENCES Estudiantes(Id);