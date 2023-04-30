# Explicación de Diagrama de Base de Datos

**Cursos**: Esta es la tabla con más conexiones porque, al igual que en una universidad, se centra en estos. Esta posee el nombre, cantidad de créditos, horas por semana, descripción y dos FK (Foreign Keys) que apuntan a las tablas Tipos y Escuelas. El resto de las conexiones se verán en las tablas que poseen las FK.

**Tipos**: Esta es una tabla catálogo que tiene los los tipos de Periodos Lectivos y Cursos. Esta solo contiene 5 entradas: Anual, Semestral, Trimestral, Cuatrimestral y Bimestral.

**Escuelas**: Esta es una tabla que contiene las escuelas en la universidad.

**PeriodosLectivos**: Esta tabla contiene los períodos lectivos en la universidad. Como atributos tiene: Inicio, Final y Nombre Amigable. Inicio y final hace referencia a las fechas en las cuales inició y finalizó el periodo lectivo. Además de esto, tiene dos FK: IdEstadoPeriodo e IdTipo; las cuales hacen referencia a las tablas Tipos y EstadosPeriodo respectivamente.

**EstadosPeriodo**: Esta es una tabla catálogo que tiene los estados de los períodos, estos se dividen en creado, en progreso y en finalizado.

**PeriodosLectivos_Cursos**: Esta es una tabla intermediaria para relacionar PeriodosLectivos con Cursos, solo tiene las FK de ambas tablas.

**PeriodosMatricula**: Esta es una tabla que guarda los periodos de matrícula, está compuesta por FechaInicio y FechaFinal, ambas siendo datetime para tener la hora también. Además, posee una FK a PeriodosLectivos.

**Grupos**: Esta tabla tiene el registro de grupos de un curso, como atributos posee la cantidad máxima de estudiantes y FK a Periodos, Cursos y Profesores.

**Horarios**: Esta tabla posee los horarios de los cursos, está compuesta por el día, la hora y las horas que dura.

**Grupos_Horarios**: Esta es la tabla intermediaria que relaciona a los grupos con su horario.

**Profesores**: Esta es la tabla que tiene el registro de todos los profesores de la universidad, esta solo está compuesta por el nombre del profesor y una FK a la escuela asociada.

**Escuelas**: Esta es la tabla que tiene los registros de las escuelas de la institución. Solo tiene el nombre.

**Carreras**: Esta tabla mantiene el registro de todas las carreras de la universidad, está compuesta por el nombre, una descripción y una FK a la escuela a la que pertenece.

**Planes**: Esta es la tabla que tiene todos los planes de estudio, esta está compuesta por el número de plan, la fecha de creación, la fecha de activación y la fecha de activación, además de dos FK a EstadosPlan y Carreras.

**EstadosPlan**: Esta es una tabla catálogo que tiene los estados de los planes, solamente tiene 3 entradas: creación, activo o cerrado.

**Planes_Cursos**: Esta es una tabla intermediaria entre planes y cursos.
PlanesCursos_Requisitos: Esta es una tabla que relaciona, en un plan de curso a un curso con su requisito.

**Estudiantes**: Esta tabla tiene a todos los estudiantes de la universidad, con su carné, contraseña, nombre, apellidos y una FK al plan al que pertenecen.
Asistentes_Profesores: Esta tabla relaciona a un profesor con su estudiante asistente.

**Grupos_Estudiantes**: Esta tabla relaciona a un estudiante con un grupo, esto, por ejemplo, cuando se matricula.

**Archivos**: Esta tabla tiene un registro de todos los archivos del sistema, está compuesta por el Id del usuario que lo subió, la fecha de creación, fecha de su última modificación, nombre del archivo, descripción, versión y si es latest (la última versión) o no. Además de esto, tiene 3 FK, a TiposArchivo, Periodos y Cursos.

**TiposArchivo**: Esta es una tabla catálogo de los tipos que pueden estar asociados a los archivos, solo tiene su nombre.

**Actividades**: Esta es una tabla de las actividades que se hagan en los diferentes cursos y está compuesta por la fecha de entrega, el porcentaje y una FK al rubro asociado.

**Rubros**: Esta es una tabla de los rubros que se usan para los diferentes cursos, está compuesta por el nombre, porcentaje y un FK que apunta al grupo al que pertenece.

**Evaluaciones_Comentarios**: Esta tabla tiene registro de todos los comentarios que se hacen a una evaluación, está compuesta por el comentario (de máximo 255 caracteres) y una Fk a la evaluación.

**Evaluaciones_Archivos**: Esta es una tabla que relaciona las evaluaciones con sus archivos.

**Actividades_Estudiantes_Archivos**: Esta tabla relaciona una actividad con un estudiante y un archivo.

**Archivos_Carreras**: Esta es una tabla que relaciona un archivo con la carrera a la cual pertenece. Esto para archivos como evaluaciones de cátedra.
