1)BEGIN
 DBMS_OUTPUT.PUT_LINE ('Hola Mundo');
END;
/
2)DECLARE
    fecha DATE;
  BEGIN
    SELECT sysdate INTO fecha FROM dual;
    dbms_output.put_line
    (
    to_CHAR(fecha,'day", "dd" de "month" de "yyyy", a las "hh24:mi:ss')
    );
  END;
  / 
3)DECLARE
    fecha DATE;
  BEGIN
    DBMS_OUTPUT.PUT_LINE ('Salida de información');
    SELECT SYSDATE INTO fecha FROM DUAL;
    DBMS_OUTPUT.PUT_LINE ('Fecha: ' || fecha);
  END;
/
4)<<fecha>>
    DECLARE
        fecha DATE;
    BEGIN
        DBMS_OUTPUT.PUT_LINE ('Salida de información');
    SELECT SYSDATE INTO fecha FROM DUAL;
        DBMS_OUTPUT.PUT_LINE ('Fecha: ' || fecha);
    END fecha;
    /
5)SET SERVEROUTPUT ON
    DECLARE
        A NUMBER := NULL;
        B NUMBER := 2;
        C NUMBER;
    BEGIN
        IF A IS NULL OR B IS NULL THEN
            C := 3;
        ELSIF A < B THEN
            C := 1;
        ELSE
            C := 2;
        END IF;
            DBMS_OUTPUT.PUT_LINE ('El valor de C es ' || C);
    END;
    /
6)DECLARE
    nota NUMBER(2);
  BEGIN
    nota := 7;
    IF nota = 10 OR nota = 9 THEN
        DBMS_OUTPUT.PUT_LINE('Sobresaliente');
    ELSIF nota = 8 OR nota = 7 THEN
        DBMS_OUTPUT.PUT_LINE('Notable');
    ELSIF nota = 6 THEN
        DBMS_OUTPUT.PUT_LINE('Bien');
    ELSIF nota = 5 THEN
        DBMS_OUTPUT. PUT_LINE('Suficiente');
    ELSIF nota < 5 AND nota >=0 THEN
        DBMS_OUTPUT.PUT_LINE('Insuficiente');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Nota no válida');
    END IF;
  END;
  /
7)
  DECLARE
    nota NUMBER(2);
  BEGIN
    nota := 7;
    CASE nota
    WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('Sobresaliente');
    WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('Sobresaliente');
    WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('Notable');
    WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Notable');
    WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Bien');
    WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Suficiente');
    WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Insuficiente');
    WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Insuficiente');
    WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Insuficiente');
    WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Insuficiente');
    WHEN 0 THEN DBMS_OUTPUT.PUT_LINE('Insuficiente');
    ELSE DBMS_OUTPUT.PUT_LINE('Nota no válida');
    END CASE;
  END;
  /
8)
DECLARE
    i BINARY_INTEGER := 1;
BEGIN
    LOOP
        INSERT INTO Tabla_Temp VALUES (i*10);
        EXIT WHEN i>=10;
        i:= i+1;
    END LOOP;
END;
/
9)
DECLARE
    i BINARY_INTEGER := 1;
BEGIN
    WHILE i<=10 LOOP
        INSERT INTO Tabla_Temp VALUES (i*10);
        i:= i+1;
    END LOOP;
END;
/
10)
BEGIN
 FOR i IN 1..10 LOOP
    INSERT INTO Tabla_Temp VALUES (i*10);
 END LOOP;
END;
/
11)
CREATE OR REPLACE
    PROCEDURE muestra_fecha IS
    fecha DATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE ('Salida de información');
    SELECT SYSDATE INTO fecha FROM DUAL;
        DBMS_OUTPUT.PUT_LINE ('Fecha: ' || fecha);
END muestra_fecha;
/
12)
CREATE OR REPLACE
    FUNCTION SUMA (NUM1 NUMBER, NUM2 NUMBER)
        RETURN NUMBER
    IS
    BEGIN
        RETURN NUM1+NUM2;
END SUMA;
 / 
13)
CREATE OR REPLACE
    PROCEDURE TAMHOTEL (cod Hotel.ID%TYPE)
AS
    NumHabitaciones Hotel.Nhabs%TYPE;
    Comentario VARCHAR2(40);
BEGIN

    SELECT Nhabs INTO NumHabitaciones
        FROM Hotel WHERE ID=cod;
            IF NumHabitaciones IS NULL THEN
                Comentario := 'de tamaño indeterminado';
            ELSIF NumHabitaciones < 50 THEN
                Comentario := 'Pequeño';
            ELSIF NumHabitaciones < 100 THEN
                Comentario := 'Mediano';
            ELSE
                Comentario := 'Grande';
            END IF;

 DBMS_OUTPUT.PUT_LINE ('El hotel con ID '|| cod ||' es '|| Comentario);
