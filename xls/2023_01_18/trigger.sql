CREATE OR REPLACE TRIGGER insert_pk_t_vymedzeny_usek_hkv_hist_id BEFORE
  INSERT ON t_vymedzeny_usek_hkv
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_vymedzeny_usek_hkv_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_vymedzeny_usek_ts_hist_id BEFORE
  INSERT ON t_vymedzeny_usek_ts
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_vymedzeny_usek_ts_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
