SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- FUNCIÓN 3: % PARTICIPACIÓN MENSUAL EXCLUSIVA POR TIPO
-- ============================================================

-- Bloque 1: Guía de sugerencias en base de datos
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   FUNCIÓN 3: % PROMEDIO PARTICIPACIÓN MENSUAL POR TIPO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Tipos de grupo válidos: adulto / joven / niño');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Reuniones registradas en el sistema (Sugerencias):');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('CLUB',6) || RPAD('GRUPO',7) || RPAD('TIPO',10) ||
                         RPAD('MES',5)  || RPAD('AÑO',6)   || 'REUNIONES');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    
    -- Corrección de ROWNUM con Subconsulta para evitar congelamiento
    FOR r IN (
        SELECT * FROM (
            SELECT rg.idClub, rg.idGrupo, gl.tipo, rg.mes, rg.anio, rg.total_reuniones
            FROM JPS_V_REUNIONES_POR_GRUPO rg
            JOIN JPS_GRUPO_LECTURA gl ON rg.idGrupo = gl.idGrupo AND rg.idClub = gl.idClub
            ORDER BY rg.anio DESC, rg.mes DESC, rg.idClub ASC
        ) WHERE ROWNUM <= 10
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            RPAD(r.idClub,          6) ||
            RPAD(r.idGrupo,         7) ||
            RPAD(r.tipo,           10) ||
            RPAD(r.mes,             5) ||
            RPAD(r.anio,            6) ||
            r.total_reuniones
        );
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- Solicitud de Parámetros Interactivos (Pop-ups)
ACCEPT v_tipo_grupo PROMPT '>> Ingrese el tipo de grupo (adulto / joven / niño): ';
ACCEPT v_mes        PROMPT '>> Ingrese el mes en numero (1-12):                  ';
ACCEPT v_anio_fn3   PROMPT '>> Ingrese el año (ej: 2024):                        ';

-- Bloque 2: Procesamiento y Output exclusivo del tipo solicitado
DECLARE
    v_tipo      VARCHAR2(30) := LOWER(TRIM('&v_tipo_grupo'));
    v_mes       NUMBER       := &v_mes;
    v_anio      NUMBER       := &v_anio_fn3;
    v_resultado NUMBER;
BEGIN
    -- Homologación de entradas por si el usuario escribe en plural
    IF v_tipo LIKE 'adulto%' THEN v_tipo := 'adulto'; END IF;
    IF v_tipo LIKE 'joven%'  THEN v_tipo := 'joven';  END IF;
    IF v_tipo LIKE 'niño%' OR v_tipo LIKE 'nino%' THEN v_tipo := 'niño'; END IF;

    -- 1. Ejecución de la función utilizando estrictamente la fórmula original (JPS_FN_PORC_PART_MENSUAL)
    v_resultado := JPS_FN_PORC_PART_MENSUAL(v_tipo, v_mes, v_anio);

    -- 2. Formateo del Reporte Limpio y Exclusivo solicitado
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   RESULTADO: DEPARTAMENTO DE AUDITORÍA DE PARTICIPACIÓN');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  [FILTRO APLICADO]');
    DBMS_OUTPUT.PUT_LINE('  - Categoría Evaluada : ' || UPPER(v_tipo));
    DBMS_OUTPUT.PUT_LINE('  - Periodo            : Mes ' || v_mes || ' | Año ' || v_anio);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [MÉTRICA OBTENIDA]');
    
    IF v_resultado IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('  - Porcentaje de participación: Sin registros de reuniones para este tipo.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  - Porcentaje de participación: ' || v_resultado || '%');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('>>> Fin del reporte exclusivo por categoría.');
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [ERROR DE FORMATO] Ingrese valores numéricos válidos.');
        DBMS_OUTPUT.PUT_LINE('============================================================');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [ERROR INESPERADO] : ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/