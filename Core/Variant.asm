;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (C) 2015, 2020 Sylwester Wysocki (sw143@wp.pl)                    #
;#                                                                             #
;# This program is free software: you can redistribute it and/or modify        #
;# it under the terms of the GNU General Public License as published by        #
;# the Free Software Foundation, either version 3 of the License, or           #
;# (at your option) any later version.                                         #
;#                                                                             #
;# This program is distributed in the hope that it will be useful,             #
;# but WITHOUT ANY WARRANTY; without even the implied warranty of              #
;# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
;# GNU General Public License for more details.                                #
;#                                                                             #
;# You should have received a copy of the GNU General Public License           #
;# along with this program. If not, see <http://www.gnu.org/licenses/>         #
;#                                                                             #
;###############################################################################

include 'Debug.asm'
include 'Utils.asm'
include 'Memory.asm'

;###############################################################################
;                                  Constants
;###############################################################################

; Special cases - undefined and null.
VARIANT_UNDEFINED EQU 0
VARIANT_NULL      EQU 1

; Primitives.
VARIANT_INTEGER   EQU 2
VARIANT_FLOAT     EQU 3
VARIANT_DOUBLE    EQU 4
VARIANT_STRING    EQU 5
VARIANT_BOOLEAN   EQU 6

; Complex containers.
VARIANT_ARRAY     EQU 7
VARIANT_MAP       EQU 8
VARIANT_OBJECT    EQU 9
VARIANT_TYPE_MAX  EQU 9

VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE EQU 1
VARIANT_FLAG_ONE_CHARACTER            EQU 2

VARIANT_MAP_DEFAULT_BUCKETS_CNT    EQU 16
VARIANT_OBJECT_DEFAULT_BUCKETS_CNT EQU 16
VARIANT_ARRAY_DEFAULT_ITEMS_CNT    EQU 16

VARIANT_ARRAY_DEFAULT_BUFFER_SIZE  EQU 16 * VARIANT_ARRAY_DEFAULT_ITEMS_CNT + 16
VARIANT_MAP_DEFAULT_BUFFER_SIZE    EQU 36 * VARIANT_MAP_DEFAULT_BUCKETS_CNT + 32
VARIANT_OBJECT_DEFAULT_BUFFER_SIZE EQU 36 * VARIANT_OBJECT_DEFAULT_BUCKETS_CNT + 32

MAX_STRING_LENGTH EQU 1024*1024

struct Variant_t
  type  dd ?
  flags dd ?
  value dq ?
ends

struct StringHead_t
  length dq ?
ends

struct String_t
  length dq ?
  text   db ?
ends

struct Array_t
  innerType dd ?
  itemSize  db ?
  reserved1 db ?
  reserved2 db ?
  reserved3 db ?
  itemsCnt  dq ?
  items     Variant_t ?
ends

struct MapBucket_t
  key Variant_t ?
  val Variant_t ?
ends

struct Map_t
  reserved       dq ?
  bucketsUsedCnt dq ?
  bucketsCnt     dq ?
  buckets        MapBucket_t ?
ends

struct Object_t
  vtable         dq ?
  bucketsUsedCnt dq ?
  bucketsCnt     dq ?
  buckets        MapBucket_t ?
ends

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
    cinvoke printf, 'PANIC! Bad string capacity'
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

;###############################################################################
;
; Print single Variant_t variable to stdout.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

proc __MOLD_PrintVariant uses r12, v

    DEBUG_CHECK_VARIANT rcx

    mov  eax, [rcx + Variant_t.type]
    mov  rdx, [rcx + Variant_t.value]

    cmp  eax, VARIANT_STRING
    je   .string
    ja   .complexOrBoolean

    mov  rcx, [.fmtTable + rax*8]

    sub  rsp, 32
    call [printf]
    add  rsp, 32

    ret

.fmtTable     dq .fmtUndefined, .fmtNull, .fmtInteger, .fmtFloat, .fmtDouble, .fmtString
.fmtNull      db 'null', 0
.fmtUndefined db 'undefined', 0
.fmtInteger   db '%lld', 0
.fmtFloat     db '%f', 0
.fmtDouble    db '%lf', 0
.fmtString    db '%s', 0
.fmtTrue      db 'true', 0
.fmtFalse     db 'false', 0
.fmtSeparator db ', ', 0
.fmtEmpty     db '', 0
.fmtAfterKey  db ': ', 0
.fmtChar      db '%c', 0
.jmpTable     dq .boolean, .array, .map, .object

.complexOrBoolean:
    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType
    jmp     [.jmpTable + rax*8 - VARIANT_BOOLEAN*8]

.boolean:
    or      rdx, rdx
    jz      .booleanFalse

.booleanTrue:
    cinvoke printf, .fmtTrue
    ret

.booleanFalse:
    cinvoke printf, .fmtFalse
    ret

.string:
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jz      .ordinaryString

.oneCharacterString:
    cinvoke printf, .fmtChar, dl
    ret

.ordinaryString:
    mov     rdx, [rdx + Buffer_t.bytesPtr]
    lea     rdx, [rdx + String_t.text]
    cinvoke printf, .fmtString, rdx

    ret

    ; ------------------------------------------
    ;              Print array
    ; ------------------------------------------

.array:
    push    rdx
    mov     cl, '['
    cinvoke putchar
    pop     rdx

    push    rbx
    push    rsi

    mov     rdx, [rdx + Buffer_t.bytesPtr]
    mov     rbx, [rdx + Array_t.itemsCnt]
    lea     rsi, [rdx + Array_t.items]

    cmp     [rdx + Array_t.innerType], 0
    jnz     .errorNonVariantItem

    or      rbx, rbx
    jz      .arrayEmpty

    lea     r12, [.fmtEmpty]

.arrayNextItem:

    cinvoke printf, r12
    lea     r12, [.fmtSeparator]

    mov     rcx, rsi
    call    __MOLD_PrintVariantWithQuotas

    add     rsi, 16
    dec     rbx
    jne     .arrayNextItem

.arrayEmpty:

    mov     cl, ']'
    cinvoke putchar

    pop     rsi
    pop     rbx
    ret

    ; ------------------------------------------
    ;             Print hash map
    ; ------------------------------------------

.map:
    push    rdx
    mov     cl, '{'
    cinvoke putchar
    pop     rdx

    push    rbx
    push    rsi
    push    rdi
    push    r12

    mov     rdx, [rdx + Buffer_t.bytesPtr]
    mov     rbx, [rdx + Map_t.bucketsUsedCnt]

    or      rbx, rbx
    jz      .mapEmpty

    mov     rax, [rdx + Map_t.bucketsCnt]         ; rax = map.bucketsCnt
    lea     rdi, [rdx + Map_t.buckets]            ; rdi = map.buckets
    shl     rax, 5                                ; rax = map.bucketsCnt * 32
    lea     r12, [.fmtEmpty]                      ;
    lea     rsi, [rdi + rax]                      ; rsi = map.index

.mapNextItem:
    cinvoke printf, r12
    lea     r12, [.fmtSeparator]

    ; Print key
    mov     eax, [rsi]                            ; rcx = bucketIdx
    mov     rcx, rdi                              ; rcx = buckets
    add     rcx, rax                              ; rcx = buckets[bucketIdx]

    push    rcx
    call     __MOLD_PrintVariantWithQuotas

    ; Print separator
    cinvoke printf, .fmtAfterKey

    ; Print value
    pop     rcx
    add     rcx, 16
    call     __MOLD_PrintVariantWithQuotas

.mapNextItemEmpty:
    add     rsi, 4
    dec     rbx
    jne     .mapNextItem

.mapEmpty:
    mov     cl, '}'
    cinvoke putchar

    pop     r12
    pop     rdi
    pop     rsi
    pop     rbx
    ret

.object:
    cinvoke printf, '[object]'
    ret

.errorNonVariantItem:
    cinvoke printf, '__MOLD_VariantPrint: error: non-variant inner types not implemented'
    int 3
endp

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

;###############################################################################
;
; Print any number of Variant_t variables to stdout.
;
;###############################################################################

__MOLD_PrintArrayOfVariantsLn:
    .item2 EQU rsp + 32
    .item3 EQU rsp + 40

    jecxz   .done

    push    r12
    mov     r12, rcx                     ; r12 = count
    sub     rsp, 32 + 16 + 8             ; Shadow space for putchar

    mov     [.item2], r8                 ; save item#2 on stack
    mov     [.item3], r9                 ; save item#3 on stack


    ; --------------------------------------------------------------------------
    ; print 1-st item (rdx)
    ; --------------------------------------------------------------------------

    mov     rcx, rdx
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; 2-nd item (r8)
    ; --------------------------------------------------------------------------

    mov     cl, ' '
    call    [putchar]
    mov     rcx, [.item2]
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; 3-rd item (r9)
    ; --------------------------------------------------------------------------

    mov     cl, ' '
    call    [putchar]
    mov     rcx, [.item3]
    call    __MOLD_PrintVariant
    dec     r12
    jz      .popAndDone

    ; --------------------------------------------------------------------------
    ; Remaining n items (stack)
    ; --------------------------------------------------------------------------

