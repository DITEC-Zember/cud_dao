
UPDATE cud_ciselnik_stlpec
SET dlzka = 9,
    decimals = 2
WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_KATEGORIA_ZATAZENIA' ) AND nazov = 'VZDIAL_NAPRAV_M';
COMMIT;


UPDATE cud_ciselnik_stlpec_gui
SET dlzka = 9,
    decimals = 2
WHERE id_ciselnik_gui IN ( SELECT t1.ciselnik_gui_id FROM cud_ciselnik_gui t1 WHERE t1.id_ciselnik = ( SELECT t2.ciselnik_id FROM cud_ciselnik t2 WHERE t2.tabulka = 'T_KATEGORIA_ZATAZENIA' ) AND t1.id_transakcia_zrusene IS NULL )
      AND id_ciselnik_stlpec IN ( SELECT t2.ciselnik_stlpec_id FROM cud_ciselnik_stlpec t2 WHERE t2.nazov = 'VZDIAL_NAPRAV_M' AND t2.id_transakcia_zrusene IS NULL );

COMMIT;


UPDATE cud_ciselnik_stlpec
SET  nadpis = 'Vzdialenosù medzi n·pravami podvozku'
WHERE id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_KATEGORIA_ZATAZENIA') AND nazov = 'VZDIAL_NAPRAV_M';

UPDATE cud_ciselnik_stlpec_gui
SET  nadpis = 'Vzdialenosù medzi n·pravami podvozku'
WHERE id_ciselnik_stlpec IN ( SELECT ciselnik_stlpec_id FROM cud_ciselnik_stlpec WHERE id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_KATEGORIA_ZATAZENIA') AND nazov = 'VZDIAL_NAPRAV_M' );

COMMIT;
