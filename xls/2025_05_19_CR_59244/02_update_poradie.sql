
UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 1
WHERE poradie >= 11      
AND 
      id_ciselnik_gui = (SELECT cud_ciselnik_gui.ciselnik_gui_id FROM cud_ciselnik_gui WHERE cud_ciselnik_gui.id_ciselnik = ( SELECT cud_ciselnik.ciselnik_id FROM cud_ciselnik WHERE cud_ciselnik.tabulka = 'T_DOPRAVNY_USEK' AND cud_ciselnik.id_transakcia_zrusene IS NULL ) AND cud_ciselnik_gui.stav = 'DRAFT' AND cud_ciselnik_gui.id_transakcia_zrusene IS NULL);
COMMIT;
