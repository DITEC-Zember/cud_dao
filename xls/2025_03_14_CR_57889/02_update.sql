
	
-- najskor treba vytvorit novy ciselnik v stave DRAFT
update cud_ciselnik_stlpec_gui set poradie = poradie + 2 where poradie > 8 and id_ciselnik_gui = (SELECT t2.ciselnik_gui_id FROM cud_ciselnik_gui t2 WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOPRAVNY_BOD' AND t1.id_transakcia_zrusene IS NULL ) AND t2.id_transakcia_zrusene IS NULL AND t2.stav = 'DRAFT');
commit;
