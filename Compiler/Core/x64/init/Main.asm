;###############################################################################
;
; Entry point
;
;###############################################################################

proc __MOLD_Main

  ; OLD IMPLEMENTATION
  mov     ecx, 1 ; first?
  mov     rdx, __MOLD_DefaultExceptionHandler
  cinvoke AddVectoredExceptionHandler

  ; ----------------------------------------------------------------------------
  ; Install generic handler for exceptions not listed in .pdata section.
  ; ----------------------------------------------------------------------------

  ;mov     rcx, __MOLD_DefaultExceptionHandler
  ;cinvoke SetUnhandledExceptionFilter

  ; ----------------------------------------------------------------------------
  ; Init argv[] and argc variables.
  ; ----------------------------------------------------------------------------

  call    __MOLD_InitArgv

  ; ----------------------------------------------------------------------------
  ; Init floating point flags.
  ; ----------------------------------------------------------------------------

  ldmxcsr dword [__MOLD_mxcsr]

  ; ----------------------------------------------------------------------------
  ; Map syscall routines to rbx register.
  ; ----------------------------------------------------------------------------

  lea     rbx, [__MOLD_SysCall.jmpTable]

  ; ----------------------------------------------------------------------------
  ; Pass control to the user-defined entry point.
  ; ----------------------------------------------------------------------------

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
