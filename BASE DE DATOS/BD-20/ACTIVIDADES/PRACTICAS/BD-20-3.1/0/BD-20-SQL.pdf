SET LINESIZE 100
SET PAGESIZE 100




REM CONNECT SYSTEM/MANAGER;

DROP USER BD_20 CASCADE;

CREATE USER BD_20
            PROFILE DEFAULT
            IDENTIFIED BY BD_20
            DEFAULT TABLESPACE USERS
            TEMPORARY TABLESPACE TEMP;

GRANT CONNECT, RESOURCE, CREATE SESSION TO BD_20;

REM CONNECT BD_20/BD_20;

REM START C:\BD-20\TABLASUNI3.sql

DESC EMPLE
 Nombre                                    ┐Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 EMP_NO                                    NOT NULL NUMBER(4)
 APELLIDO                                           VARCHAR2(10)
 OFICIO                                             VARCHAR2(10)
 DIR                                                NUMBER(4)
 FECHA_ALT                                          DATE
 SALARIO                                            NUMBER(7)
 COMISION                                           NUMBER(7)
 DEPT_NO                                   NOT NULL NUMBER(2)
 
 DESC DEPART
 Nombre                                    ┐Nulo?   Tipo
 ----------------------------------------- -------- ----------------------------
 DEPT_NO                                   NOT NULL NUMBER(2)
 DNOMBRE                                            VARCHAR2(14)
 LOC                                                VARCHAR2(14)
 
  SELECT * FROM EMPLE;

    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION
---------- ---------- ---------- ---------- ---------- ---------- ----------
   DEPT_NO
----------
      7369 SANCHEZ    EMPLEADO         7902 17/12/1990       1040
        20

      7499 ARROYO     VENDEDOR         7698 20/02/1990       1500        390
        30

      7521 SALA       VENDEDOR         7698 22/02/1991       1625        650
        30


    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION
---------- ---------- ---------- ---------- ---------- ---------- ----------
   DEPT_NO
----------
      7566 JIMENEZ    DIRECTOR         7839 02/04/1991       2900
        20

      7654 MARTIN     VENDEDOR         7698 29/09/1991       1600       1020
        30

      7698 NEGRO      DIRECTOR         7839 01/05/1991       3005
        30


    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION
---------- ---------- ---------- ---------- ---------- ---------- ----------
   DEPT_NO
----------
      7782 CEREZO     DIRECTOR         7839 09/06/1991       2885
        10

      7788 GIL        ANALISTA         7566 09/11/1991       3000
        20

      7839 REY        PRESIDENTE            17/11/1991       4100
        10


    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION
---------- ---------- ---------- ---------- ---------- ---------- ----------
   DEPT_NO
----------
      7844 TOVAR      VENDEDOR         7698 08/09/1991       1350          0
        30

      7876 ALONSO     EMPLEADO         7788 23/09/1991       1430
        20

      7900 JIMENO     EMPLEADO         7698 03/12/1991       1335
        30


    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION
---------- ---------- ---------- ---------- ---------- ---------- ----------
   DEPT_NO
----------
      7902 FERNANDEZ  ANALISTA         7566 03/12/1991       3000
        20

      7934 MUÐOZ      EMPLEADO         7782 23/01/1992       1690
	  
	  
	  CON EL LINEZISE Y PAGESIZE

    EMP_NO APELLIDO   OFICIO            DIR FECHA_ALT     SALARIO   COMISION    DEPT_NO
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
      7369 SANCHEZ    EMPLEADO         7902 17/12/1990       1040                    20
      7499 ARROYO     VENDEDOR         7698 20/02/1990       1500        390         30
      7521 SALA       VENDEDOR         7698 22/02/1991       1625        650         30
      7566 JIMENEZ    DIRECTOR         7839 02/04/1991       2900                    20
      7654 MARTIN     VENDEDOR         7698 29/09/1991       1600       1020         30
      7698 NEGRO      DIRECTOR         7839 01/05/1991       3005                    30
      7782 CEREZO     DIRECTOR         7839 09/06/1991       2885                    10
      7788 GIL        ANALISTA         7566 09/11/1991       3000                    20
      7839 REY        PRESIDENTE            17/11/1991       4100                    10
      7844 TOVAR      VENDEDOR         7698 08/09/1991       1350          0         30
      7876 ALONSO     EMPLEADO         7788 23/09/1991       1430                    20
      7900 JIMENO     EMPLEADO         7698 03/12/1991       1335                    30
      7902 FERNANDEZ  ANALISTA         7566 03/12/1991       3000                    20
      7934 MUÐOZ      EMPLEADO         7782 23/01/1992       1690                    10
	  
	  SELECT * FROM DEPART;
	  
	  DEPT_NO DNOMBRE        LOC
