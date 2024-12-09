4.1)SELECT DEPT_NO
FROM EMPLE
WHERE APELLIDO='SAAVEDRA';

   DEPT_NO
----------
        30

4.2)SELECT DEPT_NO
    FROM EMPLE
    WHERE OFICIO = 'EMPLEADO'
    GROUP BY DEPT_NO
    HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                        FROM EMPLE
                        WHERE OFICIO = 'EMPLEADO'
                        GROUP BY DEPT_NO);
   DEPT_NO
----------
        20

4.3)UPDATE EMPLE
SET DEPT_NO = (SELECT DEPT_NO
                FROM EMPLE
                WHERE OFICIO = 'EMPLEADO'
                GROUP BY DEPT_NO
                HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                                    FROM EMPLE
                                    WHERE OFICIO = 'EMPLEADO'
                                    GROUP BY DEPT_NO))
                                    WHERE APELLIDO='SAAVEDRA';

1 fila actualizadas.