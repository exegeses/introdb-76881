CREATE TABLE departamentos
(
    idDepartamento smallint unsigned auto_increment primary key,
    depNombre varchar(50) not null unique
);

INSERT INTO departamentos
    VALUES
        (DEFAULT, 'Administración'),
        (DEFAULT, 'Compras'),
        (DEFAULT, 'Ventas'),
        (DEFAULT, 'Atención al público'),
        (DEFAULT, 'Gerencia general'),
        (DEFAULT, 'Marketing');