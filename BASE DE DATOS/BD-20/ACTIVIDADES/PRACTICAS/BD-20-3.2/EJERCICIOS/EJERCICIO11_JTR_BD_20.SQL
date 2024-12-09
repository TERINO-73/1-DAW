11.1)SELECT 'Yogur Fresa', COD_FABRICANTE, 1, 'Primera', 120, 100, 190
     FROM FABRICANTES
     WHERE PAIS = 'FRANCIA';

'YOGURFRESA COD_FABRICANTE          1 'PRIMER        120        100        190
----------- -------------- ---------- ------- ---------- ---------- ----------
Yogur Fresa             30          1 Primera        120        100        190

11.2)INSERT INTO ARTICULOS
     SELECT 'Yogur Fresa', COD_FABRICANTE, 1, 'Primera', 120, 100, 190
     FROM FABRICANTES
     WHERE PAIS = 'FRANCIA';

1 fila insertadas.

11.3)SELECT T.NIF, 'Yogur Fresa', F.COD_FABRICANTE, 1, 'Primera', SYSDATE, 5
     FROM TIENDAS T, FABRICANTES F
     WHERE F.PAIS = 'FRANCIA';

NIF        'YOGURFRESA COD_FABRICANTE          1 'PRIMER SYSDATE           5
---------- ----------- -------------- ---------- ------- -------- ----------
1111-A     Yogur Fresa             30          1 Primera 01/02/24          5
5555-B     Yogur Fresa             30          1 Primera 01/02/24          5
2222-A     Yogur Fresa             30          1 Primera 01/02/24          5
4444-A     Yogur Fresa             30          1 Primera 01/02/24          5
3333-A     Yogur Fresa             30          1 Primera 01/02/24          5
4141-B     Yogur Fresa             30          1 Primera 01/02/24          5

11.4)INSERT INTO PEDIDOS
     SELECT T.NIF, 'Yogur Fresa', F.COD_FABRICANTE, 1, 'Primera', SYSDATE, 5
     FROM TIENDAS T, FABRICANTES F
     WHERE F.PAIS = 'FRANCIA';

6 filas insertadas.