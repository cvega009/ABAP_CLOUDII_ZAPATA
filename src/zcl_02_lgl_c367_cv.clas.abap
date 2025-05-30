CLASS zcl_02_lgl_c367_cv DEFINITION "INHERITING FROM zcl_01_lgl_c367_cv
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor,
      set_architecture.


  PROTECTED SECTION.

  PRIVATE SECTION.


ENDCLASS.



CLASS ZCL_02_LGL_C367_CV IMPLEMENTATION.


  METHOD constructor.
*me->architecture = 'My_architecure'.
  ENDMETHOD.


  METHOD set_architecture.
*super->constructor
  ENDMETHOD.
ENDCLASS.
