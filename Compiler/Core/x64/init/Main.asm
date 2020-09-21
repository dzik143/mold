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

  lea     rbx, [__MOLD_SysCall.jmpTable]

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
