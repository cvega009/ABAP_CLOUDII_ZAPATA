CLASS zcl_09_citizen_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    METHODS: set_id FINAL IMPORTING iv_id TYPE i.

    METHODS get_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_lgl_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_09_citizen_lgl_c367_cv IMPLEMENTATION.

  METHOD set_id.
    DATA(lo_citizen) = NEW zcl_09_citizen_lgl_c367_cv( ).
  ENDMETHOD.

  METHOD get_instance.
    ro = NEW zcl_09_citizen_lgl_c367_cv(  ).
  ENDMETHOD.

ENDCLASS.
