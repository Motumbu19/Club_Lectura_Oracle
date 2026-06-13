-- ============================================================================
-- SCRIPT DE PRUEBA: EDAD DEL MIEMBRO
-- ============================================================================
SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   CONSULTA: EDAD DEL MIEMBRO Y SU CLUB');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

ACCEPT v_id_mbr_edad PROMPT '>> Ingrese el ID del miembro a consultar: ';

DECLARE
    v_salida VARCHAR2(600);
BEGIN
    v_salida := JPS_FN_EDAD_MIEMBRO(&v_id_mbr_edad);
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   REPORTE GENERAL DE EDAD');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE(v_salida);
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Funcion de Edad Miembro Finalizada');
END;