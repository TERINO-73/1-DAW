21.1)SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
     FROM ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) NOT IN 
                                                              (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                               FROM PEDIDOS) AND
                                                              (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) NOT IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
                                                               FROM VENTAS);

ARTICULO             COD_FABRICANTE       PESO CATEGORIA 
-------------------- -------------- ---------- ----------
Atún                             10          3 Tercera   
Canutillos                       15          2 Primera   
Galletas Cuadradas               15          1 Tercera   
Leche desnat.                    30          1 Primera   
Leche desnat.                    30          2 Primera   
Leche entera                     30          1 Primera   
Leche entera                     30          2 Primera   
Macarrones                       20          1 Tercera   
Mantequilla                      30          1 Segunda   
Mejillones                       10          1 Tercera   
Sardinillas                      10          1 Primera   

ARTICULO             COD_FABRICANTE       PESO CATEGORIA 
-------------------- -------------- ---------- ----------
Tallarines                       20          1 Segunda   
Tallarines                       20          2 Primera  

21.2)DELETE ARTICULOS
     WHERE (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) NOT IN (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
     FROM ARTICULOS
        MINUS
            (SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
             FROM PEDIDOS
                UNION
             SELECT ARTICULO, COD_FABRICANTE, PESO, CATEGORIA
             FROM VENTAS));

18 filas eliminado


                                                                                                  