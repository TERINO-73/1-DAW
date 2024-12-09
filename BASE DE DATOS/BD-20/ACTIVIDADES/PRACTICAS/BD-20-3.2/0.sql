1)SELECT * FROM PROFESORES
COD_CENTRO        DNI APELLIDOS                      ESPECIALIDAD    
---------- ---------- ------------------------------ ----------------
        10    1112345 Martínez Salas, Fernando       INFORMÁTICA     
        10    4123005 Bueno Zarco, Elisa             MATEMÁTICAS     
        10    4122025 Montes García, M.Pilar         MATEMÁTICAS     
        15    9800990 Ramos Ruiz, Luis               LENGUA          
        15    1112345 Rivera Silvestre, Ana          DIBUJO          
        15    8660990 De Lucas Fdez, M.Angel         LENGUA          
        22    7650000 Ruiz Lafuente, Manuel          MATEMÁTICAS     
        45   43526789 Serrano Laguía, María          INFORMÁTICA     

8 filas seleccionadas. 

2)INSERT INTO PROFESORES(APELLIDS,ESPECIALIDAD,COD_CENTROS)
VALUES ('Quiroga Martín, a.Isabel','INFORMÁTICA',45);

1 fila insertadas.


COD_CENTRO        DNI APELLIDOS                      ESPECIALIDAD    
---------- ---------- ------------------------------ ----------------
        45            Quiroga Martín,A.Isabel        INFORMÁTICA     
        10    1112345 Martínez Salas, Fernando       INFORMÁTICA     
        10    4123005 Bueno Zarco, Elisa             MATEMÁTICAS     
        10    4122025 Montes García, M.Pilar         MATEMÁTICAS     
        15    9800990 Ramos Ruiz, Luis               LENGUA          
        15    1112345 Rivera Silvestre, Ana          DIBUJO          
        15    8660990 De Lucas Fdez, M.Angel         LENGUA          
        22    7650000 Ruiz Lafuente, Manuel          MATEMÁTICAS     
        45   43526789 Serrano Laguía, María          INFORMÁTICA     

9 filas seleccionadas.

3)INSERT INTO PROFESORES (APELLIDOS,ESPECIALIDAD)
VALUES('Seco Jímenez,Ernesto','LENGUA');

Error que empieza en la línea: 1 del comando :
INSERT INTO PROFESORES (APELLIDOS,ESPECIALIDAD)
VALUES('Seco Jímenez,Ernesto','LENGUA')
Informe de error -
ORA-01400: no se puede realizar una inserción NULL en ("BD_20"."PROFESORES"."COD_CENTRO")

4)INSERT INTO PROFESORES 
VALUES (22,23444800,'González Sevilla, Miguel A.','HISTORIA');

1 fila insertadas.

5)SELECT * FROM PROFESORES

COD_CENTRO        DNI APELLIDOS                      ESPECIALIDAD    
---------- ---------- ------------------------------ ----------------
        45            Quiroga Martín,A.Isabel        INFORMÁTICA     
        22   23444800 González Sevilla, Miguel A.    HISTORIA        
        10    1112345 Martínez Salas, Fernando       INFORMÁTICA     
        10    4123005 Bueno Zarco, Elisa             MATEMÁTICAS     
        10    4122025 Montes García, M.Pilar         MATEMÁTICAS     
        15    9800990 Ramos Ruiz, Luis               LENGUA          
        15    1112345 Rivera Silvestre, Ana          DIBUJO          
        15    8660990 De Lucas Fdez, M.Angel         LENGUA          
        22    7650000 Ruiz Lafuente, Manuel          MATEMÁTICAS     
        45   43526789 Serrano Laguía, María          INFORMÁTICA     

10 filas seleccionadas. 

6)UPDATE CENTROS SET DIRECCION = 'C/PilóN 13',NUM_PLAZAS =295;

5 filas actualizadas.

7)SELECT * FROM CENTROS;

COD_CENTRO T NOMBRE                         DIRECCION                  TELEFONO   NUM_PLAZAS
---------- - ------------------------------ -------------------------- ---------- ----------
        10 S IES El Quijote                 C/PilóN 13                 965-887654        295
        15 P CP Los Danzantes               C/PilóN 13                 985-112322        295
        22 S IES Planeta Tierra             C/PilóN 13                 925-443400        295
        45 P CP Manuel Hidalgo              C/PilóN 13                 926-202310        295
        50 S IES Antoñete                   C/PilóN 13                 989-406090        295

8)DELETE FROM CENTROS WHERE COD_CENTROS=50;

1 fila eliminado

Insertar un empleado de apellido garcia con numero de empleado 1111 en la tabla emple y en departamento con el mayor numero de empleado.La fecha de alta sera sera la fecha actual del sistema y el resto de datos inventados

Seleccionar el departamento con mayor numero de empleados

SELECT DEPT_NO
FROM EMPLE 
GROUP BY DEPT_NO
HAVING COUNT(*)=(SELECT MAX(COUNT(*))
                    FROM EMPLE 
                    GROUP BY DEPT_NO);
Insertar en la tabla emple con umero de empleado 2222 apellido gutierrez y el mismo salario que el empleado con numero 1111 Y DEPARTAMENTO 10


INSERT INTO EMPLE
SELECT DISTINCT 2222,'Gutierrez','VENDEDOR',7902,SYSDATE,SALARIO,NULL,10
FROM EMPLE 
WHERE EMP_NO=7782 

Un empleado con el codigo de empleado 3333 apellido molina y el mismo oficio q el empleado con menor salario

