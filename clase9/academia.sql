create database academia;
use academia;

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

