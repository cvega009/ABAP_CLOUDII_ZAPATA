CLASS zcl_14_travel_agency_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_01_agency_lgl_c367_cv .

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: agency_type TYPE string.
ENDCLASS.

CLASS zcl_14_travel_agency_c367_cv IMPLEMENTATION.

  METHOD zif_01_agency_lgl_c367_cv~get_name.
    rv_type = me->agency_type.
  ENDMETHOD.

  METHOD zif_01_agency_lgl_c367_cv~set_address.
    zif_01_agency_lgl_c367_cv~agency_addres = iv_addres.
  ENDMETHOD.

  METHOD zif_01_agency_lgl_c367_cv~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.
ENDCLASS.
