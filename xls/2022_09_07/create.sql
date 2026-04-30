CREATE TABLE t_spriazneny_rad (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  spriazneny_rad_id NUMBER(10) NOT NULL,
  id_rad_hdv NUMBER(10),
  rad NVARCHAR2(20),
  tsi_cislo_radu NVARCHAR2(11),
  poznamka NVARCHAR2(2000),
  CONSTRAINT t_spriazneny_rad_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_spriazneny_rad ADD CONSTRAINT t_spriazneny_rad_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_spriazneny_rad_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
