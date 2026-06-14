CREATE OR REPLACE PROCEDURE JPS_SP_PROCESAR_MOROSOS IS
    v_ciclo_actual DATE;
BEGIN
    -- Escaneamos todas las membresías que figuren activas en clubes de pago
    FOR rec IN (
        SELECT hm.idMiembro, hm.idClub, hm.fecha_inicio
        FROM   JPS_HISTORICO_MEMBRESIA hm
        JOIN   JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
        WHERE  hm.estatus = 'activo'
          AND  hm.fecha_fin IS NULL
          AND  cl.cuota_membresia = 'si'
    ) LOOP
        -- Calculamos el inicio de su año/ciclo actual de membresía
        v_ciclo_actual := ADD_MONTHS(rec.fecha_inicio, 
                                     TRUNC(MONTHS_BETWEEN(SYSDATE, rec.fecha_inicio) / 12) * 12);

        -- Verificamos si ya pasaron los 30 días de gracia desde su aniversario
        IF SYSDATE > (v_ciclo_actual + 30) THEN
            
            -- Buscamos si existe algún pago registrado para este año/ciclo en específico
            DECLARE
                v_pago_realizado NUMBER;
            BEGIN
                SELECT COUNT(*)
                INTO v_pago_realizado
                FROM JPS_MEMBRESIA_PAGO
                WHERE idMiembro = rec.idMiembro
                  AND idClub = rec.idClub
                  AND fecha_inicio = rec.fecha_inicio
                  AND fecha_pago >= v_ciclo_actual; -- El pago debe ser reciente

                -- Si la matemática da 0, significa que no ha pagado su anualidad
                IF v_pago_realizado = 0 THEN
                    -- Invocamos de forma automática al procedimiento de retiro
                    -- Pasándole 'deudas' como motivo (el cual internamente usará 'inactivo')
                    JPS_SP_RETIRAR_MIEMBRO(
                        p_idMiembro    => rec.idMiembro, 
                        p_idClub       => rec.idClub, 
                        p_motivo       => 'deudas', 
                        p_fecha_retiro => SYSDATE
                    );
                END IF;
            END;
        END IF;
    END LOOP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        -- Registra el error en la salida de consola en caso de imprevistos
        DBMS_OUTPUT.PUT_LINE('Error en el proceso de morosos: ' || SQLERRM);
END JPS_SP_PROCESAR_MOROSOS;
/