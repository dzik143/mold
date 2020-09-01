;###############################################################################
;
; Print out single Variant_t, but wrap it into 'x' quotas if needed.
;
; rcx = variable to print (Variant_t) (IN)
;
;###############################################################################

__MOLD_PrintVariantWithQuotas:

  cmp     [rcx + Variant_t.type], VARIANT_STRING
  jnz     __MOLD_PrintVariant

  push    rcx

  mov     cl, "'"
  sub     rsp, 32
  call    [putchar]

  mov     rcx, [rsp + 32]

  call __MOLD_PrintVariant

  mov     cl, "'"
  call    [putchar]
  add     rsp, 32

  pop     rcx
  ret
