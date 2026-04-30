UPDATE cud_ciselnik_stlpec
SET  poradie = poradie + 1
WHERE id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DEFINICNY_USEK' AND t1.id_transakcia_zrusene IS NULL )
      AND poradie >= 20;
COMMIT;


UPDATE cud_ciselnik_stlpec_gui
SET  poradie = poradie + 1
WHERE id_ciselnik_gui = ( SELECT t1.ciselnik_gui_id
                          FROM cud_ciselnik_gui t1
                          WHERE t1.id_ciselnik = ( SELECT t2.ciselnik_id FROM cud_ciselnik t2 WHERE t2.tabulka = 'T_DEFINICNY_USEK' AND t2.id_transakcia_zrusene IS NULL)
                                AND stav = 'DRAFT'
                                AND t1.id_transakcia_zrusene IS NULL
                        )
      AND poradie >= 13;
COMMIT;