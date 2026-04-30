UPDATE cud_wf_def SET email_send = 'F' WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_RAD_HDV');
COMMIT;
