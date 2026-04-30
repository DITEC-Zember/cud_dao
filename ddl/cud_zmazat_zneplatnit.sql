UPDATE cud_import_zmena set operacia = 'D' where operacia = 'Z';
UPDATE cud_import_zmena set operacia = 'Z' where operacia = 'D';
UPDATE cud_zmena set operacia = 'D' where operacia = 'Z';
UPDATE cud_zmena set operacia = 'Z' where operacia = 'D';
commit;