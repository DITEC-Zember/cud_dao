CREATE TABLE t_rad_hdv_tab_hmotnosti (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10),
  rad_hdv_tab_hmotnosti_id NUMBER(10) NOT NULL,
  nazov_suboru VARCHAR2(50 BYTE) NOT NULL,
  subor BLOB NOT NULL,
  CONSTRAINT t_rad_hdv_tab_hmotnosti_pk PRIMARY KEY ( hist_id )
);

ALTER TABLE t_rad_hdv_tab_hmotnosti ADD CONSTRAINT t_rad_hdv_tab_hmotnosti_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_rad_hdv_tab_hmotnosti_hk_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_rad_hdv_tab_hmotnosti_pk_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
-- CREATE SEQUENCE t_rad_hdv_tab_hmotnosti_pk_seq INCREMENT BY 1 START WITH 22 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
