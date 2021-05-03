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

  push    rbp
  mov     rbp, rsp
  sub     rsp, 72

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
  call    [malloc]                          ; rax = pointer to new Buffer_t
  mov     [.bufferHolder], rax              ; save pointer to buffer holder
  test    rax, rax
  jz      __MOLD_PrintErrorAndDie.outOfMemory

  ; ----------------------------------------------------------------------------
  ; Allocate new memory block
  ; ----------------------------------------------------------------------------

  mov     rcx, [.alignedCapacity]           ; rcx = aligned capacity
  mov     rdx, 1                            ; rdx = 1
  call    [calloc]                          ; rax = new memory block
  test    rax, rax
  jz      __MOLD_PrintErrorAndDie.outOfMemory

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
    DEBUG_PRINT4 'allocated buffer ptr %p, %d bytes, bytesPtr %p', rcx, rdx, rax
  end if

  ; ----------------------------------------------------------------------------
  ; END OF DEBUG
  ; ----------------------------------------------------------------------------

  mov     rax, [.bufferHolder]

  leave
  ret

  restore .alignedCapacity
  restore .bufferHolder


__MOLD_MemoryAddRef:
  ; rcx = buf

  mov     rax, [rcx + Buffer_t.refCnt]
  test    rax, rax
  jl      .staticBuffer

  if DEBUG
    DEBUG_PRINT4 "Increasing refCnt from %d, ptr %p, bytesPtr %p", rax, rcx, [rcx + Buffer_t.bytesPtr]
  end if

  ; -----
  ; DEBUG
  ; -----
  if ASSERT_ENABLED
    mov     rax, [rcx + Buffer_t.refCnt]
    cmp     rax, MAX_REF_CNT
    jna    .refCntOk

    DEBUG_PRINT3 "PANIC! Unexpected refCnt [%d] while increasing ptr %p", rax, rcx
    int 3

    .refCntOk:
  end if

  inc     [rcx + Buffer_t.refCnt]

.staticBuffer:
  ret

__MOLD_MemoryRelease:
  ; rcx = buf

  ; -----
  ; DEBUG
  ; -----

  if ASSERT_ENABLED
    test    rcx, rcx
    jnz     .ptrOk
    DEBUG_MSG 'PANIC! Attemp to free NULL pointer'
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
    or  rax, rax
    jz  .refCntZero

    cmp rax, MAX_REF_CNT
    jna .refCntOk

    .refCntZero:
    DEBUG_PRINT3 "PANIC! Unexpected refCnt [%d] while release ptr %p", rax, rcx
    int 3

    .refCntOk:
  end if

  if DEBUG
    DEBUG_PRINT4 "Decreasing refCnt from %d, ptr %p, bytesPtr %p", rax, rcx, [rcx + Buffer_t.bytesPtr]
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
    DEBUG_PRINT3 "Freeing ptr %p, bytesPtr %p", rcx, [rcx + Buffer_t.bytesPtr]
  end if

  ; ------------
  ; END OF DEBUG
  ; ------------

  call    __MOLD_MemoryLogFree
  push    rcx
  mov     rcx, [rcx + Buffer_t.bytesPtr]

  sub     rsp, 32
  call    [free]
  add     rsp, 32

  pop     rcx

  ; TODO: REVIEW IT!
  sub     rsp, 32
  call    [free]
  add     rsp, 32

.staticBuffer:
.bufferInUse:
  ret

  if DEBUG
    .fmt     db "Decreasing refCnt from %d, ptr %p, bytesPtr %p", 13, 10, 0
    .fmtFree db "Freeing ptr %p", 13, 10, 0
  end if

;###############################################################################
;
; Increase buffer capacity twice.
;
; RCX - pointer to Buffer_t struct allocated by __MOLD_MemoryAlloc before (IN).
;
; RETURNS: Pointer to new Buffer_t struct.
;
;###############################################################################

__MOLD_MemoryIncreaseBufferTwice:

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
    DEBUG_PRINT3 "going to resize ptr %p, bytesPtr %p", rcx, [rcx + Buffer_t.bytesPtr]
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
  DEBUG_MSG 'TODO: Realloc of static buffer'
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
    DEBUG_PRINT4 'resizing buffer ptr %p from %d to %d bytes', rcx, r11, rdx
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
  jz      __MOLD_PrintErrorAndDie.outOfMemory

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
    DEBUG_PRINT3 "going to resize ptr %p, bytesPtr %p", rcx, [rcx + Buffer_t.bytesPtr]
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
    DEBUG_PRINT4 'resizing buffer ptr %p from %d to %d bytes', r12, r11, rdx
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

  sub     rsp, 32
  call    [realloc]                      ; rax = new memory block
  add     rsp, 32

  test    rax, rax
  jz      __MOLD_PrintErrorAndDie.outOfMemory

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


__MOLD_MemoryLogAlloc:
  inc  qword [MemoryAllocCnt]
  if DEBUG
    DEBUG_PRINT5 "; malloc, %d bytes (allocated: %d, freed: %d, realloc: %d)", rdx, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  end if
  ret

__MOLD_MemoryLogFree:
  inc  qword [MemoryFreeCnt]
  if DEBUG
    DEBUG_PRINT4 "; free (allocated: %d, freed: %d, realloc: %d)", [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  end if
  ret

__MOLD_MemoryLogRealloc:
  inc  qword [MemoryReallocCnt]
  if DEBUG
    DEBUG_PRINT5 "; realloc, %d bytes (allocated: %d, freed: %d, realloc: %d)", rdx, [MemoryAllocCnt], [MemoryFreeCnt], [MemoryReallocCnt]
  end if
  ret
