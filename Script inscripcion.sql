-- ============================================================================
-- SECCIÓN 2: FLUJO INTERACTIVO DE INSCRIPCIÓN AL CLUB (VERSIÓN DEFINITIVA)
-- ============================================================================
-- ✔ Libros favoritos se piden ANTES que los datos del representante.
-- ✔ Formato blindado contra errores de copiado/pegado (Uso de DBMS_OUTPUT).
-- ✔ Omisión de pago automática si el club no cobra cuota.
-- ============================================================================

SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;
SET FEEDBACK OFF;

-- ------------------------------------------------------------
-- PASO 0-A: Cabecera y elección del TIPO de miembro
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  SISTEMA DE INSCRIPCIÓN – CLUB DE LECTURA');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Tipos de miembro:');
    DBMS_OUTPUT.PUT_LINE('    adulto  → mayor de 25 años');
    DBMS_OUTPUT.PUT_LINE('    joven   → entre 13 y 25 años');
    DBMS_OUTPUT.PUT_LINE('    niño    → entre 6 y 12 años (requiere representante legal)');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

ACCEPT v_tipo_nuevo PROMPT '>> Tipo de miembro (adulto / joven / niño): ';

DECLARE
    v_t VARCHAR2(10) := UPPER(TRIM('&v_tipo_nuevo'));
BEGIN
    IF v_t NOT IN ('ADULTO','JOVEN','NIÑO','NINO') THEN
        RAISE_APPLICATION_ERROR(-20300, 'Tipo no válido. Vuelva a ejecutar el script.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('  >> Tipo seleccionado: ' || LOWER(v_t));
    IF v_t IN ('NIÑO','NINO') THEN
        DBMS_OUTPUT.PUT_LINE('  >> Se solicitarán los datos del representante legal más adelante.');
    END IF;
END;
/

-- ------------------------------------------------------------
-- PASO 0-B: Mostrar países y pedir el país de nacimiento
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Países disponibles en el sistema:');
    DBMS_OUTPUT.PUT_LINE('  ID   Nombre               Nacionalidad');
    DBMS_OUTPUT.PUT_LINE('  ---  -------------------  -----------------------');
    FOR r IN (SELECT idPais, nombre, nacionalidad FROM JPS_PAIS ORDER BY nombre) LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.idPais,5) || RPAD(r.nombre,21) || r.nacionalidad);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

ACCEPT v_ins_idpais PROMPT '>> ID del país de nacimiento del miembro: ';

-- ------------------------------------------------------------
-- PASO 0-C: Mostrar clubes SOLO del país elegido
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Clubes disponibles en el país seleccionado:');
    DBMS_OUTPUT.PUT_LINE('  ID   Nombre                             Ciudad          Cuota');
    DBMS_OUTPUT.PUT_LINE('  ---  -----------------------------  --------------  -----');
    FOR r IN (
        SELECT cl.idClub, cl.nombre, ci.nombre AS ciudad,
               CASE cl.cuota_membresia WHEN 'si' THEN 'SI ($100 USD/año)' ELSE 'NO' END AS cuota_info
        FROM JPS_CLUB_LECTURA cl
        JOIN JPS_CIUDAD ci ON cl.idCiudad = ci.idCiudad
        WHERE ci.idPais = &v_ins_idpais
        ORDER BY cl.idClub
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.idClub,5) || RPAD(r.nombre,31) || RPAD(r.ciudad,16) || r.cuota_info);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

ACCEPT v_ins_idclub PROMPT '>> ID del club al que desea inscribirse: ';

