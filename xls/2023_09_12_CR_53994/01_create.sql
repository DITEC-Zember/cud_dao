ALTER TABLE t_train_activity_type ADD id_train_activity_typ_ukonu NUMBER(10);
ALTER TABLE t_train_activity_type ADD kopirovat_s_trasou NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD zakaz_odobratia_z_trasy NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD min_cas_pobytu NUMBER(7, 2);
ALTER TABLE t_train_activity_type ADD kopirovat_pri_odklone NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD pttcis NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD oslapne NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD kopirovat_pri_zmene_dopr_siete NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD kjr_priorita NUMBER(4);
ALTER TABLE t_train_activity_type ADD id_train_activity_kjr_hla_info NUMBER(10);
ALTER TABLE t_train_activity_type ADD id_train_activity_kjr_pod_tb_inf NUMBER(10);
ALTER TABLE t_train_activity_type ADD kjr_symbol NVARCHAR2(100);
ALTER TABLE t_train_activity_type ADD id_train_activity_trat_d3 NUMBER(10);
ALTER TABLE t_train_activity_type ADD id_train_activity_zmena_hv NUMBER(10);
ALTER TABLE t_train_activity_type ADD tlac_odchod_prichod NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD tlac_zoznamy NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD id_train_activity_dovod_zast NUMBER(10);
ALTER TABLE t_train_activity_type ADD tlac_cas_prich_odch NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD tlac_kalend_obmedzenie NVARCHAR2(1);
ALTER TABLE t_train_activity_type ADD vysvetlivky NVARCHAR2(255);
ALTER TABLE t_train_activity_type ADD komercny_ukon_nd NVARCHAR2(1);

CREATE TABLE t_train_activity_typ_ukonu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_typ_ukonu_id NUMBER(10) NOT NULL,
  kod NUMBER(2),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_typ_ukonu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_kjr_hla_info (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_kjr_hla_info_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_kjr_hla_info_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_kjr_pod_tb_inf (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_kjr_pod_tb_inf_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_kjr_pod_tb_inf_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_trat_d3 (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_trat_d3_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_trat_d3_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_zmena_hv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_zmena_hv_id NUMBER(10) NOT NULL,
  kod NUMBER(8),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_zmena_hv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_dovod_zast (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_dovod_zast_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(100),
  CONSTRAINT t_train_activity_dovod_zast_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_train_activity_typ_ukonu ADD CONSTRAINT t_train_activity_typ_ukonu_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_train_activity_kjr_hla_info ADD CONSTRAINT t_train_activity_kjr_hla_info_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_train_activity_kjr_pod_tb_inf ADD CONSTRAINT t_train_activity_kjr_pod_tb_inf_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_train_activity_trat_d3 ADD CONSTRAINT t_train_activity_trat_d3_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_train_activity_zmena_hv ADD CONSTRAINT t_train_activity_zmena_hv_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_train_activity_dovod_zast  ADD CONSTRAINT t_train_activity_dovod_zast_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );


CREATE SEQUENCE t_train_activity_typ_ukonu_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_train_activity_kjr_hla_info_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_train_activity_kjr_pod_tb_inf_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_train_activity_trat_d3_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_train_activity_zmena_hv_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_train_activity_dovod_zast_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;


CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_typ_ukonu_hist_id BEFORE
  INSERT ON t_train_activity_typ_ukonu
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_typ_ukonu_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_kjr_hla_info_hist_id BEFORE
  INSERT ON t_train_activity_kjr_hla_info
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_kjr_hla_info_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_kjr_pod_tb_inf_hist_id BEFORE
  INSERT ON t_train_activity_kjr_pod_tb_inf
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_kjr_pod_tb_inf_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_trat_d3_hist_id BEFORE
  INSERT ON t_train_activity_trat_d3
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_trat_d3_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_zmena_hv_hist_id BEFORE
  INSERT ON t_train_activity_zmena_hv
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_zmena_hv_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_dovod_zast_hist_id BEFORE
  INSERT ON t_train_activity_dovod_zast
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_dovod_zast_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
