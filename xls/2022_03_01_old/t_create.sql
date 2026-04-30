CREATE TABLE t_typ_elektrickej_trakcie (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_elektrickej_trakcie_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(1),
  nazov NVARCHAR2(50),
  norma_uic NVARCHAR2(50),
  CONSTRAINT t_typ_elektrickej_trakcie_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_elektricka_trakcia (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  elektricka_trakcia_id NUMBER(10) NOT NULL,
  id_typ_elektrickej_trakcie NUMBER(10),
  nazov NVARCHAR2(50),
  CONSTRAINT t_elektricka_trakcia_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_rozchod_kolaji (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  rozchod_kolaji_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(2),
  nazov NVARCHAR2(50),
  mm NUMBER(4),
  popis NVARCHAR2(100),
  tvar_zapisu NVARCHAR2(10),
  CONSTRAINT t_rozchod_kolaji_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vlakovy_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vlakovy_usek_id NUMBER(10) NOT NULL,
  id_dopravny_nazov_od NUMBER(10),
  id_dopravny_nazov_do NUMBER(10),
  id_rozchod_kolaji NUMBER(10),
  id_typ_elektrickej_trakcie NUMBER(10),
  nadusek NVARCHAR2(1),
  cislo_parny_smer NVARCHAR2(4),
  cislo_neparny_smer NVARCHAR2(4),
  cez NVARCHAR2(200),
  km NUMBER(8, 3),
  kolajnost NUMBER(5),
  CONSTRAINT t_vlakovy_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_nazov (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_nazov_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  skratka_enee NVARCHAR2(17),
  CONSTRAINT t_dopravny_nazov_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_bod (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_bod_id NUMBER(10) NOT NULL,
  id_typ_dopravne NUMBER(10),
  id_dopravny_nazov NUMBER(10),
  id_dopravny_bod NUMBER(10),
  id_definicny_usek NUMBER(10),
  id_oblastne_riaditelstvo NUMBER(10),
  id_dopravny_nazov_zpps NUMBER(10),
  cislo NVARCHAR2(6),
  nazov NVARCHAR2(100),
  obsadenie NVARCHAR2(1),
  km_poloha_1 NUMBER(8, 3),
  pps NVARCHAR2(1),
  cestovne_poriadky NVARCHAR2(30),
  len_pre_is NVARCHAR2(1),
  km_poloha_2 NUMBER(8, 3),
  skratka_2 NVARCHAR2(2),
  skratka_4 NVARCHAR2(4),
  id_trat_1 NUMBER(10),
  id_trat_2 NUMBER(10),
  id_trat_3 NUMBER(10),
  id_trat_4 NUMBER(10),
  id_trat_5 NUMBER(10),
  km_poloha_3 NUMBER(8, 3),
  km_poloha_4 NUMBER(8, 3),
  km_poloha_5 NUMBER(8, 3),
  id_vyssi_uzemny_celok NUMBER(10),
  id_kategoria_db_od NUMBER(10),
  id_kategoria_db_nd NUMBER(10),
  gps_sirka NUMBER(10, 8),
  gps_dlzka NUMBER(10, 8),
  mapa_poloha_x NUMBER(5),
  mapa_poloha_y NUMBER(5),
  ttp NVARCHAR2(30),
  email NVARCHAR2(500),
  id_stav_dopravy NUMBER(10),
  id_obec NUMBER(10),
  mimo_obec NVARCHAR2(1),
  id_pristup_k_objektu NUMBER(10),
  id_stav_objektu_budova NUMBER(10),
  id_stav_objektu_cakaren NUMBER(10),
  pristresok NVARCHAR2(1),
  pristup_prm NVARCHAR2(1),
  obmedzenie_prm NVARCHAR2(700),
  pomoc_prm NVARCHAR2(200),
  pomoc_prm_min NUMBER(4),
  id_dopravny_bod_prm_1 NUMBER(10),
  id_dopravny_bod_prm_2 NUMBER(10),
  stanica_prm_poznamka NVARCHAR2(200),
  kontakt_prm NVARCHAR2(200),
  ina_draha NVARCHAR2(1),
  telefon_zts NVARCHAR2(32),
  telefon_vts NVARCHAR2(32),
  id_tratovy_usek_1 NUMBER(10),
  id_tratovy_usek_2 NUMBER(10),
  id_tratovy_usek_3 NUMBER(10),
  id_tratovy_usek_4 NUMBER(10),
  id_tratovy_usek_5 NUMBER(10),
  zeleznica_stanica NVARCHAR2(1),
  nastupiste NVARCHAR2(1),
  CONSTRAINT t_dopravny_bod_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_oblastne_riaditelstvo (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  oblastne_riaditelstvo_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(50),
  cislo NUMBER(2),
  CONSTRAINT t_oblastne_riaditelstvo_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pracovisko_or (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pracovisko_or_id NUMBER(10) NOT NULL,
  id_oblastne_riaditelstvo NUMBER(10),
  cislo NUMBER(2),
  nazov NVARCHAR2(50),
  CONSTRAINT t_pracovisko_or_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_hranicny_priechod (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  hranicny_priechod_id NUMBER(10) NOT NULL,
  id_dopravny_nazov NUMBER(10),
  cislo NVARCHAR2(3),
  zahranicna_pps NVARCHAR2(99),
  id_krajina NUMBER(10),
  id_dopravny_bod NUMBER(10),
  id_vlastnicka_zeleznica NUMBER(10),
  CONSTRAINT t_hranicny_priechod_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_nadusek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  nadusek_id NUMBER(10) NOT NULL,
  id_vlakovy_usek_n NUMBER(10),
  id_vlakovy_usek NUMBER(10),
  CONSTRAINT t_nadusek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_dopravne (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_dopravne_id NUMBER(10) NOT NULL,
  typ NVARCHAR2(30),
  popis NVARCHAR2(100),
  CONSTRAINT t_typ_dopravne_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_tratovy_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  tratovy_usek_id NUMBER(10) NOT NULL,
  id_dopravny_nazov_od NUMBER(10),
  id_dopravny_nazov_do NUMBER(10),
  id_rozchod_kolaji NUMBER(10),
  id_definicny_usek_t_od NUMBER(10),
  id_definicny_usek_t_do NUMBER(10),
  cislo NVARCHAR2(4),
  km_od NUMBER(8, 3),
  km_do NUMBER(8, 3),
  stavebna_dlzka NUMBER(8, 3),
  km_totoznosti_od NUMBER(8, 3),
  km_totozny_od NUMBER(8, 3),
  km_totoznosti_do NUMBER(8, 3),
  km_totozny_do NUMBER(8, 3),
  poznamka NVARCHAR2(200),
  CONSTRAINT t_tratovy_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_usek_dopravnej_cesty (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  usek_dopravnej_cesty_id NUMBER(10) NOT NULL,
  id_dopravny_nazov_od NUMBER(10),
  id_dopravny_nazov_do NUMBER(10),
  cislo NUMBER(3),
  od_castou_udc NVARCHAR2(1),
  do_castou_udc NVARCHAR2(1),
  poznamka NVARCHAR2(1000),
  CONSTRAINT t_usek_dopravnej_cesty_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_definicny_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  definicny_usek_id NUMBER(10) NOT NULL,
  id_usek_dopravnej_cesty NUMBER(10),
  id_tratovy_usek NUMBER(10),
  id_dopravny_nazov_od NUMBER(10),
  id_dopravny_nazov_do NUMBER(10),
  id_elektricka_trakcia NUMBER(10),
  id_kategoria_trate NUMBER(10),
  cislo NVARCHAR2(2),
  km_od NUMBER(8, 3),
  km_do NUMBER(8, 3),
  kolajnost NUMBER(5),
  stavebna_dlzka NUMBER(8, 3),
  vysokorychlostna_trat NVARCHAR2(1),
  poznamka NVARCHAR2(200),
  max_dlzka_vlaku_m NUMBER(5),
  reakcny_cas NUMBER(8, 1),
  stanicenie_proti_stat_hranici NVARCHAR2(1),
  stanicny_def_usek NVARCHAR2(1),
  id_charakter_trate NUMBER(10),
  id_typ_dopravy NUMBER(10),
  id_typ_prevadzky NUMBER(10),
  id_typ_ten_trate NUMBER(10),
  id_kategoria_zatazenia NUMBER(10),
  CONSTRAINT t_definicny_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravna_a_vlakovy_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravna_a_vlakovy_usek_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_vlakovy_usek NUMBER(10),
  CONSTRAINT t_dopravna_a_vlakovy_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kategoria_trate (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kategoria_trate_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(5),
  nazov NVARCHAR2(25),
  CONSTRAINT t_kategoria_trate_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_depo (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  depo_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(6),
  nazov NVARCHAR2(50),
  CONSTRAINT t_depo_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_rad_hdv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  rad_hdv_id NUMBER(10) NOT NULL,
  rad NVARCHAR2(20),
  rad_tendra NVARCHAR2(20),
  dlzka NUMBER(5, 2),
  pocet_naprav NUMBER(10),
  usporiadanie_dvojkolies NVARCHAR2(100),
  hmotnost NUMBER(4, 1),
  hmotnost_prazdnej_jednotky NUMBER(4, 1),
  hmotnost_obsadenej_jednotky NUMBER(4, 1),
  hmotnost_s_p_tendrom NUMBER(4, 1),
  hmotnost_s_v_tendrom NUMBER(4, 1),
  max_hmotnost_na_napravu NUMBER(5, 3),
  brzdiaca_hmotnost_g NVARCHAR2(10),
  brzdiaca_hmotnost_p NVARCHAR2(10),
  brzdiaca_hmotnost_r NVARCHAR2(10),
  brzdiaca_hmotnost_ge NVARCHAR2(10),
  brzdiaca_hmotnost_pe NVARCHAR2(10),
  brzdiaca_hmotnost_re NVARCHAR2(10),
  brzdiaca_hmotnost_r_brzdy NVARCHAR2(30),
  id_rozchod_kolaji NUMBER(10),
  id_trakcia_hdv NUMBER(10),
  id_typ_radu_hdv NUMBER(10),
  napatie_v_troleji NVARCHAR2(15),
  maximalna_rychlost NVARCHAR2(10),
  razvor_podvozku NUMBER(4, 2),
  razvor_celkovy NUMBER(4, 2),
  vykon_trvaly NUMBER(10),
  vykon_hodinovy NUMBER(10),
  vykon_celkovy NVARCHAR2(10),
  max_priecna_sila NVARCHAR2(10),
  max_tazna_sila_na_haku NUMBER(4, 1),
  min_r_obluka NUMBER(10),
  min_r_vyduteho_zo NUMBER(10),
  min_r_vypukleho_zo NUMBER(10),
  prechod_cez_kolajove_brzdy NVARCHAR2(1),
  kolajove_brzdy_jkb_dkb NVARCHAR2(1),
  kolajove_brzdy_jkb_u_phb NVARCHAR2(1),
  kolajove_brzdy_tkb NVARCHAR2(1),
  prechodnost_triedy_a NVARCHAR2(1),
  prechodnost_triedy_b1 NVARCHAR2(1),
  prechodnost_triedy_b2 NVARCHAR2(1),
  prechodnost_triedy_c2 NVARCHAR2(1),
  prechodnost_triedy_c3 NVARCHAR2(1),
  prechodnost_triedy_c4 NVARCHAR2(1),
  prechodnost_triedy_d2 NVARCHAR2(1),
  prechodnost_triedy_d3 NVARCHAR2(1),
  prechodnost_triedy_d4 NVARCHAR2(1),
  prechodnost_triedy_e4 NVARCHAR2(1),
  prechodnost_triedy_e5 NVARCHAR2(1),
  skupina_prechodnosti NUMBER(1),
  vodojem NUMBER(4, 1),
  zasobnik_uhlia NUMBER(4, 1),
  poznamka NVARCHAR2(2000),
  rad_pis NVARCHAR2(50),
  spriahnuty NVARCHAR2(1),
  id_tabulka_hmotnosti NUMBER(10),
  CONSTRAINT t_rad_hdv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_hnacie_drahove_vozidlo (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  hnacie_drahove_vozidlo_id NUMBER(10) NOT NULL,
  cislo_7 NVARCHAR2(7),
  cislo_12 NVARCHAR2(12),
  nestandardne NVARCHAR2(1),
  id_rad_hdv NUMBER(10),
  dlzka NUMBER(5, 2),
  pocet_naprav NUMBER(10),
  hmotnost NUMBER(5, 1),
  brzdiaca_hmotnost_g NVARCHAR2(10),
  brzdiaca_hmotnost_p NVARCHAR2(10),
  brzdiaca_hmotnost_r NVARCHAR2(10),
  brzdiaca_hmotnost_ge NVARCHAR2(10),
  brzdiaca_hmotnost_pe NVARCHAR2(10),
  brzdiaca_hmotnost_re NVARCHAR2(10),
  id_trakcia_hdv NUMBER(10),
  id_vlastnicka_zeleznica NUMBER(10),
  id_vlastnik_hdv NUMBER(10),
  poznamka NVARCHAR2(2000),
  hmotnost_prazdnej_jednotky NUMBER(5, 1),
  telefon_hkv NVARCHAR2(32),
  id_ucelena_jednotka NUMBER(10),
  CONSTRAINT t_hnacie_drahove_vozidlo_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_trakcia_hdv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  trakcia_hdv_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(30),
  CONSTRAINT t_trakcia_hdv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_radu_hdv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_radu_hdv_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(50),
  CONSTRAINT t_typ_radu_hdv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_krajina (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  krajina_id NUMBER(10) NOT NULL,
  skratka_2 NVARCHAR2(2),
  skratka_3 NVARCHAR2(3),
  nazov NVARCHAR2(100),
  CONSTRAINT t_krajina_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vlastnicka_zeleznica (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vlastnicka_zeleznica_id NUMBER(10) NOT NULL,
  ciselny_kod NVARCHAR2(2),
  kod_pis NVARCHAR2(6),
  id_krajina NUMBER(10),
  nazov NVARCHAR2(100),
  CONSTRAINT t_vlastnicka_zeleznica_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravca (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravca_id NUMBER(10) NOT NULL,
  cislo_pis NVARCHAR2(4),
  interna_skratka NVARCHAR2(10),
  nazov NVARCHAR2(99),
  cislo_zmluvy NVARCHAR2(7),
  ulica NVARCHAR2(99),
  psc NVARCHAR2(10),
  mesto NVARCHAR2(99),
  id_krajina NUMBER(10),
  email NVARCHAR2(99),
  externy NVARCHAR2(1),
  cislo_rics NVARCHAR2(4),
  skratka_rics NVARCHAR2(20),
  dodatok_zmluvy NVARCHAR2(5),
  uzatvorenie_zmluvy TIMESTAMP(6),
  ucinnost_zmluvy TIMESTAMP(6),
  cislo_licencie NVARCHAR2(50),
  osvedcenie NVARCHAR2(20),
  osvedcenie_nove NVARCHAR2(20),
  platnost_osvedcenia NVARCHAR2(20),
  webstranka NVARCHAR2(99),
  cislo_zmluvy_ds NVARCHAR2(7),
  cislo_zakazky_co NVARCHAR2(12),
  cislo_zakazky_sd NVARCHAR2(9),
  uzatvorenie_zmluvy_ds TIMESTAMP(6),
  ucinnost_zmluvy_ds TIMESTAMP(6),
  platnost_zmluvy_ds TIMESTAMP(6),
  CONSTRAINT t_dopravca_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_urcenie_kolaje (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  urcenie_kolaje_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(50),
  CONSTRAINT t_urcenie_kolaje_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_dopravy (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_dopravy_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(2),
  nazov NVARCHAR2(50),
  CONSTRAINT t_druh_dopravy_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_obrys_priechodnosti_uic (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obrys_priechodnosti_uic_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  alternativne_oznacenie NVARCHAR2(10),
  kod NVARCHAR2(10),
  prierez NVARCHAR2(10),
  CONSTRAINT t_obrys_priechodnosti_uic_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kategoria_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kategoria_db_id NUMBER(10) NOT NULL,
  id_druh_dopravy NUMBER(10),
  oznacenie NVARCHAR2(1),
  popis NVARCHAR2(200),
  CONSTRAINT t_kategoria_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kategoria_zatazenia (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kategoria_zatazenia_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(15),
  hmotnost_na_napravu NUMBER(3, 1),
  hmotnost_na_1m_kolaje NUMBER(3, 1),
  nazov NVARCHAR2(80),
  vzdial_naprav_m NUMBER(8, 1),
  vzdial_1_naprav_od_naraz NUMBER(8, 3),
  vzdial_vnut_naprav NUMBER(8, 3),
  dlzka_vozna NUMBER(8, 3),
  CONSTRAINT t_kategoria_zatazenia_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_obvod_riadenia_dopravy (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obvod_riadenia_dopravy_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(2),
  nazov NVARCHAR2(50),
  CONSTRAINT t_obvod_riadenia_dopravy_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_stanicna_kolaj (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  stanicna_kolaj_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  cislo NVARCHAR2(20),
  id_urcenie_kolaje NUMBER(10),
  id_druh_kolaje NUMBER(10),
  uzitocna_dlzka NUMBER(5),
  stavebna_dlzka NUMBER(5),
  id_elektricka_trakcia NUMBER(10),
  dlzka_nastupista NUMBER(5),
  poznamka NVARCHAR2(1000),
  neprevadzkovana NVARCHAR2(1),
  vlecka NVARCHAR2(1),
  cislo_nastupista NVARCHAR2(20),
  poradie_od_dk NVARCHAR2(20),
  sok NVARCHAR2(1),
  CONSTRAINT t_stanicna_kolaj_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_obrys_priechodnosti_oszd (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obrys_priechodnosti_oszd_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  alternativne_oznacenie NVARCHAR2(10),
  kod NVARCHAR2(10),
  prierez NVARCHAR2(10),
  CONSTRAINT t_obrys_priechodnosti_oszd_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_kolaje (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_kolaje_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(50),
  CONSTRAINT t_druh_kolaje_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_usek_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(8),
  id_dopravny_bod_od NUMBER(10),
  id_dopravny_bod_do NUMBER(10),
  dlzka_m NUMBER(6, 3),
  dlzka_hm NUMBER(4, 1),
  dlzka_km NUMBER(3),
  id_dispecersky_okruh NUMBER(10),
  id_elektricka_trakcia NUMBER(10),
  id_rozchod_kolaji NUMBER(10),
  id_trat NUMBER(10),
  id_definicny_usek NUMBER(10),
  id_kategoria_zatazenia_trate NUMBER(10),
  id_obrys_priechodnosti_uic NUMBER(10),
  id_obrys_priechodnosti_oszd NUMBER(10),
  cislo_zona NVARCHAR2(8),
  id_dopravny_smer NUMBER(10),
  dlzka_casti_du_z NUMBER(6, 3),
  dlzka_casti_tu NUMBER(6, 3),
  dlzka_casti_du_do NUMBER(6, 3),
  oznacenie_sap_du_z NVARCHAR2(12),
  oznacenie_sap_tu NVARCHAR2(6),
  oznacenie_sap_du_do NVARCHAR2(12),
  id_skupina_prechod_hkv NUMBER(10),
  rozhodujuce_stupanie_z_do NUMBER(10),
  rozhodujuce_stupanie_spat NUMBER(10),
  max_rychlost_kmh NUMBER(4),
  zabrzdna_vzdialenost_m NUMBER(6),
  pckod NVARCHAR2(20),
  sk_precnych_ucinkov_1 NVARCHAR2(1),
  sk_precnych_ucinkov_2 NVARCHAR2(1),
  sk_precnych_ucinkov_3 NVARCHAR2(1),
  dlzka_vlaku_nd_parny_smer NUMBER(5),
  dlzka_vlaku_nd_neparny_smer NUMBER(5),
  max_rychlost_nd_kmh NUMBER(4),
  CONSTRAINT t_dopravny_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_trat (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  trat_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(5),
  kategoria NUMBER(2),
  id_dopravny_bod_od NUMBER(10),
  id_dopravny_bod_do NUMBER(10),
  dlzka_m NUMBER(6, 3),
  dlzka_km NUMBER(3),
  CONSTRAINT t_trat_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vyssi_uzemny_celok (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vyssi_uzemny_celok_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(2),
  nazov NVARCHAR2(100),
  kod NUMBER(2),
  skrateny_nazov NVARCHAR2(100),
  oznacenie_susr NVARCHAR2(10),
  CONSTRAINT t_vyssi_uzemny_celok_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dispecersky_okruh (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dispecersky_okruh_id NUMBER(10) NOT NULL,
  id_obvod_riadenia_dopravy NUMBER(10),
  cislo NVARCHAR2(3),
  skratka_dispecera NVARCHAR2(5),
  dispecer NVARCHAR2(50),
  telefon_zts NVARCHAR2(32),
  telefon_vts NVARCHAR2(32),
  telefon_mobil NVARCHAR2(32),
  email NVARCHAR2(99),
  CONSTRAINT t_dispecersky_okruh_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_vlaku_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  skratka NVARCHAR2(5),
  nazov NVARCHAR2(50),
  id_druh_dopravy NUMBER(10),
  CONSTRAINT t_druh_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_urcenie_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  urcenie_vlaku_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  skratka NVARCHAR2(10),
  nazov NVARCHAR2(50),
  id_druh_vlaku NUMBER(10),
  id_druh_dopravy NUMBER(10),
  definicia NVARCHAR2(500),
  CONSTRAINT t_urcenie_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dovod_odstavenia_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_odstavenia_vlaku_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  vyznam NVARCHAR2(200),
  zodpovednost NVARCHAR2(50),
  CONSTRAINT t_dovod_odstavenia_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dovod_meskania_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_meskania_vlaku_id NUMBER(10) NOT NULL,
  id_druh_dopravy NUMBER(10),
  id_kod_meskania_vlaku NUMBER(10),
  index_nazvu NVARCHAR2(10),
  popis NVARCHAR2(500),
  zodpovednost NVARCHAR2(50),
  zodpovednost_v_zsr NVARCHAR2(50),
  id_kod_meskania_vlaku_uic NUMBER(10),
  CONSTRAINT t_dovod_meskania_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pohyb_a_stav_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pohyb_a_stav_vlaku_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  vyznam NVARCHAR2(200),
  CONSTRAINT t_pohyb_a_stav_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_doplnujuci_udaj_vozidla (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  doplnujuci_udaj_vozidla_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  priorita NVARCHAR2(1),
  vyznam NVARCHAR2(200),
  CONSTRAINT t_doplnujuci_udaj_vozidla_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_un_a_kemler_kod (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  un_a_kemler_kod_id NUMBER(10) NOT NULL,
  un_kod NVARCHAR2(4),
  kemler_kod NVARCHAR2(5),
  nazov_latky NVARCHAR2(300),
  CONSTRAINT t_un_a_kemler_kod_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kod_meskania_vlaku (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kod_meskania_vlaku_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(2),
  nazov NVARCHAR2(100),
  CONSTRAINT t_kod_meskania_vlaku_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vlastnik_hdv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vlastnik_hdv_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(99),
  mesto NVARCHAR2(99),
  id_krajina NUMBER(10),
  CONSTRAINT t_vlastnik_hdv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_nakladny_vozen (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  nakladny_vozen_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(12),
  rezim NVARCHAR2(2),
  id_vlastnicka_zeleznica NUMBER(10),
  rad NVARCHAR2(1),
  vlastnik NVARCHAR2(50),
  id_rozchod_kolaji NUMBER(10),
  dlzka NUMBER(4),
  pocet_naprav NUMBER(4),
  hmotnost NUMBER(6),
  nosnost NUMBER(6),
  brzdiaca_hmotnost_g NUMBER(3),
  brzdiaca_hmotnost_p NUMBER(3),
  CONSTRAINT t_nakladny_vozen_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vykonovy_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vykonovy_usek_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(6),
  nazov NVARCHAR2(99),
  CONSTRAINT t_vykonovy_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_smer (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_smer_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(1),
  nazov NVARCHAR2(50),
  CONSTRAINT t_dopravny_smer_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_a_vykonovy_usek (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_a_vykonovy_usek_id NUMBER(10) NOT NULL,
  id_vykonovy_usek NUMBER(10),
  id_dopravny_usek NUMBER(10),
  CONSTRAINT t_dopravny_a_vykonovy_usek_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_interoperabilita_vozidla (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  interoperabilita_id NUMBER(10) NOT NULL,
  interoperabilita NVARCHAR2(20),
  vyznam NVARCHAR2(255),
  povolenie_jazdy NUMBER(1),
  CONSTRAINT t_interoperabilita_vozidla_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_tk (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_tk_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(6),
  cena NUMBER(10, 2),
  popis NVARCHAR2(450),
  CONSTRAINT t_sluzba_tk_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_tk_ponuka (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_tk_ponuka_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_sluzba_tk NUMBER(10),
  den_od NUMBER(1),
  den_do NUMBER(1),
  hodiny_od NVARCHAR2(5),
  hodiny_do NVARCHAR2(5),
  CONSTRAINT t_sluzba_tk_ponuka_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_pos (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_pos_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(6),
  popis NVARCHAR2(450),
  CONSTRAINT t_sluzba_pos_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_pos_cata (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_pos_cata_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(30),
  id_dopravny_bod NUMBER(10),
  id_druh_dopravy NUMBER(10),
  cena NUMBER(10, 2),
  CONSTRAINT t_sluzba_pos_cata_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_pos_ponuka (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_pos_ponuka_id NUMBER(10) NOT NULL,
  id_sluzba_pos_cata NUMBER(10),
  id_sluzba_pos NUMBER(10),
  den_od NUMBER(1),
  den_do NUMBER(1),
  hodiny_od NVARCHAR2(5),
  hodiny_do NVARCHAR2(5),
  CONSTRAINT t_sluzba_pos_ponuka_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_okres (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  okres_id NUMBER(10) NOT NULL,
  kod_susr NVARCHAR2(3),
  skratka NVARCHAR2(2),
  nazov NVARCHAR2(100),
  skrateny_nazov NVARCHAR2(100),
  oznacenie_susr NVARCHAR2(9),
  id_vyssi_uzemny_celok NUMBER(10),
  CONSTRAINT t_okres_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_obec (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obec_id NUMBER(10) NOT NULL,
  kod_susr NVARCHAR2(6),
  oznacenie_susr NVARCHAR2(12),
  nazov NVARCHAR2(100),
  skrateny_nazov NVARCHAR2(100),
  nazov_jazyk_mensiny_1 NVARCHAR2(100),
  nazov_jazyk_mensiny_2 NVARCHAR2(100),
  id_okres NUMBER(10),
  CONSTRAINT t_obec_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_cv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_cv_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(150),
  prm NVARCHAR2(1),
  CONSTRAINT t_sluzba_cv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_cv_ponuka (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_cv_ponuka_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_sluzba_cv NUMBER(10),
  poznamka NVARCHAR2(100),
  CONSTRAINT t_sluzba_cv_ponuka_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_sluzby (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_sluzby_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_druh_sluzby_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_sluzba_v_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  sluzba_v_db_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_druh_sluzby NUMBER(10),
  umiestnenie NVARCHAR2(500),
  obsluhuje NVARCHAR2(200),
  poznamka NVARCHAR2(500),
  CONSTRAINT t_sluzba_v_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_vybavenia (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_vybavenia_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(10),
  popis NVARCHAR2(200),
  CONSTRAINT t_druh_vybavenia_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vybavenie_v_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vybavenie_v_db_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_druh_vybavenia NUMBER(10),
  poznamka NVARCHAR2(500),
  CONSTRAINT t_vybavenie_v_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_indikatora (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_indikatora_id NUMBER(10) NOT NULL,
  skratka NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_druh_indikatora_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_indikator (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  indikator_id NUMBER(10) NOT NULL,
  id_trat NUMBER(10),
  id_dopravny_bod NUMBER(10),
  id_druh_indikatora NUMBER(10),
  tratova_kolaj NVARCHAR2(10),
  poloha_km NUMBER(10, 3),
  smer_vyhodnotenia NVARCHAR2(100),
  CONSTRAINT t_indikator_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_skupina_prechod_hkv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  skupina_prechod_hkv_id NUMBER(10) NOT NULL,
  cislo NUMBER(4),
  popis NVARCHAR2(100),
  priecna_sila_od NUMBER(4),
  priecna_sila_do NUMBER(4),
  CONSTRAINT t_skupina_prechod_hkv_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_koridoru (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_koridoru_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_typ_koridoru_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_koridor (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  koridor_id NUMBER(10) NOT NULL,
  id_typ_koridoru NUMBER(10),
  cislo NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_koridor_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dopravny_usek_koridor (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dopravny_usek_koridor_id NUMBER(10) NOT NULL,
  id_dopravny_usek NUMBER(10),
  id_koridor NUMBER(10),
  CONSTRAINT t_dopravny_usek_koridor_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_kom_systemu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_kom_systemu_id NUMBER(10) NOT NULL,
  id_typ_kom_systemu NUMBER(10),
  cislo NUMBER(4),
  popis NVARCHAR2(100),
  CONSTRAINT t_druh_kom_systemu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_kom_systemu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_kom_systemu_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_typ_kom_systemu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_kontrol_systemu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_kontrol_systemu_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  popis NVARCHAR2(100),
  CONSTRAINT t_typ_kontrol_systemu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_druh_kontrol_systemu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  druh_kontrol_systemu_id NUMBER(10) NOT NULL,
  id_typ_kontrol_systemu NUMBER(10),
  cislo NUMBER(4),
  popis NVARCHAR2(100),
  CONSTRAINT t_druh_kontrol_systemu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_def_kontrolny_system (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  def_kontrolny_system_id NUMBER(10) NOT NULL,
  id_definicny_usek NUMBER(10),
  id_druh_kontrol_systemu NUMBER(10),
  CONSTRAINT t_def_kontrolny_system_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_def_komunikacny_system (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  def_komunikacny_system_id NUMBER(10) NOT NULL,
  id_definicny_usek NUMBER(10),
  id_druh_kom_systemu NUMBER(10),
  CONSTRAINT t_def_komunikacny_system_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_stav_objektu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  stav_objektu_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  CONSTRAINT t_stav_objektu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_stav_dopravy (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  stav_dopravy_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  CONSTRAINT t_stav_dopravy_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pristup_k_objektu (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pristup_k_objektu_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  CONSTRAINT t_pristup_k_objektu_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kalk_kategoria_trate (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kalk_kategoria_trate_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(5),
  popis NVARCHAR2(100),
  tra_u1i NUMBER(5, 4),
  tra_u2i NUMBER(5, 4),
  tra_u3i NUMBER(5, 4),
  tra_u1i_a NUMBER(5, 4),
  CONSTRAINT t_kalk_kategoria_trate_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kalk_kategoria_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kalk_kategoria_db_id NUMBER(10) NOT NULL,
  id_kategoria_db NUMBER(10),
  id_druh_vlaku NUMBER(10),
  sadzba NUMBER(10, 3),
  CONSTRAINT t_kalk_kategoria_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_kod_meskania_vlaku_uic (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  kod_meskania_vlaku_uic_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(10),
  popis NVARCHAR2(200),
  zodpovednost NVARCHAR2(50),
  kod_sk NVARCHAR2(10),
  CONSTRAINT t_kod_meskania_vlaku_uic_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_charakter_trate (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  charakter_trate_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(10),
  nazov NVARCHAR2(50),
  CONSTRAINT t_charakter_trate_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_dopravy (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_dopravy_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(20),
  nazov NVARCHAR2(50),
  CONSTRAINT t_typ_dopravy_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_prevadzky (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_prevadzky_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(10),
  nazov NVARCHAR2(50),
  CONSTRAINT t_typ_prevadzky_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_obrys_priechodnosti_zsr (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  obrys_priechodnosti_zsr_id NUMBER(10) NOT NULL,
  oznacenie NVARCHAR2(10),
  prierez NVARCHAR2(10),
  CONSTRAINT t_obrys_priechodnosti_zsr_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_ten_trate (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_ten_trate_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(10),
  nazov NVARCHAR2(100),
  CONSTRAINT t_typ_ten_trate_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_styk_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  styk_db_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_dopravny_bod_styku NUMBER(10),
  CONSTRAINT t_styk_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_ovladane_db (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  ovladane_db_id NUMBER(10) NOT NULL,
  id_dopravny_bod NUMBER(10),
  id_dopravny_bod_ovladany NUMBER(10),
  CONSTRAINT t_ovladane_db_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pracovisko_vyp (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pracovisko_vyp_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(100),
  id_dopravny_bod NUMBER(10),
  CONSTRAINT t_pracovisko_vyp_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_pracovisko_pod_vyp (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  pracovisko_pod_vyp_id NUMBER(10) NOT NULL,
  id_pracovisko_vyp NUMBER(10),
  id_dopravny_bod NUMBER(10),
  si NVARCHAR2(1),
  di NVARCHAR2(1),
  CONSTRAINT t_pracovisko_pod_vyp_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_ucelena_jednotka (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  ucelena_jednotka_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(50),
  cislo_vozidla NVARCHAR2(12),
  cislo_povolenia NVARCHAR2(50),
  poznamka NVARCHAR2(2000),
  CONSTRAINT t_ucelena_jednotka_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vozen_ucelenej_jednotky (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vozen_ucelenej_jednotky_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(12),
  dlzka NUMBER(4),
  napravy NUMBER(2),
  hmotnost NUMBER(6),
  hmotnost_prazdneho NUMBER(6),
  rad NVARCHAR2(10),
  pismenove_oznacenie_vozna NVARCHAR2(10),
  poznamka NVARCHAR2(2000),
  id_ucelena_jednotka NUMBER(10),
  CONSTRAINT t_vozen_ucelenej_jednotky_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_tratovy_stroj (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  tratovy_stroj_id NUMBER(10) NOT NULL,
  cislo NVARCHAR2(12),
  id_typ_tratoveho_stroja NUMBER(10),
  id_skupina_kdv NUMBER(10),
  pocet_naprav NUMBER(4),
  hmotnost NUMBER(6),
  dlzka NUMBER(6),
  id_rozchod_kolaji NUMBER(10),
  rok_vyroby NUMBER(4),
  id_dopravca NUMBER(10),
  voj NVARCHAR2(99),
  poznamka NVARCHAR2(150),
  id_trakcia_hdv NUMBER(10),
  id_vlastnicka_zeleznica NUMBER(10),
  id_ucelena_jednotka NUMBER(10),
  CONSTRAINT t_tratovy_stroj_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_tratoveho_stroja (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_tratoveho_stroja_id NUMBER(10) NOT NULL,
  skupina NVARCHAR2(10),
  nazov NVARCHAR2(150),
  typ NVARCHAR2(20),
  kod NUMBER(4),
  id_skupina_z3 NUMBER(10),
  CONSTRAINT t_typ_tratoveho_stroja_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_skupina_ts_z3 (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  skupina_ts_z3_id NUMBER(10) NOT NULL,
  skupina NUMBER(2),
  oznacenie NVARCHAR2(1000),
  CONSTRAINT t_skupina_ts_z3_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_skupina_kdv (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  skupina_kdv_id NUMBER(10) NOT NULL,
  nazov NVARCHAR2(99),
  CONSTRAINT t_skupina_kdv_pk PRIMARY KEY ( hist_id )
);


ALTER TABLE T_TYP_ELEKTRICKEJ_TRAKCIE ADD CONSTRAINT T_TYP_ELEKTRICKEJ_TRAKCIE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ELEKTRICKA_TRAKCIA ADD CONSTRAINT T_ELEKTRICKA_TRAKCIA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ROZCHOD_KOLAJI ADD CONSTRAINT T_ROZCHOD_KOLAJI_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VLAKOVY_USEK ADD CONSTRAINT T_VLAKOVY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_NAZOV ADD CONSTRAINT T_DOPRAVNY_NAZOV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_BOD ADD CONSTRAINT T_DOPRAVNY_BOD_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBLASTNE_RIADITELSTVO ADD CONSTRAINT T_OBLASTNE_RIADITELSTVO_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PRACOVISKO_OR ADD CONSTRAINT T_PRACOVISKO_OR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_HRANICNY_PRIECHOD ADD CONSTRAINT T_HRANICNY_PRIECHOD_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_NADUSEK ADD CONSTRAINT T_NADUSEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_DOPRAVNE ADD CONSTRAINT T_TYP_DOPRAVNE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRATOVY_USEK ADD CONSTRAINT T_TRATOVY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_USEK_DOPRAVNEJ_CESTY ADD CONSTRAINT T_USEK_DOPRAVNEJ_CESTY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DEFINICNY_USEK ADD CONSTRAINT T_DEFINICNY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNA_A_VLAKOVY_USEK ADD CONSTRAINT T_DOPRAVNA_A_VLAKOVY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KATEGORIA_TRATE ADD CONSTRAINT T_KATEGORIA_TRATE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DEPO ADD CONSTRAINT T_DEPO_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_RAD_HDV ADD CONSTRAINT T_RAD_HDV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_HNACIE_DRAHOVE_VOZIDLO ADD CONSTRAINT T_HNACIE_DRAHOVE_VOZIDLO_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAKCIA_HDV ADD CONSTRAINT T_TRAKCIA_HDV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_RADU_HDV ADD CONSTRAINT T_TYP_RADU_HDV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KRAJINA ADD CONSTRAINT T_KRAJINA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VLASTNICKA_ZELEZNICA ADD CONSTRAINT T_VLASTNICKA_ZELEZNICA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVCA ADD CONSTRAINT T_DOPRAVCA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_URCENIE_KOLAJE ADD CONSTRAINT T_URCENIE_KOLAJE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_DOPRAVY ADD CONSTRAINT T_DRUH_DOPRAVY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBRYS_PRIECHODNOSTI_UIC ADD CONSTRAINT T_OBRYS_PRIECHODNOSTI_UIC_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KATEGORIA_DB ADD CONSTRAINT T_KATEGORIA_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KATEGORIA_ZATAZENIA ADD CONSTRAINT T_KATEGORIA_ZATAZENIA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBVOD_RIADENIA_DOPRAVY ADD CONSTRAINT T_OBVOD_RIADENIA_DOPRAVY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_STANICNA_KOLAJ ADD CONSTRAINT T_STANICNA_KOLAJ_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBRYS_PRIECHODNOSTI_OSZD ADD CONSTRAINT T_OBRYS_PRIECHODNOSTI_OSZD_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_KOLAJE ADD CONSTRAINT T_DRUH_KOLAJE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_USEK ADD CONSTRAINT T_DOPRAVNY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAT ADD CONSTRAINT T_TRAT_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VYSSI_UZEMNY_CELOK ADD CONSTRAINT T_VYSSI_UZEMNY_CELOK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DISPECERSKY_OKRUH ADD CONSTRAINT T_DISPECERSKY_OKRUH_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_VLAKU ADD CONSTRAINT T_DRUH_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_URCENIE_VLAKU ADD CONSTRAINT T_URCENIE_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOVOD_ODSTAVENIA_VLAKU ADD CONSTRAINT T_DOVOD_ODSTAVENIA_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOVOD_MESKANIA_VLAKU ADD CONSTRAINT T_DOVOD_MESKANIA_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_POHYB_A_STAV_VLAKU ADD CONSTRAINT T_POHYB_A_STAV_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPLNUJUCI_UDAJ_VOZIDLA ADD CONSTRAINT T_DOPLNUJUCI_UDAJ_VOZIDLA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_UN_A_KEMLER_KOD ADD CONSTRAINT T_UN_A_KEMLER_KOD_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KOD_MESKANIA_VLAKU ADD CONSTRAINT T_KOD_MESKANIA_VLAKU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VLASTNIK_HDV ADD CONSTRAINT T_VLASTNIK_HDV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_NAKLADNY_VOZEN ADD CONSTRAINT T_NAKLADNY_VOZEN_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VYKONOVY_USEK ADD CONSTRAINT T_VYKONOVY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_SMER ADD CONSTRAINT T_DOPRAVNY_SMER_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_A_VYKONOVY_USEK ADD CONSTRAINT T_DOPRAVNY_A_VYKONOVY_USEK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INTEROPERABILITA_VOZIDLA ADD CONSTRAINT T_INTEROPERABILITA_VOZIDLA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_TK ADD CONSTRAINT T_SLUZBA_TK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_TK_PONUKA ADD CONSTRAINT T_SLUZBA_TK_PONUKA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_POS ADD CONSTRAINT T_SLUZBA_POS_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_POS_CATA ADD CONSTRAINT T_SLUZBA_POS_CATA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_POS_PONUKA ADD CONSTRAINT T_SLUZBA_POS_PONUKA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OKRES ADD CONSTRAINT T_OKRES_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBEC ADD CONSTRAINT T_OBEC_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_CV ADD CONSTRAINT T_SLUZBA_CV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_CV_PONUKA ADD CONSTRAINT T_SLUZBA_CV_PONUKA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_SLUZBY ADD CONSTRAINT T_DRUH_SLUZBY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SLUZBA_V_DB ADD CONSTRAINT T_SLUZBA_V_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_VYBAVENIA ADD CONSTRAINT T_DRUH_VYBAVENIA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VYBAVENIE_V_DB ADD CONSTRAINT T_VYBAVENIE_V_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_INDIKATORA ADD CONSTRAINT T_DRUH_INDIKATORA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INDIKATOR ADD CONSTRAINT T_INDIKATOR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SKUPINA_PRECHOD_HKV ADD CONSTRAINT T_SKUPINA_PRECHOD_HKV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_KORIDORU ADD CONSTRAINT T_TYP_KORIDORU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KORIDOR ADD CONSTRAINT T_KORIDOR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DOPRAVNY_USEK_KORIDOR ADD CONSTRAINT T_DOPRAVNY_USEK_KORIDOR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_KOM_SYSTEMU ADD CONSTRAINT T_DRUH_KOM_SYSTEMU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_KOM_SYSTEMU ADD CONSTRAINT T_TYP_KOM_SYSTEMU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_KONTROL_SYSTEMU ADD CONSTRAINT T_TYP_KONTROL_SYSTEMU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DRUH_KONTROL_SYSTEMU ADD CONSTRAINT T_DRUH_KONTROL_SYSTEMU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DEF_KONTROLNY_SYSTEM ADD CONSTRAINT T_DEF_KONTROLNY_SYSTEM_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DEF_KOMUNIKACNY_SYSTEM ADD CONSTRAINT T_DEF_KOMUNIKACNY_SYSTEM_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_STAV_OBJEKTU ADD CONSTRAINT T_STAV_OBJEKTU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_STAV_DOPRAVY ADD CONSTRAINT T_STAV_DOPRAVY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PRISTUP_K_OBJEKTU ADD CONSTRAINT T_PRISTUP_K_OBJEKTU_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KALK_KATEGORIA_TRATE ADD CONSTRAINT T_KALK_KATEGORIA_TRATE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KALK_KATEGORIA_DB ADD CONSTRAINT T_KALK_KATEGORIA_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_KOD_MESKANIA_VLAKU_UIC ADD CONSTRAINT T_KOD_MESKANIA_VLAKU_UIC_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_CHARAKTER_TRATE ADD CONSTRAINT T_CHARAKTER_TRATE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_DOPRAVY ADD CONSTRAINT T_TYP_DOPRAVY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_PREVADZKY ADD CONSTRAINT T_TYP_PREVADZKY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBRYS_PRIECHODNOSTI_ZSR ADD CONSTRAINT T_OBRYS_PRIECHODNOSTI_ZSR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_TEN_TRATE ADD CONSTRAINT T_TYP_TEN_TRATE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_STYK_DB ADD CONSTRAINT T_STYK_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OVLADANE_DB ADD CONSTRAINT T_OVLADANE_DB_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PRACOVISKO_VYP ADD CONSTRAINT T_PRACOVISKO_VYP_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PRACOVISKO_POD_VYP ADD CONSTRAINT T_PRACOVISKO_POD_VYP_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_UCELENA_JEDNOTKA ADD CONSTRAINT T_UCELENA_JEDNOTKA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_VOZEN_UCELENEJ_JEDNOTKY ADD CONSTRAINT T_VOZEN_UCELENEJ_JEDNOTKY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRATOVY_STROJ ADD CONSTRAINT T_TRATOVY_STROJ_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYP_TRATOVEHO_STROJA ADD CONSTRAINT T_TYP_TRATOVEHO_STROJA_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SKUPINA_TS_Z3 ADD CONSTRAINT T_SKUPINA_TS_Z3_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SKUPINA_KDV ADD CONSTRAINT T_SKUPINA_KDV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);



CREATE SEQUENCE T_TYP_ELEKTRICKEJ_TRAKCIE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_ELEKTRICKA_TRAKCIA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_ROZCHOD_KOLAJI_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VLAKOVY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_NAZOV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_BOD_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBLASTNE_RIADITELSTVO_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_PRACOVISKO_OR_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_HRANICNY_PRIECHOD_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_NADUSEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_DOPRAVNE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TRATOVY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_USEK_DOPRAVNEJ_CESTY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DEFINICNY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNA_A_VLAKOVY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KATEGORIA_TRATE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DEPO_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_RAD_HDV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_HNACIE_DRAHOVE_VOZIDLO_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TRAKCIA_HDV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_RADU_HDV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KRAJINA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VLASTNICKA_ZELEZNICA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVCA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_URCENIE_KOLAJE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_DOPRAVY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBRYS_PRIECHODNOSTI_UIC_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KATEGORIA_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KATEGORIA_ZATAZENIA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBVOD_RIADENIA_DOPRAVY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_STANICNA_KOLAJ_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBRYS_PRIECHODNOSTI_OSZD_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_KOLAJE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TRAT_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VYSSI_UZEMNY_CELOK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DISPECERSKY_OKRUH_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_URCENIE_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOVOD_ODSTAVENIA_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOVOD_MESKANIA_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_POHYB_A_STAV_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPLNUJUCI_UDAJ_VOZIDLA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_UN_A_KEMLER_KOD_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KOD_MESKANIA_VLAKU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VLASTNIK_HDV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_NAKLADNY_VOZEN_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VYKONOVY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_SMER_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_A_VYKONOVY_USEK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_INTEROPERABILITA_VOZIDLA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_TK_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_TK_PONUKA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_POS_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_POS_CATA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_POS_PONUKA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OKRES_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBEC_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_CV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_CV_PONUKA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_SLUZBY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SLUZBA_V_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_VYBAVENIA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VYBAVENIE_V_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_INDIKATORA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_INDIKATOR_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SKUPINA_PRECHOD_HKV_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_KORIDORU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KORIDOR_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DOPRAVNY_USEK_KORIDOR_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_KOM_SYSTEMU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_KOM_SYSTEMU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_KONTROL_SYSTEMU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DRUH_KONTROL_SYSTEMU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DEF_KONTROLNY_SYSTEM_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_DEF_KOMUNIKACNY_SYSTEM_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_STAV_OBJEKTU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_STAV_DOPRAVY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_PRISTUP_K_OBJEKTU_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KALK_KATEGORIA_TRATE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KALK_KATEGORIA_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_KOD_MESKANIA_VLAKU_UIC_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_CHARAKTER_TRATE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_DOPRAVY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_PREVADZKY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OBRYS_PRIECHODNOSTI_ZSR_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_TEN_TRATE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_STYK_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_OVLADANE_DB_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_PRACOVISKO_VYP_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_PRACOVISKO_POD_VYP_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_UCELENA_JEDNOTKA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_VOZEN_UCELENEJ_JEDNOTKY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TRATOVY_STROJ_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_TYP_TRATOVEHO_STROJA_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SKUPINA_TS_Z3_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE T_SKUPINA_KDV_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
