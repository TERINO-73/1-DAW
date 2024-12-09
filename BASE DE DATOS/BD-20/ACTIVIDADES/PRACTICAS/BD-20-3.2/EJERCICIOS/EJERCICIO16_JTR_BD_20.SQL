16.1)SELECT '5555-B',ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 10
     FROM ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           FROM VENTAS
                                                           GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           HAVING SUM(UNIDADES_VENDIDAS) > 30);

5555- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          10
------ -------------------- -------------- ---------- ---------- -------- ----------
5555-B Atún                             10          3 Primera    06/02/24         10
5555-B Macarrones                       20          1 Primera    06/02/24         10
5555-B Leche semi.                      30          2 Primera    06/02/24         10

16.2)INSERT INTO PEDIDOS
     SELECT '5555-B',ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 10
     FROM ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           FROM VENTAS
                                                           GROUP BY ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                           HAVING SUM(UNIDADES_VENDIDAS) > 30);

3 filas insertadas.