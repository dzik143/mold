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

struct CPU_CONTEXT
  P1Home       dq ?
  P2Home       dq ?
  P3Home       dq ?
  P4Home       dq ?
  P5Home       dq ?
  P6Home       dq ?
  ContextFlags dd ?
  MxCsr        dd ?

  SegCs dw ?
  SegDs dw ?
  SegEs dw ?
  SegFs dw ?
  SegGs dw ?
  SegSs dw ?

  EFlags dd ?
  Dr0    dq ?
  Dr1    dq ?
  Dr2    dq ?
  Dr3    dq ?
  Dr6    dq ?
  Dr7    dq ?

  Rax dq ?
  Rcx dq ?
  Rdx dq ?
  Rbx dq ?
  Rsp dq ?
  Rbp dq ?
  Rsi dq ?
  Rdi dq ?
  R8  dq ?
  R9  dq ?

  R10 dq ?
  R11 dq ?
  R12 dq ?
  R13 dq ?
  R14 dq ?
  R15 dq ?
  Rip dq ?

  XmmHeader dq 4  dup ?
  XmmLegacy dq 16 dup ?
  Xmm0      dq 2  dup ?
  Xmm1      dq 2  dup ?
  Xmm2      dq 2  dup ?
  Xmm3      dq 2  dup ?
  Xmm4      dq 2  dup ?
  Xmm5      dq 2  dup ?
  Xmm6      dq 2  dup ?
  Xmm7      dq 2  dup ?
  Xmm8      dq 2  dup ?
  Xmm9      dq 2  dup ?
  Xmm10     dq 2  dup ?
  Xmm11     dq 2  dup ?
  Xmm12     dq 2  dup ?
  Xmm13     dq 2  dup ?
  Xmm14     dq 2  dup ?
  Xmm15     dq 2  dup ?
ends

struct EXCEPTION_RECORD
  ExceptionCode dd ?
  ExceptionFlags dd ?
  ExceptionRecord dq ?
  ExceptionAddress dq ?
  NumberParameters dd ?
  ExceptionInformation dq ?
ends

proc __MOLD_ResolveSymbol
   ; rcx = <ptr>
   push   r12

   lea    rax, [.fmtBroken]
   lea    r12, [SymbolTableEnd - 16]

.next:
   mov    rdx, [r12 + 0]

   test   rdx, rdx
   jz     .done

   cmp    rcx, rdx
   jae    .found

   sub    r12, 16
   cmp    qword [r12 + 0], 0
   jnz    .next
   jmp    .done

.found:
   mov    rax, [r12 + 8]

.done:
   pop    r12
   ret

.fmtBroken db '?', 0
.fmtNull   db '(null)', 0
endp

;###############################################################################
;
; Resolve symbol related with given pointer and print it on stdout.
;
; RCX - function pointer to resolve (IN)
; RETURNS: Nothing
;
;###############################################################################

__MOLD_PrintStackTraceItem:
    ; rcx = <addr>
    call    __MOLD_ResolveSymbol ; rax = symbol name
    mov     rdx, rcx
    mov     r8, rax
    lea     rcx, [.fmt]
    cinvoke printf
    ret

.fmt db '%p <%s>', 13, 10, 0

;###############################################################################
;
; Dump callstack on stdout frame-by-frame.
;
; PARAMETERS: Nothing
; RETURNS:    Nothing
;
;###############################################################################

__MOLD_PrintStackTrace:
    push    rbp
    push    r12
    mov     r12, 16                     ; r12 = max frames to print

.walk:
    ; --------------------------------------------------------------------------
    ; Is it the last frame in chain?
    ; --------------------------------------------------------------------------

    mov     rcx, [rbp + 8]              ; rcx = return address
    mov     rbp, [rbp]                  ; rbp = next frame in chain
    test    rbp, rbp                    ; is it last frame?
    jz      .done                       ; NULL pointer, it's a last frame

    ; --------------------------------------------------------------------------
    ; Print function pointed by current frame.
    ; --------------------------------------------------------------------------

    call    __MOLD_PrintStackTraceItem

    ; --------------------------------------------------------------------------
    ; Get next frame and go on.
    ; --------------------------------------------------------------------------

    dec     r12
    jnz     .walk

