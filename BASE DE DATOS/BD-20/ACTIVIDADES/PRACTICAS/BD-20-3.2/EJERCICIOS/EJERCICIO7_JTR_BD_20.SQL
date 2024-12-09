7.1)SELECT *
    FROM CENTROS
    WHERE COD_CENTRO NOT IN (SELECT DISTINCT COD_CENTRO
                             FROM PERSONAL);

COD_CENTRO T NOMBRE                         DIRECCION                  TELEFONO   NUM_PLAZAS
---------- - ------------------------------ -------------------------- ---------- ----------
        50 S IES Antoñete                   C/Los Toreros 21           989-406090        310

7.2)DELETE CENTROS
    WHERE COD_CENTRO NOT IN (SELECT DISTINCT COD_CENTRO
                             FROM PERSONAL);

1 fila eliminado

