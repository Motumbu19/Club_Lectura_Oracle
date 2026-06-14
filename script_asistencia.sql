-- ============================================================
-- SCRIPT 6D: PASAR ASISTENCIA + REGISTRAR MULTIPLES AUSENTES
-- ============================================================
SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- 0. MOSTRAR GRUPOS CON DISCUSIONES ACTIVAS (GUÍA INICIAL)
-- ============================================================
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  GRUPOS CON DISCUSIONES ACTIVAS (REUNIONES PENDIENTES)');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Grupo   Club    Libro (ISBN)');
    DBMS_OUTPUT.PUT_LINE('  -----   -----   -------------------------');
    
    FOR r IN (
        SELECT DISTINCT IDGRUPO, IDCLUB, ISBN
        FROM   JPS_V_REUNION_DETALLE
        WHERE  REALIZADA = 'no'
        ORDER BY IDCLUB, IDGRUPO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idgrupo, 8)||RPAD(r.idclub, 8)||r.isbn);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

-- ============================================================
-- 1. PEDIR EL GRUPO AL USUARIO
-- ============================================================
ACCEPT v_asis_idgrupo PROMPT '>> Ingrese el ID del Grupo de la lista anterior: ';

-- ============================================================
-- 2. MOSTRAR CLUB Y REUNIONES PASADAS DEL GRUPO
-- ============================================================
DECLARE
    v_grp      NUMBER := &v_asis_idgrupo;
    v_club     NUMBER;
    v_nom_club VARCHAR2(100);
    v_cant     NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  6D - PASAR ASISTENCIA Y REGISTRAR AUSENTES');
    DBMS_OUTPUT.PUT_LINE('============================================================');

    -- Obtener a qué club pertenece el grupo
    BEGIN
        SELECT cl.IDCLUB, cl.NOMBRE INTO v_club, v_nom_club
        FROM   JPS_GRUPO_LECTURA gl
        JOIN   JPS_CLUB_LECTURA cl ON gl.IDCLUB = cl.IDCLUB
        WHERE  gl.IDGRUPO = v_grp AND ROWNUM = 1;

        DBMS_OUTPUT.PUT_LINE('  >> El Grupo ' || v_grp || ' pertenece al Club: ' || v_nom_club || ' (ID: ' || v_club || ')');
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('  [ERROR] El grupo ' || v_grp || ' no existe.');
            RETURN;
    END;

    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Reuniones pendientes (anteriores a hoy a las 17:00):');
    DBMS_OUTPUT.PUT_LINE('  Fecha        Libro                     Moderador');
    DBMS_OUTPUT.PUT_LINE('  ----------   -----------------------   -------------------');

    -- Filtrar solo las reuniones no realizadas antes de hoy a las 17:00
    FOR r IN (
        SELECT TO_CHAR(FECHA,'DD/MM/YYYY') AS fecha, ISBN, NOMBRE_MODERADOR
        FROM   JPS_V_REUNION_DETALLE
        WHERE  REALIZADA = 'no'
          AND  IDGRUPO = v_grp
          AND  FECHA < (TRUNC(SYSDATE) + 17/24)
        ORDER BY FECHA
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.fecha, 13)||RPAD(r.isbn, 26)||r.nombre_moderador);
        v_cant := v_cant + 1;
    END LOOP;

    IF v_cant = 0 THEN
        DBMS_OUTPUT.PUT_LINE('  (No hay reuniones pendientes para este criterio)');
    END IF;
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

-- ============================================================
-- 3. PEDIR FECHA DE LA REUNIÓN
-- ============================================================
ACCEPT v_asis_fecha PROMPT '>> Copie y pegue la Fecha de la reunion (DD/MM/YYYY): ';

-- ============================================================
-- 4. MOSTRAR MIEMBROS Y MARCAR LA REUNIÓN COMO REALIZADA
-- ============================================================
DECLARE
    v_grp  NUMBER := &v_asis_idgrupo;
    v_f    DATE   := TO_DATE('&v_asis_fecha','DD/MM/YYYY');
    v_club NUMBER;
    v_isbn VARCHAR2(20);
