-- ============================================================
-- SCRIPT 6B: GENERAR CALENDARIO MENSUAL (CON DÍA CONFIGURABLE)
-- No pide IDCLUB; lo deduce del IDGRUPO
-- ============================================================
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  6B - GENERAR CALENDARIO MENSUAL DE REUNIONES');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Grupos existentes con su estado actual:');
    DBMS_OUTPUT.PUT_LINE('  Grp  Club  Tipo       Dia          Hora   Mbrs  Libro en discusion');
    DBMS_OUTPUT.PUT_LINE('  ---  ----  -------  ----------  -----  ----  ------------------');
    FOR r IN (
        SELECT gc.IDGRUPO, gc.IDCLUB, gc.NOMBRE_CLUB, gc.TIPO_GRUPO,
               gc.DIA_REUNION, gc.HORA_I, gc.CANT_MIEMBROS,
               NVL(JPS_FN_LIBRO_EN_DISCUSION(gc.IDGRUPO,gc.IDCLUB),'LIBRE') AS libro
        FROM   JPS_V_GRUPOS_CAPACIDAD gc
        WHERE  gc.CANT_MIEMBROS >= gc.MINIMO
        ORDER BY gc.IDCLUB, gc.IDGRUPO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idgrupo,5)||RPAD(r.idclub,6)||
            RPAD(r.tipo_grupo,9)||RPAD(r.dia_reunion,12)||
            RPAD(r.hora_i,7)||RPAD(r.cant_miembros,6)||r.libro);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Libros disponibles:');
    DBMS_OUTPUT.PUT_LINE('  ISBN                  Titulo');
    DBMS_OUTPUT.PUT_LINE('  --------------------  ------------------------------------');
    FOR r IN (SELECT ISBN, TITULO_ORIGINAL FROM JPS_LIBRO ORDER BY TITULO_ORIGINAL) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.isbn,22)||r.titulo_original);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Solo se muestran grupos que alcanzan su minimo de miembros.');
    DBMS_OUTPUT.PUT_LINE('  Grupos LIBRE pueden iniciar nueva discusion.');
END;
/
 
-- Comandos de consola limpios (Sin punto y coma ni comentarios al final)
ACCEPT v_cal_idgrupo  PROMPT '>> ID del grupo para el calendario: '
ACCEPT v_cal_isbn     PROMPT '>> ISBN del libro a discutir: '
ACCEPT v_cal_mes      PROMPT '>> Mes del calendario (1-12): '
ACCEPT v_cal_anio     PROMPT '>> Anio del calendario (ej: 2026): '
ACCEPT v_cal_dia_init PROMPT '>> Dia del mes para iniciar reuniones (1-31): '
ACCEPT v_cal_sesiones PROMPT '>> Numero de sesiones para este libro (1-3): '
 
DECLARE
    v_grp      NUMBER := &v_cal_idgrupo;
    v_isbn     VARCHAR2(20) := TRIM('&v_cal_isbn');
    v_mes      NUMBER := &v_cal_mes;
    v_anio     NUMBER := &v_cal_anio;
    v_dia_init NUMBER := &v_cal_dia_init; 
    v_ses      NUMBER := &v_cal_sesiones;
    v_club     NUMBER;
    v_tipo     VARCHAR2(10);
    v_dia      VARCHAR2(15);
    v_hora     VARCHAR2(5);
    v_nom_cl   VARCHAR2(100);
    v_mbrs     NUMBER;
    v_minimo   NUMBER;
    v_fecha_inicio DATE;
