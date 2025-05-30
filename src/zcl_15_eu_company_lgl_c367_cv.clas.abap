CLASS zcl_15_eu_company_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_04_log_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_eu_company_lgl_c367_cv IMPLEMENTATION.

  METHOD zif_04_log_c367_cv~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.

ENDCLASS.