.done:
    ; --------------------------------------------------------------------------
    ; NULL frame pointer found, don't go on anymore.
    ; --------------------------------------------------------------------------

    pop     r12
    pop     rbp
    ret

.fmtStackTraceItem db '%p <%s>', 13, 10, 0

;###############################################################################
;
; Print CPU_CONTEXT struct on stdout.
; This struct contains CPU state (registers) after exception occures.
;
; RCX - pointer to CPU_CONTEXT struct (IN)
;       See for more:
;       https://msdn.microsoft.com/en-us/library/windows/desktop/ms681419(v=vs.85).aspx
;
; RETURNS: Nothing
;
;###############################################################################

__MOLD_PrintCpuContext:
    push    qword [rcx + CPU_CONTEXT.Xmm7 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm7 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm6 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm6 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm5 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm5 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm4 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm4 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm3 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm3 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm2 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm2 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm1 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm1 + 8]

    push    qword [rcx + CPU_CONTEXT.Xmm0 + 0]
    push    qword [rcx + CPU_CONTEXT.Xmm0 + 8]

    push    qword [rcx + CPU_CONTEXT.R15]
    push    qword [rcx + CPU_CONTEXT.R14]
    push    qword [rcx + CPU_CONTEXT.R13]
    push    qword [rcx + CPU_CONTEXT.R12]

    push    qword [rcx + CPU_CONTEXT.R11]
    push    qword [rcx + CPU_CONTEXT.R10]
    push    qword [rcx + CPU_CONTEXT.R9]
    push    qword [rcx + CPU_CONTEXT.R8]

    push    qword [rcx + CPU_CONTEXT.Rsp]
    push    qword [rcx + CPU_CONTEXT.Rbp]
    push    qword [rcx + CPU_CONTEXT.Rdi]
    push    qword [rcx + CPU_CONTEXT.Rsi]

    push    qword [rcx + CPU_CONTEXT.Rdx]
    mov     r9,   [rcx + CPU_CONTEXT.Rcx]
    mov     r8,   [rcx + CPU_CONTEXT.Rbx]
    mov     rdx,  [rcx + CPU_CONTEXT.Rax]

    lea     rcx, [.fmtRegistersDump]

    sub     rsp, 32
    call    [printf]
    add     rsp, 32 + 13*8 + 16*8

    ret

.fmtRegistersDump db 'RAX %p RBX %p RCX %p RDX %p', 13, 10
                  db 'RSI %p RDI %p RBP %p RSP %p', 13, 10
                  db 'R8  %p R9  %p R10 %p R11 %p', 13, 10
                  db 'R12 %p R13 %p R14 %p R15 %p', 13, 10
                  db 13, 10

                  db 'XMM0 %p %p XMM1 %p %p', 13, 10
                  db 'XMM2 %p %p XMM3 %p %p', 13, 10
                  db 'XMM4 %p %p XMM5 %p %p', 13, 10
                  db 'XMM6 %p %p XMM7 %p %p', 13, 10
                  db 13, 10, 0

;###############################################################################
;
; Default exception handler.
; https://msdn.microsoft.com/en-us/library/windows/desktop/ms679274(v=vs.85).aspx
;
; RCX - pointer to EXCEPTION_POINTERS struct (IN)
;       https://msdn.microsoft.com/en-us/library/windows/desktop/ms679331(v=vs.85).aspx
;
; RETURNS: Nothing
;
;###############################################################################

 __MOLD_DefaultExceptionHandler:
    push    rbp
    push    r12
    push    r13

    ; --------------------------------------------------------------------------
    ; Avoid recursive call (exception inside exception handler)
    ; --------------------------------------------------------------------------

