SELECT 'D' AS xls_operacia,
       '1.7.2023' AS xls_platnost_od,
       un_a_kemler_kod_id
FROM t_un_a_kemler_kod
WHERE platnost_od <= TO_DATE('01.07.2023', 'DD.MM.YYYY')
      AND ( platnost_do >= TO_DATE('01.07.2023', 'DD.MM.YYYY')
            OR platnost_do IS NULL )
      AND zmaz = 'F';
