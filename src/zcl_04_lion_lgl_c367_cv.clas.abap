CLASS zcl_04_lion_lgl_c367_cv DEFINITION
  PUBLIC
  INHERITING FROM zcl_03_animal_lgl_c367_cv
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      walk REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_lion_lgl_c367_cv IMPLEMENTATION.


  METHOD walk.
    rv_walk = 'The lion walks'.
  ENDMETHOD.
ENDCLASS.
