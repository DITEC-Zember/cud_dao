DELETE FROM t_typ_obmedzenia_miesto;
COMMIT;

delete from cud_zmena_stav_hist where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA_MIESTO' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena_stlpec where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA_MIESTO' AND id_transakcia_zrusene IS NULL);
delete from cud_wf_todo where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA_MIESTO' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA_MIESTO' AND id_transakcia_zrusene IS NULL);
commit;

DELETE FROM t_dovod_tcr;
COMMIT;

delete from cud_zmena_stav_hist where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOVOD_TCR' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena_stlpec where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOVOD_TCR' AND id_transakcia_zrusene IS NULL);
delete from cud_wf_todo where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOVOD_TCR' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOVOD_TCR' AND id_transakcia_zrusene IS NULL);
commit;


DELETE FROM t_typ_obmedzenia;
COMMIT;

delete from cud_zmena_stav_hist where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena_stlpec where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_wf_todo where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
delete from cud_zmena where id_ciselnik = (SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_TYP_OBMEDZENIA' AND id_transakcia_zrusene IS NULL);
commit;
