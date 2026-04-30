
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'));
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'));
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'));
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'));
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'));
select * from cud_ciselnik_stlpec_gui where id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'));



UPDATE cud_ciselnik_stlpec_gui
SET poradie = 30
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 3;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 5;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 30;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 3
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_CHARACTERISTIC_DESCRIPT_CODE'))
AND poradie = 50;

commit;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 5;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 60
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 6;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 6
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 50;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_COMMERCIAL_SERVICE_CODE'))
AND poradie = 60;

commit;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE cud_ciselnik_stlpec_gui
SET poradie = 30
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 3;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 5;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 30;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 3
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_FACILITY_TYPE_DESCRIPT_CODE'))
AND poradie = 50;

commit;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 5;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 60
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 6;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 6
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 50;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INFORMATION_TO_BE_DISPLAYED'))
AND poradie = 60;

commit;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 5;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 60
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 6;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 6
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 50;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_INTERNAL_VEHICLE_FACILITY'))
AND poradie = 60;

commit;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


UPDATE cud_ciselnik_stlpec_gui
SET poradie = 30
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 3;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 40
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 4;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 50
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 5;

commit;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 4
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 30;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 5
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 40;

UPDATE cud_ciselnik_stlpec_gui
SET poradie = 3
WHERE id_ciselnik_gui = (select max(ciselnik_gui_id) from cud_ciselnik_gui where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_SPECIAL_SERVICE_DESCR_CODE'))
AND poradie = 50;

commit;

