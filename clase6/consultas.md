# Consulta en SQL

> A la hora de generar consultas podemos pedirle información al servidor de base de datos, a las bases de datos, o a las tablas que nosotros tenemos
 
 ## consultas a servidor de base de datos

    -- listar todas las bases de datos  
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para realizar consultas en la palabra **SELECT** 

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos

    -- listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

    -- ver la estructura de una tabla  
    DESCRIBE nombreTabla;  

> Para realizar una consulta a una tabla y que nos liste los registros vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra reservada **FROM**

    SELECT * FROM nombreTabla;    
    SELECT * FROM marcas;    
    SELECT * FROM productos;    

> éste tipo de consultas nos trae los datos de todas las columnas en esta tabla
> en algunos casos vamos a querer ver la información de sólo algunas columnas (no todas las columnas)
> en este caso vamos a mencionar en el listado de campos (**después de SELECT**), todos los campos que queremos traer separados por comas

> Siontaxis:  

    SELECT nombreCampo, nombreCampo
      FROM nombreTabla;

> Ejemplo práctico: 

    SELECT precio, producto
      FROM productos;

## orden de resultados
> para ordenar los resultados según una columna específica utilizamos el comando **ORDER BY** seguido de dicha columna 

    SELECT nombreCampo, nombreCampo
      FROM nombreTabla  
      ORDER BY nombreCampo;  

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;  

    SELECT razonsocial, contacto    
      FROM proveedores  
      ORDER BY razonsocial;  

> Práctica: listar las columnas producto, precio ordenados por idMarca
> una vez que estén ordenados por marca, ordenar por precio -dentro de esa marca-

    SELECT producto, precio, idMarca  
      FROM productos  
      ORDER BY idMarca, precio;  
