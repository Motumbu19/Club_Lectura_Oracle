BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
   job_name        => 'JPS_JOB_RETIRO_MOROSOS',
   job_type        => 'PLSQL_BLOCK',
   -- Indica qué acción se disparará cuando el reloj marque la hora
   job_action      => 'BEGIN JPS_SP_PROCESAR_MOROSOS; END;',
   start_date      => SYSTIMESTAMP,
   -- Lógica de repetición: FREQ=DAILY (Diario), a las 00:00:00 horas (Medianoche)
   repeat_interval => 'FREQ=DAILY; BYHOUR=0; BYMINUTE=0; BYSECOND=0', 
   enabled         => TRUE,
   comments        => 'Job automático que busca miembros con cuotas vencidas y los pasa a inactivos.'
  );
END;
/