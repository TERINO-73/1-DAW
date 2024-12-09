6.1)SELECT *
FROM CENTROS
WHERE COD_CENTRO IN (SELECT COD_CENTRO
FROM PROFESORES
GROUP BY COD_CENTRO
HAVING COUNT(*) < 2);

COD_CENTRO T NOMBRE                         DIRECCION                  TELEFONO   NUM_PLAZAS
---------- - ------------------------------ -------------------------- ---------- ----------
        22 S IES Planeta Tierra             C/Mina 45                  925-443400        300
        45 P CP Manuel Hidalgo              C/Granada 5                926-202310        220

6.2)UPDATE CENTROS
    SET NUM_PLAZAS = NUM_PLAZAS/2
    WHERE COD_CENTRO IN (SELECT COD_CENTRO
                         FROM PROFESORES
                         GROUP BY COD_CENTRO
                         HAVING COUNT(*) < 2);

2 filas actualizadas.