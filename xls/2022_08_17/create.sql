CREATE TABLE t_zakladne_informacie_o_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  zakladne_informacie_o_prm_id NUMBER(10) NOT NULL,
  kluc_nehnutelnosti NVARCHAR2(21),
  gps_sirka NUMBER(17, 15),
  gps_dlzka NUMBER(17, 15),
  referencny_bod_stanice NVARCHAR2(38),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_zakladne_informacie_o_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_nastupiste_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  nastupiste_prm_id NUMBER(10) NOT NULL,
  nastupiste_cislo NVARCHAR2(35),
  prisup_bez_schod_z_refer NVARCHAR2(35),
  hmatova_cesta_z_refer NVARCHAR2(35),
  kontrastne_schody_z_refer NVARCHAR2(35),
  zvyraznenie_prekazok_z_refer NVARCHAR2(35),
  podlahove_indikatory_nastup NVARCHAR2(35),
  bariery_na_kontrolu_cl_nastupistia NVARCHAR2(35),
  bariery_na_kontrolu_cl_vozik NVARCHAR2(35),
  dopln_inf_o_pristupnosti NVARCHAR2(600),
  urovnovy_pristup_vozik NVARCHAR2(35),
  pomocne_zar_nastup_vystup NVARCHAR2(35),
  dopln_inf_o_pristupnosti_pom_zar NVARCHAR2(600),
  pomoc_pri_pristupe NVARCHAR2(35),
  podmienky_pomoci NVARCHAR2(600),
  pomoc_bez_oznamenia NVARCHAR2(35),
  moznost_nad_zssk NVARCHAR2(35),
  podmienky_nad_zssk NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_nastupiste_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_oznacenia_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  oznacenia_prm_id NUMBER(10) NOT NULL,
  vizualne_oznacenia_uroven_oci NVARCHAR2(35),
  vizualne_oznacenia NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_oznacenia_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dynamicke_informacie_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dynamicke_informacie_prm_id NUMBER(10) NOT NULL,
  dynamicky_vizualny_is NVARCHAR2(35),
  dynamicky_hlasovy_is NVARCHAR2(35),
  dialkovo_ovladane_zvuk_zar NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_dynamicke_informacie_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_info_pulty_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  info_pulty_prm_id NUMBER(10) NOT NULL,
  cislo_infopultu NVARCHAR2(3),
  pristup_invalid NVARCHAR2(35),
  system_indukcnej_slucky NVARCHAR2(35),
  bez_schodov_z_refer NVARCHAR2(35),
  konzist_hmat_cesta NVARCHAR2(35),
  schody_s_hmad_indik NVARCHAR2(35),
  zvyraznenie_prekazok_z_refer NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_info_pulty_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pcl_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pcl_prm_id NUMBER(10) NOT NULL,
  cislo_pcl NVARCHAR2(3),
  pult_predaja_invalid NVARCHAR2(35),
  pult_predaja_indukcnej NVARCHAR2(35),
  bez_schodov_z_refer NVARCHAR2(35),
  konzist_hmat_cesta NVARCHAR2(35),
  schody_s_hmad_indik NVARCHAR2(35),
  zvyraznenie_prekazok_z_refer NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_pcl_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pcl_zskk (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pcl_zskk_id NUMBER(10) NOT NULL,
  cislo_pcl NVARCHAR2(3),
  predaj_personalom NVARCHAR2(35),
  automat NVARCHAR2(35),
  automat_invalid NVARCHAR2(35),
  automat_audio_hmat NVARCHAR2(35),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_pcl_zskk_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_toalety_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  toalety_prm_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(20),
  invalid_vozik NVARCHAR2(35),
  bez_schodov_z_refer NVARCHAR2(35),
  konzist_hmat_cesta NVARCHAR2(35),
  kontrastne_schody_z_refer NVARCHAR2(35),
  zvyraznenie_prekazok_z_refer NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  euro_kluc NVARCHAR2(35),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_toalety_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_parkovisko_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  parkovisko_prm_id NUMBER(10) NOT NULL,
  cislo_parkoviska NVARCHAR2(4),
  parkovacie_miesta NUMBER(4),
  parkovacie_miesta_prm NVARCHAR2(35),
  parkovacie_miesta_prm_pocet NUMBER(4),
  prisup_bez_schod_z_refer NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_parkovisko_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_ine_dp_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  ine_dp_prm_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(50),
  prisup_bez_schod_z_refer NVARCHAR2(35),
  hmatova_cesta_z_refer NVARCHAR2(35),
  kontrastne_schody_z_refer NVARCHAR2(35),
  zvyraznenie_prekazok_z_refer NVARCHAR2(35),
  dopln_info NVARCHAR2(600),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_ine_dp_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_otvaracie_hodiny_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  otvaracie_hodiny_prm_id NUMBER(10) NOT NULL,
  pondelok NVARCHAR2(255),
  utorok NVARCHAR2(255),
  streda NVARCHAR2(255),
  stvrtok NVARCHAR2(255),
  piatok NVARCHAR2(255),
  sobota NVARCHAR2(255),
  nedela NVARCHAR2(255),
  web NVARCHAR2(255),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_otvaracie_hodiny_prm_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_otvaracie_hodiny_rj_prm (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  otvaracie_hodiny_rj_prm_id NUMBER(10) NOT NULL,
  pondelok NVARCHAR2(255),
  utorok NVARCHAR2(255),
  streda NVARCHAR2(255),
  stvrtok NVARCHAR2(255),
  piatok NVARCHAR2(255),
  sobota NVARCHAR2(255),
  nedela NVARCHAR2(255),
  web NVARCHAR2(255),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_otvaracie_hodiny_rj_prm_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE t_zakladne_informacie_o_prm ADD CONSTRAINT t_zakladne_informacie_o_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_nastupiste_prm ADD CONSTRAINT t_nastupiste_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_oznacenia_prm ADD CONSTRAINT t_oznacenia_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_dynamicke_informacie_prm ADD CONSTRAINT t_dynamicke_informacie_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_info_pulty_prm ADD CONSTRAINT t_info_pulty_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_pcl_prm ADD CONSTRAINT t_pcl_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_pcl_zskk ADD CONSTRAINT t_pcl_zskk_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_toalety_prm ADD CONSTRAINT t_toalety_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_parkovisko_prm ADD CONSTRAINT t_parkovisko_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_ine_dp_prm ADD CONSTRAINT t_ine_dp_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_otvaracie_hodiny_prm ADD CONSTRAINT t_otvaracie_hodiny_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );
ALTER TABLE t_otvaracie_hodiny_rj_prm ADD CONSTRAINT t_otvaracie_hodiny_rj_prm_fk1 FOREIGN KEY ( id_zmena ) REFERENCES cud_zmena ( zmena_id );

CREATE SEQUENCE t_zakladne_informacie_o_prm_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_nastupiste_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_oznacenia_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_dynamicke_informacie_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_info_pulty_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_pcl_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_pcl_zskk_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_toalety_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_parkovisko_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_ine_dp_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_otvaracie_hodiny_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_otvaracie_hodiny_rj_prm_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
