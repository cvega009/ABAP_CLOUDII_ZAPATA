CLASS zcl_14_pass_plane_lgl_c367_cv DEFINITION
  PUBLIC
  INHERITING FROM zcl_12_airplane_lgl_c367_cv
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_pass_plane_lgl_c367_cv IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
