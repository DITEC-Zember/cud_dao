update cud_wf_def set email_send = 'F' where id_ciselnik = (SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_UN_A_KEMLER_KOD' AND t1.id_transakcia_zrusene IS NULL);
commit;

