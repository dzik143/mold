;###############################################################################
;#                                                                             #
;# This file is part of Mold project.                                          #
;# Copyright (c) 2015, 2018 Sylwester Wysocki (sw143@wp.pl).                   #
;#                                                                             #
;# The Mold code and any derived work however based on this software are       #
;# copyright of Sylwester Wysocki. Redistribution and use of the present       #
;# software is allowed according to terms specified in the file LICENSE        #
;# which comes in the source distribution.                                     #
;#                                                                             #
;# All rights reserved.                                                        #
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
    ; Dump exception info
    ; --------------------------------------------------------------------------

    mov     r8,  [r13 + CPU_CONTEXT.Rip]
    mov     edx, [r12 + EXCEPTION_RECORD.ExceptionCode]
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
