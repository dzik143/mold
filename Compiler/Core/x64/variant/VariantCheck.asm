;###############################################################################
;
; DEBUG ONLY
; Validate Variant_t object to track corrupted data.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

__MOLD_VariantCheck:
    ; rcx = value (Variant_t)
    push rbp
    mov  rbp, rsp
    sub  rsp, 32

    push rax

    mov  eax, [rcx + Variant_t.type]
    cmp  eax, -1
    jz   .undefinedRetVal

    cmp  rax, 0
    jl   .wrongTypeError

    cmp  rax, VARIANT_TYPE_MAX
    jg   .wrongTypeError

    cmp  eax, VARIANT_STRING
    jz   .checkString

    jmp  .ok

.checkString:

    test  [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz   .ok

    mov   rax, [rcx + Variant_t.value]
    test  rax, rax
    jz    .nullStringValueError

    cmp   [rax + Buffer_t.capacity], MAX_STRING_LENGTH
    ja    .badStringCapacityError

    cmp   [rax + Buffer_t.refCnt], MAX_REF_CNT
    jg    .badStringRefCntError

    mov   rax, [rax + Buffer_t.bytesPtr]
    test  rax, rax
    jz    .nullStringPointerError

    cmp   [rax + String_t.length], MAX_STRING_LENGTH
    ja    .badStringLengthError

.undefinedRetVal:
.ok:
    pop  rax

    add  rsp, 32
    pop  rbp
    ret

.wrongTypeError:
    cinvoke printf, 'PANIC! Unexpected value type [%d]', rax
    int 3

.nullStringValueError:
    cinvoke printf, 'PANIC! NULL string buffer'
    int 3

.badStringCapacityError:
    cinvoke printf, 'PANIC! Bad string capacity [%d]', [rax + Buffer_t.capacity]
    int 3

.badStringRefCntError:
    cinvoke printf, 'PANIC! Bad string refCnt [%d]', [rax + Buffer_t.refCnt]
    int 3

.badStringLengthError:
    cinvoke printf, 'PANIC! Bad string length'
    int 3

.nullStringPointerError:
    cinvoke printf, 'PANIC! NULL String_t pointer'
    int 3

macro DEBUG_CHECK_VARIANT x
{
  push rcx
  mov  rcx, x
  call __MOLD_VariantCheck
  pop  rcx
}
