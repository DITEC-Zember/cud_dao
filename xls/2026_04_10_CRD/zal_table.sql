CREATE TABLE zal_t_country (
    hist_id           NUMBER(10, 0) NOT NULL,
    platnost_od       TIMESTAMP(6) NOT NULL,
    platnost_do       TIMESTAMP(6),
    cas_vytvorenia    TIMESTAMP(6) NOT NULL,
    cas_zmeny         TIMESTAMP(6),
    id_zmena          NUMBER(10, 0) NOT NULL,
    zmaz              NVARCHAR2(1) NOT NULL,
    country_id        NUMBER(10, 0) NOT NULL,
    country_code_iso  NVARCHAR2(2),
    country_uic_code  NVARCHAR2(4),
    country_name_en   NVARCHAR2(255),
    country_name_fr   NVARCHAR2(255),
    country_name_de   NVARCHAR2(255),
    sub_loc_code_flag NVARCHAR2(1),
    CONSTRAINT zal_t_country_pk PRIMARY KEY ( hist_id )
);


CREATE TABLE zal_t_company (
    hist_id             NUMBER(10, 0) NOT NULL,
    platnost_od         TIMESTAMP(6) NOT NULL,
    platnost_do         TIMESTAMP(6),
    cas_vytvorenia      TIMESTAMP(6) NOT NULL,
    cas_zmeny           TIMESTAMP(6),
    id_zmena            NUMBER(10, 0) NOT NULL,
    zmaz                NVARCHAR2(1) NOT NULL,
    company_id          NUMBER(10, 0) NOT NULL,
    id_country          NUMBER(10, 0),
    company_name        NVARCHAR2(255),
    company_name_ascii  NVARCHAR2(255),
    company_uic_code    NVARCHAR2(4),
    company_url         NVARCHAR2(100),
    start_validity      TIMESTAMP(6),
    end_validity        TIMESTAMP(6),
    company_short_name  NVARCHAR2(50),
    free_text           NVARCHAR2(255),
    freight_flag        NVARCHAR2(1),
    passenger_flag      NVARCHAR2(1),
    infrastructure_flag NVARCHAR2(1),
    other_company_flag  NVARCHAR2(1),
    ne_entity_flag      NVARCHAR2(1),
    ce_entity_flag      NVARCHAR2(1),
    contact_person      NVARCHAR2(255),
    email               NVARCHAR2(70),
    phone_number        NVARCHAR2(70),
    fax_number          NVARCHAR2(70),
    address             NVARCHAR2(255),
    city                NVARCHAR2(50),
    mobile_number       NVARCHAR2(70),
    postal_code         NVARCHAR2(10),
    active_flag         NVARCHAR2(1),
    CONSTRAINT zal_t_company_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE zal_t_subsidiary_type (
    hist_id              NUMBER(10, 0) NOT NULL,
    platnost_od          TIMESTAMP(6) NOT NULL,
    platnost_do          TIMESTAMP(6),
    cas_vytvorenia       TIMESTAMP(6) NOT NULL,
    cas_zmeny            TIMESTAMP(6),
    id_zmena             NUMBER(10, 0) NOT NULL,
    zmaz                 NVARCHAR2(1) NOT NULL,
    subsidiary_type_id   NUMBER(10, 0) NOT NULL,
    subsidiary_type_code NVARCHAR2(2),
    subsidiary_type_name NVARCHAR2(255),
    im_flag              NVARCHAR2(1),
    freight_ru_flag      NVARCHAR2(1),
    passenger_ru_flag    NVARCHAR2(1),
    central_entity_flag  NVARCHAR2(1),
    national_entity_flag NVARCHAR2(1),
    others_flag          NVARCHAR2(1),
    free_text            NVARCHAR2(255),
    CONSTRAINT zal_t_subsidiary_type_pk PRIMARY KEY ( hist_id )
);


CREATE TABLE zal_t_primary_location (
    hist_id                  NUMBER(10, 0) NOT NULL,
    platnost_od              TIMESTAMP(6) NOT NULL,
    platnost_do              TIMESTAMP(6),
    cas_vytvorenia           TIMESTAMP(6) NOT NULL,
    cas_zmeny                TIMESTAMP(6),
    id_zmena                 NUMBER(10, 0) NOT NULL,
    zmaz                     NVARCHAR2(1) NOT NULL,
    primary_location_id      NUMBER(10, 0) NOT NULL,
    id_country               NUMBER(10, 0),
    location_code            NVARCHAR2(5),
    start_validity           TIMESTAMP(6),
    end_validity             TIMESTAMP(6),
    id_company               NUMBER(10, 0),
    location_name            NVARCHAR2(255),
    location_name_ascii      NVARCHAR2(255),
    nuts_code                NVARCHAR2(5),
    container_handling_flag  NVARCHAR2(1),
    handover_point_flag      NVARCHAR2(1),
    freight_possible_flag    NVARCHAR2(1),
    freight_start_validity   TIMESTAMP(6),
    freight_end_validity     TIMESTAMP(6),
    passenger_possible_flag  NVARCHAR2(1),
    passenger_start_validity TIMESTAMP(6),
    passenger_end_validity   TIMESTAMP(6),
    longitude                NUMBER(9, 6),
    latitude                 NUMBER(9, 6),
    free_text                NVARCHAR2(255),
    active_flag              NVARCHAR2(1),
    CONSTRAINT zal_t_primary_location_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE zal_t_subsidiary_location (
    hist_id                  NUMBER(10, 0) NOT NULL,
    platnost_od              TIMESTAMP(6) NOT NULL,
    platnost_do              TIMESTAMP(6),
    cas_vytvorenia           TIMESTAMP(6) NOT NULL,
    cas_zmeny                TIMESTAMP(6),
    id_zmena                 NUMBER(10, 0) NOT NULL,
    zmaz                     NVARCHAR2(1) NOT NULL,
    subsidiary_location_id   NUMBER(10, 0) NOT NULL,
    id_subsidiary_type       NUMBER(10, 0),
    id_company               NUMBER(10, 0),
    id_country               NUMBER(10, 0),
    responsible_im_code      NUMBER(10, 0),
    subsidiary_location_code NVARCHAR2(10),
    subsidiary_location_name NVARCHAR2(255),
    id_primary_location      NUMBER(10, 0),
    start_validity           TIMESTAMP(6),
    end_validity             TIMESTAMP(6),
    longitude                NUMBER(9, 6),
    latitude                 NUMBER(9, 6),
    free_text                NVARCHAR2(255),
    active_flag              NVARCHAR2(1),
    CONSTRAINT zal_t_subsidiary_location_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE zal_cud_wf_todo (
    wf_todo_id             NUMBER(10, 0) NOT NULL,
    id_ciselnik            NUMBER(10, 0) NOT NULL,
    id_zmena               NUMBER(10, 0) NOT NULL,
    id_wf_def              NUMBER(10, 0) NOT NULL,
    potvrdeny              NVARCHAR2(1),
    poznamka               NVARCHAR2(2000),
    id_ucet                NUMBER(10, 0) NOT NULL,
    id_transakcia_zapisane NUMBER(20, 0) NOT NULL,
    CONSTRAINT zal_cud_wf_todo_pk PRIMARY KEY ( wf_todo_id )
);

CREATE TABLE zal_cud_zmena (
    zmena_id               NUMBER(10, 0) NOT NULL,
    id_ciselnik            NUMBER(10, 0) NOT NULL,
    row_id                 NUMBER(10, 0),
    operacia               NVARCHAR2(1) NOT NULL,
    stav                   NVARCHAR2(3) NOT NULL,
    platnost_od            TIMESTAMP(6),
    platnost_do            TIMESTAMP(6),
    cas_schvalenia_gr      TIMESTAMP(6),
    id_transakcia_zapisane NUMBER(20, 0) NOT NULL,
    CONSTRAINT zal_cud_zmena_pk PRIMARY KEY ( zmena_id )
);


CREATE TABLE zal_cud_zmena_stav_hist (
    zmena_stav_hist_id     NUMBER(10, 0) NOT NULL,
    id_ciselnik            NUMBER(10, 0) NOT NULL,
    id_zmena               NUMBER(10, 0) NOT NULL,
    stav                   NVARCHAR2(3) NOT NULL,
    cas_vytvorenia         TIMESTAMP(6) NOT NULL,
    id_transakcia_zapisane NUMBER(20, 0) NOT NULL,
    CONSTRAINT zal_cud_zmena_stav_hist_pk PRIMARY KEY ( zmena_stav_hist_id )
);


CREATE TABLE zal_cud_zmena_stlpec (
    zmena_stlpec_id        NUMBER(10, 0) NOT NULL,
    id_ciselnik            NUMBER(10, 0) NOT NULL,
    id_zmena               NUMBER(10, 0) NOT NULL,
    id_ciselnik_stlpec     NUMBER(10, 0) NOT NULL,
    old_value              NVARCHAR2(2000),
    new_value              NVARCHAR2(2000),
    id_transakcia_zapisane NUMBER(20, 0) NOT NULL,
    old_value_ext          CLOB,
    new_value_ext          CLOB,
    CONSTRAINT zal_cud_zmena_stlpec_pk PRIMARY KEY ( zmena_stlpec_id )
);


INSERT INTO zal_t_country SELECT * FROM t_country;
COMMIT;

INSERT INTO zal_t_company SELECT * FROM t_company;
COMMIT;

INSERT INTO zal_t_subsidiary_type SELECT * FROM t_subsidiary_type;
COMMIT;

INSERT INTO zal_t_primary_location SELECT * FROM t_primary_location;
COMMIT;

INSERT INTO zal_t_subsidiary_location SELECT * FROM t_subsidiary_location;
COMMIT;

INSERT INTO zal_cud_zmena SELECT * FROM cud_zmena WHERE id_ciselnik IN ( 105, 171, 106, 173, 172 );
COMMIT;

INSERT INTO zal_cud_zmena_stav_hist SELECT * FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( 105, 171, 106, 173, 172 );
COMMIT;

INSERT INTO zal_cud_zmena_stlpec SELECT * FROM cud_zmena_stlpec WHERE id_ciselnik IN ( 105, 171, 106, 173, 172 );
COMMIT;

INSERT INTO zal_cud_wf_todo SELECT * FROM cud_wf_todo WHERE id_ciselnik IN ( 105, 171, 106, 173, 172 );
COMMIT;




SELECT id_ciselnik, COUNT(*) AS pocet FROM zal_cud_zmena GROUP BY id_ciselnik;
SELECT id_ciselnik, COUNT(*) AS pocet FROM zal_cud_zmena_stav_hist GROUP BY id_ciselnik;
SELECT id_ciselnik, COUNT(*) AS pocet FROM zal_cud_zmena_stlpec GROUP BY id_ciselnik;
SELECT id_ciselnik, COUNT(*) AS pocet FROM zal_cud_wf_todo GROUP BY id_ciselnik;