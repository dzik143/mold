;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (C) 2015, 2019 Sylwester Wysocki (sw143@wp.pl)                    #
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

__MOLD_SysCall:
  cmp  eax, 32
  ja   .error

  jmp  qword [.jmpTable + eax * 8]

.jmpTable:
  dq .error         ; 0
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
  dq .error         ; 29
  dq .error         ; 30

  dq .ord           ; 31
  dq .asc           ; 32

; ------------------------------------------------------------------------------
; Open file
; rcx - path
; ------------------------------------------------------------------------------

.openForRead:
    mov     edx, GENERIC_READ
    mov     eax, OPEN_EXISTING
    jmp     .openFinal

.openForWrite:
    mov     edx, GENERIC_READ or GENERIC_WRITE
    mov     eax, OPEN_ALWAYS
    jmp     .openFinal

.openForCreate:
    mov     edx, GENERIC_READ or GENERIC_WRITE
    mov     eax, CREATE_ALWAYS

.openFinal:
    mov     rcx, [rcx + Variant_t.value]
    mov     rcx, [rcx + Buffer_t.bytesPtr]
    lea     rcx, [rcx + String_t.text]

    cinvoke CreateFileA, rcx, rdx, 0, 0, rax, 0, 0

    mov     [rdi + Variant_t.value], rax
    mov     [rdi + Variant_t.type], VARIANT_INTEGER
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
; ------------------------------------------------------------------------------

.read_char:
    mov     r8, 1
    mov     eax, VARIANT_STRING
    mov     [rdi + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
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
    mov     [rdi + Variant_t.type], eax
    mov     [rdi + Variant_t.value], 0
    mov     rcx, [rcx + Variant_t.value] ; hFile
    lea     rdx, [rdi + Variant_t.value] ; lpBuffer
    mov     r9, NumberOfBytesReaded      ; lpNumberOfBytesRead
    mov     qword [rsp], 0               ; lpOverlapped

    cinvoke ReadFile

    add     rsp, 32
    ret

; ------------------------------------------------------------------------------
; Write file
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
; Convert byte to char
; ------------------------------------------------------------------------------

.asc:
    mov     rax, [rcx + Variant_t.value]
    mov     [rdi + Variant_t.type], VARIANT_STRING
    mov     [rdi + Variant_t.flags], VARIANT_FLAG_ONE_CHARACTER
    mov     [rdi + Variant_t.value], rax
    ret

; ------------------------------------------------------------------------------
; Convert char to byte
; ------------------------------------------------------------------------------

.ord:
    mov     rax, [rcx + Variant_t.value]
    mov     [rdi + Variant_t.type], VARIANT_INTEGER
    mov     [rdi + Variant_t.value], rax
    ret

; ------------------------------------------------------------------------------
; Error file
; ------------------------------------------------------------------------------

.error:
    cinvoke printf, '__MOLD_SysCall: Invalid syscall id: %d', eax
    ret