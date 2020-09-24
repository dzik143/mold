; ##############################################################################
;
; rv = len(value)
;
; rcx = value (VARIANT*) (IN)
;
; RETURNS: len(value) in rax
;
; ##############################################################################

__MOLD_VariantLength:

    DEBUG_CHECK_VARIANT rcx

    lea     r8, [.jmpTable]
    mov     eax, [rcx + Variant_t.type]
    mov     [rdx + Variant_t.type], VARIANT_INTEGER
    add     r8, rax
    add     r8, rax

    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType

    jmp     r8

.jmpTable:
    jmp short .load0  ; undefined (0)
    jmp short .load0  ; null (1)
    jmp short .load1  ; integer (2)
    jmp short .load1  ; float (3)
    jmp short .load1  ; double (4)
    jmp short .string ; string (5)
    jmp short .load1  ; boolean (6)
    jmp short .array  ; array (7)
    jmp short .map    ; map (8)
    jmp short .object ; object (9)

.load0:
    mov     eax, 0
    ret

.load1:
    mov     eax, 1
    ret

.string:
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz     .load1

    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    mov     rax, [rcx + String_t.length]
    ret

.array:
.map:
.object:
    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    mov     rax, [rcx + Array_t.itemsCnt]
    ret
