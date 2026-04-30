update cud_wf_def set email_send = 'T' where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TYP_OBMEDZENIA_MIESTO' AND t1.id_transakcia_zrusene IS NULL);
update cud_wf_def set email_send = 'T' where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOVOD_TCR' AND t1.id_transakcia_zrusene IS NULL);
update cud_wf_def set email_send = 'T' where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_TYP_OBMEDZENIA' AND t1.id_transakcia_zrusene IS NULL);
update cud_wf_def set email_send = 'T' where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOVOD_POTR' AND t1.id_transakcia_zrusene IS NULL);
commit;
