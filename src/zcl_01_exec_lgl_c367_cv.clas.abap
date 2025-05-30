CLASS zcl_01_exec_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_01_exec_lgl_c367_cv IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_animal) = NEW zcl_07_animal_lgl_c367_cv(  ).
    DATA(lo_lion)   = NEW zcl_08_lion_lgl_c367_cv(  ).

    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

*    Narrowing Casting/Up Casting
*    Hacemos uso de la referencia de la clase superior
*    para apuntar a una instancia de la clase inferior
*    out->write( '--------------------------------------' ).
*    out->write( 'Narrowing (Up Cast)' ).
*    lo_animal = lo_lion.
*    out->write( lo_animal->walk(  ) ).
*    out->write( lo_lion->walk(  ) ).

    out->write( '--------------------------------------' ).
    out->write( 'Widening Cast (Down Cast)' ).
    lo_animal = lo_lion.

    TRY.
        lo_lion ?= lo_animal.
      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
        out->write( lx_cast->get_text( ) ).
    ENDTRY.

    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

*------------------------------------------------------

*    DATA(lo_company) = NEW zcl_04_company_lgl_c367_cv( iv_quotation = 'Q1' ).
*    DATA(lo_plant)   = NEW zcl_05_plant_lgl_c367_cv( iv_quotation = 'Q2' iv_products = 'P1' ).
*    DATA(lo_storage) = NEW zcl_06_storage_lgl_c367_cv( iv_quotation = 'Q3' iv_products = 'P2' ).
*
*    "Clase base
*    lo_company->set_company_code( '1234' ).
*    lo_company->set_currency_code( 'USD' ).
*
*    lo_company->get_company_code(  IMPORTING ev_company_code  = DATA(lv_company_code) ).
*    lo_company->get_currency_code( IMPORTING ev_currency_code = DATA(lv_currency) ).
*
*    out->write( |Company: { lv_company_code }-{ lv_currency }| ).
*
*    "Clase hija
*    lo_plant->set_company_code( '3545' ).
*    lo_plant->set_currency_code( 'EUR' ).
*
*    lo_plant->get_company_code(  IMPORTING ev_company_code  = lv_company_code ).
*    lo_plant->get_currency_code( IMPORTING ev_currency_code = lv_currency ).
*
*    out->write( |Plant: { lv_company_code }-{ lv_currency }| ).
*
*    "Clase hija de la clase hija
*    lo_storage->set_company_code( '3563' ).
*    lo_storage->set_currency_code( 'MXN' ).
*
*    lo_storage->get_company_code(  IMPORTING ev_company_code  = lv_company_code ).
*    lo_storage->get_currency_code( IMPORTING ev_currency_code = lv_currency ).
*
*    out->write( |Storage: { lv_company_code }-{ lv_currency }| ).

  ENDMETHOD.

ENDCLASS.
