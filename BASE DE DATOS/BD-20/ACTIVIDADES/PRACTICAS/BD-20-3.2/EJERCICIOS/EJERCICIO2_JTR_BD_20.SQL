2.1)SELECT *
    FROM ALUM
    WHERE NOMBRE IN (SELECT NOMBRE FROM ANTIGUOS);

NOMBRE                     EDAD LOCALIDAD      
-------------------- ---------- ---------------
MARÍA                        20 MADRID         
ERNESTO                      21 MADRID  

2.2)DELETE
    FROM ALUM
    WHERE NOMBRE IN (SELECT NOMBRE FROM ANTIGUOS);

2 filas eliminado