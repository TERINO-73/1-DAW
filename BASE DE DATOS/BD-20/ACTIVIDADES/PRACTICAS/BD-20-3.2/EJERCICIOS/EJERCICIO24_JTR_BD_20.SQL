24.1)SELECT NIF,ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, FECHA_PEDIDO, UNIDADES_PEDIDAS
     FROM PEDIDOS
     WHERE NIF='5555-B' AND
           FECHA_PEDIDO = (SELECT MAX(FECHA_PEDIDO)
                           FROM PEDIDOS
                           WHERE NIF = '5555-B');

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  FECHA_PEDI UNIDADES_PEDIDAS
---------- -------------------- -------------- ---------- ---------- ---------- ----------------
5555-B     Galletas Cuadradas               15          1 Segunda    20/06/2006               15

24.2)UPDATE PEDIDOS
     SET UNIDADES_PEDIDAS = UNIDADES_PEDIDAS - 1
     WHERE NIF='5555-B' AND
           FECHA_PEDIDO = (SELECT MAX(FECHA_PEDIDO)
                           FROM PEDIDOS
                           WHERE NIF = '5555-B');

1 fila actualizadas.