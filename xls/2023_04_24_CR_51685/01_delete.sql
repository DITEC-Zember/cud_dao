delete from T_TRAIN_ACTIVITY_TYPE;
commit;

delete from cud_zmena_stav_hist where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_TRAIN_ACTIVITY_TYPE');
commit;

delete from cud_zmena_stlpec where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_TRAIN_ACTIVITY_TYPE');
commit;

delete from cud_wf_todo where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_TRAIN_ACTIVITY_TYPE');
commit;

delete from cud_zmena where id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_TRAIN_ACTIVITY_TYPE');
commit;
