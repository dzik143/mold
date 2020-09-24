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

MAX_SYSCALL_ID EQU (.jmpTableEnd - .jmpTable) / 8

__MOLD_SysCall:

  cmp  eax, MAX_SYSCALL_ID
  ja   .error
  jmp  qword [.jmpTable + eax * 8]

; ------------------------------------------------------------------------------
; Open file
; rcx - path (IN)
; rdx - file handle (OUT)
; ------------------------------------------------------------------------------

.openForRead:
    mov     r8d, GENERIC_READ
    mov     eax, OPEN_EXISTING
    jmp     .openFinal

.openForWrite:
    mov     r8d, GENERIC_READ or GENERIC_WRITE
    mov     eax, OPEN_ALWAYS
    jmp     .openFinal

.openForCreate:
    mov     r8d, GENERIC_READ or GENERIC_WRITE
    mov     eax, CREATE_ALWAYS

.openFinal:
    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    lea     rcx, [rcx + String_t.text]

    push    rdx
    cinvoke CreateFileA, rcx, r8, FILE_SHARE_READ, 0, rax, 0, 0
    pop     rdx

    mov     [rdx + Variant_t.value], rax
    mov     [rdx + Variant_t.type], VARIANT_INTEGER
    ret

; ------------------------------------------------------------------------------
; Close file
; rcx - handle
; ------------------------------------------------------------------------------

.close:
    mov     rcx, [rcx + Variant_t.value]
    cinvoke CloseHandle
    ret

; ------------------------------------------------------------------------------
; Read from file
; rcx - file handle (IN)
; rdx - read value  (OUT)
; ------------------------------------------------------------------------------