END;
/
14)
DECLARE
    TYPE RegPersona IS RECORD
        (
        CODIGO NUMBER(2),
        NOMBRE VARCHAR2(40),
        EDAD NUMBER
        );
    Pepe RegPersona;
    BEGIN
        Pepe.CODIGO := 1;
        Pepe.NOMBRE := 'Pepe';
        Pepe.EDAD := 30;
        DBMS_OUTPUT.PUT_LINE ('Código: ' || Pepe.CODIGO);
        DBMS_OUTPUT.PUT_LINE ('Nombre: ' || Pepe.NOMBRE);
        DBMS_OUTPUT.PUT_LINE ('Edad : ' || Pepe.EDAD);
    INSERT INTO PERSONAS VALUES Pepe;
END;
/
15)
DECLARE
    TYPE RegHotel IS RECORD
        (
        COD Hotel.ID%TYPE,
        HABS Hotel.NHABS%TYPE
        );
    Hotel99 RegHotel;
BEGIN
    SELECT ID, NHABS INTO Hotel99 FROM HOTEL WHERE ID=99;
        DBMS_OUTPUT.PUT_LINE ('Cód. Hotel : ' || Hotel99.COD);
        DBMS_OUTPUT.PUT_LINE ('Habitaciones: ' || Hotel99.HABS);
END;
/
16)
DECLARE
    Hotel99 Hotel%ROWTYPE;
BEGIN
    SELECT * INTO Hotel99 FROM HOTEL WHERE ID=99;
        DBMS_OUTPUT.PUT_LINE ('Cód. Hotel : ' || Hotel99.ID);
        DBMS_OUTPUT.PUT_LINE ('Habitaciones: ' || Hotel99.NHABS);
END;
/
17)
DECLARE
    Hotel99 Hotel%ROWTYPE;
BEGIN
    SELECT * INTO Hotel99 
        FROM HOTEL WHERE ID=99; 
            DBMS_OUTPUT.PUT_LINE ('Cód. Hotel : ' || Hotel99.ID);
            DBMS_OUTPUT.PUT_LINE ('Habitaciones: ' || Hotel99.NHABS);
END;
/
18)
DECLARE
    CURSOR Hoteles IS 
    SELECT * FROM Hotel; 
BEGIN
    FOR registro IN Hoteles 
        LOOP
            DBMS_OUTPUT.PUT_LINE ('Cód. Hotel : ' || registro.ID);
            DBMS_OUTPUT.PUT_LINE ('Habitaciones: ' || registro.NHABS);
            DBMS_OUTPUT.PUT_LINE (' ---- ');
        END LOOP;
END;
/
19)
DECLARE
 CURSOR Hoteles IS 
 SELECT * FROM Hotel; 
 registro Hoteles%ROWTYPE; 
BEGIN
    OPEN Hoteles;
        LOOP
            FETCH Hoteles INTO registro; 
            EXIT WHEN Hoteles%NOTFOUND; 
                DBMS_OUTPUT.PUT_LINE ('Cód. Hotel : ' || registro.ID);
                DBMS_OUTPUT.PUT_LINE ('Habitaciones: ' || registro.NHABS);
                DBMS_OUTPUT.PUT_LINE (' ---- ');
        END LOOP;
    CLOSE Hoteles; 
END;
/
20)DECLARE
    CURSOR c IS
    SELECT nomem, numem, salar FROM empleados ORDER BY salar DESC;
    nombre CHAR(10);
    numero NUMBER(3);
    salario NUMBER(7,2);
BEGIN
    OPEN c;
        LOOP
        FETCH c INTO nombre, numero, salario;
            EXIT WHEN (c%ROWCOUNT > 5) OR (c%NOTFOUND);
                DBMS_OUTPUT.PUT_LINE (c%ROWCOUNT
                    || ' - ' || salario || ' - ' || numero || ' - ' || nombre);
        END LOOP;
    CLOSE c;
END;
21)
CREATE OR REPLACE
    PACKAGE BODY aritmetica IS
    PROCEDURE mostrar_info IS
BEGIN
     DBMS_OUTPUT.PUT_LINE
        ('Paquete de operaciones aritméticas. Versión ' || version);
    END mostrar_info;
    FUNCTION suma (a NUMBER, b NUMBER) RETURN NUMBER IS
BEGIN
    RETURN (a+b);
END suma;
    FUNCTION resta (a NUMBER, b NUMBER) RETURN NUMBER IS
BEGIN
    RETURN (a-b);
END resta;
    FUNCTION multiplica (a NUMBER, b NUMBER) RETURN NUMBER IS
BEGIN
    RETURN (a*b);
END multiplica;
    FUNCTION divide (a NUMBER, b NUMBER) RETURN NUMBER IS
BEGIN
    RETURN (a/b);
END divide;
END aritmetica;
/
22)
DECLARE
    num1 NUMBER:= 2;
    num2 NUMBER:= 5;
    resultado NUMBER;
BEGIN
    ARITMETICA.MOSTRAR_INFO;
    SELECT ARITMETICA.SUMA(num1,num2) INTO resultado FROM DUAL;
        DBMS_OUTPUT.PUT_LINE
            ('La suma de ' || num1 ||' y '|| num2 ||' es '|| resultado);
    SELECT ARITMETICA.RESTA(num1,num2) INTO resultado FROM DUAL;
        DBMS_OUTPUT.PUT_LINE
            ('La resta de ' || num1 ||' y '|| num2 ||' es '|| resultado);
END;
/

