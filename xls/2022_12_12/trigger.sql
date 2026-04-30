CREATE OR REPLACE TRIGGER insert_pk_t_produkt_hist_id BEFORE
  INSERT ON t_produkt
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_produkt_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_produkt_factor_hist_id BEFORE
  INSERT ON t_produkt_factor
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_produkt_factor_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_neskon_kapacita_hist_id BEFORE
  INSERT ON t_neskon_kapacita
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_neskon_kapacita_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_run_resistence_hist_id BEFORE
  INSERT ON t_cp_run_resistence
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_run_resistence_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_sluzby_hist_id BEFORE
  INSERT ON t_cp_sluzby
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_sluzby_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_objednavatel_hist_id BEFORE
  INSERT ON t_cp_objednavatel
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_objednavatel_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_ids_hist_id BEFORE
  INSERT ON t_cp_ids
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_ids_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_linky_hist_id BEFORE
  INSERT ON t_cp_linky
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_linky_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_info_v_hlavicke_vlaku_hist_id BEFORE
  INSERT ON t_cp_info_v_hlavicke_vlaku
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_info_v_hlavicke_vlaku_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_info_pod_tabulou_hist_id BEFORE
  INSERT ON t_cp_info_pod_tabulou
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_info_pod_tabulou_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_cp_centralne_poznamky_hist_id BEFORE
  INSERT ON t_cp_centralne_poznamky
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_cp_centralne_poznamky_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_traffic_type_hist_id BEFORE
  INSERT ON t_traffic_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_traffic_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

