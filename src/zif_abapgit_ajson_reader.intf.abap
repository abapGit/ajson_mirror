INTERFACE zif_abapgit_ajson_reader
  PUBLIC .

  METHODS exists
    IMPORTING
      iv_path TYPE string
    RETURNING
      VALUE(rv_exists) TYPE abap_bool.
  METHODS members
    IMPORTING
      iv_path TYPE string
    RETURNING
      VALUE(rt_members) TYPE string_table.
  METHODS get
    IMPORTING
      iv_path TYPE string
    RETURNING
      VALUE(rv_value) TYPE string.
  METHODS get_node_type
    IMPORTING
      iv_path TYPE string
    RETURNING
      VALUE(rv_node_type) TYPE string.
  METHODS get_boolean
    IMPORTING
      iv_path TYPE string
    returning
      value(rv_value) type abap_bool.
  methods get_integer
    importing
      iv_path type string
    returning
      value(rv_value) type i.
  methods get_number
    importing
      iv_path type string
    returning
      value(rv_value) type f.
  methods get_date
    importing
      iv_path type string
    returning
      value(rv_value) type d.
  methods get_string
    importing
      iv_path type string
    returning
      value(rv_value) type string.
  methods slice
    importing
      iv_path type string
    returning
      value(ri_json) type ref to zIF_abapgit_ajson_READER.
  methods to_abap
    exporting
      ev_container type any
    raising
      zCX_abapgit_ajson_ERROR.
  methods array_to_string_table
    importing
      iv_path type string
    returning
      value(rt_string_table) type string_table
    raising
      zCX_abapgit_ajson_ERROR.

endinterface.
