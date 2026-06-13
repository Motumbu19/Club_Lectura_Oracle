-- ============================================================================
-- SCRIPT DE CONVERSIÓN MONETARIA
-- ============================================================================
SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   FUNCIÓN 1: CONVERSIÓN MONETARIA A DÓLARES');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Países disponibles en el sistema para conversión:');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    
    -- Listar los países registrados ordenados alfabéticamente
    FOR r IN (
        SELECT DISTINCT p.nombre AS pais, p.moneda
        FROM JPS_PAIS p
        WHERE UPPER(p.moneda) != 'DOLAR'
        ORDER BY p.nombre
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  • ' || RPAD(r.pais, 25) || ' (Moneda: ' || r.moneda || ')');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- 1. Primero se solicita el PAÍS ORIGEN
ACCEPT v_pais_orig PROMPT '>> Ingrese el PAÍS ORIGEN (Alemania, Argentina, Australia, Brasil, India, Israel, Paises Bajos, Reino Unido, Suecia): ';

-- 2. Después se ingresa el monto a convertir
ACCEPT v_monto     PROMPT '>> Ingrese el monto a convertir: ';

DECLARE
    v_moneda_orig VARCHAR2(100);
    v_resultado   NUMBER;
    v_pais_input  VARCHAR2(100) := TRIM('&v_pais_orig');
BEGIN
    -- Buscamos la moneda que corresponde al país que escribió el usuario
    BEGIN
        SELECT moneda 
        INTO v_moneda_orig
        FROM JPS_PAIS
        WHERE UPPER(nombre) = UPPER(v_pais_input)
          AND ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_moneda_orig := NULL; -- El país no existe en la tabla
    END;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   RESULTADO DE LA CONVERSIÓN');
    DBMS_OUTPUT.PUT_LINE('============================================================');

    -- Validamos si encontramos la moneda del país ingresado
    IF v_moneda_orig IS NOT NULL THEN
        -- Invocamos tu función original pasando la moneda que descubrimos automáticamente
        v_resultado := JPS_FN_CONVERSION_MONETARIA(
                           TO_NUMBER('&v_monto'),
                           v_moneda_orig,
                           'Dolar'
                       );

        DBMS_OUTPUT.PUT_LINE('  [PAÍS INGRESADO]           : ' || v_pais_input);
        DBMS_OUTPUT.PUT_LINE('  [MONEDA]         : ' || v_moneda_orig);
        DBMS_OUTPUT.PUT_LINE('  [MONTO ORIGINAL]           : ' || '&v_monto' || ' (' || v_moneda_orig || ')');
        
        IF v_resultado IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('  [VALOR TRAS LA CONVERSIÓN] : ' || v_resultado || ' Dolar');
        ELSE
            DBMS_OUTPUT.PUT_LINE('  [ERROR]                    : No se pudo procesar la conversión matemática.');
        END IF;
    ELSE
        -- Mensaje de error amigable si escriben mal el país o no existe
        DBMS_OUTPUT.PUT_LINE('  [ERROR]                    : El país "' || v_pais_input || '" no está registrado.');
        DBMS_OUTPUT.PUT_LINE('                               Verifique la lista superior e inténtelo de nuevo.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('>>> El procedimiento de conversión monetaria ha terminado.');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/