CLASS zcl_11_plant_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_product RETURNING VALUE(rv_product) TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_11_plant_lgl_c367_cv IMPLEMENTATION.

  METHOD get_product.

    DATA(lo_storage_location) = NEW zcl_12_storage_loc_lgl_c367_cv( ).

    lo_storage_location->product = 'PC'.

    lo_storage_location->set_product( iv_product = 'Laptop' ).

  ENDMETHOD.

ENDCLASS.
