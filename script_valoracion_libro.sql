-- ============================================================
-- SCRIPT 6E: CERRAR DISCUSION Y VALORAR EL LIBRO
-- ============================================================

SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;
SET FEEDBACK OFF;
 
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  6E - CERRAR DISCUSION Y VALORAR EL LIBRO');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Discusiones activas en el sistema (pueden cerrarse):');
    DBMS_OUTPUT.PUT_LINE('  Grp  Club  Libro                  Titulo                          Reuniones pend.');
    DBMS_OUTPUT.PUT_LINE('  ---  ----  ---------------------  ------------------------------  ---------------');
    FOR r IN (
        SELECT cmr.IDGRUPO, cmr.IDCLUB, cmr.ISBN,
               lb.TITULO_ORIGINAL, COUNT(*) AS pendientes
        FROM   JPS_CALENDARIO_MES_REUNION cmr
        JOIN   JPS_LIBRO lb ON cmr.ISBN=lb.ISBN
        WHERE  cmr.REALIZADA='no'
        GROUP BY cmr.IDGRUPO, cmr.IDCLUB, cmr.ISBN, lb.TITULO_ORIGINAL
        ORDER BY cmr.IDCLUB, cmr.IDGRUPO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.idgrupo,5)||RPAD(r.idclub,6)||
            RPAD(r.isbn,23)||RPAD(r.titulo_original,32)||r.pendientes);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Valoracion: 1=Muy malo 2=Malo 3=Regular 4=Bueno 5=Excelente');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;
/
 
ACCEPT v_cd_idgrupo     PROMPT '>> ID del grupo:              ';
ACCEPT v_cd_isbn        PROMPT '>> ISBN del libro:            ';
ACCEPT v_cd_valoracion  PROMPT '>> Valoracion acordada (1-5): ';
ACCEPT v_cd_conclusiones PROMPT '>> Conclusiones del grupo:   ';
 
DECLARE
    v_grp  NUMBER := &v_cd_idgrupo;
    v_isbn VARCHAR2(20) := TRIM('&v_cd_isbn');
    v_val  NUMBER := &v_cd_valoracion;
    v_conc VARCHAR2(500) := TRIM('&v_cd_conclusiones');
    v_club NUMBER;
    v_tipo VARCHAR2(10);
    v_nom  VARCHAR2(100);
    v_tit  VARCHAR2(200);
BEGIN
    -- Deducir club del grupo
    SELECT gl.IDCLUB, gl.TIPO, cl.NOMBRE
    INTO   v_club, v_tipo, v_nom
    FROM   JPS_GRUPO_LECTURA gl
    JOIN   JPS_CLUB_LECTURA  cl ON gl.IDCLUB=cl.IDCLUB
    WHERE  gl.IDGRUPO=v_grp AND ROWNUM=1;
 
    SELECT TITULO_ORIGINAL INTO v_tit FROM JPS_LIBRO WHERE ISBN=v_isbn;
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  Club      : '||v_nom||' (ID:'||v_club||')');
    DBMS_OUTPUT.PUT_LINE('  Grupo     : '||v_grp||' ('||v_tipo||')');
    DBMS_OUTPUT.PUT_LINE('  Libro     : '||v_tit);
    DBMS_OUTPUT.PUT_LINE('  Valoracion: '||v_val||'/5');
 
    JPS_SP_CERRAR_DISCUSION(v_grp, v_club, v_isbn, v_conc, v_val);
 
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('  LIBROS VALORADOS EN ESTE CLUB (mayor a menor):');
    DBMS_OUTPUT.PUT_LINE('  Titulo                            Val.Club  Val.Grp  Ultima sesion');
    DBMS_OUTPUT.PUT_LINE('  --------------------------------  --------  -------  -------------');
    FOR r IN (
        SELECT DISTINCT TITULO, VALORACION_CLUB, VALORACION_GRUPO, ULTIMA_SESION
        FROM   JPS_V_LIBROS_VALORADOS
        WHERE  IDCLUB=v_club AND IDGRUPO=v_grp
        ORDER BY VALORACION_CLUB DESC, TITULO
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('  '||RPAD(r.titulo,34)||
            RPAD(NVL(TO_CHAR(r.valoracion_club,'FM9.9'),'--'),10)||
            RPAD(NVL(TO_CHAR(r.valoracion_grupo,'FM9.9'),'--'),9)||
            NVL(TO_CHAR(r.ultima_sesion,'DD/MM/YYYY'),'--'));
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('============================================================');
 
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('  ERROR: Grupo o libro no encontrado.');
    WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('  ERROR: '||SQLERRM);
END;
/
 
BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  ADMINISTRACION DE REUNIONES - SCRIPTS COMPLETADOS');
    DBMS_OUTPUT.PUT_LINE('  GRUPO 9 | SECCION 25758');
    DBMS_OUTPUT.PUT_LINE('============================================================');
END;