SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('    FUNCIÓN 4: % PARTICIPACIÓN BIMESTRAL Y REGLA DE RETIRO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Guía de Bimestres:');
    DBMS_OUTPUT.PUT_LINE('  1 = Ene - Feb   |  3 = May - Jun   |  5 = Sep - Oct');
    DBMS_OUTPUT.PUT_LINE('  2 = Mar - Abr   |  4 = Jul - Ago   |  6 = Nov - Dic');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- AHÓRA SÓLO SOLICITA ESTOS 3 PARÁMETROS:
ACCEPT v_id_mbr_fn4  PROMPT '>> Ingrese el ID del miembro (Ej: 1, 2, 6):       ';
ACCEPT v_bimestre    PROMPT '>> Ingrese el bimestre en número (1-6):         ';
ACCEPT v_anio_fn4    PROMPT '>> Ingrese el año (ej: 2024):                   ';

DECLARE
    v_id_miembro      NUMBER := &v_id_mbr_fn4;
    v_bimestre        NUMBER := &v_bimestre;
    v_anio            NUMBER := &v_anio_fn4;
    
    v_id_club         NUMBER;
    v_id_grupo        NUMBER;
    v_nombre_miembro  VARCHAR2(100);
    v_nombre_club     VARCHAR2(100);
    v_nombre_meses    VARCHAR2(50);
    
    v_mes_ini         NUMBER;
    v_mes_fin         NUMBER;
    
    v_total_reuniones NUMBER := 0;
    v_inasistencias   NUMBER := 0;
    v_asistencias     NUMBER := 0;
    
    v_porc_faltas     NUMBER;
    v_porc_part       NUMBER := 0;
BEGIN
    -- 1. Identificar nombres de los meses del bimestre
    v_mes_ini := (v_bimestre - 1) * 2 + 1;
    v_mes_fin := v_mes_ini + 1;

    CASE v_bimestre
        WHEN 1 THEN v_nombre_meses := 'Enero - Febrero';
        WHEN 2 THEN v_nombre_meses := 'Marzo - Abril';
        WHEN 3 THEN v_nombre_meses := 'Mayo - Junio';
        WHEN 4 THEN v_nombre_meses := 'Julio - Agosto';
        WHEN 5 THEN v_nombre_meses := 'Septiembre - Octubre';
        WHEN 6 THEN v_nombre_meses := 'Noviembre - Diciembre';
        ELSE v_nombre_meses := 'Bimestre Inválido';
    END CASE;

    -- 2. Obtener nombres legibles y Club/Grupo de forma automática para el reporte
    BEGIN
        SELECT m.primer_nombre || ' ' || m.primer_apellido 
        INTO v_nombre_miembro
        FROM JPS_MIEMBRO m WHERE m.idMiembro = v_id_miembro;
        
        SELECT glc.idClub, glc.idGrupo, cl.nombre 
        INTO v_id_club, v_id_grupo, v_nombre_club
        FROM JPS_G_LC glc
        JOIN JPS_CLUB_LECTURA cl ON glc.idClub = cl.idClub
        WHERE glc.idMiembro = v_id_miembro
          AND ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_nombre_miembro := 'Miembro No Registrado';
            v_nombre_club    := 'No tiene club asignado';
    END;

    -- 3. Invocación de la Función matemática
    v_porc_faltas := JPS_FN_PORC_PART_BIMESTRE(v_id_miembro, v_bimestre, v_anio);

    -- 4. Extracción de los desgloses extras requeridos para la impresión del reporte
    IF v_porc_faltas IS NOT NULL THEN
        SELECT COUNT(*) INTO v_total_reuniones
        FROM JPS_CALENDARIO_MES_REUNION
        WHERE idGrupo = v_id_grupo AND idClub = v_id_club
          AND EXTRACT(YEAR FROM fecha) = v_anio
          AND EXTRACT(MONTH FROM fecha) BETWEEN v_mes_ini AND v_mes_fin;
          
        SELECT COUNT(*) INTO v_inasistencias
        FROM JPS_INASISTENCIA
        WHERE idMiembro = v_id_miembro AND idClub = v_id_club
          AND EXTRACT(YEAR FROM fecha) = v_anio
          AND EXTRACT(MONTH FROM fecha) BETWEEN v_mes_ini AND v_mes_fin;
          
        v_asistencias := v_total_reuniones - v_inasistencias;
        v_porc_part   := 100 - v_porc_faltas;
    END IF;

    -- 5. IMPRESIÓN OFICIAL DEL REPORTE SOLICITADO
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   RESULTADO: REPORTE DE RENDIMIENTO BIMESTRAL DEL MIEMBRO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  [IDENTIFICACIÓN]');
    DBMS_OUTPUT.PUT_LINE('  - Lector Seleccionado   : ' || v_id_miembro || ' - ' || v_nombre_miembro);
    DBMS_OUTPUT.PUT_LINE('  - Club (Búsqueda Auto)  : ' || v_id_club || ' - ' || v_nombre_club);
    DBMS_OUTPUT.PUT_LINE('  - Año de Evaluación     : ' || v_anio);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [MÉTRICAS SOLICITADAS POR EL DEPARTAMENTO]');
    
    IF v_porc_faltas IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('  - ESTATUS               : Sin reuniones programadas en este ciclo.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  - Meses del Bimestre    : ' || v_nombre_meses);
        DBMS_OUTPUT.PUT_LINE('  - Cantidad Total/Reun.  : ' || v_total_reuniones);
        DBMS_OUTPUT.PUT_LINE('  - Reuniones Asistidas   : ' || v_asistencias);
        DBMS_OUTPUT.PUT_LINE('  - % Reuniones No Asist. : ' || TO_CHAR(v_porc_faltas, 'FM990.00') || '%');
        DBMS_OUTPUT.PUT_LINE('  - % de Participación    : ' || TO_CHAR(v_porc_part, 'FM990.00') || '%');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
        
        IF v_porc_faltas > 30 THEN
            DBMS_OUTPUT.PUT_LINE('  - ⚠ CONDICIÓN CRÍTICA   : EL MIEMBRO SUPERA EL 30% DE INASISTENCIAS.');
            DBMS_OUTPUT.PUT_LINE('  - DECISIÓN DE AUDITORÍA : DEBE SER RETIRADO DEL CLUB.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('  - CONDICIÓN             : Miembro Regular (Asistencia aprobada).');
        END IF;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('>>> El procedimiento participacion bimestral ha terminado.');
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [ERROR OCURRIDO] Detalle: ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('============================================================');
END;