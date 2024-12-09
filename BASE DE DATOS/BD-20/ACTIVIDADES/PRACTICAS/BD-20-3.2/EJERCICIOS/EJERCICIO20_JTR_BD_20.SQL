20.1)SELECT NIF, NOMBRE, DIRECCION, POBLACION, PROVINCIA, CODPOSTAL
     FROM TIENDAS
     WHERE NIF NOT IN (SELECT DISTINCT NIF
                        FROM VENTAS);

NIF        NOMBRE               DIRECCION            POBLACION            PROVINCIA             CODPOSTAL
---------- -------------------- -------------------- -------------------- -------------------- ----------
1111-A     Almacenes Pérez      C/Toledo, 20         Siguenza             GUADALAJARA               19104
4444-A     La Pasta Gansa       C/Alcalá, 2          Ajalvir              MADRID                    28765

20.2)DELETE TIENDAS
     WHERE NIF NOT IN (SELECT DISTINCT NIF
                       FROM VENTAS);

2 filas eliminado