-- ------------------------------------------------------------
-- PASO 1: Datos personales del nuevo miembro
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  DATOS PERSONALES DEL NUEVO MIEMBRO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  FORMATO ESPERADO DEL DOCUMENTO DE IDENTIDAD:');
    FOR r IN (
        SELECT p.nombre, p.nacionalidad,
               CASE UPPER(p.nombre)
                   WHEN 'ALEMANIA'     THEN 'Personalausweis: letras+numeros, ej: L01X00T47'
                   WHEN 'ARGENTINA'    THEN 'DNI: 7 u 8 dígitos, ej: 12345678'
                   ELSE 'Pasaporte u ID nacional (máximo 15 caracteres)'
               END AS formato
        FROM JPS_PAIS p WHERE p.idPais = &v_ins_idpais
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  País: ' || r.nombre || ' (' || r.nacionalidad || ')');
        DBMS_OUTPUT.PUT_LINE('  → ' || r.formato);
        DBMS_OUTPUT.PUT_LINE('  → Máximo 15 caracteres. No se aceptan espacios.');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

ACCEPT v_ins_doc       PROMPT '>> Documento de identidad (máx 15 chars, sin espacios): ';

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  TELÉFONO: solo dígitos, sin espacios ni guiones.');
    DBMS_OUTPUT.PUT_LINE('            Ejemplo: 491512345678   (máx 15 dígitos)');
    DBMS_OUTPUT.PUT_LINE('  EMAIL   : debe contener @ y un punto después de @.');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
END;
/

ACCEPT v_ins_pnombre   PROMPT '>> Primer nombre:                                      ';
ACCEPT v_ins_snombre   PROMPT '>> Segundo nombre (Enter si no tiene):                 ';
ACCEPT v_ins_papellido PROMPT '>> Primer apellido:                                    ';
ACCEPT v_ins_sapellido PROMPT '>> Segundo apellido:                     ';
ACCEPT v_ins_fnac      PROMPT '>> Fecha de nacimiento (DD/MM/YYYY):                   ';
ACCEPT v_ins_tel       PROMPT '>> Teléfono (solo dígitos):                            ';
ACCEPT v_ins_email     PROMPT '>> Email:                                              ';

-- ------------------------------------------------------------
-- PASO 2: Libros favoritos (AHORA SE PIDEN ANTES DEL REPRESENTANTE)
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  LIBROS FAVORITOS (debe seleccionar exactamente 3)');
    DBMS_OUTPUT.PUT_LINE('  ISBN                   Título');
    DBMS_OUTPUT.PUT_LINE('  -------------------  -----------------------------------');
    FOR r IN (SELECT ISBN, titulo_original FROM JPS_LIBRO ORDER BY titulo_original) LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.ISBN,21) || r.titulo_original);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/

ACCEPT v_pref1 PROMPT '>> ISBN favorito #1 (preferido):   ';
ACCEPT v_pref2 PROMPT '>> ISBN favorito #2:                 ';
ACCEPT v_pref3 PROMPT '>> ISBN favorito #3:                 ';

-- ------------------------------------------------------------
-- PASO 3: Datos del Representante Legal (SOLO para niños)
-- ------------------------------------------------------------
BEGIN
    IF UPPER(TRIM('&v_tipo_nuevo')) IN ('NIÑO','NINO') THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  DATOS DEL REPRESENTANTE LEGAL (obligatorio para niños)');
        DBMS_OUTPUT.PUT_LINE('  El representante es el responsable legal y de pagos.');
        DBMS_OUTPUT.PUT_LINE('============================================================');
        DBMS_OUTPUT.PUT_LINE('  DOCUMENTO DEL REPRESENTANTE: máx 15 chars, sin espacios.');
        DBMS_OUTPUT.PUT_LINE('  TELÉFONO: solo dígitos. EMAIL: con @ y punto.');
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    ELSE
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('  >> Tipo adulto/joven: no se requiere representante.');
        DBMS_OUTPUT.PUT_LINE('     (Presione Enter en las siguientes ventanas)');
    END IF;
END;
/

