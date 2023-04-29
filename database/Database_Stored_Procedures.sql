-- VIEWS

CREATE OR ALTER VIEW dbo.ViewCursosDisponiblesMatricula
    AS
    SELECT 
        E.Id AS Id,
        C.Nombre AS Curso,
        T.Nombre AS Tipo,
        ESC.Nombre AS Escuela,
        C.Creditos AS Creditos,
        C.HorasPorSemana AS HorasPorSemana,
        C.Descripcion AS Descripcion        
    FROM dbo.Cursos AS C
    INNER JOIN dbo.Tipos AS T ON (T.Id = C.IdTipo)
    INNER JOIN dbo.Escuelas AS ESC ON (ESC.Id = C.IdEscuela)
    INNER JOIN dbo.PlanesCursos AS PC ON (PC.IdCurso = C.Id)
    INNER JOIN dbo.Planes AS P ON (P.Id = PC.IdPlan)
    INNER JOIN dbo.Estudiantes AS E ON (E.IdPlan = P.Id)
GO

CREATE OR ALTER VIEW dbo.ViewPlanes
    AS
    SELECT 
        P.Id,
        E.Nombre AS Estado,
        C.Nombre AS Carrera,
        C.Id AS IdCarrera,
        P.Numero AS Numero,
        P.FechaCreacion,
        P.FechaActivacion,
        P.FechaFinalizacion
    FROM dbo.Planes AS P 
    INNER JOIN dbo.EstadosPlan AS E ON (E.Id = P.IdEstadoPlan)
    INNER JOIN dbo.Carreras AS C ON (C.Id = P.IdCarrera)
GO

CREATE OR ALTER VIEW dbo.ViewCarreras
    AS
    SELECT 
        C.Id, 
        E.Nombre AS Escuela, 
        C.Nombre, 
        C.Descripcion
    FROM dbo.Carreras AS C 
    INNER JOIN dbo.Escuelas AS E ON (E.Id = C.IdEscuela)
GO

    
-- STORED PROCEDURES

CREATE OR ALTER PROCEDURE dbo.SpCursosEstudiante
@IdEstudiante INT
AS
    SET NOCOUNT ON;
	SELECT 
        Curso,
        Tipo,
        Escuela,
        Creditos,
        HorasPorSemana,
        Descripcion  
    FROM dbo.ViewCursosDisponiblesMatricula
    WHERE Id = @IdEstudiante
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpBuscarIdEscuela
@Nombre VARCHAR(25)
AS
    SET NOCOUNT ON;
	SELECT Id 
    FROM dbo.Escuelas
    WHERE Nombre = @Nombre
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpAgregarProfesor
@Id CHAR(28),
@IdEscuela INT,
@Nombre VARCHAR(25)
AS
    SET NOCOUNT ON;
	INSERT INTO dbo.Profesores (Id, IdEscuela, Nombre)
    VALUES (@Id, @IdEscuela, @Nombre);
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpAgregarEstudiante
@Id CHAR(28),
@Carne VARCHAR(10),
@Contrasena VARCHAR(25),
@Nombre VARCHAR(25),
@Apellido1 VARCHAR(25),
@Apellido2 VARCHAR(25),
@IdPlan INT
AS
    SET NOCOUNT ON;
	INSERT INTO dbo.Estudiantes (Id, Carne, Contrasena, Nombre, Apellido1, Apellido2, IdPlan)
    VALUES (@Id, @Carne, @Contrasena, @Nombre, @Apellido1, @Apellido2, @IdPlan);
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpMatricularEstudiante
@IdEstudiante INT,
@IdGrupo INT
AS
    SET NOCOUNT ON;
	INSERT INTO dbo.GruposEstudiantes (IdEstudiante, IdGrupo)
    VALUES (@IdEstudiante, @IdGrupo);
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpObtenerCarreras
AS
    SET NOCOUNT ON;
    SELECT * FROM dbo.ViewCarreras;
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpObtenerPlanesDeEstudio
@IdCarrera INT
AS
    SET NOCOUNT ON;
    SELECT * FROM dbo.ViewPlanes
    WHERE IdCarrera = @IdCarrera;
    SET NOCOUNT OFF;
GO