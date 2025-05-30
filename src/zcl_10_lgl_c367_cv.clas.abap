CLASS zcl_10_lgl_c367_cv DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      merchandise_output
        RETURNING VALUE(rv_merchandise) TYPE string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_lgl_c367_cv IMPLEMENTATION.
  METHOD merchandise_output.
*Clase Abstracta
    rv_merchandise = 'Merchandise output'.

  ENDMETHOD.

ENDCLASS.
