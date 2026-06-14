SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- SCRIPT 6A: ASIGNAR MIEMBRO A UN GRUPO
-- ============================================================
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  6A - ASIGNAR MIEMBRO A UN GRUPO DE SU CLUB');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  MIEMBROS ACTIVOS QUE ACTUALMENTE NO ESTAN EN NINGUN GRUPO:');
    DBMS_OUTPUT.PUT_LINE('  ID      Nombre                    Club                     Tipo');
    DBMS_OUTPUT.PUT_LINE('  ------  ------------------------  -----------------------  --------');
    
    FOR r IN (
        SELECT m.IDMIEMBRO, 
               m.PRIMER_NOMBRE || ' ' || m.PRIMER_APELLIDO AS NOMBRE,
               cl.NOMBRE AS CLUB,
               JPS_FN_TIPO_MIEMBRO(m.FECHA_NACIMIENTO) AS TIPO
        FROM JPS_MIEMBRO m
        JOIN JPS_HISTORICO_MEMBRESIA hm ON m.IDMIEMBRO = hm.IDMIEMBRO
        JOIN JPS_CLUB_LECTURA cl ON hm.IDCLUB = cl.IDCLUB
        WHERE hm.ESTATUS = 'activo' 
          AND hm.FECHA_FIN IS NULL
          AND NOT EXISTS (
              SELECT 1 
              FROM JPS_G_LC glc 
              WHERE glc.IDMIEMBRO = m.IDMIEMBRO 
                AND glc.FECHA_FIN IS NULL
          )
        ORDER BY cl.NOMBRE, m.PRIMER_NOMBRE
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.IDMIEMBRO, 8) || 
                             RPAD(r.NOMBRE, 26) || 
                             RPAD(r.CLUB, 25) || 
                             r.TIPO);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('  (Si la lista esta vacia, todos los miembros ya tienen grupo)');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

-- Solicitar el ID del miembro al usuario
ACCEPT v_ag_idmbr PROMPT '>> ID del miembro a asignar al grupo: ';

-- Mostrar datos del miembro y su club actual
DECLARE
    v_id   NUMBER := &v_ag_idmbr;
    v_nom  VARCHAR2(100);
    v_tipo VARCHAR2(10);
    v_fnac DATE;
    v_club NUMBER;
    v_nom_club VARCHAR2(100);
BEGIN
    BEGIN
        SELECT m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO, m.FECHA_NACIMIENTO
        INTO   v_nom, v_fnac
        FROM   JPS_MIEMBRO m WHERE m.IDMIEMBRO = v_id;
        v_tipo := JPS_FN_TIPO_MIEMBRO(v_fnac);
    EXCEPTION WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('  ERROR: No existe miembro con ID '||v_id);
        RETURN;
    END;

    BEGIN
        SELECT hm.IDCLUB, cl.NOMBRE INTO v_club, v_nom_club
        FROM   JPS_HISTORICO_MEMBRESIA hm
        JOIN   JPS_CLUB_LECTURA cl ON hm.IDCLUB = cl.IDCLUB
        WHERE  hm.IDMIEMBRO = v_id AND hm.ESTATUS = 'activo' AND hm.FECHA_FIN IS NULL
        AND    ROWNUM = 1;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('  ERROR: El miembro '||v_nom||' no tiene membresia activa.');
        RETURN;
    END;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Miembro : '||v_nom||' (ID:'||v_id||')');
    DBMS_OUTPUT.PUT_LINE('  Tipo    : '||v_tipo);
    DBMS_OUTPUT.PUT_LINE('  Club    : '||v_nom_club||' (ID:'||v_club||')');
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Grupos de tipo "'||v_tipo||'" en su club:');
    DBMS_OUTPUT.PUT_LINE('  ID    Dia         Hora    Miembros  Estado de Discusion');
    DBMS_OUTPUT.PUT_LINE('  ----  ----------  ------  --------  --------------------------');

    FOR r IN (
        SELECT gc.IDGRUPO, gc.DIA_REUNION, gc.HORA_I, gc.CANT_MIEMBROS,
               -- Subconsulta directa a la agenda para saber si está en discusión
               CASE 
                   WHEN (SELECT COUNT(*) FROM JPS_CALENDARIO_MES_REUNION cal 
                         WHERE cal.IDGRUPO = gc.IDGRUPO AND cal.IDCLUB = gc.IDCLUB AND cal.REALIZADA = 'no') > 0 
                   THEN '[X] EN DISCUSION (Bloqueado)'
                   ELSE '[OK] LIBRE (Disponible)'
               END AS estado_discusion
        FROM   JPS_V_GRUPOS_CAPACIDAD gc
        WHERE  gc.IDCLUB     = v_club
        AND    gc.TIPO_GRUPO = v_tipo
        ORDER BY gc.IDGRUPO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idgrupo,6)||RPAD(r.dia_reunion,12)||
            RPAD(r.hora_i,8)||RPAD(r.cant_miembros,10)||r.estado_discusion);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('  ------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  NOTA: Solo debes elegir grupos marcados como [OK] LIBRE.');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

-- Solicitar a qué grupo irá
ACCEPT v_ag_idgrp PROMPT '>> ID del grupo al que desea asignar al miembro: ';

DECLARE
    v_id  NUMBER := &v_ag_idmbr;
    v_grp NUMBER := &v_ag_idgrp;
    v_club NUMBER;
BEGIN
    SELECT IDCLUB INTO v_club
    FROM   JPS_GRUPO_LECTURA WHERE IDGRUPO = v_grp AND ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('  >> Procesando asignacion al club: '||v_club);

    DECLARE
        v_club_mbr NUMBER;
    BEGIN
        SELECT hm.IDCLUB INTO v_club_mbr
        FROM   JPS_HISTORICO_MEMBRESIA hm
        WHERE  hm.IDMIEMBRO=v_id AND hm.ESTATUS='activo' AND hm.FECHA_FIN IS NULL AND ROWNUM=1;
        
        IF v_club_mbr != v_club THEN
            RAISE_APPLICATION_ERROR(-20500,
                'El grupo '||v_grp||' pertenece al club '||v_club||
                ' pero el miembro esta en el club '||v_club_mbr||'.');
        END IF;
    END;

    -- Llamar al procedimiento de la base de datos
    JPS_SP_ASIGNAR_MIEMBRO_GRUPO(v_id, v_grp);

EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('  ERROR: Grupo '||v_grp||' no encontrado.');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;
