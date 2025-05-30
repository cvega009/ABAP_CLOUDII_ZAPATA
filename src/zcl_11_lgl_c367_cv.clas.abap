CLASS zcl_11_lgl_c367_cv DEFINITION INHERITING FROM zcl_10_lgl_c367_cv
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*Clase abstracta hija
    METHODS: production_line REDEFINITION,
             input_products  REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_lgl_c367_cv IMPLEMENTATION.
  METHOD input_products.
    rv_input = 'Input Products'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.
ENDCLASS.
