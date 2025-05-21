# Filtrado de resultados

> Filtrar resultados significa que vamos a traer únicamente los registros que cumplan con alguna condición
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición.

> Sintaxis:  

    SELECT nombreCampo, nombreCampo  
      FROM nombreTabla  
      WHERE condición;  

> Práctica: en listar las columnas producto, precio con un precio hasta 700 (inclusive)

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 700;   

> Práctica: en listar las columnas producto, precio con un precio entre 200 y 700 

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 200  
      AND precio <= 700;  

> Palabra reservada **BETWEEN** 

    SELECT producto, precio  
      FROM productos  
      WHERE precio BETWEEN 200 AND 700;  

> traer producto, precio con el idMarca 1 y el idMarca 19

    SELECT producto, precio, idMarca  
      FROM productos  
      WHERE idMarca = 1  
      OR idMarca = 19;  

> función IN()

