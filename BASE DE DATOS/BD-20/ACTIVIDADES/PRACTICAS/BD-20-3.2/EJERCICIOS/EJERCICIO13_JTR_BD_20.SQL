13.1)INSERT INTO TIENDAS
     VALUES ('1010-C', 'La Cesta', 'C/Juan Mazo 30', 'Alcalá', 'MADRID', 28809);

1 fila insertadas.

13.2)SELECT '1010-C', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS;

1010- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1010-C Macarrones                       20          1 Primera    06/02/24         20
1010-C Tallarines                       20          2 Primera    06/02/24         20
1010-C Tallarines                       20          1 Segunda    06/02/24         20
1010-C Macarrones                       20          1 Tercera    06/02/24         20
1010-C Atún                             10          3 Primera    06/02/24         20
1010-C Atún                             10          3 Segunda    06/02/24         20
1010-C Atún                             10          3 Tercera    06/02/24         20
1010-C Sardinillas                      10          1 Primera    06/02/24         20
1010-C Sardinillas                      10          1 Segunda    06/02/24         20
1010-C Sardinillas                      10          1 Tercera    06/02/24         20
1010-C Mejillones                       10          1 Tercera    06/02/24         20

1010- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1010-C Mejillones                       10          1 Primera    06/02/24         20
1010-C Macarrones                       25          1 Primera    06/02/24         20
1010-C Tallarines                       25          1 Primera    06/02/24         20
1010-C Fideos                           25          1 Segunda    06/02/24         20
1010-C Fideos                           25          1 Primera    06/02/24         20
1010-C Galletas Cuadradas               15          1 Primera    06/02/24         20
1010-C Galletas Cuadradas               15          1 Segunda    06/02/24         20
1010-C Galletas Cuadradas               15          1 Tercera    06/02/24         20
1010-C Barquillos                       15          1 Primera    06/02/24         20
1010-C Barquillos                       15          1 Segunda    06/02/24         20
1010-C Canutillos                       15          2 Primera    06/02/24         20

1010- ARTICULO             COD_FABRICANTE       PESO CATEGORIA  SYSDATE          20
------ -------------------- -------------- ---------- ---------- -------- ----------
1010-C Canutillos                       15          2 Segunda    06/02/24         20
1010-C Leche entera                     30          1 Primera    06/02/24         20
1010-C Leche desnat.                    30          1 Primera    06/02/24         20
1010-C Leche semi.                      30          1 Primera    06/02/24         20
1010-C Leche entera                     30          2 Primera    06/02/24         20
1010-C Leche desnat.                    30          2 Primera    06/02/24         20
1010-C Leche semi.                      30          2 Primera    06/02/24         20
1010-C Mantequilla                      30          1 Primera    06/02/24         20
1010-C Mantequilla                      30          1 Segunda    06/02/24         20

13.3)INSERT INTO PEDIDOS
     SELECT '1010-C', ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, SYSDATE, 20
     FROM ARTICULOS;

31 filas insertadas.














