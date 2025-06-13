CLASS zcl_execution_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
*
*    DATA name TYPE string VALUE 'Tim'.
*
*    CLASS-METHODS set_base_rate IMPORTING iv_rate TYPE i.
*
*
*    CLASS-DATA send_date TYPE dats.
  PROTECTED SECTION.
*
*    CLASS-DATA base_rate TYPE i.
*
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_execution_c367_cv IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*------------------------------------------------------------------------------------------------
    DATA(lo_bp) = NEW zcl_17_bp_lgl_c367_cv(  ).
    lo_bp->set_company_type( ).
*    lo_bp->zif_07_company_lgl_c367_cv~set_company_type(  ).

*------------------------------------------------------------------------------------------------
*    DATA(lo_sales_department) = NEW zcl_16_sales_depar_lgl_c367_cv( ).
*
*    lo_sales_department->zif_04_document_c367_cv~set_sales_doc( '123D' ).
*    lo_sales_department->zif_05_sales_order_c367_cv~create_order( '1230' ).
*------------------------------------------------------------------------------------------------
*    DATA(lo_screen) = NEW zcl_15_screen_lgl_c367_cv( 22 ).
*
*    out->write( lo_screen->zif_02_eu_unit_lgl_c367_cv~dimensiones_centimeters(  ) ).
*    out->write( lo_screen->zif_03_en_unit_lgl_c367_cv~dimensiones_inches(  ) ).
*------------------------------------------------------------------------------------------------
*    DATA(lo_travel_agency) = NEW zcl_14_travel_agency_c367_cv( ).
*    lo_travel_agency->zif_01_agency_lgl_c367_cv~set_name( 'Gate2Fly.com').
*    out->write( lo_travel_agency->zif_01_agency_lgl_c367_cv~get_name(  ) ).
*    zcl_14_travel_agency_c367_cv=>zif_01_agency_lgl_c367_cv~set_address( 'Veracruz, México').
*------------------------------------------------------------------------------------------------
**  DATA(lo_plant) = new zcl_plant_c367_cv( ).
**  lo_plant->
*
*
***    zcl_execution_c367_cv=>set_base_rate( 3 ).
**
***    DATA lo_employee TYPE zcl_execution_c367_cv.
***    lo_employee = NEW #( ).
***    out->write( lo_employee->name ).
**
**
**    DATA: lo_invoices_a TYPE REF TO zcl_execution_c367_cv,
**          lo_invoices_b TYPE REF TO zcl_execution_c367_cv.
**
**    lo_invoices_a = NEW #( ).
**    lo_invoices_b = NEW #( ).
**
**    zcl_execution_c367_cv=>send_date = '20250523'.
**    out->write( lo_invoices_a->send_date ).
**    out->write( lo_invoices_a->send_date ).
*
****  METHOD set_base_rate.
****    base_rate = iv_rate.
****  ENDMETHOD.

  ENDMETHOD.
ENDCLASS.
