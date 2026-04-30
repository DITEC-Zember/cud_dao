CREATE OR REPLACE TRIGGER insert_pk_t_spriazneny_rad_hist_id BEFORE
  INSERT ON t_spriazneny_rad
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_spriazneny_rad_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
