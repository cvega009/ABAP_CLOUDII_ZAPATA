CLASS zcl_25_company_usa_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_08_co_company_lgl_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_25_company_usa_lgl_c367_cv IMPLEMENTATION.
  METHOD zif_08_co_company_lgl_c367_cv~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.

ENDCLASS.
