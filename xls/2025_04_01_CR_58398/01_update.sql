
ALTER TABLE t_definicny_usek ADD mhk NUMBER(8, 3);

CREATE TABLE t_dovod_vyl (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_vyl_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_dovod_vyl_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_dovod_vyl ADD CONSTRAINT t_dovod_vyl_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_dovod_vyl_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;

CREATE OR REPLACE TRIGGER insert_pk_t_dovod_vyl_hist_id BEFORE
  INSERT ON t_dovod_vyl
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dovod_vyl_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/




-- !!!! schema IP !!!!