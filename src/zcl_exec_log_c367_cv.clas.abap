CLASS zcl_exec_log_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EXEC_LOG_c367_cv IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    out->write( 'Hello Zapata' ).

** Class Instance
*    DATA(lo_instance) = NEW zcl_01_log_c367_cv( ).
*
*    lo_instance->set_attr( 'Attribute1' ).
*
**    lo_instance->get_attr(
**      IMPORTING
**        ev_attr = DATA(lv_attribute) ).
*
*    out->write( lo_instance->get_attr( ) ).
*
** Access to static components
*    zcl_01_log_c367_cv=>set_attr2( 'Attribute2' ).
*
*    zcl_01_log_c367_cv=>get_attr2(
*      IMPORTING
*        ev_attr = DATA(lv_attribute2) ).
*
*    out->write( lv_attribute2 ).
*
*    lo_instance->get_flights(
*      EXPORTING
*        iv_flight = '00000004'
*        iv_agency = '000000'
**      RECEIVING
**        rv_exist  =
*    ).
*
*    IF lo_instance->get_flights( '00000003' ) = abap_true.
*
*      out->write( 'The flight exist' ).
*
*    ELSE.
*
*      out->write( 'The flight does not exist' ).
*
*    ENDIF.
*
*    out->write( lo_instance->get_flight( '00000003' ) ).
*
*    out->write( zcl_01_log_c367_cv=>c_saludo ).
*
*    out->write( zcl_01_log_c367_cv=>c_logali-c_master ).
*
*    "lo_instance->company = 'Logali'.
*
*    out->write( lo_instance->company ).

** Constructor instances
*    "DATA: lo_cons TYPE REF TO zcl_03_log_c367_cv.
*
*    "CREATE OBJECT lo_cons.
*
*    out->write( zcl_03_log_c367_cv=>log ).
*
*    DATA(lo_constructor) = NEW zcl_03_log_c367_cv( ).
*
*    out->write( zcl_03_log_c367_cv=>log ).
*
*    DATA(lo_constructo2) = NEW zcl_03_log_c367_cv( ).
*
*    out->write( zcl_03_log_c367_cv=>log ).
*
*    DATA(lo_constructo3) = NEW zcl_03_log_c367_cv( ).
*
*    out->write( zcl_03_log_c367_cv=>log ).

* Heritance
    DATA(lo_heritance) = NEW zcl_05_log_c367_cv( ).

    "lo_heritance->architecture = '64Bits'.

    out->write( lo_heritance->get_architecture( ) ).

    lo_heritance->set_architecture( ).

    out->write( lo_heritance->get_architecture( ) ).

  ENDMETHOD.

ENDCLASS.
