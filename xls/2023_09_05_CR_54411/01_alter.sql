
UPDATE cud_ciselnik_stlpec
SET dlzka = 6
WHERE id_ciselnik = (select ciselnik_id from cud_ciselnik where tabulka = 'T_DOVOD_POTR' and id_transakcia_zrusene is null) and nazov = 'KOD' and id_transakcia_zrusene is null;
commit;


UPDATE cud_ciselnik_stlpec_gui
SET
  dlzka = 6
WHERE id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id)
                          FROM cud_ciselnik_gui t2
                          WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id
                                                   FROM cud_ciselnik t1
                                                   WHERE t1.tabulka = 'T_DOVOD_POTR'
                                                         AND t1.id_transakcia_zrusene IS NULL
                                                 )
                                AND t2.id_transakcia_zrusene IS NULL
                        )
      AND id_ciselnik_stlpec = ( SELECT t3.ciselnik_stlpec_id
                           FROM cud_ciselnik_stlpec t3
                           WHERE t3.id_ciselnik = ( SELECT t4.ciselnik_id
                                                    FROM cud_ciselnik t4
                                                    WHERE t4.tabulka = 'T_DOVOD_POTR'
                                                          AND t4.id_transakcia_zrusene IS NULL
                                                  )
                                 AND t3.nazov = 'KOD'
                                 AND t3.id_transakcia_zrusene IS NULL
                               )
      AND id_transakcia_zrusene IS NULL;
commit;
