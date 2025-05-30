CLASS zcl_08_lgl_c367_cv DEFINITION INHERITING FROM zcl_07_lgl_c367_cv
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:

      get_private
        RETURNING VALUE(rv_attribute) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_lgl_c367_cv IMPLEMENTATION.


  METHOD get_private.

    DATA(lo_ins) = NEW zcl_06_lgl_c367_cv( ).

    lo_ins->capital = 'CapitalHeritance'.

    rv_attribute = lo_ins->capital.

  ENDMETHOD.
ENDCLASS.
