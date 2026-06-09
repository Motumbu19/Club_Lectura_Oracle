
SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- DEMOSTRACIÓN FUNCIÓN 2: EDAD Y ANTIGÜEDAD UNIFICADA
-- ============================================================

-- Muestra la lista de miembros activos para orientar al usuario con datos reales
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   FUNCIÓN 2: EDAD DEL MIEMBRO Y ANTIGÜEDAD EN EL CLUB');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Miembros y clubes activos en el sistema (Sugerencias para pruebas):');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('ID MBR', 8) || RPAD('NOMBRE MIEMBRO', 25) || RPAD('ID CLUB', 8) || 'NOMBRE CLUB');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    FOR r IN (
        SELECT m.idMiembro,
               m.primer_nombre || ' ' || m.primer_apellido AS nombre_mbr,
               cl.idClub,
               cl.nombre AS nombre_club
        FROM JPS_MIEMBRO m
        JOIN JPS_HISTORICO_MEMBRESIA hm ON m.idMiembro = hm.idMiembro
        JOIN JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
        WHERE hm.estatus = 'activo'
          AND hm.fecha_fin IS NULL
        ORDER BY m.idMiembro, cl.idClub
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            RPAD(r.idMiembro, 8) ||
            RPAD(r.nombre_mbr, 25) ||
            RPAD(r.idClub, 8) ||
            r.nombre_club
        );
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- Solicita los IDs de entrada al usuario
ACCEPT v_id_miembro PROMPT '>> Ingrese el ID del miembro a consultar: ';
ACCEPT v_id_club    PROMPT '>> Ingrese el ID del club asociado:    ';

BEGIN
    DECLARE
        v_nombre_mbr     VARCHAR2(100);
        v_nombre_club    VARCHAR2(100);
        v_resultado_func VARCHAR2(200);
    BEGIN
        -- Obtener nombres descriptivos basados en los IDs ingresados
        SELECT m.primer_nombre || ' ' || m.primer_apellido
        INTO v_nombre_mbr
        FROM JPS_MIEMBRO m
        WHERE m.idMiembro = &v_id_miembro;

        SELECT cl.nombre
        INTO v_nombre_club
        FROM JPS_CLUB_LECTURA cl
        WHERE cl.idClub = &v_id_club;

        -- LLAMADA A LA FUNCIÓN UNIFICADA (Realiza ambos cálculos internamente)
        v_resultado_func := JPS_FN_EDAD_ANTIGUEDAD(&v_id_miembro, &v_id_club);

        -- Formateo y muestra de resultados en pantalla
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('   RESULTADO DE EDAD Y ANTIGÜEDAD');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [VALORES INGRESADOS]');
        DBMS_OUTPUT.PUT_LINE('  - ID Miembro : ' || &v_id_miembro || ' (' || v_nombre_mbr || ')');
        DBMS_OUTPUT.PUT_LINE('  - ID Club    : ' || &v_id_club    || ' (' || v_nombre_club || ')');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('  [CÁLCULO DESDE LA FUNCIÓN]');
        DBMS_OUTPUT.PUT_LINE('  - ' || v_resultado_func);
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('>>> El procedimiento de edad y antigüedad ha terminado.');
        DBMS_OUTPUT.PUT_LINE('============================================================');

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('============================================================');
            DBMS_OUTPUT.PUT_LINE('  [ERROR] : El ID del miembro o del club ingresado no existe.');
            DBMS_OUTPUT.PUT_LINE('            Por favor, ejecute el script de nuevo y use la tabla guía.');
            DBMS_OUTPUT.PUT_LINE('============================================================');
            DBMS_OUTPUT.PUT_LINE('>>> El procedimiento de edad y antigüedad ha terminado.');
            DBMS_OUTPUT.PUT_LINE('============================================================');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('  [ERROR INESPERADO] : ' || SQLERRM);
            DBMS_OUTPUT.PUT_LINE('============================================================');
            DBMS_OUTPUT.PUT_LINE('>>> El procedimiento de edad y antigüedad ha terminado.');
            DBMS_OUTPUT.PUT_LINE('============================================================');
    END;
END;
/