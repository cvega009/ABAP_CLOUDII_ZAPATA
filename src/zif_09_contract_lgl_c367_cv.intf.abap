INTERFACE zif_09_contract_lgl_c367_cv
  PUBLIC .

  DATA: contract_type TYPE string.

  METHODS create_contract IMPORTING iv_cntr_type TYPE string.

ENDINTERFACE.
