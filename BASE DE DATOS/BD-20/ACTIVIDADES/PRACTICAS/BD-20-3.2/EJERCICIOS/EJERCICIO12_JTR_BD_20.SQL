12.1)SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE ARTICULO IN (SELECT ARTICULO
     FROM VENTAS
     GROUP BY ARTICULO
     HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                        FROM VENTAS
                        GROUP BY ARTICULO));

1111- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1111-A Macarrones                       25          1 Primera    06/02/24         20
1111-A Macarrones                       20          1 Tercera    06/02/24         20
1111-A Macarrones                       20          1 Primera    06/02/24         20
1111-A Atún                             10          3 Tercera    06/02/24         20
1111-A Atún                             10          3 Segunda    06/02/24         20
1111-A Atún                             10          3 Primera    06/02/24         20

12.2)INSERT INTO PEDIDOS
     SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE ARTICULO IN (SELECT ARTICULO
                        FROM VENTAS
                        GROUP BY ARTICULO
                        HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                           FROM VENTAS
                                           GROUP BY ARTICULO));


6 filas insertadas.

12.3)SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE ARTICULO IN (SELECT ARTICULO
                        FROM VENTAS
                        GROUP BY ARTICULO
                        HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                           FROM VENTAS
                                           GROUP BY ARTICULO));

1111- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1111-A Macarrones                       25          1 Primera    06/02/24         20
1111-A Macarrones                       20          1 Tercera    06/02/24         20
1111-A Macarrones                       20          1 Primera    06/02/24         20
1111-A Atún                             10          3 Tercera    06/02/24         20
1111-A Atún                             10          3 Segunda    06/02/24         20
1111-A Atún                             10          3 Primera    06/02/24         20

12.4)INSERT INTO PEDIDOS
     SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE ARTICULO IN (SELECT ARTICULO
                         FROM VENTAS
                         GROUP BY ARTICULO
                         HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                            FROM VENTAS
                                            GROUP BY ARTICULO));

6 filas insertadas.

12.5)SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           FROM VENTAS
                                                           GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                                                              FROM VENTAS
                                                                              GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA));

1111- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1111-A Canutillos                       15          2 Segunda    06/02/24         20

12.6)INSERT INTO PEDIDOS
     SELECT '1111-A', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           FROM VENTAS
                                                           GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                                           FROM VENTAS
                                                           GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA));

1 fila insertadas.



