SELECT typ_tratoveho_stroja_id,
       brzdiaca_hmotnost_g_old as brzdiaca_hmotnost_g,
       brzdiaca_hmotnost_p_old as brzdiaca_hmotnost_p,
       brzdiaca_hmotnost_r_old as brzdiaca_hmotnost_r,
       brzdiaca_hmotnost_ge_old as brzdiaca_hmotnost_ge,
       brzdiaca_hmotnost_pe_old as brzdiaca_hmotnost_pe,
       brzdiaca_hmotnost_re_old as brzdiaca_hmotnost_re,
       brzdiaca_hmotnost_r_brzdy_old as brzdiaca_hmotnost_r_brzdy
FROM t_typ_tratoveho_stroja
WHERE platnost_od <= to_timestamp('04.05.2023', 'DD.MM.YYYY')
      AND ( ( platnost_do >= to_timestamp('04.05.2023', 'DD.MM.YYYY') )
            OR ( platnost_do IS NULL ) )
      AND zmaz = 'F';      
      
SELECT typ_tratoveho_stroja_id,
       hmotnost_old AS hmostnost,
       brzdiaca_hmotnost_g_old AS brzdiaca_hmotnost_g,
       brzdiaca_hmotnost_p_old AS brzdiaca_hmotnost_p,
       brzdiaca_hmotnost_r_old AS brzdiaca_hmotnost_r,
       brzdiaca_hmotnost_ge_old AS brzdiaca_hmotnost_ge,
       brzdiaca_hmotnost_pe_old AS brzdiaca_hmotnost_pe,
       brzdiaca_hmotnost_re_old AS brzdiaca_hmotnost_re,
       brzdiaca_hmotnost_r_brzdy_old AS brzdiaca_hmotnost_r_brzdy
FROM t_typ_tratoveho_stroja
WHERE platnost_od <= to_timestamp('04.05.2023', 'DD.MM.YYYY')
      AND ( ( platnost_do >= to_timestamp('04.05.2023', 'DD.MM.YYYY') )
            OR ( platnost_do IS NULL ) )
      AND zmaz = 'F';
 