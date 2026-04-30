CREATE TABLE t_vymedzeny_usek_hkv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vymedzeny_usek_hkv_id NUMBER(10) NOT NULL,
  id_rad_hdv NUMBER(10),
  id_dopravny_usek NUMBER(10),
  CONSTRAINT t_vymedzeny_usek_hkv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vymedzeny_usek_ts (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vymedzeny_usek_ts_id NUMBER(10) NOT NULL,
  id_typ_tratoveho_stroja NUMBER(10),
  id_dopravny_usek NUMBER(10),
  CONSTRAINT t_vymedzeny_usek_ts_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_vymedzeny_usek_hkv ADD CONSTRAINT t_vymedzeny_usek_hkv_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_vymedzeny_usek_ts ADD CONSTRAINT t_vymedzeny_usek_ts_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_vymedzeny_usek_hkv_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_vymedzeny_usek_ts_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
