SET SERVEROUTPUT ON SIZE 100000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ============================================================
-- DEMOSTRACIÓN FUNCIÓN 1: CONVERSIÓN MONETARIA (A DÓLARES)
-- ============================================================

-- Muestra las monedas de origen disponibles en el sistema para guiar al usuario
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('   FUNCIÓN 1: CONVERSIÓN MONETARIA A DÓLARES');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('Monedas de origen disponibles en el sistema:');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    FOR r IN (
        SELECT DISTINCT p.moneda, p.nombre AS pais
        FROM JPS_PAIS p
        WHERE UPPER(p.moneda) != 'DOLAR' -- Mostramos las que se pueden convertir a Dólar
        ORDER BY p.moneda
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.moneda, 15) || '→ (País de origen: ' || r.pais || ')');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

-- Solicita únicamente el monto y la moneda de origen
ACCEPT v_monto       PROMPT '>> Ingrese el monto a convertir: ';
ACCEPT v_moneda_orig PROMPT '>> Ingrese la moneda ORIGEN (ej: Corona, Dolar, DOlar AUD, Euro, Libra, Peso, Real, Rupia, Sequel): ';

BEGIN
    DECLARE
        v_resultado NUMBER;
    BEGIN
        -- Forzamos que el tercer parámetro (destino) siempre sea 'Dolar'
        v_resultado := JPS_FN_CONVERSION_MONETARIA(
                           &v_monto,
                           '&v_moneda_orig',
                           'Dolar'
                       );
                       
        -- Formateo y muestra de resultados en pantalla
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('   RESULTADO DE LA CONVERSIÓN');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  [VALOR INGRESADO]          : ' || &v_monto || ' ' || '&v_moneda_orig');
        
        IF v_resultado IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('  [VALOR TRAS LA CONVERSIÓN] : ' || v_resultado || ' Dolar');
        ELSE
            DBMS_OUTPUT.PUT_LINE('  [ERROR]                    : No se pudo realizar la conversión.');
            DBMS_OUTPUT.PUT_LINE('                               Verifique si la moneda origen existe.');
        END IF;
        
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('>>> El procedimiento de conversión monetaria ha terminado.');
        DBMS_OUTPUT.PUT_LINE('============================================================');
    END;
END;
/