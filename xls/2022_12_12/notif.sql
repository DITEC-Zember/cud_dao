UPDATE cud_wf_def
SET
  email_send = 'F'
WHERE id_ciselnik IN ( SELECT ciselnik_id
                       FROM cud_ciselnik
                       WHERE tabulka IN (
                         'T_PRODUKT_FACTOR',
                         'T_PRODUKT',
                         'T_NESKON_KAPACITA',
                         'T_CP_RUN_RESISTENCE',
                         'T_CP_SLUZBY',
                         'T_CP_OBJEDNAVATEL',
                         'T_CP_INFO_V_HLAVICKE_VLAKU',
                         'T_CP_INFO_POD_TABULOU',
                         'T_CP_IDS',
                         'T_CP_LINKY',
                         'T_TRAFFIC_TYPE',
                         'T_CP_CENTRALNE_POZNAMKY',
                         'T_DRUH_VLAKU',
                         'T_URCENIE_VLAKU'
                       )
                     );
commit;                     