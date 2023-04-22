CREATE OR ALTER VIEW dbo.ViewCursosEstudiantes
    AS
    SELECT 
        E.Id AS Id,
        C.Nombre AS Curso,
        T.Nombre AS Tipo,
        ESC.Nombre AS Escuela,
        C.Creditos AS Creditos,
        C.HorasPorSemana AS HorasPorSemana,
        C.Descripcion AS Descripcion        
    FROM Cursos AS C
    INNER JOIN Tipos AS T ON (T.Id = C.IdTipo)
    INNER JOIN Escuelas AS ESC ON (ESC.Id = C.IdEscuela)
    INNER JOIN PlanesCursos AS PC ON (PC.IdCurso = C.Id)
    INNER JOIN Planes AS P ON (P.Id = PC.IdPlan)
    INNER JOIN Estudiantes AS E ON (E.IdPlan = P.Id)
GO

CREATE OR ALTER PROCEDURE dbo.CursosEstudiante
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
    FROM dbo.ViewCursosEstudiantes
    WHERE Id = @IdEstudiante
GO