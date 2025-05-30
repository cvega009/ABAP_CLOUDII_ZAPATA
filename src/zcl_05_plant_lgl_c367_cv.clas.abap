CLASS zcl_05_plant_lgl_c367_cv DEFINITION INHERITING FROM zcl_04_company_lgl_c367_cv
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_products  TYPE string.

    DATA: products TYPE string READ-ONLY.
    DATA: company_atr TYPE string.

    METHODS set_company_code REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_05_plant_lgl_c367_cv IMPLEMENTATION.

  METHOD constructor.
    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.
  ENDMETHOD.

  METHOD set_company_code.
    "Se agrega la funcionalidad del padre
    super->set_company_code(  iv_company_code =  iv_company_code ).

    "Otros funcionalidad adicional
    me->company_code = 'ABCD'.

  ENDMETHOD.

ENDCLASS.
