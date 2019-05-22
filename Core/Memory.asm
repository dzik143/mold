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

__MOLD_BUFFER_CONTAINER_SIZE EQU 32
__MOLD_BUFFER_FLAG_STATIC    EQU 1

DEBUG          EQU 0
ASSERT_ENABLED EQU 0

struct Buffer_t
  capacity dq ?
  refCnt   dq ?
  flags    dq ?
  bytesPtr dq ?
ends

BUFFER_T_SIZE EQU 32
MAX_REF_CNT   EQU 500000

;###############################################################################
;
; Allocate new buffer.
;
; RCX - number of bytes to be allocated (IN)
;
; RETURNS: Pointer to new Buffer_t struct.
;
;###############################################################################

__MOLD_MemoryAlloc:

  ; ----------------------------------------------------------------------------
  ; Init stack frame
  ; ----------------------------------------------------------------------------

  .alignedCapacity EQU rbp - 24 ; 8 bytes
  .bufferHolder    EQU rbp - 32 ; 8 bytes

  ;local .alignedCapacity dq ?
  ;local .bufferHolder    dq ?

  push    rbp
  mov     rbp, rsp
  sub     rsp, 64

  ; ----------------------------------------------------------------------------
  ; Align size to 64 bytes
  ; ----------------------------------------------------------------------------

  add     rcx, 64                           ; rcx = capacity + 64
  and     rcx, 0xffffffffffffffc0           ; rcx = (capacity + 64) mod 64
  mov     [.alignedCapacity], rcx           ; save aligned capacity

  ; ----------------------------------------------------------------------------
  ; Allocate Buffer_t holder
  ; ----------------------------------------------------------------------------

  call    __MOLD_MemoryLogAlloc             ;
  mov     rcx, BUFFER_T_SIZE                ; rcx = size of Buffer_t struct
  cinvoke malloc                            ; rax = pointer to new Buffer_t
  mov     [.bufferHolder], rax              ; save pointer to buffer holder
  test    rax, rax
  jz      .outOfMemory

  ; ----------------------------------------------------------------------------
  ; Allocate new memory block
  ; ----------------------------------------------------------------------------

  mov     rcx, [.alignedCapacity]           ; rcx = aligned capacity
  mov     rdx, 1                            ; rdx = 1
  cinvoke calloc                            ; rax = new memory block
  test    rax, rax
  jz      .outOfMemory

  ; ----------------------------------------------------------------------------
  ; Set up Buffer_t struct
  ; ----------------------------------------------------------------------------

  mov     rcx, [.bufferHolder]              ; rcx = new Buffer_t struct
  mov     rdx, [.alignedCapacity]           ; rdx = aligned capacity

  mov     [rcx + Buffer_t.refCnt], 1        ;
  mov     [rcx + Buffer_t.capacity], rdx    ;
  mov     [rcx + Buffer_t.flags], 0         ;
  mov     [rcx + Buffer_t.bytesPtr], rax    ;

  ; ----------------------------------------------------------------------------
  ; DEBUG
  ; ----------------------------------------------------------------------------

if DEBUG
  push rax rcx rdx r8 r9 r10 r11
  mov   r9, rax
  mov   r8, rdx
  mov   rdx, rcx
  lea   rcx, [.fmtDebug1]
  call  [printf]
  pop   r11 r10 r9 r8 rdx rcx rax
  jmp   .afterDebug1
.fmtDebug1 db 'allocated buffer ptr %p, %d bytes, bytesPtr %p', 13, 10, 0
.afterDebug1:
end if
  ; ----------------------------------------------------------------------------
  ; END OF DEBUG
  ; ----------------------------------------------------------------------------

  mov     rax, [.bufferHolder]

  add     rsp, 64
  pop     rbp
  ret

  restore .alignedCapacity
  restore .bufferHolder

;.fmt db 'Init refCnt to 1', 13, 10, 0
.outOfMemory:
  cinvoke printf, 'PANIC! Out of memory'
  int 3


proc __MOLD_MemoryAddRef buf
  ; rcx = buf

  mov     rax, [rcx + Buffer_t.refCnt]
  test    rax, rax
  jl      .staticBuffer

  if DEBUG
  push    rax rcx rdx r8 r9 r10 r11
  mov     r9, [rcx + Buffer_t.bytesPtr]
  mov     r8, rcx
  mov     rdx, [rcx + Buffer_t.refCnt]
  lea     rcx, [.fmt]
  cinvoke printf
  pop     r11 r10 r9 r8 rdx rcx rax
  end if

  ; -----
  ; DEBUG
  ; -----
  if ASSERT_ENABLED
  mov     rax, [rcx + Buffer_t.refCnt]
  cmp     rax, MAX_REF_CNT
  jna    .refCntOk

  cinvoke printf, "PANIC! Unexpected refCnt [%d] while increasing ptr %p", rax, rcx
  int 3
