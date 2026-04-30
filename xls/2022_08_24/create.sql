CREATE TABLE t_obmedzenie_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obmedzenie_prm_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_obmedzenie_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_miesto_stretnutia_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  miesto_stretnutia_prm_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_miesto_stretnutia_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_palubne_zariadenia_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  palubne_zariadenia_prm_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_palubne_zariadenia_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_zariadenia_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_zariadenia_prm_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_typ_zariadenia_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_lokalne_zariadenia_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  lokalne_zariadenia_prm_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_lokalne_zariadenia_prm_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_obmedzenie_prm ADD CONSTRAINT t_obmedzenie_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_miesto_stretnutia_prm ADD CONSTRAINT t_miesto_stretnutia_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_palubne_zariadenia_prm ADD CONSTRAINT t_palubne_zariadenia_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_typ_zariadenia_prm ADD CONSTRAINT t_typ_zariadenia_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_lokalne_zariadenia_prm ADD CONSTRAINT t_lokalne_zariadenia_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );


CREATE SEQUENCE t_obmedzenie_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_miesto_stretnutia_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_palubne_zariadenia_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_typ_zariadenia_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_lokalne_zariadenia_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
