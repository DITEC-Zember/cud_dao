SELECT *
FROM cud_ciselnik_gui
WHERE id_ciselnik IN ( SELECT ciselnik_id
                      FROM cud_ciselnik
                      WHERE tabulka IN ('T_ZAKLADNE_INFORMACIE_O_PRM', 'T_NASTUPISTE_PRM', 'T_OZNACENIA_PRM', 'T_DYNAMICKE_INFORMACIE_PRM', 'T_INFO_PULTY_PRM', 'T_PCL_PRM', 'T_TOALETY_PRM', 'T_PARKOVISKO_PRM', 'T_INE_DP_PRM')
                    )
      AND id_transakcia_zrusene IS NULL and stav = 'PUB'
      


      