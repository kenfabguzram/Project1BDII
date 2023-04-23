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

EXEC dbo.SpCursosEstudiante @IdEstudiante=216
go

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
@Id INT,
@IdEscuela INT,
@Nombre VARCHAR(25)
AS
    SET NOCOUNT ON;
	INSERT INTO dbo.Profesores (Id, IdEscuela, Nombre)
    VALUES (@Id, @IdEscuela, @Nombre);
    SET NOCOUNT OFF;
GO

CREATE OR ALTER PROCEDURE dbo.SpAgregarEstudiante
@Id INT,
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
