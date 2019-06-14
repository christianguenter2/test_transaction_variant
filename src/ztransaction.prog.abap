*&---------------------------------------------------------------------*
*& Report ztransaction
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztransaction.

TABLES: t100.

SELECT-OPTIONS s_arbgb FOR t100-arbgb.
PARAMETERS: p_sprsl TYPE t100-sprsl.

SELECT FROM t100
       FIELDS *
       WHERE  arbgb IN @s_arbgb
       AND    sprsl = @p_sprsl
       INTO TABLE @DATA(lt_t100)
       UP TO 100 ROWS.

cl_demo_output=>display( lt_t100 ).
