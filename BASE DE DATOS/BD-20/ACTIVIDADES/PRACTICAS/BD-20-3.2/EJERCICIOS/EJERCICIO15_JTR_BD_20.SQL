15.1)SELECT T.NIF, A.ARTICULO, A.COD_FABRICANTE, A.PESO, A.CATEGORIA, SYSDATE, 10
     FROM TIENDAS T, ARTICULOS A
     WHERE T.PROVINCIA = 'TOLEDO'
          AND A.CATEGORIA = 'Primera';

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          10
---------- -------------------- -------------- ---------- ---------- -------- ----------
3333-A     Macarrones                       20          1 Primera    06/02/24         10
3333-A     Tallarines                       20          2 Primera    06/02/24         10
3333-A     Atún                             10          3 Primera    06/02/24         10
3333-A     Sardinillas                      10          1 Primera    06/02/24         10
3333-A     Mejillones                       10          1 Primera    06/02/24         10
3333-A     Macarrones                       25          1 Primera    06/02/24         10
3333-A     Tallarines                       25          1 Primera    06/02/24         10
3333-A     Fideos                           25          1 Primera    06/02/24         10
3333-A     Galletas Cuadradas               15          1 Primera    06/02/24         10
3333-A     Barquillos                       15          1 Primera    06/02/24         10
3333-A     Canutillos                       15          2 Primera    06/02/24         10

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          10
---------- -------------------- -------------- ---------- ---------- -------- ----------
3333-A     Leche entera                     30          1 Primera    06/02/24         10
3333-A     Leche desnat.                    30          1 Primera    06/02/24         10
3333-A     Leche semi.                      30          1 Primera    06/02/24         10
3333-A     Leche entera                     30          2 Primera    06/02/24         10
3333-A     Leche desnat.                    30          2 Primera    06/02/24         10
3333-A     Leche semi.                      30          2 Primera    06/02/24         10
3333-A     Mantequilla                      30          1 Primera    06/02/24         10
4141-B     Macarrones                       20          1 Primera    06/02/24         10
4141-B     Tallarines                       20          2 Primera    06/02/24         10
4141-B     Atún                             10          3 Primera    06/02/24         10
4141-B     Sardinillas                      10          1 Primera    06/02/24         10

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          10
---------- -------------------- -------------- ---------- ---------- -------- ----------
4141-B     Mejillones                       10          1 Primera    06/02/24         10
4141-B     Macarrones                       25          1 Primera    06/02/24         10
4141-B     Tallarines                       25          1 Primera    06/02/24         10
4141-B     Fideos                           25          1 Primera    06/02/24         10
4141-B     Galletas Cuadradas               15          1 Primera    06/02/24         10
4141-B     Barquillos                       15          1 Primera    06/02/24         10
4141-B     Canutillos                       15          2 Primera    06/02/24         10
4141-B     Leche entera                     30          1 Primera    06/02/24         10
4141-B     Leche desnat.                    30          1 Primera    06/02/24         10
4141-B     Leche semi.                      30          1 Primera    06/02/24         10
4141-B     Leche entera                     30          2 Primera    06/02/24         10

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          10
---------- -------------------- -------------- ---------- ---------- -------- ----------
4141-B     Leche desnat.                    30          2 Primera    06/02/24         10
4141-B     Leche semi.                      30          2 Primera    06/02/24         10
4141-B     Mantequilla                      30          1 Primera    06/02/24         10

15.2)INSERT INTO VENTAS
     SELECT T.NIF, A.ARTICULO, A.COD_FABRICANTE, A.PESO, A.CATEGORIA, SYSDATE, 10
     FROM TIENDAS T, ARTICULOS A
     WHERE T.PROVINCIA = 'TOLEDO'
            AND A.CATEGORIA = 'Primera';

36 filas insertadas.