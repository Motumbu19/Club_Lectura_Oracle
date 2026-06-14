--------------------------------------------------------
--  File created - Sunday-June-14-2026   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_AUTOR
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_AUTOR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_CIUDAD
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_CIUDAD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_CLUB_LECTURA
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_CLUB_LECTURA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_GRUPO_LECTURA
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_GRUPO_LECTURA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_IDIOMA
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_IDIOMA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_INSTITUCION
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_INSTITUCION"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_MIEMBRO
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_MIEMBRO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 281 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_PAIS
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_PAIS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence JPS_SEQ_REPRESENTANTE
--------------------------------------------------------

   CREATE SEQUENCE  "JUAN123"."JPS_SEQ_REPRESENTANTE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table JPS_ASOCIADO
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_ASOCIADO" 
   (	"IDCLUB1" NUMBER(4,0), 
	"IDCLUB2" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_AUTOR
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_AUTOR" 
   (	"IDAUTOR" NUMBER(6,0), 
	"PRIMER_NOMBRE" VARCHAR2(30 BYTE), 
	"PRIMER_APELLIDO" VARCHAR2(30 BYTE), 
	"SEGUNDO_APELLIDO" VARCHAR2(30 BYTE), 
	"NOMBRE_ANT_SEUDONIMO" VARCHAR2(50 BYTE), 
	"SEGUNDO_NOMBRE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_CALENDARIO_MES_REUNION
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" 
   (	"FECHA" DATE, 
	"IDCLUB" NUMBER(4,0), 
	"IDGRUPO" NUMBER(4,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"FECHA_INICIO" DATE, 
	"IDMIEMBRO" NUMBER(6,0), 
	"REALIZADA" VARCHAR2(2 BYTE), 
	"CONCLUSIONES" VARCHAR2(500 BYTE), 
	"ULTIMA_DISCUSION" VARCHAR2(500 BYTE), 
	"VALORACION_FINAL" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_CIUDAD
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_CIUDAD" 
   (	"IDCIUDAD" NUMBER(4,0), 
	"IDPAIS" NUMBER(3,0), 
	"NOMBRE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_CLUB_LECTURA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_CLUB_LECTURA" 
   (	"IDCLUB" NUMBER(4,0), 
	"IDCIUDAD" NUMBER(4,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CALLE_AV" VARCHAR2(100 BYTE), 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"CODIGO_POSTAL" VARCHAR2(10 BYTE), 
	"CUOTA_MEMBRESIA" VARCHAR2(2 BYTE), 
	"IDINSTITUCION" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_ELENCO
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_ELENCO" 
   (	"IDMIEMBRO" NUMBER(6,0), 
	"IDOBRA" NUMBER(6,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"IDCLUB" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_G_LC
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_G_LC" 
   (	"FECHA_INICIO" DATE, 
	"IDMIEMBRO" NUMBER(6,0), 
	"IDCLUB" NUMBER(4,0), 
	"IDGRUPO" NUMBER(4,0), 
	"FECHA_FIN" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_GRUPO_LECTURA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_GRUPO_LECTURA" 
   (	"IDGRUPO" NUMBER(4,0), 
	"IDCLUB" NUMBER(4,0), 
	"TIPO" VARCHAR2(10 BYTE), 
	"FECHA_CREACION" DATE, 
	"DIA_REUNION" VARCHAR2(15 BYTE), 
	"HORA_I" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_HISTORICO_MEMBRESIA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" 
   (	"FECHA_INICIO" DATE, 
	"IDMIEMBRO" NUMBER(6,0), 
	"IDCLUB" NUMBER(4,0), 
	"ESTATUS" VARCHAR2(10 BYTE), 
	"FECHA_FIN" DATE, 
	"MOTIVO_DEUDA" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_IDIOMA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_IDIOMA" 
   (	"IDIDIOMA" NUMBER(3,0), 
	"NOMBRE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_I_M
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_I_M" 
   (	"IDI_M" NUMBER(6,0), 
	"IDIDIOMA" NUMBER(3,0), 
	"IDMIEMBRO" NUMBER(6,0), 
	"IDCLUB" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_INASISTENCIA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_INASISTENCIA" 
   (	"FECHA" DATE, 
	"IDCLUB" NUMBER(4,0), 
	"IDGRUPO" NUMBER(4,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"FECHA_INICIO" DATE, 
	"IDMIEMBRO" NUMBER(6,0), 
	"ESTATUS" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_INSTITUCION
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_INSTITUCION" 
   (	"IDINSTITUCION" NUMBER(4,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"TIPO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_L_A
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_L_A" 
   (	"ISBN" VARCHAR2(20 BYTE), 
	"IDAUTOR" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_LIBRO
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_LIBRO" 
   (	"ISBN" VARCHAR2(20 BYTE), 
	"TITULO_ORIGINAL" VARCHAR2(100 BYTE), 
	"ANIO_PUBLICACION_1ERA_EDICION" NUMBER(4,0), 
	"SINOPSIS" VARCHAR2(500 BYTE), 
	"CANTIDAD_PAGINAS" NUMBER(4,0), 
	"TIPO_NARRATIVA" VARCHAR2(20 BYTE), 
	"RESUMEN_TEMA" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_MEJOR_ACTOR
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_MEJOR_ACTOR" 
   (	"IDMIEMBRO" NUMBER(6,0), 
	"IDOBRA" NUMBER(6,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"IDCLUB" NUMBER(4,0), 
	"FECHA_PRESENTACION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_MEMBRESIA_PAGO
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" 
   (	"IDPAGO" NUMBER(6,0), 
	"FECHA_INICIO" DATE, 
	"IDMIEMBRO" NUMBER(6,0), 
	"IDCLUB" NUMBER(4,0), 
	"FECHA_PAGO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_MIEMBRO
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_MIEMBRO" 
   (	"IDMIEMBRO" NUMBER(6,0), 
	"IDPAIS_NACIO" NUMBER(3,0), 
	"DOC_IDENTIDAD" VARCHAR2(15 BYTE), 
	"PRIMER_NOMBRE" VARCHAR2(30 BYTE), 
	"PRIMER_APELLIDO" VARCHAR2(30 BYTE), 
	"SEGUNDO_APELLIDO" VARCHAR2(30 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"IDREPRESENTANTE" NUMBER(6,0), 
	"IDMIEMBRO_REPRESENTADO" NUMBER(6,0), 
	"SEGUNDO_NOMBRE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_OBRA_ACTUADA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_OBRA_ACTUADA" 
   (	"IDOBRA" NUMBER(6,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"IDCLUB" NUMBER(4,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"DESCRIPCION" VARCHAR2(500 BYTE), 
	"COSTO_ENTRADA" NUMBER(10,2), 
	"ACTIVO" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_PAIS
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_PAIS" 
   (	"IDPAIS" NUMBER(3,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"CONTINENTE" VARCHAR2(30 BYTE), 
	"MONEDA" VARCHAR2(30 BYTE), 
	"NACIONALIDAD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_PREFERENCIA
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_PREFERENCIA" 
   (	"IDMIEMBRO" NUMBER(6,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"ORDEN_PREFERENCIA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_PRESENTACION
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_PRESENTACION" 
   (	"FECHA_PRESENTACION" DATE, 
	"IDOBRA" NUMBER(6,0), 
	"ISBN" VARCHAR2(20 BYTE), 
	"IDCLUB" NUMBER(4,0), 
	"CANTIDAD_ASISTENTES" NUMBER(5,0), 
	"VALORACION_OBRA" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JPS_REPRESENTANTE
--------------------------------------------------------

  CREATE TABLE "JUAN123"."JPS_REPRESENTANTE" 
   (	"IDREPRESENTANTE" NUMBER(6,0), 
	"DOC_IDENTIDAD" VARCHAR2(15 BYTE), 
	"PRIMER_NOMBRE" VARCHAR2(30 BYTE), 
	"PRIMER_APELLIDO" VARCHAR2(30 BYTE), 
	"SEGUNDO_APELLIDO" VARCHAR2(30 BYTE), 
	"SEGUNDO_NOMBRE" VARCHAR2(30 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"TELEFONO" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View JPS_V_ASISTENCIA_BIMESTRAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_ASISTENCIA_BIMESTRAL" ("IDMIEMBRO", "NOMBRE_MIEMBRO", "IDCLUB", "NOMBRE_CLUB", "IDGRUPO", "ANIO", "BIMESTRE", "MESES_BIMESTRE", "TOTAL_REUNIONES", "INASISTENCIAS", "ASISTENCIAS", "PORC_INASISTENCIA", "ESTATUS_ASISTENCIA") AS 
  SELECT
    g.IDMIEMBRO,
    m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO          AS NOMBRE_MIEMBRO,
    g.IDCLUB,
    cl.NOMBRE                                         AS NOMBRE_CLUB,
    g.IDGRUPO,
    EXTRACT(YEAR FROM cmr.FECHA)                      AS ANIO,
    CEIL(EXTRACT(MONTH FROM cmr.FECHA)/2)             AS BIMESTRE,
    CASE CEIL(EXTRACT(MONTH FROM cmr.FECHA)/2)
        WHEN 1 THEN 'Ene-Feb' WHEN 2 THEN 'Mar-Abr'
        WHEN 3 THEN 'May-Jun' WHEN 4 THEN 'Jul-Ago'
        WHEN 5 THEN 'Sep-Oct' WHEN 6 THEN 'Nov-Dic'
    END                                               AS MESES_BIMESTRE,
    COUNT(DISTINCT cmr.FECHA)                         AS TOTAL_REUNIONES,
    COUNT(DISTINCT i.FECHA)                           AS INASISTENCIAS,
    COUNT(DISTINCT cmr.FECHA) - COUNT(DISTINCT i.FECHA) AS ASISTENCIAS,
    CASE
        WHEN COUNT(DISTINCT cmr.FECHA) = 0 THEN 0
        ELSE ROUND(COUNT(DISTINCT i.FECHA) * 100 /
                   COUNT(DISTINCT cmr.FECHA), 2)
    END                                               AS PORC_INASISTENCIA,
    CASE
        WHEN COUNT(DISTINCT cmr.FECHA) = 0 THEN 'SIN REUNIONES'
        WHEN ROUND(COUNT(DISTINCT i.FECHA)*100/
                   COUNT(DISTINCT cmr.FECHA),2) > 30
             THEN '⚠ SUPERA 30% – RETIRAR'
        ELSE 'Regular'
    END                                               AS ESTATUS_ASISTENCIA
FROM   JPS_G_LC               g
JOIN   JPS_MIEMBRO            m   ON g.IDMIEMBRO = m.IDMIEMBRO
JOIN   JPS_CLUB_LECTURA       cl  ON g.IDCLUB    = cl.IDCLUB
JOIN   JPS_CALENDARIO_MES_REUNION cmr
           ON cmr.IDGRUPO = g.IDGRUPO AND cmr.IDCLUB = g.IDCLUB
          AND cmr.REALIZADA = 'si'
LEFT JOIN JPS_INASISTENCIA    i
           ON i.IDMIEMBRO    = g.IDMIEMBRO
          AND i.IDCLUB       = g.IDCLUB
          AND i.IDGRUPO      = g.IDGRUPO
          AND i.FECHA        = cmr.FECHA
WHERE  g.FECHA_FIN IS NULL
GROUP BY g.IDMIEMBRO, m.PRIMER_NOMBRE, m.PRIMER_APELLIDO,
         g.IDCLUB, cl.NOMBRE, g.IDGRUPO,
         EXTRACT(YEAR FROM cmr.FECHA),
         CEIL(EXTRACT(MONTH FROM cmr.FECHA)/2)
ORDER BY g.IDCLUB, g.IDGRUPO, ANIO, BIMESTRE, PORC_INASISTENCIA DESC
;
--------------------------------------------------------
--  DDL for View JPS_V_CALENDARIO_ACTIVO
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_CALENDARIO_ACTIVO" ("FECHA", "IDCLUB", "NOMBRE_CLUB", "IDGRUPO", "TIPO_GRUPO", "DIA_REUNION", "HORA_I", "ISBN", "TITULO_LIBRO", "ID_MODERADOR", "NOMBRE_MODERADOR", "REALIZADA") AS 
  SELECT
    cmr.fecha,
    cmr.idClub,
    cl.nombre   AS nombre_club,
    cmr.idGrupo,
    gl.tipo     AS tipo_grupo,
    gl.dia_reunion,
    gl.hora_i,
    cmr.ISBN,
    lb.titulo_original AS titulo_libro,
    cmr.idMiembro  AS id_moderador,
    m.primer_nombre || ' ' || m.primer_apellido AS nombre_moderador,
    cmr.realizada
FROM JPS_CALENDARIO_MES_REUNION cmr
JOIN JPS_CLUB_LECTURA  cl ON cmr.idClub  = cl.idClub
JOIN JPS_GRUPO_LECTURA gl ON cmr.idGrupo = gl.idGrupo AND cmr.idClub = gl.idClub
JOIN JPS_LIBRO         lb ON cmr.ISBN    = lb.ISBN
JOIN JPS_MIEMBRO       m  ON cmr.idMiembro = m.idMiembro
WHERE cmr.realizada = 'no'
ORDER BY cmr.idClub, cmr.idGrupo, cmr.fecha
;
--------------------------------------------------------
--  DDL for View JPS_V_ESTADO_MEMBRESIA
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_ESTADO_MEMBRESIA" ("IDMIEMBRO", "NOMBRE_MIEMBRO", "IDCLUB", "NOMBRE_CLUB", "CUOTA_MEMBRESIA", "FECHA_INICIO", "ESTATUS_MEMBRESIA", "ESTADO_PAGO", "ULTIMO_PAGO", "PROXIMA_RENOVACION") AS 
  SELECT
    hm.idMiembro,
    m.primer_nombre || ' ' || m.primer_apellido AS nombre_miembro,
    hm.idClub,
    cl.nombre                                    AS nombre_club,
    cl.cuota_membresia,
    hm.fecha_inicio,
    hm.estatus                                   AS estatus_membresia,
    -- Estado de pago calculado dinámicamente
    CASE
        WHEN cl.cuota_membresia = 'no' THEN 'N/A'
        WHEN (
            SELECT COUNT(*)
            FROM JPS_MEMBRESIA_PAGO mp
            WHERE mp.idMiembro    = hm.idMiembro
              AND mp.idClub       = hm.idClub
              AND mp.fecha_inicio = hm.fecha_inicio
              AND mp.fecha_pago  >= ADD_MONTHS(TRUNC(SYSDATE,'MM'), -1)
        ) > 0 THEN 'solvente'
        WHEN (
            SELECT COUNT(*)
            FROM JPS_MEMBRESIA_PAGO mp
            WHERE mp.idMiembro    = hm.idMiembro
              AND mp.idClub       = hm.idClub
              AND mp.fecha_inicio = hm.fecha_inicio
        ) = 0 THEN 'pendiente'
        ELSE 'moroso'
    END AS estado_pago,
    -- Fecha del último pago
    (
        SELECT MAX(mp.fecha_pago)
        FROM JPS_MEMBRESIA_PAGO mp
        WHERE mp.idMiembro    = hm.idMiembro
          AND mp.idClub       = hm.idClub
          AND mp.fecha_inicio = hm.fecha_inicio
    ) AS ultimo_pago,
    -- Próxima fecha de renovación anual
    ADD_MONTHS(hm.fecha_inicio,
        CEIL(MONTHS_BETWEEN(SYSDATE, hm.fecha_inicio) / 12) * 12
    ) AS proxima_renovacion
FROM JPS_HISTORICO_MEMBRESIA hm
JOIN JPS_MIEMBRO     m  ON hm.idMiembro = m.idMiembro
JOIN JPS_CLUB_LECTURA cl ON hm.idClub    = cl.idClub
WHERE hm.estatus  = 'activo'
  AND hm.fecha_fin IS NULL
;
--------------------------------------------------------
--  DDL for View JPS_V_GRUPO_MIEMBROS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_GRUPO_MIEMBROS" ("IDGRUPO", "IDCLUB", "NOMBRE_CLUB", "TIPO_GRUPO", "DIA_REUNION", "HORA_I", "IDMIEMBRO", "NOMBRE_MIEMBRO", "EMAIL", "TELEFONO", "MIEMBRO_DESDE", "TIPO_MIEMBRO") AS 
  SELECT
    g.IDGRUPO,
    g.IDCLUB,
    cl.NOMBRE                                    AS NOMBRE_CLUB,
    gl.TIPO                                      AS TIPO_GRUPO,
    gl.DIA_REUNION,
    gl.HORA_I,
    g.IDMIEMBRO,
    m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO      AS NOMBRE_MIEMBRO,
    m.EMAIL,
    m.TELEFONO,
    g.FECHA_INICIO                               AS MIEMBRO_DESDE,
    JPS_FN_TIPO_MIEMBRO(m.FECHA_NACIMIENTO)      AS TIPO_MIEMBRO
FROM   JPS_G_LC           g
JOIN   JPS_MIEMBRO        m   ON g.IDMIEMBRO = m.IDMIEMBRO
JOIN   JPS_CLUB_LECTURA   cl  ON g.IDCLUB    = cl.IDCLUB
JOIN   JPS_GRUPO_LECTURA  gl  ON g.IDGRUPO   = gl.IDGRUPO AND g.IDCLUB = gl.IDCLUB
WHERE  g.FECHA_FIN IS NULL
ORDER BY g.IDCLUB, g.IDGRUPO, m.PRIMER_APELLIDO
;
--------------------------------------------------------
--  DDL for View JPS_V_GRUPOS_CAPACIDAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_GRUPOS_CAPACIDAD" ("IDGRUPO", "IDCLUB", "NOMBRE_CLUB", "TIPO_GRUPO", "DIA_REUNION", "HORA_I", "CANT_MIEMBROS", "MINIMO", "IDEAL_MAX", "LIMITE_SPLIT", "ESTATUS_CAPACIDAD") AS 
  SELECT
    gl.idGrupo,
    gl.idClub,
    cl.nombre       AS nombre_club,
    gl.tipo         AS tipo_grupo,
    gl.dia_reunion,
    gl.hora_i,
    -- Cantidad actual de miembros activos en el grupo
    (
        SELECT COUNT(*)
        FROM JPS_G_LC g
        WHERE g.idGrupo = gl.idGrupo
          AND g.idClub  = gl.idClub
          AND g.fecha_fin IS NULL
    ) AS cant_miembros,
    -- Límites según tipo de grupo
    CASE gl.tipo
        WHEN 'adulto' THEN 10
        WHEN 'joven'  THEN 5
        WHEN 'niño'   THEN 10
    END AS minimo,
    CASE gl.tipo
        WHEN 'adulto' THEN 25
        WHEN 'joven'  THEN 15
        WHEN 'niño'   THEN 15
    END AS ideal_max,
    CASE gl.tipo
        WHEN 'adulto' THEN 30
        WHEN 'joven'  THEN 15
        WHEN 'niño'   THEN 15
    END AS limite_split,
    -- Estatus del grupo respecto a capacidad
    CASE
        WHEN (
            SELECT COUNT(*) FROM JPS_G_LC g
            WHERE g.idGrupo = gl.idGrupo AND g.idClub = gl.idClub AND g.fecha_fin IS NULL
        ) = 0 THEN 'VACÍO'
        WHEN (
            SELECT COUNT(*) FROM JPS_G_LC g
            WHERE g.idGrupo = gl.idGrupo AND g.idClub = gl.idClub AND g.fecha_fin IS NULL
        ) < CASE gl.tipo WHEN 'adulto' THEN 10 WHEN 'joven' THEN 5 ELSE 10 END THEN 'FORMANDO'
        WHEN (
            SELECT COUNT(*) FROM JPS_G_LC g
            WHERE g.idGrupo = gl.idGrupo AND g.idClub = gl.idClub AND g.fecha_fin IS NULL
        ) >= CASE gl.tipo WHEN 'adulto' THEN 30 WHEN 'joven' THEN 15 ELSE 15 END THEN 'REQUIERE SPLIT'
        WHEN (
            SELECT COUNT(*) FROM JPS_G_LC g
            WHERE g.idGrupo = gl.idGrupo AND g.idClub = gl.idClub AND g.fecha_fin IS NULL
        ) > CASE gl.tipo WHEN 'adulto' THEN 25 WHEN 'joven' THEN 15 ELSE 15 END THEN 'SOBRE IDEAL'
        ELSE 'NORMAL'
    END AS estatus_capacidad
FROM JPS_GRUPO_LECTURA gl
JOIN JPS_CLUB_LECTURA  cl ON gl.idClub = cl.idClub
ORDER BY gl.idClub, gl.tipo
;
--------------------------------------------------------
--  DDL for View JPS_V_HISTORIAL_LIBROS_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_HISTORIAL_LIBROS_GRUPO" ("IDCLUB", "NOMBRE_CLUB", "IDGRUPO", "TIPO_GRUPO", "ISBN", "TITULO", "VALORACION_GRUPO", "VALORACION_CLUB", "ULTIMA_SESION", "CONCLUSIONES") AS 
  SELECT
    cmr.idClub,
    cl.nombre      AS nombre_club,
    cmr.idGrupo,
    gl.tipo        AS tipo_grupo,
    cmr.ISBN,
    lb.titulo_original AS titulo,
    -- Promedio de valoraciones del mismo libro en el mismo grupo
    ROUND(AVG(cmr.valoracion_final) OVER (
        PARTITION BY cmr.idClub, cmr.idGrupo, cmr.ISBN
    ), 1) AS valoracion_grupo,
    -- Promedio global del libro en todos los grupos del mismo club
    ROUND(AVG(cmr.valoracion_final) OVER (
        PARTITION BY cmr.idClub, cmr.ISBN
    ), 1) AS valoracion_club,
    MAX(cmr.fecha) OVER (
        PARTITION BY cmr.idClub, cmr.idGrupo, cmr.ISBN
    ) AS ultima_sesion,
    cmr.conclusiones
FROM JPS_CALENDARIO_MES_REUNION cmr
JOIN JPS_CLUB_LECTURA  cl ON cmr.idClub  = cl.idClub
JOIN JPS_GRUPO_LECTURA gl ON cmr.idGrupo = gl.idGrupo AND cmr.idClub = gl.idClub
JOIN JPS_LIBRO         lb ON cmr.ISBN    = lb.ISBN
WHERE cmr.valoracion_final IS NOT NULL
ORDER BY cmr.idClub, cmr.idGrupo, valoracion_grupo DESC
;
--------------------------------------------------------
--  DDL for View JPS_V_LIBROS_VALORADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_LIBROS_VALORADOS" ("IDCLUB", "NOMBRE_CLUB", "ISBN", "TITULO", "ANIO", "VALORACION_CLUB", "VALORACION_GRUPO", "IDGRUPO", "TIPO_GRUPO", "ULTIMA_SESION", "CONCLUSIONES") AS 
  SELECT 
    IDCLUB,
    NOMBRE_CLUB,
    ISBN,
    TITULO,
    ANIO,
    VALORACION_CLUB,
    VALORACION_GRUPO,
    IDGRUPO,
    TIPO_GRUPO,
    ULTIMA_SESION,
    CONCLUSIONES
FROM (
    SELECT
        cmr.IDCLUB,
        cl.NOMBRE                               AS NOMBRE_CLUB,
        cmr.ISBN,
        lb.TITULO_ORIGINAL                     AS TITULO,
        lb.ANIO_PUBLICACION_1ERA_EDICION       AS ANIO, -- <-- ¡Corregido aquí!
        -- Valoración promedio del club
        ROUND(AVG(cmr.VALORACION_FINAL)
              OVER (PARTITION BY cmr.IDCLUB, cmr.ISBN), 1)   AS VALORACION_CLUB,
        -- Valoración promedio del grupo
        ROUND(AVG(cmr.VALORACION_FINAL)
              OVER (PARTITION BY cmr.IDCLUB, cmr.IDGRUPO, cmr.ISBN), 1) AS VALORACION_GRUPO,
        cmr.IDGRUPO,
        gl.TIPO                                AS TIPO_GRUPO,
        MAX(cmr.FECHA)
            OVER (PARTITION BY cmr.IDCLUB, cmr.IDGRUPO, cmr.ISBN) AS ULTIMA_SESION,
        cmr.CONCLUSIONES
    FROM   JPS_CALENDARIO_MES_REUNION cmr
    JOIN   JPS_CLUB_LECTURA   cl  ON cmr.IDCLUB  = cl.IDCLUB
    JOIN   JPS_GRUPO_LECTURA  gl  ON cmr.IDGRUPO = gl.IDGRUPO AND cmr.IDCLUB = gl.IDCLUB
    JOIN   JPS_LIBRO          lb  ON cmr.ISBN    = lb.ISBN
    WHERE  cmr.VALORACION_FINAL IS NOT NULL
)
ORDER BY IDCLUB, VALORACION_CLUB DESC, ISBN
;
--------------------------------------------------------
--  DDL for View JPS_V_MIEMBRO_REPUTACION
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_MIEMBRO_REPUTACION" ("IDMIEMBRO", "DOC_IDENTIDAD", "NOMBRE_COMPLETO", "EMAIL", "TELEFONO", "IDCLUB", "NOMBRE_CLUB", "FECHA_INGRESO", "FECHA_SALIDA", "ESTATUS", "MOTIVO_SALIDA", "OBSERVACION_REPUTACION") AS 
  SELECT
    m.idMiembro,
    m.doc_identidad,
    m.primer_nombre || ' ' || m.primer_apellido || ' ' || m.segundo_apellido AS nombre_completo,
    m.email,
    m.telefono,
    hm.idClub,
    cl.nombre       AS nombre_club,
    hm.fecha_inicio AS fecha_ingreso,
    hm.fecha_fin    AS fecha_salida,
    hm.estatus,
    hm.motivo_deuda AS motivo_salida,
    CASE
        WHEN hm.motivo_deuda = 'deudas'       THEN 'RIESGO: Salió con deudas pendientes'
        WHEN hm.motivo_deuda = 'Inasistencia' THEN 'RIESGO: Retirado por inasistencias'
        WHEN hm.motivo_deuda = 'voluntario'   THEN 'OK: Se retiró voluntariamente'
        WHEN hm.estatus      = 'activo'        THEN 'ACTIVO'
        ELSE 'Sin observaciones'
    END AS observacion_reputacion
FROM JPS_HISTORICO_MEMBRESIA hm
JOIN JPS_MIEMBRO       m  ON hm.idMiembro = m.idMiembro
JOIN JPS_CLUB_LECTURA  cl ON hm.idClub    = cl.idClub
ORDER BY m.idMiembro, hm.fecha_inicio DESC
;
--------------------------------------------------------
--  DDL for View JPS_V_MIEMBROS_ACTIVOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_MIEMBROS_ACTIVOS" ("IDMIEMBRO", "DOC_IDENTIDAD", "IDPAIS_NACIO", "PRIMER_NOMBRE", "SEGUNDO_NOMBRE", "PRIMER_APELLIDO", "SEGUNDO_APELLIDO", "NOMBRE_COMPLETO", "FECHA_NACIMIENTO", "TELEFONO", "EMAIL", "IDREPRESENTANTE", "IDMIEMBRO_REPRESENTADO", "IDGRUPO", "IDCLUB", "TIPO_GRUPO", "NOMBRE_CLUB", "FECHA_INGRESO_CLUB", "ESTATUS") AS 
  SELECT
    m.idMiembro,
    m.doc_identidad,             -- ► Expuesta para inserción real
    m.idPais_nacio,              -- ► Expuesta para inserción real
    m.primer_nombre,             -- ► Expuesta para inserción real
    m.segundo_nombre,            -- ► Expuesta para inserción real
    m.primer_apellido,           -- ► Expuesta para inserción real
    m.segundo_apellido,          -- ► Expuesta para inserción real
    m.primer_nombre || ' ' || m.primer_apellido || ' ' || m.segundo_apellido AS nombre_completo, -- Original
    m.fecha_nacimiento,          -- Original
    m.telefono,                  -- ► Expuesta para inserción real
    m.email,                     -- ► Expuesta para inserción real
    m.idRepresentante,           -- ► Expuesta para el flujo de niños
    m.idMiembro_representado,    -- ► Expuesta para cumplir CHECK_JPS_REPRESENTADO
    gl.idGrupo,                  -- Original
    gl.idClub,                   -- Original
    gl.tipo                                   AS tipo_grupo, -- Original
    cl.nombre                                 AS nombre_club,  -- Original
    hm.fecha_inicio                           AS fecha_ingreso_club, -- Original
    hm.estatus                   -- Original
FROM JPS_MIEMBRO      m
JOIN JPS_HISTORICO_MEMBRESIA hm ON m.idMiembro = hm.idMiembro
JOIN JPS_GRUPO_LECTURA       gl ON hm.idClub    = gl.idClub
JOIN JPS_CLUB_LECTURA        cl ON gl.idClub    = cl.idClub
WHERE hm.estatus = 'activo'      -- Original en minúscula conforme a tu CHECK
  AND hm.fecha_fin IS NULL
;
--------------------------------------------------------
--  DDL for View JPS_V_MODERADORES_ACTIVOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_MODERADORES_ACTIVOS" ("IDMIEMBRO", "NOMBRE_MODERADOR", "IDCLUB", "IDGRUPO", "TIPO_GRUPO", "FECHA_ASIGNACION", "FECHA_FIN", "DISPONIBILIDAD") AS 
  SELECT
    g.idMiembro,
    m.primer_nombre || ' ' || m.primer_apellido AS nombre_moderador,
    g.idClub,
    g.idGrupo,
    gl.tipo         AS tipo_grupo,
    g.fecha_inicio  AS fecha_asignacion,
    g.fecha_fin,
    -- Si tiene reuniones pendientes de cerrar está ocupado
    CASE
        WHEN EXISTS (
            SELECT 1 FROM JPS_CALENDARIO_MES_REUNION cmr
            WHERE cmr.idMiembro    = g.idMiembro
              AND cmr.idClub       = g.idClub
              AND cmr.idGrupo      = g.idGrupo
              AND cmr.fecha_inicio = g.fecha_inicio
              AND cmr.realizada    = 'no'
              AND cmr.fecha       >= SYSDATE
        ) THEN 'OCUPADO'
        ELSE 'DISPONIBLE'
    END AS disponibilidad
FROM JPS_G_LC g
JOIN JPS_MIEMBRO       m  ON g.idMiembro = m.idMiembro
JOIN JPS_GRUPO_LECTURA gl ON g.idGrupo   = gl.idGrupo AND g.idClub = gl.idClub
WHERE g.fecha_fin IS NULL
ORDER BY g.idClub, g.idGrupo
;
--------------------------------------------------------
--  DDL for View JPS_V_MODERADORES_DISPONIBLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_MODERADORES_DISPONIBLES" ("IDMIEMBRO", "NOMBRE_MIEMBRO", "IDCLUB", "NOMBRE_CLUB", "IDGRUPO", "TIPO_GRUPO", "TIPO_MIEMBRO", "DISPONIBILIDAD") AS 
  SELECT
    g.IDMIEMBRO,
    m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO  AS NOMBRE_MIEMBRO,
    g.IDCLUB,
    cl.NOMBRE                                AS NOMBRE_CLUB,
    g.IDGRUPO,
    gl.TIPO                                  AS TIPO_GRUPO,
    JPS_FN_TIPO_MIEMBRO(m.FECHA_NACIMIENTO)  AS TIPO_MIEMBRO,
    -- Disponible si NO tiene reuniones no realizadas en ningún grupo
    CASE
        WHEN EXISTS (
            SELECT 1 FROM JPS_CALENDARIO_MES_REUNION cmr
            WHERE  cmr.IDMIEMBRO = g.IDMIEMBRO
            AND    cmr.REALIZADA = 'no'
        ) THEN 'OCUPADO'
        ELSE 'DISPONIBLE'
    END AS DISPONIBILIDAD
FROM   JPS_G_LC           g
JOIN   JPS_MIEMBRO        m   ON g.IDMIEMBRO = m.IDMIEMBRO
JOIN   JPS_CLUB_LECTURA   cl  ON g.IDCLUB    = cl.IDCLUB
JOIN   JPS_GRUPO_LECTURA  gl  ON g.IDGRUPO   = gl.IDGRUPO AND g.IDCLUB = gl.IDCLUB
WHERE  g.FECHA_FIN IS NULL
ORDER BY g.IDCLUB, gl.TIPO, m.PRIMER_APELLIDO
;
--------------------------------------------------------
--  DDL for View JPS_V_PAGOS_PENDIENTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_PAGOS_PENDIENTES" ("IDMIEMBRO", "NOMBRE_MIEMBRO", "IDCLUB", "NOMBRE_CLUB", "ESTADO_PAGO", "ULTIMO_PAGO", "PROXIMA_RENOVACION", "TELEFONO", "EMAIL") AS 
  SELECT
    em.idMiembro,
    em.nombre_miembro,
    em.idClub,
    em.nombre_club,
    em.estado_pago,
    em.ultimo_pago,
    em.proxima_renovacion,
    m.telefono,
    m.email
FROM JPS_V_ESTADO_MEMBRESIA em
JOIN JPS_MIEMBRO m ON em.idMiembro = m.idMiembro
WHERE em.estado_pago IN ('pendiente','moroso')
ORDER BY em.idClub, em.estado_pago DESC, em.nombre_miembro
;
--------------------------------------------------------
--  DDL for View JPS_V_PARTICIPACION_BIMESTRAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_PARTICIPACION_BIMESTRAL" ("IDMIEMBRO", "NOMBRE_MIEMBRO", "IDCLUB", "IDGRUPO_CLUB", "ANIO", "BIMESTRE", "REUNIONES_BIMESTRE", "INASISTENCIAS_BIMESTRE") AS 
  SELECT
    m.idMiembro,
    m.primer_nombre || ' ' || m.primer_apellido AS nombre_miembro,
    hm.idClub,
    hm.idClub AS idGrupo_club,
    -- Bimestre: 1=(ene-feb), 2=(mar-abr), 3=(may-jun),
    --           4=(jul-ago), 5=(sep-oct), 6=(nov-dic)
    EXTRACT(YEAR FROM hm.fecha_inicio)            AS anio,
    CEIL(EXTRACT(MONTH FROM hm.fecha_inicio) / 2) AS bimestre,
    -- Reuniones totales del grupo en ese bimestre
    (SELECT COUNT(*)
     FROM JPS_CALENDARIO_MES_REUNION cmr2
     JOIN JPS_G_LC glc2 ON cmr2.idGrupo = glc2.idGrupo
                        AND cmr2.idClub  = glc2.idClub
     WHERE glc2.idMiembro   = m.idMiembro
       AND glc2.idClub       = hm.idClub
       AND cmr2.realizada    = 'si'
       AND EXTRACT(YEAR FROM cmr2.fecha)                   = EXTRACT(YEAR FROM hm.fecha_inicio)
       AND CEIL(EXTRACT(MONTH FROM cmr2.fecha) / 2)        = CEIL(EXTRACT(MONTH FROM hm.fecha_inicio) / 2)
    ) AS reuniones_bimestre,
    -- Inasistencias del miembro en ese bimestre
    (SELECT COUNT(*)
     FROM JPS_INASISTENCIA i2
     WHERE i2.idMiembro = m.idMiembro
       AND EXTRACT(YEAR FROM i2.fecha)                   = EXTRACT(YEAR FROM hm.fecha_inicio)
       AND CEIL(EXTRACT(MONTH FROM i2.fecha) / 2)        = CEIL(EXTRACT(MONTH FROM hm.fecha_inicio) / 2)
    ) AS inasistencias_bimestre
FROM JPS_MIEMBRO             m
JOIN JPS_HISTORICO_MEMBRESIA hm ON m.idMiembro = hm.idMiembro
WHERE hm.estatus = 'activo'
;
--------------------------------------------------------
--  DDL for View JPS_V_PARTICIPACION_MENSUAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_PARTICIPACION_MENSUAL" ("IDGRUPO", "IDCLUB", "TIPO_GRUPO", "ANIO", "MES", "TOTAL_REUNIONES", "TOTAL_MIEMBROS", "TOTAL_INASISTENCIAS") AS 
  SELECT
    rg.idGrupo,
    rg.idClub,
    gl.tipo                              AS tipo_grupo,
    rg.anio,
    rg.mes,
    rg.total_reuniones,
    -- Miembros activos del grupo en ese periodo
    (SELECT COUNT(DISTINCT hm2.idMiembro)
     FROM JPS_HISTORICO_MEMBRESIA hm2
     WHERE hm2.idClub   = rg.idClub
       AND hm2.estatus  = 'activo'
       AND hm2.fecha_fin IS NULL) AS total_miembros,
    -- Inasistencias de ese grupo en ese mes
    (SELECT COUNT(*)
     FROM JPS_INASISTENCIA i
     WHERE i.idGrupo = rg.idGrupo
       AND i.idClub  = rg.idClub
       AND EXTRACT(YEAR  FROM i.fecha) = rg.anio
       AND EXTRACT(MONTH FROM i.fecha) = rg.mes
    ) AS total_inasistencias
FROM JPS_V_REUNIONES_POR_GRUPO rg
JOIN JPS_GRUPO_LECTURA gl ON rg.idGrupo = gl.idGrupo
                          AND rg.idClub  = gl.idClub
;
--------------------------------------------------------
--  DDL for View JPS_V_REUNION_DETALLE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_REUNION_DETALLE" ("FECHA", "IDCLUB", "NOMBRE_CLUB", "IDGRUPO", "TIPO_GRUPO", "DIA_REUNION", "HORA_INICIO", "HORA_FIN_MAX", "ISBN", "TITULO_LIBRO", "FECHA_INICIO_GLC", "ID_MODERADOR", "NOMBRE_MODERADOR", "REALIZADA", "CONCLUSIONES", "ULTIMA_DISCUSION", "VALORACION_FINAL") AS 
  SELECT
    cmr.FECHA,
    cmr.IDCLUB,
    cl.NOMBRE                                    AS NOMBRE_CLUB,
    cmr.IDGRUPO,
    gl.TIPO                                      AS TIPO_GRUPO,
    gl.DIA_REUNION,
    gl.HORA_I                                    AS HORA_INICIO,
    -- Hora de fin = hora inicio + 2 horas (máximo)
    TO_CHAR(
        TO_DATE(gl.HORA_I,'HH24:MI') + 2/24,
        'HH24:MI'
    )                                             AS HORA_FIN_MAX,
    cmr.ISBN,
    lb.TITULO_ORIGINAL                            AS TITULO_LIBRO,
    cmr.FECHA_INICIO                              AS FECHA_INICIO_GLC,
    cmr.IDMIEMBRO                                 AS ID_MODERADOR,
    m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO       AS NOMBRE_MODERADOR,
    cmr.REALIZADA,
    cmr.CONCLUSIONES,
    cmr.ULTIMA_DISCUSION,
    cmr.VALORACION_FINAL
FROM   JPS_CALENDARIO_MES_REUNION cmr
JOIN   JPS_CLUB_LECTURA   cl  ON cmr.IDCLUB  = cl.IDCLUB
JOIN   JPS_GRUPO_LECTURA  gl  ON cmr.IDGRUPO = gl.IDGRUPO AND cmr.IDCLUB = gl.IDCLUB
JOIN   JPS_LIBRO          lb  ON cmr.ISBN    = lb.ISBN
JOIN   JPS_MIEMBRO        m   ON cmr.IDMIEMBRO = m.IDMIEMBRO
ORDER BY cmr.IDCLUB, cmr.IDGRUPO, cmr.FECHA
;
--------------------------------------------------------
--  DDL for View JPS_V_REUNIONES_POR_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_REUNIONES_POR_GRUPO" ("IDGRUPO", "IDCLUB", "ANIO", "MES", "TOTAL_REUNIONES") AS 
  SELECT
    cmr.idGrupo,
    cmr.idClub,
    EXTRACT(YEAR  FROM cmr.fecha) AS anio,
    EXTRACT(MONTH FROM cmr.fecha) AS mes,
    COUNT(*) AS total_reuniones
FROM JPS_CALENDARIO_MES_REUNION cmr
WHERE cmr.realizada = 'si'
GROUP BY cmr.idGrupo, cmr.idClub,
         EXTRACT(YEAR  FROM cmr.fecha),
         EXTRACT(MONTH FROM cmr.fecha)
;
--------------------------------------------------------
--  DDL for View JPS_V_TASA_CAMBIO
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "JUAN123"."JPS_V_TASA_CAMBIO" ("IDPAIS", "NOMBRE_PAIS", "MONEDA", "TASA_A_USD") AS 
  SELECT p.idPais,
       p.nombre      AS nombre_pais,
       p.moneda,
       -- Tasa aproximada de conversión a USD (1 USD = X moneda_local)
       -- En un sistema real esto vendría de una tabla dinámica
       CASE p.moneda
           WHEN 'Dolar'     THEN 1.00        -- USD base
           WHEN 'Euro'      THEN 0.92        -- 1 USD = 0.92 EUR  → 1 EUR = 1.09 USD
           WHEN 'Libra'     THEN 0.79        -- 1 USD = 0.79 GBP
           WHEN 'Real'      THEN 5.05        -- 1 USD = 5.05 BRL
           WHEN 'Sequel'    THEN 3.70        -- 1 USD = 3.70 ILS (shequel)
           WHEN 'Corona'    THEN 10.60       -- 1 USD = 10.60 SEK
           WHEN 'Dolar AUD' THEN 1.54        -- 1 USD = 1.54 AUD
           WHEN 'Peso'      THEN 900.00      -- 1 USD = 900 ARS (Argentina)
           WHEN 'Rupia'     THEN 83.50       -- 1 USD = 83.50 INR
           ELSE 1.00
       END AS tasa_a_usd    -- cuántas unidades de moneda_local equivalen a 1 USD
FROM JPS_PAIS p
;
REM INSERTING into JUAN123.JPS_ASOCIADO
SET DEFINE OFF;
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (1,1);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (1,15);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (2,1);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (3,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (4,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (5,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (6,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (6,3);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (7,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (7,3);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (8,2);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (8,3);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (9,10);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (9,13);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (10,9);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (10,13);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (10,14);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (11,12);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (11,19);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (12,11);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (13,9);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (13,10);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (13,14);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (14,10);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (14,13);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (15,1);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (17,18);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (18,17);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (19,11);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (19,20);
Insert into JUAN123.JPS_ASOCIADO (IDCLUB1,IDCLUB2) values (20,19);
REM INSERTING into JUAN123.JPS_AUTOR
SET DEFINE OFF;
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (1,'Frank','Herbert',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (2,'Paulo','Coelho',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (3,'Ken','Follet',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (4,'Paula','Hawkins',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (5,'Stephen','King',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (6,'Arthur','Golden',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (7,'Ana','Frank',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (8,'Yuval','Harari',null,null,'Noah');
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (9,'Stieg','Larsson',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (10,'Khaled','Hosseini',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (11,'Markus','Zusak',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (12,'Horacio','Quiroga',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (13,'Aldous','Huxley',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (14,'Cassandra','Clare',null,null,null);
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (15,'Louisa','Alcott',null,null,'May');
Insert into JUAN123.JPS_AUTOR (IDAUTOR,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,NOMBRE_ANT_SEUDONIMO,SEGUNDO_NOMBRE) values (16,'Christopher','Paolini',null,null,null);
REM INSERTING into JUAN123.JPS_CALENDARIO_MES_REUNION
SET DEFINE OFF;
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('20-ENE-24','DD-MON-RR'),1,3,'ISBN-01',to_date('10-ENE-20','DD-MON-RR'),3,'si','Reunión de Niños','Lectura infantil',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('08-ENE-24','DD-MON-RR'),1,1,'ISBN-01',to_date('10-ENE-20','DD-MON-RR'),1,'si','Se discutio la primera parte de Dune, el mundo de Arrakis','La politica de las familias nobles',4);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('15-ENE-24','DD-MON-RR'),1,1,'ISBN-01',to_date('10-ENE-20','DD-MON-RR'),1,'si','Analisis del personaje de Paul Atreides y su destino','La relacion con los Fremen',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('10-ENE-24','DD-MON-RR'),1,2,'ISBN-16',to_date('10-ENE-20','DD-MON-RR'),2,'si','Inicio del viaje de Eragon y el encuentro con Saphira','El mundo de Alagaesia',4);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('09-ENE-24','DD-MON-RR'),2,4,'ISBN-08',to_date('05-MAR-19','DD-MON-RR'),13,'si','La revolucion cognitiva y el surgimiento del Homo sapiens','Como el lenguaje cambio todo',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('08-ENE-24','DD-MON-RR'),3,7,'ISBN-05',to_date('01-JUN-21','DD-MON-RR'),25,'si','El miedo como tema central de la obra de King','Pennywise como simbolo del mal colectivo',4);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('09-ENE-24','DD-MON-RR'),4,10,'ISBN-04',to_date('15-AGO-18','DD-MON-RR'),37,'si','Los narradores no confiables como recurso literario','La perspectiva de Rachel y sus contradicciones',4);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('08-ENE-24','DD-MON-RR'),5,13,'ISBN-10',to_date('20-FEB-22','DD-MON-RR'),49,'si','La amistad entre Amir y Hassan en el contexto de Afganistan','La culpa y la busqueda de redencion',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('08-ENE-24','DD-MON-RR'),6,16,'ISBN-08',to_date('01-NOV-17','DD-MON-RR'),61,'si','El impacto de las religiones y mitos en la sociedad humana','La construccion de realidades intersubjetivas',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('11-ENE-24','DD-MON-RR'),7,19,'ISBN-09',to_date('10-MAY-16','DD-MON-RR'),73,'si','Lisbeth Salander como personaje revolucionario en el genero policial','La critica social de Larsson a traves del crimen',4);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('09-ENE-24','DD-MON-RR'),8,22,'ISBN-15',to_date('01-SEP-20','DD-MON-RR'),85,'si','Los roles de genero en la epoca victoriana a traves de las hermanas March','La independencia de Jo como personaje adelantado a su tiempo',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('01-JUN-26','DD-MON-RR'),1,1,'ISBN-05',to_date('10-ENE-20','DD-MON-RR'),1,'si',null,null,null);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('08-JUN-26','DD-MON-RR'),1,1,'ISBN-05',to_date('10-ENE-20','DD-MON-RR'),1,'si',null,null,null);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('16-JUN-26','DD-MON-RR'),2,4,'ISBN-09',to_date('05-MAR-19','DD-MON-RR'),14,'si','Nos gusto bastante','14/06/2026 11:56',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('23-JUN-26','DD-MON-RR'),2,4,'ISBN-09',to_date('05-MAR-19','DD-MON-RR'),14,'si','Nos gusto bastante','14/06/2026 11:56',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('30-JUN-26','DD-MON-RR'),2,4,'ISBN-09',to_date('05-MAR-19','DD-MON-RR'),14,'si','Nos gusto bastante','14/06/2026 11:56',5);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('22-JUN-26','DD-MON-RR'),3,7,'ISBN-11',to_date('01-JUN-21','DD-MON-RR'),27,'si',null,null,null);
Insert into JUAN123.JPS_CALENDARIO_MES_REUNION (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,REALIZADA,CONCLUSIONES,ULTIMA_DISCUSION,VALORACION_FINAL) values (to_date('29-JUN-26','DD-MON-RR'),3,7,'ISBN-11',to_date('01-JUN-21','DD-MON-RR'),27,'si',null,null,null);
REM INSERTING into JUAN123.JPS_CIUDAD
SET DEFINE OFF;
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (1,9,'Berlin');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (2,9,'Friburgo');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (3,7,'Melbourne');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (4,7,'Sydney');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (5,7,'Brisbane');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (6,10,'Nueva Delhi');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (7,10,'Mumbai');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (8,10,'Agra');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (9,8,'Buenos Aires');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (10,1,'Nueva York');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (11,1,'Chicago');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (12,2,'Sao Paulo');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (13,2,'Rio de Janeiro');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (14,3,'Londres');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (15,3,'Edimburgo');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (16,4,'Amsterdam');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (17,5,'Tel Aviv');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (18,6,'Estocolmo');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (19,6,'Gotemburgo');
Insert into JUAN123.JPS_CIUDAD (IDCIUDAD,IDPAIS,NOMBRE) values (20,8,'Cordoba');
REM INSERTING into JUAN123.JPS_CLUB_LECTURA
SET DEFINE OFF;
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (1,1,'Paginas de Berlin','Unter den Linden 12','493012345','berlin@paginas.com','10115','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (2,2,'Lectores de la Selva Negra','Schwarzwaldstrasse 5','497612345','selvanegra@lect.com','79098','no',2);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (3,3,'Outback Readers','Collins Street 88','613012345','outback@readers.com','3000','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (4,4,'Sydney Book Society','George Street 200','612012345','sydney@booksoc.com','2000','no',3);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (5,5,'Canguros de Tinta','Queen Street 45','617012345','canguros@tinta.com','4000','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (6,6,'Letras del Ganges','Connaught Place 10','911112345','ganges@letras.com','110001','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (7,7,'Mentes de Mumbai','Marine Drive 33','912212345','mumbai@mentes.com','400001','no',4);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (8,8,'The Taj Mahal Reading Club','Taj Road 1','915612345','tajmahal@reading.com','282001','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (9,10,'Manhattan Readers','Fifth Avenue 350','12125550101','manhattan@readers.com','10001','no',1);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (10,11,'Windy City Book Club','Michigan Avenue 980','13125550202','windycity@books.com','60601','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (11,12,'Leitores de Sampa','Avenida Paulista 1200','551130305050','sampa@leitores.com','01310-100','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (12,13,'Carioca Club do Livro','Rua da Carioca 45','552130406060','carioca@livro.com','20010-000','no',5);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (13,14,'Baker Street Bookworms','Baker Street 221B','442071234567','baker@bookworms.co.uk','NW1 6XE','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (14,15,'Edinburgh Literary Circle','Royal Mile 10','441317654321','edinburgh@literary.co.uk','EH1 1PB','no',1);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (15,16,'De Amsterdamse Leeskring','Herengracht 120','312012345678','amsterdam@leeskring.nl','1015 BZ','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (16,17,'Tel Aviv Page Turners','Rothschild Blvd 25','97236543210','telaviv@pageturners.co.il','6473419','no',6);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (17,18,'Stockholms Lasallskap','Drottninggatan 55','4686123456','stockholm@lasallskap.se','111 21','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (18,19,'Gothenburg Readers Society','Kungsportsavenyen 21','4631654321','gothenburg@readers.se','411 36','no',5);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (19,9,'El Ateneo Lector','Florida 340','541143210000','ateneo@lector.com.ar','C1005AAH','si',null);
Insert into JUAN123.JPS_CLUB_LECTURA (IDCLUB,IDCIUDAD,NOMBRE,CALLE_AV,TELEFONO,EMAIL,CODIGO_POSTAL,CUOTA_MEMBRESIA,IDINSTITUCION) values (20,20,'Lectores del Suquia','Av. Colón 55','54351789000','suquia@lectores.com.ar','X5000','no',1);
REM INSERTING into JUAN123.JPS_ELENCO
SET DEFINE OFF;
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (1,1,'ISBN-15',1);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (2,1,'ISBN-15',1);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (3,1,'ISBN-15',1);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (5,1,'ISBN-15',1);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (13,2,'ISBN-09',2);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (14,2,'ISBN-09',2);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (15,2,'ISBN-09',2);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (17,2,'ISBN-09',2);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (25,3,'ISBN-05',3);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (26,3,'ISBN-05',3);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (27,3,'ISBN-05',3);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (29,3,'ISBN-05',3);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (37,4,'ISBN-04',4);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (38,4,'ISBN-04',4);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (39,4,'ISBN-04',4);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (41,4,'ISBN-04',4);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (49,5,'ISBN-10',5);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (50,5,'ISBN-10',5);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (51,5,'ISBN-10',5);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (53,5,'ISBN-10',5);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (61,6,'ISBN-08',6);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (62,6,'ISBN-08',6);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (63,6,'ISBN-08',6);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (65,6,'ISBN-08',6);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (73,7,'ISBN-01',7);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (74,7,'ISBN-01',7);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (75,7,'ISBN-01',7);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (77,7,'ISBN-01',7);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (85,8,'ISBN-06',8);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (86,8,'ISBN-06',8);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (87,8,'ISBN-06',8);
Insert into JUAN123.JPS_ELENCO (IDMIEMBRO,IDOBRA,ISBN,IDCLUB) values (89,8,'ISBN-06',8);
REM INSERTING into JUAN123.JPS_G_LC
SET DEFINE OFF;
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),2,1,1,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),3,1,1,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),4,1,1,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),5,1,2,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),6,1,2,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),7,1,2,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),8,1,2,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),9,1,3,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),10,1,3,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),11,1,3,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),12,1,3,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),14,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),15,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),16,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),17,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),18,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),19,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),20,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),21,2,6,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),22,2,6,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),23,2,6,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),24,2,6,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),26,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),27,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),28,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),29,3,8,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),30,3,8,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),31,3,8,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),32,3,8,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),33,3,9,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),34,3,9,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),35,3,9,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),36,3,9,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),38,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),39,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),40,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),41,4,11,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),42,4,11,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),43,4,11,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),44,4,11,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),45,4,12,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),46,4,12,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),47,4,12,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),48,4,12,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),50,5,13,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),51,5,13,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),52,5,13,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),53,5,14,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),54,5,14,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),55,5,14,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),56,5,14,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),57,5,15,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),58,5,15,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),59,5,15,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),60,5,15,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),62,6,16,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),63,6,16,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),64,6,16,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),65,6,17,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),66,6,17,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),67,6,17,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),68,6,17,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),69,6,18,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),70,6,18,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),71,6,18,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),72,6,18,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),74,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),75,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),76,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),77,7,20,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),78,7,20,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),79,7,20,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),80,7,20,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),81,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),82,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),83,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),84,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),86,8,22,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),87,8,22,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),88,8,22,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),89,8,23,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),90,8,23,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),91,8,23,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),92,8,23,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),93,8,24,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),94,8,24,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),95,8,24,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),96,8,24,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),1,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),2,1,2,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-ENE-20','DD-MON-RR'),3,1,3,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),13,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),14,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('05-MAR-19','DD-MON-RR'),15,2,6,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),25,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),26,3,8,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-JUN-21','DD-MON-RR'),27,3,9,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),37,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),38,4,11,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-AGO-18','DD-MON-RR'),39,4,12,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),49,5,13,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),50,5,14,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('20-FEB-22','DD-MON-RR'),51,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),61,6,16,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),62,6,17,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-NOV-17','DD-MON-RR'),63,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),73,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),74,7,20,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('10-MAY-16','DD-MON-RR'),75,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),85,8,22,to_date('14-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),86,8,23,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('01-SEP-20','DD-MON-RR'),87,8,24,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),221,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),222,2,5,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),223,1,3,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),3,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),245,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),246,10,29,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-MAY-25','DD-MON-RR'),249,10,28,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),261,10,28,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),281,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),282,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),283,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),284,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),285,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),286,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),287,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),288,1,1,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),293,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),294,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),295,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),296,2,4,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),302,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),303,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),304,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),305,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),306,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),307,3,7,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),313,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),314,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),315,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),316,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),317,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),318,4,10,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),324,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),325,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),326,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),327,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),328,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),329,5,13,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),335,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),336,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),337,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),338,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),339,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),340,6,16,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),346,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),347,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),348,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),349,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),350,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),351,7,19,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),357,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),358,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),359,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),360,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),361,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),362,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),368,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),369,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),370,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),371,8,22,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),352,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('13-JUN-26','DD-MON-RR'),248,10,30,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),330,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),331,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),332,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),334,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),341,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),342,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),343,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),344,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),345,6,18,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),333,5,15,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),367,8,24,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),366,8,24,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),353,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),354,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),355,7,21,null);
Insert into JUAN123.JPS_G_LC (FECHA_INICIO,IDMIEMBRO,IDCLUB,IDGRUPO,FECHA_FIN) values (to_date('15-JUN-26','DD-MON-RR'),356,7,21,null);
REM INSERTING into JUAN123.JPS_GRUPO_LECTURA
SET DEFINE OFF;
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (1,1,'adulto',to_date('10-ENE-20','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (2,1,'joven',to_date('10-ENE-20','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (3,1,'niño',to_date('10-ENE-20','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (4,2,'adulto',to_date('05-MAR-19','DD-MON-RR'),'Martes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (5,2,'joven',to_date('05-MAR-19','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (6,2,'niño',to_date('05-MAR-19','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (7,3,'adulto',to_date('01-JUN-21','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (8,3,'joven',to_date('01-JUN-21','DD-MON-RR'),'Miercoles','17:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (9,3,'niño',to_date('01-JUN-21','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (10,4,'adulto',to_date('15-AGO-18','DD-MON-RR'),'Martes','18:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (11,4,'joven',to_date('15-AGO-18','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (12,4,'niño',to_date('15-AGO-18','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (13,5,'adulto',to_date('20-FEB-22','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (14,5,'joven',to_date('20-FEB-22','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (15,5,'niño',to_date('20-FEB-22','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (16,6,'adulto',to_date('01-NOV-17','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (17,6,'joven',to_date('01-NOV-17','DD-MON-RR'),'Martes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (18,6,'niño',to_date('01-NOV-17','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (19,7,'adulto',to_date('10-MAY-16','DD-MON-RR'),'Jueves','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (20,7,'joven',to_date('10-MAY-16','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (21,7,'niño',to_date('10-MAY-16','DD-MON-RR'),'Lunes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (22,8,'adulto',to_date('01-SEP-20','DD-MON-RR'),'Martes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (23,8,'joven',to_date('01-SEP-20','DD-MON-RR'),'Jueves','17:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (24,8,'niño',to_date('01-SEP-20','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (25,9,'adulto',to_date('15-ENE-22','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (26,9,'joven',to_date('15-ENE-22','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (27,9,'niño',to_date('15-ENE-22','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (28,10,'adulto',to_date('20-MAR-21','DD-MON-RR'),'Martes','18:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (29,10,'joven',to_date('20-MAR-21','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (30,10,'niño',to_date('20-MAR-21','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (31,11,'adulto',to_date('10-FEB-23','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (32,11,'joven',to_date('10-FEB-23','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (33,11,'niño',to_date('10-FEB-23','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (34,12,'adulto',to_date('05-ABR-22','DD-MON-RR'),'Martes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (35,12,'joven',to_date('05-ABR-22','DD-MON-RR'),'Jueves','17:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (36,12,'niño',to_date('05-ABR-22','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (37,13,'adulto',to_date('01-SEP-19','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (38,13,'joven',to_date('01-SEP-19','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (39,13,'niño',to_date('01-SEP-19','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (40,14,'adulto',to_date('15-OCT-20','DD-MON-RR'),'Martes','18:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (41,14,'joven',to_date('15-OCT-20','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (42,14,'niño',to_date('15-OCT-20','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (43,15,'adulto',to_date('01-MAR-21','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (44,15,'joven',to_date('01-MAR-21','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (45,15,'niño',to_date('01-MAR-21','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (46,16,'adulto',to_date('10-ENE-23','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (47,16,'joven',to_date('10-ENE-23','DD-MON-RR'),'Martes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (48,16,'niño',to_date('10-ENE-23','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (49,17,'adulto',to_date('05-MAY-20','DD-MON-RR'),'Jueves','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (50,17,'joven',to_date('05-MAY-20','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (51,17,'niño',to_date('05-MAY-20','DD-MON-RR'),'Lunes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (52,18,'adulto',to_date('01-AGO-22','DD-MON-RR'),'Martes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (53,18,'joven',to_date('01-AGO-22','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (54,18,'niño',to_date('01-AGO-22','DD-MON-RR'),'Viernes','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (55,19,'adulto',to_date('10-JUN-21','DD-MON-RR'),'Lunes','18:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (56,19,'joven',to_date('10-JUN-21','DD-MON-RR'),'Miercoles','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (57,19,'niño',to_date('10-JUN-21','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (58,20,'adulto',to_date('20-SEP-23','DD-MON-RR'),'Martes','18:30');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (59,20,'joven',to_date('20-SEP-23','DD-MON-RR'),'Jueves','17:00');
Insert into JUAN123.JPS_GRUPO_LECTURA (IDGRUPO,IDCLUB,TIPO,FECHA_CREACION,DIA_REUNION,HORA_I) values (60,20,'niño',to_date('20-SEP-23','DD-MON-RR'),'Viernes','17:00');
REM INSERTING into JUAN123.JPS_HISTORICO_MEMBRESIA
SET DEFINE OFF;
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),1,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),2,1,'inactivo',to_date('13-JUN-26','DD-MON-RR'),'voluntario');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),3,1,'inactivo',to_date('13-JUN-26','DD-MON-RR'),'voluntario');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),4,1,'inactivo',to_date('13-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),5,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),6,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),7,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),8,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),9,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),10,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),11,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-ENE-20','DD-MON-RR'),12,1,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),13,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),14,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),15,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),16,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),17,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),18,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),19,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),20,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),21,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),22,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),23,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('05-MAR-19','DD-MON-RR'),24,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),25,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),26,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),27,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),28,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),29,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),30,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),31,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),32,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),33,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),34,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),35,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-JUN-21','DD-MON-RR'),36,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),37,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),38,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),39,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),40,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),41,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),42,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),43,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),44,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),45,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),46,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),47,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-AGO-18','DD-MON-RR'),48,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),49,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),50,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),51,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),52,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),53,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),54,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),55,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),56,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),57,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),58,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),59,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('20-FEB-22','DD-MON-RR'),60,5,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),61,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),62,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),63,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),64,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),65,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),66,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),67,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),68,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),69,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),70,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),71,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-NOV-17','DD-MON-RR'),72,6,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),73,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),74,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),75,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),76,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),77,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),78,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),79,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),80,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),81,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),82,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),83,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('10-MAY-16','DD-MON-RR'),84,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),85,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),86,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),87,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),88,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),89,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),90,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),91,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),92,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),93,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),94,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),95,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('01-SEP-20','DD-MON-RR'),96,8,'inactivo',to_date('14-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),221,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),222,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),223,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),3,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),245,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),246,10,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),248,10,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-MAY-25','DD-MON-RR'),249,10,'inactivo',to_date('13-JUN-26','DD-MON-RR'),'deudas');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('13-JUN-26','DD-MON-RR'),261,10,'inactivo',to_date('13-JUN-26','DD-MON-RR'),'voluntario');
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),281,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),282,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),283,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),284,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),285,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),286,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),287,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),288,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),289,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),290,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),291,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),292,1,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),293,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),294,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),295,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),296,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),297,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),298,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),299,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),300,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),301,2,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),302,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),303,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),304,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),305,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),306,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),307,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),308,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),309,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),310,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),311,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),312,3,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),313,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),314,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),315,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),316,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),317,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),318,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),319,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),320,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),321,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),322,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),323,4,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),324,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),325,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),326,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),327,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),328,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),329,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),330,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),331,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),332,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),333,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),334,5,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),335,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),336,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),337,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),338,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),339,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),340,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),341,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),342,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),343,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),344,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),345,6,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),346,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),347,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),348,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),349,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),350,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),351,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),352,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),353,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),354,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),355,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),356,7,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),357,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),358,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),359,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),360,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),361,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),362,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),363,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),364,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),365,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),366,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),367,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),368,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),369,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),370,8,'activo',null,null);
Insert into JUAN123.JPS_HISTORICO_MEMBRESIA (FECHA_INICIO,IDMIEMBRO,IDCLUB,ESTATUS,FECHA_FIN,MOTIVO_DEUDA) values (to_date('15-JUN-26','DD-MON-RR'),371,8,'activo',null,null);
REM INSERTING into JUAN123.JPS_IDIOMA
SET DEFINE OFF;
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (1,'Aleman');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (2,'Ingles');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (3,'Hindi');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (4,'Portugues');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (5,'Frances');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (6,'Italiano');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (7,'Japones');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (8,'Chino');
Insert into JUAN123.JPS_IDIOMA (IDIDIOMA,NOMBRE) values (9,'Arabe');
REM INSERTING into JUAN123.JPS_I_M
SET DEFINE OFF;
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (1,1,1,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (2,1,2,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (3,1,3,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (4,1,4,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (5,1,13,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (6,1,14,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (7,1,15,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (8,1,16,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (9,2,25,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (10,2,26,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (11,2,27,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (12,2,28,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (13,2,37,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (14,2,38,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (15,2,39,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (16,2,40,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (17,3,61,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (18,2,61,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (19,3,62,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (20,2,62,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (21,3,63,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (22,2,63,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (23,3,64,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (24,2,64,null);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (25,1,null,1);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (26,1,null,2);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (27,2,null,3);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (28,2,null,4);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (29,2,null,5);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (30,2,null,6);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (31,3,null,6);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (32,2,null,7);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (33,3,null,7);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (34,2,null,8);
Insert into JUAN123.JPS_I_M (IDI_M,IDIDIOMA,IDMIEMBRO,IDCLUB) values (35,3,null,8);
REM INSERTING into JUAN123.JPS_INASISTENCIA
SET DEFINE OFF;
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('08-ENE-24','DD-MON-RR'),1,1,'ISBN-01',to_date('10-ENE-20','DD-MON-RR'),1,'justificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('15-ENE-24','DD-MON-RR'),1,1,'ISBN-01',to_date('10-ENE-20','DD-MON-RR'),1,'injustificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('10-ENE-24','DD-MON-RR'),1,2,'ISBN-16',to_date('10-ENE-20','DD-MON-RR'),2,'justificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('09-ENE-24','DD-MON-RR'),2,4,'ISBN-08',to_date('05-MAR-19','DD-MON-RR'),13,'injustificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('08-ENE-24','DD-MON-RR'),3,7,'ISBN-05',to_date('01-JUN-21','DD-MON-RR'),25,'justificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('09-ENE-24','DD-MON-RR'),4,10,'ISBN-04',to_date('15-AGO-18','DD-MON-RR'),37,'injustificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('08-ENE-24','DD-MON-RR'),5,13,'ISBN-10',to_date('20-FEB-22','DD-MON-RR'),49,'justificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('08-ENE-24','DD-MON-RR'),6,16,'ISBN-08',to_date('01-NOV-17','DD-MON-RR'),61,'injustificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('11-ENE-24','DD-MON-RR'),7,19,'ISBN-09',to_date('10-MAY-16','DD-MON-RR'),73,'justificada');
Insert into JUAN123.JPS_INASISTENCIA (FECHA,IDCLUB,IDGRUPO,ISBN,FECHA_INICIO,IDMIEMBRO,ESTATUS) values (to_date('09-ENE-24','DD-MON-RR'),8,22,'ISBN-15',to_date('01-SEP-20','DD-MON-RR'),85,'injustificada');
REM INSERTING into JUAN123.JPS_INSTITUCION
SET DEFINE OFF;
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (1,'Biblioteca Publica de Berlin','biblioteca');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (2,'Universidad de Friburgo','universidad');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (3,'Biblioteca Publica de Sydney','biblioteca');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (4,'Universidad de Mumbai','universidad');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (5,'Biblioteca Nacional de Australia','biblioteca');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (6,'Universidad de Melbourne','universidad');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (7,'Biblioteca Publica de Nueva Delhi','biblioteca');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (8,'Colegio Aleman de Berlin','colegio');
Insert into JUAN123.JPS_INSTITUCION (IDINSTITUCION,NOMBRE,TIPO) values (9,'Universidad Humboldt de Berlin','universidad');
REM INSERTING into JUAN123.JPS_L_A
SET DEFINE OFF;
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-01',1);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-02',2);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-03',3);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-04',4);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-05',5);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-06',6);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-07',7);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-08',8);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-09',9);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-10',10);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-11',11);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-12',12);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-13',13);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-14',14);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-15',15);
Insert into JUAN123.JPS_L_A (ISBN,IDAUTOR) values ('ISBN-16',16);
REM INSERTING into JUAN123.JPS_LIBRO
SET DEFINE OFF;
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-01','Dune',1965,'En el planeta desertico Arrakis, el joven Paul Atreides lucha por sobrevivir tras la traicion que destruye a su familia, descubriendo su destino como lider de los Fremen.',412,'novela','Politica, ecologia y religion en un universo de ciencia ficcion');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-02','El Alquimista',1988,'Santiago, un joven pastor andaluz, emprende un viaje hacia Egipto en busca de un tesoro, descubriendo en el camino el verdadero significado de la vida.',192,'novela','Busqueda espiritual y autodescubrimiento');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-03','Los Pilares de la Tierra',1989,'En la Inglaterra medieval, un constructor de catedrales lucha durante decadas para erigir la iglesia mas bella del mundo en medio de guerras, intrigas y traiciones.',1000,'novela','Historia medieval, poder y arquitectura');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-04','La Chica del Tren',2015,'Rachel, una mujer alcoholica que viaja diariamente en tren, obsesionada con una pareja perfecta que ve desde la ventana, se ve envuelta en un misterioso caso de desaparicion.',320,'novela','Thriller psicologico y misterio');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-05','It',1986,'Un grupo de ninos en el pueblo de Derry enfrenta a una entidad maligna que adopta la forma de sus miedos mas profundos, principalmente la de un payaso llamado Pennywise.',1138,'novela','Terror psicologico e infancia');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-06','Memorias de una Geisha',1997,'Chiyo, una nina japonesa vendida como sirvienta, narra su transformacion en Sayuri, una de las geishas mas famosas de Gion, en el Japon previo a la Segunda Guerra Mundial.',448,'novela','Cultura japonesa y sacrificio personal');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-07','El Diario de Ana Frank',1942,'El diario personal de Ana Frank, una nina judia que se oculto con su familia en Amsterdam durante la ocupacion nazi, relatando su vida cotidiana con esperanza y madurez.',352,'novela','Holocausto y resiliencia humana');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-08','Sapiens: De Animales a Dioses',2011,'Yuval Noah Harari traza la historia de la humanidad desde los primeros Homo sapiens hasta la era moderna, explorando como la biologia y la historia han definido lo que somos.',512,'novela','Historia de la humanidad y evolucion social');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-09','Los Hombres que no Amaban a las Mujeres',2005,'Lisbeth Salander y Mikael Blomkvist investigan la desaparicion de una joven cuarenta anos atras, descubriendo oscuros secretos de una familia sueca.',672,'novela','Misterio criminal y critica social');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-10','Cometas en el Cielo',2003,'Amir, un nino afgano de familia acomodada, y Hassan, su amigo y sirviente, comparten una amistad marcada por la culpa y la redencion en el Afganistan previo a la invasion sovietica.',384,'novela','Amistad, culpa y redencion');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-11','La Ladrona de Libros',2005,'Liesel Meminger, una nina alemana adoptada en plena Segunda Guerra Mundial, encuentra en los libros un refugio ante el horror de la guerra, narrada desde la perspectiva de la Muerte.',584,'novela','Segunda Guerra Mundial y poder de las palabras');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-12','Cuentos de la Selva',1918,'Coleccion de cuentos donde animales de la selva sudamericana protagonizan historias de supervivencia, lealtad y la lucha entre la naturaleza salvaje y el mundo civilizado.',120,'cuento','Naturaleza, supervivencia y mundo animal');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-13','Un Mundo Feliz',1932,'En un futuro distopico, la humanidad vive en aparente felicidad gracias al condicionamiento social y las drogas, hasta que un salvaje criado fuera de este sistema cuestiona todo.',288,'novela','Distopia, control social y libertad');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-14','Ciudad de Hueso',2007,'Clary Fray descubre que pertenece a un linaje de Cazadores de Sombras, guerreros que protegen el mundo humano de demonios, y se ve envuelta en una guerra que amenaza ambos mundos.',512,'novela','Fantasia urbana y mundos ocultos');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-15','Mujercitas',1868,'Las hermanas March crecen durante la Guerra Civil estadounidense aprendiendo sobre amor, sacrificio, ambicion e identidad bajo la guia de su madre Marmee.',448,'novela','Familia, identidad femenina y crecimiento personal');
Insert into JUAN123.JPS_LIBRO (ISBN,TITULO_ORIGINAL,ANIO_PUBLICACION_1ERA_EDICION,SINOPSIS,CANTIDAD_PAGINAS,TIPO_NARRATIVA,RESUMEN_TEMA) values ('ISBN-16','Eragon',2002,'El joven granjero Eragon encuentra un huevo de dragon del que nace Saphira, iniciando un viaje epico para unirse a los legendarios Jinetes y combatir al malvado rey Galbatorix.',544,'novela','Fantasia epica y rito de iniciacion');
REM INSERTING into JUAN123.JPS_MEJOR_ACTOR
SET DEFINE OFF;
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (1,1,'ISBN-15',1,to_date('10-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (2,1,'ISBN-15',1,to_date('17-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (13,2,'ISBN-09',2,to_date('15-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (14,2,'ISBN-09',2,to_date('22-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (25,3,'ISBN-05',3,to_date('12-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (26,3,'ISBN-05',3,to_date('19-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (37,4,'ISBN-04',4,to_date('13-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (38,4,'ISBN-04',4,to_date('20-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (49,5,'ISBN-10',5,to_date('14-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (50,5,'ISBN-10',5,to_date('21-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (61,6,'ISBN-08',6,to_date('11-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (62,6,'ISBN-08',6,to_date('18-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (73,7,'ISBN-01',7,to_date('16-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (74,7,'ISBN-01',7,to_date('23-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (85,8,'ISBN-06',8,to_date('10-FEB-24','DD-MON-RR'));
Insert into JUAN123.JPS_MEJOR_ACTOR (IDMIEMBRO,IDOBRA,ISBN,IDCLUB,FECHA_PRESENTACION) values (86,8,'ISBN-06',8,to_date('17-FEB-24','DD-MON-RR'));
REM INSERTING into JUAN123.JPS_MEMBRESIA_PAGO
SET DEFINE OFF;
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (1,to_date('10-ENE-20','DD-MON-RR'),1,1,to_date('15-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (2,to_date('10-ENE-20','DD-MON-RR'),2,1,to_date('15-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (3,to_date('10-ENE-20','DD-MON-RR'),3,1,to_date('15-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (4,to_date('10-ENE-20','DD-MON-RR'),4,1,to_date('20-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (5,to_date('10-ENE-20','DD-MON-RR'),5,1,to_date('20-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (6,to_date('10-ENE-20','DD-MON-RR'),6,1,to_date('20-ENE-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (7,to_date('01-JUN-21','DD-MON-RR'),25,3,to_date('05-JUN-21','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (8,to_date('01-JUN-21','DD-MON-RR'),26,3,to_date('05-JUN-21','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (9,to_date('01-JUN-21','DD-MON-RR'),27,3,to_date('07-JUN-21','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (10,to_date('01-JUN-21','DD-MON-RR'),28,3,to_date('07-JUN-21','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (11,to_date('20-FEB-22','DD-MON-RR'),49,5,to_date('22-FEB-22','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (12,to_date('20-FEB-22','DD-MON-RR'),50,5,to_date('22-FEB-22','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (13,to_date('20-FEB-22','DD-MON-RR'),51,5,to_date('25-FEB-22','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (14,to_date('20-FEB-22','DD-MON-RR'),52,5,to_date('25-FEB-22','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (15,to_date('01-NOV-17','DD-MON-RR'),61,6,to_date('05-NOV-17','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (16,to_date('01-NOV-17','DD-MON-RR'),62,6,to_date('05-NOV-17','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (17,to_date('01-NOV-17','DD-MON-RR'),63,6,to_date('08-NOV-17','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (18,to_date('01-NOV-17','DD-MON-RR'),64,6,to_date('08-NOV-17','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (19,to_date('01-SEP-20','DD-MON-RR'),85,8,to_date('05-SEP-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (20,to_date('01-SEP-20','DD-MON-RR'),86,8,to_date('05-SEP-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (21,to_date('01-SEP-20','DD-MON-RR'),87,8,to_date('08-SEP-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (22,to_date('01-SEP-20','DD-MON-RR'),88,8,to_date('08-SEP-20','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (23,to_date('10-ENE-20','DD-MON-RR'),1,1,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (24,to_date('10-ENE-20','DD-MON-RR'),1,1,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (25,to_date('13-JUN-26','DD-MON-RR'),246,10,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (26,to_date('13-JUN-26','DD-MON-RR'),248,10,to_date('13-JUN-26','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (27,to_date('13-MAY-25','DD-MON-RR'),249,10,to_date('13-MAY-25','DD-MON-RR'));
Insert into JUAN123.JPS_MEMBRESIA_PAGO (IDPAGO,FECHA_INICIO,IDMIEMBRO,IDCLUB,FECHA_PAGO) values (28,to_date('13-JUN-26','DD-MON-RR'),261,10,to_date('13-JUN-26','DD-MON-RR'));
REM INSERTING into JUAN123.JPS_MIEMBRO
SET DEFINE OFF;
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (1,9,'DE10000001','Hans','Becker','Hoffmann',to_date('10-ABR-85','DD-MON-RR'),'491710001','hans.becker@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (2,9,'DE10000002','Anna','Schneider','Koch',to_date('22-AGO-90','DD-MON-RR'),'491710002','anna.schneider@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (3,9,'DE10000003','Erik','Wagner','Bauer',to_date('05-DIC-78','DD-MON-RR'),'491710003','erik.wagner@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (4,9,'DE10000004','Petra','Meyer','Schulz',to_date('17-JUN-82','DD-MON-RR'),'491710004','petra.meyer@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (5,9,'DE10000005','Leon','Richter','Wolf',to_date('14-MAR-05','DD-MON-RR'),'491710005','leon.richter@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (6,9,'DE10000006','Mia','Klein','Braun',to_date('28-SEP-07','DD-MON-RR'),'491710006','mia.klein@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (7,9,'DE10000007','Finn','Schulz','Lange',to_date('02-NOV-04','DD-MON-RR'),'491710007','finn.schulz@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (8,9,'DE10000008','Sophie','Weber','Krause',to_date('19-JUL-06','DD-MON-RR'),'491710008','sophie.weber@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (9,9,'DE10000009','Max','Muller','Schmidt',to_date('08-FEB-15','DD-MON-RR'),'491710009','max.muller@mail.de',1,1,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (10,9,'DE10000010','Lena','Fischer','Weber',to_date('23-MAY-14','DD-MON-RR'),'491710010','lena.fischer@mail.de',1,1,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (11,9,'DE10000011','Tom','Becker','Hoffmann',to_date('11-OCT-16','DD-MON-RR'),'491710011','tom.becker@mail.de',2,3,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (12,9,'DE10000012','Emma','Schneider','Koch',to_date('30-AGO-15','DD-MON-RR'),'491710012','emma.schneider@mail.de',2,3,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (13,9,'DE20000001','Franz','Huber','Maier',to_date('20-ENE-75','DD-MON-RR'),'497620001','franz.huber@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (14,9,'DE20000002','Helga','Zimmermann','Gruber',to_date('15-ABR-80','DD-MON-RR'),'497620002','helga.zimm@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (15,9,'DE20000003','Otto','Braun','Kraus',to_date('03-SEP-70','DD-MON-RR'),'497620003','otto.braun@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (16,9,'DE20000004','Greta','Wolf','Lehmann',to_date('28-DIC-88','DD-MON-RR'),'497620004','greta.wolf@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (17,9,'DE20000005','Lukas','Lange','Schmitt',to_date('11-JUN-03','DD-MON-RR'),'497620005','lukas.lange@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (18,9,'DE20000006','Julia','Krause','Bauer',to_date('24-FEB-05','DD-MON-RR'),'497620006','julia.krause@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (19,9,'DE20000007','Tobias','Fuchs','Keller',to_date('07-AGO-04','DD-MON-RR'),'497620007','tobias.fuchs@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (20,9,'DE20000008','Laura','Koch','Simon',to_date('19-NOV-06','DD-MON-RR'),'497620008','laura.koch@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (21,9,'DE20000009','Jonas','Huber','Maier',to_date('15-MAR-14','DD-MON-RR'),'497620009','jonas.huber@mail.de',1,13,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (22,9,'DE20000010','Clara','Zimmermann','Gruber',to_date('22-JUL-15','DD-MON-RR'),'497620010','clara.zimm@mail.de',1,13,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (23,9,'DE20000011','Felix','Braun','Kraus',to_date('09-ENE-16','DD-MON-RR'),'497620011','felix.braun@mail.de',2,15,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (24,9,'DE20000012','Ida','Wolf','Lehmann',to_date('30-OCT-13','DD-MON-RR'),'497620012','ida.wolf@mail.de',2,15,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (25,7,'AU30000001','Oliver','Brown','Taylor',to_date('14-MAY-83','DD-MON-RR'),'614130001','oliver.brown@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (26,7,'AU30000002','Charlotte','Davis','Wilson',to_date('27-SEP-91','DD-MON-RR'),'614130002','charlotte.davis@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (27,7,'AU30000003','William','Martin','Anderson',to_date('18-FEB-77','DD-MON-RR'),'614130003','william.martin@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (28,7,'AU30000004','Emily','Thompson','Jackson',to_date('03-NOV-86','DD-MON-RR'),'614130004','emily.thompson@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (29,7,'AU30000005','Noah','White','Harris',to_date('22-ABR-04','DD-MON-RR'),'614130005','noah.white@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (30,7,'AU30000006','Ava','Clark','Lewis',to_date('15-AGO-06','DD-MON-RR'),'614130006','ava.clark@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (31,7,'AU30000007','Liam','Robinson','Walker',to_date('01-DIC-05','DD-MON-RR'),'614130007','liam.robinson@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (32,7,'AU30000008','Grace','Hall','Young',to_date('19-MAR-07','DD-MON-RR'),'614130008','grace.hall@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (33,7,'AU30000009','Jack','Smith','Brown',to_date('08-JUN-14','DD-MON-RR'),'614130009','jack.smith@mail.au',3,25,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (34,7,'AU30000010','Lily','Johnson','Wilson',to_date('24-OCT-15','DD-MON-RR'),'614130010','lily.johnson@mail.au',3,25,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (35,7,'AU30000011','Harry','Williams','Jones',to_date('13-FEB-16','DD-MON-RR'),'614130011','harry.williams@mail.au',4,27,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (36,7,'AU30000012','Isla','Jones','Davis',to_date('05-SEP-13','DD-MON-RR'),'614130012','isla.jones@mail.au',4,27,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (37,7,'AU40000001','Thomas','Moore','Taylor',to_date('16-JUL-79','DD-MON-RR'),'612040001','thomas.moore@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (38,7,'AU40000002','Jessica','Taylor','Anderson',to_date('29-MAR-87','DD-MON-RR'),'612040002','jessica.taylor@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (39,7,'AU40000003','Daniel','Anderson','Thomas',to_date('12-NOV-75','DD-MON-RR'),'612040003','daniel.anderson@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (40,7,'AU40000004','Olivia','Jackson','Martin',to_date('07-MAY-93','DD-MON-RR'),'612040004','olivia.jackson@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (41,7,'AU40000005','Ethan','Harris','Thompson',to_date('31-AGO-03','DD-MON-RR'),'612040005','ethan.harris@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (42,7,'AU40000006','Sophia','Martin','Garcia',to_date('14-ENE-05','DD-MON-RR'),'612040006','sophia.martin@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (43,7,'AU40000007','Mason','Garcia','Martinez',to_date('27-JUN-06','DD-MON-RR'),'612040007','mason.garcia@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (44,7,'AU40000008','Isabella','Martinez','Lopez',to_date('09-OCT-04','DD-MON-RR'),'612040008','isabella.mart@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (45,7,'AU40000009','Lucas','Robinson','Walker',to_date('18-ABR-14','DD-MON-RR'),'612040009','lucas.robinson@mail.au',3,37,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (46,7,'AU40000010','Mia','Walker','Hall',to_date('03-AGO-15','DD-MON-RR'),'612040010','mia.walker@mail.au',4,38,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (47,7,'AU40000011','Henry','Hall','Young',to_date('21-DIC-16','DD-MON-RR'),'612040011','henry.hall@mail.au',4,38,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (48,7,'AU40000012','Amelia','Young','Allen',to_date('14-JUL-13','DD-MON-RR'),'612040012','amelia.young@mail.au',3,37,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (49,7,'AU50000001','Alexander','Allen','King',to_date('25-FEB-81','DD-MON-RR'),'617050001','alex.allen@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (50,7,'AU50000002','Chloe','King','Wright',to_date('10-JUN-89','DD-MON-RR'),'617050002','chloe.king@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (51,7,'AU50000003','Benjamin','Wright','Scott',to_date('03-OCT-76','DD-MON-RR'),'617050003','ben.wright@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (52,7,'AU50000004','Hannah','Scott','Green',to_date('17-ABR-84','DD-MON-RR'),'617050004','hannah.scott@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (53,7,'AU50000005','Samuel','Green','Baker',to_date('29-JUL-04','DD-MON-RR'),'617050005','samuel.green@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (54,7,'AU50000006','Zoe','Baker','Adams',to_date('12-NOV-06','DD-MON-RR'),'617050006','zoe.baker@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (55,7,'AU50000007','Ryan','Adams','Nelson',to_date('05-MAR-05','DD-MON-RR'),'617050007','ryan.adams@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (56,7,'AU50000008','Natalie','Nelson','Carter',to_date('18-AGO-07','DD-MON-RR'),'617050008','natalie.nelson@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (57,7,'AU50000009','Dylan','Carter','Mitchell',to_date('07-MAY-14','DD-MON-RR'),'617050009','dylan.carter@mail.au',3,49,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (58,7,'AU50000010','Ruby','Mitchell','Perez',to_date('20-SEP-15','DD-MON-RR'),'617050010','ruby.mitchell@mail.au',4,50,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (59,7,'AU50000011','Logan','Perez','Roberts',to_date('15-ENE-16','DD-MON-RR'),'617050011','logan.perez@mail.au',4,50,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (60,7,'AU50000012','Zara','Roberts','Turner',to_date('28-NOV-13','DD-MON-RR'),'617050012','zara.roberts@mail.au',3,49,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (61,10,'IN60000001','Arjun','Sharma','Kumar',to_date('18-MAR-84','DD-MON-RR'),'911160001','arjun.sharma@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (62,10,'IN60000002','Priya','Kumar','Singh',to_date('04-JUL-90','DD-MON-RR'),'911160002','priya.kumar@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (63,10,'IN60000003','Vikram','Patel','Shah',to_date('22-NOV-78','DD-MON-RR'),'911160003','vikram.patel@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (64,10,'IN60000004','Ananya','Singh','Verma',to_date('09-MAY-86','DD-MON-RR'),'911160004','ananya.singh@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (65,10,'IN60000005','Rohan','Gupta','Mehta',to_date('16-SEP-04','DD-MON-RR'),'911160005','rohan.gupta@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (66,10,'IN60000006','Ishaan','Mehta','Joshi',to_date('29-ENE-06','DD-MON-RR'),'911160006','ishaan.mehta@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (67,10,'IN60000007','Kavya','Joshi','Nair',to_date('12-MAY-05','DD-MON-RR'),'911160007','kavya.joshi@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (68,10,'IN60000008','Anika','Nair','Reddy',to_date('25-OCT-07','DD-MON-RR'),'911160008','anika.nair@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (69,10,'IN60000009','Aarav','Sharma','Kumar',to_date('14-FEB-14','DD-MON-RR'),'911160009','aarav.sharma@mail.in',5,61,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (70,10,'IN60000010','Diya','Kumar','Singh',to_date('27-JUN-15','DD-MON-RR'),'911160010','diya.kumar@mail.in',5,61,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (71,10,'IN60000011','Vihaan','Patel','Shah',to_date('10-OCT-16','DD-MON-RR'),'911160011','vihaan.patel@mail.in',6,63,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (72,10,'IN60000012','Saanvi','Singh','Verma',to_date('03-ABR-13','DD-MON-RR'),'911160012','saanvi.singh@mail.in',6,63,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (73,10,'IN70000001','Siddharth','Verma','Kapoor',to_date('21-JUN-80','DD-MON-RR'),'912270001','siddharth.v@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (74,10,'IN70000002','Pooja','Kapoor','Bose',to_date('14-OCT-88','DD-MON-RR'),'912270002','pooja.kapoor@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (75,10,'IN70000003','Karan','Bose','Malhotra',to_date('07-FEB-76','DD-MON-RR'),'912270003','karan.bose@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (76,10,'IN70000004','Meera','Malhotra','Chauhan',to_date('30-AGO-93','DD-MON-RR'),'912270004','meera.malhot@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (77,10,'IN70000005','Ayaan','Chauhan','Saxena',to_date('03-DIC-03','DD-MON-RR'),'912270005','ayaan.chauhan@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (78,10,'IN70000006','Riya','Saxena','Pandey',to_date('16-ABR-05','DD-MON-RR'),'912270006','riya.saxena@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (79,10,'IN70000007','Kabir','Pandey','Trivedi',to_date('29-AGO-06','DD-MON-RR'),'912270007','kabir.pandey@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (80,10,'IN70000008','Zara','Trivedi','Agarwal',to_date('12-FEB-04','DD-MON-RR'),'912270008','zara.trivedi@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (81,10,'IN70000009','Aryan','Verma','Kapoor',to_date('19-JUL-14','DD-MON-RR'),'912270009','aryan.verma@mail.in',5,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (82,10,'IN70000010','Aisha','Kapoor','Bose',to_date('02-NOV-15','DD-MON-RR'),'912270010','aisha.kapoor@mail.in',6,74,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (83,10,'IN70000011','Dhruv','Bose','Malhotra',to_date('25-MAR-16','DD-MON-RR'),'912270011','dhruv.bose@mail.in',6,74,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (84,10,'IN70000012','Nisha','Malhotra','Chauhan',to_date('18-AGO-13','DD-MON-RR'),'912270012','nisha.malhot@mail.in',5,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (85,10,'IN80000001','Raj','Khanna','Bajaj',to_date('11-ABR-82','DD-MON-RR'),'915680001','raj.khanna@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (86,10,'IN80000002','Sunita','Bajaj','Chopra',to_date('24-AGO-91','DD-MON-RR'),'915680002','sunita.bajaj@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (87,10,'IN80000003','Nikhil','Chopra','Tiwari',to_date('17-DIC-74','DD-MON-RR'),'915680003','nikhil.chopra@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (88,10,'IN80000004','Divya','Tiwari','Mishra',to_date('30-JUN-85','DD-MON-RR'),'915680004','divya.tiwari@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (89,10,'IN80000005','Shaurya','Mishra','Srivastava',to_date('13-OCT-04','DD-MON-RR'),'915680005','shaurya.m@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (90,10,'IN80000006','Shreya','Srivastava','Yadav',to_date('26-FEB-06','DD-MON-RR'),'915680006','shreya.sri@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (91,10,'IN80000007','Advait','Yadav','Dubey',to_date('09-JUL-05','DD-MON-RR'),'915680007','advait.yadav@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (92,10,'IN80000008','Tanvi','Dubey','Shukla',to_date('22-DIC-07','DD-MON-RR'),'915680008','tanvi.dubey@mail.in',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (93,10,'IN80000009','Atharv','Khanna','Bajaj',to_date('01-SEP-14','DD-MON-RR'),'915680009','atharv.khanna@mail.in',5,85,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (94,10,'IN80000010','Myra','Bajaj','Chopra',to_date('14-ENE-15','DD-MON-RR'),'915680010','myra.bajaj@mail.in',8,86,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (95,10,'IN80000011','Reyansh','Chopra','Tiwari',to_date('27-MAY-16','DD-MON-RR'),'915680011','reyansh.chopra@mail.in',8,86,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (96,10,'IN80000012','Anvi','Tiwari','Mishra',to_date('10-OCT-13','DD-MON-RR'),'915680012','anvi.tiwari@mail.in',9,87,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (221,9,'DE97000001','Dieter','Krause','Hoffmann',to_date('14-MAY-87','DD-MON-RR'),'491797001','dieter.krause@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (222,9,'DE98000001','Laura','Lange','Richter',to_date('20-MAR-06','DD-MON-RR'),'491798001','laura.lange.new@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (223,9,'DE99000001','Tim','Fischer','Muller',to_date('10-JUN-15','DD-MON-RR'),'491799001','tim.fischer.new@mail.de',1,1,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (245,9,'L01X00T47','Hans','Muller','Schmidt',to_date('15-MAY-90','DD-MON-RR'),'491512345678','hans.muller@correo.com',null,null,'Michael');
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (246,1,'4568911618','Ryan','Giggs','Macgiver',to_date('10-OCT-10','DD-MON-RR'),'7899897978789','verstappen@gmail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (248,1,'C987655431','Tommy','Smith','Williams',to_date('15-AGO-16','DD-MON-RR'),'1234567899418','asdasd@gmail.com',22,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (249,1,'C193852949','Carlos','Gomez','Peraza',to_date('10-ABR-80','DD-MON-RR'),'1291291293','dada@gmail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (261,1,'V88888888','Mariana','Salazar','Perez',to_date('05-MAY-90','DD-MON-RR'),'555123456789','mariana@gmail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (326,10,'IN326','Mbr326','Ape326','X',to_date('01-ENE-83','DD-MON-RR'),'326','mbr326@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (327,10,'IN327','Mbr327','Ape327','X',to_date('01-MAY-83','DD-MON-RR'),'327','mbr327@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (328,10,'IN328','Mbr328','Ape328','X',to_date('01-SEP-83','DD-MON-RR'),'328','mbr328@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (329,10,'IN329','Mbr329','Ape329','X',to_date('01-ENE-84','DD-MON-RR'),'329','mbr329@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (330,10,'IN330','Mbr330','Ape330','X',to_date('15-OCT-16','DD-MON-RR'),'330','mbr330@mail.com',47,324,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (331,10,'IN331','Mbr331','Ape331','X',to_date('15-NOV-16','DD-MON-RR'),'331','mbr331@mail.com',48,324,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (332,10,'IN332','Mbr332','Ape332','X',to_date('15-DIC-16','DD-MON-RR'),'332','mbr332@mail.com',49,324,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (333,10,'IN333','Mbr333','Ape333','X',to_date('15-MAR-16','DD-MON-RR'),'333','mbr333@mail.com',50,324,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (334,10,'IN334','Mbr334','Ape334','X',to_date('15-ABR-16','DD-MON-RR'),'334','mbr334@mail.com',51,324,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (335,10,'IN335','Mbr335','Ape335','X',to_date('01-ENE-86','DD-MON-RR'),'335','mbr335@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (336,10,'IN336','Mbr336','Ape336','X',to_date('01-MAY-86','DD-MON-RR'),'336','mbr336@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (337,10,'IN337','Mbr337','Ape337','X',to_date('01-SEP-86','DD-MON-RR'),'337','mbr337@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (338,10,'IN338','Mbr338','Ape338','X',to_date('01-ENE-87','DD-MON-RR'),'338','mbr338@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (339,10,'IN339','Mbr339','Ape339','X',to_date('01-MAY-87','DD-MON-RR'),'339','mbr339@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (340,10,'IN340','Mbr340','Ape340','X',to_date('01-SEP-87','DD-MON-RR'),'340','mbr340@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (341,10,'IN341','Mbr341','Ape341','X',to_date('15-NOV-16','DD-MON-RR'),'341','mbr341@mail.com',58,335,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (342,10,'IN342','Mbr342','Ape342','X',to_date('15-DIC-16','DD-MON-RR'),'342','mbr342@mail.com',59,335,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (343,10,'IN343','Mbr343','Ape343','X',to_date('15-MAR-16','DD-MON-RR'),'343','mbr343@mail.com',60,335,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (344,10,'IN344','Mbr344','Ape344','X',to_date('15-ABR-16','DD-MON-RR'),'344','mbr344@mail.com',61,335,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (345,10,'IN345','Mbr345','Ape345','X',to_date('15-MAY-16','DD-MON-RR'),'345','mbr345@mail.com',62,335,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (346,8,'AR346','Mbr346','Ape346','X',to_date('01-SEP-89','DD-MON-RR'),'346','mbr346@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (347,8,'AR347','Mbr347','Ape347','X',to_date('01-ENE-90','DD-MON-RR'),'347','mbr347@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (348,8,'AR348','Mbr348','Ape348','X',to_date('01-MAY-90','DD-MON-RR'),'348','mbr348@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (349,8,'AR349','Mbr349','Ape349','X',to_date('01-SEP-90','DD-MON-RR'),'349','mbr349@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (350,8,'AR350','Mbr350','Ape350','X',to_date('01-ENE-91','DD-MON-RR'),'350','mbr350@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (351,8,'AR351','Mbr351','Ape351','X',to_date('01-MAY-91','DD-MON-RR'),'351','mbr351@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (352,8,'AR352','Mbr352','Ape352','X',to_date('15-DIC-16','DD-MON-RR'),'352','mbr352@mail.com',69,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (353,8,'AR353','Mbr353','Ape353','X',to_date('15-MAR-16','DD-MON-RR'),'353','mbr353@mail.com',70,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (354,8,'AR354','Mbr354','Ape354','X',to_date('15-ABR-16','DD-MON-RR'),'354','mbr354@mail.com',71,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (355,8,'AR355','Mbr355','Ape355','X',to_date('15-MAY-16','DD-MON-RR'),'355','mbr355@mail.com',72,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (356,8,'AR356','Mbr356','Ape356','X',to_date('15-JUN-16','DD-MON-RR'),'356','mbr356@mail.com',73,73,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (357,8,'AR357','Mbr357','Ape357','X',to_date('01-MAY-93','DD-MON-RR'),'357','mbr357@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (358,8,'AR358','Mbr358','Ape358','X',to_date('01-SEP-93','DD-MON-RR'),'358','mbr358@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (359,8,'AR359','Mbr359','Ape359','X',to_date('01-ENE-94','DD-MON-RR'),'359','mbr359@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (281,9,'DE281001','Klaus','Richter','Berg',to_date('15-MAR-80','DD-MON-RR'),'491781001','k.richter281@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (282,9,'DE282001','Inge','Muller','Stein',to_date('22-JUL-78','DD-MON-RR'),'491782001','i.muller282@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (283,9,'DE283001','Dieter','Wolf','Mann',to_date('10-ENE-85','DD-MON-RR'),'491783001','d.wolf283@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (284,9,'DE284001','Ursula','Braun','Koch',to_date('03-ABR-72','DD-MON-RR'),'491784001','u.braun284@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (285,9,'DE285001','Gerhard','Klein','Bauer',to_date('18-SEP-90','DD-MON-RR'),'491785001','g.klein285@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (286,9,'DE286001','Helga','Fischer','Jung',to_date('25-DIC-68','DD-MON-RR'),'491786001','h.fischer286@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (287,9,'DE287001','Horst','Weber','Kohl',to_date('07-FEB-83','DD-MON-RR'),'491787001','h.weber287@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (288,9,'DE288001','Brigitte','Zimmermann','Hahn',to_date('30-OCT-75','DD-MON-RR'),'491788001','b.zimm288@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (289,9,'DE289001','Lukas','Richter','X',to_date('10-MAR-16','DD-MON-RR'),'491789001','l.richter289@mail.de',21,281,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (290,9,'DE290001','Lena','Muller','X',to_date('05-JUL-15','DD-MON-RR'),'491790001','l.muller290@mail.de',22,282,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (291,9,'DE291001','Tom','Wolf','X',to_date('20-AGO-15','DD-MON-RR'),'491791001','t.wolf291@mail.de',23,283,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (292,9,'DE292001','Anna','Braun','X',to_date('14-ENE-16','DD-MON-RR'),'491792001','a.braun292@mail.de',24,284,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (293,9,'DE293001','Ernst','Lang','Grad',to_date('11-MAY-79','DD-MON-RR'),'491793001','e.lang293@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (294,9,'DE294001','Monika','Stein','Roth',to_date('09-NOV-87','DD-MON-RR'),'491794001','m.stein294@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (295,9,'DE295001','Werner','Weis','Hess',to_date('14-JUN-73','DD-MON-RR'),'491795001','w.weis295@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (296,9,'DE296001','Anke','Gross','Sauer',to_date('28-FEB-91','DD-MON-RR'),'491796001','a.gross296@mail.de',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (297,9,'DE297001','Max','Lang','X',to_date('12-ABR-16','DD-MON-RR'),'491797001','m.lang297@mail.de',25,293,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (298,9,'DE298001','Lisa','Stein','X',to_date('08-OCT-15','DD-MON-RR'),'491798001','l.stein298@mail.de',26,294,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (299,9,'DE299001','Ben','Weis','X',to_date('25-JUN-15','DD-MON-RR'),'491799001','b.weis299@mail.de',27,295,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (300,9,'DE300001','Nina','Gross','X',to_date('30-ENE-16','DD-MON-RR'),'491800001','n.gross300@mail.de',28,296,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (301,9,'DE301001','Paul','Koch','X',to_date('17-SEP-15','DD-MON-RR'),'491801001','p.koch301@mail.de',29,293,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (302,7,'AU302001','James','Smith','Jr',to_date('12-ABR-82','DD-MON-RR'),'61302001','j.smith302@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (303,7,'AU303001','Emily','Jones','Sr',to_date('19-JUN-77','DD-MON-RR'),'61303001','e.jones303@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (304,7,'AU304001','Liam','Taylor','II',to_date('05-NOV-88','DD-MON-RR'),'61304001','l.taylor304@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (305,7,'AU305001','Olivia','Brown','III',to_date('23-AGO-93','DD-MON-RR'),'61305001','o.brown305@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (306,7,'AU306001','Noah','Wilson','IV',to_date('14-MAR-70','DD-MON-RR'),'61306001','n.wilson306@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (307,7,'AU307001','Charlotte','Moore','V',to_date('30-DIC-86','DD-MON-RR'),'61307001','c.moore307@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (308,7,'AU308001','Jack','Smith','X',to_date('10-MAR-16','DD-MON-RR'),'61308001','jack308@mail.au',30,302,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (309,7,'AU309001','Mia','Jones','X',to_date('15-JUL-15','DD-MON-RR'),'61309001','mia309@mail.au',31,303,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (310,7,'AU310001','Eli','Taylor','X',to_date('20-NOV-15','DD-MON-RR'),'61310001','eli310@mail.au',32,304,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (311,7,'AU311001','Ivy','Brown','X',to_date('05-ABR-16','DD-MON-RR'),'61311001','ivy311@mail.au',33,305,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (312,7,'AU312001','Leo','Wilson','X',to_date('28-AGO-15','DD-MON-RR'),'61312001','leo312@mail.au',34,306,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (313,7,'AU313001','Isla','Anderson','A',to_date('08-ENE-84','DD-MON-RR'),'61313001','i.and313@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (314,7,'AU314001','Oscar','Thomas','B',to_date('17-MAY-79','DD-MON-RR'),'61314001','o.tho314@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (315,7,'AU315001','Ava','Jackson','C',to_date('25-OCT-92','DD-MON-RR'),'61315001','a.jac315@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (316,7,'AU316001','Henry','White','D',to_date('03-ABR-88','DD-MON-RR'),'61316001','h.whi316@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (317,7,'AU317001','Sophie','Harris','E',to_date('11-FEB-76','DD-MON-RR'),'61317001','s.har317@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (318,7,'AU318001','Harry','Martin','F',to_date('29-SEP-83','DD-MON-RR'),'61318001','h.mar318@mail.au',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (319,7,'AU319001','Ruby','Anderson','X',to_date('02-JUN-16','DD-MON-RR'),'61319001','ruby319@mail.au',35,313,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (320,7,'AU320001','Finn','Thomas','X',to_date('19-OCT-15','DD-MON-RR'),'61320001','finn320@mail.au',36,314,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (321,7,'AU321001','Grace','Jackson','X',to_date('07-MAR-16','DD-MON-RR'),'61321001','grace321@mail.au',37,315,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (322,7,'AU322001','Zoe','White','X',to_date('25-AGO-15','DD-MON-RR'),'61322001','zoe322@mail.au',38,316,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (323,7,'AU323001','Sam','Harris','X',to_date('14-ENE-16','DD-MON-RR'),'61323001','sam323@mail.au',39,317,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (324,10,'IN324','Mbr324','Ape324','X',to_date('01-MAY-82','DD-MON-RR'),'324','mbr324@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (325,10,'IN325','Mbr325','Ape325','X',to_date('01-SEP-82','DD-MON-RR'),'325','mbr325@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (360,8,'AR360','Mbr360','Ape360','X',to_date('01-MAY-94','DD-MON-RR'),'360','mbr360@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (361,8,'AR361','Mbr361','Ape361','X',to_date('01-SEP-94','DD-MON-RR'),'361','mbr361@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (362,8,'AR362','Mbr362','Ape362','X',to_date('01-ENE-95','DD-MON-RR'),'362','mbr362@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (363,8,'AR363','Mbr363','Ape363','X',to_date('15-MAR-16','DD-MON-RR'),'363','mbr363@mail.com',80,357,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (364,8,'AR364','Mbr364','Ape364','X',to_date('15-ABR-16','DD-MON-RR'),'364','mbr364@mail.com',81,357,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (365,8,'AR365','Mbr365','Ape365','X',to_date('15-MAY-16','DD-MON-RR'),'365','mbr365@mail.com',82,357,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (366,8,'AR366','Mbr366','Ape366','X',to_date('15-JUN-16','DD-MON-RR'),'366','mbr366@mail.com',83,357,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (367,8,'AR367','Mbr367','Ape367','X',to_date('15-JUL-16','DD-MON-RR'),'367','mbr367@mail.com',84,357,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (368,8,'AR368','Mbr368','Ape368','X',to_date('01-ENE-97','DD-MON-RR'),'368','mbr368@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (369,8,'AR369','Mbr369','Ape369','X',to_date('01-MAY-97','DD-MON-RR'),'369','mbr369@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (370,8,'AR370','Mbr370','Ape370','X',to_date('01-SEP-97','DD-MON-RR'),'370','mbr370@mail.com',null,null,null);
Insert into JUAN123.JPS_MIEMBRO (IDMIEMBRO,IDPAIS_NACIO,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,TELEFONO,EMAIL,IDREPRESENTANTE,IDMIEMBRO_REPRESENTADO,SEGUNDO_NOMBRE) values (371,8,'AR371','Mbr371','Ape371','X',to_date('01-ENE-98','DD-MON-RR'),'371','mbr371@mail.com',null,null,null);
REM INSERTING into JUAN123.JPS_OBRA_ACTUADA
SET DEFINE OFF;
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (1,'ISBN-15',1,'Mujercitas en Berlin','Adaptacion teatral de Mujercitas ambientada en la Alemania de posguerra',15,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (2,'ISBN-09',2,'La Investigacion de Lisbeth','Obra de misterio basada en Los Hombres que no Amaban a las Mujeres',12,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (3,'ISBN-05',3,'El Payaso de Derry','Terror teatral inspirado en It de Stephen King',20,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (4,'ISBN-04',4,'El Tren de los Secretos','Thriller psicologico basado en La Chica del Tren',18,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (5,'ISBN-10',5,'Cometas Bajo el Sol','Drama basado en Cometas en el Cielo adaptado al escenario australiano',22,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (6,'ISBN-08',6,'El Origen del Sapiens','Obra educativa basada en Sapiens de Harari',10,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (7,'ISBN-01',7,'Dune: La Profecia','Epopeya teatral basada en el universo de Dune de Frank Herbert',25,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (8,'ISBN-06',8,'La Geisha del Taj','Drama basado en Memorias de una Geisha adaptado al contexto indio',16,'si');
Insert into JUAN123.JPS_OBRA_ACTUADA (IDOBRA,ISBN,IDCLUB,NOMBRE,DESCRIPCION,COSTO_ENTRADA,ACTIVO) values (9,'ISBN-13',1,'Un Mundo Feliz en Escena','Adaptacion distopica de Un Mundo Feliz de Aldous Huxley para el publico berlines',14,'no');
REM INSERTING into JUAN123.JPS_PAIS
SET DEFINE OFF;
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (1,'Estados Unidos','America','Dolar','Estadounidense');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (2,'Brasil','America','Real','Brasileño');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (3,'Reino Unido','Europa','Libra','Britanico');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (4,'Paises Bajos','Europa','Euro','Neerlandes');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (5,'Israel','Asia','Sequel','Israeli');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (6,'Suecia','Europa','Corona','Sueco');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (7,'Australia','Oceania','Dolar AUD','Australiano');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (8,'Argentina','America','Peso','Argentino');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (9,'Alemania','Europa','Euro','Aleman');
Insert into JUAN123.JPS_PAIS (IDPAIS,NOMBRE,CONTINENTE,MONEDA,NACIONALIDAD) values (10,'India','Asia','Rupia','Indio');
REM INSERTING into JUAN123.JPS_PREFERENCIA
SET DEFINE OFF;
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (1,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (1,'ISBN-05',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (1,'ISBN-13',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (2,'ISBN-03',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (2,'ISBN-07',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (2,'ISBN-11',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (3,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (3,'ISBN-04',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (3,'ISBN-08',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (4,'ISBN-06',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (4,'ISBN-09',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (4,'ISBN-15',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (5,'ISBN-05',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (5,'ISBN-14',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (5,'ISBN-16',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (6,'ISBN-14',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (6,'ISBN-15',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (6,'ISBN-16',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (7,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (7,'ISBN-10',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (7,'ISBN-12',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (8,'ISBN-10',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (8,'ISBN-12',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (8,'ISBN-16',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (13,'ISBN-01',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (13,'ISBN-03',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (13,'ISBN-08',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (14,'ISBN-07',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (14,'ISBN-11',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (14,'ISBN-13',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (15,'ISBN-04',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (15,'ISBN-06',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (15,'ISBN-09',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (16,'ISBN-02',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (16,'ISBN-05',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (16,'ISBN-15',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (25,'ISBN-04',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (25,'ISBN-05',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (25,'ISBN-09',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (26,'ISBN-03',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (26,'ISBN-07',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (26,'ISBN-11',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (27,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (27,'ISBN-08',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (27,'ISBN-13',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (28,'ISBN-02',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (28,'ISBN-06',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (28,'ISBN-15',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (37,'ISBN-04',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (37,'ISBN-09',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (37,'ISBN-11',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (38,'ISBN-06',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (38,'ISBN-10',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (38,'ISBN-15',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (39,'ISBN-01',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (39,'ISBN-08',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (39,'ISBN-13',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (40,'ISBN-02',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (40,'ISBN-14',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (40,'ISBN-16',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (49,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (49,'ISBN-07',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (49,'ISBN-10',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (50,'ISBN-05',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (50,'ISBN-10',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (50,'ISBN-12',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (51,'ISBN-13',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (51,'ISBN-14',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (51,'ISBN-16',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (52,'ISBN-03',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (52,'ISBN-09',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (52,'ISBN-11',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (61,'ISBN-02',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (61,'ISBN-08',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (61,'ISBN-10',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (62,'ISBN-06',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (62,'ISBN-08',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (62,'ISBN-15',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (63,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (63,'ISBN-09',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (63,'ISBN-13',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (64,'ISBN-04',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (64,'ISBN-07',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (64,'ISBN-11',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (73,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (73,'ISBN-05',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (73,'ISBN-09',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (74,'ISBN-03',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (74,'ISBN-08',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (74,'ISBN-13',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (75,'ISBN-02',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (75,'ISBN-07',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (75,'ISBN-11',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (76,'ISBN-04',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (76,'ISBN-06',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (76,'ISBN-15',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (85,'ISBN-06',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (85,'ISBN-10',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (85,'ISBN-15',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (86,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (86,'ISBN-08',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (86,'ISBN-12',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (87,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (87,'ISBN-14',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (87,'ISBN-16',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (88,'ISBN-07',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (88,'ISBN-09',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (88,'ISBN-11',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (245,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (245,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (245,'ISBN-03',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (246,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (246,'ISBN-02',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (246,'ISBN-03',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (248,'ISBN-01',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (248,'ISBN-08',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (248,'ISBN-11',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (249,'ISBN-09',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (249,'ISBN-10',1);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (249,'ISBN-11',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (261,'ISBN-03',3);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (261,'ISBN-10',2);
Insert into JUAN123.JPS_PREFERENCIA (IDMIEMBRO,ISBN,ORDEN_PREFERENCIA) values (261,'ISBN-14',1);
REM INSERTING into JUAN123.JPS_PRESENTACION
SET DEFINE OFF;
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('10-FEB-24','DD-MON-RR'),1,'ISBN-15',1,80,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('17-FEB-24','DD-MON-RR'),1,'ISBN-15',1,65,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('15-FEB-24','DD-MON-RR'),2,'ISBN-09',2,55,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('22-FEB-24','DD-MON-RR'),2,'ISBN-09',2,48,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('12-FEB-24','DD-MON-RR'),3,'ISBN-05',3,100,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('19-FEB-24','DD-MON-RR'),3,'ISBN-05',3,92,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('13-FEB-24','DD-MON-RR'),4,'ISBN-04',4,70,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('20-FEB-24','DD-MON-RR'),4,'ISBN-04',4,75,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('14-FEB-24','DD-MON-RR'),5,'ISBN-10',5,90,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('21-FEB-24','DD-MON-RR'),5,'ISBN-10',5,85,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('11-FEB-24','DD-MON-RR'),6,'ISBN-08',6,60,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('18-FEB-24','DD-MON-RR'),6,'ISBN-08',6,58,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('16-FEB-24','DD-MON-RR'),7,'ISBN-01',7,110,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('23-FEB-24','DD-MON-RR'),7,'ISBN-01',7,105,'5');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('10-FEB-24','DD-MON-RR'),8,'ISBN-06',8,75,'4');
Insert into JUAN123.JPS_PRESENTACION (FECHA_PRESENTACION,IDOBRA,ISBN,IDCLUB,CANTIDAD_ASISTENTES,VALORACION_OBRA) values (to_date('17-FEB-24','DD-MON-RR'),8,'ISBN-06',8,80,'5');
REM INSERTING into JUAN123.JPS_REPRESENTANTE
SET DEFINE OFF;
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (1,'DE11111111','Klaus','Muller','Schmidt',null,to_date('12-MAR-75','DD-MON-RR'),'491711111','klaus.muller@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (2,'DE22222222','Ingrid','Fischer','Weber',null,to_date('22-JUL-78','DD-MON-RR'),'491722222','ingrid.fischer@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (3,'AU33333333','James','Smith','Brown',null,to_date('05-NOV-80','DD-MON-RR'),'614133333','james.smith@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (4,'AU44444444','Sarah','Johnson','Wilson',null,to_date('18-ABR-82','DD-MON-RR'),'614144444','sarah.johnson@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (5,'IN55555555','Rahul','Sharma','Patel',null,to_date('30-SEP-79','DD-MON-RR'),'919155555','rahul.sharma@mail.in');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (6,'IN66666666','Priya','Gupta','Singh',null,to_date('14-ENE-83','DD-MON-RR'),'919166666','priya.gupta@mail.in');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (7,'AU77777777','Michael','Williams','Jones',null,to_date('22-JUN-77','DD-MON-RR'),'614177777','michael.williams@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (8,'IN88888888','Sunita','Reddy','Naidu',null,to_date('08-MAR-81','DD-MON-RR'),'919188888','sunita.reddy@mail.in');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (9,'IN99999999','Ramesh','Iyer','Krishnamurthy',null,to_date('15-NOV-76','DD-MON-RR'),'919199999','ramesh.iyer@mail.in');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (22,'P123456','Robert','Smith','Jonhson',null,to_date('10-MAY-80','DD-MON-RR'),'1555123456','robert@correo.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (21,'DE_REP21','Parent','A21','RepA21',null,null,'491721001','rep21@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (23,'DE_REP23','Parent','A23','RepA23',null,null,'491723001','rep23@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (24,'DE_REP24','Parent','A24','RepA24',null,null,'491724001','rep24@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (25,'DE_REP25','Parent','B25','RepB25',null,null,'491725001','rep25@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (26,'DE_REP26','Parent','B26','RepB26',null,null,'491726001','rep26@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (27,'DE_REP27','Parent','B27','RepB27',null,null,'491727001','rep27@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (28,'DE_REP28','Parent','B28','RepB28',null,null,'491728001','rep28@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (29,'DE_REP29','Parent','B29','RepB29',null,null,'491729001','rep29@mail.de');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (30,'AU_REP30','Parent','AU30','RepAU30',null,null,'61730001','rep30@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (31,'AU_REP31','Parent','AU31','RepAU31',null,null,'61731001','rep31@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (32,'AU_REP32','Parent','AU32','RepAU32',null,null,'61732001','rep32@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (33,'AU_REP33','Parent','AU33','RepAU33',null,null,'61733001','rep33@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (34,'AU_REP34','Parent','AU34','RepAU34',null,null,'61734001','rep34@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (35,'AU_REP35','Parent','AU35','RepAU35',null,null,'61735001','rep35@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (36,'AU_REP36','Parent','AU36','RepAU36',null,null,'61736001','rep36@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (37,'AU_REP37','Parent','AU37','RepAU37',null,null,'61737001','rep37@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (38,'AU_REP38','Parent','AU38','RepAU38',null,null,'61738001','rep38@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (39,'AU_REP39','Parent','AU39','RepAU39',null,null,'61739001','rep39@mail.au');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (47,'REP330','Par330','Ape330','X',null,null,'330','rep330@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (48,'REP331','Par331','Ape331','X',null,null,'331','rep331@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (49,'REP332','Par332','Ape332','X',null,null,'332','rep332@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (50,'REP333','Par333','Ape333','X',null,null,'333','rep333@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (51,'REP334','Par334','Ape334','X',null,null,'334','rep334@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (58,'REP341','Par341','Ape341','X',null,null,'341','rep341@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (59,'REP342','Par342','Ape342','X',null,null,'342','rep342@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (60,'REP343','Par343','Ape343','X',null,null,'343','rep343@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (61,'REP344','Par344','Ape344','X',null,null,'344','rep344@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (62,'REP345','Par345','Ape345','X',null,null,'345','rep345@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (69,'REP352','Par352','Ape352','X',null,null,'352','rep352@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (70,'REP353','Par353','Ape353','X',null,null,'353','rep353@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (71,'REP354','Par354','Ape354','X',null,null,'354','rep354@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (72,'REP355','Par355','Ape355','X',null,null,'355','rep355@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (73,'REP356','Par356','Ape356','X',null,null,'356','rep356@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (80,'REP363','Par363','Ape363','X',null,null,'363','rep363@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (81,'REP364','Par364','Ape364','X',null,null,'364','rep364@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (82,'REP365','Par365','Ape365','X',null,null,'365','rep365@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (83,'REP366','Par366','Ape366','X',null,null,'366','rep366@mail.com');
Insert into JUAN123.JPS_REPRESENTANTE (IDREPRESENTANTE,DOC_IDENTIDAD,PRIMER_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEGUNDO_NOMBRE,FECHA_NACIMIENTO,TELEFONO,EMAIL) values (84,'REP367','Par367','Ape367','X',null,null,'367','rep367@mail.com');
--------------------------------------------------------
--  DDL for Index PK_JPS_L_A
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_L_A" ON "JUAN123"."JPS_L_A" ("ISBN", "IDAUTOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_PREFERENCIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_PREFERENCIA" ON "JUAN123"."JPS_PREFERENCIA" ("IDMIEMBRO", "ISBN", "ORDEN_PREFERENCIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_I_M
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_I_M" ON "JUAN123"."JPS_I_M" ("IDI_M", "IDIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_CLUB_ASOCIADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_CLUB_ASOCIADO" ON "JUAN123"."JPS_ASOCIADO" ("IDCLUB1", "IDCLUB2") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_GRUPO_LECTURA
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_GRUPO_LECTURA" ON "JUAN123"."JPS_GRUPO_LECTURA" ("IDGRUPO", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_OBRA_ACTUADA
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_OBRA_ACTUADA" ON "JUAN123"."JPS_OBRA_ACTUADA" ("IDOBRA", "ISBN", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_ELENCO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_ELENCO" ON "JUAN123"."JPS_ELENCO" ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_HISTORICO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_HISTORICO" ON "JUAN123"."JPS_HISTORICO_MEMBRESIA" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_PAGO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_PAGO" ON "JUAN123"."JPS_MEMBRESIA_PAGO" ("IDPAGO", "FECHA_INICIO", "IDMIEMBRO", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_G_LC
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_G_LC" ON "JUAN123"."JPS_G_LC" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_CALENDARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_CALENDARIO" ON "JUAN123"."JPS_CALENDARIO_MES_REUNION" ("FECHA", "IDGRUPO", "IDCLUB", "ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_INASISTENCIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_INASISTENCIA" ON "JUAN123"."JPS_INASISTENCIA" ("FECHA", "IDGRUPO", "IDCLUB", "ISBN", "FECHA_INICIO", "IDMIEMBRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_PRESENTACION
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_PRESENTACION" ON "JUAN123"."JPS_PRESENTACION" ("FECHA_PRESENTACION", "IDOBRA", "ISBN", "IDCLUB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_JPS_MEJOR_ACTOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."PK_JPS_MEJOR_ACTOR" ON "JUAN123"."JPS_MEJOR_ACTOR" ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB", "FECHA_PRESENTACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_MIEMBRO_EMAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."JPS_IDX_MIEMBRO_EMAIL" ON "JUAN123"."JPS_MIEMBRO" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_AUTOR_NOMBRE_COMPLETO
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_AUTOR_NOMBRE_COMPLETO" ON "JUAN123"."JPS_AUTOR" ("PRIMER_APELLIDO", "PRIMER_NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_PAIS_NOMBRE
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_PAIS_NOMBRE" ON "JUAN123"."JPS_PAIS" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_OBRA_NOMBRE
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_OBRA_NOMBRE" ON "JUAN123"."JPS_OBRA_ACTUADA" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_CLUB_NOMBRE
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_CLUB_NOMBRE" ON "JUAN123"."JPS_CLUB_LECTURA" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_IDIOMA_NOMBRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."JPS_IDX_IDIOMA_NOMBRE" ON "JUAN123"."JPS_IDIOMA" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_REPRES_DOC
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."JPS_IDX_REPRES_DOC" ON "JUAN123"."JPS_REPRESENTANTE" ("DOC_IDENTIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_INSTITUCION_NOMBRE
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_INSTITUCION_NOMBRE" ON "JUAN123"."JPS_INSTITUCION" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_MIEMBRO_DOC
--------------------------------------------------------

  CREATE UNIQUE INDEX "JUAN123"."JPS_IDX_MIEMBRO_DOC" ON "JUAN123"."JPS_MIEMBRO" ("DOC_IDENTIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_LIBRO_TITULO
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_LIBRO_TITULO" ON "JUAN123"."JPS_LIBRO" ("TITULO_ORIGINAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JPS_IDX_CIUDAD_NOMBRE
--------------------------------------------------------

  CREATE INDEX "JUAN123"."JPS_IDX_CIUDAD_NOMBRE" ON "JUAN123"."JPS_CIUDAD" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_BLOQUEAR_SPLIT_DISCUSION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_BLOQUEAR_SPLIT_DISCUSION" 
BEFORE INSERT ON JPS_G_LC
FOR EACH ROW
DECLARE
    v_en_discusion VARCHAR2(1);
BEGIN
    v_en_discusion := JPS_FN_GRUPO_EN_DISCUSION(:NEW.idGrupo, :NEW.idClub);
    IF v_en_discusion = 'S' THEN
        RAISE_APPLICATION_ERROR(-20140,
            'ERROR [TRIGGER]: El grupo ' || :NEW.idGrupo ||
            ' está en discusión activa. No se pueden agregar ni reasignar miembros hasta que termine.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN RAISE;
END JPS_TRG_BLOQUEAR_SPLIT_DISCUSION;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_BLOQUEAR_SPLIT_DISCUSION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_CONTROL_PAGO_MEMBRESIA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_CONTROL_PAGO_MEMBRESIA" 
BEFORE UPDATE ON JPS_HISTORICO_MEMBRESIA
FOR EACH ROW
DECLARE
    v_cuota VARCHAR2(2);
BEGIN
    -- Solo aplica cuando cambia de activo a inactivo
    IF :OLD.estatus = 'activo' AND :NEW.estatus = 'inactivo' THEN
        SELECT cuota_membresia INTO v_cuota
        FROM   JPS_CLUB_LECTURA WHERE idClub = :NEW.idClub;

        -- Si tiene cuota y no tiene motivo de deuda, exigir motivo
        IF v_cuota = 'si' AND :NEW.motivo_deuda IS NULL THEN
            RAISE_APPLICATION_ERROR(-20150,
                'ERROR [TRIGGER]: Para inactivar un miembro de un club con cuota, ' ||
                'debe especificar el motivo de salida (voluntario/deudas/Inasistencia/otro).');
        END IF;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN NULL;
END JPS_TRG_CONTROL_PAGO_MEMBRESIA;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_CONTROL_PAGO_MEMBRESIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_MAX_SESIONES_LIBRO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_MAX_SESIONES_LIBRO" 
BEFORE INSERT ON JPS_CALENDARIO_MES_REUNION
FOR EACH ROW
DECLARE
    v_cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_cnt
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  IDGRUPO   = :NEW.IDGRUPO
    AND    IDCLUB    = :NEW.IDCLUB
    AND    ISBN      = :NEW.ISBN
    AND    REALIZADA = 'no';

    IF v_cnt >= 3 THEN
        RAISE_APPLICATION_ERROR(-20470,
            'ERROR: El libro "'||:NEW.ISBN||'" ya tiene 3 sesiones pendientes '||
            'en el grupo '||:NEW.IDGRUPO||'. Máximo 3 reuniones por libro.');
    END IF;
END JPS_TRG_MAX_SESIONES_LIBRO;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_MAX_SESIONES_LIBRO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_RENOVAR_MEMBRESIA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_RENOVAR_MEMBRESIA" 
AFTER INSERT ON JPS_MEMBRESIA_PAGO
FOR EACH ROW
DECLARE
    v_fecha_ini    DATE;
    v_meses        NUMBER;
    v_anios        NUMBER;
BEGIN
    -- Obtener la fecha de inicio de la membresía
    v_fecha_ini := :NEW.fecha_inicio;
    v_meses     := MONTHS_BETWEEN(:NEW.fecha_pago, v_fecha_ini);
    v_anios     := FLOOR(v_meses / 12);

    -- Si se cumple el ciclo anual (el pago está en o después del aniversario)
    IF v_meses >= 12 THEN
        -- La renovación es automática; el histórico ya existe, solo se registra el pago.
        -- Si el miembro comunicó retiro, el procedimiento JPS_SP_RETIRAR_MIEMBRO lo gestiona.
        -- Aquí solo logueamos la renovación exitosa.
        DBMS_OUTPUT.PUT_LINE('   [TRIGGER] Membresía renovada automáticamente. Ciclo #' ||
            v_anios || ' completado para miembro ' || :NEW.idMiembro || ' en club ' || :NEW.idClub || '.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN NULL;  -- El trigger no debe bloquear el pago
END JPS_TRG_RENOVAR_MEMBRESIA;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_RENOVAR_MEMBRESIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_RETIRO_INASISTENCIAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_RETIRO_INASISTENCIAS" 
AFTER INSERT ON JPS_INASISTENCIA
FOR EACH ROW
DECLARE
    v_bimestre    NUMBER;
    v_anio        NUMBER;
    v_porc_faltas NUMBER;
    v_estatus     VARCHAR2(10);
BEGIN
    v_anio     := EXTRACT(YEAR  FROM :NEW.fecha);
    v_bimestre := CEIL(EXTRACT(MONTH FROM :NEW.fecha) / 2);

    v_porc_faltas := JPS_FN_PORC_PART_BIMESTRE(:NEW.idMiembro, v_bimestre, v_anio);

    IF v_porc_faltas IS NOT NULL AND v_porc_faltas > 30 THEN
        -- Verificar si ya está activo (podría haberse retirado ya por otro medio)
        BEGIN
            SELECT estatus INTO v_estatus
            FROM   JPS_HISTORICO_MEMBRESIA
            WHERE  idMiembro = :NEW.idMiembro AND idClub = :NEW.idClub
              AND  estatus = 'activo' AND fecha_fin IS NULL AND ROWNUM = 1;

            -- Marcar como inactivo por inasistencias
            UPDATE JPS_HISTORICO_MEMBRESIA
            SET    estatus      = 'inactivo',
                   fecha_fin    = SYSDATE,
                   motivo_deuda = 'Inasistencia'
            WHERE  idMiembro    = :NEW.idMiembro
              AND  idClub       = :NEW.idClub
              AND  estatus      = 'activo'
              AND  fecha_fin    IS NULL;

            -- Cerrar asignación de grupo
            UPDATE JPS_G_LC
            SET    fecha_fin = SYSDATE
            WHERE  idMiembro = :NEW.idMiembro AND idClub = :NEW.idClub AND fecha_fin IS NULL;

            DBMS_OUTPUT.PUT_LINE('[TRIGGER] Miembro ' || :NEW.idMiembro ||
                ' retirado automáticamente por superar 30% de inasistencias (' ||
                v_porc_faltas || '%).');
        EXCEPTION WHEN NO_DATA_FOUND THEN NULL;
        END;
    END IF;
EXCEPTION
    WHEN OTHERS THEN NULL;  -- El trigger no debe bloquear el registro de inasistencia
END JPS_TRG_RETIRO_INASISTENCIAS;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_RETIRO_INASISTENCIAS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_RETIRO_30PCT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_RETIRO_30PCT" 
AFTER INSERT ON JPS_INASISTENCIA
FOR EACH ROW
DECLARE
    v_bimestre NUMBER;
    v_anio     NUMBER;
    v_porc     NUMBER;
    v_estatus  VARCHAR2(10);
BEGIN
    v_anio     := EXTRACT(YEAR  FROM :NEW.FECHA);
    v_bimestre := CEIL(EXTRACT(MONTH FROM :NEW.FECHA)/2);

    v_porc := JPS_FN_PORC_INASISTENCIA_BIMESTRE(
                  :NEW.IDMIEMBRO, :NEW.IDCLUB, :NEW.IDGRUPO,
                  v_bimestre, v_anio);

    IF v_porc IS NOT NULL AND v_porc > 30 THEN
        -- Verificar que aún está activo
        BEGIN
            SELECT ESTATUS INTO v_estatus
            FROM   JPS_HISTORICO_MEMBRESIA
            WHERE  IDMIEMBRO=:NEW.IDMIEMBRO AND IDCLUB=:NEW.IDCLUB
            AND    ESTATUS='activo' AND FECHA_FIN IS NULL AND ROWNUM=1;

            UPDATE JPS_HISTORICO_MEMBRESIA
            SET    ESTATUS      = 'inactivo',
                   FECHA_FIN    = SYSDATE,
                   MOTIVO_DEUDA = 'Inasistencia'
            WHERE  IDMIEMBRO    = :NEW.IDMIEMBRO
            AND    IDCLUB       = :NEW.IDCLUB
            AND    ESTATUS      = 'activo'
            AND    FECHA_FIN    IS NULL;

            UPDATE JPS_G_LC
            SET    FECHA_FIN = SYSDATE
            WHERE  IDMIEMBRO = :NEW.IDMIEMBRO
            AND    IDCLUB    = :NEW.IDCLUB
            AND    FECHA_FIN IS NULL;

            DBMS_OUTPUT.PUT_LINE('[TRIGGER] Miembro '||:NEW.IDMIEMBRO||
                ' retirado automáticamente por superar 30% de inasistencias ('||
                v_porc||'%).');
        EXCEPTION WHEN NO_DATA_FOUND THEN NULL;
        END;
    END IF;
EXCEPTION
    WHEN OTHERS THEN NULL; -- El trigger no debe bloquear el insert
END JPS_TRG_RETIRO_30PCT;
/
ALTER TRIGGER "JUAN123"."JPS_TRG_RETIRO_30PCT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_VALIDAR_HORA_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_VALIDAR_HORA_GRUPO" 
BEFORE INSERT OR UPDATE OF HORA_I ON JPS_GRUPO_LECTURA
FOR EACH ROW
DECLARE
    v_hhmm   NUMBER;   -- hora en formato numérico HHMM para comparar
    v_tipo   VARCHAR2(10);
BEGIN
    -- Convertir 'HH:MM' → número HHMM (ej. '17:30' → 1730)
    v_hhmm := TO_NUMBER(REPLACE(:NEW.hora_i, ':', ''));
    v_tipo := UPPER(NVL(:NEW.tipo, 'adulto'));

    -- Regla 1: ningún grupo puede reunirse antes de las 17:00
    IF v_hhmm < 1700 THEN
        RAISE_APPLICATION_ERROR(-20200,
            'ERROR [HORA GRUPO]: La hora de reunion no puede ser antes de las 17:00.' ||
            ' Hora ingresada: ' || :NEW.hora_i ||
            '. Las reuniones son de lunes a viernes entre 17:00 y 19:00.');
    END IF;

    -- Regla 2: ningún grupo puede iniciar después de las 19:00
    --          (máximo 2 horas de reunión → iniciar a las 19:00 termina a las 21:00,
    --           lo cual no está permitido; el límite de inicio útil es 17:00 para
    --           terminar a las 19:00 con la reunión de 2 horas)
    IF v_hhmm > 1900 THEN
        RAISE_APPLICATION_ERROR(-20201,
            'ERROR [HORA GRUPO]: La hora de inicio no puede ser después de las 19:00.' ||
            ' Hora ingresada: ' || :NEW.hora_i ||
            '. Las reuniones deben terminar a más tardar a las 19:00.');
    END IF;

    -- Regla 3: grupos de niños deben iniciar exactamente a las 17:00
    --          (duración máx 2h → terminan a las 19:00 exactas)
    IF v_tipo = 'NIÑO' AND v_hhmm > 1700 THEN
        RAISE_APPLICATION_ERROR(-20202,
            'ERROR [HORA GRUPO]: Los grupos de niños deben iniciar a las 17:00.' ||
            ' Hora ingresada: ' || :NEW.hora_i ||
            '. La reunion de niños no puede terminar despues de las 19:00.');
    END IF;

EXCEPTION
    WHEN VALUE_ERROR THEN
        RAISE_APPLICATION_ERROR(-20203,
            'ERROR [HORA GRUPO]: Formato de hora inválido: "' || :NEW.hora_i ||
            '". Use el formato HH:MM (ej. 17:00, 18:30).');
END JPS_TRG_VALIDAR_HORA_GRUPO;
/
ALTER TRIGGER "JUAN123"."JPS_TRG_VALIDAR_HORA_GRUPO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_VALIDAR_PAGO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_VALIDAR_PAGO" 
BEFORE INSERT ON JPS_MEMBRESIA_PAGO
FOR EACH ROW
DECLARE
    v_estatus  VARCHAR2(10);
    v_cuota    VARCHAR2(2);
BEGIN
    -- Verificar que la membresía está activa
    SELECT hm.estatus INTO v_estatus
    FROM   JPS_HISTORICO_MEMBRESIA hm
    WHERE  hm.fecha_inicio = :NEW.fecha_inicio
      AND  hm.idMiembro    = :NEW.idMiembro
      AND  hm.idClub       = :NEW.idClub;

    IF v_estatus != 'activo' THEN
        RAISE_APPLICATION_ERROR(-20110,
            'ERROR [TRIGGER]: No se puede registrar pago. La membresía del miembro ' ||
            :NEW.idMiembro || ' no está activa.');
    END IF;

    -- Verificar que el club tiene cuota
    SELECT cuota_membresia INTO v_cuota
    FROM   JPS_CLUB_LECTURA WHERE idClub = :NEW.idClub;

    IF v_cuota = 'no' THEN
        RAISE_APPLICATION_ERROR(-20111,
            'ERROR [TRIGGER]: El club ' || :NEW.idClub || ' no cobra cuota de membresía.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20112,
            'ERROR [TRIGGER]: Membresía no encontrada para el miembro ' ||
            :NEW.idMiembro || ' en el club ' || :NEW.idClub || '.');
END JPS_TRG_VALIDAR_PAGO;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_VALIDAR_PAGO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_VALIDAR_REUNION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_VALIDAR_REUNION" 
BEFORE INSERT ON JPS_CALENDARIO_MES_REUNION
FOR EACH ROW
DECLARE
    v_dia_semana  NUMBER;
    v_hora        VARCHAR2(5);
    v_tipo_grupo  VARCHAR2(10);
    v_cnt_isbn    NUMBER;
BEGIN
    -- 1. Verificar que no sea fin de semana
    v_dia_semana := TO_NUMBER(TO_CHAR(:NEW.fecha, 'D'));
    IF v_dia_semana IN (1, 7) THEN  -- 1=Domingo, 7=Sábado
        RAISE_APPLICATION_ERROR(-20120,
            'ERROR [TRIGGER]: Las reuniones no pueden ser en fin de semana. Fecha: ' ||
            TO_CHAR(:NEW.fecha,'DD/MM/YYYY'));
    END IF;

    -- 2. Obtener horario y tipo del grupo
    SELECT gl.hora_i, gl.tipo
    INTO   v_hora, v_tipo_grupo
    FROM   JPS_GRUPO_LECTURA gl
    WHERE  gl.idGrupo = :NEW.idGrupo AND gl.idClub = :NEW.idClub;

    -- 3. Validar horario: entre 17:00 y 19:00
    IF v_hora < '17:00' OR v_hora > '19:00' THEN
        RAISE_APPLICATION_ERROR(-20121,
            'ERROR [TRIGGER]: Las reuniones deben ser entre 17:00 y 19:00. Hora configurada: ' || v_hora);
    END IF;

    -- 4. Grupos de niños: hora de inicio máximo 17:00 (para terminar antes de 19:00)
    IF v_tipo_grupo = 'niño' AND v_hora > '17:00' THEN
        RAISE_APPLICATION_ERROR(-20122,
            'ERROR [TRIGGER]: Reuniones de niños deben iniciar a las 17:00 como máximo para terminar antes de las 19:00.');
    END IF;

    -- 5. Verificar que el mismo ISBN no tenga más de 3 reuniones ya programadas en el grupo
    SELECT COUNT(*) INTO v_cnt_isbn
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  idGrupo = :NEW.idGrupo
      AND  idClub  = :NEW.idClub
      AND  ISBN    = :NEW.ISBN
      AND  realizada = 'no';

    IF v_cnt_isbn >= 3 THEN
        RAISE_APPLICATION_ERROR(-20123,
            'ERROR [TRIGGER]: El grupo ' || :NEW.idGrupo ||
            ' ya tiene 3 sesiones programadas para el ISBN ' || :NEW.ISBN ||
            '. Máximo 3 reuniones por libro.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20124, 'ERROR [TRIGGER]: Grupo no encontrado.');
END JPS_TRG_VALIDAR_REUNION;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_VALIDAR_REUNION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger JPS_TRG_VALIDAR_REUNION_HORA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "JUAN123"."JPS_TRG_VALIDAR_REUNION_HORA" 
BEFORE INSERT ON JPS_CALENDARIO_MES_REUNION
FOR EACH ROW
DECLARE
    v_dow       NUMBER;
    v_hora      VARCHAR2(5);
    v_hhmm      NUMBER;
    v_tipo      VARCHAR2(10);
BEGIN
    -- Verificar que no sea fin de semana (D=1 domingo, D=7 sábado)
    v_dow := TO_NUMBER(TO_CHAR(:NEW.FECHA, 'D'));
    IF v_dow IN (1, 7) THEN
        RAISE_APPLICATION_ERROR(-20460,
            'ERROR: Las reuniones no pueden ser en fin de semana. '||
            'Fecha: '||TO_CHAR(:NEW.FECHA,'DD/MM/YYYY'));
    END IF;

    -- Obtener hora y tipo del grupo
    SELECT gl.HORA_I, gl.TIPO INTO v_hora, v_tipo
    FROM   JPS_GRUPO_LECTURA gl
    WHERE  gl.IDGRUPO = :NEW.IDGRUPO AND gl.IDCLUB = :NEW.IDCLUB;

    v_hhmm := TO_NUMBER(REPLACE(v_hora,':',''));

    -- Hora debe estar entre 17:00 y 19:00
    IF v_hhmm < 1700 THEN
        RAISE_APPLICATION_ERROR(-20461,
            'ERROR: La hora de reunión ('||v_hora||') es antes de las 17:00. '||
            'Las reuniones son entre 17:00 y 19:00.');
    END IF;

    IF v_hhmm > 1900 THEN
        RAISE_APPLICATION_ERROR(-20462,
            'ERROR: La hora de reunión ('||v_hora||') es después de las 19:00. '||
            'Las reuniones deben terminar a las 19:00 máximo.');
    END IF;

    -- Grupos de niños: deben iniciar a las 17:00 exactas (2h → terminan a las 19:00)
    IF v_tipo = 'niño' AND v_hhmm > 1700 THEN
        RAISE_APPLICATION_ERROR(-20463,
            'ERROR: Los grupos de niños deben iniciar a las 17:00 para '||
            'terminar antes de las 19:00. Hora actual: '||v_hora);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20464, 'Grupo no encontrado al validar la reunión.');
END JPS_TRG_VALIDAR_REUNION_HORA;

/
ALTER TRIGGER "JUAN123"."JPS_TRG_VALIDAR_REUNION_HORA" ENABLE;
--------------------------------------------------------
--  DDL for Procedure JPS_SP_ASIGNAR_GRUPO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_ASIGNAR_GRUPO" (
    p_idMiembro    IN NUMBER,
    p_idClub       IN NUMBER,
    p_fecha_ingreso IN DATE DEFAULT SYSDATE
) IS
    v_fecha_nac   DATE;
    v_tipo        VARCHAR2(10);
    v_idGrupo     NUMBER;
    v_en_discusion VARCHAR2(1);
    v_cant        NUMBER;
    v_limite      NUMBER;
    v_nombre      VARCHAR2(100);

    -- Cursor para encontrar el grupo adecuado del club según tipo
    CURSOR c_grupo IS
        SELECT gl.idGrupo
        FROM   JPS_GRUPO_LECTURA gl
        WHERE  gl.idClub = p_idClub
          AND  gl.tipo   = v_tipo
        ORDER BY gl.idGrupo;
BEGIN
    -- 1. Obtener datos del miembro
    SELECT m.fecha_nacimiento,
           m.primer_nombre || ' ' || m.primer_apellido
    INTO   v_fecha_nac, v_nombre
    FROM   JPS_MIEMBRO m WHERE m.idMiembro = p_idMiembro;

    v_tipo := JPS_FN_TIPO_MIEMBRO(v_fecha_nac);

    -- 2. Obtener el grupo de ese tipo en el club
    OPEN c_grupo;
    FETCH c_grupo INTO v_idGrupo;
    IF c_grupo%NOTFOUND THEN
        CLOSE c_grupo;
        RAISE_APPLICATION_ERROR(-20010,
            'ERROR: No existe grupo de tipo "' || v_tipo || '" en el club ' || p_idClub || '.');
    END IF;
    CLOSE c_grupo;

    -- 3. Verificar si el grupo está en discusión de un libro
    v_en_discusion := JPS_FN_GRUPO_EN_DISCUSION(v_idGrupo, p_idClub);
    IF v_en_discusion = 'S' THEN
        RAISE_APPLICATION_ERROR(-20011,
            'ERROR: El grupo ' || v_idGrupo || ' del club ' || p_idClub ||
            ' está en discusión activa. No se pueden añadir miembros hasta que termine.');
    END IF;

    -- 4. Insertar en JPS_G_LC
    INSERT INTO JPS_G_LC(fecha_inicio, idMiembro, idClub, idGrupo, fecha_fin)
    VALUES (p_fecha_ingreso, p_idMiembro, p_idClub, v_idGrupo, NULL);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> Miembro ' || v_nombre || ' asignado al grupo ' || v_idGrupo ||
        ' (' || v_tipo || ') del club ' || p_idClub || '.');

    -- 5. Verificar si se supera el límite y hacer split si es necesario
    v_cant := JPS_FN_CONTAR_MIEMBROS_GRUPO(v_idGrupo, p_idClub);
    v_limite := CASE v_tipo WHEN 'adulto' THEN 30 WHEN 'joven' THEN 15 ELSE 15 END;

    IF v_cant >= v_limite THEN
        DBMS_OUTPUT.PUT_LINE('>> AVISO: El grupo ' || v_idGrupo || ' alcanzó el límite (' ||
            v_cant || ' miembros). Iniciando división automática...');
        JPS_SP_DIVIDIR_GRUPO(v_idGrupo, p_idClub);
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20000, 'ERROR: Miembro o Club no encontrado.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_ASIGNAR_GRUPO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_ASIGNAR_MIEMBRO_GRUPO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_ASIGNAR_MIEMBRO_GRUPO" (
    p_idMiembro IN NUMBER,
    p_idGrupo   IN NUMBER
) IS
    v_idClub      NUMBER;
    v_tipo_grupo  VARCHAR2(10);
    v_tipo_mbr    VARCHAR2(10);
    v_fnac        DATE;
    v_nombre      VARCHAR2(100);
    v_fecha_ini   DATE;
    v_isbn_disc   VARCHAR2(20);
    v_ya_asignado NUMBER;
BEGIN
    -- 1. Obtener datos del miembro
    SELECT m.PRIMER_NOMBRE||' '||m.PRIMER_APELLIDO, m.FECHA_NACIMIENTO
    INTO   v_nombre, v_fnac
    FROM   JPS_MIEMBRO m WHERE m.IDMIEMBRO = p_idMiembro;

    v_tipo_mbr := JPS_FN_TIPO_MIEMBRO(v_fnac);

    -- 2. Verificar que el miembro tenga membresía activa y obtener su club y fecha
    BEGIN
        SELECT hm.IDCLUB, hm.FECHA_INICIO
        INTO   v_idClub, v_fecha_ini
        FROM   JPS_HISTORICO_MEMBRESIA hm
        WHERE  hm.IDMIEMBRO = p_idMiembro
        AND    hm.ESTATUS   = 'activo'
        AND    hm.FECHA_FIN IS NULL
        AND    ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20400,
                'El miembro '||v_nombre||' no tiene membresía activa en ningún club.');
    END;

    -- 3. Verificar que el grupo pertenece al mismo club del miembro
    BEGIN
        SELECT gl.TIPO INTO v_tipo_grupo
        FROM   JPS_GRUPO_LECTURA gl
        WHERE  gl.IDGRUPO = p_idGrupo AND gl.IDCLUB = v_idClub;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20401,
                'El grupo '||p_idGrupo||' no existe en el club '||v_idClub||
                ' al que pertenece '||v_nombre||'.');
    END;

    -- 4. Verificar que el tipo del miembro coincide con el tipo del grupo
    IF v_tipo_mbr != v_tipo_grupo THEN
        RAISE_APPLICATION_ERROR(-20402,
            v_nombre||' es de tipo "'||v_tipo_mbr||'" pero el grupo '||
            p_idGrupo||' es de tipo "'||v_tipo_grupo||'".'||
            ' Los grupos no mezclan tipos de miembros.');
    END IF;

    -- 5. Verificar que no esté ya asignado a ese grupo
    SELECT COUNT(*) INTO v_ya_asignado
    FROM   JPS_G_LC
    WHERE  IDMIEMBRO = p_idMiembro AND IDGRUPO = p_idGrupo
    AND    IDCLUB = v_idClub AND FECHA_FIN IS NULL;

    IF v_ya_asignado > 0 THEN
        RAISE_APPLICATION_ERROR(-20403,
            v_nombre||' ya está asignado al grupo '||p_idGrupo||'.');
    END IF;

    -- 6. Verificar que el grupo no esté en discusión activa
    v_isbn_disc := JPS_FN_LIBRO_EN_DISCUSION(p_idGrupo, v_idClub);
    IF v_isbn_disc IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20404,
            'El grupo '||p_idGrupo||' está discutiendo "'||v_isbn_disc||
            '". No se pueden agregar miembros hasta terminar la discusión.');
    END IF;

    -- 7. Insertar en G_LC (Usando la fecha correcta del historial de membresía)
    INSERT INTO JPS_G_LC(FECHA_INICIO, IDMIEMBRO, IDCLUB, IDGRUPO, FECHA_FIN)
    VALUES (v_fecha_ini, p_idMiembro, v_idClub, p_idGrupo, NULL);

    -- =======================================================================
    -- 8. VERIFICAR LÍMITE Y EJECUTAR LA DIVISIÓN AUTOMÁTICA
    -- =======================================================================
    DECLARE
        v_cant NUMBER;
        v_limite NUMBER;
    BEGIN
        -- Contar cuántos miembros activos hay ahora mismo en este grupo
        v_cant := JPS_FN_CONTAR_MIEMBROS_GRUPO(p_idGrupo, v_idClub);
        
        -- Definir el límite según el tipo de grupo
        v_limite := CASE v_tipo_grupo 
                        WHEN 'adulto' THEN 30 
                        WHEN 'joven' THEN 15 
                        ELSE 15 
                    END;

        -- Si alcanza o supera el límite, llamamos al procedimiento de división
        IF v_cant >= v_limite THEN
            DBMS_OUTPUT.PUT_LINE('  [AVISO] El grupo '||p_idGrupo||' alcanzo el limite ('||v_cant||'/'||v_limite||').');
            DBMS_OUTPUT.PUT_LINE('  Iniciando division automatica del grupo...');
            JPS_SP_DIVIDIR_GRUPO(p_idGrupo, v_idClub);
        END IF;
    END;
    -- =======================================================================

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  ASIGNACIÓN DE GRUPO EXITOSA');
    DBMS_OUTPUT.PUT_LINE('  Miembro : '||v_nombre||' (ID:'||p_idMiembro||')');
    DBMS_OUTPUT.PUT_LINE('  Club    : '||v_idClub);
    DBMS_OUTPUT.PUT_LINE('  Grupo   : '||p_idGrupo||' ('||v_tipo_grupo||')');
    DBMS_OUTPUT.PUT_LINE('  Desde   : '||TO_CHAR(v_fecha_ini,'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END JPS_SP_ASIGNAR_MIEMBRO_GRUPO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_ASIGNAR_MODERADOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_ASIGNAR_MODERADOR" (
    p_idMiembro IN NUMBER,
    p_idGrupo   IN NUMBER,
    p_idClub    IN NUMBER,
    p_ISBN      IN VARCHAR2
) IS
    v_tipo_grupo         VARCHAR2(10);
    v_tipo_miembro       VARCHAR2(10);
    v_es_miembro_act     NUMBER;
    v_esta_ocupado       NUMBER;
    v_ya_tiene_moderador NUMBER;
BEGIN
    -- 1. Obtener el tipo de grupo (adulto, joven, niño)
    SELECT TIPO INTO v_tipo_grupo 
    FROM JPS_GRUPO_LECTURA 
    WHERE IDGRUPO = p_idGrupo AND IDCLUB = p_idClub;

    -- 2. Obtener el tipo de miembro desde la vista de disponibilidad
    BEGIN
        SELECT DISTINCT TIPO_MIEMBRO INTO v_tipo_miembro
        FROM JPS_V_MODERADORES_DISPONIBLES
        WHERE IDMIEMBRO = p_idMiembro AND IDCLUB = p_idClub AND ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_tipo_miembro := 'adulto'; 
    END;

    -- 3. VALIDACIÓN DE PERTENENCIA Y ROLES
    IF v_tipo_grupo IN ('adulto', 'joven') THEN
        SELECT COUNT(*) INTO v_es_miembro_act
        FROM JPS_G_LC
        WHERE IDMIEMBRO = p_idMiembro AND IDGRUPO = p_idGrupo AND IDCLUB = p_idClub AND FECHA_FIN IS NULL;
        
        IF v_es_miembro_act = 0 THEN
            RAISE_APPLICATION_ERROR(-20501, 'ERROR: El moderador para un grupo '||v_tipo_grupo||' debe ser un miembro activo de ese mismo grupo.');
        END IF;
    END IF;

    IF v_tipo_grupo = 'niño' AND v_tipo_miembro != 'adulto' THEN
        RAISE_APPLICATION_ERROR(-20502, 'ERROR: Los grupos de ninos solo pueden ser moderados por miembros de tipo adulto.');
    END IF;

    -- 4. REGLA: ¿EL NUEVO MODERADOR TIENE REUNIONES EN CURSO/PENDIENTES EN OTRO LUGAR?
    -- Al usar "REALIZADA = 'no'", garantizamos que si sus reuniones pasadas ya acabaron ('si'), 
    -- el conteo dará 0 y el sistema lo considerará completamente LIBRE.
    SELECT COUNT(*) INTO v_esta_ocupado
    FROM JPS_CALENDARIO_MES_REUNION
    WHERE IDMIEMBRO = p_idMiembro 
      AND ISBN <> p_ISBN 
      AND REALIZADA = 'no';

    IF v_esta_ocupado > 0 THEN
        RAISE_APPLICATION_ERROR(-20503, 'ERROR: El miembro ya tiene discusiones activas en otro libro. Estara LIBRE cuando terminen.');
    END IF;

    -- 5. REGLA: ¿ESTE LIBRO EN ESTE GRUPO YA TIENE UN MODERADOR ASIGNADO?
    -- Buscamos si en la agenda de este libro ya se guardó un IDMIEMBRO en las reuniones que faltan hacer ('no')
    SELECT COUNT(*) INTO v_ya_tiene_moderador
    FROM JPS_CALENDARIO_MES_REUNION
    WHERE IDGRUPO = p_idGrupo
      AND IDCLUB = p_idClub
      AND ISBN = p_ISBN
      AND REALIZADA = 'no'
      AND IDMIEMBRO IS NOT NULL;

    IF v_ya_tiene_moderador > 0 THEN
        RAISE_APPLICATION_ERROR(-20504, 'ERROR: Las discusiones de este libro ya tienen un moderador asignado. No se puede cambiar hasta que finalicen todas sus reuniones.');
    END IF;

    -- 6. ACTUALIZACIÓN DE LA AGENDA
    UPDATE JPS_CALENDARIO_MES_REUNION cal
    SET (cal.IDMIEMBRO, cal.FECHA_INICIO) = (
        SELECT glc.IDMIEMBRO, glc.FECHA_INICIO
        FROM JPS_G_LC glc
        WHERE glc.IDMIEMBRO = p_idMiembro
          AND glc.IDCLUB = p_idClub
          AND (glc.IDGRUPO = p_idGrupo OR v_tipo_grupo = 'niño')
          AND glc.FECHA_FIN IS NULL
          AND ROWNUM = 1
    )
    WHERE cal.IDGRUPO = p_idGrupo 
      AND cal.IDCLUB = p_idClub 
      AND cal.ISBN = p_ISBN 
      AND cal.REALIZADA = 'no';

    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('  [OK] El miembro '||p_idMiembro||' ha sido asignado exitosamente como moderador.');
        DBMS_OUTPUT.PUT_LINE('       Se actualizaron '||SQL%ROWCOUNT||' sesiones en la agenda.');
    ELSE
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('  [AVISO] No se encontraron reuniones pendientes que actualizar para este libro.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_ASIGNAR_MODERADOR;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_CAMBIAR_CLUB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_CAMBIAR_CLUB" (
    p_idMiembro   IN NUMBER,
    p_idClub_orig IN NUMBER,
    p_idClub_dest IN NUMBER,
    p_motivo      IN VARCHAR2 DEFAULT 'voluntario'
) IS
    v_nombre VARCHAR2(100);
BEGIN
    SELECT primer_nombre || ' ' || primer_apellido INTO v_nombre
    FROM   JPS_MIEMBRO WHERE idMiembro = p_idMiembro;

    DBMS_OUTPUT.PUT_LINE('====================================================');
    DBMS_OUTPUT.PUT_LINE('  TRASLADO DE CLUB: ' || v_nombre);
    DBMS_OUTPUT.PUT_LINE('  Origen: Club ' || p_idClub_orig || ' → Destino: Club ' || p_idClub_dest);
    DBMS_OUTPUT.PUT_LINE('====================================================');

    -- 1. Retirar del club origen
    JPS_SP_RETIRAR_MIEMBRO(p_idMiembro, p_idClub_orig, p_motivo, SYSDATE);

    -- 2. Verificar que no tiene deudas (la inscripción ya lo valida, pero reportamos)
    IF JPS_FN_TIENE_DEUDA(p_idMiembro) = 'S' THEN
        RAISE_APPLICATION_ERROR(-20060,
            'ERROR: ' || v_nombre || ' tiene deudas en el club de origen. Debe saldarlas antes de trasladarse.');
    END IF;

    -- 3. Inscribir en el club destino
    JPS_SP_INSCRIBIR_MIEMBRO(p_idMiembro, p_idClub_dest, SYSDATE);

    -- 4. Asignar grupo en el club destino
    JPS_SP_ASIGNAR_GRUPO(p_idMiembro, p_idClub_dest, SYSDATE);

    DBMS_OUTPUT.PUT_LINE('>> Traslado completado exitosamente.');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_CAMBIAR_CLUB;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_CERRAR_DISCUSION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_CERRAR_DISCUSION" (
    p_idGrupo      IN NUMBER,
    p_idClub       IN NUMBER,
    p_ISBN         IN VARCHAR2,
    p_conclusiones IN VARCHAR2,
    p_valoracion   IN NUMBER
) IS
    v_titulo   VARCHAR2(200);
    v_rows     NUMBER;
    v_club     VARCHAR2(100);
    v_tipo     VARCHAR2(10);
    v_mod_id   NUMBER;
    v_mod_nom  VARCHAR2(100);
BEGIN
    -- Validar valoración
    IF p_valoracion NOT BETWEEN 1 AND 5 THEN
        RAISE_APPLICATION_ERROR(-20450,
            'La valoración debe ser entre 1 y 5. Ingresó: '||p_valoracion);
    END IF;

    SELECT lb.TITULO_ORIGINAL INTO v_titulo
    FROM   JPS_LIBRO lb WHERE lb.ISBN = p_ISBN;

    SELECT cl.NOMBRE, gl.TIPO INTO v_club, v_tipo
    FROM   JPS_CLUB_LECTURA cl
    JOIN   JPS_GRUPO_LECTURA gl ON gl.IDCLUB=cl.IDCLUB
    WHERE  cl.IDCLUB=p_idClub AND gl.IDGRUPO=p_idGrupo AND gl.IDCLUB=p_idClub;

    -- Obtener el moderador antes de cerrar (para el reporte)
    BEGIN
        SELECT IDMIEMBRO INTO v_mod_id
        FROM   JPS_CALENDARIO_MES_REUNION
        WHERE  IDGRUPO=p_idGrupo AND IDCLUB=p_idClub
        AND    ISBN=p_ISBN AND REALIZADA='no' AND ROWNUM=1;

        SELECT PRIMER_NOMBRE||' '||PRIMER_APELLIDO INTO v_mod_nom
        FROM   JPS_MIEMBRO WHERE IDMIEMBRO=v_mod_id;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        v_mod_nom := 'No disponible';
    END;

    -- Verificar que hay reuniones pendientes para cerrar
    SELECT COUNT(*) INTO v_rows
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  IDGRUPO=p_idGrupo AND IDCLUB=p_idClub
    AND    ISBN=p_ISBN AND REALIZADA='no';

    IF v_rows = 0 THEN
        RAISE_APPLICATION_ERROR(-20451,
            'No hay reuniones pendientes para "'||v_titulo||
            '" en el grupo '||p_idGrupo||'. Ya fue cerrada o no existe.');
    END IF;

    -- Marcar todas las pendientes como realizadas con conclusiones y valoración
    UPDATE JPS_CALENDARIO_MES_REUNION
    SET    REALIZADA        = 'si',
           CONCLUSIONES     = p_conclusiones,
           VALORACION_FINAL = p_valoracion,
           ULTIMA_DISCUSION = TO_CHAR(SYSDATE,'DD/MM/YYYY HH24:MI')
    WHERE  IDGRUPO   = p_idGrupo
    AND    IDCLUB    = p_idClub
    AND    ISBN      = p_ISBN
    AND    REALIZADA = 'no';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  DISCUSIÓN CERRADA');
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  Club       : '||v_club);
    DBMS_OUTPUT.PUT_LINE('  Grupo      : '||p_idGrupo||' ('||v_tipo||')');
    DBMS_OUTPUT.PUT_LINE('  Libro      : '||v_titulo);
    DBMS_OUTPUT.PUT_LINE('  Valoración : '||p_valoracion||'/5');
    DBMS_OUTPUT.PUT_LINE('  Moderador  : '||v_mod_nom||' → ahora DISPONIBLE');
    DBMS_OUTPUT.PUT_LINE('  Reuniones cerradas: '||v_rows);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  Conclusiones: '||p_conclusiones);
    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  El grupo puede iniciar una nueva discusión.');

EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END JPS_SP_CERRAR_DISCUSION;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_DIVIDIR_GRUPO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_DIVIDIR_GRUPO" (
    p_idGrupo IN NUMBER,
    p_idClub  IN NUMBER
) IS
    v_tipo         VARCHAR2(10);
    v_cant         NUMBER;
    v_mitad        NUMBER;
    v_nuevo_grupo  NUMBER;
    v_contador     NUMBER := 0;
    v_en_discusion VARCHAR2(1);
    v_fecha_hoy    DATE := SYSDATE;
    v_dia          VARCHAR2(15);
    v_hora         VARCHAR2(5);

    -- Cursor: miembros ordenados de más nuevo a más antiguo
    -- Los de menor fecha_inicio (más antiguos) se quedan; los demás se mueven
    CURSOR c_miembros_nuevos IS
        SELECT g.idMiembro, g.fecha_inicio
        FROM   JPS_G_LC g
        WHERE  g.idGrupo  = p_idGrupo
          AND  g.idClub   = p_idClub
          AND  g.fecha_fin IS NULL
        ORDER BY g.fecha_inicio DESC;   -- más recientes primero
BEGIN
    -- 1. Verificar que el grupo no esté en discusión
    v_en_discusion := JPS_FN_GRUPO_EN_DISCUSION(p_idGrupo, p_idClub);
    IF v_en_discusion = 'S' THEN
        RAISE_APPLICATION_ERROR(-20020,
            'ERROR: El grupo ' || p_idGrupo || ' está en discusión activa. No se puede dividir.');
    END IF;

    -- 2. Obtener tipo y parámetros del grupo original
    SELECT tipo, dia_reunion, hora_i
    INTO   v_tipo, v_dia, v_hora
    FROM   JPS_GRUPO_LECTURA
    WHERE  idGrupo = p_idGrupo AND idClub = p_idClub;

    -- 3. Contar miembros y calcular la mitad a mover
    v_cant  := JPS_FN_CONTAR_MIEMBROS_GRUPO(p_idGrupo, p_idClub);
    v_mitad := FLOOR(v_cant / 2);  -- la mitad más reciente se mueve

    -- 4. Crear el nuevo grupo
    v_nuevo_grupo := JPS_FN_SIGUIENTE_ID_GRUPO();
    INSERT INTO JPS_GRUPO_LECTURA(idGrupo, idClub, tipo, fecha_creacion, dia_reunion, hora_i)
    VALUES (v_nuevo_grupo, p_idClub, v_tipo, v_fecha_hoy, v_dia, v_hora);

    DBMS_OUTPUT.PUT_LINE('>> Nuevo grupo creado: idGrupo=' || v_nuevo_grupo ||
        ', Club=' || p_idClub || ', Tipo=' || v_tipo);

    -- 5. Mover la mitad más reciente al nuevo grupo
    FOR r IN c_miembros_nuevos LOOP
        EXIT WHEN v_contador >= v_mitad;

        -- Cerrar en el grupo original (Se deja v_fecha_hoy porque es la fecha de salida)
        UPDATE JPS_G_LC
        SET    fecha_fin = v_fecha_hoy
        WHERE  idMiembro    = r.idMiembro
          AND  idClub       = p_idClub
          AND  idGrupo      = p_idGrupo
          AND  fecha_inicio = r.fecha_inicio;

        -- Insertar en el nuevo grupo (CORREGIDO: Usamos r.fecha_inicio para respetar la FK)
        INSERT INTO JPS_G_LC(fecha_inicio, idMiembro, idClub, idGrupo, fecha_fin)
        VALUES (r.fecha_inicio, r.idMiembro, p_idClub, v_nuevo_grupo, NULL);

        v_contador := v_contador + 1;
        DBMS_OUTPUT.PUT_LINE('   Miembro ' || r.idMiembro || ' movido al grupo ' || v_nuevo_grupo);
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> División completada. Grupo original: ' ||
        JPS_FN_CONTAR_MIEMBROS_GRUPO(p_idGrupo, p_idClub) || ' miembros | Grupo nuevo: ' ||
        JPS_FN_CONTAR_MIEMBROS_GRUPO(v_nuevo_grupo, p_idClub) || ' miembros.');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_DIVIDIR_GRUPO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_GENERAR_CALENDARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_GENERAR_CALENDARIO" (
    p_idGrupo    IN NUMBER,
    p_idClub     IN NUMBER,
    p_ISBN       IN VARCHAR2,
    p_mes        IN NUMBER,
    p_anio       IN NUMBER,
    p_sesiones   IN NUMBER DEFAULT 1,
    p_dia_inicio IN NUMBER DEFAULT 1
) IS
    v_tipo         VARCHAR2(10);
    v_dia_reunion  VARCHAR2(15);
    v_hora         VARCHAR2(5);
    v_isbn_disc    VARCHAR2(20);
    v_linea_base   DATE;
    v_ultimo_dia   DATE;
    v_fecha        DATE;
    v_generadas    NUMBER := 0;
    v_titulo       VARCHAR2(200);
    v_nombre_cl    VARCHAR2(100);
    
    -- VARIABLES CORRECTIVAS PARA LA LLAVE FORÁNEA (FK_JPS_CAL_GLC)
    v_tmp_idmbr    NUMBER;
    v_tmp_fechaini DATE;
BEGIN
    EXECUTE IMMEDIATE 'ALTER SESSION SET NLS_DATE_LANGUAGE = ''SPANISH''';

    -- Validaciones iniciales
    IF p_sesiones NOT BETWEEN 1 AND 3 THEN
        RAISE_APPLICATION_ERROR(-20410, 'El número de sesiones debe ser entre 1 y 3. Ingresó: '||p_sesiones);
    END IF;
    IF p_mes NOT BETWEEN 1 AND 12 THEN
        RAISE_APPLICATION_ERROR(-20411, 'Mes inválido: '||p_mes);
    END IF;

    -- Obtener datos del grupo
    SELECT gl.TIPO, gl.DIA_REUNION, gl.HORA_I, cl.NOMBRE
    INTO   v_tipo, v_dia_reunion, v_hora, v_nombre_cl
    FROM   JPS_GRUPO_LECTURA gl
    JOIN   JPS_CLUB_LECTURA  cl ON gl.IDCLUB = cl.IDCLUB
    WHERE  gl.IDGRUPO = p_idGrupo AND gl.IDCLUB = p_idClub;

    -- Validar fin de semana
    IF UPPER(v_dia_reunion) IN ('SABADO', 'SÁBADO', 'DOMINGO') THEN
        RAISE_APPLICATION_ERROR(-20415, 'ERROR: No se permiten reuniones en fines de semana ('||v_dia_reunion||').');
    END IF;

    SELECT TITULO_ORIGINAL INTO v_titulo FROM JPS_LIBRO WHERE ISBN = p_ISBN;

    -- Verificar que el grupo no esté en discusión
    v_isbn_disc := JPS_FN_LIBRO_EN_DISCUSION(p_idGrupo, p_idClub);
    IF v_isbn_disc IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20412,
            'El grupo ya está discutiendo "'||v_isbn_disc||
            '". Cierre esa discusión antes de generar un nuevo calendario.');
    END IF;

    -- CONTROL DEL PASADO: Construir la fecha exacta con el DÍA de inicio escrito por el usuario
    v_linea_base := TO_DATE(LPAD(p_dia_inicio,2,'0')||'/'||LPAD(p_mes,2,'0')||'/'||p_anio, 'DD/MM/YYYY');
    v_ultimo_dia := LAST_DAY(v_linea_base);

    IF v_linea_base < TRUNC(SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20416, 'ERROR: No puedes elegir un día o fecha que ya pasó en el calendario.');
    END IF;

    -- NEXT_DAY calcula el primer día de reunión legítimo a partir de la fecha base
    v_fecha := NEXT_DAY(v_linea_base - 1, UPPER(v_dia_reunion));

    -- =========================================================================
    -- SOLUCIÓN AL ORA-02291: Extraer un par legítimo (IDMIEMBRO, FECHA_INICIO) 
    -- directamente desde JPS_G_LC para este grupo específico.
    -- =========================================================================
    BEGIN
        SELECT IDMIEMBRO, FECHA_INICIO
        INTO   v_tmp_idmbr, v_tmp_fechaini
        FROM   JPS_G_LC
        WHERE  IDGRUPO = p_idGrupo 
          AND  IDCLUB = p_idClub 
          AND  FECHA_FIN IS NULL
          AND  ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20417, 'ERROR: El grupo no cuenta con miembros activos inscritos en la tabla JPS_G_LC.');
    END;

    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  GENERANDO CALENDARIO INTERACTIVO');
    DBMS_OUTPUT.PUT_LINE('  Punto de inicio establecido: '|| TO_CHAR(v_linea_base, 'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');

    -- Insertar reuniones semanales en el mes
    WHILE v_fecha <= v_ultimo_dia AND v_generadas < p_sesiones LOOP
        INSERT INTO JPS_CALENDARIO_MES_REUNION(
            FECHA, IDCLUB, IDGRUPO, ISBN, FECHA_INICIO, IDMIEMBRO,
            REALIZADA, CONCLUSIONES, ULTIMA_DISCUSION, VALORACION_FINAL
        ) VALUES (
            v_fecha, p_idClub, p_idGrupo, p_ISBN,
            v_tmp_fechaini, -- <-- SOLUCIÓN: Usamos su FECHA_INICIO real del grupo
            v_tmp_idmbr,    -- <-- SOLUCIÓN: Usamos el IDMIEMBRO vinculado correspondiente
            'no', NULL, NULL, NULL
        );

        v_generadas := v_generadas + 1;
        DBMS_OUTPUT.PUT_LINE('  Reunion #'||v_generadas||': '||TO_CHAR(v_fecha,'DD/MM/YYYY')||' ('||v_dia_reunion||')');
        v_fecha := v_fecha + 7;
    END LOOP;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('  Total reuniones programadas con exito: '||v_generadas);
    DBMS_OUTPUT.PUT_LINE('============================================================');
EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END JPS_SP_GENERAR_CALENDARIO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_INSCRIBIR_MIEMBRO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_INSCRIBIR_MIEMBRO" (
    p_idMiembro   IN NUMBER,
    p_idClub      IN NUMBER,
    p_fecha_ingreso IN DATE DEFAULT SYSDATE
) IS
    v_fecha_nac    DATE;
    v_tipo         VARCHAR2(10);
    v_club_activo  NUMBER;
    v_cuota        VARCHAR2(2);
    v_tiene_deuda  VARCHAR2(1);
    v_nombre       VARCHAR2(100);
BEGIN
    -- 1. Obtener datos del miembro
    SELECT m.fecha_nacimiento,
           m.primer_nombre || ' ' || m.primer_apellido
    INTO   v_fecha_nac, v_nombre
    FROM   JPS_MIEMBRO m
    WHERE  m.idMiembro = p_idMiembro;

    -- 2. Determinar tipo de lector
    v_tipo := JPS_FN_TIPO_MIEMBRO(v_fecha_nac);
    IF v_tipo = 'NO_ELEGIBLE' THEN
        RAISE_APPLICATION_ERROR(-20001,
            'ERROR: El miembro ' || v_nombre || ' no tiene edad elegible (debe tener entre 6 y más de 25 años).');
    END IF;

    -- 3. Verificar que no esté activo en otro club
    SELECT COUNT(*)
    INTO   v_club_activo
    FROM   JPS_HISTORICO_MEMBRESIA
    WHERE  idMiembro = p_idMiembro
      AND  estatus   = 'activo'
      AND  fecha_fin IS NULL;

    IF v_club_activo > 0 THEN
        RAISE_APPLICATION_ERROR(-20002,
            'ERROR: El miembro ' || v_nombre || ' ya está activo en otro club. Debe retirarse primero.');
    END IF;

    -- 4. Verificar deudas en clubes anteriores
    v_tiene_deuda := JPS_FN_TIENE_DEUDA(p_idMiembro);
    IF v_tiene_deuda = 'S' THEN
        RAISE_APPLICATION_ERROR(-20003,
            'ERROR: El miembro ' || v_nombre || ' tiene deudas pendientes en un club anterior. No puede inscribirse.');
    END IF;

    -- 5. Obtener si el club tiene cuota
    SELECT cuota_membresia INTO v_cuota
    FROM   JPS_CLUB_LECTURA
    WHERE  idClub = p_idClub;

    -- 6. Crear registro en HISTORICO_MEMBRESIA
    INSERT INTO JPS_HISTORICO_MEMBRESIA(fecha_inicio, idMiembro, idClub, estatus, fecha_fin, motivo_deuda)
    VALUES (p_fecha_ingreso, p_idMiembro, p_idClub, 'activo', NULL, NULL);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> Miembro ' || v_nombre || ' inscrito en el club ' || p_idClub ||
        ' el ' || TO_CHAR(p_fecha_ingreso,'DD/MM/YYYY') || '.');
    IF v_cuota = 'si' THEN
        DBMS_OUTPUT.PUT_LINE('   Club con cuota: estado de pago PENDIENTE. Use JPS_SP_REGISTRAR_PAGO para solvencia.');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20000, 'ERROR: Miembro o Club no encontrado en el sistema.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_INSCRIBIR_MIEMBRO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_PASAR_ASISTENCIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_PASAR_ASISTENCIA" (
    p_fecha    IN DATE,
    p_idGrupo  IN NUMBER,
    p_idClub   IN NUMBER
) IS
    v_realizada VARCHAR2(2);
    v_isbn      VARCHAR2(20);
    v_nombre_cl VARCHAR2(100);
    v_tipo      VARCHAR2(10);
BEGIN
    -- Verificar que la reunión existe y no está ya marcada
    BEGIN
        SELECT cmr.REALIZADA, cmr.ISBN, cl.NOMBRE, gl.TIPO
        INTO   v_realizada, v_isbn, v_nombre_cl, v_tipo
        FROM   JPS_CALENDARIO_MES_REUNION cmr
        JOIN   JPS_CLUB_LECTURA cl ON cmr.IDCLUB=cl.IDCLUB
        JOIN   JPS_GRUPO_LECTURA gl ON cmr.IDGRUPO=gl.IDGRUPO AND cmr.IDCLUB=gl.IDCLUB
        WHERE  cmr.FECHA   = p_fecha
        AND    cmr.IDGRUPO = p_idGrupo
        AND    cmr.IDCLUB  = p_idClub;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20430,
                'No existe reunión programada para el grupo '||p_idGrupo||
                ' el '||TO_CHAR(p_fecha,'DD/MM/YYYY')||'.');
    END;

    IF v_realizada = 'si' THEN
        RAISE_APPLICATION_ERROR(-20431,
            'La reunión del '||TO_CHAR(p_fecha,'DD/MM/YYYY')||
            ' ya fue marcada como realizada.');
    END IF;

    -- Marcar la reunión como realizada
    UPDATE JPS_CALENDARIO_MES_REUNION
    SET    REALIZADA = 'si'
    WHERE  FECHA   = p_fecha
    AND    IDGRUPO = p_idGrupo
    AND    IDCLUB  = p_idClub;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('============================================================');
    DBMS_OUTPUT.PUT_LINE('  ASISTENCIA REGISTRADA');
    DBMS_OUTPUT.PUT_LINE('  Club    : '||v_nombre_cl);
    DBMS_OUTPUT.PUT_LINE('  Grupo   : '||p_idGrupo||' ('||v_tipo||')');
    DBMS_OUTPUT.PUT_LINE('  Libro   : '||v_isbn);
    DBMS_OUTPUT.PUT_LINE('  Fecha   : '||TO_CHAR(p_fecha,'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('  Reunión marcada como REALIZADA.');
    DBMS_OUTPUT.PUT_LINE('  Use JPS_SP_REGISTRAR_INASISTENCIA para registrar ausentes.');
    DBMS_OUTPUT.PUT_LINE('============================================================');

EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END JPS_SP_PASAR_ASISTENCIA;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_PROCESAR_MOROSOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_PROCESAR_MOROSOS" IS
    v_ciclo_actual DATE;
BEGIN
    -- Escaneamos a todos los miembros activos en clubes que cobran cuota
    FOR rec IN (
        SELECT hm.idMiembro, hm.idClub, hm.fecha_inicio
        FROM   JPS_HISTORICO_MEMBRESIA hm
        JOIN   JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
        WHERE  hm.estatus = 'activo'
          AND  hm.fecha_fin IS NULL
          AND  cl.cuota_membresia = 'si'
    ) LOOP
        -- Calculamos la fecha exacta en la que inició su "año actual" de membresía
        v_ciclo_actual := ADD_MONTHS(rec.fecha_inicio, 
                                     TRUNC(MONTHS_BETWEEN(SYSDATE, rec.fecha_inicio) / 12) * 12);

        -- Verificamos si ya pasaron más de 30 días desde que debió renovar (periodo de gracia)
        IF SYSDATE > (v_ciclo_actual + 30) THEN

            -- Buscamos si existe algún pago registrado en JPS_MEMBRESIA_PAGO para este ciclo
            DECLARE
                v_pago_realizado NUMBER;
            BEGIN
                SELECT COUNT(*)
                INTO v_pago_realizado
                FROM JPS_MEMBRESIA_PAGO
                WHERE idMiembro = rec.idMiembro
                  AND idClub = rec.idClub
                  AND fecha_inicio = rec.fecha_inicio
                  AND fecha_pago >= v_ciclo_actual; -- El pago debe ser igual o posterior al inicio de su año

                -- Si no hay pagos en este ciclo... ¡Es moroso!
                IF v_pago_realizado = 0 THEN
                    -- Retiro involuntario automático
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
        DBMS_OUTPUT.PUT_LINE('Error en el Job Automático: ' || SQLERRM);
END JPS_SP_PROCESAR_MOROSOS;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_REASIGNAR_NUEVOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_REASIGNAR_NUEVOS" (
    p_idMiembro IN NUMBER,
    p_idClub    IN NUMBER
) IS
    v_tipo         VARCHAR2(10);
    v_fecha_nac    DATE;
    v_min_grupo    NUMBER;
    v_min_cant     NUMBER := 9999;
    v_cant_actual  NUMBER;
    v_en_discusion VARCHAR2(1);

    CURSOR c_grupos IS
        SELECT idGrupo
        FROM   JPS_GRUPO_LECTURA
        WHERE  idClub = p_idClub AND tipo = v_tipo;
BEGIN
    SELECT fecha_nacimiento INTO v_fecha_nac
    FROM   JPS_MIEMBRO WHERE idMiembro = p_idMiembro;

    v_tipo := JPS_FN_TIPO_MIEMBRO(v_fecha_nac);

    -- Buscar el grupo con menos miembros que no esté en discusión
    FOR r IN c_grupos LOOP
        v_en_discusion := JPS_FN_GRUPO_EN_DISCUSION(r.idGrupo, p_idClub);
        IF v_en_discusion = 'N' THEN
            v_cant_actual := JPS_FN_CONTAR_MIEMBROS_GRUPO(r.idGrupo, p_idClub);
            IF v_cant_actual < v_min_cant THEN
                v_min_cant  := v_cant_actual;
                v_min_grupo := r.idGrupo;
            END IF;
        END IF;
    END LOOP;

    IF v_min_grupo IS NULL THEN
        RAISE_APPLICATION_ERROR(-20030,
            'ERROR: Todos los grupos de tipo "' || v_tipo ||
            '" del club ' || p_idClub || ' están en discusión. No se puede asignar ahora.');
    END IF;

    INSERT INTO JPS_G_LC(fecha_inicio, idMiembro, idClub, idGrupo, fecha_fin)
    VALUES (SYSDATE, p_idMiembro, p_idClub, v_min_grupo, NULL);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> Miembro ' || p_idMiembro || ' asignado al grupo ' || v_min_grupo ||
        ' (el de menor ocupación: ' || v_min_cant || ' miembros).');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_REASIGNAR_NUEVOS;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_REGISTRAR_INASISTENCIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_REGISTRAR_INASISTENCIA" (
    p_fecha     IN DATE,
    p_idGrupo   IN NUMBER,
    p_idClub    IN NUMBER,
    p_idMiembro IN NUMBER
) IS
    v_isbn        VARCHAR2(20);
    v_fecha_ini   DATE;
    v_nombre      VARCHAR2(100);
    v_bimestre    NUMBER;
    v_anio        NUMBER;
    v_porc        NUMBER;
    v_ya_reg      NUMBER;
BEGIN
    -- Verificar que la reunión fue realizada
    BEGIN
        SELECT cmr.ISBN INTO v_isbn
        FROM   JPS_CALENDARIO_MES_REUNION cmr
        WHERE  cmr.FECHA   = p_fecha
        AND    cmr.IDGRUPO = p_idGrupo
        AND    cmr.IDCLUB  = p_idClub
        AND    cmr.REALIZADA = 'si';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20440,
                'La reunión del '||TO_CHAR(p_fecha,'DD/MM/YYYY')||
                ' no existe o no ha sido marcada como realizada aún.');
    END;

    -- Verificar que el miembro pertenece al grupo
    IF JPS_FN_MIEMBRO_EN_GRUPO(p_idMiembro, p_idGrupo, p_idClub) = 'N' THEN
        RAISE_APPLICATION_ERROR(-20441,
            'El miembro '||p_idMiembro||' no pertenece al grupo '||p_idGrupo||'.');
    END IF;

    -- Verificar que no esté ya registrada la inasistencia
    SELECT COUNT(*) INTO v_ya_reg
    FROM   JPS_INASISTENCIA
    WHERE  IDMIEMBRO=p_idMiembro AND IDCLUB=p_idClub
    AND    IDGRUPO=p_idGrupo AND FECHA=p_fecha;

    IF v_ya_reg > 0 THEN
        RAISE_APPLICATION_ERROR(-20442,
            'Ya existe una inasistencia registrada para este miembro en esa fecha.');
    END IF;

    -- Obtener fecha_inicio del G_LC para la FK
    SELECT FECHA_INICIO INTO v_fecha_ini
    FROM   JPS_G_LC
    WHERE  IDMIEMBRO=p_idMiembro AND IDCLUB=p_idClub
    AND    IDGRUPO=p_idGrupo AND FECHA_FIN IS NULL;

    SELECT PRIMER_NOMBRE||' '||PRIMER_APELLIDO INTO v_nombre
    FROM   JPS_MIEMBRO WHERE IDMIEMBRO=p_idMiembro;

    -- Insertar inasistencia
    INSERT INTO JPS_INASISTENCIA(FECHA, IDCLUB, IDGRUPO, ISBN, FECHA_INICIO, IDMIEMBRO)
    VALUES (p_fecha, p_idClub, p_idGrupo, v_isbn, v_fecha_ini, p_idMiembro);

    -- Verificar regla del 30% bimestral
    v_anio     := EXTRACT(YEAR FROM p_fecha);
    v_bimestre := CEIL(EXTRACT(MONTH FROM p_fecha)/2);
    v_porc     := JPS_FN_PORC_INASISTENCIA_BIMESTRE(
                      p_idMiembro, p_idClub, p_idGrupo, v_bimestre, v_anio);

    DBMS_OUTPUT.PUT_LINE('  Inasistencia registrada: '||v_nombre||
        ' | Fecha: '||TO_CHAR(p_fecha,'DD/MM/YYYY'));

    IF v_porc IS NOT NULL AND v_porc > 30 THEN
        DBMS_OUTPUT.PUT_LINE('  *** ALERTA: '||v_nombre||
            ' supera el 30% de inasistencias ('||v_porc||'%).');
        DBMS_OUTPUT.PUT_LINE('  *** Aplicando retiro automático del club...');
        COMMIT;
        JPS_SP_RETIRAR_MIEMBRO(p_idMiembro, p_idClub, 'Inasistencia', SYSDATE);
        DBMS_OUTPUT.PUT_LINE('  *** '||v_nombre||' ha sido retirado del club.');
        DBMS_OUTPUT.PUT_LINE('  *** No puede volver a unirse al mismo club.');
    ELSE
        COMMIT;
        IF v_porc IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('  Porcentaje inasistencias bimestre '||v_bimestre||
                '/'||v_anio||': '||v_porc||'% (límite: 30%)');
        END IF;
    END IF;

EXCEPTION
    WHEN OTHERS THEN ROLLBACK; RAISE;
END JPS_SP_REGISTRAR_INASISTENCIA;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_REGISTRAR_PAGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_REGISTRAR_PAGO" (
    p_idMiembro   IN NUMBER,
    p_idClub      IN NUMBER,
    p_monto       IN NUMBER,
    p_moneda      IN VARCHAR2,
    p_fecha_pago  IN DATE DEFAULT SYSDATE
) IS
    v_fecha_inicio DATE;
    v_cuota        VARCHAR2(2);
    v_monto_usd    NUMBER;
    v_id_pago      NUMBER;
    v_nombre       VARCHAR2(100);
BEGIN
    -- 1. Verificar que el club tiene cuota
    SELECT cuota_membresia INTO v_cuota
    FROM   JPS_CLUB_LECTURA WHERE idClub = p_idClub;

    IF v_cuota = 'no' THEN
        RAISE_APPLICATION_ERROR(-20040,
            'ERROR: El club ' || p_idClub || ' no cobra cuota de membresía.');
    END IF;

    -- 2. Obtener la fecha de inicio del histórico activo
    SELECT hm.fecha_inicio
    INTO   v_fecha_inicio
    FROM   JPS_HISTORICO_MEMBRESIA hm
    WHERE  hm.idMiembro = p_idMiembro
      AND  hm.idClub    = p_idClub
      AND  hm.estatus   = 'activo'
      AND  hm.fecha_fin IS NULL
      AND  ROWNUM = 1;

    -- 3. Nombre del miembro
    SELECT primer_nombre || ' ' || primer_apellido
    INTO   v_nombre FROM JPS_MIEMBRO WHERE idMiembro = p_idMiembro;

    -- 4. Convertir monto a dólares usando la función ya existente
    v_monto_usd := JPS_FN_CONVERSION_MONETARIA(p_monto, p_moneda, 'Dolar');

    -- 5. Obtener el siguiente ID de pago
    SELECT NVL(MAX(idPago), 0) + 1 INTO v_id_pago FROM JPS_MEMBRESIA_PAGO;

    -- 6. Registrar el pago
    INSERT INTO JPS_MEMBRESIA_PAGO(idPago, fecha_inicio, idMiembro, idClub, fecha_pago)
    VALUES (v_id_pago, v_fecha_inicio, p_idMiembro, p_idClub, p_fecha_pago);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> Pago registrado para ' || v_nombre || ' | Club: ' || p_idClub);
    DBMS_OUTPUT.PUT_LINE('   Monto: ' || p_monto || ' ' || p_moneda ||
        ' = $' || v_monto_usd || ' USD | Fecha: ' || TO_CHAR(p_fecha_pago,'DD/MM/YYYY'));
    DBMS_OUTPUT.PUT_LINE('   Estado actualizado a: SOLVENTE.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20041,
            'ERROR: El miembro ' || p_idMiembro || ' no tiene membresía activa en el club ' || p_idClub || '.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_REGISTRAR_PAGO;

/
--------------------------------------------------------
--  DDL for Procedure JPS_SP_RETIRAR_MIEMBRO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "JUAN123"."JPS_SP_RETIRAR_MIEMBRO" (
    p_idMiembro      IN NUMBER,
    p_idClub         IN NUMBER,
    p_motivo         IN VARCHAR2,   -- 'voluntario','deudas','Inasistencia','otro'
    p_fecha_retiro   IN DATE DEFAULT SYSDATE
) IS
    v_fecha_inicio   DATE;
    v_cuota          VARCHAR2(2);
    v_nombre         VARCHAR2(100);
    v_renovacion     DATE;
    v_dias_aviso     NUMBER;
    v_idGrupo        NUMBER;
    v_fecha_ini_grp  DATE;
BEGIN
    -- 1. Obtener membresía activa
    SELECT hm.fecha_inicio
    INTO   v_fecha_inicio
    FROM   JPS_HISTORICO_MEMBRESIA hm
    WHERE  hm.idMiembro = p_idMiembro AND hm.idClub = p_idClub
      AND  hm.estatus = 'activo' AND hm.fecha_fin IS NULL AND ROWNUM = 1;

    SELECT primer_nombre || ' ' || primer_apellido INTO v_nombre
    FROM   JPS_MIEMBRO WHERE idMiembro = p_idMiembro;

    SELECT cuota_membresia INTO v_cuota
    FROM   JPS_CLUB_LECTURA WHERE idClub = p_idClub;

    -- 2. Si tiene cuota, validar aviso previo de 1 mes (30 días)
    IF v_cuota = 'si' AND p_motivo = 'voluntario' THEN
        -- Calcular próxima fecha de renovación teórica
        v_renovacion := ADD_MONTHS(v_fecha_inicio,
            CEIL(MONTHS_BETWEEN(p_fecha_retiro, v_fecha_inicio) / 12) * 12);

        -- SOLUCIÓN AL BUG: Si la fecha de renovación calculada es hoy o ya pasó,
        -- significa que estamos en el año actual, por lo que la renovación es el próximo año.
        IF v_renovacion <= p_fecha_retiro THEN
            v_renovacion := ADD_MONTHS(v_renovacion, 12);
        END IF;

        v_dias_aviso := v_renovacion - p_fecha_retiro;

        IF v_dias_aviso < 30 THEN
            DBMS_OUTPUT.PUT_LINE('>> AVISO: ' || v_nombre ||
                ' no notificó con 30 días de antelación a la renovación.');
            DBMS_OUTPUT.PUT_LINE('   Se le cobrará un ciclo adicional. Próxima renovación: ' ||
                TO_CHAR(v_renovacion,'DD/MM/YYYY') || ' | Se marcará moroso hasta esa fecha.');
            -- No bloqueamos la salida, pero el sistema sabe que debe dinero.
        END IF;
    END IF;

    -- 3. Cerrar la asignación de grupo actual en la tabla JPS_G_LC
    BEGIN
        SELECT g.idGrupo, g.fecha_inicio INTO v_idGrupo, v_fecha_ini_grp
        FROM   JPS_G_LC g
        WHERE  g.idMiembro = p_idMiembro AND g.idClub = p_idClub AND g.fecha_fin IS NULL
          AND  ROWNUM = 1;

        UPDATE JPS_G_LC
        SET    fecha_fin = p_fecha_retiro
        WHERE  idMiembro    = p_idMiembro
          AND  idClub       = p_idClub
          AND  idGrupo      = v_idGrupo
          AND  fecha_inicio = v_fecha_ini_grp;
    EXCEPTION WHEN NO_DATA_FOUND THEN 
        NULL; -- Si no estaba en ningún grupo (raro, pero posible), no hace nada.
    END;

    -- 4. Cerrar el histórico de membresía (Soft Delete)
    UPDATE JPS_HISTORICO_MEMBRESIA
    SET    estatus      = 'inactivo',  -- Antes decía 'inactivo', lo estandarizamos a 'retirado'
           fecha_fin    = p_fecha_retiro,
           motivo_deuda = p_motivo     -- Guardamos si fue por 'voluntario', 'deudas', etc.
    WHERE  idMiembro    = p_idMiembro
      AND  idClub       = p_idClub
      AND  fecha_inicio = v_fecha_inicio;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('>> Miembro ' || v_nombre || ' retirado del club ' || p_idClub ||
        ' el ' || TO_CHAR(p_fecha_retiro,'DD/MM/YYYY') || '. Motivo: ' || p_motivo);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20050, 'ERROR: No se encontró membresía activa para el miembro ' ||
            p_idMiembro || ' en el club ' || p_idClub || '.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END JPS_SP_RETIRAR_MIEMBRO;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_ANTIGUEDAD_CLUB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_ANTIGUEDAD_CLUB" (
    p_idMiembro IN NUMBER
) RETURN VARCHAR2 IS
    v_nombre         VARCHAR2(100);
    v_fecha_nac      DATE;
    v_fecha_inicio   DATE;
    v_nombre_club    VARCHAR2(100);
    v_edad           NUMBER;
    v_antiguedad     NUMBER;
    v_resultado      VARCHAR2(600);
BEGIN
    SELECT hm.fecha_inicio, cl.nombre, m.primer_nombre || ' ' || m.primer_apellido, m.fecha_nacimiento
    INTO v_fecha_inicio, v_nombre_club, v_nombre, v_fecha_nac
    FROM JPS_HISTORICO_MEMBRESIA hm
    JOIN JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
    JOIN JPS_MIEMBRO m ON hm.idMiembro = m.idMiembro
    WHERE hm.idMiembro = p_idMiembro
      AND hm.estatus = 'activo'
      AND hm.fecha_fin IS NULL
      AND ROWNUM = 1;

    v_edad       := TRUNC(MONTHS_BETWEEN(SYSDATE, v_fecha_nac) / 12);
    v_antiguedad := TRUNC(MONTHS_BETWEEN(SYSDATE, v_fecha_inicio) / 12);

    v_resultado := 'Nombre del Miembro : ' || v_nombre || CHR(10) ||
                   'Club al que Pertenece: ' || v_nombre_club || CHR(10) ||
                   'Fecha de Unión     : ' || TO_CHAR(v_fecha_inicio, 'DD/MM/YYYY') || CHR(10) ||
                   'Día de Hoy         : ' || TO_CHAR(SYSDATE, 'DD/MM/YYYY') || CHR(10) ||
                   'Edad               : ' || v_edad || ' años' || CHR(10) ||
                   'Antigüedad         : ' || v_antiguedad || ' año(s)';
    RETURN v_resultado;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        BEGIN
            SELECT m.primer_nombre || ' ' || m.primer_apellido, m.fecha_nacimiento
            INTO v_nombre, v_fecha_nac
            FROM JPS_MIEMBRO m
            WHERE m.idMiembro = p_idMiembro;

            v_edad := TRUNC(MONTHS_BETWEEN(SYSDATE, v_fecha_nac) / 12);
            RETURN 'Nombre del Miembro : ' || v_nombre || CHR(10) || 
                   'Club al que Pertenece: Ninguno (Sin club activo)' || CHR(10) ||
                   'Edad               : ' || v_edad || ' años' || CHR(10) || 
                   'ESTATUS            : El miembro no posee una membresía activa en ningún club actualmente.';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN 'ERROR: Miembro con ID ' || p_idMiembro || ' no encontrado.';
        END;
    WHEN OTHERS THEN
        RETURN 'ERROR INESPERADO: ' || SQLERRM;
END JPS_FN_ANTIGUEDAD_CLUB;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_CONTAR_MIEMBROS_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_CONTAR_MIEMBROS_GRUPO" (
    p_idGrupo IN NUMBER,
    p_idClub  IN NUMBER
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO   v_count
    FROM   JPS_G_LC
    WHERE  idGrupo   = p_idGrupo
      AND  idClub    = p_idClub
      AND  fecha_fin IS NULL;
    RETURN NVL(v_count, 0);
END JPS_FN_CONTAR_MIEMBROS_GRUPO;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_CONVERSION_MONETARIA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_CONVERSION_MONETARIA" (
    p_monto       IN NUMBER,
    p_moneda_orig IN VARCHAR2,
    p_moneda_dest IN VARCHAR2
) RETURN NUMBER IS
    v_tasa_orig NUMBER;
    v_tasa_dest NUMBER;
    v_monto_usd NUMBER;
BEGIN
    -- Obtener tasa de la moneda origen (cuántas unidades = 1 USD)
    SELECT tasa_a_usd INTO v_tasa_orig
    FROM JPS_V_TASA_CAMBIO
    WHERE UPPER(moneda) = UPPER(p_moneda_orig)
      AND ROWNUM = 1;

    -- Obtener tasa de la moneda destino
    SELECT tasa_a_usd INTO v_tasa_dest
    FROM JPS_V_TASA_CAMBIO
    WHERE UPPER(moneda) = UPPER(p_moneda_dest)
      AND ROWNUM = 1;

    -- Convertir: origen → USD → destino
    v_monto_usd := p_monto / v_tasa_orig;        -- monto en USD
    RETURN ROUND(v_monto_usd * v_tasa_dest, 2);   -- monto en destino

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: Moneda no encontrada. Verifique los nombres de moneda.');
        RETURN NULL;
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('ERROR: Tasa de cambio cero. Revise JPS_V_TASA_CAMBIO.');
        RETURN NULL;
END JPS_FN_CONVERSION_MONETARIA;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_EDAD_MIEMBRO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_EDAD_MIEMBRO" (
    p_idMiembro IN NUMBER
) RETURN VARCHAR2 IS
    v_nombre       VARCHAR2(100);
    v_fecha_nac    DATE;
    v_nombre_club  VARCHAR2(100);
    v_edad         NUMBER;
    v_resultado    VARCHAR2(600);
BEGIN
    -- Intentamos buscar los datos personales junto con su club activo
    BEGIN
        SELECT m.primer_nombre || ' ' || m.primer_apellido, m.fecha_nacimiento, cl.nombre
        INTO v_nombre, v_fecha_nac, v_nombre_club
        FROM JPS_HISTORICO_MEMBRESIA hm
        JOIN JPS_CLUB_LECTURA cl ON hm.idClub = cl.idClub
        JOIN JPS_MIEMBRO m ON hm.idMiembro = m.idMiembro
        WHERE hm.idMiembro = p_idMiembro
          AND hm.estatus = 'activo'
          AND hm.fecha_fin IS NULL
          AND ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Si no está inscrito en ningún club activo, extraemos solo sus datos básicos
            SELECT primer_nombre || ' ' || primer_apellido, fecha_nacimiento
            INTO v_nombre, v_fecha_nac
            FROM JPS_MIEMBRO
            WHERE idMiembro = p_idMiembro;
            
            v_nombre_club := 'Ninguno (Sin club activo)';
    END;

    v_edad := TRUNC(MONTHS_BETWEEN(SYSDATE, v_fecha_nac) / 12);

    -- Construcción estructurada línea por línea
    v_resultado := 'Nombre             : ' || v_nombre || CHR(10) ||
                   'Club al que Pertenece: ' || v_nombre_club || CHR(10) ||
                   'Fecha de Nacimiento: ' || TO_CHAR(v_fecha_nac, 'DD/MM/YYYY') || CHR(10) ||
                   'Día de Hoy         : ' || TO_CHAR(SYSDATE, 'DD/MM/YYYY') || CHR(10) ||
                   'Edad               : ' || v_edad || ' años';
    RETURN v_resultado;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'ERROR: Miembro con ID ' || p_idMiembro || ' no encontrado en la base de datos.';
    WHEN OTHERS THEN
        RETURN 'ERROR INESPERADO: ' || SQLERRM;
END JPS_FN_EDAD_MIEMBRO;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_GRUPO_EN_DISCUSION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_GRUPO_EN_DISCUSION" (
    p_idGrupo IN NUMBER,
    p_idClub  IN NUMBER
) RETURN VARCHAR2 IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO   v_count
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  idGrupo   = p_idGrupo
      AND  idClub    = p_idClub
      AND  realizada = 'no';

    IF v_count > 0 THEN RETURN 'S';
    ELSE RETURN 'N';
    END IF;
END JPS_FN_GRUPO_EN_DISCUSION;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_LIBRO_EN_DISCUSION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_LIBRO_EN_DISCUSION" (
    p_idGrupo IN NUMBER,
    p_idClub  IN NUMBER
) RETURN VARCHAR2 IS
    v_isbn VARCHAR2(20);
BEGIN
    SELECT ISBN INTO v_isbn
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  IDGRUPO   = p_idGrupo
    AND    IDCLUB    = p_idClub
    AND    REALIZADA = 'no'
    AND    ROWNUM    = 1;
    RETURN v_isbn;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN NULL;
END JPS_FN_LIBRO_EN_DISCUSION;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_MIEMBRO_EN_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_MIEMBRO_EN_GRUPO" (
    p_idMiembro IN NUMBER,
    p_idGrupo   IN NUMBER,
    p_idClub    IN NUMBER
) RETURN VARCHAR2 IS
    v_cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_cnt
    FROM   JPS_G_LC
    WHERE  IDMIEMBRO = p_idMiembro
    AND    IDGRUPO   = p_idGrupo
    AND    IDCLUB    = p_idClub
    AND    FECHA_FIN IS NULL;
    RETURN CASE WHEN v_cnt > 0 THEN 'S' ELSE 'N' END;
END JPS_FN_MIEMBRO_EN_GRUPO;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_MODERADOR_DISPONIBLE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_MODERADOR_DISPONIBLE" (
    p_idMiembro IN NUMBER
) RETURN VARCHAR2 IS
    v_cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_cnt
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  IDMIEMBRO = p_idMiembro
    AND    REALIZADA = 'no';
    RETURN CASE WHEN v_cnt = 0 THEN 'S' ELSE 'N' END;
END JPS_FN_MODERADOR_DISPONIBLE;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_PORC_INASISTENCIA_BIMESTRE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_PORC_INASISTENCIA_BIMESTRE" (
    p_idMiembro IN NUMBER,
    p_idClub    IN NUMBER,
    p_idGrupo   IN NUMBER,
    p_bimestre  IN NUMBER,
    p_anio      IN NUMBER
) RETURN NUMBER IS
    v_mes_ini    NUMBER := (p_bimestre - 1) * 2 + 1;
    v_mes_fin    NUMBER := v_mes_ini + 1;
    v_total      NUMBER := 0;
    v_inasist    NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM   JPS_CALENDARIO_MES_REUNION
    WHERE  IDGRUPO  = p_idGrupo
    AND    IDCLUB   = p_idClub
    AND    REALIZADA = 'si'
    AND    EXTRACT(YEAR  FROM FECHA) = p_anio
    AND    EXTRACT(MONTH FROM FECHA) BETWEEN v_mes_ini AND v_mes_fin;

    IF v_total = 0 THEN RETURN NULL; END IF;

    SELECT COUNT(*) INTO v_inasist
    FROM   JPS_INASISTENCIA
    WHERE  IDMIEMBRO = p_idMiembro
    AND    IDCLUB    = p_idClub
    AND    IDGRUPO   = p_idGrupo
    AND    EXTRACT(YEAR  FROM FECHA) = p_anio
    AND    EXTRACT(MONTH FROM FECHA) BETWEEN v_mes_ini AND v_mes_fin;

    RETURN ROUND(v_inasist * 100 / v_total, 2);
END JPS_FN_PORC_INASISTENCIA_BIMESTRE;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_PORC_PART_BIMESTRE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_PORC_PART_BIMESTRE" (
    p_id_miembro IN NUMBER,
    p_bimestre   IN NUMBER,
    p_anio       IN NUMBER
) RETURN NUMBER IS
    v_id_club         NUMBER;
    v_id_grupo        NUMBER;
    v_total_reuniones NUMBER := 0;
    v_inasistencias   NUMBER := 0;
    v_porc_faltas     NUMBER := 0;
    v_mes_inicio      NUMBER;
    v_mes_fin         NUMBER;
BEGIN
    -- 1. Determinar los meses correspondientes al bimestre
    v_mes_inicio := (p_bimestre - 1) * 2 + 1;
    v_mes_fin    := v_mes_inicio + 1;

    -- 2. BÚSQUEDA AUTOMÁTICA: Encontrar el club y grupo del miembro sin pedirlo por parámetro
    BEGIN
        SELECT idClub, idGrupo
        INTO v_id_club, v_id_grupo
        FROM JPS_G_LC
        WHERE idMiembro = p_id_miembro
          AND ROWNUM = 1; -- Asegura capturar su registro activo actual
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL; -- El miembro no está inscrito en ningún grupo/club
    END;

    -- 3. Contar cuántas reuniones tuvo programadas el grupo en ese periodo
    SELECT COUNT(*)
    INTO v_total_reuniones
    FROM JPS_CALENDARIO_MES_REUNION r
    WHERE r.idGrupo = v_id_grupo
      AND r.idClub  = v_id_club
      AND EXTRACT(YEAR FROM r.fecha) = p_anio
      AND EXTRACT(MONTH FROM r.fecha) BETWEEN v_mes_inicio AND v_mes_fin;

    -- Si no hubo reuniones agendadas, retornamos NULL
    IF v_total_reuniones = 0 THEN
        RETURN NULL;
    END IF;

    -- 4. Contar cuántas veces faltó ESE miembro en ese periodo
    SELECT COUNT(*)
    INTO v_inasistencias
    FROM JPS_INASISTENCIA i
    WHERE i.idMiembro = p_id_miembro
      AND i.idClub    = v_id_club
      AND EXTRACT(YEAR FROM i.fecha) = p_anio
      AND EXTRACT(MONTH FROM i.fecha) BETWEEN v_mes_inicio AND v_mes_fin;

    -- 5. Calcular el porcentaje de FALTAS (Se retorna este para evaluar la regla del 30%)
    v_porc_faltas := ROUND((v_inasistencias / v_total_reuniones) * 100, 2);

    IF v_porc_faltas > 100 THEN
        v_porc_faltas := 100;
    END IF;

    RETURN v_porc_faltas;

EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL;
END JPS_FN_PORC_PART_BIMESTRE;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_PORC_PART_MENSUAL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_PORC_PART_MENSUAL" (
    p_mes        IN NUMBER,
    p_anio       IN NUMBER
) RETURN NUMBER IS
    v_total_grupos            NUMBER := 0;
    v_total_reuniones_global  NUMBER := 0;
    v_suma_porcentaje         NUMBER := 0;
    v_porcentaje              NUMBER := 0;
    v_inasistencias           NUMBER := 0;
    v_asistencias_esperadas   NUMBER := 0;
    v_faltas_totales          NUMBER := 0;
    v_grupos_sin_faltas       NUMBER := 0;
    
    v_reuniones_grupo         NUMBER := 0;
    v_cant_miembros_grupo     NUMBER := 0;
    v_esperados_grupo         NUMBER := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [AUDITORÍA DE INASISTENCIAS GLOBAL]');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(
        RPAD('CLUB', 6) || 
        RPAD('GRUPO', 7) || 
        RPAD('MIEMBRO', 24) || 
        RPAD('REUNIONES GRUPO', 17) || 
        RPAD('INTEGR. ESPERADOS', 19) || 
        RPAD('TOTAL FALTAS', 14) || 
        '(JUSTIFICADAS / INJUSTIFICADAS)'
    );
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    
    -- 1. Faltas globales individuales
    FOR f IN (
        SELECT i.idClub,
               i.idGrupo,
               m.idMiembro, 
               m.primer_nombre || ' ' || m.primer_apellido AS nombre,
               COUNT(*) AS total_faltas,
               SUM(CASE WHEN LOWER(TRIM(i.estatus)) = 'justificada' THEN 1 ELSE 0 END) AS jus,
               SUM(CASE WHEN LOWER(TRIM(i.estatus)) = 'injustificada' THEN 1 ELSE 0 END) AS inj
        FROM JPS_INASISTENCIA i
        JOIN JPS_CALENDARIO_MES_REUNION cmr ON i.fecha = cmr.fecha 
             AND i.idGrupo = cmr.idGrupo AND i.idClub = cmr.idClub AND i.ISBN = cmr.ISBN
        JOIN JPS_MIEMBRO m ON i.idMiembro = m.idMiembro
        WHERE EXTRACT(MONTH FROM cmr.fecha) = p_mes
          AND EXTRACT(YEAR FROM cmr.fecha) = p_anio
        GROUP BY i.idClub, i.idGrupo, m.idMiembro, m.primer_nombre, m.primer_apellido
        ORDER BY i.idClub ASC, i.idGrupo ASC, nombre ASC
    ) LOOP
        -- Calculo dinámico de miembros reales en caliente
        BEGIN
            SELECT pm.total_reuniones,
                   (SELECT COUNT(*) FROM JPS_G_LC glc WHERE glc.idClub = pm.idClub AND glc.idGrupo = pm.idGrupo)
            INTO   v_reuniones_grupo, v_cant_miembros_grupo
            FROM   JPS_V_PARTICIPACION_MENSUAL pm
            WHERE  pm.idClub = f.idClub AND pm.idGrupo = f.idGrupo AND pm.mes = p_mes AND pm.anio = p_anio;
              
            v_esperados_grupo := v_reuniones_grupo * v_cant_miembros_grupo;
        EXCEPTION
            WHEN OTHERS THEN
                v_reuniones_grupo := 0; v_esperados_grupo := 0;
        END;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(f.idClub, 6) || RPAD(f.idGrupo, 7) || RPAD(f.nombre, 24) || 
            RPAD(v_reuniones_grupo, 17) || RPAD(v_esperados_grupo, 19) || 
            RPAD(f.total_faltas, 14) || '(' || f.jus || ' Justificadas / ' || f.inj || ' Injustificadas)'
        );
        v_faltas_totales := v_faltas_totales + f.total_faltas;
    END LOOP;

    IF v_faltas_totales = 0 THEN
        DBMS_OUTPUT.PUT_LINE('  * Excelente: No se registraron faltas globales en este periodo.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('  >> TOTAL DE FALTAS REGISTRADAS EN EL MES: ' || v_faltas_totales);
    END IF;
    
    -- 2. Grupos con Asistencia Perfecta (0 inasistencias en la vista)
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('  [GRUPOS ACTIVOS SIN INASISTENCIAS (100% PARTICIPACIÓN)]');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('CLUB', 8) || RPAD('GRUPO', 10) || RPAD('REUNIONES REALIZADAS', 22) || 'INTEGRANTES ESPERADOS (REUNIONES * MIEMBROS REALES)');
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');
    
    FOR gf IN (
        SELECT pm.idClub, pm.idGrupo, pm.total_reuniones, 
               (SELECT COUNT(*) FROM JPS_G_LC glc WHERE glc.idClub = pm.idClub AND glc.idGrupo = pm.idGrupo) AS cant_miembros
        FROM   JPS_V_PARTICIPACION_MENSUAL pm
        WHERE  pm.mes = p_mes AND pm.anio = p_anio AND pm.total_reuniones > 0 AND NVL(pm.total_inasistencias, 0) = 0
        ORDER BY pm.idClub, pm.idGrupo
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(RPAD(gf.idClub, 8) || RPAD(gf.idGrupo, 10) || RPAD(gf.total_reuniones, 22) || (gf.total_reuniones * gf.cant_miembros));
        v_grupos_sin_faltas := v_grupos_sin_faltas + 1;
    END LOOP;
    
    IF v_grupos_sin_faltas = 0 THEN
        DBMS_OUTPUT.PUT_LINE('  * Alerta: Todos los grupos activos registraron al menos una falta.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');

    -- 3. Cálculo Matemático Real (Grupo por Grupo)
    FOR r IN (
        SELECT pm.idClub, pm.idGrupo, pm.total_reuniones, pm.total_inasistencias,
               (SELECT COUNT(*) FROM JPS_G_LC glc WHERE glc.idClub = pm.idClub AND glc.idGrupo = pm.idGrupo) AS cant_miembros
        FROM   JPS_V_PARTICIPACION_MENSUAL pm
        WHERE  pm.mes  = p_mes AND pm.anio = p_anio AND pm.total_reuniones > 0
    ) LOOP
        v_inasistencias := NVL(r.total_inasistencias, 0);
        v_asistencias_esperadas := r.total_reuniones * r.cant_miembros; 

        IF v_asistencias_esperadas > 0 THEN
            IF v_inasistencias > v_asistencias_esperadas THEN v_inasistencias := v_asistencias_esperadas; END IF;
            v_suma_porcentaje := v_suma_porcentaje + ((v_asistencias_esperadas - v_inasistencias) / v_asistencias_esperadas) * 100;
            v_total_reuniones_global := v_total_reuniones_global + r.total_reuniones;
            v_total_grupos := v_total_grupos + 1;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('  [AUDITORÍA DEL ORIGEN DE LAS MÉTRICAS]');
    DBMS_OUTPUT.PUT_LINE('  - Cantidad de Grupos Evaluados         : ' || v_total_grupos);
    DBMS_OUTPUT.PUT_LINE('  - Total de Reuniones en el Mes (Global): ' || v_total_reuniones_global);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------------------------------');

    IF v_total_grupos = 0 THEN RETURN 0; END IF;
    RETURN ROUND(v_suma_porcentaje / v_total_grupos, 2);
END JPS_FN_PORC_PART_MENSUAL;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_SIGUIENTE_ID_GRUPO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_SIGUIENTE_ID_GRUPO" 
RETURN NUMBER IS
    v_max NUMBER;
BEGIN
    SELECT NVL(MAX(idGrupo), 0) + 1
    INTO   v_max
    FROM   JPS_GRUPO_LECTURA;
    RETURN v_max;
END JPS_FN_SIGUIENTE_ID_GRUPO;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_TIENE_DEUDA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_TIENE_DEUDA" (
    p_idMiembro IN NUMBER
) RETURN VARCHAR2 IS
    v_count NUMBER;
BEGIN
    -- Un miembro tiene deuda si en su historial hay registros
    -- inactivos con motivo 'deudas'
    SELECT COUNT(*)
    INTO   v_count
    FROM   JPS_HISTORICO_MEMBRESIA
    WHERE  idMiembro   = p_idMiembro
      AND  estatus     = 'inactivo'
      AND  motivo_deuda = 'deudas';

    IF v_count > 0 THEN RETURN 'S';
    ELSE RETURN 'N';
    END IF;
END JPS_FN_TIENE_DEUDA;

/
--------------------------------------------------------
--  DDL for Function JPS_FN_TIPO_MIEMBRO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "JUAN123"."JPS_FN_TIPO_MIEMBRO" (
    p_fecha_nac IN DATE
) RETURN VARCHAR2 IS
    v_edad NUMBER;
BEGIN
    v_edad := TRUNC(MONTHS_BETWEEN(SYSDATE, p_fecha_nac) / 12);
    IF    v_edad > 25            THEN RETURN 'adulto';
    ELSIF v_edad >= 13           THEN RETURN 'joven';
    ELSIF v_edad BETWEEN 6 AND 12 THEN RETURN 'niño';
    ELSE  RETURN 'NO_ELEGIBLE';
    END IF;
END JPS_FN_TIPO_MIEMBRO;

/
--------------------------------------------------------
--  Constraints for Table JPS_CLUB_LECTURA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("IDCIUDAD" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("CALLE_AV" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" MODIFY ("CODIGO_POSTAL" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" ADD CONSTRAINT "CHECK_JPS_CUOTA" CHECK (cuota_membresia IN ('si','no')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" ADD PRIMARY KEY ("IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_ELENCO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_ELENCO" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ELENCO" MODIFY ("IDOBRA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ELENCO" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ELENCO" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ELENCO" ADD CONSTRAINT "PK_JPS_ELENCO" PRIMARY KEY ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_PAIS
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_PAIS" MODIFY ("IDPAIS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PAIS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PAIS" MODIFY ("CONTINENTE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PAIS" MODIFY ("MONEDA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PAIS" MODIFY ("NACIONALIDAD" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PAIS" ADD PRIMARY KEY ("IDPAIS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_AUTOR
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_AUTOR" MODIFY ("IDAUTOR" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_AUTOR" ADD PRIMARY KEY ("IDAUTOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_INSTITUCION
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_INSTITUCION" MODIFY ("IDINSTITUCION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INSTITUCION" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INSTITUCION" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INSTITUCION" ADD CONSTRAINT "CHECK_JPS_TIPO_INST" CHECK (tipo IN ('biblioteca','universidad','colegio','otro')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_INSTITUCION" ADD PRIMARY KEY ("IDINSTITUCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_L_A
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_L_A" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_L_A" MODIFY ("IDAUTOR" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_L_A" ADD CONSTRAINT "PK_JPS_L_A" PRIMARY KEY ("ISBN", "IDAUTOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_PRESENTACION
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("FECHA_PRESENTACION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("IDOBRA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("CANTIDAD_ASISTENTES" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" MODIFY ("VALORACION_OBRA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" ADD CONSTRAINT "CHECK_JPS_VALORACION_OBRA" CHECK (valoracion_obra IN ('1','2','3','4','5')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_PRESENTACION" ADD CONSTRAINT "PK_JPS_PRESENTACION" PRIMARY KEY ("FECHA_PRESENTACION", "IDOBRA", "ISBN", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_IDIOMA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_IDIOMA" MODIFY ("IDIDIOMA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_IDIOMA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_IDIOMA" ADD PRIMARY KEY ("IDIDIOMA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_OBRA_ACTUADA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" MODIFY ("IDOBRA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" ADD CONSTRAINT "CHECK_JPS_ACTIVO" CHECK (activo IN ('si','no')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" ADD CONSTRAINT "PK_JPS_OBRA_ACTUADA" PRIMARY KEY ("IDOBRA", "ISBN", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_REPRESENTANTE
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" MODIFY ("IDREPRESENTANTE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" MODIFY ("DOC_IDENTIDAD" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" MODIFY ("PRIMER_NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" MODIFY ("PRIMER_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" MODIFY ("SEGUNDO_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_REPRESENTANTE" ADD PRIMARY KEY ("IDREPRESENTANTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_MEMBRESIA_PAGO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" MODIFY ("IDPAGO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" MODIFY ("FECHA_PAGO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" ADD CONSTRAINT "PK_JPS_PAGO" PRIMARY KEY ("IDPAGO", "FECHA_INICIO", "IDMIEMBRO", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_MEJOR_ACTOR
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" MODIFY ("IDOBRA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" MODIFY ("FECHA_PRESENTACION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" ADD CONSTRAINT "PK_JPS_MEJOR_ACTOR" PRIMARY KEY ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB", "FECHA_PRESENTACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_GRUPO_LECTURA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("IDGRUPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("FECHA_CREACION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("DIA_REUNION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" MODIFY ("HORA_I" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" ADD CONSTRAINT "CHECK_JPS_TIPO_GRUPO" CHECK (tipo IN ('adulto','joven','niño')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" ADD CONSTRAINT "PK_JPS_GRUPO_LECTURA" PRIMARY KEY ("IDGRUPO", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_CALENDARIO_MES_REUNION
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("IDGRUPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" MODIFY ("REALIZADA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "CHECK_JPS_REALIZADA" CHECK (realizada IN ('si','no')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "CHECK_JPS_VALORACION" CHECK (valoracion_final BETWEEN 1 AND 5) ENABLE;
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "PK_JPS_CALENDARIO" PRIMARY KEY ("FECHA", "IDGRUPO", "IDCLUB", "ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_CIUDAD
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CIUDAD" MODIFY ("IDCIUDAD" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CIUDAD" MODIFY ("IDPAIS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CIUDAD" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_CIUDAD" ADD PRIMARY KEY ("IDCIUDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_INASISTENCIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("IDGRUPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" ADD CONSTRAINT "PK_JPS_INASISTENCIA" PRIMARY KEY ("FECHA", "IDGRUPO", "IDCLUB", "ISBN", "FECHA_INICIO", "IDMIEMBRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_MIEMBRO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("IDPAIS_NACIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("DOC_IDENTIDAD" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("PRIMER_NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("PRIMER_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("SEGUNDO_APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("FECHA_NACIMIENTO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" ADD PRIMARY KEY ("IDMIEMBRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_PREFERENCIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" MODIFY ("ORDEN_PREFERENCIA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" ADD CONSTRAINT "PK_JPS_PREFERENCIA" PRIMARY KEY ("IDMIEMBRO", "ISBN", "ORDEN_PREFERENCIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_ASOCIADO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_ASOCIADO" MODIFY ("IDCLUB1" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ASOCIADO" MODIFY ("IDCLUB2" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_ASOCIADO" ADD CONSTRAINT "PK_JPS_CLUB_ASOCIADO" PRIMARY KEY ("IDCLUB1", "IDCLUB2")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_LIBRO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("TITULO_ORIGINAL" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("ANIO_PUBLICACION_1ERA_EDICION" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("SINOPSIS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("CANTIDAD_PAGINAS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("TIPO_NARRATIVA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" MODIFY ("RESUMEN_TEMA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_LIBRO" ADD CONSTRAINT "CHECK_JPS_NARRATIVA" CHECK (tipo_narrativa IN ('novela','cuento','leyenda','fabula','epopeya','mito')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_LIBRO" ADD PRIMARY KEY ("ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_I_M
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_I_M" MODIFY ("IDI_M" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_I_M" MODIFY ("IDIDIOMA" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_I_M" ADD CONSTRAINT "CHECK_JPS_IM_ARCO" CHECK (
        (idMiembro IS NOT NULL AND idClub IS NULL) OR
        (idMiembro IS NULL AND idClub IS NOT NULL)
    ) ENABLE;
  ALTER TABLE "JUAN123"."JPS_I_M" ADD CONSTRAINT "PK_JPS_I_M" PRIMARY KEY ("IDI_M", "IDIDIOMA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_HISTORICO_MEMBRESIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" MODIFY ("ESTATUS" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" ADD CONSTRAINT "CHECK_JPS_ESTATUS" CHECK (estatus IN ('activo','inactivo')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" ADD CONSTRAINT "CHECK_JPS_MOTIVO" CHECK (motivo_deuda IN ('voluntario','deudas','Inasistencia','otro')) ENABLE;
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" ADD CONSTRAINT "PK_JPS_HISTORICO" PRIMARY KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JPS_G_LC
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_G_LC" MODIFY ("FECHA_INICIO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_G_LC" MODIFY ("IDMIEMBRO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_G_LC" MODIFY ("IDCLUB" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_G_LC" MODIFY ("IDGRUPO" NOT NULL ENABLE);
  ALTER TABLE "JUAN123"."JPS_G_LC" ADD CONSTRAINT "PK_JPS_G_LC" PRIMARY KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_ASOCIADO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_ASOCIADO" ADD CONSTRAINT "FK_JPS_ASOC_CLUB1" FOREIGN KEY ("IDCLUB1")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
  ALTER TABLE "JUAN123"."JPS_ASOCIADO" ADD CONSTRAINT "FK_JPS_ASOC_CLUB2" FOREIGN KEY ("IDCLUB2")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_CALENDARIO_MES_REUNION
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "FK_JPS_CAL_GRUPO" FOREIGN KEY ("IDGRUPO", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_GRUPO_LECTURA" ("IDGRUPO", "IDCLUB") ENABLE;
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "FK_JPS_CAL_LIBRO" FOREIGN KEY ("ISBN")
	  REFERENCES "JUAN123"."JPS_LIBRO" ("ISBN") ENABLE;
  ALTER TABLE "JUAN123"."JPS_CALENDARIO_MES_REUNION" ADD CONSTRAINT "FK_JPS_CAL_GLC" FOREIGN KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO")
	  REFERENCES "JUAN123"."JPS_G_LC" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_CIUDAD
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CIUDAD" ADD CONSTRAINT "FK_JPS_CIUDAD_PAIS" FOREIGN KEY ("IDPAIS")
	  REFERENCES "JUAN123"."JPS_PAIS" ("IDPAIS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_CLUB_LECTURA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" ADD CONSTRAINT "FK_JPS_CLUB_CIUDAD" FOREIGN KEY ("IDCIUDAD")
	  REFERENCES "JUAN123"."JPS_CIUDAD" ("IDCIUDAD") ENABLE;
  ALTER TABLE "JUAN123"."JPS_CLUB_LECTURA" ADD CONSTRAINT "FK_JPS_CLUB_INSTITUCION" FOREIGN KEY ("IDINSTITUCION")
	  REFERENCES "JUAN123"."JPS_INSTITUCION" ("IDINSTITUCION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_ELENCO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_ELENCO" ADD CONSTRAINT "FK_JPS_ELENCO_MIEMBRO" FOREIGN KEY ("IDMIEMBRO")
	  REFERENCES "JUAN123"."JPS_MIEMBRO" ("IDMIEMBRO") ENABLE;
  ALTER TABLE "JUAN123"."JPS_ELENCO" ADD CONSTRAINT "FK_JPS_ELENCO_OBRA" FOREIGN KEY ("IDOBRA", "ISBN", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_OBRA_ACTUADA" ("IDOBRA", "ISBN", "IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_G_LC
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_G_LC" ADD CONSTRAINT "FK_JPS_GLC_HM" FOREIGN KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_HISTORICO_MEMBRESIA" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB") ENABLE;
  ALTER TABLE "JUAN123"."JPS_G_LC" ADD CONSTRAINT "FK_JPS_GLC_GRUPO" FOREIGN KEY ("IDGRUPO", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_GRUPO_LECTURA" ("IDGRUPO", "IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_GRUPO_LECTURA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_GRUPO_LECTURA" ADD CONSTRAINT "FK_JPS_GRUPO_CLUB" FOREIGN KEY ("IDCLUB")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_HISTORICO_MEMBRESIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" ADD CONSTRAINT "FK_JPS_HM_MIEMBRO" FOREIGN KEY ("IDMIEMBRO")
	  REFERENCES "JUAN123"."JPS_MIEMBRO" ("IDMIEMBRO") ENABLE;
  ALTER TABLE "JUAN123"."JPS_HISTORICO_MEMBRESIA" ADD CONSTRAINT "FK_JPS_HM_CLUB" FOREIGN KEY ("IDCLUB")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_I_M
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_I_M" ADD CONSTRAINT "FK_JPS_IM_IDIOMA" FOREIGN KEY ("IDIDIOMA")
	  REFERENCES "JUAN123"."JPS_IDIOMA" ("IDIDIOMA") ENABLE;
  ALTER TABLE "JUAN123"."JPS_I_M" ADD CONSTRAINT "FK_JPS_IM_MIEMBRO" FOREIGN KEY ("IDMIEMBRO")
	  REFERENCES "JUAN123"."JPS_MIEMBRO" ("IDMIEMBRO") ENABLE;
  ALTER TABLE "JUAN123"."JPS_I_M" ADD CONSTRAINT "FK_JPS_IM_CLUB" FOREIGN KEY ("IDCLUB")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_INASISTENCIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" ADD CONSTRAINT "FK_JPS_INAS_CALENDARIO" FOREIGN KEY ("FECHA", "IDGRUPO", "IDCLUB", "ISBN")
	  REFERENCES "JUAN123"."JPS_CALENDARIO_MES_REUNION" ("FECHA", "IDGRUPO", "IDCLUB", "ISBN") ENABLE;
  ALTER TABLE "JUAN123"."JPS_INASISTENCIA" ADD CONSTRAINT "FK_JPS_INAS_GLC" FOREIGN KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO")
	  REFERENCES "JUAN123"."JPS_G_LC" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB", "IDGRUPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_L_A
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_L_A" ADD CONSTRAINT "FK_JPS_LA_LIBRO" FOREIGN KEY ("ISBN")
	  REFERENCES "JUAN123"."JPS_LIBRO" ("ISBN") ENABLE;
  ALTER TABLE "JUAN123"."JPS_L_A" ADD CONSTRAINT "FK_JPS_LA_AUTOR" FOREIGN KEY ("IDAUTOR")
	  REFERENCES "JUAN123"."JPS_AUTOR" ("IDAUTOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_MEJOR_ACTOR
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" ADD CONSTRAINT "FK_JPS_MA_ELENCO" FOREIGN KEY ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_ELENCO" ("IDMIEMBRO", "IDOBRA", "ISBN", "IDCLUB") ENABLE;
  ALTER TABLE "JUAN123"."JPS_MEJOR_ACTOR" ADD CONSTRAINT "FK_JPS_MA_PRESENTACION" FOREIGN KEY ("FECHA_PRESENTACION", "IDOBRA", "ISBN", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_PRESENTACION" ("FECHA_PRESENTACION", "IDOBRA", "ISBN", "IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_MEMBRESIA_PAGO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MEMBRESIA_PAGO" ADD CONSTRAINT "FK_JPS_PAGO_HM" FOREIGN KEY ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_HISTORICO_MEMBRESIA" ("FECHA_INICIO", "IDMIEMBRO", "IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_MIEMBRO
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_MIEMBRO" ADD CONSTRAINT "FK_JPS_MIEMBRO_PAIS" FOREIGN KEY ("IDPAIS_NACIO")
	  REFERENCES "JUAN123"."JPS_PAIS" ("IDPAIS") ENABLE;
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" ADD CONSTRAINT "FK_JPS_MIEMBRO_REP" FOREIGN KEY ("IDREPRESENTANTE")
	  REFERENCES "JUAN123"."JPS_REPRESENTANTE" ("IDREPRESENTANTE") ENABLE;
  ALTER TABLE "JUAN123"."JPS_MIEMBRO" ADD CONSTRAINT "FK_JPS_MIEMBRO_REPR" FOREIGN KEY ("IDMIEMBRO_REPRESENTADO")
	  REFERENCES "JUAN123"."JPS_MIEMBRO" ("IDMIEMBRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_OBRA_ACTUADA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" ADD CONSTRAINT "FK_JPS_OBRA_LIBRO" FOREIGN KEY ("ISBN")
	  REFERENCES "JUAN123"."JPS_LIBRO" ("ISBN") ENABLE;
  ALTER TABLE "JUAN123"."JPS_OBRA_ACTUADA" ADD CONSTRAINT "FK_JPS_OBRA_CLUB" FOREIGN KEY ("IDCLUB")
	  REFERENCES "JUAN123"."JPS_CLUB_LECTURA" ("IDCLUB") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_PREFERENCIA
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" ADD CONSTRAINT "FK_JPS_PREF_MIEMBRO" FOREIGN KEY ("IDMIEMBRO")
	  REFERENCES "JUAN123"."JPS_MIEMBRO" ("IDMIEMBRO") ENABLE;
  ALTER TABLE "JUAN123"."JPS_PREFERENCIA" ADD CONSTRAINT "FK_JPS_PREF_LIBRO" FOREIGN KEY ("ISBN")
	  REFERENCES "JUAN123"."JPS_LIBRO" ("ISBN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JPS_PRESENTACION
--------------------------------------------------------

  ALTER TABLE "JUAN123"."JPS_PRESENTACION" ADD CONSTRAINT "FK_JPS_PRES_OBRA" FOREIGN KEY ("IDOBRA", "ISBN", "IDCLUB")
	  REFERENCES "JUAN123"."JPS_OBRA_ACTUADA" ("IDOBRA", "ISBN", "IDCLUB") ENABLE;
