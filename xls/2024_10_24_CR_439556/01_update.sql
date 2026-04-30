UPDATE cud_ciselnik_stlpec_gui
SET
  nadpis = 'Vnútroštátna PS'
WHERE ciselnik_stlpec_gui_id = ( SELECT sg.ciselnik_stlpec_gui_id
                                 FROM cud_ciselnik_stlpec_gui sg
                                 LEFT JOIN cud_ciselnik_gui g ON sg.id_ciselnik_gui = g.ciselnik_gui_id
                                 LEFT JOIN cud_ciselnik_stlpec st ON sg.id_ciselnik_stlpec = st.ciselnik_stlpec_id
                                 WHERE g.id_ciselnik = ( SELECT t1.ciselnik_id
                                                         FROM cud_ciselnik t1
                                                         WHERE t1.tabulka = 'T_HRANICNY_PRIECHOD'
                                                               AND t1.id_transakcia_zrusene IS NULL
                                                       )
                                       AND st.nazov = 'ID_DOPRAVNY_BOD'
                                       AND g.stav = 'PUB'
                                       AND g.platnost_do IS NULL
                                       AND sg.poradie = 3
                                       AND g.id_transakcia_zrusene IS NULL
                                       AND sg.id_transakcia_zrusene IS NULL
                               );      
commit;                               
                               
UPDATE cud_ciselnik_stlpec_gui
SET
  nadpis = 'Zahranièná PS'
WHERE ciselnik_stlpec_gui_id = ( SELECT sg.ciselnik_stlpec_gui_id
                                 FROM cud_ciselnik_stlpec_gui sg
                                 LEFT JOIN cud_ciselnik_gui g ON sg.id_ciselnik_gui = g.ciselnik_gui_id
                                 LEFT JOIN cud_ciselnik_stlpec st ON sg.id_ciselnik_stlpec = st.ciselnik_stlpec_id
                                 WHERE g.id_ciselnik = ( SELECT t1.ciselnik_id
                                                         FROM cud_ciselnik t1
                                                         WHERE t1.tabulka = 'T_HRANICNY_PRIECHOD'
                                                               AND t1.id_transakcia_zrusene IS NULL
                                                       )
                                       AND st.nazov = 'ZAHRANICNA_PPS'
                                       AND g.stav = 'PUB'
                                       AND g.platnost_do IS NULL
                                       AND sg.poradie = 4
                                       AND g.id_transakcia_zrusene IS NULL
                                       AND sg.id_transakcia_zrusene IS NULL
                               );
commit;      