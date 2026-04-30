UPDATE cud_wf_def
SET
  email_send = 'T'
WHERE id_ciselnik IN ( SELECT ciselnik_id
                       FROM cud_ciselnik
                       WHERE tabulka = 'T_KATEGORIA_ZATAZENIA'
                     );

COMMIT;