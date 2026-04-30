UPDATE cud_wf_def SET email_send = 'F' WHERE id_ciselnik IN ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka IN ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));
COMMIT;
