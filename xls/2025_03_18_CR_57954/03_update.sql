UPDATE cud_ciselnik_stlpec_gui
SET
  list_zobrazenie = 'T'
WHERE ciselnik_stlpec_gui_id = ( SELECT t3.ciselnik_stlpec_gui_id
                                 FROM cud_ciselnik_stlpec_gui t3
                                 WHERE t3.id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id)
                                                              FROM cud_ciselnik_gui t2
                                                              WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id
                                                                                       FROM cud_ciselnik t1
                                                                                       WHERE t1.tabulka = 'T_TRATOVY_STROJ'
                                                                                             AND t1.id_transakcia_zrusene IS NULL
                                                                                     )
                                                                    AND t2.id_transakcia_zrusene IS NULL
                                                                    AND t2.stav = 'PUB'
                                                            )
                                       AND fk1_fk_nazov = 'TRK_AC_25_KV_50HZ'
                               );
COMMIT;