CLASS zcl_09_lgl_c367_cv DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_01_log_c367_cv,
      zif_02_log_c367_cv.


    ALIASES:

      get_conn_id FOR zif_01_log_c367_cv~get_conn_id,
      get_customer FOR zif_02_log_c367_cv~get_customer,
      get_airports FOR zif_03_log_c367_cv~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_09_LGL_c367_cv IMPLEMENTATION.


  METHOD get_airports.

    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_airport.

  ENDMETHOD.


  METHOD get_conn_id.

    rv_conn_id = me->zif_01_log_c367_cv~conn_id.

  ENDMETHOD.


  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS first_name,
           last_name
    WHERE customer_id = @iv_cust_id
     INTO @rs_cust_address.

  ENDMETHOD.


  METHOD zif_01_log_c367_cv~set_conn_id.

    me->zif_01_log_c367_cv~conn_id = iv_conn_id.

    zif_01_log_c367_cv~comp_id = 'Airline ID'.

  ENDMETHOD.
ENDCLASS.
