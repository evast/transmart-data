-- NOTE: not in i2b2 schema for i2b2demo data - version 1.7 - 02Dec2014 - Terry Weymouth

--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: CONCEPT_COUNTS
--
 CREATE TABLE "I2B2DEMODATA"."CONCEPT_COUNTS" 
  (	"CONCEPT_PATH" VARCHAR2(500 BYTE), 
"PARENT_CONCEPT_PATH" VARCHAR2(500 BYTE), 
"PATIENT_COUNT" NUMBER(38,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: CONCEPT_COUNTS_INDEX1
--
CREATE INDEX "I2B2DEMODATA"."CONCEPT_COUNTS_INDEX1" ON "I2B2DEMODATA"."CONCEPT_COUNTS" ("CONCEPT_PATH")
TABLESPACE "TRANSMART" ;

