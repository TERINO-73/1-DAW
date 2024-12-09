1)Programa 1: Consulta con Función y Cursor
DECLARE
    TYPE t_cursor IS REF CURSOR;
    c_jugadores t_cursor;
    v_dorsal JUGADORES.DORSAL%TYPE;
    v_nombre JUGADORES.NOMBRE%TYPE;
    v_apellidos JUGADORES.APELLIDOS%TYPE;
    v_max_salario JUGADORES.SALARIO%TYPE;

    FUNCTION obtener_max_salario RETURN NUMBER IS
        v_max_salario JUGADORES.SALARIO%TYPE;
    BEGIN
        SELECT MAX(SALARIO) INTO v_max_salario FROM JUGADORES;
        RETURN v_max_salario;
    END obtener_max_salario;

BEGIN
    v_max_salario := obtener_max_salario;

    
    OPEN c_jugadores FOR
        SELECT DORSAL, NOMBRE, APELLIDOS
        FROM JUGADORES
        WHERE SALARIO = v_max_salario;

    LOOP
        FETCH c_jugadores INTO v_dorsal, v_nombre, v_apellidos;
        EXIT WHEN c_jugadores%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('DORSAL: ' || v_dorsal || ' | NOMBRE: ' || v_nombre || ' | APELLIDOS: ' || v_apellidos);
    END LOOP;

    CLOSE c_jugadores;
END;
/

2)Programa 2: Inserción con Función
DECLARE
    v_dorsal JUGADORES.DORSAL%TYPE;
    v_nombre JUGADORES.NOMBRE%TYPE := 'Carlos';
    v_apellidos JUGADORES.APELLIDOS%TYPE := 'López';
    v_salario JUGADORES.SALARIO%TYPE := 35000;
    v_duracion_contrato JUGADORES.DURACION_CONTRATO%TYPE := 3;  -- Añade una duración de contrato

    FUNCTION generar_dorsal RETURN NUMBER IS
        v_max_dorsal JUGADORES.DORSAL%TYPE;
    BEGIN
        SELECT COALESCE(MAX(DORSAL), 0) INTO v_max_dorsal FROM JUGADORES;
        RETURN v_max_dorsal + 1;
    END generar_dorsal;

BEGIN
    v_dorsal := generar_dorsal;

    INSERT INTO JUGADORES (DORSAL, NOMBRE, APELLIDOS, SALARIO, DURACION_CONTRATO)
    VALUES (v_dorsal, v_nombre, v_apellidos, v_salario, v_duracion_contrato);

    DBMS_OUTPUT.PUT_LINE('Nuevo jugador insertado con DORSAL: ' || v_dorsal || ' | NOMBRE: ' || v_nombre || ' | APELLIDOS: ' || v_apellidos || ' | SALARIO: ' || v_salario || ' | DURACION CONTRATO: ' || v_duracion_contrato);
END;
/



3)Programa 3: Actualización con Procedimiento
DECLARE
    PROCEDURE actualizar_salario(p_dorsal IN NUMBER, p_nuevo_salario IN NUMBER) IS
    BEGIN
        UPDATE JUGADORES
        SET SALARIO = p_nuevo_salario
        WHERE DORSAL = p_dorsal;
        DBMS_OUTPUT.PUT_LINE('Salario actualizado.');
        COMMIT;
    END actualizar_salario;

BEGIN
    actualizar_salario(1, 5000);
END;
/

4)Programa 4: Eliminación con Procedimiento y Control de Flujo
DECLARE
    PROCEDURE eliminar_jugador(p_dorsal IN NUMBER) IS
    BEGIN
        DELETE FROM JUGADORES WHERE DORSAL = p_dorsal;
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Jugador eliminado.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Jugador no encontrado.');
        END IF;
        COMMIT;
    END eliminar_jugador;

BEGIN
    eliminar_jugador(2);
END;
/

5)Programa 5: Cursor con Parámetros y Control de Flujo
DECLARE
    TYPE t_cursor IS REF CURSOR;
    c_jugadores t_cursor;
    v_dorsal JUGADORES.DORSAL%TYPE;
    v_nombre JUGADORES.NOMBRE%TYPE;
    v_salario JUGADORES.SALARIO%TYPE;

    PROCEDURE listar_jugadores(p_min_salario IN NUMBER) IS
    BEGIN
        OPEN c_jugadores FOR
            SELECT DORSAL, NOMBRE, SALARIO
            FROM JUGADORES
            WHERE SALARIO >= p_min_salario;

        LOOP
            FETCH c_jugadores INTO v_dorsal, v_nombre, v_salario;
            EXIT WHEN c_jugadores%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('DORSAL: ' || v_dorsal || ' | NOMBRE: ' || v_nombre || ' | SALARIO: ' || v_salario);
        END LOOP;

        CLOSE c_jugadores;
    END listar_jugadores;

BEGIN
    listar_jugadores(3000);
END;
/

6)Programa 6: Selección e Inserción con Función y Control de Flujo
DECLARE
    FUNCTION verificar_jugador(p_dorsal IN NUMBER) RETURN BOOLEAN IS
        v_existe NUMBER;
    BEGIN
        SELECT COUNT(*)
        INTO v_existe
        FROM JUGADORES
        WHERE DORSAL = p_dorsal;
        RETURN v_existe > 0;
    END verificar_jugador;

