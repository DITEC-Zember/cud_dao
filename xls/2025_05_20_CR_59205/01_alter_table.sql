1.

-- na DB sa modifikuje rozsah
ALTER TABLE t_dopravca_mk MODIFY interna_skratka NVARCHAR2(32);
ALTER TABLE t_dopravca_mk MODIFY skratka_rics NVARCHAR2(32);

2.
-- treba vytvorit nove gui pre tabulku: T_DOPRAVCA_MK

3.

-- odstrania sa nepotrebne atributy
DELETE FROM cud_ciselnik_stlpec_gui
WHERE id_ciselnik_gui = ( SELECT ciselnik_gui_id
                          FROM cud_ciselnik_gui
                          WHERE id_ciselnik = ( SELECT ciselnik_id
                                                FROM cud_ciselnik
                                                WHERE cud_ciselnik.tabulka = 'T_DOPRAVCA_MK'
                                                      AND cud_ciselnik.id_transakcia_zrusene IS NULL
                                              )
                                AND cud_ciselnik_gui.stav = 'DRAFT'
                                AND cud_ciselnik_gui.id_transakcia_zrusene IS NULL
                        )
      AND id_ciselnik_stlpec NOT IN ( SELECT ciselnik_stlpec_id
                                FROM cud_ciselnik_stlpec
                                WHERE nazov IN ( 'DOPRAVCA_MK_ID', 'CISLO_MK', 'CISLO_RICS', 'INTERNA_SKRATKA', 'SKRATKA_RICS', 'ID_KRAJINA_REG', 'ID_TYP_SPOLOC', 'OD', 'ND', 'NAZOV', 'ID_KRAJINA', 'DODATKOVA_TRASA', 'KATALOG', 'TESTOVACI' )
                                      AND id_ciselnik = ( SELECT ciselnik_id
                                                    FROM cud_ciselnik
                                                    WHERE tabulka = 'T_DOPRAVCA_MK'
                                                          AND cud_ciselnik.id_transakcia_zrusene IS NULL
                                                        )
                                    );
commit;
