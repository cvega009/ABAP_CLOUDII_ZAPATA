CLASS zcl_07_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_capital
        RETURNING VALUE(rv_capital) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_lgl_c367_cv IMPLEMENTATION.


  METHOD get_capital.

    DATA(lo_friend) = NEW zcl_06_lgl_c367_cv( ).
    lo_friend->capital = 'CapitalFriend'.

    rv_capital = lo_friend->capital.

  ENDMETHOD.
ENDCLASS.
