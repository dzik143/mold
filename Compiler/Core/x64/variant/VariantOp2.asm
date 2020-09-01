macro DefVariantOperatorXX name, opcode_ii, opcode_dd, rv_type
{
  name:
    ; rcx = [x]
    ; rdx = [y]
    ; r8  = [rv]

    lea       r11, [.jmpTable]
    jmp       __MOLD_VariantTypeDispatcherXX

  .jmpTable:
      jmp short  .case_ii              ; integer x integer
      jmp short  .not_implemented      ; float   x float
      jmp short  .case_dd              ; double  x double

  ; integer x integer
  .case_ii:
    mov rcx, [rcx + Variant_t.value]   ; rcx = x.value
    mov rdx, [rdx + Variant_t.value]   ; rdx = y.value

    opcode_ii rcx, rdx                 ; rcx = x.value x y.value

    mov [r8 + Variant_t.type], rv_type ; rv.type  = VARIANT_INTEGER
    mov [r8 + Variant_t.value], rcx    ; rv.value = x.value x y.value

    DEBUG_CHECK_VARIANT r8

    ret

  ; double x double
  .case_dd:
    movq      xmm0, [rcx + Variant_t.value]
    movq      xmm1, [rdx + Variant_t.value]

    opcode_dd xmm0, xmm1

    mov       [r8 + Variant_t.type], rv_type ; rv.type  = VARIANT_DOUBLE
    movq      [r8 + Variant_t.value], xmm0

    DEBUG_CHECK_VARIANT r8

    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented
}

DefVariantOperatorXX __MOLD_VariantAdd , add  , addsd, r9d
DefVariantOperatorXX __MOLD_VariantSub , sub  , subsd, r9d
DefVariantOperatorXX __MOLD_VariantMul , imul , mulsd, r9d

;###############################################################################
;
; Divide two variant variables.
; Result is always floating point.
; rv = x / y
;
; rcx = x
; rdx = y
; r8  = rv
;
;###############################################################################

__MOLD_VariantDiv:

    mov       [r8 + Variant_t.type], VARIANT_DOUBLE ; rv.type  = VARIANT_DOUBLE
    lea       r11, [.jmpTable]
    jmp       __MOLD_VariantTypeDispatcherXX

.jmpTable:
    jmp short .case_ii                       ; integer / integer
    jmp short .not_implemented               ; float   / float
    jmp short .case_dd                       ; double  / double

    ; --------------------------------------------------------------------------
    ; integer / integer
    ; --------------------------------------------------------------------------

.case_ii:
    cvtsi2sd  xmm0, [rcx + Variant_t.value]  ; xmm0     = x.value
    cvtsi2sd  xmm1, [rdx + Variant_t.value]  ; xmm1     = double(y.value)
    jmp       .case_dd_final

    ; --------------------------------------------------------------------------
    ; double / double
    ; --------------------------------------------------------------------------

.case_dd:
    movq      xmm0, [rcx + Variant_t.value]  ; xmm0     = x.value
    movq      xmm1, [rdx + Variant_t.value]  ; xmm1     = y.value

.case_dd_final:
    divsd     xmm0, xmm1                     ; xmm0     = x.value / y.value
    movq      [r8 + Variant_t.value], xmm0   ; rv.value = x.value / y.value
    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented

;###############################################################################
;
; Divide two variant variables treating them as integers.
; Result is always integer.
; rv = x // y
;
; rcx = x  (Variant_t *) (IN)
; rdx = y  (Variant_t *) (IN)
; r8  = rv (Variant_t *) (OUT)
;
;###############################################################################

__MOLD_VariantDivAsInteger:
    mov   [r8 + Variant_t.type], VARIANT_INTEGER

    lea   r11, [.jmpTable]
    jmp   __MOLD_VariantTypeDispatcherXX

.jmpTable:
    jmp short  .case_ii             ; integer // integer
    jmp short  .not_implemented     ; float   // float
    jmp short  .case_dd             ; double  // double

    ; --------------------------------------------------------------------------
    ; integer // integer
    ; --------------------------------------------------------------------------

.case_ii:
    mov  rax, [rcx + Variant_t.value] ; rax     = x.value
    mov  rcx, [rdx + Variant_t.value] ; rcx     = y.value
    cqo                               ; rdx:rax = x.value
    idiv rcx                          ; eax     = x.value // y.value

    mov [r8 + Variant_t.value], rax   ; rv.value = x.value // y.value

    ret

    ; --------------------------------------------------------------------------
    ; double // double
    ; --------------------------------------------------------------------------

.case_dd:
    movq      xmm0, [rcx + Variant_t.value]  ; xmm0     = x.value
    movq      xmm1, [rdx + Variant_t.value]  ; xmm1     = y.value
    divsd     xmm0, xmm1                     ; xmm0     = x.value / y.value
    cvttsd2si rax, xmm0                      ; rax      = int(x.value / y.value)
    mov       [r8 + Variant_t.value], rax    ; rv.value = int(x.value / y.value)

    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented
