-- ============================================================================
-- SCRIPT DE PRUEBA: ANTIGÜEDAD EN EL CLUB
-- ============================================================================
SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   CONSULTA: ANTIGÜEDAD DE MEMBRESÍA');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

ACCEPT v_id_mbr_ant PROMPT '>> Ingrese el ID del miembro a consultar: ';

DECLARE
    v_salida VARCHAR2(600);
BEGIN
    v_salida := JPS_FN_ANTIGUEDAD_CLUB(&v_id_mbr_ant);
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   REPORTE GENERAL DE ANTIGÜEDAD');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE(v_salida);
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Funcion de Antiguedad Finalizada');
END;