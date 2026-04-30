UPDATE cud_wf_def
SET  email_send = 'T'
WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_PRIMARY_LOCATION' and cud_ciselnik.id_transakcia_zrusene is null) and id_transakcia_zrusene is null;
COMMIT;

-- update dat

