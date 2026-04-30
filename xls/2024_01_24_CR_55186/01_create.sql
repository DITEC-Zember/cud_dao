CREATE TABLE t_dopravca_mk (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravca_mk_id NUMBER(10) NOT NULL,
  externy NVARCHAR2(1),
  cislo_mk NVARCHAR2(6),
  cislo_rics NVARCHAR2(4),
  interna_skratka NVARCHAR2(30),
  skratka_rics NVARCHAR2(20),
  id_krajina_reg NUMBER(10),
  nazov NVARCHAR2(99),
  id_typ_spoloc NUMBER(10),
  cislo_zmluvy NVARCHAR2(7),
  dodatok_zmluvy NVARCHAR2(5),
  uzatvorenie_zmluvy TIMESTAMP(6),
  ucinnost_zmluvy TIMESTAMP(6),
  cislo_licencie NVARCHAR2(50),
  osvedcenie NVARCHAR2(20),
  osvedcenie_nove NVARCHAR2(20),
  platnost_osvedcenia NVARCHAR2(20),
  cislo_zmluvy_ds NVARCHAR2(7),
  uzatvorenie_zmluvy_ds TIMESTAMP(6),
  ucinnost_zmluvy_ds TIMESTAMP(6),
  platnost_zmluvy_ds TIMESTAMP(6),
  cislo_zakazky_co NVARCHAR2(12),
  cislo_zakazky_sd NVARCHAR2(9),
  ico NVARCHAR2(16),
  ulica NVARCHAR2(99),
  psc NVARCHAR2(10),
  mesto NVARCHAR2(99),
  webstranka NVARCHAR2(99),
  id_krajina NUMBER(10),
  email NVARCHAR2(99),
  dodatkova_trasa NVARCHAR2(1),
  katalog NVARCHAR2(1),
  od NVARCHAR2(1),
  nd NVARCHAR2(1),
  testovaci NVARCHAR2(1),
  CONSTRAINT t_dopravca_mk_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_dopravca_mk ADD CONSTRAINT t_dopravca_mk_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_dopravca_mk_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;

CREATE OR REPLACE TRIGGER insert_pk_t_dopravca_mk_hist_id BEFORE
  INSERT ON t_dopravca_mk
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dopravca_mk_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
