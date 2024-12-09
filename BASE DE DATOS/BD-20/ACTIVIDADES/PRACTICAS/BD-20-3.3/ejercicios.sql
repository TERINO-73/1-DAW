1)
CREATE TABLE TIENDA 
    ( 
    NIF VARCHAR2(10) CONSTRAINT "NOTNULL(NIF)" NOT NULL,
    NOMBRE VARCHAR2(20), DIRECCION VARCHAR2(20),
    POBLACION VARCHAR2(20), 
    PROVINCIA VARCHAR2(20) CONSTRAINT "CHECKUPPER(TIE:PRO)" CHECK (PROVINCIA = UPPER(PROVINCIA)), 
    CODPOSTAL NUMBER(5), 
    CONSTRAINT "PRIMARYKEY(TIE:NIF)" PRIMARY KEY (NIF) 
    );
Table TIENDA creado.

CREATE TABLE FABRICANTE 
    ( 
    COD_FABRICANTE NUMBER(3) CONSTRAINT "NOTNULL(FAB:FAB)" NOT NULL,
    NOMBRE VARCHAR2(15) CONSTRAINT "CHECKUPPER(FAB:NOM)" CHECK (NOMBRE = UPPER(NOMBRE)),
    PAIS VARCHAR2(15) CONSTRAINT "CHECKUPPER(FAB:PAI)" CHECK (PAIS = UPPER(PAIS)),
    CONSTRAINT "PRIMARYKEY(FAB:FAB)" PRIMARY KEY (COD_FABRICANTE) 
    );
Table FABRICANTE creado.

CREATE TABLE ARTICULO 
    ( 
    ARTICULO VARCHAR2(20) CONSTRAINT "NOTNULL(ART:ART)" NOT NULL,
    COD_FABRICANTE NUMBER(3) CONSTRAINT "NOTNULL(ART:CFA)" NOT NULL,
    PESO NUMBER(3) CONSTRAINT "NOTNULL(ART:PES)" NOT NULL,
    CONSTRAINT "CHECK>0(ART:PES)" CHECK (PESO > 0),
    CATEGORIA VARCHAR2(10) CONSTRAINT "NOTNULL(ART:CAT)" NOT NULL,
    CONSTRAINT "CHECKIN(ART:CAT)" CHECK (CATEGORIA IN ('Primera', 'Segunda', 'Tercera')),
    PRECIO_VENTA NUMBER(4) CONSTRAINT "CHECK>0(ART:PVE)" CHECK (PRECIO_VENTA > 0),
    PRECIO_COSTO NUMBER(4) CONSTRAINT "CHECK>0(ART:PCO)" CHECK (PRECIO_COSTO > 0),
    EXISTENCIAS NUMBER(5), CONSTRAINT "PRIMARYKEY(ART:AFPC)" PRIMARY KEY (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA),
    CONSTRAINT "FOREIGNKEY(ART:FAB)" FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTE 
    );
Table ARTICULO creado.

CREATE TABLE PEDIDO 
    (
    NIF VARCHAR2(10) CONSTRAINT "NOTNULL(PED:NIF)" NOT NULL,
    ARTICULO VARCHAR2(20) CONSTRAINT "NOTNULL(PED:ART)" NOT NULL,
    COD_FABRICANTE NUMBER(3) CONSTRAINT "NOTNULL(PED:CFA)" NOT NULL,
    PESO NUMBER(3) CONSTRAINT "NOTNULL(PED:PES)" NOT NULL, 
    CATEGORIA VARCHAR2(10) CONSTRAINT "NOTNULL(PED:CAT)" NOT NULL, 
    CONSTRAINT "CHECKIN(PED:CAT)" CHECK (CATEGORIA IN ('Primera', 'Segunda', 'Tercera')),
    FECHA_PEDIDO DATE CONSTRAINT "NOTNULL(PED:FPE)" NOT NULL, 
    UNIDADES_PEDIDAS NUMBER(4) CONSTRAINT "CHECK>0(PED:UPE)" CHECK (UNIDADES_PEDIDAS > 0), 
    EXISTENCIAS NUMBER(5), CONSTRAINT "PRIMARYKEY(PED:NAFPCP)" PRIMARY KEY (NIF, ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, FECHA_PEDIDO),
    CONSTRAINT "FOREIGNKEY(PED:NIF)" FOREIGN KEY (NIF) REFERENCES TIENDA, 
    CONSTRAINT "FOREIGNKEY(PED:FAB)" FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTE,
    CONSTRAINT "FOREIGNKEY(PED:AFPC)" FOREIGN KEY (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) REFERENCES ARTICULO ON DELETE CASCADE 
    );
