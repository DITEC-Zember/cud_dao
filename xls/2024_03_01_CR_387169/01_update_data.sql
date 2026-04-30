ALTER TABLE T_DOPRAVNY_BOD ADD CRD_ZAC TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD CRD_KON TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD OTVORENY_PRE_OD_ZAC TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD OTVORENY_PRE_OD_KON TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD OTVORENY_PRE_ND_ZAC TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD OTVORENY_PRE_ND_KON TIMESTAMP(6);
ALTER TABLE T_DOPRAVNY_BOD ADD POZNAMKA NVARCHAR2(255);

ALTER TABLE T_STANICNA_KOLAJ ADD CRD_ZAC TIMESTAMP(6);
ALTER TABLE T_STANICNA_KOLAJ ADD CRD_KON TIMESTAMP(6);
ALTER TABLE T_STANICNA_KOLAJ ADD NAZOV NVARCHAR2(255);


-- ciselnik T_DOPRAVNY_BOD musi byt v stave == DRAFT

UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 2
WHERE id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id) FROM cud_ciselnik_gui t2 WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOPRAVNY_BOD' AND t1.id_transakcia_zrusene IS NULL ) AND t2.stav = 'DRAFT' AND ( t2.platnost_od <= t2.platnost_do OR t2.platnost_do IS NULL ) )
      AND poradie >= 4
      AND id_transakcia_zrusene IS NULL;
commit;      

UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 2
WHERE id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id) FROM cud_ciselnik_gui t2 WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOPRAVNY_BOD' AND t1.id_transakcia_zrusene IS NULL ) AND t2.stav = 'DRAFT' AND ( t2.platnost_od <= t2.platnost_do OR t2.platnost_do IS NULL ) )
      AND poradie >= 37
      AND id_transakcia_zrusene IS NULL;
commit;      

UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 2
WHERE id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id) FROM cud_ciselnik_gui t2 WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_DOPRAVNY_BOD' AND t1.id_transakcia_zrusene IS NULL ) AND t2.stav = 'DRAFT' AND ( t2.platnost_od <= t2.platnost_do OR t2.platnost_do IS NULL ) )
      AND poradie >= 41
      AND id_transakcia_zrusene IS NULL;
commit;      



-- ciselnik T_STANICNA_KOLAJ musi byt v stave == DRAFT

UPDATE cud_ciselnik_stlpec_gui
SET
  poradie = poradie + 3
WHERE id_ciselnik_gui = ( SELECT MAX(t2.ciselnik_gui_id) FROM cud_ciselnik_gui t2 WHERE t2.id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_STANICNA_KOLAJ' AND t1.id_transakcia_zrusene IS NULL ) AND t2.stav = 'DRAFT' AND ( t2.platnost_od <= t2.platnost_do OR t2.platnost_do IS NULL ) )
      AND poradie >= 7
      AND id_transakcia_zrusene IS NULL;
commit;  

