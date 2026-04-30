delete from T_TYP_OBMEDZENIA;
delete from cud_zmena_stlpec where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena_stav_hist where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_wf_todo where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
commit;
