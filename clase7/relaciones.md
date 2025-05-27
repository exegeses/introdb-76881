# consultas con relaciones entre tablas

> si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas
> para lograrlo tenemos dos técnicas

## 1- Table relation

> la técnica **Table relation** se logra mencionando en el listado de tablas (después del **FROM**) cada una de las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**)
> igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla.


> Sintaxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico: 

    SELECT producto, precio, marca  
      FROM productos, marcas    
      WHERE productos.idMarca = marcas.idMarca;  


    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias    
      WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria;  

    SELECT destino, nombre_agencia, nombre_pais  
      FROM agencias, misiones, paises  
      WHERE misiones.id_agencia = agencias.id_agencia  
       AND misiones.id_pais = paises.id_pais;  


## 2- JOIN

> En la técnica **JOIN** no vamos a mencionar en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias
> Sólo se menciona la tabla principal
> Y luego usamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> Y finalizamos agulando la clave foránea de la tabla principal con la clave primaria de la segunda tabla después de la palabra reservada **ON**


> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  


> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;


    SELECT producto, precio, marca, categoria   
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  










