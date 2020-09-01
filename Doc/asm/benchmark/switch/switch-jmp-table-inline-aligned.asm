include '_commonBefore.asm'

  VALUE_MIN EQU 10
  VALUE_MAX EQU 80

  mov    ecx, eax
  sub    ecx, VALUE_MIN
  mov    edx, VALUE_MAX - VALUE_MIN + 1

  cmp    ecx, edx
  cmovae ecx, edx

  lea    rcx, [jmptable + rcx * 8]
  jmp    rcx

jmptable:
  align 8
  jmp near l1 ; 10
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l2 ; 20
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l3 ; 30
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l4 ; 40
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l5 ; 50
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l6 ; 60
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l7 ; 70
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

  align 8
  jmp near l8 ; 80
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0
  align 8
  jmp near l0

include '_commonAfter.asm'
