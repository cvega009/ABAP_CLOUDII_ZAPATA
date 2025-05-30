CLASS zcl_17_plant_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      assign_company
        IMPORTING io_company      TYPE REF TO zif_04_log_c367_cv
        RETURNING VALUE(rv_plant) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_plant_lgl_c367_cv IMPLEMENTATION.

  METHOD assign_company.
    rv_plant = |Plant was assigned to...{ io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
