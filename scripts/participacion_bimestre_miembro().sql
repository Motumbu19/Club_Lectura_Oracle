SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- DEMOSTRACIÓN FUNCIÓN 4: % INASISTENCIA BIMESTRAL (Regla 30%)
-- ============================================================

-- Guía visual para orientar al usuario en la consola
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   FUNCIÓN 4: % PARTICIPACIÓN BIMESTRAL Y REGLA DE RETIRO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Guía de Bimestres:');
    DBMS_OUTPUT.PUT_LINE('  1 = Ene - Feb   |  3 = May - Jun   |  5 = Sep - Oct');
    DBMS_OUTPUT.PUT_LINE('  2 = Mar - Abr   |  4 = Jul - Ago   |  6 = Nov - Dic');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- Solicitud de Parámetros Interactivamente
ACCEPT v_id_mbr_fn4  PROMPT '>> Ingrese el ID del miembro (Ej: 1, 3, 13): ';
ACCEPT v_id_club_fn4 PROMPT '>> Ingrese el ID del club asociado (Ej: 1, 2): ';
ACCEPT v_bimestre    PROMPT '>> Ingrese el bimestre (1-6):                  ';
ACCEPT v_anio_fn4    PROMPT '>> Ingrese el año (ej: 2024):                  ';

DECLARE
    v_porc      NUMBER;
    v_nombre    VARCHAR2(100);
    v_club      VARCHAR2(100);
    v_mes_ini   NUMBER;
    v_mes_fin   NUMBER;
BEGIN
    -- 1. Cálculo matemático del rango de meses a partir del bimestre ingresado
    v_mes_ini := (&v_bimestre - 1) * 2 + 1;
    v_mes_fin := v_mes_ini + 1;

    -- 2. Extraemos nombres legibles para el reporte (Con manejo de errores)
    BEGIN
        SELECT m.primer_nombre || ' ' || m.primer_apellido INTO v_nombre
        FROM JPS_MIEMBRO m WHERE m.idMiembro = &v_id_mbr_fn4;
        
        SELECT cl.nombre INTO v_club
        FROM JPS_CLUB_LECTURA cl WHERE cl.idClub = &v_id_club_fn4;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_nombre := 'Miembro Desconocido';
            v_club   := 'Club Desconocido';
    END;

    -- 3. EJECUCIÓN DE LA FUNCIÓN
    v_porc := JPS_FN_PORC_PART_BIMESTRE(&v_id_mbr_fn4, &v_id_club_fn4, &v_bimestre, &v_anio_fn4);

    -- 4. Formateo y muestra de resultados en pantalla
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   RESULTADO: REPORTE DE INASISTENCIA BIMESTRAL');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  [VALORES EVALUADOS]');
    DBMS_OUTPUT.PUT_LINE('  - Miembro   : ' || &v_id_mbr_fn4 || ' (' || v_nombre || ')');
    DBMS_OUTPUT.PUT_LINE('  - Club      : ' || &v_id_club_fn4 || ' (' || v_club || ')');
    DBMS_OUTPUT.PUT_LINE('  - Periodo   : Bimestre ' || &v_bimestre || ' (Meses ' || v_mes_ini || ' a ' || v_mes_fin || ') del ' || &v_anio_fn4);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [ESTADO DEL MIEMBRO]');
    
    -- Evaluación de la regla de negocio del 30%
    IF v_porc IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('  - RESULTADO : Sin datos de reuniones agendadas para este periodo.');
    ELSIF v_porc > 30 THEN
        DBMS_OUTPUT.PUT_LINE('  - % FALTAS  : ' || v_porc || '%');
        DBMS_OUTPUT.PUT_LINE('  - ⚠ ALERTA  : SUPERA EL LÍMITE (30%) -> DEBE SER RETIRADO DEL CLUB.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  - % FALTAS  : ' || v_porc || '%');
        DBMS_OUTPUT.PUT_LINE('  - ESTATUS   : Miembro regular (Dentro del rango permitido <= 30%).');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('>>> El procedimiento participacion bimestral ha terminado.');
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [ERROR] Verifique que haya ingresado números válidos.');
        DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/