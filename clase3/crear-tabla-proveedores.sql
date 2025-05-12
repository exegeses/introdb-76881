create table proveedores
(
    idProveedor tinyint unsigned auto_increment primary key,
    razonsocial varchar(100) not null,
    contacto varchar(20) not null,
    cuit varchar(20) unique not null,
    email varchar(100),
    direccion varchar(100) not null
);
