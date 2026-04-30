delete from T_TRAIN_ACTIVITY_TYPE;
commit;

delete from cud_zmena_eskalacia where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TRAIN_ACTIVITY_TYPE' AND t1.id_transakcia_zrusene IS NULL);
commit;

delete from cud_zmena_stav_hist where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TRAIN_ACTIVITY_TYPE' AND t1.id_transakcia_zrusene IS NULL);
commit;

delete from cud_zmena_stlpec where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TRAIN_ACTIVITY_TYPE' AND t1.id_transakcia_zrusene IS NULL);
commit;

delete from cud_wf_todo where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TRAIN_ACTIVITY_TYPE' AND t1.id_transakcia_zrusene IS NULL);
commit;

delete from cud_zmena where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TRAIN_ACTIVITY_TYPE' AND t1.id_transakcia_zrusene IS NULL);
commit;