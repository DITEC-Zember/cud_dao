CREATE OR REPLACE TRIGGER insert_pk_t_air_brake_type_hist_id BEFORE
  INSERT ON t_air_brake_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_air_brake_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_brake_special_characteristic_hist_id BEFORE
  INSERT ON t_brake_special_characteristic
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_brake_special_characteristic_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_brake_type_hist_id BEFORE
  INSERT ON t_brake_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_brake_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_braking_power_variation_dev_hist_id BEFORE
  INSERT ON t_braking_power_variation_dev
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_braking_power_variation_dev_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_commercial_traffic_type_hist_id BEFORE
  INSERT ON t_commercial_traffic_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_commercial_traffic_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_consignment_order_type_hist_id BEFORE
  INSERT ON t_consignment_order_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_consignment_order_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_coupling_type_hist_id BEFORE
  INSERT ON t_coupling_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_coupling_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_danger_label_hist_id BEFORE
  INSERT ON t_danger_label
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_danger_label_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_facility_type_descript_code_hist_id BEFORE
  INSERT ON t_facility_type_descript_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_facility_type_descript_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_hand_brake_type_hist_id BEFORE
  INSERT ON t_hand_brake_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_hand_brake_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_characteristic_descript_code_hist_id BEFORE
  INSERT ON t_characteristic_descript_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_characteristic_descript_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_info_goods_shape_type_danger_hist_id BEFORE
  INSERT ON t_info_goods_shape_type_danger
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_info_goods_shape_type_danger_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_interop_capability_hist_id BEFORE
  INSERT ON t_interop_capability
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_interop_capability_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_livestock_or_people_indic_hist_id BEFORE
  INSERT ON t_livestock_or_people_indic
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_livestock_or_people_indic_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_load_table_stars_hist_id BEFORE
  INSERT ON t_load_table_stars
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_load_table_stars_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_message_status_hist_id BEFORE
  INSERT ON t_message_status
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_message_status_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_mrn_type_hist_id BEFORE
  INSERT ON t_mrn_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_mrn_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_normal_loading_gauge_hist_id BEFORE
  INSERT ON t_normal_loading_gauge
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_normal_loading_gauge_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_packing_group_hist_id BEFORE
  INSERT ON t_packing_group
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_packing_group_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_refusal_code_hist_id BEFORE
  INSERT ON t_refusal_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_refusal_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_route_class_hist_id BEFORE
  INSERT ON t_route_class
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_route_class_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_special_service_descr_code_hist_id BEFORE
  INSERT ON t_special_service_descr_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_special_service_descr_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_traction_mode_hist_id BEFORE
  INSERT ON t_traction_mode
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_traction_mode_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_traction_type_hist_id BEFORE
  INSERT ON t_traction_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_traction_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_cc_system_code_hist_id BEFORE
  INSERT ON t_train_cc_system_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_cc_system_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_radio_system_hist_id BEFORE
  INSERT ON t_train_radio_system
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_radio_system_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_type_hist_id BEFORE
  INSERT ON t_train_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_removable_accessories_hist_id BEFORE
  INSERT ON t_type_removable_accessories
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_removable_accessories_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_wheel_set_transform_method_hist_id BEFORE
  INSERT ON t_wheel_set_transform_method
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_wheel_set_transform_method_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_activity_type_hist_id BEFORE
  INSERT ON t_train_activity_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_activity_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_consignment_type_code_hist_id BEFORE
  INSERT ON t_consignment_type_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_consignment_type_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_info_index_hist_id BEFORE
  INSERT ON t_info_index
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_info_index_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_restriction_codes_hist_id BEFORE
  INSERT ON t_restriction_codes
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_restriction_codes_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_running_status_hist_id BEFORE
  INSERT ON t_running_status
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_running_status_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_cc_syst_hist_id BEFORE
  INSERT ON t_train_cc_syst
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_cc_syst_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_of_imharmonization_code_hist_id BEFORE
  INSERT ON t_type_of_imharmonization_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_of_imharmonization_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_of_information_code_hist_id BEFORE
  INSERT ON t_type_of_information_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_of_information_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_of_request_code_hist_id BEFORE
  INSERT ON t_type_of_request_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_of_request_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_of_ruharmonization_code_hist_id BEFORE
  INSERT ON t_type_of_ruharmonization_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_of_ruharmonization_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_unit_type_hist_id BEFORE
  INSERT ON t_unit_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_unit_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_journey_location_type_code_hist_id BEFORE
  INSERT ON t_journey_location_type_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_journey_location_type_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_location_subsid_type_code_hist_id BEFORE
  INSERT ON t_location_subsid_type_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_location_subsid_type_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_timing_qualifier_code_hist_id BEFORE
  INSERT ON t_timing_qualifier_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_timing_qualifier_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_error_code_hist_id BEFORE
  INSERT ON t_error_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_error_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_message_type_hist_id BEFORE
  INSERT ON t_message_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_message_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_commercial_service_code_hist_id BEFORE
  INSERT ON t_commercial_service_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_commercial_service_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_information_to_be_displayed_hist_id BEFORE
  INSERT ON t_information_to_be_displayed
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_information_to_be_displayed_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_internal_fitting_defect_code_hist_id BEFORE
  INSERT ON t_internal_fitting_defect_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_internal_fitting_defect_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_internal_vehicle_facility_hist_id BEFORE
  INSERT ON t_internal_vehicle_facility
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_internal_vehicle_facility_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_object_info_type_hist_id BEFORE
  INSERT ON t_object_info_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_object_info_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_transport_restriction_code_hist_id BEFORE
  INSERT ON t_transport_restriction_code
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_transport_restriction_code_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_train_description_manner_hist_id BEFORE
  INSERT ON t_train_description_manner
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_train_description_manner_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_direction_of_description_hist_id BEFORE
  INSERT ON t_direction_of_description
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_direction_of_description_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_trainset_orientation_hist_id BEFORE
  INSERT ON t_trainset_orientation
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_trainset_orientation_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_composition_descript_manner_hist_id BEFORE
  INSERT ON t_composition_descript_manner
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_composition_descript_manner_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_of_heating_hist_id BEFORE
  INSERT ON t_type_of_heating
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_of_heating_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_action_update_link_framework_hist_id BEFORE
  INSERT ON t_action_update_link_framework
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_action_update_link_framework_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_status_update_link_framework_hist_id BEFORE
  INSERT ON t_status_update_link_framework
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_status_update_link_framework_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_procedure_upd_link_framework_hist_id BEFORE
  INSERT ON t_procedure_upd_link_framework
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_procedure_upd_link_framework_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_type_update_link_framework_hist_id BEFORE
  INSERT ON t_type_update_link_framework
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_type_update_link_framework_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_loading_gauge_hist_id BEFORE
  INSERT ON t_loading_gauge
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_loading_gauge_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_error_type_of_error_hist_id BEFORE
  INSERT ON t_error_type_of_error
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_error_type_of_error_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_error_severity_hist_id BEFORE
  INSERT ON t_error_severity
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_error_severity_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_company_hist_id BEFORE
  INSERT ON t_company
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_company_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_primary_location_hist_id BEFORE
  INSERT ON t_primary_location
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_primary_location_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_subsidiary_location_hist_id BEFORE
  INSERT ON t_subsidiary_location
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_subsidiary_location_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_restriction_or_prohibition_hist_id BEFORE
  INSERT ON t_restriction_or_prohibition
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_restriction_or_prohibition_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_country_hist_id BEFORE
  INSERT ON t_country
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_country_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_dovod_tcr_hist_id BEFORE
  INSERT ON t_dovod_tcr
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dovod_tcr_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_dovod_zakazu_jazdy_hist_id BEFORE
  INSERT ON t_dovod_zakazu_jazdy
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dovod_zakazu_jazdy_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_irn_event_cause_hist_id BEFORE
  INSERT ON t_irn_event_cause
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_irn_event_cause_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_subsidiary_type_hist_id BEFORE
  INSERT ON t_subsidiary_type
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_subsidiary_type_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_typ_navestidla_hist_id BEFORE
  INSERT ON t_typ_navestidla
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_navestidla_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_typ_obmedzenia_hist_id BEFORE
  INSERT ON t_typ_obmedzenia
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_typ_obmedzenia_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_vds_poznamka_hist_id BEFORE
  INSERT ON t_vds_poznamka
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_vds_poznamka_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/

CREATE OR REPLACE TRIGGER insert_pk_t_dovod_potr_hist_id BEFORE
  INSERT ON t_dovod_potr
  FOR EACH ROW
BEGIN
  IF inserting THEN
    IF :new.hist_id IS NULL THEN
      SELECT t_dovod_potr_seq.NEXTVAL
      INTO :new.hist_id
      FROM dual;

    END IF;

  END IF;
END;
/
