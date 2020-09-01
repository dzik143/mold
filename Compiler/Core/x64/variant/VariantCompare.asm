macro DefVariantCompare name, opcode_ii, opcode_dd
{
  name:
    ; rcx = x  (Variant_t) (IN)
    ; rdx = y  (Variant_t) (IN)
    ; rax = rv (bool32)    (RETURN VALUE)

    lea     r11, [.jmpTable]
    jmp     __MOLD_VariantTypeDispatcherXX

  .jmpTable:
      jmp short  .case_ii                   ; integer x integer
      jmp short  .not_implemented           ; float   x float
      jmp short  .case_dd                   ; double  x double

  ; integer x integer
  .case_ii:
    mov       rcx, [rcx + Variant_t.value]  ; rcx = x.value
    mov       rdx, [rdx + Variant_t.value]  ; rdx = y.value
    xor       rax, rax
    cmp       rcx, rdx
    opcode_ii al
    ret

  ; double x double
  .case_dd:
    movq      xmm0, [rcx + Variant_t.value]
    movq      xmm1, [rdx + Variant_t.value]
    opcode_dd xmm0, xmm1
    movq      rax, xmm0
    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented
}

;###############################################################################
;
; Check do two variant variables are equal.
; rv = x == y
;
; rcx = x  (Variant_t) (IN)
; rdx = y  (Variant_t) (IN)
; rax = rv (bool32)    (RETURN VALUE)
;
;###############################################################################

__MOLD_VariantCompareEQ:

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    mov     eax, [rcx + Variant_t.type]     ; rax = x.type
    mov     r9d, [rdx + Variant_t.type]     ; r9  = y.type

    cmp     eax, r9d
    jz      .types_are_equal

.type_mismatch:
    ; TODO: Clean up this mess.
    ; TODO: Distinguish map and object.
    mov     r10d, eax       ; r10 = x.type
    shl     r10d, 4         ; r10 = 16 * x.type
    add     r10d, r9d       ; r10 = 16 * x.type + y.type

    ; map vs object
    cmp     r10d, 89h
    jz      .memoryCompare

    ; object vs map
    cmp     r10d, 98h
    jz      .memoryCompare

    jmp     __MOLD_PrintErrorAndDie.implicitConversion

.types_are_equal:
    ; string vs string
    cmp     eax, VARIANT_STRING
    jz      .compare_ss

.memoryCompare:
    ; TODO: Optimize it.
    mov     r9,  [rcx + Variant_t.value]   ; r9  = x.value
    cmp     r9,  [rdx + Variant_t.value]   ; r9  = x.value xor y.value
    setz    al                             ; rax = compareEQ(x, y)
    and     eax, 1                         ; rax = compareEQ(x, y) {0,1}
    ret

.compare_ss:
    ; TODO: Optimize it.
    mov     r9,  [rcx + Variant_t.value]   ; r9  = x.value
    mov     r10, [rdx + Variant_t.value]   ; r10 = x.value

    ; TODO: Clean up this mess.
    mov     [OneCharacterStringTempPeek], r9b
    mov     [OneCharacterStringTempPeek2], r10b

    lea     rax, [OneCharacterStringTempBufferHolder]
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    cmovnz  r9, rax

    lea     rax, [OneCharacterStringTempBufferHolder2]
    test    [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    cmovnz  r10, rax

    mov     rcx, [r9 + Buffer_t.bytesPtr]
    mov     rdx, [r10 + Buffer_t.bytesPtr]

    lea     rcx, [rcx + String_t.text]
    lea     rdx, [rdx + String_t.text]

    push    r8
    sub     rsp, 32
    call    [strcmp]
    add     rsp, 32
    pop     r8

    test    rax, rax
    setz    al
    and     rax, 1

    ret

;###############################################################################
;
; Check do two variant variables are differ.
; rv = x != y
;
; rcx = x  (Variant_t) (IN)
; rdx = y  (Variant_t) (IN)
; rax = rv (bool32)    (RETURN VALUE)
;
;###############################################################################

__MOLD_VariantCompareNE:

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    call    __MOLD_VariantCompareEQ
    xor     al, 1

    ret

DefVariantCompare __MOLD_VariantCompareLT, setl,  cmpltsd
DefVariantCompare __MOLD_VariantCompareLE, setle, cmplesd

; http://www.felixcloutier.com/x86/CMPSD.html#tbl-3-6
; The greater-than relations that the processor does not implement require
; more than one instruction to emulate in software and therefore should not
; be implemented as pseudo-ops. (For these, the programmer should reverse
; the operands of the corresponding less than relations and use move
; instructions to ensure that the mask is moved to the correct destination
; register and that the source operand is left intact.)

;DefVariantCompare __MOLD_VariantCompareGT, setg,  cmpnlesd
;DefVariantCompare __MOLD_VariantCompareGE, setge, cmpnltsd
