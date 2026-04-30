CREATE TABLE t_sviatok (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sviatok_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  datum TIMESTAMP(6),
  pracovny_pokoj NVARCHAR2(1),
  opakovat NVARCHAR2(1),
  opakovat_do TIMESTAMP(6),
  CONSTRAINT t_sviatok_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_sviatok ADD CONSTRAINT t_sviatok_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_sviatok_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;

CREATE OR REPLACE TRIGGER insert_pk_t_sviatok_hist_id BEFORE
  INSERT ON t_sviatok
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_sviatok_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/