---------- -------------- --------------
        10 CONTABILIDAD   SEVILLA
        20 INVESTIGACION  MADRID
        30 VENTAS         BARCELONA
        40 PRODUCCION     BILBAO
		
	CLEAR SCREEN //ES PARA BORRAR LA PANTALLA
	
	0.1)SELECT NOMBRE_ALUMNO,NOTA1 FROM NOTAS_ALUMNOS;

NOMBRE_ALUMNO                  NOTA1
------------------------- ----------
Alcalde GarcÝa, M. Luisa           5
Benito MartÝn, Luis                7
Casas MartÝnez, Manuel             7
Corregidor Sßnchez, Ana            6
DÝaz Sßnchez, M

0.2)SELECT NOMBRE_ALUMNO, NOTA1 FROM BD_20.NOTAS_ALUMNOS;

NOMBRE_ALUMNO                  NOTA1
------------------------- ----------
Alcalde GarcÝa, M. Luisa           5
Benito MartÝn, Luis                7
Casas MartÝnez, Manuel             7
Corregidor Sßnchez, Ana            6
DÝaz Sßnchez, Maria

0.3) SELECT A.NOMBRE_ALUMNO,A.NOTA1 FROM NOTAS_ALUMNOS A;

NOMBRE_ALUMNO                  NOTA1
------------------------- ----------
Alcalde GarcÝa, M. Luisa           5
Benito MartÝn, Luis                7
Casas MartÝnez, Manuel             7
Corregidor Sßnchez, Ana            6
DÝaz Sßnchez, Maria

0.4)SELECT * FROM NOTAS_ALUMNOS ORDER BY NOTA1/5;

NOMBRE_ALUMNO                  NOTA1      NOTA2      NOTA3
------------------------- ---------- ---------- ----------
Alcalde GarcÝa, M. Luisa           5          5          5
Corregidor Sßnchez, Ana            6          9          8
Benito MartÝn, Luis                7          6          8
Casas MartÝnez, Manuel             7          5          5
DÝaz Sßnchez, Maria

0.5)SELECT * FROM NOTAS_ALUMNOS ORDER BY NOMBRE_ALUMNO DESC;

NOMBRE_ALUMNO                  NOTA1      NOTA2      NOTA3
------------------------- ---------- ---------- ----------
DÝaz Sßnchez, Maria                                      7
Corregidor Sßnchez, Ana            6          9          8
Casas MartÝnez, Manuel             7          5          5
Benito MartÝn, Luis                7          6          8
Alcalde GarcÝa, M. Luisa           5          5          5

0.6)SELECT DEPT_NO,DNOMBRE,LOC FROM DEPART ORDER BY 2;

   DEPT_NO DNOMBRE        LOC
---------- -------------- --------------
        10 CONTABILIDAD   SEVILLA
        20 INVESTIGACION  MADRID
        40 PRODUCCION     BILBAO
        30 VENTAS         BARCELONA
		
0.7)SELECT DEPT_NO FROM EMPLE;

   DEPT_NO
----------
        20
        30
        30
        20
        30
        30
        10
        20
        10
        30
        20
        30
        20
        10

0.8)SELECT DISTINCT DEPT_NO FROM EMPLE;

   DEPT_NO
----------
        30
        20
        10


0.9)DESC EMPLE
 Nombre                                                ┐Nulo?   Tipo
 ----------------------------------------------------- -------- ------------------------------------
 EMP_NO                                                NOT NULL NUMBER(4)
 APELLIDO                                                       VARCHAR2(10)
 OFICIO                                                         VARCHAR2(10)
 DIR                                                            NUMBER(4)
 FECHA_ALT                                                      DATE
 SALARIO                                                        NUMBER(7)
 COMISION                                                       NUMBER(7)
 DEPT_NO                                               NOT NULL NUMBER(2)

