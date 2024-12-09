22.1)SELECT *
     FROM PEDIDOS P, FABRICANTES F
     WHERE P.COD_FABRICANTE = F.COD_FABRICANTE
            AND P.CATEGORIA = 'Primera'
            AND F.PAIS = 'BELGICA';

NIF        ARTICULO             COD_FABRICANTE       PESO CATEGORIA  FECHA_PE UNIDADES_PEDIDAS COD_FABRICANTE NOMBRE          PAIS           
---------- -------------------- -------------- ---------- ---------- -------- ---------------- -------------- --------------- ---------------
1111-A     Barquillos                       15          1 Primera    20/02/06               10             15 LU              BELGICA        
3333-A     Galletas Cuadradas               15          1 Primera    20/11/06                6             15 LU              BELGICA        

22.2)DELETE PEDIDOS
     WHERE CATEGORIA = 'Primera'
     AND COD_FABRICANTE = (SELECT COD_FABRICANTE
                           FROM FABRICANTES
                           WHERE PAIS = 'BELGICA');

2 filas eliminado