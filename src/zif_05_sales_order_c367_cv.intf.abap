INTERFACE zif_05_sales_order_c367_cv
  PUBLIC .
  INTERFACES zif_04_document_c367_cv.

  METHODS create_order IMPORTING iv_order_id TYPE string.

ENDINTERFACE.
