CLASS zcl_36_conexion_lgl_c367_cv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: hour TYPE zsyst_uzeit.
    DATA: sender_user TYPE string.

    METHODS on_time_out FOR EVENT time_out OF zcl_35_timer_lgl_c367_cv
      IMPORTING ev_hour
                sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_36_conexion_lgl_c367_cv IMPLEMENTATION.
  METHOD on_time_out.
* Call logout method
    me->hour = ev_hour.
    me->sender_user = sender->user.
  ENDMETHOD.

ENDCLASS.
