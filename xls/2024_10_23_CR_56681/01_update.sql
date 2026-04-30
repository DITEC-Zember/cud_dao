UPDATE cud_wf_def
SET  email_send = 'F'
WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_ERROR_CODE' );
COMMIT;

-- update dat

UPDATE cud_wf_def
SET  email_send = 'T'
WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_ERROR_CODE' );
COMMIT;

select * from cud_zmena;