INSERT INTO EMPLE
SELECT DISTINCT 3333,'Molina',OFICIO,7902,SYSDATE,2324,NULL,10
FROM EMPLE 
WHERE SALARIO=(SELECT MIN(SALARIO)
                FROM EMPLE);

9)INSERT INTO EMPLE30
SELECT EMP_NO,APELLIDO,OFICIO,DIR,FECHA_ALT,SALARIO,COMISION,DEP_NO
FROM EMPLE 
WHERE DEPT_NO=30

6 filas insertadas.

10)INSERT INTO EMPLE30 
SELECT *
FROM EMPLE
WHERE DEPT_NO=30

6 filas insertadas.

11)INSERT INTO EMPLE
SELECT DISTINCT 1111,'Garcia','ANALISTA',7566,SYSDATE,2000,120,DEPT_NO
FROM EMPLE 
GROUP BY DEPT_NO
HAVING COUNT(*)=(SELECT MAX(COUNT(*))
                    FROM EMPLE 
                    GROUP BY DEPT_NO)

12)INSERT INTO EMPLE
SELECT 1112,'QUIROGA',OFICIO,DIR,SYSDATE,SALARIO,COMISION,DEPT_NO
FROM EMPLE
WHERE APELLIDO='GIL'

1 fila insertadas.

13)UPDATE CENTROS SET(DIRECCION,NUM_PLAZAS)=(SELECT DIRECCION,NUM_PLAZAS
FROM CENTROS
WHERE COD_CENTRO=50)
WHERE COD_CENTRO=10

1 fila actualizadas.

14)UPDATE EMPLE SET SALARIO = SALARIO/2,COMISION=0 
WHERE DEPT_NO=(SELECT DEPT_NO 
                FROM EMPLE
                GROUP BY DEPT_NO
                HAVING COUNT(*)=(SELECT MAX(COUNT(*)) 
                                FROM EMPLE 
                                GROUP BY DEPT_NO))

1 fila actualizadas.

15)UPDATE EMPLE SET APELLIDO =LOWER(APELLIDO),SALARIO=(SELECT SALARIO*2 FROM EMPLE WHERE APELLIDO = 'SANCHEZ')
WHERE DEPT_NO =(SELECT DEPT_NO FROM DEPART 
WHERE DNOMBRE = 'CONTABILIDAD')

5 filas actualizadas.


insertar un empleado con numero 4444 apellido 'diaz' en departamento de CONTABILIDAD

INSERT INTO EMPLE
SELECT DISTINCT 4444,'Díaz','VENDEDOR',7902,SYSDATE,1950,NULL,DEPT_NO
FROM EMPLE 
WHERE EMPLE.DEPT_NO= DEPART.DEPT_NO AND DEPART.DEPT_NO=EMPLE.DEPT_NO AND DEPART.DEPT_NO='CONTABILIDAD'


Borrar todos los empleados cuyo salario ea mayor que 1800 y menor de 2050

DELETE FROM EMPLE WHERE SALARIO>1600 AND SALARIO<2050

2 filas eliminado

BORRAR LOS EMPLEADOS CUYO SALARIO SEA MENOR 
QUE EL SALARIO EMPLEADO DE APELLIDO ARROYO Y MAYOR QUE EL SALARIO MEDIO DEL DEPARTAMENTO DE CONTABILIDAD
DELETE FROM EMPLE

WHERE SALARIO >(SELECT AVG(SALARIO)
                    FROM EMPLE 
                    WHERE DEPT_NO=(SELECT DEPT_NO FROM DEPART 
                                    WHERE DNOMBRE = 'CONTABILIDAD'))             
                OR
      SALARIO<(SELECT SALARIO 
                 FROM EMPLE 
                 WHERE APELLIDO ='ARROYO');

9 filas eliminado

DETERMINA LOS EMPLEADOS QUE SU SALARIO SEA MENOR QUE EL SALARIO MEDIO DE SU DEPARTAMENTO

DELETE
FROM EMPLE E

WHERE SALARIO <(SELECT AVG(SALARIO)
                    FROM EMPLE 
                    WHERE DEPT_NO=(SELECT DEPT_NO 
                                    FROM EMPLE 
                                    WHERE DEPT_NO=E.DEPT_NO
                                    GROUP BY DEPT_NO));

    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION    DEPT_NO
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
      7369 SANCHEZ    EMPLEADO         7902 17/12/1990       1040                    20
      7499 ARROYO     VENDEDOR         7698 20/02/1990       1500        390         30
      7521 SALA       VENDEDOR         7698 22/02/1991       1625        650         30
      7654 MARTIN     VENDEDOR         7698 29/09/1991       1600       1020         30
      7782 CEREZO     DIRECTOR         7839 09/06/1991       2885                    10
      7844 TOVAR      VENDEDOR         7698 08/09/1991       1350          0         30
      7876 ALONSO     EMPLEADO         7788 23/09/1991       1430                    20
      7900 JIMENO     EMPLEADO         7698 03/12/1991       1335                    30
      7934 MUÑOZ      EMPLEADO         7782 23/01/1992       1690                    10

9 filas eliminado






Borrar el personal que esté en centros de 300 plazas o menos y con menos de dos profesores.

DELETE PERSONAL
        WHERE COD_CENTRO IN (SELECT COD_CENTRO
        FROM CENTROS
        WHERE NUM_PLAZAS <= 300)
                AND COD_CENTRO IN (SELECT COD_CENTRO
                FROM PROFESORES
                GROUP BY COD_CENTRO
                HAVING COUNT(*) < 2);



