BEGIN
    SELECT IDCLUB INTO v_club FROM JPS_GRUPO_LECTURA WHERE IDGRUPO=v_grp AND ROWNUM=1;

    -- Validar que la reunión exista en esa fecha
    BEGIN
        SELECT ISBN INTO v_isbn
        FROM   JPS_CALENDARIO_MES_REUNION
        WHERE  FECHA=v_f AND IDGRUPO=v_grp AND IDCLUB=v_club;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('  ERROR: No hay reunion el '||TO_CHAR(v_f,'DD/MM/YYYY')||' para este grupo.');
        RETURN;
    END;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Lista de miembros para tomar asistencia:');
    DBMS_OUTPUT.PUT_LINE('  ID       Nombre');
    DBMS_OUTPUT.PUT_LINE('  ------   ----------------------------');
    FOR r IN (
        SELECT IDMIEMBRO, NOMBRE_MIEMBRO FROM JPS_V_GRUPO_MIEMBROS
        WHERE  IDGRUPO=v_grp AND IDCLUB=v_club ORDER BY NOMBRE_MIEMBRO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idmiembro,9)||r.nombre_miembro);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('============================================================');

    -- Marcar todos como presentes por defecto (llamada a tu SP)
    JPS_SP_PASAR_ASISTENCIA(v_f, v_grp, v_club);
EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;
/

-- ============================================================
-- 5. PEDIR LOS AUSENTES Y REGISTRARLOS
-- ============================================================
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  REGISTRO DE AUSENTES');
    DBMS_OUTPUT.PUT_LINE('  Ingrese el ID de cada miembro ausente.');
    DBMS_OUTPUT.PUT_LINE('  Ingrese 0 cuando termine (no hay mas ausentes).');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

ACCEPT v_aus1  PROMPT '>> Ausente #1  (0 si no hay mas): ';
ACCEPT v_aus2  PROMPT '>> Ausente #2  (0 si no hay mas): ';
ACCEPT v_aus3  PROMPT '>> Ausente #3  (0 si no hay mas): ';
ACCEPT v_aus4  PROMPT '>> Ausente #4  (0 si no hay mas): ';
ACCEPT v_aus5  PROMPT '>> Ausente #5  (0 si no hay mas): ';
ACCEPT v_aus6  PROMPT '>> Ausente #6  (0 si no hay mas): ';
ACCEPT v_aus7  PROMPT '>> Ausente #7  (0 si no hay mas): ';
ACCEPT v_aus8  PROMPT '>> Ausente #8  (0 si no hay mas): ';
ACCEPT v_aus9  PROMPT '>> Ausente #9  (0 si no hay mas): ';
ACCEPT v_aus10 PROMPT '>> Ausente #10 (0 si no hay mas): ';

DECLARE
    v_grp   NUMBER := &v_asis_idgrupo;
    v_f     DATE   := TO_DATE('&v_asis_fecha','DD/MM/YYYY');
    v_club  NUMBER;
    v_total NUMBER := 0;

    TYPE t_ids IS TABLE OF NUMBER;
    v_ids t_ids := t_ids(
        &v_aus1, &v_aus2, &v_aus3, &v_aus4, &v_aus5,
        &v_aus6, &v_aus7, &v_aus8, &v_aus9, &v_aus10
    );
BEGIN
    SELECT IDCLUB INTO v_club FROM JPS_GRUPO_LECTURA WHERE IDGRUPO=v_grp AND ROWNUM=1;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Procesando ausentes...');

    FOR i IN 1..v_ids.COUNT LOOP
        EXIT WHEN v_ids(i) = 0;
        BEGIN
            JPS_SP_REGISTRAR_INASISTENCIA(v_f, v_grp, v_club, v_ids(i));
            v_total := v_total + 1;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('  [Ausente '||v_ids(i)||'] ERROR: '||SQLERRM);
        END;
    END LOOP;

    IF v_total = 0 THEN
        DBMS_OUTPUT.PUT_LINE('  Sin ausentes registrados (todos asistieron).');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  Total ausentes registrados: '||v_total);
    END IF;
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;
/