CLASS zcl_32_constr_cntr_lgl_c367_cv DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_09_contract_lgl_c367_cv .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_32_constr_cntr_lgl_c367_cv IMPLEMENTATION.

  METHOD zif_09_contract_lgl_c367_cv~create_contract.
    me->zif_09_contract_lgl_c367_cv~contract_type = iv_cntr_type.
  ENDMETHOD.

ENDCLASS.
