CLASS lcl_ztest_enho DEFINITION DEFERRED.
CLASS zcl_ag_unit_test DEFINITION LOCAL FRIENDS lcl_ztest_enho.
CLASS lcl_ztest_enho DEFINITION.
  PUBLIC SECTION.
    CLASS-DATA obj TYPE REF TO lcl_ztest_enho.              "#EC NEEDED
    DATA core_object TYPE REF TO zcl_ag_unit_test .         "#EC NEEDED
 INTERFACES  IPO_ZTEST_ENHO.
    METHODS:
      constructor IMPORTING core_object
                              TYPE REF TO zcl_ag_unit_test OPTIONAL.
ENDCLASS.
CLASS lcl_ztest_enho IMPLEMENTATION.
  METHOD constructor.
    me->core_object = core_object.
  ENDMETHOD.

  METHOD ipo_ztest_enho~hello.
*"------------------------------------------------------------------------*
*" Declaration of POST-method, do not insert any comments here please!
*"
*"METHODS hello .
*"------------------------------------------------------------------------*

    cl_demo_output=>write( |Test| ).

  ENDMETHOD.
ENDCLASS.
