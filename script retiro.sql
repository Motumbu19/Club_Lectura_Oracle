-- ============================================================================
-- SECCIÓN 3: FLUJO INTERACTIVO DE RETIRO VOLUNTARIO
-- ============================================================================

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  FLUJO DE RETIRO VOLUNTARIO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Este proceso retirará al miembro de su club activo.');
    DBMS_OUTPUT.PUT_LINE('  Se requiere confirmación con cédula/documento de identidad.');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

-- PANTALLA 1: ingresar el ID
ACCEPT v_ret_idmbr PROMPT '>> Ingrese el ID del miembro que desea retirarse: ';

-- Mostrar los datos del miembro para que confirme
DECLARE
    v_idmbr    NUMBER  := &v_ret_idmbr;
    v_nombre   VARCHAR2(100);
    v_doc      VARCHAR2(15);
    v_club     VARCHAR2(100);
    v_idclub   NUMBER;
    v_ingreso  DATE;
    v_cuota    VARCHAR2(2);
    v_renovacion DATE;
    v_dias     NUMBER;
    v_hijos    NUMBER; -- <-- NUEVA VARIABLE
BEGIN
    -- Buscar datos del miembro
    BEGIN
        SELECT m.primer_nombre || ' ' || m.primer_apellido,
               m.doc_identidad
        INTO   v_nombre, v_doc
        FROM   JPS_MIEMBRO m
        WHERE  m.idMiembro = v_idmbr;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20320, 'No existe un miembro con ID ' || v_idmbr || '.');
    END;

    -- Buscar membresía activa
    BEGIN
        SELECT hm.idClub, cl.nombre, hm.fecha_inicio, cl.cuota_membresia
        INTO   v_idclub, v_club, v_ingreso, v_cuota
        FROM   JPS_HISTORICO_MEMBRESIA hm
        JOIN   JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
        WHERE  hm.idMiembro = v_idmbr
          AND  hm.estatus   = 'activo'
          AND  hm.fecha_fin IS NULL
          AND  ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20321,
                'El miembro ' || v_nombre || ' (ID:' || v_idmbr ||
                ') no está activo en ningún club actualmente.');
    END;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Miembro encontrado:');
    DBMS_OUTPUT.PUT_LINE('  ----------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Nombre    : ' || v_nombre);
    DBMS_OUTPUT.PUT_LINE('  Club      : ' || v_club);
    DBMS_OUTPUT.PUT_LINE('  Miembro desde : ' || TO_CHAR(v_ingreso,'DD/MM/YYYY'));

    -- NUEVO: Verificar si este miembro tiene niños a su cargo
    SELECT COUNT(*) INTO v_hijos 
    FROM JPS_MIEMBRO 
    WHERE idMiembro_representado = v_idmbr AND idMiembro != v_idmbr;

    IF v_hijos > 0 THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('  *** ATENCIÓN: TUTOR LEGAL ***');
        DBMS_OUTPUT.PUT_LINE('  Este miembro es representante de ' || v_hijos || ' integrante(s) del club.');
        DBMS_OUTPUT.PUT_LINE('  Su retiro cancelará SU participación como lector, pero');
        DBMS_OUTPUT.PUT_LINE('  seguirá siendo el responsable legal y financiero de los menores.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('  ----------------------------------------------------------');

    -- Calcular situación de aviso si tiene cuota
    IF v_cuota = 'si' THEN
        v_renovacion := ADD_MONTHS(v_ingreso,
            CEIL(MONTHS_BETWEEN(SYSDATE, v_ingreso) / 12) * 12);
        
        -- Si la fecha de ingreso es hoy (o este año recién), se ajusta para el año próximo
        IF v_renovacion <= SYSDATE THEN
            v_renovacion := ADD_MONTHS(v_renovacion, 12);
        END IF;

        v_dias := v_renovacion - SYSDATE;

        DBMS_OUTPUT.PUT_LINE('  Próxima renovación: ' || TO_CHAR(v_renovacion,'DD/MM/YYYY') ||
            ' (en ' || TRUNC(v_dias) || ' días)');

        IF v_dias < 30 THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('  *** AVISO DE COBRO ***');
            DBMS_OUTPUT.PUT_LINE('  Su fecha limite de retiro sin cobro adicional');
            DBMS_OUTPUT.PUT_LINE('  ya pasó (debió notificar 30 días antes del ' ||
                TO_CHAR(v_renovacion,'DD/MM/YYYY') || ').');
            DBMS_OUTPUT.PUT_LINE('  Si confirma el retiro, se le cobrará un ciclo');
            DBMS_OUTPUT.PUT_LINE('  adicional de $100 USD antes del cambio de estatus.');
            DBMS_OUTPUT.PUT_LINE('  **********************');
        ELSE
            DBMS_OUTPUT.PUT_LINE('  Aviso de retiro: en regla (faltan ' ||
                TRUNC(v_dias) || ' días para la renovación).');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('  Club sin cuota – retiro sin implicaciones de pago.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('  ----------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Para confirmar el retiro ingrese su documento de identidad.');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('  [ERROR]: ' || SQLERRM);
END;
/

-- PANTALLA 2: solicitar la cédula para confirmar la identidad
ACCEPT v_ret_cedula PROMPT '>> Ingrese su cédula/documento de identidad para confirmar: ';

-- Ejecutar el retiro si la cédula es correcta
DECLARE
    v_idmbr    NUMBER       := &v_ret_idmbr;
    v_cedula   VARCHAR2(15) := TRIM('&v_ret_cedula');

    v_doc_real VARCHAR2(15);
    v_nombre   VARCHAR2(100);
    v_idclub   NUMBER;
    v_club     VARCHAR2(100);
    v_ingreso  DATE;
    v_cuota    VARCHAR2(2);
    v_renovacion DATE;
    v_dias     NUMBER;
BEGIN
    -- Obtener cédula real del miembro
    SELECT m.doc_identidad,
           m.primer_nombre || ' ' || m.primer_apellido
    INTO   v_doc_real, v_nombre
    FROM   JPS_MIEMBRO m
    WHERE  m.idMiembro = v_idmbr;

    -- Obtener membresía activa
    SELECT hm.idClub, cl.nombre, hm.fecha_inicio, cl.cuota_membresia
    INTO   v_idclub, v_club, v_ingreso, v_cuota
    FROM   JPS_HISTORICO_MEMBRESIA hm
    JOIN   JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
    WHERE  hm.idMiembro = v_idmbr
      AND  hm.estatus   = 'activo'
      AND  hm.fecha_fin IS NULL
      AND  ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');

    -- VERIFICAR CÉDULA
    IF UPPER(TRIM(v_cedula)) != UPPER(TRIM(v_doc_real)) THEN
        -- Cédula incorrecta → no se retira
        DBMS_OUTPUT.PUT_LINE('  [ERROR DE CONFIRMACIÓN]');
        DBMS_OUTPUT.PUT_LINE('  La cédula/documento ingresado no coincide con el registro.');
        DBMS_OUTPUT.PUT_LINE('  El retiro ha sido CANCELADO por seguridad.');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        RETURN;
    END IF;

    -- Cédula correcta → calcular situación y proceder
    DBMS_OUTPUT.PUT_LINE('  Identidad verificada. Procesando retiro...');

    IF v_cuota = 'si' THEN
        v_renovacion := ADD_MONTHS(v_ingreso,
            CEIL(MONTHS_BETWEEN(SYSDATE, v_ingreso) / 12) * 12);
            
        IF v_renovacion <= SYSDATE THEN
            v_renovacion := ADD_MONTHS(v_renovacion, 12);
        END IF;
        
        v_dias := v_renovacion - SYSDATE;

        IF v_dias < 30 THEN
            DBMS_OUTPUT.PUT_LINE('  COBRO ADICIONAL APLICADO:');
            DBMS_OUTPUT.PUT_LINE('  Su fecha límite de aviso ya pasó.');
            DBMS_OUTPUT.PUT_LINE('  Se registrará un cargo en su cuenta por el ciclo hasta:');
            DBMS_OUTPUT.PUT_LINE('  ' || TO_CHAR(v_renovacion,'DD/MM/YYYY'));
        END IF;
    END IF;

    -- Llamar al procedimiento de retiro (Este SP debe hacer un UPDATE, NUNCA un DELETE)
    JPS_SP_RETIRAR_MIEMBRO(v_idmbr, v_idclub, 'voluntario', SYSDATE);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  RETIRO COMPLETADO EXITOSAMENTE');
    DBMS_OUTPUT.PUT_LINE('  Miembro : ' || v_nombre);
    DBMS_OUTPUT.PUT_LINE('  Club    : ' || v_club);
    DBMS_OUTPUT.PUT_LINE('  Fecha   : ' || TO_CHAR(SYSDATE,'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('  Motivo  : voluntario');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  El histórico ha sido actualizado (Estatus: Retirado).');
    DBMS_OUTPUT.PUT_LINE('  Su registro queda visible para otros clubes (reputación).');
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('  [ERROR]: Miembro o membresía no encontrada.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('  [ERROR]: ' || SQLERRM);
END;