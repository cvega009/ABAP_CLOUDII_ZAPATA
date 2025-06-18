CLASS zcl_26_plant_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING ir_con_company  TYPE REF TO zif_08_co_company_lgl_c367_cv
                           RETURNING VALUE(rv_plant) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_26_plant_lgl_c367_cv IMPLEMENTATION.
  METHOD assign_company.
    rv_plant = |Plant was assigned to...{  ir_con_company->define_company(  ) }|.
  ENDMETHOD.

ENDCLASS.