.read_char:
    mov     r8, 1
    mov     eax, VARIANT_STRING
    or      [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    jmp     .read_final

.read_int8:
    mov     r8, 1
    mov     eax, VARIANT_INTEGER
    jmp     .read_final

.read_int16:
    mov     r8, 2
    mov     eax, VARIANT_INTEGER
    jmp     .read_final

.read_int32:
    mov     r8, 4
    mov     eax, VARIANT_INTEGER
    jmp     .read_final

.read_int64:
    mov     r8, 8
    mov     eax, VARIANT_INTEGER
    jmp     .read_final

.read_float32:
    mov     r8, 4
    mov     eax, VARIANT_FLOAT
    jmp     .read_final

.read_float64:
    mov     r8, 8
    mov     eax, VARIANT_DOUBLE

.read_bool8:
    mov     r8, 1
    mov     eax, VARIANT_BOOLEAN
    jmp     .read_final

.read_bool16:
    mov     r8, 2
    mov     eax, VARIANT_BOOLEAN
    jmp     .read_final

.read_bool32:
    mov     r8, 4
    mov     eax, VARIANT_BOOLEAN
    jmp     .read_final

.read_bool64:
    mov     r8, 8
    mov     eax, VARIANT_BOOLEAN
    jmp     .read_final

.read_final:
    sub     rsp, 32
    mov     [rdx + Variant_t.type], eax
    mov     [rdx + Variant_t.value], 0

    mov     rcx, [rcx + Variant_t.value] ; hFile
    lea     rdx, [rdx + Variant_t.value] ; lpBuffer
    mov     r9, NumberOfBytesReaded      ; lpNumberOfBytesRead
    mov     qword [rsp], 0               ; lpOverlapped

    cinvoke ReadFile

    add     rsp, 32
    ret

; ------------------------------------------------------------------------------
; Write file
; rcx - file handle    (IN)
; rdx - value to write (IN)
; ------------------------------------------------------------------------------

.writeSizeTable:
  db 1, 2, 4, 8, 16

.write_byte:
.write_word:
.write_dword:
.write_qword:
.write_dqword:

    mov     r8d, 0
    sub     rsp, 32
    mov     r8b, [.writeSizeTable + eax - 21]

    mov     rcx, [rcx + Variant_t.value] ; hFile
    lea     rdx, [rdx + Variant_t.value] ; lpBuffer
    mov     r9, NumberOfBytesWritten     ; lpNumberOfBytesWritten
    mov     qword [rsp], 0               ; lpOverlapped

    cinvoke WriteFile

    add     rsp, 32
    ret

; ------------------------------------------------------------------------------
; Load file content to the string
; rcx - file path (IN)
; rdx - file content (OUT)
; ------------------------------------------------------------------------------

.loadFile:
    ; TODO: Clean up this mess.
    push    rdi
    mov     rdi, rdx
    call    __MOLD_LoadFile
    pop     rdi
    ret

; ------------------------------------------------------------------------------
; Convert byte to char
; rcx - ascii code (IN)
; rdx - one character string (OUT)
; ------------------------------------------------------------------------------

.asc:
    mov     rax, [rcx + Variant_t.value]
    mov     [rdx + Variant_t.type], VARIANT_STRING
    mov     [rdx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    mov     [rdx + Variant_t.value], rax
    ret

; ------------------------------------------------------------------------------
; Convert char to byte
; rcx - one character string (IN)
; rdx - ascii code (OUT)
; ------------------------------------------------------------------------------

.ord:
    mov     rax, [rcx + Variant_t.value]
    mov     [rdx + Variant_t.type], VARIANT_INTEGER
    mov     [rdx + Variant_t.value], rax
    ret

; ------------------------------------------------------------------------------
; Convert string to integer
; rcx - number as text e.g. '1234' (IN)
; rdx - integer value (OUT)
; ------------------------------------------------------------------------------

.parse_integer:
    push    rdx                                      ;

    mov     rcx, [ rcx + Variant_t.value ]           ; rcx = text (Buffer_t)
    mov     rcx, [ rcx + Buffer_t.bytesPtr ]         ; rcx = text (String_t)
    lea     rcx, [ rcx + String_t.text ]             ; rcx = text (char*)
    mov     rdx, 0                                   ; rdx = temp buf = NULL
    mov     r8, rdx                                  ; rdx = base = 0 = auto

    cinvoke strtol                                   ; rcx = int(text)

    pop     rdx                                      ;
    mov     [rdx + Variant_t.type], VARIANT_INTEGER  ;
    mov     [rdx + Variant_t.value], rax             ;
    ret                                              ;

; ------------------------------------------------------------------------------
; Convert string to float
; rcx - number as text e.g. '3.14' (IN)
; rdx - float value (OUT)
; ------------------------------------------------------------------------------

.parse_float:
    mov     rcx, [rcx + Variant_t.value]             ; rcx = text (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr]           ; rcx = text (String_t)
    lea     rcx, [rcx + String_t.text]               ; rcx = text (char*)

    push    rdx                                      ;
    cinvoke atof                                     ; rcx = atof(text)
    pop     rdx                                      ;

    mov     [rdx + Variant_t.type], VARIANT_DOUBLE   ;
    movq    [rdx + Variant_t.value], xmm0            ;
    ret                                              ;

; ------------------------------------------------------------------------------
; Bitwise operations: rv = x op y
; rcx - x  (IN)
; rdx - y  (IN)
; r8  - rv (OUT)
; ------------------------------------------------------------------------------

.bitwise_and:
    mov rax, [rcx + Variant_t.value]  ; rax = x
    and rax, [rdx + Variant_t.value]  ; rax = x & y
    jmp .bitwise_done

.bitwise_or:
    mov rax, [rcx + Variant_t.value]  ; rax = x
    or  rax, [rdx + Variant_t.value]  ; rax = x | y
    jmp .bitwise_done

.bitwise_xor:
    mov rax, [rcx + Variant_t.value]  ; rax = x
    xor rax, [rdx + Variant_t.value]  ; rax = x ^ y
    jmp .bitwise_done

.bitwise_not:
    mov rax, [rcx + Variant_t.value]  ; rax = x
    not rax                           ; rax = ~x

.bitwise_done:
    mov [r8 + Variant_t.type], VARIANT_INTEGER
    mov [r8 + Variant_t.value], rax
    ret

; ------------------------------------------------------------------------------
; Call external procedure
; rcx - DLL name
; rdx - Procedure name
; r8  - param1
; r9  - param2
; etc.
; ------------------------------------------------------------------------------

.callExternal:
    jmp    __MOLD_PrintErrorAndDie.notImplemented

; TODO: Not implemented
;    push    rdx
;
;    ; Load DLL
;    ; TODO: Don't resolve handle each time.
;    ; ------------------------------------
;    mov     rcx, [rcx + Variant_t.value]
;    mov     rcx, [rcx + Buffer_t.bytesPtr]
;    lea     rcx, [rcx + String_t.text]
;
;    cinvoke LoadLibrary                     ; rax = DLL Handle
;    mov     rcx, rax                        ; rcx = DLL Handle
;
;    ; Import procedure from DLL
;    ; TODO: Don't resolve symbol each time.
;    ; ------------------------------------
;
;    pop     rdx
;    mov     rdx, [rdx + Variant_t.value]
;    mov     rdx, [rdx + Buffer_t.bytesPtr]
;    lea     rdx, [rdx + String_t.text]
;
;    cinvoke GetProcAddress                  ; rax = external procedure ptr
;
;    ; Call imported procedure
;    ; TODO: Handle parameters.
;    ; ------------------------------------
;    jmp     rax

; ------------------------------------------------------------------------------
; die(msg)
; Print error message to stderr and exit process.
; ------------------------------------------------------------------------------

.die:
    call    __MOLD_PrintVariantToStdError
    jmp     __MOLD_Halt

.str:
    jmp     __MOLD_VariantConvertToString

.len:
    call    __MOLD_VariantLength
    mov     [rdx + Variant_t.type], VARIANT_INTEGER
    mov     [rdx + Variant_t.value], rax
    ret

.typeof:
    jmp     __MOLD_VariantTypeOf

.getTypeId:
    mov     eax, [rcx + Variant_t.type]
    mov     [rdx + Variant_t.type], VARIANT_INTEGER
    mov     [rdx + Variant_t.value], rax
    ret

.innertypeof:
    ; TODO: Optimize it.
    cmp     [rcx + Variant_t.type], VARIANT_ARRAY
    jnz     __MOLD_PrintErrorAndDie.arrayExpected

    mov     rax, [rcx + Variant_t.value]    ; rax = x   (Buffer_t)
    lea     rcx, [__TrashBin]               ; rcx = tmp (Variant_t)
    mov     rax, [rax + Buffer_t.bytesPtr]  ; rax = x   (Array_t)
    mov     eax, [rax + Array_t.innerType]  ; eax = x.innerType
    mov     [rcx + Variant_t.type], eax     ; tmp.type = x.innerType

    jmp     __MOLD_VariantTypeOf

; ------------------------------------------------------------------------------
; Insert item to array using relative index (@selector)
; rcx = box (Variant_t)
; rdx = value (Variant_t)
; ------------------------------------------------------------------------------

.arrayInsertAfterLast:
    ; TODO: Optimize it.
    ; TODO: Clean up this mess.
    push    rcx
    push    rdx
                                         ; rcx = box      (Array_t)
    lea     rdx, [__TempIndexInteger]    ; rdx = *tmp     (Variant_t)
    call    .len                         ; tmp = len(box) (Variant_t)

    lea     rdx, [__TempIndexInteger]    ; rdx = len(box) (Variant_t)
    pop     r8                           ; r8  = value    (Variant_t)
    pop     rcx                          ; rcx = box      (Array_t)

    jmp     __MOLD_VariantStoreAtIndex

.arraySetBySelector:
    ; TODO
    jmp     .error

.arrayLoadBySelector:
    ; TODO
    jmp     .error

; ------------------------------------------------------------------------------
; rv = substr(text, startIdx, length)
;
; rcx - text      (IN)
; rdx - start idx (IN)
; r8  - length    (IN)
; r9  - rv        (OUT)
; ------------------------------------------------------------------------------

.substr:

    ; TODO: Clean up this mess.
    ; TODO: Optimize it.
    ; TODO: Validate args.

    ; Fetch args
    cmp    [rcx + Variant_t.type], VARIANT_STRING
    jnz    __MOLD_PrintErrorAndDie.stringExpected

;    test  [rcx + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
;    jz    .fetch_args

;.convert_one_character_source:
;    mov   rax, [rcx + Variant_t.value]
;    lea   rcx, [OneCharacterStringTemp]
;    mov   [OneCharacterStringTempPeek], al

.fetch_args:
    mov     rcx, [rcx + Variant_t.value]   ; rcx = text     (Buffer_t)
    mov     rcx, [rcx + Buffer_t.bytesPtr] ; rcx = text     (String_t)
    mov     rdx, [rdx + Variant_t.value]   ; rdx = idxStart (int32)
    mov     r8,  [r8  + Variant_t.value]   ; r8  = len      (int32)

    ; Validate idxStart
    cmp     rdx, [rcx + String_t.length]
    ja      __MOLD_PrintErrorAndDie.indexOutOfRange

    ; Calculate maximum possible length
    mov     rax, [rcx + String_t.length]   ; rax = text.length (int32)
    sub     rax, rdx                       ; rax = maximum possible length

    ; Limit length to maximum possible
    cmp     rax, r8
    cmovbe  r8, rax

    ; -1: Use maximum possible length
    or      r8, r8                         ;
    cmovs   r8, rax                        ;

.init_output_stub:
    push    rcx
    push    rdx
    push    r8
    push    r9

    lea     rcx, [r8 + 16]                         ; rcx      = len + 16
    call    __MOLD_MemoryAlloc                     ; rax      = new Buffer_t

    pop     r9
    pop     r8
    pop     rdx
    pop     rcx

    mov     [r9 + Variant_t.type], VARIANT_STRING  ; rv.type  = string
    mov     [r9 + Variant_t.flags], 0              ; rv.flags = 0
    mov     [r9 + Variant_t.value], rax            ; rv.value = new Buffer_t

    ; Fill up output data
    push    r9

    mov     r9 , [rax + Buffer_t.bytesPtr]         ; r9        = new String_t
    mov     [r9  + String_t.length], r8            ; rv.length = len

    lea     rdx, [rcx + String_t.text + rdx]
    lea     rcx, [r9  + String_t.text]

    cinvoke strncpy

    pop     r9

    DEBUG_CHECK_VARIANT r9

    ret

; ------------------------------------------------------------------------------
; Generic error handler
; ------------------------------------------------------------------------------

.error:
    cinvoke printf, '__MOLD_SysCall: Invalid syscall id: %d', eax
    ret

; ------------------------------------------------------------------------------
; Jump table to dispatch routine by syscall id
; ------------------------------------------------------------------------------

.jmpTable:
  dq __MOLD_SysCall ; 0 (generic dispatcher)

  dq .openForRead   ; 1
  dq .openForWrite  ; 2
  dq .openForCreate ; 3
  dq .close         ; 4
  dq .error         ; 5
  dq .error         ; 6
  dq .error         ; 7

  dq .read_int8     ; 8    010 00b
  dq .read_int16    ; 9    010 01b
  dq .read_int32    ; 10   010 10b
  dq .read_int64    ; 11   010 11b
  dq .error         ; 12   011 00b
  dq .error         ; 13   011 01b
  dq .read_float32  ; 14   011 10b
  dq .read_float64  ; 15   011 11b
  dq .read_bool8    ; 16   100 00b
  dq .read_bool16   ; 17   100 01b
  dq .read_bool32   ; 18   100 10b
  dq .read_bool64   ; 19   100 11b
  dq .read_char     ; 20   101 00b

  dq .write_byte    ; 21
  dq .write_word    ; 22
  dq .write_dword   ; 23
  dq .write_qword   ; 24
  dq .write_dqword  ; 25
  dq .error         ; 26
  dq .error         ; 27
  dq .error         ; 28
  dq .loadFile      ; 29
  dq .error         ; 30

  dq .ord           ; 31
  dq .asc           ; 32
  dq .parse_integer ; 33
  dq .parse_float   ; 34

  dq .bitwise_and   ; 35
  dq .bitwise_or    ; 36
  dq .bitwise_xor   ; 37
  dq .bitwise_not   ; 38
  dq .callExternal  ; 39

  dq __MOLD_Halt    ; 40
  dq .die           ; 41

  dq __MOLD_VariantConvertToString ; 42
  dq .len                          ; 43
  dq __MOLD_VariantTypeOf          ; 44
  dq __MOLD_PrintVariant           ; 45
  dq __MOLD_PrintVariantToStdError ; 46

  dq .error                        ; 47
  dq .error                        ; 48
  dq .error                        ; 49

  dq .arrayInsertAfterLast  ; 50
  dq .error                 ; 51
  dq .error                 ; 52
  dq .error                 ; 53
  dq .error                 ; 54
  dq .substr                ; 55
  dq .innertypeof           ; 56
  dq .getTypeId             ; 57
  dq .error                 ; 58
  dq .error                 ; 59

.jmpTableEnd:
