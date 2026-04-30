CREATE TABLE t_typ_obmedzenia_miesto (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_obmedzenia_miesto_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  skratka NVARCHAR2(20),
  popis NVARCHAR2(255),
  prefix NVARCHAR2(1),
  CONSTRAINT t_typ_obmedzenia_miesto_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_obmedzenia_doprava (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_obmedzenia_doprava_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  skratka NVARCHAR2(20),
  popis NVARCHAR2(255),
  CONSTRAINT t_typ_obmedzenia_doprava_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_typ_obmedzenia_miesto ADD CONSTRAINT t_typ_obmedzenia_miesto_fk_1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_typ_obmedzenia_doprava ADD CONSTRAINT t_typ_obmedzenia_doprava_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_typ_obmedzenia_miesto_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_typ_obmedzenia_doprava_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;

CREATE OR REPLACE TRIGGER insert_pk_t_typ_obmedzenia_miesto_id BEFORE
  INSERT ON t_typ_obmedzenia_miesto
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_obmedzenia_miesto_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/


CREATE OR REPLACE TRIGGER insert_pk_t_typ_obmedzenia_doprava_id BEFORE
  INSERT ON t_typ_obmedzenia_doprava
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_obmedzenia_doprava_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
