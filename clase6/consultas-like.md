# consultas de coincidencia 

> Las consultas de coincidencia utilizan como filtro una cadena de caracteres 
> La idea en este caso es que contenga como filtro una cadena de caracteres

> Práctica: 
> traer nombre, precio, descripción que en la columna descripción contenga la palabra 'inalámbrico'

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%';  

    SELECT razonsocial, contacto  
      FROM proveedores 
      WHERE contacto LIKE '+54 9 351%';
        
> Utilizamos la palabra reservada **LIKE** en combinación con el caracter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter.
