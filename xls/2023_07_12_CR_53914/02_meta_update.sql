update cud_ciselnik_stlpec
set dlzka = 700
WHERE id_ciselnik = ( SELECT ciselnik_id
                      FROM cud_ciselnik
                      WHERE tabulka = 'T_UN_A_KEMLER_KOD'
                    )
      AND id_transakcia_zrusene IS NULL
      AND nazov = 'NAZOV_LATKY';
commit;      

UPDATE cud_ciselnik_stlpec_gui
SET  dlzka = 700
WHERE id_ciselnik_gui = ( SELECT MAX(k2.ciselnik_gui_id)
                          FROM cud_ciselnik_gui k2
                          WHERE k2.id_ciselnik = ( SELECT k1.ciselnik_id
                                                   FROM cud_ciselnik k1
                                                   WHERE k1.tabulka = 'T_UN_A_KEMLER_KOD'
                                                         AND k1.id_transakcia_zrusene IS NULL
                                                 )
                                AND k2.id_transakcia_zrusene IS NULL
                        )
      AND id_ciselnik_stlpec = ( SELECT ciselnik_stlpec_id
                           FROM cud_ciselnik_stlpec
                           WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_UN_A_KEMLER_KOD'
                                               ) 
                           AND id_transakcia_zrusene IS NULL AND nazov = 'NAZOV_LATKY'
                               );

COMMIT;