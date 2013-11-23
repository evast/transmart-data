--
-- Type: TABLE; Owner: DEAPP; Name: DE_PATHWAY_GENE
--
 CREATE TABLE "DEAPP"."DE_PATHWAY_GENE" 
  (	"ID" NUMBER(18,0) NOT NULL ENABLE, 
"PATHWAY_ID" NUMBER(18,0), 
"GENE_SYMBOL" NVARCHAR2(200), 
"GENE_ID" NVARCHAR2(200), 
 CONSTRAINT "DE_PATHWAY_GENE_PK" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "DEAPP" ;

--
-- Type: INDEX; Owner: DEAPP; Name: DE_PATHWAY_GENE_INDEX1
--
CREATE INDEX "DEAPP"."DE_PATHWAY_GENE_INDEX1" ON "DEAPP"."DE_PATHWAY_GENE" ("PATHWAY_ID", "GENE_SYMBOL")
TABLESPACE "DEAPP" ;

--
-- Type: TRIGGER; Owner: DEAPP; Name: TRG_DE_PATHWAY_GENE_ID
--
  CREATE OR REPLACE TRIGGER "DEAPP"."TRG_DE_PATHWAY_GENE_ID" before insert on "DE_PATHWAY_GENE"    for each row
begin     if inserting then       if :NEW."ID" is null then          select SEQ_DATA_ID.nextval into :NEW."ID" from dual;       end if;    end if; end;



/
ALTER TRIGGER "DEAPP"."TRG_DE_PATHWAY_GENE_ID" ENABLE;
 
--
-- Type: INDEX; Owner: DEAPP; Name: IDX_PATHWAY_GENE_PATHWAY
--
CREATE INDEX "DEAPP"."IDX_PATHWAY_GENE_PATHWAY" ON "DEAPP"."DE_PATHWAY_GENE" ("PATHWAY_ID")
TABLESPACE "DEAPP" ;

--
-- Type: INDEX; Owner: DEAPP; Name: DE_PATHWAY_GENE_IDX4
--
CREATE INDEX "DEAPP"."DE_PATHWAY_GENE_IDX4" ON "DEAPP"."DE_PATHWAY_GENE" ("GENE_SYMBOL")
TABLESPACE "DEAPP" ;
