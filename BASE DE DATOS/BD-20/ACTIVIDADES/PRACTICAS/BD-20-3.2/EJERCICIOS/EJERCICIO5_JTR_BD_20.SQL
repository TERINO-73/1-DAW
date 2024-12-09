5.1)SELECT *
    FROM DEPART
    WHERE DEPT_NO IN (SELECT DISTINCT DEPT_NO
                      FROM DEPART
                      MINUS
                      SELECT DISTINCT DEPT_NO
                      FROM EMPLE);

   DEPT_NO DNOMBRE        LOC           
---------- -------------- --------------
        40 PRODUCCION     BILBAO        

5.2)DELETE
    FROM DEPART
    WHERE DEPT_NO IN (SELECT DISTINCT DEPT_NO
                      FROM DEPART
                      MINUS
                      SELECT DISTINCT DEPT_NO
                      FROM EMPLE);

1 fila eliminado