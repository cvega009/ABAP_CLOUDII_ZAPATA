CLASS zcl_30_laptop_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: keyboard TYPE REF TO zcl_29_keyboard_lgl_c367_cv.
    METHODS constructor IMPORTING io_keyboard TYPE REF TO zcl_29_keyboard_lgl_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_30_laptop_lgl_c367_cv IMPLEMENTATION.
  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
