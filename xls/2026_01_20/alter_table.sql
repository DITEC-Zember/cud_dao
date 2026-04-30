desc T_SKUPINA_PRECHOD_HKV;

ALTER TABLE T_SKUPINA_PRECHOD_HKV ADD (cislo_temp NVARCHAR2(4));

UPDATE T_SKUPINA_PRECHOD_HKV SET cislo_temp = TO_CHAR(cislo);
commit;

UPDATE T_SKUPINA_PRECHOD_HKV SET cislo = null;
commit;

ALTER TABLE T_SKUPINA_PRECHOD_HKV MODIFY cislo NVARCHAR2(4);

UPDATE T_SKUPINA_PRECHOD_HKV SET cislo = cislo_temp;
commit;

ALTER TABLE T_SKUPINA_PRECHOD_HKV DROP COLUMN cislo_temp;

------------------------------------------------------------------------------------------------------------------------------------------

desc T_DRUH_KOM_SYSTEMU;

ALTER TABLE T_DRUH_KOM_SYSTEMU ADD (cislo_temp NVARCHAR2(4));

UPDATE T_DRUH_KOM_SYSTEMU SET cislo_temp = TO_CHAR(cislo);
commit;

UPDATE T_DRUH_KOM_SYSTEMU SET cislo = null;
commit;

ALTER TABLE T_DRUH_KOM_SYSTEMU MODIFY cislo NVARCHAR2(4);

UPDATE T_DRUH_KOM_SYSTEMU SET cislo = cislo_temp;
commit;

ALTER TABLE T_DRUH_KOM_SYSTEMU DROP COLUMN cislo_temp;



------------------------------------------------------------------------------------------------------------------------------------------

desc T_DRUH_KONTROL_SYSTEMU;

ALTER TABLE T_DRUH_KONTROL_SYSTEMU ADD (cislo_temp NVARCHAR2(4));

UPDATE T_DRUH_KONTROL_SYSTEMU SET cislo_temp = TO_CHAR(cislo);
commit;

UPDATE T_DRUH_KONTROL_SYSTEMU SET cislo = null;
commit;

ALTER TABLE T_DRUH_KONTROL_SYSTEMU MODIFY cislo NVARCHAR2(4);

UPDATE T_DRUH_KONTROL_SYSTEMU SET cislo = cislo_temp;
commit;

ALTER TABLE T_DRUH_KONTROL_SYSTEMU DROP COLUMN cislo_temp;

------------------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE  SYNONYM PIS_KMD.T_DRUH_KOM_SYSTEMU FOR IP.PIS_KMD_DRUH_KOM_SYSTEMU;
CREATE OR REPLACE  SYNONYM PIS_KMD.T_DRUH_KONTROL_SYSTEMU FOR IP.PIS_KMD_DRUH_KONTROL_SYSTEMU;
CREATE OR REPLACE  SYNONYM PIS_KMD.T_SKUPINA_PRECHOD_HKV FOR IP.PIS_KMD_SKUPINA_PRECHOD_HKV;