0.10)DESC DEPART
 Nombre                                                ┐Nulo?   Tipo
 ----------------------------------------------------- -------- ------------------------------------
 DEPT_NO                                               NOT NULL NUMBER(2)
 DNOMBRE                                                        VARCHAR2(14)
 LOC                                                            VARCHAR2(14)

0.11)SELECT EMP_NO,APELLIDO,OFICIO,DIR,FECHA_ALT,SALARIO,COMISION,DEPT_NO FROM EMPLE;

    EMP_NO APELLIDO   OFICIO            DIR FECHA_AL    SALARIO   COMISION    DEPT_NO
---------- ---------- ---------- ---------- -------- ---------- ---------- ----------
      7369 SANCHEZ    EMPLEADO         7902 17/12/90       1040                    20
      7499 ARROYO     VENDEDOR         7698 20/02/90       1500        390         30
      7521 SALA       VENDEDOR         7698 22/02/91       1625        650         30
      7566 JIMENEZ    DIRECTOR         7839 02/04/91       2900                    20
      7654 MARTIN     VENDEDOR         7698 29/09/91       1600       1020         30
      7698 NEGRO      DIRECTOR         7839 01/05/91       3005                    30
      7782 CEREZO     DIRECTOR         7839 09/06/91       2885                    10
      7788 GIL        ANALISTA         7566 09/11/91       3000                    20
      7839 REY        PRESIDENTE            17/11/91       4100                    10
      7844 TOVAR      VENDEDOR         7698 08/09/91       1350          0         30
      7876 ALONSO     EMPLEADO         7788 23/09/91       1430                    20
      7900 JIMENO     EMPLEADO         7698 03/12/91       1335                    30
      7902 FERNANDEZ  ANALISTA         7566 03/12/91       3000                    20
      7934 MUÐOZ      EMPLEADO         7782 23/01/92       1690                    10

0.12)SELECT * FROM EMPLE;

    EMP_NO APELLIDO   OFICIO            DIR FECHA_AL    SALARIO   COMISION    DEPT_NO
---------- ---------- ---------- ---------- -------- ---------- ---------- ----------
      7369 SANCHEZ    EMPLEADO         7902 17/12/90       1040                    20
      7499 ARROYO     VENDEDOR         7698 20/02/90       1500        390         30
      7521 SALA       VENDEDOR         7698 22/02/91       1625        650         30
      7566 JIMENEZ    DIRECTOR         7839 02/04/91       2900                    20
      7654 MARTIN     VENDEDOR         7698 29/09/91       1600       1020         30
      7698 NEGRO      DIRECTOR         7839 01/05/91       3005                    30
      7782 CEREZO     DIRECTOR         7839 09/06/91       2885                    10
      7788 GIL        ANALISTA         7566 09/11/91       3000                    20
      7839 REY        PRESIDENTE            17/11/91       4100                    10
      7844 TOVAR      VENDEDOR         7698 08/09/91       1350          0         30
      7876 ALONSO     EMPLEADO         7788 23/09/91       1430                    20
      7900 JIMENO     EMPLEADO         7698 03/12/91       1335                    30
      7902 FERNANDEZ  ANALISTA         7566 03/12/91       3000                    20
      7934 MUÐOZ      EMPLEADO         7782 23/01/92       1690                    10

0.13)SELECT DNOMBRE,DEPT_NO FROM DEPART;
DNOMBRE           DEPT_NO
-------------- ----------
CONTABILIDAD           10
INVESTIGACION          20
VENTAS                 30
PRODUCCION             40

0.14)SELECT EMP_NO,APELLIDO,OFICIO,DEPT_NO FROM EMPLE WHERE DEPT_NO = 20 ORDER BY APELLIDO;

    EMP_NO APELLIDO   OFICIO        DEPT_NO
---------- ---------- ---------- ----------
      7876 ALONSO     EMPLEADO           20
      7902 FERNANDEZ  ANALISTA           20
      7788 GIL        ANALISTA           20
      7566 JIMENEZ    DIRECTOR           20
      7369 SANCHEZ    EMPLEADO           20

0.15)SELECT * FROM EMPLE WHERE OFICIO =  'ANALISTA' ORDER BY EMP_NO;

    EMP_NO APELLIDO   OFICIO            DIR FECHA_AL    SALARIO   COMISION    DEPT_NO
