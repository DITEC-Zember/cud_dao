CREATE TABLE t_typ_spoloc (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_spoloc_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(5),
  vyznam NVARCHAR2(200),
  CONSTRAINT t_typ_spoloc_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravca_typ_spoloc (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravca_typ_spoloc_id NUMBER(10) NOT NULL,
  id_dopravca NUMBER(10),
  id_typ_spoloc NUMBER(10),
  CONSTRAINT t_dopravca_typ_spoloc_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_typ_spoloc ADD CONSTRAINT t_typ_spoloc_fk_1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_dopravca_typ_spoloc ADD CONSTRAINT t_dopravca_typ_spoloc_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_typ_spoloc_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_dopravca_typ_spoloc_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;

CREATE OR REPLACE TRIGGER insert_pk_t_typ_spoloc_id BEFORE
  INSERT ON t_typ_spoloc
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_spoloc_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/


CREATE OR REPLACE TRIGGER insert_pk_t_dopravca_typ_spoloc_id BEFORE
  INSERT ON t_dopravca_typ_spoloc
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dopravca_typ_spoloc_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