Table PEDIDO creado.

CREATE TABLE VENTA 
    ( 
    NIF VARCHAR2(10) CONSTRAINT "NOTNULL(VEN:NIF)" NOT NULL,
    ARTICULO VARCHAR2(20) CONSTRAINT "NOTNULL(VEN:ART)" NOT NULL,
    COD_FABRICANTE NUMBER(3) CONSTRAINT "NOTNULL(VEN:CFA)" NOT NULL,
    PESO NUMBER(3) CONSTRAINT "NOTNULL(VEN:PES)" NOT NULL,
    CATEGORIA VARCHAR2(10) CONSTRAINT "NOTNULL(VEN:CAT)" NOT NULL,
    CONSTRAINT "CHECKIN(VEN:CAT)" CHECK (CATEGORIA IN ('Primera', 'Segunda', 'Tercera')),
    FECHA_VENTA DATE CONSTRAINT "NOTNULL(VEN:FVE)" NOT NULL,
    UNIDADES_VENDIDAS NUMBER(4) CONSTRAINT "NOTNULL(VEN:UVE)" CHECK (UNIDADES_VENDIDAS > 0),
    CONSTRAINT "PRIMARYKEY(VEN:NAFPCV)" PRIMARY KEY (NIF, ARTICULO, COD_FABRICANTE, PESO, CATEGORIA, FECHA_VENTA),
    CONSTRAINT "FOREIGNKEY(VEN:NIF)" FOREIGN KEY (NIF) REFERENCES TIENDA,
    CONSTRAINT "FOREIGNKEY(VEN:FAB)" FOREIGN KEY (COD_FABRICANTE) REFERENCES FABRICANTE, 
    CONSTRAINT "FOREIGNKEY(VEN:AFPC)" FOREIGN KEY (ARTICULO, COD_FABRICANTE, PESO, CATEGORIA) REFERENCES ARTICULO ON DELETE CASCADE
    );
Table VENTA creado.

2)
ALTER TABLE TIENDA 
ADD CONSTRAINT "CHECKINITCAP(NOMBRE)" 
CHECK (NOMBRE = INITCAP(NOMBRE));

Table TIENDA alterado.

3)
SELECT CONSTRAINT_NAME, TABLE_NAME, CONSTRAINT_TYPE 
FROM USER_CONSTRAINTS 
WHERE TABLE_NAME IN ('TIENDA','FABRICANTE','ARTICULO','PEDIDO','VENTA');

CONSTRAINT_NAME                TABLE_NAME                     C
------------------------------ ------------------------------ -
NOTNULL(ART:ART)               ARTICULO                       C
NOTNULL(ART:CFA)               ARTICULO                       C
NOTNULL(ART:PES)               ARTICULO                       C
NOTNULL(ART:CAT)               ARTICULO                       C
CHECK>0(ART:PES)               ARTICULO                       C
CHECKIN(ART:CAT)               ARTICULO                       C
CHECK>0(ART:PVE)               ARTICULO                       C
CHECK>0(ART:PCO)               ARTICULO                       C
PRIMARYKEY(ART:AFPC)           ARTICULO                       P
FOREIGNKEY(ART:FAB)            ARTICULO                       R
NOTNULL(FAB:FAB)               FABRICANTE                     C

CONSTRAINT_NAME                TABLE_NAME                     C
------------------------------ ------------------------------ -
CHECKUPPER(FAB:NOM)            FABRICANTE                     C
CHECKUPPER(FAB:PAI)            FABRICANTE                     C
PRIMARYKEY(FAB:FAB)            FABRICANTE                     P
NOTNULL(PED:NIF)               PEDIDO                         C
NOTNULL(PED:ART)               PEDIDO                         C
NOTNULL(PED:CFA)               PEDIDO                         C
NOTNULL(PED:PES)               PEDIDO                         C
NOTNULL(PED:CAT)               PEDIDO                         C
NOTNULL(PED:FPE)               PEDIDO                         C
CHECKIN(PED:CAT)               PEDIDO                         C
CHECK>0(PED:UPE)               PEDIDO                         C