---------- ---------- ---------- ---------- -------- ---------- ---------- ----------
      7788 GIL        ANALISTA         7566 09/11/91       3000                    20
      7902 FERNANDEZ  ANALISTA         7566 03/12/91       3000                    20
	  
0.16)SELECT * FROM EMPLE WHERE DEPT_NO = 10 AND OFICIO = 'ANALISTA' ORDER BY APELLIDO DESC,EMP_NO DESC;

ninguna fila seleccionada

0.17)SELECT DNOMBRE "DEPARTAMENTO" , DEPT_NO "NÚMERO DEPARTAMENTO" FROM DEPART;

DEPARTAMENTO   NÚMERO DEPARTAMENTO
-------------- -------------------
CONTABILIDAD                    10
INVESTIGACION                   20
VENTAS                          30
PRODUCCION                      40

0.18)SELECT * FROM NOTAS_ALUMNOS;

NOMBRE_ALUMNO                  NOTA1      NOTA2      NOTA3
------------------------- ---------- ---------- ----------
Alcalde GarcÝa, M. Luisa           5          5          5
Benito MartÝn, Luis                7          6          8
Casas MartÝnez, Manuel             7          5          5
Corregidor Sßnchez, Ana            6          9          8
DÝaz Sßnchez, Maria                                      7

0.19) SELECT NOMBRE_ALUMNO "Nombre Alumno" , (NOTA1+NOTA2+NOTA3) /3 "Nota Media" FROM NOTAS_ALUMNOS;

Nombre Alumno             Nota Media
------------------------- ----------
Alcalde GarcÝa, M. Luisa           5
Benito MartÝn, Luis                7
Casas MartÝnez, Manuel    5,66666667
Corregidor Sßnchez, Ana   7,66666667
DÝaz Sßnchez, Maria

0.20)NOMBRE_ALUMNO
-------------------------
Benito MartÝn, Luis

0.21)SELECT APELLIDO FROM EMPLE WHERE OFICIO = 'ANALISTA' AND DEPT_NO=10;

ninguna fila seleccionada

0.22)SELECT APELLIDO FROM EMPLE WHERE APELLIDO LIKE 'J%';

APELLIDO
----------
JIMENEZ
JIMENO

0.23)SELECT APELLIDO FROM EMPLE WHERE APELLIDO LIKE 'A%O%';
APELLIDO
----------
ARROYO
ALONSO

0.24)DESC LIBRERIA
 Nombre                                                ┐Nulo?   Tipo
 ----------------------------------------------------- -------- ------------------------------------
 TEMA                                                  NOT NULL CHAR(15)
 ESTANTE                                                        CHAR(1)
 EJEMPLARES                                                     NUMBER(2)
 
0.25)SELECT * FROM LIBRERIA WHERE TEMA='LABORES';

TEMA            E EJEMPLARES
--------------- - ----------
LABORES         B         20

0.26)SELECT * FROM LIBRERIA WHERE TEMA LIKE 'LABORES';

ninguna fila seleccionada

0.27)SELECT * FROM LIBRERIA WHERE TEMA LIKE 'LABORES%';

TEMA            E EJEMPLARES
--------------- - ----------
LABORES         B         20

0.28)SELECT APELLIDO FROM EMPLE WHERE DEPT_NO IN(10,30);

APELLIDO
----------
ARROYO
SALA
MARTIN
NEGRO
CEREZO
REY
TOVAR
JIMENO
MUÐOZ

0.29)SELECT APELLIDO FROM EMPLE WHERE DEPT_NO NOT IN(10,30);
APELLIDO
----------
SANCHEZ
JIMENEZ
GIL
ALONSO
FERNANDEZ

0.30)SELECT APELLIDO FROM EMPLE WHERE OFICIO IN ('VENDEDOR','ANALISTA','EMPLEADO');

APELLIDO
----------
SANCHEZ
ARROYO
SALA
MARTIN
GIL
TOVAR
ALONSO
JIMENO
FERNANDEZ
MUÐOZ

0.31)SELECT APELLIDO FROM EMPLE WHERE OFICIO NOT IN ('VENDEDOR','ANALISTA','EMPLEADO');

APELLIDO
----------
JIMENEZ
NEGRO
CEREZO
REY