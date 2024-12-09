10.1)SELECT *
    FROM PROFESORES
    WHERE DNI NOT IN (SELECT DNI
                      FROM PERSONAL);

COD_CENTRO        DNI APELLIDOS                      ESPECIALIDAD    
---------- ---------- ------------------------------ ----------------
        22    8790055 Clara, Salas                   IDIOMA          
        10    8790055 Clara, Salas                   IDIOMA          
        45   43526789 Serrano Laguía, María          INFORMÁTICA  

10.2)DELETE PROFESORES
     WHERE DNI NOT IN (SELECT DNI
                       FROM PERSONAL);

3 filas eliminado