;    cmp     byte [CrashDetected], 1       ; are we inside exception?
;    jz      .corruptedStack               ;
;    mov     byte [CrashDetected], 1       ; avoid recursive exception

    mov     r12, [rcx]                    ; r12 = exception record (EXCEPTION_RECORD *)
    mov     r13, [rcx + 8]                ; r13 = cpu context (CONTEXT *)

    ; --------------------------------------------------------------------------
    ; Map common exception codes to runtime error handlers
    ; --------------------------------------------------------------------------

    mov     edx, [r12 + EXCEPTION_RECORD.ExceptionCode]

    cmp     edx, 0xc000008e ; Float
    jz      __MOLD_PrintErrorAndDie.divideByZero

    cmp     edx, 0xc0000091
    jz      __MOLD_PrintErrorAndDie.floatOverflow

    cmp     edx, 0xc0000093
    jz      __MOLD_PrintErrorAndDie.floatUnderflow

    cmp     edx, 0xc0000094 ; Integer
    jz      __MOLD_PrintErrorAndDie.divideByZero

    ; --------------------------------------------------------------------------
    ; Dump exception info
    ; --------------------------------------------------------------------------

    mov     r8,  [r13 + CPU_CONTEXT.Rip]
    lea     rcx, [.fmtExceptionInfo]
    cinvoke printf

    ; --------------------------------------------------------------------------
    ; Dump registers to stdout
    ; --------------------------------------------------------------------------

    mov     rcx, r13                      ; rcx = cpu context (CONTEXT *)
    call    __MOLD_PrintCpuContext

    ; --------------------------------------------------------------------------
    ; Dump stacktrace to stdout
    ; --------------------------------------------------------------------------

    mov     rcx, [r13 + CPU_CONTEXT.Rip]  ; Last function pointed by RIP
    call    __MOLD_PrintStackTraceItem

    mov     rbp, [r13 + CPU_CONTEXT.Rbp]  ; Restore last stack frame
    call    __MOLD_PrintStackTrace

    jmp     .done

    ; --------------------------------------------------------------------------
    ; Corrupted stack error (recursive exception).
    ; --------------------------------------------------------------------------

.corruptedStack:
    cinvoke printf, .fmtCorruptedStack

    ; --------------------------------------------------------------------------
    ; Terminate current curring process.
    ; --------------------------------------------------------------------------

.done:
    cinvoke printf, .fmtFinalMsg

    mov     eax, 0

    pop     r13
    pop     r12
    pop     rbp

    cinvoke ExitProcess, -1
    ret

    ; --------------------------------------------------------------------------
    ; Inline data
    ; --------------------------------------------------------------------------

.fmtCorruptedStack db 'Corrupted stack detected', 13, 10, 0
.fmtExceptionInfo  db 'Exception %x at %p', 13, 10, 13,10, 0
.fmtFinalMsg       db 13, 10, "I'm going to die now, thanks for using me.", 13, 10
                   db "P.S. Checkout diviner Maciej!'", 13, 10, 0


;###############################################################################
;
; Print profiler statistics to stdout.
; RCX - pointer to NULL terminated {int64, cstring}.
; RETURNS: Nothing
;
;###############################################################################

__MOLD_PrintProfilerData:
  push  r12
  mov   r12, rcx

.printOneEntry:
  lea   rcx, [.fmtEntry]
  mov   r8,  [r12]
  mov   rdx, [r12 + 8]

  or    rdx, rdx
  jz    .done

  cinvoke printf

  add   r12, 16
  jmp   .printOneEntry

.done:

  pop   r12
  ret

.fmtEntry db '%64s %I64d', 13, 10, 0

;###############################################################################
;
; Print array of items pointed in format list.
;
; RCX - format list (IN)
;
;###############################################################################

FMT_TERMINATOR        EQU 0
FMT_RESERVED1         EQU 1

FMT_LOCAL_int32       EQU 2
FMT_LOCAL_float32     EQU 3
FMT_LOCAL_float64     EQU 4
FMT_LOCAL_string      EQU 5
FMT_LOCAL_bool32      EQU 6

FMT_GLOBAL_int32      EQU 7
FMT_GLOBAL_float32    EQU 8
FMT_GLOBAL_float64    EQU 9
FMT_GLOBAL_string     EQU 10
FMT_GLOBAL_bool32     EQU 11

FMT_RETVAL_int32      EQU 12
FMT_RETVAL_float32    EQU 13
FMT_RETVAL_float64    EQU 14
FMT_RETVAL_string     EQU 15
FMT_RETVAL_bool32     EQU 16

FMT_LOCAL_variant     EQU 17
FMT_GLOBAL_variant    EQU 18
FMT_RETVAL_variant    EQU 19

FMT_EOL               EQU 20
FMT_TEXT8             EQU 21

__MOLD_PrintFormatFromRegister:
    lea     rax, [__MOLD_TempFmt]
    mov     qword [rax], rcx
    mov     rcx, rax

__MOLD_PrintFormatFromMemory:
    push    rsi
    sub     rsp, 32              ; shadow space for inner calls

    mov     rsi, rcx             ; rsi = format bytes
    jmp     .fetch_first_param   ;

