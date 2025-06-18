CLASS zcl_22_cargo_plane_lgl_c367_cv DEFINITION INHERITING FROM zcl_21_airplane_lgl_c367_cv
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS airplane_type REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_22_cargo_plane_lgl_c367_cv IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = |Cargo Plane|.
  ENDMETHOD.

ENDCLASS.
