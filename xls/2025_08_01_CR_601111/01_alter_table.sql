
ALTER TABLE cud_plugin_kontrola_row RENAME COLUMN kontrola_uspesna TO stav;

UPDATE cud_plugin_kontrola_row SET stav = 'E' WHERE stav = 'F';
COMMIT;

UPDATE cud_plugin_kontrola_row SET stav = 'S' WHERE stav = 'T';
COMMIT;

UPDATE cud_plugin_kontrola SET stav = 'S' WHERE stav = 'K';
COMMIT;


COMMENT ON COLUMN CUD_PLUGIN_KONTROLA.STAV is 'values = { I - insert, C - control, S - success, E - error }';
COMMENT ON COLUMN CUD_PLUGIN_KONTROLA_ROW.STAV is 'values = { W - warning, S - success, E - error }';


ALTER TABLE cud_plugin_kontrola_row MODIFY (id_plugin NULL);
ALTER TABLE cud_plugin_kontrola_row MODIFY (row_id NULL);
