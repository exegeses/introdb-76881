# modificación de datos (registros) de una tabla

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro con la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
    WHERE condicion;


> Ejemplo práctico:  

    UPDATE proveedores  
        SET  
            razonsocial = 'Norteinsumos S.R.L.',  
            contacto = '+54 9 387 4455-6677'  
    WHERE idProveedor = 4;

    
    UPDATE productos  
        SET 
            precio = precio * 1.05    
       WHERE idProveedor = 7;  
