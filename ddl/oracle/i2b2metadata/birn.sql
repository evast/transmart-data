--------------------------------------------------------
--  DDL for Table BIRN
--------------------------------------------------------

  CREATE TABLE "I2B2METADATA"."BIRN" 
   (	"C_HLEVEL" NUMBER(22,0), 
	"C_FULLNAME" VARCHAR2(700 BYTE), 
	"C_NAME" VARCHAR2(2000 BYTE), 
	"C_SYNONYM_CD" CHAR(1 BYTE), 
	"C_VISUALATTRIBUTES" CHAR(3 BYTE), 
	"C_TOTALNUM" NUMBER(22,0), 
	"C_BASECODE" VARCHAR2(50 BYTE), 
	"C_METADATAXML" CLOB, 
	"C_FACTTABLECOLUMN" VARCHAR2(50 BYTE), 
	"C_TABLENAME" VARCHAR2(50 BYTE), 
	"C_COLUMNNAME" VARCHAR2(50 BYTE), 
	"C_COLUMNDATATYPE" VARCHAR2(50 BYTE), 
	"C_OPERATOR" VARCHAR2(10 BYTE), 
	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"C_COMMENT" CLOB, 
	"C_TOOLTIP" VARCHAR2(900 BYTE), 
	"M_APPLIED_PATH" VARCHAR2(700 BYTE), 
	"UPDATE_DATE" DATE, 
	"DOWNLOAD_DATE" DATE, 
	"IMPORT_DATE" DATE, 
	"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
	"VALUETYPE_CD" VARCHAR2(50 BYTE), 
	"M_EXCLUSION_CD" VARCHAR2(25 BYTE), 
	"C_PATH" VARCHAR2(700 BYTE), 
	"C_SYMBOL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
TABLESPACE "TRANSMART" 
 LOB ("C_METADATAXML") STORE AS BASICFILE (
  TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) 
 LOB ("C_COMMENT") STORE AS BASICFILE (
  TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING );

ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("UPDATE_DATE" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("M_APPLIED_PATH" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_DIMCODE" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_OPERATOR" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_COLUMNDATATYPE" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_COLUMNNAME" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_TABLENAME" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_FACTTABLECOLUMN" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_VISUALATTRIBUTES" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_SYNONYM_CD" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_NAME" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_FULLNAME" NOT NULL ENABLE);
ALTER TABLE "I2B2METADATA"."BIRN" MODIFY ("C_HLEVEL" NOT NULL ENABLE);

CREATE INDEX "I2B2METADATA"."META_APPLIED_PATH_BIRN_IDX" ON "I2B2METADATA"."BIRN" ("M_APPLIED_PATH") 
  TABLESPACE "TRANSMART" ;
  
CREATE INDEX "I2B2METADATA"."META_FULLNAME_BIRN_IDX" ON "I2B2METADATA"."BIRN" ("C_FULLNAME") 
  TABLESPACE "TRANSMART" ;
  