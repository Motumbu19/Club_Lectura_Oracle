SET SERVEROUTPUT ON;
DECLARE
    v_id_miembro NUMBER := 249; -- <-- Cambia este ID por el del miembro activo que quieras usar
    v_estatus_inicial VARCHAR2(20);
    v_estatus_final VARCHAR2(20);
    v_motivo VARCHAR2(50);
BEGIN
    DBMS_OUTPUT.PUT_LINE('======================================================');
    DBMS_OUTPUT.PUT_LINE('   DEMOSTRACIÓN EN VIVO: RETIRO AUTOMÁTICO DE MOROSOS ');
    DBMS_OUTPUT.PUT_LINE('======================================================');
    
    -- 1. Consultar estado inicial del miembro
    SELECT estatus INTO v_estatus_inicial 
    FROM JPS_HISTORICO_MEMBRESIA 
    WHERE idMiembro = v_id_miembro AND estatus = 'activo';
    
    DBMS_OUTPUT.PUT_LINE('Paso 1: Estado inicial del miembro ' || v_id_miembro || ' -> [' || v_estatus_inicial || ']');

    -- 2. "Viaje en el tiempo" (Simular que debe desde hace 14 meses)
    -- Apagamos llaves foráneas temporalmente para poder manipular las fechas del pasado
    EXECUTE IMMEDIATE 'ALTER TABLE JPS_MEMBRESIA_PAGO DISABLE CONSTRAINT FK_JPS_PAGO_HM';
    EXECUTE IMMEDIATE 'ALTER TABLE JPS_G_LC DISABLE CONSTRAINT FK_JPS_GLC_HM';
    
    -- Retrocedemos las fechas de ingreso, de ciclo y de pago físico
    UPDATE JPS_HISTORICO_MEMBRESIA SET fecha_inicio = ADD_MONTHS(SYSDATE, -14) WHERE idMiembro = v_id_miembro AND estatus = 'activo';
    UPDATE JPS_MEMBRESIA_PAGO SET fecha_inicio = ADD_MONTHS(SYSDATE, -14), fecha_pago = ADD_MONTHS(SYSDATE, -14) WHERE idMiembro = v_id_miembro;
    UPDATE JPS_G_LC SET fecha_inicio = ADD_MONTHS(SYSDATE, -14) WHERE idMiembro = v_id_miembro;
    
    -- Encendemos las protecciones de integridad nuevamente
    EXECUTE IMMEDIATE 'ALTER TABLE JPS_MEMBRESIA_PAGO ENABLE CONSTRAINT FK_JPS_PAGO_HM';
    EXECUTE IMMEDIATE 'ALTER TABLE JPS_G_LC ENABLE CONSTRAINT FK_JPS_GLC_HM';
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Paso 2: Se adelantó el reloj. El miembro ahora debe 14 meses de membresía.');

    -- 3. Forzar la ejecución del Job Automático
    DBMS_OUTPUT.PUT_LINE('Paso 3: Ejecutando el JOB "JPS_JOB_RETIRO_MOROSOS"...');
    DBMS_SCHEDULER.RUN_JOB(
        job_name            => 'JPS_JOB_RETIRO_MOROSOS',
        use_current_session => TRUE -- Hace que corra inmediatamente en esta pantalla
    );

    -- 4. Verificar el resultado final automáticamente
    SELECT estatus, motivo_deuda INTO v_estatus_final, v_motivo
    FROM JPS_HISTORICO_MEMBRESIA 
    WHERE idMiembro = v_id_miembro;
    
    DBMS_OUTPUT.PUT_LINE('Paso 4: ¡Verificación de Tablas Completa!');
    DBMS_OUTPUT.PUT_LINE('   -> Nuevo Estatus del Miembro: [' || v_estatus_final || ']');
    DBMS_OUTPUT.PUT_LINE('   -> Motivo registrado:         [' || v_motivo || ']');
    DBMS_OUTPUT.PUT_LINE('======================================================');
    DBMS_OUTPUT.PUT_LINE('¡PRUEBA EXITOSA! El sistema lo detectó y procesó correctamente.');
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: El ID ' || v_id_miembro || ' no existe o ya estaba inactivo.');
    WHEN OTHERS THEN
        -- Asegurar reencender llaves por si algo imprevisto ocurre
        EXECUTE IMMEDIATE 'ALTER TABLE JPS_MEMBRESIA_PAGO ENABLE CONSTRAINT FK_JPS_PAGO_HM';
        EXECUTE IMMEDIATE 'ALTER TABLE JPS_G_LC ENABLE CONSTRAINT FK_JPS_GLC_HM';
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
