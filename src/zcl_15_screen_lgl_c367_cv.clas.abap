CLASS zcl_15_screen_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_02_eu_unit_lgl_c367_cv,
      zif_03_en_unit_lgl_c367_cv.

    METHODS constructor IMPORTING iv_en_unit TYPE zfloat.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA: en_unit TYPE zfloat.
ENDCLASS.


CLASS zcl_15_screen_lgl_c367_cv IMPLEMENTATION.
  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.

  METHOD zif_02_eu_unit_lgl_c367_cv~dimensiones_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.

  METHOD zif_03_en_unit_lgl_c367_cv~dimensiones_inches.
    rv_unit =  me->en_unit.
  ENDMETHOD.

ENDCLASS.
