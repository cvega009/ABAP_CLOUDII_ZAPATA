INTERFACE zif_01_agency_lgl_c367_cv
  PUBLIC .

  CLASS-DATA: agency_addres TYPE string.

  METHODS: set_name IMPORTING iv_type TYPE string,
           get_name RETURNING VALUE(rv_type) TYPE string.

  CLASS-METHODS set_address IMPORTING iv_addres TYPE string.

ENDINTERFACE.