.printNextItem:
    mov     cl, ' '
    call    [putchar]
    mov     rcx, [rsp + 64 + r12 * 8]
    call    __MOLD_PrintVariant
    dec     r12
    jnz     .printNextItem

.popAndDone:
    add     rsp, 32 + 16 + 8
    pop     r12

.done:
    jmp     __MOLD_PrintNewLine

    restore .item2
    restore .item3

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

;###############################################################################
;
; Convert single Variant_t to string.
;
; rcx = variable to convert (Variant_t) (IN)
; rdx = result string       (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantConvertToString:
    ; rcx = value
    ; rdx = rv

    DEBUG_CHECK_VARIANT rcx

    mov     r9, [rcx + Variant_t.value]            ; r9  = value.value
    mov     r10d, [rcx + Variant_t.type]           ; r10 = value.type

    cmp     r10d, VARIANT_STRING
    jnz     .notString

    ; -----------------------------------------------
    ; String - Nothing to do, just pass string as is.
    ; -----------------------------------------------

.string:
    ; TODO: Clean up this mess.
    xchg    rcx, rdx
    jmp     __MOLD_VariantMove

.notString:
    cmp     r10d, VARIANT_BOOLEAN
    jnz     __MOLD_VariantConvertToString_notBoolean

    ; ---------------------------------
    ; Boolean - true or false constants
    ; ---------------------------------

__MOLD_VariantConvertBool64ToString:

    ; r9  = value
    ; rdx = rv (Variant_t)

    mov     [rdx + Variant_t.type],  VARIANT_STRING ; rv.type  = VARIANT_STRING
    mov     [rdx + Variant_t.flags], 0              ; rv.flags = 0

    lea     rax, [StringFalseBufferHolder] ; rcx = 'false'
    lea     rcx, [StringTrueBufferHolder]  ; rdx = 'true'
    test    r9, r9                         ; is value 0?

    cmovnz  rax, rcx                       ; (value != 0) ? rax = 'true' : 'false'
    mov     [rdx + Variant_t.value], rax   ; rv.value = rax

    DEBUG_CHECK_VARIANT rdx

    mov     rcx, rdx
    call    __MOLD_VariantAddRef

    ret


__MOLD_VariantConvertToString_notBoolean:
    cmp     r10d, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.badType

    ; ------------------------------------
    ; Non string value, conversion needed.
    ; Allocate new String_t buffer
    ; ------------------------------------

__MOLD_VariantConvertPrimitiveToString:
    ; r9  = value
    ; r10 = type
    ; rdx = rv (Variant_t)

    push    rdx

    push    rdx r9 r10
    mov     ecx, 32                                ; rcx = buffer size needed
    call    __MOLD_MemoryAlloc                     ; rax = new Buffer_t
    pop     r10 r9 rdx

    mov     [rdx + Variant_t.type], VARIANT_STRING ; rv.type  = VARIANT_STRING
    mov     [rdx + Variant_t.value], rax           ; rv.value = new string buffer
    mov     [rdx + Variant_t.flags], 0             ; rv.flags = none
    mov     rax, [rax + Buffer_t.bytesPtr]
    push    rax

    lea     rcx, [rax + String_t.text]             ; rcx = new string buffer
    mov     edx, 31                                ; rdx = capacity of buffer
    mov     r8, [.fmtTable + r10*8]                ; r8  = fmt

    sub     rsp, 32
    call    [snprintf]                             ;
    add     rsp, 32                                ;
                                                   ;
    ; TODO: Review it.
    mov     edx, 31                                ; rdx = 32 - 1
    and     rax, rdx                               ; rax = length mod 32

    pop     rcx
    mov     [rcx + String_t.length], rax

    pop     rdx
    DEBUG_CHECK_VARIANT rdx

    ret

.fmtTable     dq .fmtUndefined, .fmtNull  , .fmtInteger, .fmtFloat, .fmtDouble, .fmtString
              dq .fmtBoolean  , .fmtArray , .fmtMap    , .fmtObject

.fmtUndefined db 'undefined', 0
.fmtNull      db 'null', 0
.fmtInteger   db '%lld', 0
.fmtFloat     db '%f', 0
.fmtDouble    db '%lf', 0
.fmtString    db '%s', 0
.fmtBoolean   db '%d', 0
.fmtTrue      db 'true', 0
.fmtFalse     db 'false', 0
.fmtArray     db '[array]', 0
.fmtMap       db '[map]', 0
.fmtObject    db '[object]', 0

;###############################################################################
;
; Print out single Variant_t variable to stderr.
;
; rcx = value (Variant_t) (IN)
;
;###############################################################################

proc __MOLD_PrintVariantToStdError uses r12

    local .buf:Variant_t

    DEBUG_CHECK_VARIANT rcx

    push    r12

    lea     rdx, [.buf]
    call    __MOLD_VariantConvertToString   ; rdx = str(value) (Variant_t)

    lea     rcx, [.buf]
    mov     rcx, [rcx + Variant_t.value]    ; rcx = str(value) (Buffer_t)
    mov     r12, [rcx + Buffer_t.bytesPtr]  ; rcx = str(value) (String_t)

    cinvoke GetStdHandle, -12

    lea     r9,  [NumberOfBytesWritten]
    mov     r8,  [r12 + String_t.length]
    lea     rdx, [r12 + String_t.text]
    mov     rcx, rax

    push    rax
    cinvoke WriteFile, rcx, rdx, r8, r9, 0
    pop     rax

    cinvoke WriteFile, rax, .fmtNewLine, 2, NumberOfBytesWritten, 0

    pop     r12
    ret

.fmtNewLine db 13, 10
endp

;###############################################################################
;
; Get human-readable type name for given variant variable.
;
; rcx = x  (Variant_t) (IN)
; rdx = rv (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantTypeOf:

    DEBUG_CHECK_VARIANT rcx

    mov  eax, [rcx + Variant_t.type]
    cmp  eax, VARIANT_TYPE_MAX
    ja   __MOLD_PrintErrorAndDie.badType

    shl  rax, 4
    mov  rcx, qword [__MOLD_TypeNames + rax]
    mov  rax, qword [__MOLD_TypeNames + rax + 8]

    mov  [rdx], rcx
    mov  [rdx + 8], rax

    DEBUG_CHECK_VARIANT rdx

    ret

__MOLD_PrintNewLine:
    sub   rsp, 32
    mov   cl, 10
    call  [putchar]
    add   rsp, 32
    ret

__MOLD_VariantTypeDispatcherXX:
    ; rcx = x
    ; rdx = y
    ; r11 = jmptable

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    mov     r9d,  [rcx + Variant_t.type]  ; r9  = x.type
    mov     r10d, [rdx + Variant_t.type]  ; r10 = y.type
    cmp     r9d, r10d
    jnz     __MOLD_PrintErrorAndDie.implicitConversion
    jmp     __MOLD_VariantTypeDispatcherX.final

__MOLD_VariantTypeDispatcherX:
    ; rcx = x
    ; r11 = jmptable

    DEBUG_CHECK_VARIANT rcx

    mov     r9d,  [rcx + Variant_t.type]  ; r9  = x.type

.final:
    add     r11, r9
    add     r11, r9
    sub     r11, VARIANT_INTEGER * 2
    cmp     r9d, VARIANT_DOUBLE
    ja      __MOLD_PrintErrorAndDie.badType
    jmp     r11

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

macro DefVariantCompare name, opcode_ii, opcode_dd
{
  name:
    ; rcx = x  (Variant_t) (IN)
    ; rdx = y  (Variant_t) (IN)
    ; r8  = rv (int32*)    (OUT)

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
    mov       dword [r8], eax
    ret

  ; double x double
  .case_dd:
    movq      xmm0, [rcx + Variant_t.value]
    movq      xmm1, [rdx + Variant_t.value]
    opcode_dd xmm0, xmm1
    movq      rax, xmm0
    mov       dword [r8], eax
    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented
}

proc __MOLD_VariantCompareEQ
    ; rcx = x  (Variant_t) (IN)
    ; rdx = y  (Variant_t) (IN)
    ; r8  = rv (int32*)    (OUT)

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
    xor     r9,  [rdx + Variant_t.value]   ; r9  = x.value xor y.value
    setz    al                             ; rax = compareEQ(x, y)
    and     eax, 1                         ; rax = compareEQ(x, y) {0,1}
    mov     dword [r8], eax                ; rv  = compareEQ(x, y) {0,1}
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
    mov     dword [r8], eax

    ret
endp

proc __MOLD_VariantCompareNE
    ; rcx = x  (Variant_t) (IN)
    ; rdx = y  (Variant_t) (IN)
    ; r8  = rv (int32*)    (OUT)

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    call    __MOLD_VariantCompareEQ
    xor     dword [r8], 1

    ret
endp

DefVariantCompare __MOLD_VariantDefaultCompareEQ, setz,  cmpeqsd
DefVariantCompare __MOLD_VariantCompareLT,        setl,  cmpltsd
DefVariantCompare __MOLD_VariantCompareLE,        setle, cmplesd

; http://www.felixcloutier.com/x86/CMPSD.html#tbl-3-6
; The greater-than relations that the processor does not implement require
; more than one instruction to emulate in software and therefore should not
; be implemented as pseudo-ops. (For these, the programmer should reverse
; the operands of the corresponding less than relations and use move
; instructions to ensure that the mask is moved to the correct destination
; register and that the source operand is left intact.)

;DefVariantCompare __MOLD_VariantCompareGT, setg,  cmpnlesd
;DefVariantCompare __MOLD_VariantCompareGE, setge, cmpnltsd

;###############################################################################
;
; Negate variant variable.
; rv = -x
;
; rcx = x (Variant_t) (IN)
; rdx = y (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantNeg:

    mov     r10, [rcx + Variant_t.value]        ; r10 = x.value
    lea     r11, [.jmpTable]                    ; r11 = jmp table
    jmp     __MOLD_VariantTypeDispatcherX       ; dispatch code

.jmpTable:
    jmp short  .case_i                    ; -integer
    jmp short  .not_implemented           ; -float
    jmp short  .case_d                    ; -double

.signBit dq 0x8000000000000000

; -integer
.case_i:
    neg     r10                           ; r10 = -x.value
    jmp     .final

; -double
.case_d:
    xor     r10, [.signBit]

.final:
    mov     [rdx + Variant_t.type ], r9d  ; rv.type  =  x.type
    mov     [rdx + Variant_t.value], r10  ; rv.value = -x.value
    ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented

;###############################################################################
;
; Divide two variant variables treating them as integers.
; Result is always integer.
; rv = x // y
;
; rcx = x  (Variant_t) (IN)
; rdx = y  (Variant_t) (IN)
; r8  = rv (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantDivAsInteger:
    ; rcx = [x]
    ; rdx = [y]
    ; r8  = [rv]

    mov   [r8 + Variant_t.type], VARIANT_INTEGER

    lea   r11, [.jmpTable]
    jmp   __MOLD_VariantTypeDispatcherXX

.jmpTable:
    jmp short  .case_ii             ; integer // integer
    jmp short  .not_implemented     ; float   // float
    jmp short  .case_dd             ; double  // double

; integer x integer
.case_ii:
  mov  rax, [rcx + Variant_t.value] ; rax     = x.value
  mov  rcx, [rdx + Variant_t.value] ; rcx     = y.value
  cqo                               ; rdx:rax = x.value
  idiv rcx                          ; eax     = x.value // y.value

  mov [r8 + Variant_t.value], rax  ; rv.value = x.value // y.value

  ret

; double // double
.case_dd:
   movq      xmm0, [rcx + Variant_t.value]  ; xmm0     = x.value
   movq      xmm1, [rdx + Variant_t.value]  ; xmm1     = y.value
   divsd     xmm0, xmm1                     ; xmm0     = x.value / y.value
   cvttsd2si rax, xmm0                      ; rax      = int(x.value / y.value)
   mov       [r8 + Variant_t.value], rax    ; rv.value = int(x.value / y.value)

   ret

.not_implemented:
    jmp __MOLD_PrintErrorAndDie.notImplemented

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

; integer / integer
.case_ii:
    cvtsi2sd  xmm0, [rcx + Variant_t.value]  ; xmm0     = x.value
    cvtsi2sd  xmm1, [rdx + Variant_t.value]  ; xmm1     = double(y.value)
    jmp       .case_dd_final

; double / double
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
; Store one item in the box.
; x[i] = ...
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32*)    (IN)
; r8  = rv    (Variant_t) (IN)
;
;###############################################################################

proc __MOLD_VariantStoreAtIndex_int32

    DEBUG_CHECK_VARIANT rcx

    ; TODO: Optimize it.
    push   rcx rdx r8
    mov    rcx, r8
    call   __MOLD_VariantAddRef
    pop    r8 rdx rcx
    ; END OF TODO

    mov    eax, [rcx + Variant_t.type]
    cmp    eax, VARIANT_ARRAY
    jnz    __MOLD_PrintErrorAndDie.arrayExpected

    ; --------------------------------------------------------------------------
    ;                          Integer indexed array
    ; ==========================================================================

.array:
    mov     r10, [rcx + Variant_t.value]  ; r10  = array buffer (Buffer_t)
    mov     edx, dword [rdx]              ; edx  = idx          (integer)

    or      edx, edx
    js      __MOLD_PrintErrorAndDie.negativeIndex

    ; --------------------------------------------------------------------------
    ; Check is there space for new item
    ; --------------------------------------------------------------------------

    mov     r9d, edx                             ; r9 = idx    (integer)
    shl     r9d, 4                               ; r9 = idx*16 (integer)

.checkBounds:
    mov     rax, [r10 + Buffer_t.capacity]       ; rax = capacity
    sub     rax, 16                              ; rax = capacity - Array_t head
    cmp     r9, rax                              ; is index in bound?
    jb      .arrayNoReallocNeeded

.arrayReallocBuffer:
    push    rdx r8 r9 r10 r11
    mov     rcx, r10
    call    __MOLD_MemoryIncreaseBufferTwice

    pop     r11 r10 r9 r8 rdx
    jmp     .checkBounds

.arrayNoReallocNeeded:

    mov     rcx, [r10 + Buffer_t.bytesPtr]       ; rcx  = array buffer (Array_t)
    inc     edx                                  ; edx = edx + 1
    mov     rax, [rcx + Array_t.itemsCnt]        ; eax = array.itemsCnt (integer)
    lea     r10, [rcx + Array_t.items + r9]      ; r10 = array slot to fill

    ; --------------------------------------------------------------------------
    ; Set new size if needed
    ; --------------------------------------------------------------------------

    cmp     rdx, rax                             ; idx + 1 ? size
    cmova   rax, rdx                             ; rax = max(idx + 1, size)
    mov     [rcx + Array_t.itemsCnt], rax        ; array.size = max(idx + 1, size)

    ; --------------------------------------------------------------------------
    ; Destroy old value if any
    ; --------------------------------------------------------------------------

    push    r8 r10
    mov     rcx, r10
    call    __MOLD_VariantDestroy                ; array[idx].destroy()
    pop     r10 r8

    ; --------------------------------------------------------------------------
    ; Put new item into array slot
    ; --------------------------------------------------------------------------

    movdqu  xmm0, [r8]                           ; xmm0 = value (Variant_t)
    movdqu  [r10], xmm0                          ; array[idx] = value

    DEBUG_CHECK_VARIANT r8

    ret

endp

;###############################################################################
;
; Store single item in the box using string key.
; x{key} = ...
;
; rcx = box            (Variant_t) (IN)
; rdx = key            (Variant_t) (IN)
; r8  = value to store (Variant_t) (IN)
;
;###############################################################################

proc __MOLD_VariantStoreAtKey
    ; TODO: Avoid temp stack values.
    local .keyPtr   dq ?
    local .valuePtr dq ?
    local .box      dq ?

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    ; TODO: Optimize it.
    push   rcx rdx r8
    mov    rcx, r8
    call   __MOLD_VariantAddRef
    pop    r8 rdx rcx
    ; END OF TODO

    mov    eax, [rcx + Variant_t.type]
    cmp    eax, VARIANT_MAP
    je     .map

    cmp    eax, VARIANT_OBJECT
    jnz    __MOLD_PrintErrorAndDie.mapOrObjectExpected

    ; --------------------------------------------------------------------------
    ;                        Hash map or object
    ; ==========================================================================

.map:
.object:
    cmp    [rdx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringKeyExpected

    mov    [.box], rcx
    mov    [.keyPtr], rdx
    mov    [.valuePtr], r8

.mapRetrySearch:
    mov    r10, [rcx + Variant_t.value]         ; r10  = map buffer (Buffer_t)
    mov    r10, [r10 + Buffer_t.bytesPtr]       ; r10  = map buffer (Map_t)
    mov    rdx, [rdx + Variant_t.value]         ; rcx  = key        (Buffer_t)
    push   rdx
    mov    rcx, [rdx + Buffer_t.bytesPtr]       ; rcx  = key        (String_t)
    mov    r11, rcx                             ; r11  = key        (String_t)

    call   __MOLD_StringHashDJB2                ; rax  = hash (integer)

    mov    r9, [r10 + Map_t.bucketsCnt]         ; r9   = bucketsCnt      (integer)
    shl    rax, 5                               ; rax  = hash * 32       (integer)
    shl    r9, 5                                ; r9   = bucketsCnt * 32 (integer)
    dec    r9                                   ; r9   = and mask        (integer)
    mov    rcx, r9                              ; rcx  = bucketsCnt

.mapSearchForFreeBucket:
    and    rax, r9                              ; rax  = bucket offset (integer)

    cmp    dword [r10 + Map_t.buckets + rax + Variant_t.type], VARIANT_UNDEFINED
    jz     .mapAllocateNewBucket

    ; TODO: Clean up this mess.
    push   rax rcx rdx r8 r9 r10 r11 r12
    mov    rcx, r11                             ; rcx  = key (String_t)
    mov    rdx, [r10 + Map_t.buckets + rax + Variant_t.value]
    mov    rdx, [rdx + Buffer_t.bytesPtr]

    lea    rcx, [rcx + String_t.text]
    lea    rdx, [rdx + String_t.text]

    cinvoke strcmp
    test   rax, rax
    pop    r12 r11 r10 r9 r8 rdx rcx rax

    jz     .mapSetBucket

    add    rax, 32
    dec    rcx
    jnz    .mapSearchForFreeBucket

    ; --------------------------------------------------------------------------
    ; Out of space - resize map and try again
    ; --------------------------------------------------------------------------

    mov     rcx, [.box]
    call    __MOLD_VariantMapResizeTwice

    mov    rcx, [.box]
    mov    rdx, [.keyPtr]
    mov    r8,  [.valuePtr]

    jmp    .mapRetrySearch
    ;jmp    .errorOutOfSpace

    ; --------------------------------------------------------------------------
    ; Update index to keep keys order during realloc
    ; --------------------------------------------------------------------------

.mapAllocateNewBucket:

    mov    rcx, [r10 + Map_t.bucketsCnt]     ; rcx = bucketsCnt
    mov    rdx, [r10 + Map_t.bucketsUsedCnt] ; rdx = bucketsUsedCnt
    shl    rcx, 5                            ; rcx = bucketsCnt * 32 = offset(index)
    lea    rdx, [rcx + rdx * 4]              ; rdx = offset(index + bucketsUsedCnt)

    mov    [r10 + Map_t.buckets + rdx], eax  ; index[bucketsUsedCnt] = bucketIdx

    inc    [r10 + Map_t.bucketsUsedCnt]      ; bucketsUsedCnt++

.mapSetBucket:

    ; --------------------------------------------------------------------------
    ; Destroy old value if any
    ; --------------------------------------------------------------------------

    push    rax r10
    lea     rcx, [r10 + Map_t.buckets + rax + 16]  ;
    call    __MOLD_VariantDestroy                  ; map[key].destroy()
    pop     r10 rax

    ; --------------------------------------------------------------------------
    ; Store new value
    ; --------------------------------------------------------------------------

    mov     rdx, [.keyPtr]
    mov     r8, [.valuePtr]

    movdqu  xmm0, [rdx]                            ; xmm0 = key        (Variant_t)
    movdqu  xmm1, [r8]                             ; xmm1 = value      (Variant_t)

    movdqu  [r10 + Map_t.buckets + rax     ], xmm0 ; map[key] = key
    movdqu  [r10 + Map_t.buckets + rax + 16], xmm1 ; map[val] = value

.addRefKey:
    pop    rcx
    call   __MOLD_MemoryAddRef

    DEBUG_CHECK_VARIANT r8

    ret
endp

;###############################################################################
;
; Load item stored at given integer index.
; rv = x[i]
;
; rcx = box   (Variant_t) (IN)
; rdx = index (int32*)    (IN)
; r8  = rv    (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantLoadFromIndex_int32:
    DEBUG_CHECK_VARIANT rcx

    mov    eax, [rcx + Variant_t.type]
    mov    edx, dword [rdx]

    or     edx, edx
    js     __MOLD_PrintErrorAndDie.negativeIndex

    cmp    eax, VARIANT_ARRAY
    je     .array

    cmp    eax, VARIANT_STRING
    je     .string

    jmp    __MOLD_PrintErrorAndDie.arrayOrStringExpected

    ; ==========================================================================
    ;                                    Array
    ; --------------------------------------------------------------------------

.array:
    mov   rcx, [rcx + Variant_t.value]              ; rcx = array buffer (Buffer_t)
    mov   r9,  [rcx + Buffer_t.bytesPtr]            ; r9  = array buffer (Array_t)

    mov   eax, 0                                    ; eax = innerType    (undefined)
    mov   ecx, 0                                    ; ecx = return value (undefined)

    cmp   rdx, [r9 + Array_t.itemsCnt]
    jae   .errorOutOfBounds

    or    eax, [r9 + Array_t.innerType]             ; eax = innerType (got from box)
    jz    .arrayLoadVariant

    ; TODO: Handle non-integer primitive.
.arrayLoadPrimitive:
    mov    cl, [r9 + Array_t.itemSize]               ; cl  = log2(size(item))
    jmp    qword [.arrayLoadPrimitiveJumpTable + rcx*8]

.arrayLoadInt8:
    movsx  rcx, byte [r9 + Array_t.items + rdx]
    jmp    .arrayDone

.arrayLoadInt16:
    movsx  rcx, word [r9 + Array_t.items + rdx*2]
    jmp    .arrayDone

.arrayLoadInt32:
    movsxd rcx, dword [r9 + Array_t.items + rdx*4]
    jmp    .arrayDone

.arrayLoadInt64:
    mov    rcx, qword [r9 + Array_t.items + rdx*8]
    jmp    .arrayDone

.arrayLoadVariant:
    shl    rdx, 4
    mov    rax, [r9 + Array_t.items + rdx]           ; rax = box[idx].type
    mov    rcx, [r9 + Array_t.items + rdx + 8]       ; rcx = box[idx].value

.errorOutOfBounds:
.arrayDone:
    mov   qword [r8 + Variant_t.type], rax         ; rv.type  = box[idx].type
    mov   qword [r8 + Variant_t.value], rcx        ; rv.value = box[idx].value

    ; TODO: Clean up this mess.
    push  r8
    mov   rcx, r8
    call  __MOLD_VariantAddRef
    pop   r8

    DEBUG_CHECK_VARIANT r8

    ret

.arrayLoadPrimitiveJumpTable:
    dq .arrayLoadInt8
    dq .arrayLoadInt16
    dq .arrayLoadInt32
    dq .arrayLoadInt64

.string:
    mov    [r8 + Variant_t.type], VARIANT_UNDEFINED

    ; --------------------------------------------------------------------------
    ; Get char at index
    ; --------------------------------------------------------------------------

    mov    rcx, [rcx + Variant_t.value]           ; rcx = string buffer (Buffer_t)
    mov    rcx, [rcx + Buffer_t.bytesPtr]         ; rcx = string buffer (String_t)

    mov    eax, 0                                 ; rax = 0
    cmp    rdx, [rcx + String_t.length]
    jae    .stringOutOfRangePeek

    mov    al, [rcx + String_t.text + rdx]        ; rax = str[idx] (char)
    mov    [r8 + Variant_t.type], VARIANT_STRING  ; rv.type  = string
    mov    [r8 + Variant_t.value], rax            ; rv.value = box[idx] (char)
    or     [r8 + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER

.stringOutOfRangePeek:

    DEBUG_CHECK_VARIANT r8

    ret

;###############################################################################
;
; Load item stored at given string key.
; rv = x{key}
;
; rcx = box (Variant_t) (IN)
; rdx = key (Variant_t) (IN)
; r8  = rv  (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantLoadFromKey:
    ; TODO: Clean up this mess.
    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    sub    rsp, 32

    mov    eax, [rcx + Variant_t.type]

    cmp    eax, VARIANT_MAP
    je     .map

    cmp    eax, VARIANT_OBJECT
    jne    __MOLD_PrintErrorAndDie.mapOrObjectExpected

    ; ==========================================================================
    ;                           Hash map or object
    ; --------------------------------------------------------------------------

.map:
.object:

    cmp    [rdx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringKeyExpected

    mov    r10, [rcx + Variant_t.value]         ; r10  = map  (Buffer_t)
    mov    r10, [r10 + Buffer_t.bytesPtr]       ; r10  = map  (Map_t)
    mov    rdx, [rdx + Variant_t.value]         ; rdx  = key  (Buffer_t)
    mov    rcx, [rdx + Buffer_t.bytesPtr]       ; rcx  = key  (String_t)
    lea    r11, [rcx + String_t.text]           ; r11  = key  (String_t)

    call   __MOLD_StringHashDJB2                ; rax  = hash (integer)

    mov    r9, [r10 + Map_t.bucketsCnt]         ; r9   = bucketsCnt      (integer)
    shl    rax, 5                               ; rax  = hash * 32       (integer)
    mov    rcx, r9                              ; rcx  = bucketsCnt      (integer)
    shl    r9, 5                                ; r9   = bucketsCnt * 32 (integer)
    dec    r9                                   ; r9   = mask            (integer)

    and    rax, r9                              ; rax  = bucket offset (integer)
    cmp    dword [r10 + Map_t.buckets + rax + Variant_t.type], VARIANT_UNDEFINED
    jz     .mapBucketNotFound

.mapSearchForBucket:
    ; TODO: Optimize it - don't search whole map.
    and    rax, r9                              ; rax  = bucket offset (integer)
    mov    rdx, [r10 + Map_t.buckets + rax + Variant_t.value]
    test   rdx, rdx
    jz     .mapSearchForBucketNext

    push   rax rcx rdx r8 r9 r10 r11
    mov    rdx, [rdx + Buffer_t.bytesPtr]
    lea    rdx, [rdx + String_t.text]
    mov    rcx, r11                             ; rcx  = key (String_t)
    cinvoke strcmp
    test   rax, rax
    pop    r11 r10 r9 r8 rdx rcx rax
    jz     .mapBucketFound

.mapSearchForBucketNext:
    add    rax, 32
    dec    rcx
    jnz    .mapSearchForBucket

.mapBucketNotFound:
    mov    [r8 + Variant_t.type], VARIANT_UNDEFINED
    jmp    .final

.mapBucketFound:
    movdqu xmm0, [r10 + Map_t.buckets + rax + 16] ; xmm0 = value
    movdqu [r8], xmm0                             ; rv   = map[key]

    ; TODO: Clean up this mess.
    push  r8
    mov   rcx, r8
    call  __MOLD_VariantAddRef
    pop   r8

.final:

    DEBUG_CHECK_VARIANT r8

    add     rsp, 32
    ret

__MOLD_VariantLoadFromIndex:
    ; rcx = box   (Variant_t)
    ; rdx = index (Variant_t)
    ; r8  = rv    (Variant_t)

    DEBUG_CHECK_VARIANT rdx

    cmp     [rdx + Variant_t.type], VARIANT_INTEGER
    jnz     __MOLD_PrintErrorAndDie.integerIndexExpected

    add     rdx, Variant_t.value
    jmp     __MOLD_VariantLoadFromIndex

; TODO: Clean up this mess.
__MOLD_VariantLoadFromIndex_native:
    push    r8
    lea     r8, [__TrashBin]
    call    __MOLD_VariantLoadFromIndex_int32
    mov     rax, [__TrashBin + Variant_t.value]
    pop     r8
    mov     dword [r8], eax
    ret

__MOLD_VariantStoreAtIndex:
    ; rcx = box   (Variant_t)
    ; rdx = index (Variant_t)
    ; r8  = value (Variant_t)

    DEBUG_CHECK_VARIANT rdx

    cmp     [rdx + Variant_t.type], VARIANT_INTEGER
    jnz     __MOLD_PrintErrorAndDie.integerIndexExpected

    add     rdx, Variant_t.value
    jmp     __MOLD_VariantStoreAtIndex_int32

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

;###############################################################################
;
; Create new array variable.
;
; rcx = pointer where to store new allocated array (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantArrayCreate:
    ; rcx = rv (Variant_t)
    push    rcx
    mov     rcx, VARIANT_ARRAY_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rcx

    mov     [rcx + Variant_t.type], VARIANT_ARRAY
    mov     [rcx + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rcx

    ret

;###############################################################################
;
; Create new map variable.
;
; rcx = pointer where to store new allocated map (Variant_t) (OUT)
;
;###############################################################################

__MOLD_VariantMapCreate:

    push    rcx
    mov     rcx, VARIANT_MAP_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rcx

    mov     [rcx + Variant_t.type], VARIANT_MAP
    mov     [rcx + Variant_t.value], rax

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + Map_t.bucketsCnt], VARIANT_MAP_DEFAULT_BUCKETS_CNT

    DEBUG_CHECK_VARIANT rcx

    ret

;###############################################################################
;
; Resize the capacity of map box by two (n -> 2n).
;
; rcx = box (Variant_t) (IN/OUT)
;
;###############################################################################

proc __MOLD_VariantMapResizeTwice

    ; --------------------------------------------------------------------------
    ; Set up stack frame
    ; --------------------------------------------------------------------------

    local .newBox Variant_t ?

    push    rsi
    push    rdi
    push    r12
    push    r13

    sub     rsp, 32

    mov     r12, rcx                           ; r12 = old box

    ; --------------------------------------------------------------------------
    ; Allocate new buffer (resized)
    ; --------------------------------------------------------------------------

    mov     rcx, [r12 + Variant_t.value]       ; rax = old box (Buffer_t)
    mov     rcx, [rcx + Buffer_t.capacity]     ; rcx = old capacity
    shl     rcx, 1                             ; rcx = old capacity * 2
    call    __MOLD_MemoryAlloc                 ; rax = new box (Buffer_t)

    ; --------------------------------------------------------------------------
    ; Set up new Map_t
    ; --------------------------------------------------------------------------

    mov     [.newBox + Variant_t.type], VARIANT_MAP
    mov     [.newBox + Variant_t.value], rax   ; new box (Buffer_t)

    mov     rcx, [r12 + Variant_t.value]       ; rcx = old box (Buffer_t)
    mov     rax, [rax + Buffer_t.bytesPtr]     ; rax = new box (Map_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]     ; rcx = old box (Map_t)

    mov     r13, [rcx + Map_t.bucketsUsedCnt]  ; rdx = old bucketsUsedCnt
    mov     rdx, [rcx + Map_t.bucketsCnt]      ; r13 = old bucketsCnt
    mov     r8,  [rcx + Object_t.vtable]       ; r8  = old vtable (object only)
    lea     r9,  [rdx * 2]                     ; r9  = old bucketsCnt * 2

    mov     [rax + Map_t.bucketsCnt], r9       ; newBox.bucketsCnt    = old bucketsCnt * 2
    mov     [rax + Object_t.vtable], r8        ; newBox.vtable        = old vtable

    ; --------------------------------------------------------------------------
    ; Copy all entries one-by-one from old map to new one.
    ; --------------------------------------------------------------------------

    shl     r9, 4                              ; r9  = oldMap.bucketsCnt * 32
    lea     rdi, [rcx + Map_t.buckets]         ; rdi = oldMap.buckets
    lea     rsi, [rdi + r9]                    ; rsi = oldMap.index

.cloneNextBucket:

    ; ------------------------
    ; Insert bucket to new map
    ; ------------------------

    mov     eax, [rsi]                         ; eax = #n
    mov     rdx, rdi                           ; rdx = key #0
    lea     rcx, [.newBox]                     ; rcx = newBox
    add     rdx, rax                           ; rdx = key #n
    lea     r8, [rdx + 16]                     ; r8  = value #n

    call    __MOLD_VariantStoreAtKey           ; newBox[key] = value

.emptyBucket:

    add     rsi, 4
    dec     r13
    jnz     .cloneNextBucket

.cloneBucketsDone:

    ; --------------------------------------------------------------------------
    ; Swap buffer contents
    ; --------------------------------------------------------------------------

    mov     rcx, [.newBox + Variant_t.value]   ; rcx = newBox (Buffer_t)
    mov     rdx, [r12     + Variant_t.value]   ; rdx = oldBox (Buffer_t)

    mov     rax, [rcx + Buffer_t.capacity]     ; rax             = newBox.capacity
    mov     [rdx + Buffer_t.capacity], rax     ; oldBox.capacity = newBox.capacity

    mov     rax, [rcx + Buffer_t.bytesPtr]     ; rax = newBox.bytesPtr
    mov     r8,  [rdx + Buffer_t.bytesPtr]     ; r8  = oldBox.bytesPtr

    mov     [rdx + Buffer_t.bytesPtr], rax     ; newBox.bytesPtr = oldBox.bytesPtr
    mov     [rcx + Buffer_t.bytesPtr], r8      ; oldBox.bytesPtr = newBox.bytesPtr

    ; --------------------------------------------------------------------------
    ; Free old buffer
    ; --------------------------------------------------------------------------

    lea     rcx, [.newBox]
    call    __MOLD_VariantDestroy

    ; --------------------------------------------------------------------------
    ; Clean up stack frame
    ; --------------------------------------------------------------------------

    add     rsp, 32

    pop     r13
    pop     r12
    pop     rdi
    pop     rsi
    ret
endp

;###############################################################################
;
; Create new object.
;
; rcx = pointer to store new allocated object (Variant_t)
; rdx = vtable (custom)
;
;###############################################################################

__MOLD_VariantObjectCreate:
    ; rcx = rv (Variant_t)
    ; rdx = vtable
    push    rcx rdx
    mov     rcx, VARIANT_OBJECT_DEFAULT_BUFFER_SIZE
    call    __MOLD_MemoryAlloc
    pop     rdx rcx

    mov     [rcx + Variant_t.type], VARIANT_OBJECT
    mov     [rcx + Variant_t.value], rax

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + Object_t.bucketsCnt], VARIANT_OBJECT_DEFAULT_BUCKETS_CNT
    mov     [rax + Object_t.vtable], rdx

    DEBUG_CHECK_VARIANT rcx

    ret

;###############################################################################
;
; Free all resources alocated by variant variable if any.
; Do nothing for privitives, but it's still correct.
;
; rcx = variable to free (Variant_t)
;
;###############################################################################

__MOLD_VariantDestroy:
    ; rcx = object to destroy (Variant_t)

    DEBUG_CHECK_VARIANT rcx

    mov    eax, [rcx + Variant_t.type]
    mov    [rcx + Variant_t.type], VARIANT_UNDEFINED

    cmp    eax, VARIANT_ARRAY
    jz     .freeArray

    cmp    eax, VARIANT_MAP
    jz     .freeMap

    cmp    eax, VARIANT_STRING
    jz     .freeString

    cmp    eax, VARIANT_OBJECT
    jz     .freeObject

.nothingToDo:
    mov    [rcx + Variant_t.value], 0
    ret

    ; ##########################################################################
    ;                              Destroy array
    ; ##########################################################################

.freeArray:

    mov    rax, [rcx + Variant_t.value]
    mov    [rcx + Variant_t.value], 0
    mov    rcx, rax
    push   rcx

    cmp    [rcx + Buffer_t.refCnt], 1
    ja     .freeArrayItemsDone

    push   rbx
    push   rsi

    mov    rcx, [rcx + Buffer_t.bytesPtr]
    mov    rbx, [rcx + Array_t.itemsCnt]

    or     rbx, rbx
    jz     .emptyArray

    cmp    [rcx + Array_t.innerType], 0
    jnz    .nonVariantArray

    lea    rsi, [rcx + Array_t.items]

.freeArrayItem:
    mov    rcx, rsi
    call   __MOLD_VariantDestroy

    add    rsi, 16
    dec    rbx
    jnz    .freeArrayItem

.emptyArray:
.nonVariantArray:
    pop    rsi
    pop    rbx

.freeArrayItemsDone:
    pop    rcx
    call   __MOLD_MemoryRelease
    ret

    ; ##########################################################################
    ;                           Destroy map or object
    ; ##########################################################################

.freeMap:
.freeObject:

    push   r12
    mov    r12, rcx                         ; r12 = dst

    mov    rcx, [rcx + Variant_t.value]     ; rcx = Buffer_t

    cmp    [rcx + Buffer_t.refCnt], 1
    ja     .destroyMapBucketsDone

    ; --------------------------------------------------------------------------
    ; Destroy keys and values stored in buckets
    ; --------------------------------------------------------------------------

    push    rbx
    push    rsi
    push    rdi

    mov     rcx, [rcx + Buffer_t.bytesPtr]     ; rcx = map (Map_t)
    mov     rbx, [rcx + Map_t.bucketsUsedCnt]  ; rdx = map.bucketsUsedCnt

    or      rbx, rbx
    jz      .emptyMap

    mov     rax, [rcx + Map_t.bucketsCnt]      ; rax = map.bucketsCnt
    lea     rdi, [rcx + Map_t.buckets]         ; rdi = bucket #0
    shl     rax, 5                             ; rax = map.bucketsCnt * 32
    lea     rsi, [rdi + rax]                   ; rsi = map.index

.destroyNextMapBucket:

    ; ------------------------
    ; Destroy bucket #n
    ; ------------------------

    mov     ecx, [rsi]                         ; eax = #n
    lea     rcx, [rdi + rcx]                   ; rcx = key #n
    call    __MOLD_VariantDestroy              ; map.index[n].key.destroy()

    mov     ecx, [rsi]                         ; eax = #n
    lea     rcx, [rdi + rcx + 16]              ; rcx = value #n
    call    __MOLD_VariantDestroy              ; map.index[n].value.destroy()

    add     rsi, 4
    dec     rbx
    jnz     .destroyNextMapBucket

.emptyMap:

    pop     rdi
    pop     rsi
    pop     rbx

.destroyMapBucketsDone:

    ; --------------------------------------------------------------------------
    ; Destroy box holder itself (VARIANT_MAP or VARIANT_OBJECT)
    ; --------------------------------------------------------------------------

    mov      rcx, [r12 + Variant_t.value]
    call     __MOLD_MemoryRelease

    mov      [r12 + Variant_t.value], 0

    pop      r12
    ret

    ; ##########################################################################
    ;                              Destroy string
    ; ##########################################################################

.freeString:
    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

    push   rcx
    mov    rcx, [rcx + Variant_t.value]
    call   __MOLD_MemoryRelease
    pop    rcx

.oneCharacterString:
    mov    [rcx + Variant_t.value], 0
    ret

__MOLD_VariantLength:
    ; rcx = value
    ; rdx = rv

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
    mov     [rdx + Variant_t.value], 0
    ret

.load1:
    mov     [rdx + Variant_t.value], 1
    ret

.string:
    mov     eax, 1
    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz     .oneCharacterString

    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    mov     rax, [rcx + String_t.length]

.oneCharacterString:
    mov     [rdx + Variant_t.value], rax
    ret

.array:
.map:
.object:
    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    mov     rax, [rcx + Array_t.itemsCnt]
    mov     [rdx + Variant_t.value], rax
    ret

;###############################################################################
;
; Increase reference counter for dynamically alocatted variables.
; Do nothing for primitives, but it still correct.
;
; rcx = variable to reference (Variant_t)
;
;###############################################################################

__MOLD_VariantAddRef:
    ; rcx = Variant_t
    ; TODO: Clean up this mess.

    DEBUG_CHECK_VARIANT rcx

    cmp   [rcx + Variant_t.type], VARIANT_STRING
    jnz    .notAString

.string:
    test  [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz   .noRefNeeded
    jmp   .addRef

.notAString:
    cmp   [rcx + Variant_t.type], VARIANT_ARRAY
    jb    .noRefNeeded

.addRef:
    push  rcx
    mov   rcx, [rcx + Variant_t.value]
    call  __MOLD_MemoryAddRef
    pop   rcx

    DEBUG_CHECK_VARIANT rcx

.noRefNeeded:
    ret

;###############################################################################
;
; Clone variant from one variable to another
;
; rcx = destination (Variant_t)
; rdx = source      (Variant_t)
;
;###############################################################################

__MOLD_VariantMove:

    DEBUG_CHECK_VARIANT rdx

    mov   rax, qword [rdx + Variant_t.type]  ; rax = type:flags (32bit + 32bit)
    mov   rdx, qword [rdx + Variant_t.value] ; rdx = value      (64bit)

    mov   qword [rcx + Variant_t.type] , rax
    mov   qword [rcx + Variant_t.value] , rdx

    DEBUG_CHECK_VARIANT rcx

    ; TODO: Clean up this mess.
    cmp  eax, VARIANT_STRING
    jnz  .notAString

.string:
    test [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz  .noRefNeeded
    mov  rcx, rdx
    call __MOLD_MemoryAddRef
    ret

.notAString:
    cmp  eax, VARIANT_ARRAY
    jb   .noRefNeeded

.addRef:
    mov  rcx, rdx
    call __MOLD_MemoryAddRef

.noRefNeeded:
    ret

;###############################################################################
;
; Init argv[] and argc[] built in variables.
;
;###############################################################################

proc __MOLD_InitArgv

  local .startupinfo db 128 dup (?)
  local .msvcrt_argv dq ?
  local .msvcrt_env  dq ?

  push r12
  push r13
  push r14

  lea       rcx, [argc + Variant_t.value]
  lea       rdx, [.msvcrt_argv]
  lea       r8,  [.msvcrt_env]
  xor       r9, r9
  lea       rax, [.startupinfo]
  push      rax
  cinvoke   __getmainargs
  add       rsp, 8

  lea       rcx, [argv]
  call      __MOLD_VariantArrayCreate

  mov       rax, [argc + Variant_t.value]    ; rax           = argc (integer)
  mov       rcx, [argv + Variant_t.value]    ; rcx           = argv (Buffer_t)
  mov       rcx, [rcx + Buffer_t.bytesPtr]   ; rcx           = argv (Array_t)
  mov       [rcx + Array_t.itemsCnt], rax    ; argv.itemsCnt = argc (integer)
  lea       rcx, [rcx + Array_t.items]       ; rcx           = argv.items (Variant_t *)

  mov       rax, [.msvcrt_argv]              ; rax = msvcrt_argv (char **)

.pushItem:
  mov       rdx, [rax]
  test      rdx, rdx
  jz        .done

  ; ----------------------------------------------------------------------------
  ; TODO: Clean up this mess.
  ; ----------------------------------------------------------------------------

  push      rax rcx rdx r8 r9 r10 r11

  mov       r12, rcx
  mov       r14, rdx

  cinvoke   strlen, rdx
  mov       r13, rax
  lea       rcx, [rax + 1]

  call      __MOLD_MemoryAlloc

  mov       [r12 + Variant_t.type], VARIANT_STRING
  mov       [r12 + Variant_t.value], rax

  mov       rax, [rax + Buffer_t.bytesPtr]
  mov       [rax + String_t.length], r13

  lea       rcx, [rax + String_t.text]
  mov       rdx, r14
  cinvoke   strcpy

  pop       r11 r10 r9 r8 rdx rcx rax

  ; ----------------------------------------------------------------------------
  ; END OF TODO: Clean up this mess.
  ; ----------------------------------------------------------------------------

  add       rax, 8
  add       rcx, 16
  jmp       .pushItem

.done:

  mov       dword [argc + Variant_t.type], VARIANT_INTEGER

  pop r14
  pop r13
  pop r12

  ret
endp

;###############################################################################
;
; Entry point
;
;###############################################################################

proc __MOLD_Main
  mov     ecx, 1
  mov     rdx, __MOLD_DefaultExceptionHandler
  cinvoke AddVectoredExceptionHandler

  call    __MOLD_InitArgv

  ldmxcsr dword [__MOLD_mxcsr]

  xor     rbp, rbp
  call    start

  lea     rcx, [argv]
  call    __MOLD_VariantDestroy

  ; ----------------------------------------------------------------------------
  ; Verify memory leaks
  ; ----------------------------------------------------------------------------

  if ASSERT_ENABLED
  mov     rax, [MemoryAllocCnt]
  cmp     rax, [MemoryFreeCnt]
  je      .noMemoryLeaks

  cinvoke printf, .fmt, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]

.noMemoryLeaks:
  end if

  cinvoke ExitProcess, 0
  ret

.fmt db "; PANIC! Memory leak detected! (allocated: %d, freed: %d, realloc: %d)", 13, 10, 0
endp

__MOLD_Halt:
  cinvoke ExitProcess, 0
  ret

proc __MOLD_NullMethodCalled
  push    rax
  push    r10
  cinvoke printf, 'error: pure virtual called'
  pop     r10
  pop     rax
  int 3
endp

;###############################################################################
;
; Wrapper for LoadLibrary().
;
; RCX - Module path (IN/VARIANT)
;
; RETURNS: Pointer to loaded module (VARIANT)
;
;###############################################################################

__MOLD_OpenExternalModule:
    sub     rsp, 32
    mov     rcx, [rcx + Variant_t.value]
    call    [LoadLibrary]
    mov     [rdi + Variant_t.type],  VARIANT_INTEGER
    mov     [rdi + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rdi

    add     rsp, 32
    ret

;###############################################################################
;
; Wrapper for GetAddressProc().
;
; RCX - pointer to module loaded by __MOLD_OpenExternalModule() before (IN/VARIANT).
; RDX - function name (IN/VARIANT).
;
; RETURNS: Function address (VARIANT).
;
;###############################################################################

__MOLD_LoadExternalFunction:
    sub     rsp, 32
    mov     rcx, [rcx + Variant_t.value]
    mov     rdx, [rdx + Variant_t.value]
    call    [GetProcAddress]
    mov     [rdi + Variant_t.type],  VARIANT_INTEGER
    mov     [rdi + Variant_t.value], rax

    DEBUG_CHECK_VARIANT rdi

    add     rsp, 32
    ret

;###############################################################################
;
; Peek single byte from variable.
;
; RCX - variable to peek (IN/VARIANT).
; RDX - byte offset (IN/VARIANT_INTEGER).
;
; RETURNS: Byte value at given offset (VARIANT_INTEGER).
;
;###############################################################################

__MOLD_Peek:
__mold_peek:

    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringExpected

    mov    rax, [rcx + Variant_t.value]    ; rax = string (Buffer_t)
    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

.ordinaryString:

    mov    rdx, [rdx + Variant_t.value]    ; rdx = index  (int64)
    mov    rcx, [rax + Buffer_t.bytesPtr]  ; rcx = string (String_t)

    cmp    [rcx + String_t.length], rdx    ; is len(string) <= index?
    jbe    __MOLD_PrintErrorAndDie.indexOutOfRange

    mov    al, [rcx + String_t.text + rdx] ; al  = string[index]

.oneCharacterString:
    and    rax, 0xff                       ; rax = string[index]
    mov    [rdi + Variant_t.value], rax
    mov    [rdi + Variant_t.type], VARIANT_INTEGER
    ret

__MOLD_Ord:
__mold_ord:
    mov    rax, [rcx + Variant_t.value]    ; rax = string (Buffer_t)

    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringExpected


    test   [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz    .oneCharacterString

.ordinaryString:
    mov    rcx, [rax + Buffer_t.bytesPtr]  ; rcx = text    (String_t)
    mov    al,  [rcx + String_t.text]      ; al  = text[0] (char)

.notString:
.oneCharacterString:
    and    rax, 0xff                       ; rax = string[index]
    mov    [rdi + Variant_t.value], rax
    mov    [rdi + Variant_t.type], VARIANT_INTEGER
    ret

;###############################################################################
;
; Load file content to string
;
; RCX - file name (IN/VARIANT_STRING).
;
; RETURNS: File content (VARIANT_STRING).
;
;###############################################################################

__MOLD_LoadFile:
    ; TODO: Handle read error

    sub     rsp, 32
    push    r12
    push    r13

    cmp     [rcx + Variant_t.type], VARIANT_STRING
    jnz     .stringPathExpectedError

    mov     rdx, [rcx + Variant_t.value]
    mov     rdx, [rdx + Buffer_t.bytesPtr]
    lea     rdx, [rdx + String_t.text]

    push    rdx
    cinvoke CreateFileA, rdx, GENERIC_READ, 0, 0, OPEN_EXISTING, 0, 0
    pop     rdx

    cmp     rax, -1
    jz      .couldNotOpenError

    mov     r12, rax

    cinvoke GetFileSize, r12, 0
    mov     r13, rax

    lea     rcx, [rax + 1]
    call    __MOLD_MemoryAlloc

    mov     [rdi + Variant_t.value], rax
    mov     [rdi + Variant_t.flags], 0
    mov     [rdi + Variant_t.type], VARIANT_STRING

    mov     rax, [rax + Buffer_t.bytesPtr]
    mov     [rax + String_t.length], r13
    lea     rax, [rax + String_t.text]

    push    rax
    cinvoke ReadFile, r12, rax, r13, NumberOfBytesWritten, 0
    cinvoke CloseHandle, r12
    pop     rax

    ; Add zero terminator
    mov     byte [rax + r13], 0

.done:

    DEBUG_CHECK_VARIANT rdi

    pop     r13
    pop     r12

    add     rsp, 32
    ret

.couldNotOpenError:
    cinvoke printf, "error: could not open file '%s'", rdx
    cinvoke ExitProcess, -1

.stringPathExpectedError:
    cinvoke printf, "error: string path expected"
    cinvoke ExitProcess, -1

;###############################################################################
;
; Process each (key, value) pairs in map.
;
; rcx - box (IN / Variant_t)
; rdx - key iterator (OUT / Variant_t)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function pointer)
;
;###############################################################################

__MOLD_ForDriver_KeysAndValuesInMap:

    push    rbx
    push    rsi
    push    rdi
    push    r9

    mov     rcx, [rcx + Variant_t.value]          ; rcx = map (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]        ; rcx = map (Map_t)
    mov     rbx, [rcx + Map_t.bucketsUsedCnt]     ; rbx = map.bucketsUsedCnt (int64)

    or      rbx, rbx
    jz      .mapEmpty

    mov     rax, [rcx + Map_t.bucketsCnt]         ; rax = map.bucketsCnt
    lea     rdi, [rcx + Map_t.buckets]            ; rdi = map.buckets
    shl     rax, 5                                ; rax = map.bucketsCnt * 32
    lea     rsi, [rdi + rax]                      ; rsi = map.index

.mapNextItem:

    mov     eax, [rsi]                            ; rcx = bucketIdx
    mov     rcx, rdi                              ; rcx = buckets
    add     rcx, rax                              ; rcx = buckets[bucketIdx]

    ; --------------------
    ; Update key iterator
    ; --------------------

    mov     rax, [rcx]
    mov     r9,  [rcx + 8]

    mov     [rdx], rax
    mov     [rdx + 8], r9

    ; ----------------------
    ; Update value iterator
    ; ----------------------

    mov     rax, [rcx + 16]
    mov     r9,  [rcx + 16 + 8]

    mov     [r8], rax
    mov     [r8 + 8], r9

    ; ------------------------------
    ; Process next (key:value) pair
    ; ------------------------------

    push    rcx rdx r8
    call    qword [rsp + 24]
    pop     r8 rdx rcx

    ; ----------------
    ; Go to next pair
    ; ----------------

    add     rsi, 4
    dec     rbx
    jne     .mapNextItem

.mapEmpty:
.done:

    pop     r9
    pop     rdi
    pop     rsi
    pop     rbx

    ret

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

    push    rbx
    push    rsi
    push    r9

    mov     rcx, [rcx + Variant_t.value]          ; rcx = array (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]        ; rcx = array (Array_t)
    mov     rbx, [rcx + Array_t.itemsCnt]         ; rbx = array.itemsCnt (int64)

    or      rbx, rbx
    jz      .arrayEmpty

    lea     rsi, [rcx + Array_t.items]            ; rsi = array.items
    mov     dword [rdx], 0                        ; idx = 0

.arrayNextItem:

    ; ----------------------
    ; Update value iterator
    ; ----------------------

    mov     rax, [rsi]
    mov     rcx, [rsi + 8]

    mov     [r8], rax
    mov     [r8 + 8], rcx

    ; --------------------------------
    ; Process next (index:value) pair
    ; --------------------------------

    push    rdx r8
    call    qword [rsp + 16]
    pop     r8 rdx

    ; ----------------------
    ; Update index iterator
    ; ----------------------

    inc     dword [rdx]

    ; ----------------
    ; Go to next pair
    ; ----------------

    add     rsi, 16
    dec     rbx
    jne     .arrayNextItem

.arrayEmpty:
.done:

    pop     r9
    pop     rsi
    pop     rbx

    ret

;###############################################################################
;
; Process each (idx, character) pairs in array.
;
; rcx - text to process (IN / Variant_t)
; rdx - index iterator (OUT / uint32*)
; r8  - character iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function address)
;
;###############################################################################

__MOLD_ForDriver_IndexesAndValuesInString:

    push    rbx
    push    rsi
    push    r9

    mov     dword [rdx], 0                        ; idx.value = 0

    mov     [r8  + Variant_t.type], VARIANT_STRING  ; value.type = string
    mov     [r8  + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    mov     [r8  + Variant_t.value], 0

    mov     ebx, 1                                ; rbx = 1 = start from one char string
    mov     rax, [rcx + Variant_t.value]          ; rax = string (Buffer_t)

    test    [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jnz     .stringOneCharacter

    mov     rcx, [rax + Buffer_t.bytesPtr]        ; rax = string (String_t)
    lea     rsi, [rcx + String_t.text]            ; rsi = string.text (char *)
    mov     rbx, [rcx + String_t.length]          ; rbx = string.length (int64)

    or      rbx, rbx
    jz      .stringEmpty

.stringNextItem:

    ; ----------------------
    ; Update value iterator
    ; ----------------------

    lodsb

.stringOneCharacter:

    mov     [r8 + 8], al

    ; --------------------------------
    ; Process next (index:value) pair
    ; --------------------------------

    push    rdx r8
    call    qword [rsp + 16]
    pop     r8 rdx

    ; ----------------------
    ; Update index iterator
    ; ----------------------

    inc     dword [rdx]

    ; ----------------
    ; Go to next pair
    ; ----------------

    dec     rbx
    jne     .stringNextItem

.stringEmpty:
.done:

    pop     r9
    pop     rsi
    pop     rbx

    ret

;###############################################################################
;
; Process each (key, value) pairs in generic box.
;
; rcx - any box container (IN / Variant_t)
; rdx - index/key iterator (OUT / Variant_t / uint32*)
; r8  - value iterator (OUT / Variant_t)
; r9  - body loop callback (IN / function address)
;
;###############################################################################

__MOLD_ForDriver_Generic:
    ; --------------------------------------
    ; Redirect unused iterators to trash bin
    ; --------------------------------------

    lea     rax, [__TrashBin]
    test    rdx, rdx
    cmovz   rdx, rax

    test    r8, r8
    cmovz   rdx, rax

    ; -------------
    ; Dispatch code
    ; -------------

    mov     eax, [rcx + Variant_t.type]
    cmp     eax, VARIANT_TYPE_MAX
    ja      __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; TODO: Change to badType

    jmp     qword [.jmpTable + rax*8]

.jmpTable:
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; undefined
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; null
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; integer
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; float32
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; float64
    dq __MOLD_ForDriver_IndexesAndValuesInString
    dq __MOLD_PrintErrorAndDie.arrayStringOrMapExpected ; boolean
    dq __MOLD_ForDriver_IndexesAndValuesInArray
    dq __MOLD_ForDriver_KeysAndValuesInMap
    dq __MOLD_ForDriver_KeysAndValuesInMap ; object (TODO: Not implemented yet)

; TODO: Clean up this mess.
__MOLD_VariantStringJoin:
    ; rcx = [x]
    ; rdx = [y]
    ; r8  = [rv]

    DEBUG_CHECK_VARIANT rcx
    DEBUG_CHECK_VARIANT rdx

    mov r9d,  [rcx + Variant_t.type]  ; r9  = x.type
    mov r10d, [rdx + Variant_t.type]  ; r10 = y.type

    cmp r9d, VARIANT_STRING
    jnz __MOLD_PrintErrorAndDie.stringExpected

    cmp r10d, VARIANT_STRING
    jnz __MOLD_PrintErrorAndDie.stringExpected

    cmp       r8, rcx
    jz        .case_ss_overlapped_source_and_destination

.case_ss_source_and_destination_differ:
    mov       [r8 + Variant_t.value], 0
    jmp       .case_ss_do_work

.case_ss_overlapped_source_and_destination:

    ; Accumulate result:
    ; x = x ~ y

    push  rcx
    mov   rcx, [rcx + Variant_t.value]
    call  __MOLD_MemoryAddRef
    pop   rcx

.case_ss_do_work:

    push      rsi
    push      rdi

    mov       r9,  [rcx + Variant_t.value]   ; r9  = x.buffer (Buffer_t)
    mov       r10, [rdx + Variant_t.value]   ; r10 = y.buffer (Buffer_t)
    push      r9

    mov       [OneCharacterStringTempPeek], r10b
    lea       rax, [OneCharacterStringTempBufferHolder]
    test      [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    cmovnz    r10, rax

    mov       r9,  [r9  + Buffer_t.bytesPtr] ; r9  = x.buffer (String_t)
    mov       r10, [r10 + Buffer_t.bytesPtr] ; r10 = y.buffer (String_t)

    ; -------------------------------
    ; TODO: Don't alloc new buffer if
    ; it's not really needed
    ; -------------------------------

    mov       rdx, [r9  + String_t.length] ; rdx = len(x)
    add       rdx, [r10 + String_t.length] ; rdx = len(x) + len(y)
    mov       r11, rdx                     ; r11 = len(x) + len(y)
    add       rdx, 1 + 8                   ; rdx = len(x) + len(y) + 1 + len(int64)

    ; -------------------------------
    ; Allocate new buffer
    ; -------------------------------

    push      r8 r9 r10 r11
    mov       rcx, 0
    test      [r8 + Variant_t.flags], VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE
    cmovz     rcx, [r8 + Variant_t.value]           ; rcx = dst buffer (Buffer_t)
    and       [r8 + Variant_t.flags], not VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE
    call      __MOLD_MemoryRealloc                  ; rax = new buffer (Buffer_t)
    pop       r11 r10 r9 r8

    mov       rdx, [rax + Buffer_t.bytesPtr]        ; rdx = new String_t

    ; -------------------------------
    ; Copy first string.
    ; TODO: Don't copy byte-by-byte
    ; -------------------------------

    pop       r9
    mov       r9,  [r9  + Buffer_t.bytesPtr]        ; r9  = dst = x.buffer (String_t)

    cmp       rdx, r9
    jz        .ss_overlapped_dst

    lea       rdi, [rdx + String_t.text]            ; rdi = dst      = rv.text  (char*)
    lea       rsi, [r9  + String_t.text]            ; rsi = src      = x.text   (char*)
    mov       rcx, [r9  + String_t.length]          ; rcx = len(src) = x.length (int64)
    rep       movsb

    ; -------------------------------
    ; Copy second string.
    ; TODO: Don't copy byte-by-byte
    ; -------------------------------

.ss_overlapped_dst:

    lea       rdi, [rdx + String_t.text]            ; rdi = dst = rv.text  (char*)
    lea       rsi, [r10 + String_t.text]            ; rsi = src = y.text   (char*)
    add       rdi, [r9 + String_t.length]           ; rdi = dst + x.length (char*)
    mov       rcx, [r10 + String_t.length]          ; rcx = len(src) = y.length
    rep       movsb

    ; -------------------------------
    ; Zero terminator
    ; -------------------------------

    mov       byte [rdi], 0
    mov       [rdx + String_t.length], r11          ; rv.length = len(x) + len(y)

    mov       [r8 + Variant_t.type], VARIANT_STRING
    and       [r8 + Variant_t.flags], NOT VARIANT_FLAG_ONE_CHARACTER
    xchg      [r8 + Variant_t.value], rax
    mov       rsi, r8

    mov       rcx, rax
    or        rcx, rcx
    jz        .emptyTarget
    call      __MOLD_MemoryRelease

.emptyTarget:
    DEBUG_CHECK_VARIANT rsi

    pop       rdi
    pop       rsi

    ret

__MOLD_VCall:
  ; rcx - this (Variant_t)
  ; rax - method id (int32)
  mov  r10, [rcx + Variant_t.value]     ; r10 = this (Buffer_t)
  shl  eax, 3                           ; rax = method id * 8
  mov  r10, [r10 + Buffer_t.bytesPtr]   ; r10 = this (Object_t)
  mov  r10, [r10 + Object_t.vtable]     ; r10 = this.vtable

  sub  eax, dword [r10]                 ; eax = 8*id - offsetStart
  js   __MOLD_NullMethodCalled          ; is method out of range?

  cmp  eax, dword [r10 + 4]             ; 8*id  offsetEnd > 0
  ja   __MOLD_NullMethodCalled          ; is method out of range?

  jmp  qword [8 + r10 + rax]            ; call this.vtable[id]


include 'Error.asm'
include 'SysCall.asm'
