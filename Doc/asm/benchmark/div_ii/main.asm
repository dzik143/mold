format PE64 console 5.0
entry __MOLD_Main
include 'win64a.inc'

VALUE_MAX  EQU 0xfffffff
VALUE_STEP EQU 16941

REG_X_ITER EQU r10d
REG_Y_ITER EQU r11d

REG_X      EQU r12d
REG_Y      EQU r13d

macro GET_CLOCK
{
    rdtsc
    shl       rdx, 32
    add       rdx, rax
    mov       rax, rdx
}

macro BENCHMARK_BEGIN testName
{
    cinvoke      printf, '%40s : ', testName

    GET_CLOCK
    mov          r15, rax

    mov          REG_X_ITER, VALUE_MAX
.xLoop:
    mov          REG_Y_ITER, VALUE_MAX
.yLoop:

    mov          REG_X, REG_X_ITER
    mov          REG_Y, REG_Y_ITER
}

macro BENCHMARK_END
{
    sub          REG_Y_ITER, VALUE_STEP
    jns          .yLoop

    sub          REG_X_ITER, VALUE_STEP
    jns          .xLoop

    GET_CLOCK
    sub          rax, r15

    cinvoke      printf, '%llld', rax
    cinvoke      putchar, 10
}

; ------------------------------------------------------------------------------
;                                 Code section
; ------------------------------------------------------------------------------
section '.text' code readable executable
stack 1024*64

  include '../../../../Core/Variant.asm'

start:
    push      rbp
    mov       rbp, rsp
    sub       rsp, 32

    ;jmp native_sse32

    ; --------------------------------------------------------------------------
    ;                                Native div 32
    ; --------------------------------------------------------------------------

native:

    BENCHMARK_BEGIN 'native (div r32)'

    xor       edx, edx
    mov       eax, REG_X ; edx:eax = x
    div       REG_Y      ; eax     = x//y

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                           Native + zero detection
    ; --------------------------------------------------------------------------

native_with_zero_detect:

    BENCHMARK_BEGIN 'native + zero detect'

    xor       eax, eax
    cmp       REG_X, REG_Y
    jb        .zero

    xor       edx, edx

    mov       eax, REG_X ; edx:eax = x
    div       REG_Y      ; eax     = x//y

.zero:

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                               SSE float32
    ; --------------------------------------------------------------------------

native_sse32_trunc:

    BENCHMARK_BEGIN 'SSE float32 + truncation'

    cvtsi2ss  xmm0, REG_X  ; xmm0 = float32(x)
    cvtsi2ss  xmm1, REG_Y  ; xmm1 = float32(y)
    divss     xmm0, xmm1   ; xmm0 = x / y
    cvttss2si rax, xmm0    ; rax  = int(x. / y)

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                      SSE float32 without truncation
    ; --------------------------------------------------------------------------

native_sse32:

    BENCHMARK_BEGIN 'SSE float32'

    cvtsi2ss  xmm0, REG_X  ; xmm0 = float32(x)
    cvtsi2ss  xmm1, REG_Y  ; xmm1 = float32(y)
    divss     xmm0, xmm1   ; xmm0 = x / y

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                       SSE float32 + zero detect
    ; --------------------------------------------------------------------------

native_sse32_with_zero_detect:

    BENCHMARK_BEGIN 'SSE float32 + truncation + zero detect'

    xor       eax, eax
    cmp       REG_X, REG_Y
    jb        .zero

    cvtsi2ss  xmm0, REG_X  ; xmm0 = float32(x)
    cvtsi2ss  xmm1, REG_Y  ; xmm1 = float32(y)
    divss     xmm0, xmm1   ; xmm0 = x / y
    cvttss2si rax, xmm0    ; rax  = int(x / y)

.zero:

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                               AVX float32
    ; --------------------------------------------------------------------------

native_avx32:

    BENCHMARK_BEGIN 'AVX float32 + truncation'

    cvtsi2ss  xmm1, REG_X       ; xmm1 = float32(x)
    cvtsi2ss  xmm2, REG_Y       ; xmm2 = float32(y)
    vdivss    xmm0, xmm1, xmm2  ; xmm0 = xmm1 / xmm2 = x / y
    cvttss2si rax, xmm0         ; rax  = int(x / y)

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                       AVX float32 + zero detect
    ; --------------------------------------------------------------------------

