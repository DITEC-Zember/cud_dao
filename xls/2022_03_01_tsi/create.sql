CREATE TABLE t_air_brake_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  air_brake_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_air_brake_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_brake_special_characteristic (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  brake_special_characteristic_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_brake_special_characteristic_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_brake_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  brake_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_brake_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_braking_power_variation_dev (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  braking_power_variation_dev_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_braking_power_variation_dev_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_commercial_traffic_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  commercial_traffic_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_commercial_traffic_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_consignment_order_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  consignment_order_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(150),
  doc_sk NVARCHAR2(150),
  CONSTRAINT t_consignment_order_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_coupling_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  coupling_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_coupling_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_danger_label (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  danger_label_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(5),
  doc_en NVARCHAR2(150),
  doc_sk NVARCHAR2(150),
  CONSTRAINT t_danger_label_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_facility_type_descript_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  facility_type_descript_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_facility_type_descript_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_hand_brake_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  hand_brake_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_hand_brake_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_characteristic_descript_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  characteristic_descript_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_characteristic_descript_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_info_goods_shape_type_danger (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  info_goods_shape_type_danger_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_info_goods_shape_type_danger_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_interop_capability (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  interop_capability_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_interop_capability_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_livestock_or_people_indic (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  livestock_or_people_indic_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_livestock_or_people_indic_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_load_table_stars (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  load_table_stars_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(250),
  doc_sk NVARCHAR2(250),
  CONSTRAINT t_load_table_stars_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_message_status (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  message_status_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_message_status_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_mrn_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  mrn_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(10),
  doc_en NVARCHAR2(150),
  doc_sk NVARCHAR2(150),
  CONSTRAINT t_mrn_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_normal_loading_gauge (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  normal_loading_gauge_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(10),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_normal_loading_gauge_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_packing_group (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  packing_group_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(5),
  doc_en NVARCHAR2(150),
  doc_sk NVARCHAR2(150),
  CONSTRAINT t_packing_group_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_refusal_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  refusal_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_refusal_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_route_class (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  route_class_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_route_class_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_special_service_descr_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  special_service_descr_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_special_service_descr_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_traction_mode (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  traction_mode_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(150),
  doc_sk NVARCHAR2(150),
  CONSTRAINT t_traction_mode_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_traction_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  traction_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_traction_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_cc_system_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_cc_system_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_train_cc_system_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_radio_system (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_radio_system_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_train_radio_system_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(250),
  doc_sk NVARCHAR2(250),
  CONSTRAINT t_train_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_removable_accessories (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_removable_accessories_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_type_removable_accessories_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_wheel_set_transform_method (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  wheel_set_transform_method_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_wheel_set_transform_method_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_activity_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_activity_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(6),
  doc_en NVARCHAR2(250),
  doc_sk NVARCHAR2(250),
  zastavenie NVARCHAR2(1),
  stoji_dd NVARCHAR2(1),
  CONSTRAINT t_train_activity_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_consignment_type_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  consignment_type_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(8),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_consignment_type_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_info_index (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  info_index_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_info_index_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_restriction_codes (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  restriction_codes_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  freighten NVARCHAR2(1),
  passenger NVARCHAR2(1),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_restriction_codes_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_running_status (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  running_status_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_running_status_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_cc_syst (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_cc_syst_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_train_cc_syst_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_of_imharmonization_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_of_imharmonization_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(6),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_type_of_imharmonization_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_of_information_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_of_information_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_type_of_information_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_of_request_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_of_request_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_type_of_request_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_of_ruharmonization_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_of_ruharmonization_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(6),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_type_of_ruharmonization_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_unit_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  unit_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_unit_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_journey_location_type_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  journey_location_type_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_journey_location_type_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_location_subsid_type_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  location_subsid_type_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(250),
  doc_sk NVARCHAR2(250),
  doc_en_add NVARCHAR2(250),
  doc_sk_add NVARCHAR2(250),
  CONSTRAINT t_location_subsid_type_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_timing_qualifier_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  timing_qualifier_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_timing_qualifier_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_error_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  error_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(5),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_error_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_message_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  message_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(5),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_message_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_commercial_service_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  commercial_service_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(100),
  kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_commercial_service_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_information_to_be_displayed (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  information_to_be_displayed_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(100),
  kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_information_to_be_displayed_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_internal_fitting_defect_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  internal_fitting_defect_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_internal_fitting_defect_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_internal_vehicle_facility (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  internal_vehicle_facility_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(100),
  kod NVARCHAR2(3),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT t_internal_vehicle_facility_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_object_info_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  object_info_type_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_object_info_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_transport_restriction_code (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  transport_restriction_code_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_transport_restriction_code_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_train_description_manner (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  train_description_manner_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_train_description_manner_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_direction_of_description (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  direction_of_description_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_direction_of_description_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_trainset_orientation (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  trainset_orientation_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_trainset_orientation_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_composition_descript_manner (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  composition_descript_manner_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(20),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_composition_descript_manner_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_of_heating (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_of_heating_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_type_of_heating_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_action_update_link_framework (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  action_update_link_framework_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_action_update_link_framework_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_status_update_link_framework (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  status_update_link_framework_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_status_update_link_framework_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_procedure_upd_link_framework (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  procedure_upd_link_framework_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(4),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_procedure_upd_link_framework_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_type_update_link_framework (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  type_update_link_framework_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_type_update_link_framework_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_loading_gauge (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  loading_gauge_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(3),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_loading_gauge_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_error_type_of_error (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  error_type_of_error_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_error_type_of_error_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_error_severity (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  error_severity_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(200),
  doc_sk NVARCHAR2(200),
  CONSTRAINT t_error_severity_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dovod_zakazu_jazdy (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_zakazu_jazdy_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  nazov NVARCHAR2(255),
  CONSTRAINT t_dovod_zakazu_jazdy_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dovod_potr (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_potr_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  nazov NVARCHAR2(255),
  CONSTRAINT t_dovod_potr_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_navestidla (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_navestidla_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  nazov NVARCHAR2(255),
  CONSTRAINT t_typ_navestidla_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_vds_poznamka (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  vds_poznamka_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  nazov NVARCHAR2(255),
  CONSTRAINT t_vds_poznamka_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_typ_obmedzenia (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  typ_obmedzenia_id NUMBER(10) NOT NULL,
  kod NVARCHAR2(3),
  skratka NVARCHAR2(20),
  popis NVARCHAR2(255),
  prefix NVARCHAR2(1),
  CONSTRAINT t_typ_obmedzenia_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_irn_event_cause (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  irn_event_cause_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_irn_event_cause_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_dovod_tcr (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  dovod_tcr_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(2),
  doc_en NVARCHAR2(50),
  doc_sk NVARCHAR2(50),
  CONSTRAINT t_dovod_tcr_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_country (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  country_id NUMBER(10) NOT NULL,
  country_code_iso NVARCHAR2(2),
  country_uic_code NVARCHAR2(4),
  country_name_en NVARCHAR2(255),
  country_name_fr NVARCHAR2(255),
  country_name_de NVARCHAR2(255),
  sub_loc_code_flag NVARCHAR2(1),
  CONSTRAINT t_country_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_subsidiary_type (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  subsidiary_type_id NUMBER(10) NOT NULL,
  subsidiary_type_code NVARCHAR2(2),
  subsidiary_type_name NVARCHAR2(255),
  im_flag NVARCHAR2(1),
  freight_ru_flag NVARCHAR2(1),
  passenger_ru_flag NVARCHAR2(1),
  central_entity_flag NVARCHAR2(1),
  national_entity_flag NVARCHAR2(1),
  others_flag NVARCHAR2(1),
  free_text NVARCHAR2(255),
  CONSTRAINT t_subsidiary_type_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_company (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  company_id NUMBER(10) NOT NULL,
  id_country NUMBER(10),
  company_name NVARCHAR2(255),
  company_name_ascii NVARCHAR2(255),
  company_uic_code NVARCHAR2(4),
  company_url NVARCHAR2(100),
  start_validity TIMESTAMP(6),
  end_validity TIMESTAMP(6),
  company_short_name NVARCHAR2(50),
  free_text NVARCHAR2(255),
  freight_flag NVARCHAR2(1),
  passenger_flag NVARCHAR2(1),
  infrastructure_flag NVARCHAR2(1),
  other_company_flag NVARCHAR2(1),
  ne_entity_flag NVARCHAR2(1),
  ce_entity_flag NVARCHAR2(1),
  contact_person NVARCHAR2(255),
  email NVARCHAR2(70),
  phone_number NVARCHAR2(70),
  fax_number NVARCHAR2(70),
  address NVARCHAR2(255),
  city NVARCHAR2(50),
  mobile_number NVARCHAR2(70),
  postal_code NVARCHAR2(10),
  CONSTRAINT t_company_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_primary_location (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  primary_location_id NUMBER(10) NOT NULL,
  id_country NUMBER(10),
  location_code NVARCHAR2(5),
  start_validity TIMESTAMP(6),
  end_validity TIMESTAMP(6),
  id_company NUMBER(10),
  location_name NVARCHAR2(255),
  location_name_ascii NVARCHAR2(255),
  nuts_code NVARCHAR2(5),
  container_handling_flag NVARCHAR2(1),
  handover_point_flag NVARCHAR2(1),
  freight_possible_flag NVARCHAR2(1),
  freight_start_validity TIMESTAMP(6),
  freight_end_validity TIMESTAMP(6),
  passenger_possible_flag NVARCHAR2(1),
  passenger_start_validity TIMESTAMP(6),
  passenger_end_validity TIMESTAMP(6),
  longitude NUMBER(9, 6),
  latitude NUMBER(9, 6),
  free_text NVARCHAR2(255),
  CONSTRAINT t_primary_location_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_subsidiary_location (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  subsidiary_location_id NUMBER(10) NOT NULL,
  id_subsidiary_type NUMBER(10),
  id_company NUMBER(10),
  id_country NUMBER(10),
  responsible_im_code NUMBER(10),
  subsidiary_location_code NVARCHAR2(10),
  subsidiary_location_name NVARCHAR2(255),
  id_primary_location NUMBER(10),
  start_validity TIMESTAMP(6),
  end_validity TIMESTAMP(6),
  longitude NUMBER(9,6),
  latitude NUMBER(9,6),
  free_text NVARCHAR2(255),
  CONSTRAINT t_subsidiary_location_pk PRIMARY KEY ( hist_id )
);

CREATE TABLE t_restriction_or_prohibition (
  hist_id NUMBER(10) NOT NULL,
  platnost_od TIMESTAMP(6) NOT NULL,
  platnost_do TIMESTAMP(6),
  cas_vytvorenia TIMESTAMP(6) NOT NULL,
  cas_zmeny TIMESTAMP(6),
  id_zmena NUMBER(10) NOT NULL,
  zmaz NVARCHAR2(1) NOT NULL,
  restriction_or_prohibition_id NUMBER(10) NOT NULL,
  enum_kod NVARCHAR2(5),
  doc_en NVARCHAR2(100),
  doc_sk NVARCHAR2(100),
  CONSTRAINT restriction_or_prohibition_pk PRIMARY KEY ( hist_id )
);



ALTER TABLE T_TRACTION_TYPE ADD CONSTRAINT T_TRACTION_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_ACTIVITY_TYPE ADD CONSTRAINT T_TRAIN_ACTIVITY_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_SPECIAL_SERVICE_DESCR_CODE ADD CONSTRAINT T_SPECIAL_SERVICE_DESCR_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_OF_IMHARMONIZATION_CODE ADD CONSTRAINT T_TYPE_OF_IMHARMONIZATION_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_OF_INFORMATION_CODE ADD CONSTRAINT T_TYPE_OF_INFORMATION_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ERROR_SEVERITY ADD CONSTRAINT T_ERROR_SEVERITY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PROCEDURE_UPD_LINK_FRAMEWORK ADD CONSTRAINT T_PROCEDURE_UPD_LINK_FRAMEWORK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DIRECTION_OF_DESCRIPTION ADD CONSTRAINT T_DIRECTION_OF_DESCRIPTION_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_LIVESTOCK_OR_PEOPLE_INDIC ADD CONSTRAINT T_LIVESTOCK_OR_PEOPLE_INDIC_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_COUPLING_TYPE ADD CONSTRAINT T_COUPLING_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INFORMATION_TO_BE_DISPLAYED ADD CONSTRAINT T_INFORMATION_TO_BE_DISPLAYED_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_STATUS_UPDATE_LINK_FRAMEWORK ADD CONSTRAINT T_STATUS_UPDATE_LINK_FRAMEWORK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_LOCATION_SUBSID_TYPE_CODE ADD CONSTRAINT T_LOCATION_SUBSID_TYPE_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_LOAD_TABLE_STARS ADD CONSTRAINT T_LOAD_TABLE_STARS_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_OF_REQUEST_CODE ADD CONSTRAINT T_TYPE_OF_REQUEST_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_CONSIGNMENT_TYPE_CODE ADD CONSTRAINT T_CONSIGNMENT_TYPE_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INTERNAL_VEHICLE_FACILITY ADD CONSTRAINT T_INTERNAL_VEHICLE_FACILITY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_CONSIGNMENT_ORDER_TYPE ADD CONSTRAINT T_CONSIGNMENT_ORDER_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_UPDATE_LINK_FRAMEWORK ADD CONSTRAINT T_TYPE_UPDATE_LINK_FRAMEWORK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ERROR_CODE ADD CONSTRAINT T_ERROR_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ROUTE_CLASS ADD CONSTRAINT T_ROUTE_CLASS_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_BRAKE_TYPE ADD CONSTRAINT T_BRAKE_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRANSPORT_RESTRICTION_CODE ADD CONSTRAINT T_TRANSPORT_RESTRICTION_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_CC_SYST ADD CONSTRAINT T_TRAIN_CC_SYST_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_AIR_BRAKE_TYPE ADD CONSTRAINT T_AIR_BRAKE_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_HAND_BRAKE_TYPE ADD CONSTRAINT T_HAND_BRAKE_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TIMING_QUALIFIER_CODE ADD CONSTRAINT T_TIMING_QUALIFIER_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_UNIT_TYPE ADD CONSTRAINT T_UNIT_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_MESSAGE_STATUS ADD CONSTRAINT T_MESSAGE_STATUS_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_COMMERCIAL_TRAFFIC_TYPE ADD CONSTRAINT T_COMMERCIAL_TRAFFIC_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_NORMAL_LOADING_GAUGE ADD CONSTRAINT T_NORMAL_LOADING_GAUGE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_TYPE ADD CONSTRAINT T_TRAIN_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_OF_HEATING ADD CONSTRAINT T_TYPE_OF_HEATING_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_OF_RUHARMONIZATION_CODE ADD CONSTRAINT T_TYPE_OF_RUHARMONIZATION_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_RADIO_SYSTEM ADD CONSTRAINT T_TRAIN_RADIO_SYSTEM_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_LOADING_GAUGE ADD CONSTRAINT T_LOADING_GAUGE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_MRN_TYPE ADD CONSTRAINT T_MRN_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INFO_GOODS_SHAPE_TYPE_DANGER ADD CONSTRAINT T_INFO_GOODS_SHAPE_TYPE_DANGER_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_COMPOSITION_DESCRIPT_MANNER ADD CONSTRAINT T_COMPOSITION_DESCRIPT_MANNER_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_COMMERCIAL_SERVICE_CODE ADD CONSTRAINT T_COMMERCIAL_SERVICE_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_OBJECT_INFO_TYPE ADD CONSTRAINT T_OBJECT_INFO_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_BRAKING_POWER_VARIATION_DEV ADD CONSTRAINT T_BRAKING_POWER_VARIATION_DEV_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_CC_SYSTEM_CODE ADD CONSTRAINT T_TRAIN_CC_SYSTEM_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_MESSAGE_TYPE ADD CONSTRAINT T_MESSAGE_TYPE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_REFUSAL_CODE ADD CONSTRAINT T_REFUSAL_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TYPE_REMOVABLE_ACCESSORIES ADD CONSTRAINT T_TYPE_REMOVABLE_ACCESSORIES_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INTERNAL_FITTING_DEFECT_CODE ADD CONSTRAINT T_INTERNAL_FITTING_DEFECT_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_RESTRICTION_CODES ADD CONSTRAINT T_RESTRICTION_CODES_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ERROR_TYPE_OF_ERROR ADD CONSTRAINT T_ERROR_TYPE_OF_ERROR_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_ACTION_UPDATE_LINK_FRAMEWORK ADD CONSTRAINT T_ACTION_UPDATE_LINK_FRAMEWORK_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_BRAKE_SPECIAL_CHARACTERISTIC ADD CONSTRAINT T_BRAKE_SPECIAL_CHARACTERISTIC_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_JOURNEY_LOCATION_TYPE_CODE ADD CONSTRAINT T_JOURNEY_LOCATION_TYPE_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRACTION_MODE ADD CONSTRAINT T_TRACTION_MODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_RUNNING_STATUS ADD CONSTRAINT T_RUNNING_STATUS_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INTEROP_CAPABILITY ADD CONSTRAINT T_INTEROP_CAPABILITY_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAINSET_ORIENTATION ADD CONSTRAINT T_TRAINSET_ORIENTATION_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_TRAIN_DESCRIPTION_MANNER ADD CONSTRAINT T_TRAIN_DESCRIPTION_MANNER_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_DANGER_LABEL ADD CONSTRAINT T_DANGER_LABEL_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_INFO_INDEX ADD CONSTRAINT T_INFO_INDEX_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_FACILITY_TYPE_DESCRIPT_CODE ADD CONSTRAINT T_FACILITY_TYPE_DESCRIPT_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_CHARACTERISTIC_DESCRIPT_CODE ADD CONSTRAINT T_CHARACTERISTIC_DESCRIPT_CODE_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_WHEEL_SET_TRANSFORM_METHOD ADD CONSTRAINT T_WHEEL_SET_TRANSFORM_METHOD_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE T_PACKING_GROUP ADD CONSTRAINT T_PACKING_GROUP_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_dovod_zakazu_jazdy ADD CONSTRAINT t_dovod_zakazu_jazdy_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_dovod_potr ADD CONSTRAINT t_dovod_potr_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_typ_navestidla ADD CONSTRAINT t_typ_navestidla_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_vds_poznamka ADD CONSTRAINT t_vds_poznamka_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_typ_obmedzenia ADD CONSTRAINT t_typ_obmedzenia_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_irn_event_cause ADD CONSTRAINT t_irn_event_cause_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_dovod_tcr ADD CONSTRAINT t_dovod_tcr_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_country ADD CONSTRAINT t_country_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_subsidiary_type ADD CONSTRAINT t_subsidiary_type_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_company ADD CONSTRAINT t_company_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_primary_location ADD CONSTRAINT t_primary_location_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_subsidiary_location ADD CONSTRAINT t_subsidiary_location_FK1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);
ALTER TABLE t_restriction_or_prohibition ADD CONSTRAINT t_restriction_or_prohibition_fk1 FOREIGN KEY (ID_ZMENA) REFERENCES CUD_ZMENA (ZMENA_ID);



CREATE SEQUENCE T_TRACTION_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_ACTIVITY_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_SPECIAL_SERVICE_DESCR_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_OF_IMHARMONIZATION_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_OF_INFORMATION_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_ERROR_SEVERITY_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_PROCEDURE_UPD_LINK_FRAMEWORK_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_DIRECTION_OF_DESCRIPTION_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_LIVESTOCK_OR_PEOPLE_INDIC_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_COUPLING_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INFORMATION_TO_BE_DISPLAYED_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_STATUS_UPDATE_LINK_FRAMEWORK_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_LOCATION_SUBSID_TYPE_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_LOAD_TABLE_STARS_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_OF_REQUEST_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_CONSIGNMENT_TYPE_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INTERNAL_VEHICLE_FACILITY_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_CONSIGNMENT_ORDER_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_UPDATE_LINK_FRAMEWORK_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_ERROR_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_ROUTE_CLASS_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_BRAKE_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRANSPORT_RESTRICTION_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_CC_SYST_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_AIR_BRAKE_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_HAND_BRAKE_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TIMING_QUALIFIER_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_UNIT_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_MESSAGE_STATUS_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_COMMERCIAL_TRAFFIC_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_NORMAL_LOADING_GAUGE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_OF_HEATING_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_OF_RUHARMONIZATION_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_RADIO_SYSTEM_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_LOADING_GAUGE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_MRN_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INFO_GOODS_SHAPE_TYPE_DANGER_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_COMPOSITION_DESCRIPT_MANNER_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_COMMERCIAL_SERVICE_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_OBJECT_INFO_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_BRAKING_POWER_VARIATION_DEV_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_CC_SYSTEM_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_MESSAGE_TYPE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_REFUSAL_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TYPE_REMOVABLE_ACCESSORIES_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INTERNAL_FITTING_DEFECT_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_RESTRICTION_CODES_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_ERROR_TYPE_OF_ERROR_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_ACTION_UPDATE_LINK_FRAMEWORK_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_BRAKE_SPECIAL_CHARACTERISTIC_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_JOURNEY_LOCATION_TYPE_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRACTION_MODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_RUNNING_STATUS_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INTEROP_CAPABILITY_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAINSET_ORIENTATION_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_TRAIN_DESCRIPTION_MANNER_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_DANGER_LABEL_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_INFO_INDEX_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_FACILITY_TYPE_DESCRIPT_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_CHARACTERISTIC_DESCRIPT_CODE_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_WHEEL_SET_TRANSFORM_METHOD_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE T_PACKING_GROUP_SEQ INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_dovod_zakazu_jazdy_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_dovod_potr_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_typ_navestidla_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_vds_poznamka_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_typ_obmedzenia_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_irn_event_cause_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_dovod_tcr_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_country_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_subsidiary_type_seq INCREMENT BY 1 START WITH 1 MAXVALUE 1.0e28 MINVALUE 1 NOCYCLE NOCACHE NOORDER;
CREATE SEQUENCE t_company_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_primary_location_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_subsidiary_location_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;
CREATE SEQUENCE t_restriction_or_prohibition_seq INCREMENT BY 1 START WITH 1 maxvalue 1.0e28 minvalue 1 nocycle nocache noorder;