BEGIN
    -- Obtener IDCLUB automáticamente del grupo
    SELECT gl.IDCLUB, gl.TIPO, gl.DIA_REUNION, gl.HORA_I, cl.NOMBRE
    INTO   v_club, v_tipo, v_dia, v_hora, v_nom_cl
    FROM   JPS_GRUPO_LECTURA gl
    JOIN   JPS_CLUB_LECTURA  cl ON gl.IDCLUB = cl.IDCLUB
    WHERE  gl.IDGRUPO = v_grp AND ROWNUM = 1;
 
    -- VALIDACIÓN 1: CORRECCIÓN DE FINES DE SEMANA
    IF UPPER(v_dia) IN ('SÁBADO', 'SABADO', 'DOMINGO') THEN
        DBMS_OUTPUT.PUT_LINE(' ');
        DBMS_OUTPUT.PUT_LINE('  ERROR: El grupo seleccionado tiene su dia de reunion los '||v_dia||'.');
        DBMS_OUTPUT.PUT_LINE('         No se permite la programacion de reuniones en fines de semana.');
        RETURN;
    END IF;

    -- VALIDACIÓN 2: CORRECCIÓN DE FECHAS PASADAS EN EL CALENDARIO
    BEGIN
        v_fecha_inicio := TO_DATE(LPAD(v_dia_init,2,'0')||'/'||LPAD(v_mes,2,'0')||'/'||v_anio, 'DD/MM/YYYY');
        
        IF v_fecha_inicio < TRUNC(SYSDATE) THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('  ERROR: La fecha de inicio propuesta ('||TO_CHAR(v_fecha_inicio,'DD/MM/YYYY')||') ya ha pasado.');
            DBMS_OUTPUT.PUT_LINE('         No tiene sentido planificar reuniones en el pasado.');
            RETURN;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(' ');
            DBMS_OUTPUT.PUT_LINE('  ERROR: El dia ('||v_dia_init||') o mes ('||v_mes||') digitado no forman una fecha valida.');
            RETURN;
    END;

    -- Contar miembros activos
    SELECT COUNT(*) INTO v_mbrs
    FROM   JPS_G_LC WHERE IDGRUPO=v_grp AND IDCLUB=v_club AND FECHA_FIN IS NULL;
 
    v_minimo := CASE v_tipo WHEN 'adulto' THEN 10 WHEN 'joven' THEN 5 ELSE 10 END;
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Grupo seleccionado:');
    DBMS_OUTPUT.PUT_LINE('  Club    : '||v_nom_cl||' (ID:'||v_club||')');
    DBMS_OUTPUT.PUT_LINE('  Grupo   : '||v_grp||' | Tipo: '||v_tipo);
    DBMS_OUTPUT.PUT_LINE('  Reunion : '||v_dia||' a las '||v_hora);
    DBMS_OUTPUT.PUT_LINE('  Miembros activos: '||v_mbrs||' (minimo: '||v_minimo||')');
 
    IF v_mbrs < v_minimo THEN
        DBMS_OUTPUT.PUT_LINE('  ERROR: El grupo no tiene el minimo de miembros ('||
            v_mbrs||'/'||v_minimo||'). No puede tener reuniones.');
        RETURN;
    END IF;
 
    -- Verificar libro en discusion
    DECLARE v_disc VARCHAR2(20); BEGIN
        v_disc := JPS_FN_LIBRO_EN_DISCUSION(v_grp, v_club);
        IF v_disc IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('  ERROR: El grupo ya esta discutiendo "'||v_disc||'".');
            DBMS_OUTPUT.PUT_LINE('         Cierre esa discusion antes de generar un nuevo calendario.');
            RETURN;
        END IF;
    END;
 
    DBMS_OUTPUT.PUT_LINE('  Libro: '||v_isbn||' | Iniciar desde: '||TO_CHAR(v_fecha_inicio,'DD/MM/YYYY')||' | Sesiones: '||v_ses);
 
    -- Invocación al SP
    JPS_SP_GENERAR_CALENDARIO(v_grp, v_club, v_isbn, v_mes, v_anio, v_ses, v_dia_init);
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  SIGUIENTE PASO: Use 6C para asignar un moderador.');
 
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('  ERROR: Grupo '||v_grp||' no encontrado.');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;