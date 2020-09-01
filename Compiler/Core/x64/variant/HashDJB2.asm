;###############################################################################
;
; Calculate DJB2 string hash.
; http://www.cse.yorku.ca/~oz/hash.html
;
; rcx = zero terminated string (IN)
;
; RETURNS: DJB2 hash (rax)
;
;###############################################################################

__MOLD_StringHashDJB2:
    ; rcx = String_t
    ; TODO: Store hash in String_t struct.
    push    rcx rdx r8

    mov     r8,  [rcx + String_t.length]
    lea     rcx, [rcx + String_t.text]
    mov     rax, 5381

    ; Is it empty string?
    or      r8, r8
    jz      .done

    ; Process string byte-by-byte
.goOn:
    movzx   rdx, byte [rcx]  ; rdx = c
    add     rdx, rax         ; rdx = hash + c

    shl     rax, 5           ; rax = hash * 32
    inc     rcx
    add     rax, rdx         ; rax = hash * 32 + hash + c = hash * 33 + c

    dec     r8
    jne     .goOn

.done:
    pop     r8 rdx rcx
    ret
