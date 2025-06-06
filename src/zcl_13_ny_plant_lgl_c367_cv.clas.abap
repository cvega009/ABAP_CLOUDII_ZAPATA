CLASS zcl_13_ny_plant_lgl_c367_cv DEFINITION INHERITING FROM zcl_11_plant_lgl_c367_cv
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: get_products_sl.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_ny_plant_lgl_c367_cv IMPLEMENTATION.

  METHOD get_products_sl.

    DATA(lo_storage_location) = NEW zcl_12_storage_loc_lgl_c367_cv( ).
    lo_storage_location->product = 'PC'.

  ENDMETHOD.

ENDCLASS.
