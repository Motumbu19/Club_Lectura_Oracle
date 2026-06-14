-- ============================================================
-- SCRIPT 6C: ASIGNAR MODERADOR
-- Deduce automáticamente el IDCLUB y el ISBN en discusión
-- ============================================================

SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  6C - ASIGNAR MODERADOR A UNA DISCUSION');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/
 
-- Única captura inicial: Ahora es 100% interactivo con solo el Grupo
ACCEPT v_mod_idgrupo PROMPT '>> ID del grupo al que asignar moderador: '
 
DECLARE
    v_grp    NUMBER := &v_mod_idgrupo;
    v_isbn   VARCHAR2(20);
    v_club   NUMBER;
    v_tipo   VARCHAR2(10);
    v_nom_cl VARCHAR2(100);
    v_titulo VARCHAR2(200);
    v_cnt    NUMBER;
BEGIN
    -- 1. Deducir el club, tipo de grupo y nombre automáticamente
    SELECT gl.IDCLUB, gl.TIPO, cl.NOMBRE
    INTO   v_club, v_tipo, v_nom_cl
    FROM   JPS_GRUPO_LECTURA gl
    JOIN   JPS_CLUB_LECTURA  cl ON gl.IDCLUB = cl.IDCLUB
    WHERE  gl.IDGRUPO = v_grp AND ROWNUM = 1;
 
    -- 2. DEDUCIR EL ISBN: Buscar qué libro tiene un calendario activo/pendiente en este grupo
    BEGIN
        SELECT ISBN, COUNT(*)
        INTO   v_isbn, v_cnt
        FROM   JPS_CALENDARIO_MES_REUNION
        WHERE  IDGRUPO = v_grp 
          AND  IDCLUB = v_club 
          AND  REALIZADA = 'no'
        GROUP BY ISBN
        FETCH FIRST 1 ROWS ONLY; -- Trae el libro configurado en el Script 6B
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('  ERROR: No se encontraron reuniones pendientes para el grupo '||v_grp||'.');
            DBMS_OUTPUT.PUT_LINE('         Por favor, genere primero el calendario mensual usando el Script 6B.');
            RETURN;
    END;
 
    -- Obtener el título del libro detectado automáticamente
    SELECT TITULO_ORIGINAL INTO v_titulo FROM JPS_LIBRO WHERE ISBN = v_isbn;
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Club detectado : '||v_nom_cl||' (ID:'||v_club||')');
    DBMS_OUTPUT.PUT_LINE('  Grupo ingresado: '||v_grp||' ('||v_tipo||')');
    DBMS_OUTPUT.PUT_LINE('  Libro detectado: '||v_titulo||' ['||v_isbn||']');
    DBMS_OUTPUT.PUT_LINE('  Sesiones pendientes en agenda: '||v_cnt);
    DBMS_OUTPUT.PUT_LINE(' ');
 
    IF v_tipo = 'niño' THEN
        DBMS_OUTPUT.PUT_LINE('  NOTA: Grupo de ninos -> el moderador debe ser un ADULTO del club.');
        DBMS_OUTPUT.PUT_LINE('  Adultos DISPONIBLES en este club:');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  Miembros DISPONIBLES de este grupo:');
    END IF;
 
    DBMS_OUTPUT.PUT_LINE('  ID      Nombre                    Tipo       Disponibilidad');
    DBMS_OUTPUT.PUT_LINE('  ------  ------------------------  --------  --------------');
 
    FOR r IN (
        SELECT v.IDMIEMBRO, v.NOMBRE_MIEMBRO, v.TIPO_MIEMBRO, v.DISPONIBILIDAD
        FROM   JPS_V_MODERADORES_DISPONIBLES v
        WHERE  v.IDCLUB = v_club
        AND    v.DISPONIBILIDAD = 'DISPONIBLE'
        AND    (
            -- Para adultos/jóvenes: debe ser miembro activo del mismo grupo
            (v_tipo != 'niño' AND v.IDGRUPO = v_grp)
            OR
            -- Para niños: cualquier adulto del mismo club tutor
            (v_tipo = 'niño' AND v.TIPO_MIEMBRO = 'adulto')
        )
        ORDER BY v.NOMBRE_MIEMBRO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idmiembro,8)||RPAD(r.nombre_miembro,26)||
            RPAD(r.tipo_miembro,10)||r.disponibilidad);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('  (Si la lista esta vacia, todos los integrantes viables ya moderan otra lectura)');
    DBMS_OUTPUT.PUT_LINE('============================================================');
 
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('  ERROR: El grupo '||v_grp||' no existe en los registros.');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;
/
 
-- Segunda y última ventana: Asignar el ID del moderador elegido de la lista en pantalla
ACCEPT v_mod_idmbr PROMPT '>> ID del miembro que sera moderador: '
 
DECLARE
    v_grp    NUMBER := &v_mod_idgrupo;
    v_mod    NUMBER := &v_mod_idmbr;
    v_isbn   VARCHAR2(20);
    v_club   NUMBER;
BEGIN
    -- Volver a identificar Club e ISBN en el bloque final de ejecución de manera limpia
    SELECT IDCLUB INTO v_club FROM JPS_GRUPO_LECTURA WHERE IDGRUPO = v_grp AND ROWNUM = 1;
    
    SELECT ISBN INTO v_isbn 
    FROM JPS_CALENDARIO_MES_REUNION 
    WHERE IDGRUPO = v_grp AND IDCLUB = v_club AND REALIZADA = 'no' AND ROWNUM = 1;
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Procesando asignacion...');
    
    -- Ejecución del Procedimiento Almacenado de tu base de datos
    JPS_SP_ASIGNAR_MODERADOR(v_mod, v_grp, v_club, v_isbn);
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('  ERROR: No se pudo procesar la asignacion. Verifique el ID de grupo o miembro.');
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('  ERROR Interno: '||SQLERRM);
END;