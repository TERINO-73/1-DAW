17.1)SELECT NIF, NOMBRE, DIRECCION, POBLACION, PROVINCIA, CODPOSTAL
     FROM TIENDAS
     WHERE NIF = '1111-A';

NIF        NOMBRE               DIRECCION            POBLACION            PROVINCIA             CODPOSTAL
---------- -------------------- -------------------- -------------------- -------------------- ----------
1111-A     Almacenes Pérez      C/Toledo, 20         Siguenza             GUADALAJARA               19104

17.2)SELECT NIF, NOMBRE, DIRECCION, POBLACION, PROVINCIA, CODPOSTAL
     FROM TIENDAS
     WHERE NIF = '2222-A';

NIF        NOMBRE               DIRECCION            POBLACION            PROVINCIA             CODPOSTAL
---------- -------------------- -------------------- -------------------- -------------------- ----------
2222-A     Comestibles Rodolfo  C/ del Val s/n       Alcalá de Henares    MADRID                    28804

17.3)UPDATE TIENDAS
SET (NIF, NOMBRE, DIRECCION, POBLACION, PROVINCIA, CODPOSTAL) = (SELECT NIF, NOMBRE, DIRECCION, POBLACION, PROVINCIA, CODPOSTAL
                                                                 FROM TIENDAS
                                                                 WHERE NIF = '2222-A')

6 filas actualizadas.