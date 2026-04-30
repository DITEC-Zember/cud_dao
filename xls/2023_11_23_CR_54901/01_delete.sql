
DELETE FROM cud_wf_todo WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COMPANY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COMPANY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_eskalacia WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COMPANY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stlpec WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COMPANY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM T_COMPANY;
commit;

DELETE FROM cud_zmena WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COMPANY' AND id_transakcia_zrusene IS NULL );
commit;



DELETE FROM cud_wf_todo WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COUNTRY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COUNTRY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_eskalacia WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COUNTRY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stlpec WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COUNTRY' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM T_COUNTRY;
commit;

DELETE FROM cud_zmena WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_COUNTRY' AND id_transakcia_zrusene IS NULL );
commit;



DELETE FROM cud_wf_todo WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_TYPE' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_TYPE' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_eskalacia WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_TYPE' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stlpec WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_TYPE' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM T_SUBSIDIARY_TYPE;
commit;

DELETE FROM cud_zmena WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_TYPE' AND id_transakcia_zrusene IS NULL );
commit;



DELETE FROM cud_wf_todo WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_eskalacia WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stlpec WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM T_PRIMARY_LOCATION;
commit;

DELETE FROM cud_zmena WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;



DELETE FROM cud_wf_todo WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stav_hist WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_eskalacia WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM cud_zmena_stlpec WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;

DELETE FROM T_SUBSIDIARY_LOCATION;
commit;

DELETE FROM cud_zmena WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_SUBSIDIARY_LOCATION' AND id_transakcia_zrusene IS NULL );
commit;
