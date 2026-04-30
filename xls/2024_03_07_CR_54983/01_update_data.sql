UPDATE cud_ciselnik_stlpec
SET
  nazov = 'PRISTUP_BEZ_SCHOD_Z_REFER'
WHERE nazov = 'PRISUP_BEZ_SCHOD_Z_REFER'
      AND id_ciselnik = ( SELECT t1.ciselnik_id FROM cud_ciselnik t1 WHERE t1.tabulka = 'T_INE_DP_PRM' AND t1.id_transakcia_zrusene IS NULL );
COMMIT;


ALTER TABLE T_INE_DP_PRM RENAME COLUMN PRISUP_BEZ_SCHOD_Z_REFER TO PRISTUP_BEZ_SCHOD_Z_REFER;