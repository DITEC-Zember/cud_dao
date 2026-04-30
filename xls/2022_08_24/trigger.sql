CREATE OR REPLACE TRIGGER insert_pk_t_obmedzenie_prm_hist_id BEFORE
  INSERT ON t_obmedzenie_prm
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_obmedzenie_prm_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_miesto_stretnutia_prm_hist_id BEFORE
  INSERT ON t_miesto_stretnutia_prm
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_miesto_stretnutia_prm_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_palubne_zariadenia_prm_hist_id BEFORE
  INSERT ON t_palubne_zariadenia_prm
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_palubne_zariadenia_prm_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_typ_zariadenia_prm_hist_id BEFORE
  INSERT ON t_typ_zariadenia_prm
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_zariadenia_prm_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_lokalne_zariadenia_prm_hist_id BEFORE
  INSERT ON t_lokalne_zariadenia_prm
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_lokalne_zariadenia_prm_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

