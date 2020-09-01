;###############################################################################
;
; Print single Variant_t variable to stdout and append new line sequence.
;
; rcx - variable to print (Variant_t) (IN)
;
;###############################################################################

__MOLD_PrintVariantLn:
  call __MOLD_PrintVariant
  jmp  __MOLD_PrintNewLine
