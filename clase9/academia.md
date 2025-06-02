# Proyecto academia

> Se trata de academia que brinda cursos de desarrollo informático  

> Debemos almacenar información de: 

[] Cursos dictados
> Debemos registrar los siguientes datos 
> Nombre del curso,
> El costo de la matrícula,
> Área de curso (Programación, Diseño, etc)
> Nivel de complejidad (Básico, Intermedio, Avanzado)

[] Alumnos
> Debemos registrar datos de los alumnos tal es como:
> Apellido del alumno, 
> Nombre del alumno, 
> DNI, 
> e-mail, 
> fecha de nacimiento

> Debemos saber: 
> qué alumnos se han anotado a cada curso 
> si están o no activos en dicho curso

    SELECT nombre, apellido, curso
    FROM cursos
    JOIN cursos_alumnos
      ON cursos.idCurso = cursos_alumnos.idCurso
    JOIN alumnos 
      ON alumnos.idAlumno = cursos_alumnos.idAlumno;