.refCntOk:
  end if

  inc     [rcx + Buffer_t.refCnt]

.staticBuffer:
  ret

if DEBUG
.fmt db "Increasing refCnt from %d, ptr %p, bytesPtr %p", 13, 10, 0
end if
endp

proc __MOLD_MemoryRelease buf
  ; rcx = buf

  ; -----
  ; DEBUG
  ; -----

  if ASSERT_ENABLED
  test    rcx, rcx
  jnz     .ptrOk
  cinvoke printf, 'PANIC! Attemp to free NULL pointer'
  int     3
.ptrOk:
  end if

  ; ------------
  ; END OF DEBUG
  ; ------------

  mov     rax, [rcx + Buffer_t.refCnt]
  test    rax, rax
  jl      .staticBuffer

  ; -----
  ; DEBUG
  ; -----
  if ASSERT_ENABLED
  or      rax, rax
  jz      .refCntZero

  cmp     rax, MAX_REF_CNT
  jna    .refCntOk

.refCntZero:
  cinvoke printf, "PANIC! Unexpected refCnt [%d] while release ptr %p", rax, rcx
  int 3

.refCntOk:
  end if

  if DEBUG
  push    rax rcx rdx r8 r9 r10 r11
  mov     r9, [rcx + Buffer_t.bytesPtr]
  mov     r8, rcx
  mov     rdx, [rcx + Buffer_t.refCnt]
  lea     rcx, [.fmt]
  cinvoke printf
  pop     r11 r10 r9 r8 rdx rcx rax
  end if

  ; ------------
  ; END OF DEBUG
  ; ------------

  dec     [rcx + Buffer_t.refCnt]
  jnz     .bufferInUse

  ; -----
  ; DEBUG
  ; -----
  if DEBUG
  push    rcx rdx r8 r9 r10 r11
  mov     rdx, [rcx + Buffer_t.bytesPtr]
  lea     rcx, [.fmtFree]
  cinvoke printf
  pop     r11 r10 r9 r8 rdx rcx
  end if
  ; ------------
  ; END OF DEBUG
  ; ------------

  call    __MOLD_MemoryLogFree
  push    rcx
  mov     rcx, [rcx + Buffer_t.bytesPtr]
  cinvoke free
  pop     rcx

  ; TODO: REVIEW IT!
  cinvoke free

.staticBuffer:
.bufferInUse:
  ret

if DEBUG
.fmt     db "Decreasing refCnt from %d, ptr %p, bytesPtr %p", 13, 10, 0
.fmtFree db "Freeing ptr %p", 13, 10, 0
end if
endp

;###############################################################################
;
; Increase buffer capacity twice.
;
; RCX - pointer to Buffer_t struct allocated by __MOLD_MemoryAlloc before (IN).
;
; RETURNS: Pointer to new Buffer_t struct.
;
;###############################################################################

proc __MOLD_MemoryIncreaseBufferTwice buf

  ; ----------------------------------------------------------------------------
  ; Set up stack frame
  ; ----------------------------------------------------------------------------

  push    r12
  sub     rsp, 32

  mov     r12, rcx                       ; r12 = Buffer_t struct

  ; ------------
  ; DEBUG
  ; ------------
if DEBUG
  push rcx rdx r8 r9 r10 r11
  mov  rdx, rcx
  cinvoke printf, .fmtDebug1
  pop  r11 r10 r9 r8 rdx rcx
  jmp .afterDebug1
.fmtDebug1 db 'going to resize ptr %p', 13, 10, 0
.afterDebug1:
end if
  ; ------------
  ; END OF DEBUG
  ; ------------

  ; ----------------------------------------------------------------------------
  ; Is it static buffer?
  ; ----------------------------------------------------------------------------
  mov     rax, [rcx + Buffer_t.refCnt]
  test    rax, rax
  jnl     .dynamicBuffer

.staticBuffer:

  cinvoke printf, 'TODO: Realloc of static buffer'
  int 3

  ; ----------------------------------------------------------------------------
  ; Calculate new buffer capacity
  ; ----------------------------------------------------------------------------

