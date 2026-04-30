CREATE TABLE t_produkt (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  produkt_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  skratka NVARCHAR2(2),
  popis NVARCHAR2(150),
  CONSTRAINT t_produkt_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_produkt_factor (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  produkt_factor_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  popis NVARCHAR2(255),
  CONSTRAINT t_produkt_factor_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_neskon_kapacita (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  neskon_kapacita_id NUMBER(10) NOT NULL,
  kod NUMBER(2),
  vyznam NVARCHAR2(100),
  popis NVARCHAR2(500),
  spoplatnena NVARCHAR2(1),
  CONSTRAINT t_neskon_kapacita_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_run_resistence (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_run_resistence_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(5),
  popis NVARCHAR2(400),
  CONSTRAINT t_cp_run_resistence_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_sluzby (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_sluzby_id NUMBER(10) NOT NULL,
  kod NUMBER(8),
  skratka NVARCHAR2(5),
  popis NVARCHAR2(70),
  platiusek NVARCHAR2(1),
  CONSTRAINT t_cp_sluzby_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_objednavatel (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_objednavatel_id NUMBER(10) NOT NULL,
  kod NUMBER(8),
  skratka NVARCHAR2(30),
  nazov NVARCHAR2(50),
  CONSTRAINT t_cp_objednavatel_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_ids (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_ids_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  skratka NVARCHAR2(20),
  nazov NVARCHAR2(150),
  poznamka NVARCHAR2(150),
  CONSTRAINT t_cp_ids_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_linky (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_linky_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  skratka NVARCHAR2(20),
  symbol NVARCHAR2(10),
  znacka NVARCHAR2(20),
  nazov NVARCHAR2(150),
  CONSTRAINT t_cp_linky_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_info_v_hlavicke_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_info_v_hlavicke_vlaku_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(50),
  CONSTRAINT t_cp_info_v_hlavicke_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_info_pod_tabulou (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_info_pod_tabulou_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  nazov NVARCHAR2(50),
  CONSTRAINT t_cp_info_pod_tabulou_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_cp_centralne_poznamky (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  cp_centralne_poznamky_id NUMBER(10) NOT NULL,
  kod NUMBER(4),
  kod_fontu NVARCHAR2(30),
  znacka NVARCHAR2(30),
  priorita NUMBER(4),
  id_cp_info_v_hlavicke_vlaku NUMBER(10),
  id_cp_info_pod_tabulou NUMBER(10),
  text_sk NVARCHAR2(255),
  text_en NVARCHAR2(255),
  text_de NVARCHAR2(255),
  text_pl NVARCHAR2(255),
  obmedzenie NVARCHAR2(1),
  vysvetlenie NVARCHAR2(1),
  CONSTRAINT t_cp_centralne_poznamky_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_traffic_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  traffic_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  skratka NVARCHAR2(5),
  popis NVARCHAR2(100),
  CONSTRAINT t_traffic_type_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_produkt ADD CONSTRAINT t_produkt_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_produkt_factor ADD CONSTRAINT t_produkt_factor_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_neskon_kapacita ADD CONSTRAINT t_neskon_kapacita_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_run_resistence ADD CONSTRAINT t_cp_run_resistence_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_sluzby ADD CONSTRAINT t_cp_sluzby_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_objednavatel ADD CONSTRAINT t_cp_objednavatel_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_ids ADD CONSTRAINT t_cp_ids_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_linky ADD CONSTRAINT t_cp_linky_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_info_v_hlavicke_vlaku ADD CONSTRAINT t_cp_info_v_hlavicke_vlaku_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_info_pod_tabulou ADD CONSTRAINT t_cp_info_pod_tabulou_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_cp_centralne_poznamky ADD CONSTRAINT t_cp_centralne_poznamky_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_traffic_type ADD CONSTRAINT t_traffic_type_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_produkt_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_produkt_factor_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_neskon_kapacita_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_run_resistence_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_sluzby_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_objednavatel_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_ids_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_linky_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_info_v_hlavicke_vlaku_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_info_pod_tabulou_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_cp_centralne_poznamky_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_traffic_type_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;