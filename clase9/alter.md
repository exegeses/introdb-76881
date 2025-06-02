# Modificaciones de estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreActual nombreNuevo tipoDato [modif];  

    ALTER TABLE personas  
      CHANGE date alta date not null;

> Tener en cuenta que debemos repetir el tipo de datos, si no dará error.
> Además si no mencionamos **not null** dejará que pueda quedar vacío

## cambiar tipo de datos o modificadores de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreCampo tipoDato [modif];  

    ALTER TABLE personas  
      MODIFY apellido varchar(150) not null; 

## agregar una columna a una tabla

    ALTER TABLE nombreTabla  
      ADD nombreCampo tipoDato [modif];  

    ALTER TABLE personas  
      ADD notas varchar(1000); 

## agregar una columna después de una columna existente
> cuando ejecutamos **ADD** siempre se agrega la columna al final
> con el modificador **AFTER** estaríamos especificando después de una columna ya existente

    ALTER TABLE nombreTabla  
      ADD nombreCampo tipoDato [modif]  
      AFTER mombreCampo; 
        
    ALTER TABLE personas  
      ADD notas varchar(1000)  
      AFTER dni;  


## eliminar una columna a de tabla

    ALTER TABLE nombreTabla  
      DROP nombreCampo;  

    ALTER TABLE personas  
      DROP notas; 
