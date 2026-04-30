SELECT 'DROP SEQUENCE ' || sequence_name || ';' FROM user_sequences WHERE sequence_name LIKE 'T_%'
UNION
SELECT 'DROP TABLE ' || table_name || ' cascade constraints;' FROM all_tables WHERE owner = 'CUD' AND table_name LIKE 'T_%'
UNION
SELECT 'PURGE TABLE ' || table_name || ';' FROM all_tables WHERE owner = 'CUD' AND table_name LIKE 'T_%';
