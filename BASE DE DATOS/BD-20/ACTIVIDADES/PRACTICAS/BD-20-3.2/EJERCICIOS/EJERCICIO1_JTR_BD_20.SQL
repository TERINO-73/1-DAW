1.1)SELECT *
    FROM NUEVOS MINUS (SELECT * FROM ALUM);

NOMBRE                     EDAD LOCALIDAD      
-------------------- ---------- ---------------
ANA                          17 ALCALA         
MAITE                        15 ALCALÁ         
SOFÍA                        14 ALCALÁ 

1.2)INSERT INTO ALUM
    SELECT *
    FROM NUEVOS MINUS (SELECT * FROM ALUM);

3 filas insertadas.

