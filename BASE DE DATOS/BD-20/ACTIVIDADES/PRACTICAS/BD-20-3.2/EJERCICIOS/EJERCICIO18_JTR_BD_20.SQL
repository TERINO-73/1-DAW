18.1)SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, PRECIO_VENTA, PRECIO_COSTO, EXISTENCIAS
     FROM ARTICULOS
     WHERE CATEGORIA = 'Primera'
            AND COD_FABRICANTE = (SELECT COD_FABRICANTE
                                  FROM FABRICANTES
                                  WHERE PAIS = 'ITALIA');

ARTICULO             COD_FABRICANTE       PESO CATEGORIA  PRECIO_VENTA PRECIO_COSTO EXISTENCIAS
-------------------- -------------- ---------- ---------- ------------ ------------ -----------
Macarrones                       20          1 Primera               1 ,98                  120
Tallarines                       20          2 Primera             1,2            1         1

18.2)UPDATE ARTICULOS
     SET CATEGORIA = 'Segunda'
     WHERE CATEGORIA = 'Primera'
          AND COD_FABRICANTE = (SELECT COD_FABRICANTE
                                FROM FABRICANTES
                                WHERE PAIS = 'ITALIA');

ARTICULO             COD_FABRICANTE       PESO CATEGORIA  PRECIO_VENTA PRECIO_COSTO EXISTENCIAS
-------------------- -------------- ---------- ---------- ------------ ------------ -----------
Macarrones                       20          1 Primera               1 ,98                  120
Tallarines                       20          2 Primera             1,2            1         100










