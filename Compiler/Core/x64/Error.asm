use64

; ##############################################################################
;                                Error handlers
; ##############################################################################

macro DefErrorEntry label {
.#label#:
  mov     cx, .msg#_#label - .msg_begin
  jmp     .final
}

__MOLD_PrintErrorAndDie:

DefErrorEntry generic
DefErrorEntry integerExpected
DefErrorEntry integerIndexExpected
DefErrorEntry booleanExpected
DefErrorEntry floatExpected
DefErrorEntry stringKeyExpected
DefErrorEntry mapOrObjectExpected
DefErrorEntry arrayExpected
DefErrorEntry arrayOrStringExpected
DefErrorEntry stringExpected
DefErrorEntry negativeIndex
DefErrorEntry indexOutOfRange
DefErrorEntry outOfMemory
DefErrorEntry badType
DefErrorEntry notImplemented
DefErrorEntry implicitConversion
DefErrorEntry notComparable
DefErrorEntry arrayStringOrMapExpected
DefErrorEntry divideByZero
DefErrorEntry floatOverflow
DefErrorEntry floatUnderflow
DefErrorEntry notIterable

.final:

    ; Build message on stack.
    and     rcx, 0xffff              ; rcx = message content offset
    lea     rbx, [.msg_begin + rcx]  ; rbx = message content (char *)
    mov     rdi, rsp                 ; rdi = message end (char*)

    ; Message prefix.
    lea     rsi, [.msg_beforeText]
    call    .pushText

    ; Message content.
    mov     rsi, rbx
    call    .pushText

    ; Message postfix.
    lea     rsi, [.msg_afterText]
    call    .pushText

    ; Param #1: get std error handle.
    mov     ecx, -12
    call    [GetStdHandle]   ; rax = std error handle
    mov     rcx, rax         ; rcx = std error handle (param #1)

    ; Parma #2: Message.
    mov     rdx, rsp         ; rdx = first message byte (param #2)

    ; Param #3: Message length.
    mov     r8, rdi          ; r8 = last message byte (char*)
    sub     r8, rsp          ; r8 = last - first = message length (param #3)

    ; Param #4: number of bytes written (out)
    mov     r9, rdi          ; r9 = number of bytes written (param #4)

    ; Param #5: null overlapped on stack.
    sub     rsp, 64
    push    0

    ; Write message from rsp to std error.
    sub     rsp, 32
    call    [WriteFile]
    add     rsp, 64 + 32 + 8

    mov     ecx, -1
    call    [ExitProcess]

.pushText:
; Helper function to concat string from rsi to rdi
; rsi = source string with one byte size prefix
; rdi = target string
    cld
    movzx   rcx, byte [rsi]
    inc     rsi
    rep     movsb
    ret

.msg_begin:
                                    ; 0         1         2         3         4         5
                                    ; 012345678901234567890123456789012345678901234567890
.msg_beforeText               db 15 , 'runtime error: '
.msg_generic                  db  7 , 'generic'
.msg_integerExpected          db 16 , 'integer expected'
.msg_integerIndexExpected     db 22 , 'integer index expected'
.msg_booleanExpected          db 16 , 'boolean expected'
.msg_floatExpected            db 14 , 'float expected'
.msg_stringKeyExpected        db 19 , 'string key expected'
.msg_stringExpected           db 15 , 'string expected'
.msg_mapOrObjectExpected      db 22 , 'map or object expected'
.msg_arrayExpected            db 14 , 'array expected'
.msg_arrayOrStringExpected    db 24 , 'array or string expected'
.msg_arrayStringOrMapExpected db 29 , 'array, string or map expected'
.msg_negativeIndex            db 20 , 'negative array index'
.msg_indexOutOfRange          db 18 , 'index out of range'
.msg_outOfMemory              db 14 , 'out of memory'
.msg_badType                  db  8 , 'bad type'
.msg_notImplemented           db 15 , 'not implemented'
.msg_implicitConversion       db 46 , 'implicit type conversion not supported anymore'
.msg_notComparable            db 14 , 'not comparable'
.msg_divideByZero             db 14 , 'divide by zero'
.msg_floatOverflow            db 23 , 'floating point overflow'
.msg_floatUnderflow           db 24 , 'floating point underflow'
.msg_notIterable              db 12 , 'not iterable'
.msg_afterText                db  2 , 13, 10
