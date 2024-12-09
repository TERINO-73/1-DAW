14.1)INSERT INTO TIENDAS
     VALUES ('4500-A', 'La Económica', 'C/La Feria s/n', 'Camas', 'SEVILLA', 44003);

1 fila insertadas.

14.2)INSERT INTO TIENDAS
     VALUES ('4501-B', 'Comestibles Peter', 'C/Sevillanas 130', 'Dos Hermanas', 'SEVILLA', 44009);

1 fila insertadas.

14.3)SELECT T.NIF, A.ARTICULO, A.COD_FABRICANTE, A.PESO, A.CATEGORIA, SYSDATE, 30
     FROM TIENDAS T, ARTICULOS A, FABRICANTES F
     WHERE A.COD_FABRICANTE = F.COD_FABRICANTE
         AND T.PROVINCIA = 'SEVILLA'
         AND F.NOMBRE = 'GALLO';

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          30
---------- -------------------- -------------- ---------- ---------- -------- ----------
4501-B     Macarrones                       25          1 Primera    06/02/24         30
4500-A     Macarrones                       25          1 Primera    06/02/24         30
4501-B     Tallarines                       25          1 Primera    06/02/24         30
4500-A     Tallarines                       25          1 Primera    06/02/24         30
4501-B     Fideos                           25          1 Segunda    06/02/24         30
4500-A     Fideos                           25          1 Segunda    06/02/24         30
4501-B     Fideos                           25          1 Primera    06/02/24         30
4500-A     Fideos                           25          1 Primera    06/02/24         30

14.4)INSERT INTO PEDIDOS
     SELECT T.NIF, A.ARTICULO, A.COD_FABRICANTE, A.PESO, A.CATEGORIA, SYSDATE, 30
     FROM TIENDAS T, ARTICULOS A, FABRICANTES F
     WHERE A.COD_FABRICANTE = F.COD_FABRICANTE
         AND T.PROVINCIA = 'SEVILLA'
         AND F.NOMBRE = 'GALLO';

8 filas insertadas.







