;###############################################################################
;
; Process each (idx, value) pairs in array.
;
; rcx - box (IN / Variant_t)
; rdx - index iterator (OUT / uint32*)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function pointer)
;
;###############################################################################

__MOLD_ForDriver_IndexesAndValuesInArray:

    cmp     [rcx + Variant_t.type], VARIANT_ARRAY
    jnz     __MOLD_PrintErrorAndDie.arrayExpected

.unsafeEntry:

    push    rsi
    push    r12
    push    r13
    push    r14
    push    r15

    mov     rcx, [rcx + Variant_t.value]          ; rcx = array (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]        ; rcx = array (Array_t)
    mov     r12, [rcx + Array_t.itemsCnt]         ; r12 = array.itemsCnt (int64)

    or      r12, r12
    jz      .arrayEmpty

    mov     r15, r8
    mov     r13, rdx
    mov     r14, r9

    lea     rsi, [rcx + Array_t.items]            ; rsi = array.items
    mov     dword [rdx], 0                        ; idx = 0

    mov     eax, [rcx + Array_t.innerType]        ; rax = innerType (got from box)
    or      eax, eax
    jz      .arrayNextItem_variant

    mov     [r15 + Variant_t.type], eax           ;
    add     r15, 8

    movzx   rcx, byte [rcx + Array_t.itemSize]    ; rcx = log2(size(item))
    jmp     qword [.jmpTable + rcx*8]

.jmpTable:
    dq .arrayNextItem_8bit
    dq .arrayNextItem_16bit
    dq .arrayNextItem_32bit
    dq .arrayNextItem_64bit

    ; ##########################################################################
    ;                           Array of variants
    ; ##########################################################################

.arrayNextItem_variant:

    movdqu  xmm0, [rsi]          ; xmm0           = source value (variant)
    movdqu  [r15], xmm0          ; iterator.value = soruce value (variant)

    call    r14                  ; execute caller delivered code

    inc     dword [r13]          ; iterator.idx++
    add     rsi, 16              ; go to next value (128-bit variant)
    dec     r12                  ; r12 = update loop counter

    jne     .arrayNextItem_variant ; go to next item if exists
    jmp     .done

    ; ##########################################################################
    ;                         Array of 8-bit values
    ; ##########################################################################

.arrayNextItem_8bit:

    movsx   rax, byte [rsi]      ; rax            = source value (8-bit)
    mov     [r15], rax           ; iterator.value = soruce value (8-bit)

    call    r14                  ; execute caller delivered code

    inc     dword [r13]          ; iterator.idx++
    add     rsi, 1               ; go to next value (8-bit)
    dec     r12                  ; r12 = update loop counter

    jne     .arrayNextItem_8bit  ; go to next item if exists
    jmp     .done

    ; ##########################################################################
    ;                         Array of 16-bit values
    ; ##########################################################################

.arrayNextItem_16bit:

    movsx   rax, word [rsi]      ; rax            = source value (16-bit)
    mov     [r15], rax           ; iterator.value = soruce value (16-bit)

    call    r14                  ; execute caller delivered code

    inc     dword [r13]          ; iterator.idx++
    add     rsi, 2               ; go to next value (16-bit)
    dec     r12                  ; r12 = update loop counter

    jne     .arrayNextItem_16bit ; go to next item if exists
    jmp     .done

    ; ##########################################################################
    ;                         Array of 32-bit values
    ; ##########################################################################

.arrayNextItem_32bit:

    movsxd  rax, dword [rsi]     ; rax            = source value (32-bit)
    mov     [r15], rax           ; iterator.value = soruce value (32-bit)

    call    r14                  ; execute caller delivered code

    inc     dword [r13]          ; iterator.idx++
    add     rsi, 4               ; go to next value (32-bit)
    dec     r12                  ; r12 = update loop counter

    jne     .arrayNextItem_32bit ; go to next item if exists
    jmp     .done

    ; ##########################################################################
    ;                         Array of 64-bit values
    ; ##########################################################################

.arrayNextItem_64bit:

    mov     rax, qword [rsi]     ; rax            = source value (64-bit)
    mov     [r15], rax           ; iterator.value = soruce value (64-bit)

    call    r14                  ; execute caller delivered code

    inc     dword [r13]          ; iterator.idx++
    add     rsi, 8               ; go to next value (64-bit)
    dec     r12                  ; r12 = update loop counter

    jne     .arrayNextItem_64bit ; go to next item if exists

    ; ##########################################################################
    ;                    Loop finished or nothing to do
    ; ##########################################################################

.arrayEmpty:
.done:

    pop     r15
    pop     r14
    pop     r13
    pop     r12
    pop     rsi

    ret
