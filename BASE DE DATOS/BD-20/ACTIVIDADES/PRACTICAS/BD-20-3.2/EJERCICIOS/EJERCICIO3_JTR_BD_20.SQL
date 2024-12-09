3.1)SELECT 2000, 'SAAVEDRA', OFICIO, DIR, SYSDATE, SALARIO*1.2, COMISION, DEPT_NO
    FROM EMPLE
    WHERE APELLIDO = 'SALA';

      2000 'SAAVEDRA' OFICIO            DIR SYSDATE    SALARIO*1.2   COMISION    DEPT_NO
---------- --------  ----------  ---------- ---------- ----------- ---------- ----------
      2000 SAAVEDRA   VENDEDOR         7698 30/01/2024        1950        650         30

3.2)INSERT INTO EMPLE
    SELECT 2000, 'SAAVEDRA', OFICIO, DIR, SYSDATE, SALARIO*1.2, COMISION, DEPT_NO
    FROM EMPLE
    WHERE APELLIDO = 'SALA';

1 fila insertadas.

