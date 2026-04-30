
UPDATE cud_wf_def
SET  email_send = 'F'
WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka in ('T_PRIMARY_LOCATION') and cud_ciselnik.id_transakcia_zrusene is null);
COMMIT;

-- update dat
