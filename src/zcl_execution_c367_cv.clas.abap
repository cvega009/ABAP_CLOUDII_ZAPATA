CLASS zcl_execution_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    DATA name TYPE string VALUE 'Tim'.

    CLASS-METHODS set_base_rate IMPORTING iv_rate TYPE i.


    CLASS-DATA send_date TYPE dats.

  PROTECTED SECTION.
    CLASS-DATA base_rate TYPE i.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_execution_c367_cv IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    zcl_execution_c367_cv=>set_base_rate( 3 ).

*    DATA lo_employee TYPE zcl_execution_c367_cv.
*    lo_employee = NEW #( ).
*    out->write( lo_employee->name ).


    DATA: lo_invoices_a TYPE REF TO zcl_execution_c367_cv,
          lo_invoices_b TYPE REF TO zcl_execution_c367_cv.

    lo_invoices_a = NEW #( ).
    lo_invoices_b = NEW #( ).

    zcl_execution_c367_cv=>send_date = '20250523'.
    out->write( lo_invoices_a->send_date ).
    out->write( lo_invoices_a->send_date ).

  ENDMETHOD.

  METHOD set_base_rate.
    base_rate = iv_rate.
  ENDMETHOD.

ENDCLASS.