BEGIN
    IF NOT verificar_jugador(5) THEN
        INSERT INTO JUGADORES (DORSAL, NOMBRE, APELLIDOS, SALARIO, DURACION_CONTRATO)
        VALUES (5, 'Ana', 'Lopez', 3500, 3);
        DBMS_OUTPUT.PUT_LINE('Jugador insertado.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Jugador ya existe.');
    END IF;
    COMMIT;
END;
/

7)
Programa 7: Procedimiento con Cursor para Actualización
DECLARE
    TYPE t_cursor IS REF CURSOR;
    c_estadisticas t_cursor;
    v_n_partido ESTADISTICAS.N_PARTIDO%TYPE;
    v_goles ESTADISTICAS.GOLES%TYPE;

    PROCEDURE actualizar_goles(p_min_goles IN NUMBER) IS
    BEGIN
        OPEN c_estadisticas FOR
            SELECT N_PARTIDO, GOLES
            FROM ESTADISTICAS
            WHERE GOLES < p_min_goles;

        LOOP
            FETCH c_estadisticas INTO v_n_partido, v_goles;
            EXIT WHEN c_estadisticas%NOTFOUND;
            UPDATE ESTADISTICAS
            SET GOLES = p_min_goles
            WHERE N_PARTIDO = v_n_partido;
        END LOOP;

        CLOSE c_estadisticas;
        DBMS_OUTPUT.PUT_LINE('Goles actualizados.');
        COMMIT;
    END actualizar_goles;

BEGIN
    actualizar_goles(10);
END;
/

8)
Programa 8: Procedimiento para Inserción y Selección con Estructuras de Datos
DECLARE
    TYPE t_jugador IS RECORD (
        dorsal JUGADORES.DORSAL%TYPE,
        nombre JUGADORES.NOMBRE%TYPE,
        apellidos JUGADORES.APELLIDOS%TYPE,
        salario JUGADORES.SALARIO%TYPE,
        duracion_contrato JUGADORES.DURACION_CONTRATO%TYPE
    );

    v_nuevo_jugador t_jugador;

    PROCEDURE insertar_y_listar_jugador(p_jugador IN t_jugador) IS
        v_jugador t_jugador;
    BEGIN
        INSERT INTO JUGADORES (DORSAL, NOMBRE, APELLIDOS, SALARIO, DURACION_CONTRATO)
        VALUES (p_jugador.dorsal, p_jugador.nombre, p_jugador.apellidos, p_jugador.salario, p_jugador.duracion_contrato);
        
        DBMS_OUTPUT.PUT_LINE('Jugador insertado: ' || p_jugador.nombre);

        SELECT DORSAL, NOMBRE, APELLIDOS, SALARIO, DURACION_CONTRATO INTO v_jugador
        FROM JUGADORES WHERE DORSAL = p_jugador.dorsal;

        DBMS_OUTPUT.PUT_LINE('DORSAL: ' || v_jugador.dorsal || ' | NOMBRE: ' || v_jugador.nombre || ' | APELLIDOS: ' || v_jugador.apellidos || ' | SALARIO: ' || v_jugador.salario || ' | DURACION_CONTRATO: ' || v_jugador.duracion_contrato);
        COMMIT;
    END insertar_y_listar_jugador;

BEGIN
    v_nuevo_jugador.dorsal := 6;
    v_nuevo_jugador.nombre := 'Luis';
    v_nuevo_jugador.apellidos := 'Martinez';
    v_nuevo_jugador.salario := 4000;
    v_nuevo_jugador.duracion_contrato := 24; -- Asigna un valor para la duración del contrato

    insertar_y_listar_jugador(v_nuevo_jugador);
END;
/

9)
Programa 9: Eliminar con Función y Condiciones
DECLARE
    FUNCTION verificar_eliminar_entrenador(p_id IN NUMBER) RETURN BOOLEAN IS
        v_existe NUMBER := 0;
    BEGIN
        SELECT COUNT(*)
        INTO v_existe
        FROM ENTRENADOR
        WHERE N_IDENTIFICADOR = p_id;

        IF v_existe > 0 THEN
            DELETE FROM ENTRENADOR WHERE N_IDENTIFICADOR = p_id;
            DBMS_OUTPUT.PUT_LINE('Entrenador eliminado.');
            RETURN TRUE;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Entrenador no encontrado.');
            RETURN FALSE;
        END IF;
    END verificar_eliminar_entrenador;
BEGIN
    IF verificar_eliminar_entrenador(3) THEN
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
END;
/

10)Programa 10: Procedimiento con Cursor y Función para Consultas

DECLARE
    TYPE t_cursor IS REF CURSOR;
    c_jugadores t_cursor;
    v_dorsal JUGADORES.DORSAL%TYPE;
    v_nombre JUGADORES.NOMBRE%TYPE;
    v_apellidos JUGADORES.APELLIDOS%TYPE;

    FUNCTION obtener_jugadores_por_salario(p_salario_min IN NUMBER) RETURN t_cursor IS
        v_cursor t_cursor;
    BEGIN
        OPEN v_cursor FOR
            SELECT DORSAL, NOMBRE, APELLIDOS
            FROM JUGADORES
            WHERE SALARIO >= p_salario_min;
        RETURN v_cursor;
    END obtener_jugadores_por_salario;

BEGIN
    c_jugadores := obtener_jugadores_por_salario(4000);

    LOOP
        FETCH c_jugadores INTO v_dorsal, v_nombre, v_apellidos;
        EXIT WHEN c_jugadores%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('DORSAL: ' || v_dorsal || ' | NOMBRE: ' || v_nombre || ' | APELLIDOS: ' || v_apellidos);
    END LOOP;

    CLOSE c_jugadores;
END;
/



