CLASS zcl_24_company_eu_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_08_co_company_lgl_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_24_company_eu_lgl_c367_cv IMPLEMENTATION.
  METHOD zif_08_co_company_lgl_c367_cv~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.

ENDCLASS.
