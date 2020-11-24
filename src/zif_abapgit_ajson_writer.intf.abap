INTERFACE zif_abapgit_ajson_writer
  PUBLIC .

  METHODS clear
    RAISING
      zcx_abapgit_ajson_error.

  METHODS set
    IMPORTING
      iv_path TYPE string
      iv_val TYPE any
      iv_ignore_empty TYPE abap_bool DEFAULT abap_true
    RAISING
      zcx_abapgit_ajson_error.

  METHODS set_boolean
    IMPORTING
      iv_path TYPE string
      iv_val TYPE any
    RAISING
      zcx_abapgit_ajson_error.

  METHODS set_string
    IMPORTING
      iv_path TYPE string
      iv_val TYPE clike
    RAISING
      zcx_abapgit_ajson_error.

  METHODS set_integer
    IMPORTING
      iv_path TYPE string
      iv_val TYPE i
    raising
      zCX_abapgit_ajson_ERROR.

  methods set_date
    importing
      iv_path type string
      iv_val type d
    raising
      zCX_abapgit_ajson_ERROR.

  methods set_null
    importing
      iv_path type string
    raising
      zCX_abapgit_ajson_ERROR.

  methods delete
    importing
      iv_path type string
    raising
      zCX_abapgit_ajson_ERROR.

  methods touch_array
    importing
      iv_path type string
      iv_clear type abap_bool default abap_false
    raising
      zCX_abapgit_ajson_ERROR.

  methods push
    importing
      iv_path type string
      iv_val type any
    raising
      zCX_abapgit_ajson_ERROR.

endinterface.
