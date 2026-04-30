-- vytvoria sa nove obrazovky 'T_DOPRAVNY_BOD', 'T_ZAKLADNE_INFORMACIE_O_PRM'

-- update atributov
UPDATE cud_ciselnik_stlpec_gui
SET dlzka = 8,
    decimals = 6
WHERE id_ciselnik_gui IN ( SELECT t3.ciselnik_gui_id
                           FROM cud_ciselnik_gui t3
                           WHERE t3.id_ciselnik IN ( SELECT t2.ciselnik_id
                                                     FROM cud_ciselnik t2
                                                     WHERE t2.tabulka IN (
                                                       'T_DOPRAVNY_BOD',
                                                       'T_ZAKLADNE_INFORMACIE_O_PRM'
                                                     )
                                                   )
                                 AND t3.id_transakcia_zrusene IS NULL
                                 AND t3.stav = 'DRAFT'
                         )
      AND id_ciselnik_stlpec IN ( SELECT t1.ciselnik_stlpec_id
                            FROM cud_ciselnik_stlpec t1
                            WHERE t1.nazov IN (
                              'GPS_DLZKA',
                              'GPS_SIRKA'
                            )
                                  AND t1.id_transakcia_zrusene IS NULL
                                );
commit;                                

-- nastavia sa platnosti na 1.9.2024

-- ukonci sa platnost obrazovky na 1.9.2024
UPDATE cud_ciselnik_gui
SET
  platnost_do = TO_DATE('31.08.2024', 'DD.MM.YYYY')
WHERE ciselnik_gui_id = ( SELECT MAX(t2.ciselnik_gui_id)
                          FROM cud_ciselnik_gui t2
                          WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id
                                                   FROM cud_ciselnik t1
                                                   WHERE t1.tabulka = 'T_TRAIN_CC_SYST'
                                                 )
                                AND t2.id_transakcia_zrusene IS NULL
                                AND t2.stav = 'PUB'
                        );                    
commit;                        

-- zneaktivnenie ciselnika                   
UPDATE cud_ciselnik SET  aktivny = 'F' WHERE tabulka = 'T_TRAIN_CC_SYST';
COMMIT;
                   