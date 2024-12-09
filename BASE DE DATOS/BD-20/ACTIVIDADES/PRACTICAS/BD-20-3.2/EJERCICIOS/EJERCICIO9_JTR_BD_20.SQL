9.1)SELECT *
    FROM PERSONAL
    WHERE COD_CENTRO IN (SELECT COD_CENTRO
                         FROM CENTROS
                         WHERE NUM_PLAZAS <= 300)
                         AND COD_CENTRO IN (SELECT COD_CENTRO
                                            FROM PROFESORES
                                            GROUP BY COD_CENTRO
                                            HAVING COUNT(*) < 2);

COD_CENTRO        DNI APELLIDOS                      FUNCION            SALARIO
---------- ---------- ------------------------------ --------------- ----------
        45   43526789 Serrano Laguía, María          PROFESOR            205000
        45    4163222 Sarro Molina, Carmen           CONSERJE            175000
        22    7650000 Ruiz Lafuente, Manuel          PROFESOR            220000
        22    5502678 Marín Marín, Pedro             ADMINISTRATIVO      180000
        22    6600980 Peinado Gil, Elena             CONSERJE            175000

9.2)DELETE PERSONAL
    WHERE COD_CENTRO IN (SELECT COD_CENTRO
                         FROM CENTROS
                         WHERE NUM_PLAZAS <= 300)
                         AND COD_CENTRO IN (SELECT COD_CENTRO
                                            FROM PROFESORES
                                            GROUP BY COD_CENTRO
                                            HAVING COUNT(*) < 2);

5 filas eliminado