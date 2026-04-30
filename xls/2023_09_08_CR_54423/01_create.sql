CREATE TABLE t_kategoria_trate_tsi (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kategoria_trate_tsi_id NUMBER(10) NOT NULL,
  id_druh_dopravy NUMBER(10),
  dopravny_kod NVARCHAR2(10),
  id_obrys_priechodnosti_uic NUMBER(10),
  hmotnost_na_napravu NUMBER(4, 1),
  tratova_rychlost_od NUMBER(3),
  tratova_rychlost_do NUMBER(3),
  dlzka_vlaku_od NUMBER(4),
  dlzka_vlaku_do NUMBER(4),
  CONSTRAINT t_kategoria_trate_tsi_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_kategoria_trate_tsi ADD CONSTRAINT t_kategoria_trate_tsi_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_kategoria_trate_tsi_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;

CREATE OR REPLACE TRIGGER insert_pk_t_kategoria_trate_tsi_hist_id BEFORE
  INSERT ON t_kategoria_trate_tsi
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_kategoria_trate_tsi_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/