.dynamicBuffer:

  mov     r11, [r12 + Buffer_t.capacity] ; r11         = old capacity
  lea     rdx, [r11 * 2]                 ; rdx         = old capacity * 2

  ; ------------
  ; DEBUG
  ; ------------
if DEBUG
  push rcx rdx r8 r9 r10 r11
  mov  r9, rdx
  mov  rdx, rcx
  cinvoke printf, .fmtDebug2, rdx, r11, r9
  pop  r11 r10 r9 r8 rdx rcx
  jmp .afterDebug2
.fmtDebug2 db 'resizing buffer ptr %p from %d to %d bytes', 13, 10, 0
.afterDebug2:
end if

  ; ----------------------------------------------------------------------------
  ; Log reallocation if if needed
  ; ----------------------------------------------------------------------------

  call    __MOLD_MemoryLogRealloc

  ; ------------
  ; END OF DEBUG
  ; ------------

  ; ----------------------------------------------------------------------------
  ; Reallocate buffer to new size
  ; ----------------------------------------------------------------------------

  mov     rcx, [r12 + Buffer_t.bytesPtr] ; rcx = old memory block
  call    [realloc]                      ; rax = new memory block
  test    rax, rax
  jz      .errorOutOfMemory

  mov     [r12 + Buffer_t.bytesPtr], rax ; rv.bytesPtr = new memory block

  ; ----------------------------------------------------------------------------
  ; Zero fill new allocated content
  ; ----------------------------------------------------------------------------

  mov     rcx, rax                         ; rcx = new memory block
  mov     rdx, [r12 + Buffer_t.capacity]   ; rdx = old capacity
  add     rcx, rdx                         ; rcx = first new byte

  call    [RtlZeroMemory]                  ; clean new bytes
  mov     rax, r12                         ; rax = new buffer

  shl     [r12 + Buffer_t.capacity], 1     ; rv.capacity *= 2

  ; ----------------------------------------------------------------------------
  ; Clean up stack frame
  ; ----------------------------------------------------------------------------

  add     rsp, 32
  pop     r12

  ret

.errorOutOfMemory:
  cinvoke printf, 'error: out of memory'
  cinvoke ExitProcess, -1
endp

;###############################################################################
;
; Realloc buffer to desired size.
;
; RCX - pointer to Buffer_t struct allocated by __MOLD_MemoryAlloc before (IN).
; RDX - desired size in bytes (IN).
;
; RETURNS: Pointer to Buffer_t struct (RAX).
;
;###############################################################################

__MOLD_MemoryRealloc:

  ; ----------------------------------------------------------------------------
  ; Is it empty buffer?
  ; ----------------------------------------------------------------------------
  or      rcx, rcx            ; Is oldBuffer NULL?
  cmovz   rcx, rdx            ; rcx = new capacity
  jz      __MOLD_MemoryAlloc  ; passthrough to malloc

  ; ----------------------------------------------------------------------------
  ; Set up stack frame
  ; ----------------------------------------------------------------------------

  push    r12
  sub     rsp, 32

  mov     r12, rcx                       ; r12 = Buffer_t struct

  ; ------------
  ; DEBUG
  ; ------------
if DEBUG
  push rcx rdx r8 r9 r10 r11
  mov  rdx, rcx
  cinvoke printf, .fmtDebug1
  pop  r11 r10 r9 r8 rdx rcx
  jmp .afterDebug1
.fmtDebug1 db 'going to resize ptr %p', 13, 10, 0
.afterDebug1:
end if
  ; ------------
  ; END OF DEBUG
  ; ------------

  ; ----------------------------------------------------------------------------
  ; Is it static buffer?
  ; ----------------------------------------------------------------------------
  mov     rax, [rcx + Buffer_t.refCnt]
  test    rax, rax
  jnl     .dynamicBuffer

.staticBuffer:
  mov     rcx, rdx                        ; rcx = new capacity
  call    __MOLD_MemoryAlloc              ; rax = new allocated Buffer_t

  push    rsi
  push    rdi

  mov     rcx, [r12 + Buffer_t.capacity]
  mov     rsi, [r12 + Buffer_t.bytesPtr]
  mov     rdi, [rax + Buffer_t.bytesPtr]
  rep     movsb

  pop     rdi
  pop     rsi

  jmp     .done

  ; ----------------------------------------------------------------------------
  ; Calculate new buffer capacity
  ; ----------------------------------------------------------------------------

