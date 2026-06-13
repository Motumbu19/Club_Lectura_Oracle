SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

ACCEPT v_mes   PROMPT '>> Ingrese el mes en número (1-12):                  ';
ACCEPT v_anio  PROMPT '>> Ingrese el año (ej: 2024):                        ';

DECLARE
    v_mes       NUMBER := &v_mes;
    v_anio      NUMBER := &v_anio;
    v_resultado NUMBER;
BEGIN
    v_resultado := JPS_FN_PORC_PART_MENSUAL(v_mes, v_anio);
    
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('====================================================================================================');
    DBMS_OUTPUT.PUT_LINE('   RESULTADO: DEPARTAMENTO DE AUDITORÍA DE PARTICIPACIÓN');
    DBMS_OUTPUT.PUT_LINE('====================================================================================================');
    DBMS_OUTPUT.PUT_LINE('  [FILTRO APLICADO]');
    DBMS_OUTPUT.PUT_LINE('  - Periodo            : Mes ' || v_mes || ' | Año ' || v_anio);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [MÉTRICA OBTENIDA]');
    
    IF v_resultado IS NULL OR v_resultado = 0 THEN
        DBMS_OUTPUT.PUT_LINE('  - Porcentaje de participación: Sin registros validos o 0%.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  - Porcentaje de participación promedio: ' || TO_CHAR(v_resultado, 'FM990.00') || '%');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('====================================================================================================');
END;
/