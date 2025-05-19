create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key,
    categoria varchar(100) unique not null
);

create table marcas
(
    idMarca tinyint unsigned auto_increment,
    marca varchar(100) not null,
    primary key(idMarca),
    unique (marca)
);

create table productos
(
    idProducto smallint unsigned auto_increment primary key,
    producto varchar(100) not null unique,
    precio decimal(10,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    descripcion varchar(1000),
    imagen varchar(50) not null,
    activo boolean not null,
    foreign key (idMarca)
        references marcas (idMarca),
    foreign key (idCategoria)
        references categorias (idCategoria)
);
