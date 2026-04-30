
UPDATE cud_wf_def
SET  email_send = 'F'
WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka IN ('T_DEFINICNY_USEK', 'T_DOVOD_VYL') and cud_ciselnik.id_transakcia_zrusene is null) and id_transakcia_zrusene is null;
COMMIT;

-- update dat

