CLASS zcl_01_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    "DATA: architecture TYPE string VALUE '32Bits'.


    CLASS-METHODS:
      get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_01_lgl_c367_cv.


    METHODS:
      constructor,
      get_architecture
        IMPORTING
                  iv_so                  TYPE string OPTIONAL
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.

    DATA: architecture TYPE string. "VALUE '32Bits'.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_01_lgl_c367_cv IMPLEMENTATION.


  METHOD constructor.
    me->architecture = '32bits'.
  ENDMETHOD.


  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.


  METHOD get_instance.

    ro_instance = NEW zcl_01_lgl_c367_cv( ).

  ENDMETHOD.
ENDCLASS.
