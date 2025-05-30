CLASS zcl_04_company_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_company_code IMPORTING iv_company_code TYPE string,
      get_company_code EXPORTING ev_company_code TYPE string,

      set_currency_code IMPORTING iv_currency_code TYPE string,
      get_currency_code EXPORTING ev_currency_code TYPE string.


    METHODS constructor IMPORTING iv_quotation TYPE string.

    DATA quotation TYPE string.


  PROTECTED SECTION.
    DATA company_code TYPE c LENGTH 4.
    DATA currency TYPE c LENGTH 3.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_04_company_lgl_c367_cv IMPLEMENTATION.

  METHOD constructor.
    me->quotation = iv_quotation.
  ENDMETHOD.

  METHOD get_company_code.
    ev_company_code = me->company_code.
  ENDMETHOD.

  METHOD get_currency_code.
    ev_currency_code = me->currency.
  ENDMETHOD.

  METHOD set_company_code.
    me->company_code = iv_company_code.
  ENDMETHOD.

  METHOD set_currency_code.
    me->currency = iv_currency_code.
  ENDMETHOD.

ENDCLASS.