ACCEPT v_rep_doc        PROMPT '>> [REP] Documento del representante:                  ';
ACCEPT v_rep_pnombre    PROMPT '>> [REP] Primer nombre:                                ';
ACCEPT v_rep_snombre    PROMPT '>> [REP] Segundo nombre (Enter si no tiene):           ';
ACCEPT v_rep_papellido  PROMPT '>> [REP] Primer apellido:                              ';
ACCEPT v_rep_sapellido  PROMPT '>> [REP] Segundo apellido (Obligatorio):               ';
ACCEPT v_rep_fnac       PROMPT '>> [REP] Fecha de nacimiento (DD/MM/YYYY):             ';
ACCEPT v_rep_tel        PROMPT '>> [REP] Teléfono (solo dígitos):                      ';
ACCEPT v_rep_email      PROMPT '>> [REP] Email:                                        ';
ACCEPT v_rep_idmbr_club PROMPT '>> [REP] ID del miembro adulto del club (tutor):       ';

-- ------------------------------------------------------------
-- PASO 4: VALIDACIONES Y CREACIÓN EN BASE DE DATOS
-- ------------------------------------------------------------
DECLARE
    v_tipo         VARCHAR2(10) := UPPER(TRIM('&v_tipo_nuevo'));
    v_idpais       NUMBER       := &v_ins_idpais;
    v_idclub       NUMBER       := &v_ins_idclub;
    v_doc          VARCHAR2(15) := TRIM('&v_ins_doc');
    v_pnombre      VARCHAR2(30) := TRIM('&v_ins_pnombre');
    v_snombre      VARCHAR2(30) := NULLIF(TRIM('&v_ins_snombre'), '');
    v_papellido    VARCHAR2(30) := TRIM('&v_ins_papellido');
    v_sapellido    VARCHAR2(30) := TRIM('&v_ins_sapellido'); 
    v_fnac         DATE         := TO_DATE(TRIM('&v_ins_fnac'), 'DD/MM/YYYY');
    v_tel          VARCHAR2(15) := TRIM('&v_ins_tel');
    v_email        VARCHAR2(50) := TRIM('&v_ins_email');

    v_rep_doc       VARCHAR2(15) := NULLIF(TRIM('&v_rep_doc'), '');
    v_rep_pnombre   VARCHAR2(30) := NULLIF(TRIM('&v_rep_pnombre'), '');
    v_rep_snombre   VARCHAR2(30) := NULLIF(TRIM('&v_rep_snombre'), '');
    v_rep_papellido VARCHAR2(30) := NULLIF(TRIM('&v_rep_papellido'), '');
    v_rep_sapellido VARCHAR2(30) := TRIM('&v_rep_sapellido'); 
    v_rep_fnac_str  VARCHAR2(10) := NULLIF(TRIM('&v_rep_fnac'), '');
    v_rep_tel       VARCHAR2(15) := NULLIF(TRIM('&v_rep_tel'), '');
    v_rep_email     VARCHAR2(50) := NULLIF(TRIM('&v_rep_email'), '');
    v_rep_idmbr_cl  VARCHAR2(10) := NULLIF(TRIM('&v_rep_idmbr_club'), '');

    v_isbn1  VARCHAR2(20) := TRIM('&v_pref1');
    v_isbn2  VARCHAR2(20) := TRIM('&v_pref2');
    v_isbn3  VARCHAR2(20) := TRIM('&v_pref3');

    v_nuevo_id    NUMBER;   
    v_id_rep      NUMBER;   
    v_edad        NUMBER;
    v_tipo_calc   VARCHAR2(10);
    v_cuota       VARCHAR2(2);
    v_nombre_club VARCHAR2(100);
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  VALIDANDO DATOS...');
    DBMS_OUTPUT.PUT_LINE('============================================================');

    v_edad      := TRUNC(MONTHS_BETWEEN(SYSDATE, v_fnac) / 12);
    v_tipo_calc := JPS_FN_TIPO_MIEMBRO(v_fnac);

    IF v_tipo_calc = 'NO_ELEGIBLE' THEN
        RAISE_APPLICATION_ERROR(-20399, 'Edad no elegible (mínimo 6 años).');
    ELSIF v_tipo = 'ADULTO' AND v_tipo_calc != 'adulto' THEN
        RAISE_APPLICATION_ERROR(-20399, 'Seleccionó ADULTO pero la fecha indica tipo ' || v_tipo_calc);
    ELSIF v_tipo = 'JOVEN' AND v_tipo_calc != 'joven' THEN
        RAISE_APPLICATION_ERROR(-20399, 'Seleccionó JOVEN pero la fecha indica tipo ' || v_tipo_calc);
    ELSIF v_tipo IN ('NIÑO','NINO') AND v_tipo_calc != 'niño' THEN
        RAISE_APPLICATION_ERROR(-20399, 'Seleccionó NIÑO pero la fecha indica tipo ' || v_tipo_calc);
    END IF;

    DBMS_OUTPUT.PUT_LINE('  Todas las validaciones pasaron correctamente.');
    DBMS_OUTPUT.PUT_LINE('  Procesando inscripción...');

    IF v_tipo IN ('NIÑO','NINO') THEN
        v_id_rep := JPS_SEQ_REPRESENTANTE.NEXTVAL;  
        INSERT INTO JPS_REPRESENTANTE(
            idRepresentante, doc_identidad, primer_nombre, segundo_nombre,
            primer_apellido, segundo_apellido, fecha_nacimiento, telefono, email
        ) VALUES (
            v_id_rep, v_rep_doc, v_rep_pnombre, v_rep_snombre,
            v_rep_papellido, v_rep_sapellido, 
            CASE WHEN v_rep_fnac_str IS NOT NULL THEN TO_DATE(v_rep_fnac_str, 'DD/MM/YYYY') ELSE NULL END,
            v_rep_tel, v_rep_email
        );
    END IF;

    v_nuevo_id := JPS_SEQ_MIEMBRO.NEXTVAL;
    INSERT INTO JPS_MIEMBRO(
        idMiembro, idPais_nacio, doc_identidad, primer_nombre, segundo_nombre,
        primer_apellido, segundo_apellido, fecha_nacimiento, telefono, email,
        idRepresentante, idMiembro_representado
    ) VALUES (
        v_nuevo_id, v_idpais, v_doc, v_pnombre, v_snombre,
        v_papellido, v_sapellido, v_fnac, v_tel, v_email,
        CASE WHEN v_tipo IN ('NIÑO','NINO') THEN v_id_rep ELSE NULL END,
        CASE WHEN v_tipo IN ('NIÑO','NINO') THEN TO_NUMBER(v_rep_idmbr_cl) ELSE NULL END
    );

    DBMS_OUTPUT.PUT_LINE('  Miembro creado → ID generado: ' || v_nuevo_id || ' | ' || v_pnombre || ' ' || v_papellido);

    INSERT INTO JPS_PREFERENCIA VALUES (v_nuevo_id, v_isbn1, 1);
    INSERT INTO JPS_PREFERENCIA VALUES (v_nuevo_id, v_isbn2, 2);
    INSERT INTO JPS_PREFERENCIA VALUES (v_nuevo_id, v_isbn3, 3);
    DBMS_OUTPUT.PUT_LINE('  Libros favoritos registrados (3 preferencias).');

    JPS_SP_INSCRIBIR_MIEMBRO(v_nuevo_id, v_idclub, SYSDATE);
    JPS_SP_ASIGNAR_GRUPO(v_nuevo_id, v_idclub, SYSDATE);

    SELECT cuota_membresia, nombre INTO v_cuota, v_nombre_club
    FROM JPS_CLUB_LECTURA WHERE idClub = v_idclub;

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  INSCRIPCIÓN EXITOSA');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Miembro  : ' || v_pnombre || ' ' || v_papellido);
    DBMS_OUTPUT.PUT_LINE('  ID asig. : ' || v_nuevo_id);
    DBMS_OUTPUT.PUT_LINE('  Club     : ' || v_nombre_club);
    
    IF v_cuota = 'si' THEN
        DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('  PAGO: PENDIENTE – club con cuota anual de $100 USD.');
        DBMS_OUTPUT.PUT_LINE('  Continúe con el PASO 5 (pago) que aparece a continuación.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('  PAGO: N/A – este club no cobra cuota.');
        DBMS_OUTPUT.PUT_LINE('  No es necesario continuar con el paso de pago.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('============================================================');

    EXECUTE IMMEDIATE 'BEGIN NULL; END;';  
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('  [ERROR INSCRIPCIÓN]: ' || SQLERRM);
END;
/

-- ------------------------------------------------------------
-- PASO 5: MÓDULO DE PAGO Y CONVERSIÓN
-- ------------------------------------------------------------
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  PASO 5: PAGO DE CUOTA ANUAL');
    DBMS_OUTPUT.PUT_LINE('============================================================');

    FOR r IN (SELECT nombre, cuota_membresia FROM JPS_CLUB_LECTURA WHERE idClub = &v_ins_idclub) LOOP
        IF r.cuota_membresia = 'no' THEN
            DBMS_OUTPUT.PUT_LINE('  El club "' || r.nombre || '" no cobra cuota. Este paso se omite.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('  Club: ' || r.nombre || ' | Cuota anual: $100 USD (o equivalente local).');
            DBMS_OUTPUT.PUT_LINE('  ¿Desea pagar en la moneda del país de nacimiento?');
            DBMS_OUTPUT.PUT_LINE('  Si prefiere pagar en otra moneda, escriba NO y se mostrará la lista.');
        END IF;
    END LOOP;
END;
/

ACCEPT v_pago_moneda_propia PROMPT '>> ¿Paga en la moneda de su país? (SI / NO): ';

BEGIN
    IF UPPER(TRIM('&v_pago_moneda_propia')) = 'NO' THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('  Monedas disponibles para el pago:');
        FOR r IN (SELECT DISTINCT nombre, moneda FROM JPS_PAIS ORDER BY nombre) LOOP
            DBMS_OUTPUT.PUT_LINE('  ' || RPAD(r.nombre,22) || r.moneda);
        END LOOP;
    END IF;
END;
/

ACCEPT v_pago_pais_moneda PROMPT '>> País cuya moneda usará para pagar (ej: Alemania): ';
ACCEPT v_pago_monto       PROMPT '>> Monto a pagar en esa moneda local:               ';

DECLARE
    v_idclub    NUMBER       := &v_ins_idclub;
    v_doc       VARCHAR2(15) := TRIM('&v_ins_doc');
    v_pais_pago VARCHAR2(50) := TRIM('&v_pago_pais_moneda');
    v_monto     NUMBER       := &v_pago_monto;

    v_nuevo_id  NUMBER;
    v_moneda    VARCHAR2(30);
    v_monto_usd NUMBER;
    v_cuota     VARCHAR2(2);
    v_nombre_cl VARCHAR2(100);
BEGIN
    SELECT idMiembro INTO v_nuevo_id FROM JPS_MIEMBRO WHERE doc_identidad = v_doc AND ROWNUM = 1;
    SELECT cuota_membresia, nombre INTO v_cuota, v_nombre_cl FROM JPS_CLUB_LECTURA WHERE idClub = v_idclub;

    IF v_cuota = 'no' THEN
        DBMS_OUTPUT.PUT_LINE('  El club ' || v_nombre_cl || ' no cobra cuota. Pago omitido.');
        RETURN;
    END IF;

    SELECT moneda INTO v_moneda FROM JPS_PAIS WHERE UPPER(nombre) = UPPER(v_pais_pago) AND ROWNUM = 1;

    v_monto_usd := JPS_FN_CONVERSION_MONETARIA(v_monto, v_moneda, 'Dolar');

    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  CONVERSIÓN MONETARIA Y PAGO EXITOSO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Miembro ID   : ' || v_nuevo_id);
    DBMS_OUTPUT.PUT_LINE('  Moneda       : ' || v_moneda);
    DBMS_OUTPUT.PUT_LINE('  Monto pagado : ' || v_monto || ' ' || v_moneda);
    DBMS_OUTPUT.PUT_LINE('  Equivalente  : $' || v_monto_usd || ' USD');

    JPS_SP_REGISTRAR_PAGO(v_nuevo_id, v_idclub, v_monto, v_moneda, SYSDATE);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('  [ERROR PAGO]: ' || SQLERRM);
END;