.fetch_next_param:
    ; TODO: Simplify it.
    ; TODO: Clean up this mess.
    mov     al, byte [rsi]       ;
    mov     cl, ' '              ; Separate items by space
    cmp     al, FMT_EOL          ;
    jae     .fetch_first_param   ;
    call    [putchar]            ;

.fetch_first_param:
    xor     eax, eax             ; rax = 0
    lodsb                        ; rax = item type (int8)
    jmp     qword [.jmpTable + rax*8] ; dispatch item type

.jmpTable:
    dq .done              ; 0 terminator

    dq .notImplemented    ; 1
    dq .int32Local        ; 2
    dq .notImplemented    ; 3
    dq .float64Local      ; 4
    dq .variantLocal      ; 5 (string)
    dq .bool32Local       ; 6

    dq .int32Global       ; 7
    dq .notImplemented    ; 8
    dq .float64Global     ; 9
    dq .variantGlobal     ; 10 (string)
    dq .bool32Global      ; 11

    dq .int32Retval       ; 12
    dq .notImplemented    ; 13
    dq .float64Retval     ; 14
    dq .notImplemented    ; 15
    dq .bool32GRetval     ; 16

    dq .variantLocal      ; 17 local variant on stack [RBP - n*4]
    dq .variantGlobal     ; 18 global variant (absolute address)
    dq .variantRetVal     ; 19 retval variant

    dq .eol               ; 20 line break (EOL)
    dq .text8             ; 21 inline text with 8-byte size prefix

.text8:
    lodsb                        ; rax = text length (int8)
    mov     r8, rsi              ; rsi = text8 struct ptr
    mov     rdx, rax             ; rdx = text length (int8)
    add     rsi, rax             ; rsi = skip text in format stream

    ; TODO: Clean up this mess.
    cinvoke printf, '%.*s'       ; print inline text with given length
    jmp     .fetch_next_param    ;

.variantLocal:
    movsx   rax, word [rsi]      ; rax = rbp offset
    lea     rcx, [rbp + rax]     ; rcx = [rbp - item offset]
    call    __MOLD_PrintVariant  ; print variant item from stack

    add     rsi, 2               ; rsi = next item in format buffer
    jmp     .fetch_next_param

.variantGlobal:
    lodsq                        ; rax = absolute variant address
    mov     rcx, rax             ; rax = absolute variant address
    call    __MOLD_PrintVariant  ; print variant item by absolute address
    jmp     .fetch_next_param

.variantRetVal:
    mov     rcx, rdi             ; rcx = current return value
    call    __MOLD_PrintVariant  ; print variant item by absolute address
    jmp     .fetch_next_param

.float64Global:
    sub     eax, 5
    mov     rdx, qword [rsi]
    add     rsi, 6
    mov     rdx, qword [rdx]
    jmp     .generic_final

.int32Global:
.bool32Global:
    sub     eax, 5
    mov     rdx, qword [rsi]
    add     rsi, 6
    mov     edx, dword [rdx]
    jmp     .generic_final

.float64Local:
    movsx   rdx, word [rsi]
    lea     rdx, [rbp + rdx]
    mov     rdx, qword [rdx]
    jmp     .generic_final

.int32Local:
.bool32Local:
    movsx   rdx, word [rsi]      ; rdx = rbp offset
    lea     rdx, [rbp + rdx]     ; rdx = [rbp - item offset]
    movsxd  rdx, dword [rdx]     ; rdx = primitive value

.generic_final:
    lea     rcx, [__TrashBin]
    mov     dword [rcx + Variant_t.type], eax
    mov     qword [rcx + Variant_t.value], rdx

    add     rsi, 2
    call    __MOLD_PrintVariant
    jmp     .fetch_next_param


.int32Retval:
.float64Retval:
.bool32GRetval:
    jmp     .notImplemented

.eol:
    mov     cl, 10               ; begin new line
    call    [putchar]            ;
    jmp     .fetch_first_param   ;

.done:
    mov     cl, 10               ; append end of line
    call    [putchar]            ;

    add     rsp, 32              ; clean shadow space
    pop     rsi                  ;
    ret                          ;

.notImplemented:
    jmp     __MOLD_PrintErrorAndDie.notImplemented
