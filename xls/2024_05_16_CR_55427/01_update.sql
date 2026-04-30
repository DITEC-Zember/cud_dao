CREATE TABLE t_piktogram (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  piktogram_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(100),
  popis NVARCHAR2(255),
  svg_piktogram CLOB,
  CONSTRAINT t_piktogram_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE T_PIKTOGRAM ADD CONSTRAINT T_PIKTOGRAM_FK1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE T_PIKTOGRAM_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;


CREATE OR REPLACE TRIGGER insert_pk_t_piktogram_hist_id BEFORE
  INSERT ON T_PIKTOGRAM
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_piktogram_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/




ALTER TABLE t_characteristic_descript_code ADD id_piktogram NUMBER(10);
ALTER TABLE t_commercial_service_code ADD id_piktogram NUMBER(10);
ALTER TABLE t_facility_type_descript_code ADD id_piktogram NUMBER(10);
ALTER TABLE t_information_to_be_displayed ADD id_piktogram NUMBER(10);
ALTER TABLE t_internal_vehicle_facility ADD id_piktogram NUMBER(10);
ALTER TABLE t_special_service_descr_code ADD id_piktogram NUMBER(10);
