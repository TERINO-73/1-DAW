8.1)SELECT DISTINCT COD_CENTRO, 8790055, 'Clara, Salas', 'IDIOMA'
    FROM PROFESORES
    WHERE COD_CENTRO IN (SELECT COD_CENTRO
                         FROM PERSONAL
                         WHERE FUNCION = 'ADMINISTRATIVO'
                         GROUP BY COD_CENTRO
                         HAVING COUNT(*) = 1);

COD_CENTRO    8790055 'CLARA,SALAS 'IDIOM
---------- ---------- ------------ ------
        22    8790055 Clara, Salas IDIOMA
        10    8790055 Clara, Salas IDIOMA

8.2)INSERT INTO PROFESORES
    SELECT DISTINCT COD_CENTRO, 8790055, 'Clara, Salas', 'IDIOMA'
    FROM CENTROS
    WHERE COD_CENTRO IN (SELECT COD_CENTRO
                         FROM PERSONAL
                         WHERE FUNCION = 'ADMINISTRATIVO'
                         GROUP BY COD_CENTRO
                         HAVING COUNT(*) = 1);

2 filas insertadas.