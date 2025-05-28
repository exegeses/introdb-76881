# vistas en SQL

/*
    Una vista es una consulta
    que podemos almacenar dentro de nuestra base de datos
    Nota: parece una tabla independiente pero en realidad no lo es
*/

CREATE VIEW lista_precios
    AS
        SELECT
            idProducto AS id,
            producto AS Producto,
            precio AS Contado,
            precio * 1.05 AS Lista,
            marca AS Marca,
            categoria AS Categoría
        FROM productos AS p
             JOIN marcas AS m
                  ON p.idMarca = m.idMarca
             JOIN categorias AS c
                  ON p.idCategoria = c.idCategoria;


## llamado a ejecuci´òn de una vista
    SELECT * FROM lista_precios;

## listar las vistas dentro de una base de datos
SHOW FULL TABLES
    WHERE table_type = 'VIEW';
