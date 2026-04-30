UPDATE cud_ciselnik_stlpec 
SET nazov = 'HMOTNOST_OLD' 
WHERE nazov = 'HMOTNOST' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka ='T_TYP_TRATOVEHO_STROJA');
commit;

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_G_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_G' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_P_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_P' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_R_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_R' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_GE_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_GE' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_PE_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_PE' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_RE_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_RE' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));

UPDATE cud_ciselnik_stlpec 
SET nazov = 'BRZDIACA_HMOTNOST_R_BRZDY_OLD' 
WHERE nazov = 'BRZDIACA_HMOTNOST_R_BRZDY' and id_ciselnik in (select ciselnik_id from cud_ciselnik where tabulka in ('T_RAD_HDV', 'T_TYP_TRATOVEHO_STROJA'));
commit;

