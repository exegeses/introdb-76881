# Creación de tablas

> Para crear una tabla dentro de una base de datos
> utilizamos el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    (  
        nombreCampo tipoDato características,  
        nombreCampo2 tipoDato características,  
        nombrecampo3 tipoDato características,  
        nombreCampoX tipoDato características  
    );


> Ejemplo práctico:  
 
    CREATE TABLE personas  
    (  
        id int auto_increment primary key,  
        apellido varchar(100) not null,  
        nombre varchar(100) not null,  
        dni varchar(100) unique not null,  
        alta date not null  
    );  