native_avx32_with_zero_detect:

    BENCHMARK_BEGIN 'AVX float32 + truncation + zero detect'

    xor       eax, eax
    cmp       REG_X, REG_Y
    jb        .zero

    cvtsi2ss  xmm1, REG_X       ; xmm1 = float32(x)
    cvtsi2ss  xmm2, REG_Y       ; xmm2 = float32(y)
    vdivss    xmm0, xmm1, xmm2  ; xmm0 = xmm1 / xmm2 = x / y
    cvttss2si rax, xmm0         ; rax  = int(x / y)

.zero:

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                               SSE float64
    ; --------------------------------------------------------------------------

native_sse64:

    BENCHMARK_BEGIN 'SSE float64 + truncation'

    cvtsi2sd  xmm0, REG_X  ; xmm0 = float64(x)
    cvtsi2sd  xmm1, REG_Y  ; xmm1 = float64(y)
    divsd     xmm0, xmm1   ; xmm0 = x / y
    cvttsd2si rax, xmm0    ; rax  = int(x / y)

    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                             Naive while loop
    ; --------------------------------------------------------------------------

;naive_while_loop:
;
;    BENCHMARK_BEGIN 'naive while loop'
;
;    xor      eax, eax
;    xor      edx, edx
;    dec      rax
;
;.goOn:
;    add      edx, REG_Y
;    add      eax, 1
;
;    cmp      edx, REG_X
;    jbe      .goOn
;
;    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                       Naive while loop + zero detection
    ; --------------------------------------------------------------------------

;naive_while_loop_with_zero_detect:
;
;    BENCHMARK_BEGIN 'naive while loop + zero detect'
;
;    xor      eax, eax
;
;    cmp      REG_X, REG_Y
;    jb       .zero
;
;    xor      edx, edx
;    dec      rax
;
;.goOn:
;    add      edx, REG_Y
;    add      eax, 1
;
;    cmp      edx, REG_X
;    jbe      .goOn
;
;.zero:
;
;    BENCHMARK_END

    ; --------------------------------------------------------------------------
    ;                       Naive while loop + log2 limit
    ; --------------------------------------------------------------------------

naive_while_loop_with_log2:

    BENCHMARK_BEGIN 'log2 lower limit'

    ; x   2^n + ...
    ; - = ---------------- = c
    ; y         2^m + ...
    ;
    ; The result is at least:
    ; c >= 2^(n - m - 1)

    ; ----------------------------------
    ; Search for minimal possible result
    ; ----------------------------------

    mov      REG_X, 10
    mov      REG_Y, 3

    bsr      ecx, REG_X   ; ecx = log2(x) = n
    bsr      edx, REG_Y   ; edx = log2(y) = m
    mov      eax, 1       ; eax = 1
    sub      ecx, edx     ; ecx = n - m
    sub      ecx, eax     ; ecx = n - m - 1
    shl      eax, cl      ; eax = 2 ^ (n - m - 1) = minimal possible result

    BENCHMARK_END

exit:

    add       rsp, 32
    pop       rbp
    ret

endOfCodeSection:

; ------------------------------------------------------------------------------
;                               Imports section
; ------------------------------------------------------------------------------
section '.idata' import data readable writeable
  include '../../../../Core/CommonImports.asm'

; ------------------------------------------------------------------------------
;                                Debug section
; ------------------------------------------------------------------------------
section '.debug' data readable
SymbolTable:
dq 0, 0
include '../../../../Core/SymbolTableCommon.asm'
dq endOfCodeSection, name_endOfCodeSection
SymbolTableEnd:
dq 0, 0

SymbolTableNames:
include '../../../../Core/SymbolTableCommonNames.asm'
name_foo db 'foo', 0
name_start db 'start', 0
name_endOfCodeSection db 'out of code section', 0

; ------------------------------------------------------------------------------
;                                 Data section
; ------------------------------------------------------------------------------
section '.data' data readable writeable
include '../../../../Core/CommonData.asm'
