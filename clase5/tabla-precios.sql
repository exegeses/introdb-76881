create table precios
(
    simple float unsigned not null,
    doble double unsigned not null,
    exacto decimal(10,2) unsigned not null
);

insert into precios
    values
        ( 11.30 ,11.30 ,11.30 ),
        ( 14 ,14 ,14 ),
        ( 27.2 ,27.2 ,27.2 ),
        ( 27.84 ,27.84 ,27.84 ),
        ( 43.27 ,43.27 ,43.27 ),
        ( 38 ,38 ,38 ),
        ( 49.37 ,49.37 ,49.37 );

SELECT SUM(simple), SUM(doble), SUM(exacto)
FROM precios;

/*
    aggregates
    SUM()
    AVG()
*/