.dynamicBuffer:

  mov     r11, [r12 + Buffer_t.capacity] ; r11 = old capacity
  cmp     rdx, r11
  mov     rax, r12
  jbe     .noReallocNeeded

  add     rdx, 64                        ; rdx = newCapacity + 64
  and     rdx, 0xffffffffffffffc0        ; rdx = (newCapacity + 64) mod 64
  push    rdx

  ; ------------
  ; DEBUG
  ; ------------
if DEBUG
  push rcx rdx r8 r9 r10 r11
  mov  r9, rdx
  mov  rdx, rcx
  cinvoke printf, .fmtDebug2, rdx, r11, r9
  pop  r11 r10 r9 r8 rdx rcx
  jmp .afterDebug2
.fmtDebug2 db 'resizing buffer ptr %p from %d to %d bytes', 13, 10, 0
.afterDebug2:
end if

  ; ----------------------------------------------------------------------------
  ; Log reallocation if if needed
  ; ----------------------------------------------------------------------------

  call    __MOLD_MemoryLogRealloc

  ; ------------
  ; END OF DEBUG
  ; ------------

  ; ----------------------------------------------------------------------------
  ; Reallocate buffer to new size
  ; ----------------------------------------------------------------------------

  mov     rcx, [r12 + Buffer_t.bytesPtr] ; rcx = old memory block
  cinvoke realloc                        ; rax = new memory block
  test    rax, rax
  jz      .errorOutOfMemory

  mov     [r12 + Buffer_t.bytesPtr], rax ; rv.bytesPtr = new memory block

  ; ----------------------------------------------------------------------------
  ; Zero fill new allocated content
  ; ----------------------------------------------------------------------------

  mov     rcx, rax                         ; rcx = new memory block
  mov     rdx, [r12 + Buffer_t.capacity]   ; rdx = old capacity
  add     rcx, rdx                         ; rcx = first new byte

; TODO !!!  call    [RtlZeroMemory]                  ; clean new bytes
  mov     rax, r12                         ; rax = new buffer
  pop     qword [rax + Buffer_t.capacity]  ; rv.capacity = newCapacity

  ; ----------------------------------------------------------------------------
  ; Clean up stack frame
  ; ----------------------------------------------------------------------------

.noReallocNeeded:
.done:

  add     rsp, 32
  pop     r12

  ret

.errorOutOfMemory:
  cinvoke printf, 'error: out of memory'
  cinvoke ExitProcess, -1



proc __MOLD_MemoryDump buf
    push rax r10 r11 r12

    ; rcx = buf
;    mov rax, [rcx + Buffer_t.capacity]
;    mov r10, [rcx + Buffer_t.refCnt]
;    mov r12, [r11 + 0]
;    cinvoke printf, "Buffer_t(%d, %d, %p): %x ...", rax, r10, r11, r12

    pop r12 r11 r10 rax

    ret
endp


proc __MOLD_MemoryLogAlloc
  ; rcx = size in bytes

  inc  qword [MemoryAllocCnt]

  if DEBUG
  push    rax rcx rdx r8 r9 r10 r11
  mov     rdx, rcx
  cinvoke printf, .fmt, rdx, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  pop     r11 r10 r9 r8 rdx rcx rax
  end if

  ret

if DEBUG
.fmt db "; malloc, %d bytes (allocated: %d, freed: %d, realloc: %d)", 13, 10, 0
end if
endp

proc __MOLD_MemoryLogFree
  ; rcx = size in bytes

  inc  qword [MemoryFreeCnt]

  if DEBUG
  push    rax rcx rdx r8 r9 r10 r11
  cinvoke printf, .fmt, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  pop     r11 r10 r9 r8 rdx rcx rax
  end if

  ret

if DEBUG
.fmt db "; free (allocated: %d, freed: %d, realloc: %d)", 13, 10, 0
end if
endp

proc __MOLD_MemoryLogRealloc
  ; rcx = size in bytes

  inc  qword [MemoryReallocCnt]

  if DEBUG
  push    rax rcx rdx r8 r9 r10 r11
  cinvoke printf, .fmt, rdx, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  pop     r11 r10 r9 r8 rdx rcx rax
  end if

  ret

if DEBUG
.fmt db "; realloc, %d bytes (allocated: %d, freed: %d, realloc: %d)", 13, 10, 0
end if
endp
