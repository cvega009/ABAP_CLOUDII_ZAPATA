CLASS zcl_19_client_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_credit_card IMPORTING io_credit_card TYPE REF TO zcl_18_credit_card_c367_cv,
      get_credit_card RETURNING VALUE(ro_credit_card) TYPE REF TO zcl_18_credit_card_c367_cv.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: credit_card TYPE REF TO zcl_18_credit_card_c367_cv.
ENDCLASS.



CLASS zcl_19_client_c367_cv IMPLEMENTATION.

  METHOD get_credit_card.
    ro_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = io_credit_card.
  ENDMETHOD.

ENDCLASS.
