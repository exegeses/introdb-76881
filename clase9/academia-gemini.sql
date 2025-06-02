/*-- Reiniciar la base de datos (opcional, útil para pruebas repetidas)
DROP DATABASE IF EXISTS academia;
CREATE DATABASE academia;
USE academia;
*/
/*
-- Creación de tablas (copiado de tu esquema para asegurar el orden)
create table areas
(
    idArea tinyint unsigned auto_increment primary key,
    area varchar(50) unique not null
);

create table cursos
(
    idCurso smallint unsigned auto_increment primary key,
    curso varchar(100) unique not null,
    matricula decimal(10,2) not null,
    idArea tinyint unsigned not null,
    nivel enum('Básico', 'Intermedio', 'Avanzado', 'Experto'),
    foreign key (idArea) references areas (idArea)
);

create table alumnos
(
    idAlumno smallint unsigned auto_increment primary key,
    apellido varchar(100) not null,
    nombre varchar(100) not null,
    dni varchar(20) unique not null,
    email varchar(100) not null,
    fechaNacimiento date not null
);

create table cursos_alumnos
(
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned not null,
    fechaInicio date not null,
    activo boolean not null,
    foreign key (idCurso) references cursos (idCurso),
    foreign key (idAlumno) references alumnos (idAlumno)
);
*/

-- Inserción de datos de prueba

-- Datos para la tabla 'areas'
INSERT INTO areas (area) VALUES
                             ('Programación'),
                             ('Diseño Gráfico'),
                             ('Marketing Digital'),
                             ('Ciencias de Datos'),
                             ('Idiomas');

-- Datos para la tabla 'cursos'
INSERT INTO cursos (curso, matricula, idArea, nivel) VALUES
                                                         ('Introducción a Python', 150.00, (SELECT idArea FROM areas WHERE area = 'Programación'), 'Básico'),
                                                         ('Desarrollo Web con React', 280.00, (SELECT idArea FROM areas WHERE area = 'Programación'), 'Intermedio'),
                                                         ('Diseño de Logos e Identidad Visual', 200.00, (SELECT idArea FROM areas WHERE area = 'Diseño Gráfico'), 'Avanzado'),
                                                         ('SEO y Posicionamiento Web', 180.00, (SELECT idArea FROM areas WHERE area = 'Marketing Digital'), 'Intermedio'),
                                                         ('Machine Learning Fundamentos', 350.00, (SELECT idArea FROM areas WHERE area = 'Ciencias de Datos'), 'Experto'),
                                                         ('Inglés para Negocios', 120.00, (SELECT idArea FROM areas WHERE area = 'Idiomas'), 'Intermedio'),
                                                         ('SQL para Análisis de Datos', 220.00, (SELECT idArea FROM areas WHERE area = 'Ciencias de Datos'), 'Básico'),
                                                         ('Edición de Video con Premiere', 190.00, (SELECT idArea FROM areas WHERE area = 'Diseño Gráfico'), 'Intermedio'),
                                                         ('Marketing en Redes Sociales', 160.00, (SELECT idArea FROM areas WHERE area = 'Marketing Digital'), 'Básico'),
                                                         ('Java Avanzado', 300.00, (SELECT idArea FROM areas WHERE area = 'Programación'), 'Avanzado');

-- Datos para la tabla 'alumnos'
INSERT INTO alumnos (apellido, nombre, dni, email, fechaNacimiento) VALUES
                                                                        ('Gómez', 'Ana', '12345678A', 'ana.gomez@example.com', '1995-03-15'),
                                                                        ('Pérez', 'Luis', '87654321B', 'luis.perez@example.com', '1998-07-22'),
                                                                        ('Rodríguez', 'María', '11223344C', 'maria.rodriguez@example.com', '1993-11-01'),
                                                                        ('Fernández', 'Carlos', '55667788D', 'carlos.f@example.com', '2000-01-30'),
                                                                        ('Díaz', 'Laura', '99887766E', 'laura.diaz@example.com', '1997-09-05'),
                                                                        ('Sánchez', 'Pedro', '10203040F', 'pedro.s@example.com', '1996-04-12'),
                                                                        ('Martínez', 'Sofía', '01020304G', 'sofia.m@example.com', '1999-02-28');

-- Datos para la tabla 'cursos_alumnos'
-- Asignaciones de alumnos a cursos
INSERT INTO cursos_alumnos (idCurso, idAlumno, fechaInicio, activo) VALUES
-- Ana Gómez (idAlumno 1)
((SELECT idCurso FROM cursos WHERE curso = 'Introducción a Python'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Ana' AND apellido = 'Gómez'), '2024-01-10', TRUE),
((SELECT idCurso FROM cursos WHERE curso = 'Diseño de Logos e Identidad Visual'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Ana' AND apellido = 'Gómez'), '2024-03-01', TRUE),

-- Luis Pérez (idAlumno 2)
((SELECT idCurso FROM cursos WHERE curso = 'Desarrollo Web con React'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Luis' AND apellido = 'Pérez'), '2024-02-15', TRUE),
((SELECT idCurso FROM cursos WHERE curso = 'SQL para Análisis de Datos'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Luis' AND apellido = 'Pérez'), '2023-11-20', FALSE), -- Curso finalizado

-- María Rodríguez (idAlumno 3)
((SELECT idCurso FROM cursos WHERE curso = 'SEO y Posicionamiento Web'), (SELECT idAlumno FROM alumnos WHERE nombre = 'María' AND apellido = 'Rodríguez'), '2024-04-01', TRUE),
((SELECT idCurso FROM cursos WHERE curso = 'Inglés para Negocios'), (SELECT idAlumno FROM alumnos WHERE nombre = 'María' AND apellido = 'Rodríguez'), '2024-01-05', TRUE),

-- Carlos Fernández (idAlumno 4)
((SELECT idCurso FROM cursos WHERE curso = 'Machine Learning Fundamentos'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Carlos' AND apellido = 'Fernández'), '2024-03-10', TRUE),

-- Laura Díaz (idAlumno 5)
((SELECT idCurso FROM cursos WHERE curso = 'Introducción a Python'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Laura' AND apellido = 'Díaz'), '2024-01-10', TRUE),
((SELECT idCurso FROM cursos WHERE curso = 'Marketing en Redes Sociales'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Laura' AND apellido = 'Díaz'), '2024-04-15', TRUE),

-- Pedro Sánchez (idAlumno 6)
((SELECT idCurso FROM cursos WHERE curso = 'Java Avanzado'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Pedro' AND apellido = 'Sánchez'), '2024-02-20', TRUE),

-- Sofía Martínez (idAlumno 7)
((SELECT idCurso FROM cursos WHERE curso = 'Edición de Video con Premiere'), (SELECT idAlumno FROM alumnos WHERE nombre = 'Sofía' AND apellido = 'Martínez'), '2024-05-01', TRUE);