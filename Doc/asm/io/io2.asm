format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'
; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*1024*4, 1024*1024*4
include '../../../Compiler/Core/x64/Variant.asm'
; -----------------------------------------------
; entry point
; -----------------------------------------------

__MOLD_IO_BUFFER_SIZE EQU 4*4096

__MOLD_IO_Flush:
__MOLD_IO_Handler_FlushPage:
    mov     r8, rdi                    ; r8  = last accessed byte (char*)
    and     r8, __MOLD_IO_BUFFER_SIZE*2 - 1
                                       ; r8  = number of pending bytes (int32)
    sub     rdi, r8                    ; rdi = buffer begin (char*)

    mov     rcx, qword [rdi - 8]       ; rcx = underlying file handle (HANDLE)
    lea     r9, [NumberOfBytesWritten] ; r9  = placeholder for write cnt result
    mov     rdx, rdi                   ; rdx = buffer begin (char*)
    push    0                          ; null overlapped struct (TODO)

    sub     rsp, 32                    ;
    call    [WriteFile]                ;

.setUpPageGuard:

    mov     rdx, 4096                  ;
    mov     r8, PAGE_EXECUTE_READWRITE OR PAGE_GUARD
                                       ;
    lea     rcx, [rdi + __MOLD_IO_BUFFER_SIZE]
                                       ;
    lea     r9, [temp]                 ;
    call    [VirtualProtect]           ;

    add     rsp, 32 + 8                ;
    ret                                ;

; ##############################################################################
;
; IO exception handler
; https://board.flatassembler.net/topic.php?t=11266
;
; rcx = EXCEPTION_RECORD (IN)
; rdx = ?
; r8  = CONTEXT64        (IN)
; r9  = ?
;
; RETURNS:
;   EXCEPTION_PDATA_CONTINUE_EXECUTION = 0
;   EXCEPTION_PDATA_CONTINUE_SEARCH    = 1
;   EXCEPTION_PDATA_NESTED_EXCEPTION   = 2
;   EXCEPTION_PDATA_COLLIDED_UNWIND    = 3
;
; ##############################################################################

__MOLD_ExceptionIO:

    ; --------------------------------------------------------------------------
    ; Pass to next handler if non-io related.
    ; --------------------------------------------------------------------------

    cmp     [rcx + EXCEPTION_RECORD.ExceptionCode], 0x80000001
    jz      .flushPendingIO

.goToNextHandler:

    mov     eax, EXCEPTION_PDATA_CONTINUE_SEARCH
    ret

    ; --------------------------------------------------------------------------
    ; Flush pending IO buffer
    ; --------------------------------------------------------------------------

.flushPendingIO:

    push    rdi
    mov     rdi, qword [r8 + CPU_CONTEXT.Rdi]

    push    r8
    call    __MOLD_IO_Handler_FlushPage
    pop     r8
    mov     qword [r8 + CPU_CONTEXT.Rdi], rdi

    mov     eax, EXCEPTION_CONTINUE_SEARCH
    pop     rdi
    ret

; -----------------------------------------------
; function start
; -----------------------------------------------

start:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32

    lea     rdi, [io_buffer]

    mov     ecx, -12
    call    [GetStdHandle]             ; rax = std output handle
    mov     [rdi - 8], rax
    mov     qword [io_handle], rax

    lea     rcx, [rdi + __MOLD_IO_BUFFER_SIZE]
    cinvoke VirtualProtect, rcx, 4096, PAGE_EXECUTE_READWRITE + PAGE_GUARD, temp

; ------------
; Benchmark #1
; ------------

    mov     al, 0
    mov     edx, 1024*256

.goOn:
    inc     al
    mov     ecx, 4096

.ioEnter1:
    rep     stosb
.ioLeave1:

    dec     edx
    jnz     .goOn

    call    __MOLD_IO_Flush

; ------------
; Benchmark #2
; ------------

;    mov     al, 0
;    mov     edx, 1024*256
;
;.goOn:
;    inc     al
;    lea     rdi, [io_buffer]
;    mov     ecx, 4096
;    rep     stosb
;
;    push    rax
;    push    rcx
;    push    rdx
;
;    mov     rcx, qword [io_handle]
;    cinvoke WriteFile, rcx, io_buffer, 4096, NumberOfBytesWritten, 0
;
;    pop     rdx
;    pop     rcx
;    pop     rax
;
;    dec     edx
;    jnz     .goOn


;PendingWrite

;  mov    eax, 'xxxx'
;  stosd



  add     rsp, 32
  pop     rbp
  ret

endOfCodeSection:
; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include '../../../Compiler/Core/x64/CommonData.asm'

temp dq 0

io_buffer_ptr dq io_buffer
io_handle     dq 0

align __MOLD_IO_BUFFER_SIZE*2
io_buffer db __MOLD_IO_BUFFER_SIZE dup ?
          db 4096 dup ?

; Global vars
; -----------
; ------------------------------------------------------------------------------
;                     Constant (read-only) data section
; ------------------------------------------------------------------------------
section '.rdata' data readable

; Constants
; ---------
db ?
; iter 0
; iter 1
; iter 2
; iter 3
; iter 4
; iter 5
; iter 6
; iter 7
; iter 8
; iter 9
; iter 10
; iter 11
; iter 12
; iter 13
; iter 14
; iter 15

; Jump tables
; -----------

; vtables
; -------
vtable_Test:
.offset dd 8 * 0
.length dd 8 * 0

; ------------------------------------------------------------------------------
;                               Imports section
; ------------------------------------------------------------------------------
section '.idata' import data readable writeable
  include '../../../Compiler/Core/x64/CommonImports.asm'

; ------------------------------------------------------------------------------
;                                Debug section
; ------------------------------------------------------------------------------
section '.debug' data readable
SymbolTable:
dq 0, 0
include '../../../Compiler/Core/x64/SymbolTableCommon.asm'
dq  start , name_start
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include '../../../Compiler/Core/x64/SymbolTableCommonNames.asm'
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0

; ------------------------------------------------------------------------------
;                                Exceptions
; ------------------------------------------------------------------------------

section '.pdata' readable writeable
__MOLD_Exceptions:

data IMAGE_DIRECTORY_ENTRY_EXCEPTION
  dd  RVA start.ioEnter1, RVA start.ioLeave1, RVA .io_handler
end data

.io_handler:
  db 19h, 0, 0, 0
  dd RVA __MOLD_ExceptionIO
  dd 0
