CLASS zcl_03_animal_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      walk RETURNING VALUE(rv_walk) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_03_animal_lgl_c367_cv IMPLEMENTATION.

  METHOD walk.
    rv_walk = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
