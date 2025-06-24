CLASS zcl_35_timer_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "Definir
    EVENTS time_out EXPORTING VALUE(ev_hour)    TYPE zsyst_uzeit.

    METHODS:
      increment_counter IMPORTING iv_counter TYPE i,
      check_limit,
      constructor.

    DATA: user TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA counter TYPE i.
ENDCLASS.

CLASS zcl_35_timer_lgl_c367_cv IMPLEMENTATION.

  METHOD check_limit.
    "Es donde se levanta el evento
    IF me->counter GE 5.

*    data(lv_system_type) = cl_abap_context_info=>get_system_time( ).

      "Levantar
*    RAISE event time_out EXPORTING ev_hour = lv_system_type.
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time( ).
    ENDIF.

  ENDMETHOD.

  METHOD increment_counter.
*    me->counter = me->counter  +  iv_counter.
    me->counter +=  iv_counter.
    me->check_limit(  ).
  ENDMETHOD.

  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.

ENDCLASS.
