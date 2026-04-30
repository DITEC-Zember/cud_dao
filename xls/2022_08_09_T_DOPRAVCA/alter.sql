-- zmena DB_TYP T_DOPRAVCA.PLATNOST_OSVEDCENIA

-- pomocny stlpec
ALTER TABLE t_dopravca ADD PLATNOST_OSVEDCENIA_2 TIMESTAMP(6);

-- transformacia dat - treba spustit tuto triedu v jave
-- sk.ditec.cud.transform.TDopravcaClass.java

-- odstranenie povodnych zaznamov
UPDATE t_dopravca SET platnost_osvedcenia = NULL;
COMMIT;

--  zmena DB_TYP povodneho stlpca
ALTER TABLE t_dopravca MODIFY (  platnost_osvedcenia TIMESTAMP(6) );

-- kopirovanie zaznamov
UPDATE t_dopravca SET platnost_osvedcenia = platnost_osvedcenia_2;
COMMIT;

-- odstranenie pomocneho stlpca
ALTER TABLE t_dopravca DROP COLUMN platnost_osvedcenia_2;

-- aktualizacia metadat
UPDATE cud_ciselnik_stlpec SET db_typ = 'Date' WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOPRAVCA' AND cud_ciselnik.id_transakcia_zrusene IS NULL ) AND nazov = 'PLATNOST_OSVEDCENIA';
commit;

UPDATE cud_ciselnik_stlpec_gui SET db_typ = 'Date' WHERE id_ciselnik_stlpec = ( SELECT ciselnik_stlpec_id FROM cud_ciselnik_stlpec WHERE id_ciselnik = ( SELECT ciselnik_id FROM cud_ciselnik WHERE tabulka = 'T_DOPRAVCA' AND cud_ciselnik.id_transakcia_zrusene IS NULL ) AND nazov = 'PLATNOST_OSVEDCENIA' );
commit;