CONSTRAINT_NAME                TABLE_NAME                     C
------------------------------ ------------------------------ -
PRIMARYKEY(PED:NAFPCP)         PEDIDO                         P
FOREIGNKEY(PED:NIF)            PEDIDO                         R
FOREIGNKEY(PED:FAB)            PEDIDO                         R
FOREIGNKEY(PED:AFPC)           PEDIDO                         R
CHECKINITCAP(NOMBRE)           TIENDA                         C
NOTNULL(NIF)                   TIENDA                         C
CHECKUPPER(TIE:PRO)            TIENDA                         C
PRIMARYKEY(TIE:NIF)            TIENDA                         P
NOTNULL(VEN:PES)               VENTA                          C
NOTNULL(VEN:CAT)               VENTA                          C
NOTNULL(VEN:FVE)               VENTA                          C

CONSTRAINT_NAME                TABLE_NAME                     C
------------------------------ ------------------------------ -
CHECKIN(VEN:CAT)               VENTA                          C
NOTNULL(VEN:UVE)               VENTA                          C
PRIMARYKEY(VEN:NAFPCV)         VENTA                          P
FOREIGNKEY(VEN:NIF)            VENTA                          R
FOREIGNKEY(VEN:FAB)            VENTA                          R
FOREIGNKEY(VEN:AFPC)           VENTA                          R
NOTNULL(VEN:NIF)               VENTA                          C
NOTNULL(VEN:ART)               VENTA                          C
NOTNULL(VEN:CFA)               VENTA                          C

42 filas seleccionadas. 

4)
ALTER TABLE PEDIDOS 
MODIFY (UNIDADES_PEDIDAS NUMBER(6));

Table PEDIDOS alterado.

ALTER TABLE VENTAS 
MODIFY (UNIDADES_VENDIDAS NUMBER(6));

Table VENTAS alterado.

5)
ALTER TABLE TIENDA 
ADD CONSTRAINT "CHECK!=(PROVINCIA)" 
CHECK (PROVINCIA != 'TOLEDO');

Table TIENDA alterado.

6)

ALTER TABLE PEDIDOS 
ADD (PVP NUMBER(4));

Table PEDIDOS alterado.

ALTER TABLE VENTAS 
ADD (PVP NUMBER(4));

Table VENTAS alterado.

7)

CREATE VIEW CONSERJES (NOMBRE, CONSERJE) AS SELECT C.NOMBRE, P.APELLIDOS 
FROM CENTROS C, PERSONAL P 
WHERE C.COD_CENTRO = P.COD_CENTRO 
AND FUNCION = 'CONSERJE';

View CONSERJES creado.

8)

ALTER TABLE PROFESORES 
ADD (COD_ASIG NUMBER(2));

Table PROFESORES alterado.

9)

CREATE TABLE TASIG ( COD_ASIG NUMBER(2), NOM_ASIG VARCHAR2(2) );

Table TASIG creado.

10)

ALTER TABLE TASIG 
ADD CONSTRAINT "PRIMARYKEY(COD_ASIG)" PRIMARY KEY (COD_ASIG);

Table TASIG alterado.

11)

ALTER TABLE PROFESORES 
ADD CONSTRAINT "FOREIGNKEY(COD_ASIG)" FOREIGN KEY (COD_ASIG) REFERENCES TASIG;

Table PROFESORES alterado.

13)

SELECT TABLE_NAME, CONSTRAINT_NAME, COLUMN_NAME 
FROM USER_CONS_COLUMNS 
WHERE TABLE_NAME IN ('TASIG','PROFESORES');

TABLE_NAME                     CONSTRAINT_NAME
------------------------------ ------------------------------
COLUMN_NAME                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PROFESORES                     SYS_C004793                    
COD_CENTRO                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        

TASIG                          PRIMARYKEY(COD_ASIG)           
COD_ASIG                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          

PROFESORES                     FOREIGNKEY(COD_ASIG)           
COD_ASIG                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          


14)

DROP TABLE TASIG CASCADE CONSTRAINT;

Table TASIG borrado.

15)

CREATE TABLE PROFES (COD_CENTRO, DNI, APELLIDOS, ESPECIALIDAD) 
AS 
SELECT COD_CENTRO, DNI, APELLIDOS, ESPECIALIDAD 
    FROM PROFESORES;

Table PROFES creado.


