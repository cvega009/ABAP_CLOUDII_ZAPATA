CLASS zcl_16_sales_depar_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_05_sales_order_c367_cv.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_16_sales_depar_lgl_c367_cv IMPLEMENTATION.
  METHOD zif_05_sales_order_c367_cv~create_order.
  ENDMETHOD.

  METHOD zif_04_document_c367_cv~set_sales_doc.
  ENDMETHOD.

ENDCLASS.
