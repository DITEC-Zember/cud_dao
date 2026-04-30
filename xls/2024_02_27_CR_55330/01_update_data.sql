UPDATE cud_ciselnik_stlpec
SET
  fk1_fk_nazov = 'SKUPINA'
WHERE id_ciselnik = ( SELECT t1.ciselnik_id
                      FROM cud_ciselnik t1
                      WHERE t1.tabulka = 'T_TYP_TRATOVEHO_STROJA'
                            AND t1.id_transakcia_zrusene IS NULL
                    )
      AND nazov = 'ID_SKUPINA_Z3'
      AND id_transakcia_zrusene IS NULL;
commit;      


UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 1
WHERE id_ciselnik_gui = ( SELECT t1.ciselnik_gui_id FROM cud_ciselnik_gui t1 WHERE t1.id_ciselnik = ( SELECT t2.ciselnik_id FROM cud_ciselnik t2 WHERE t2.tabulka = 'T_TYP_TRATOVEHO_STROJA' AND t2.id_transakcia_zrusene IS NULL ) AND t1.id_transakcia_zrusene IS NULL AND t1.stav = 'DRAFT' )
      AND poradie >= 35
      AND id_transakcia_zrusene IS NULL;
commit;      

