include '_commonBefore.asm'

  VALUE_MIN EQU 10
  VALUE_MAX EQU 80

  mov    ecx, eax
  sub    ecx, VALUE_MIN
  mov    edx, VALUE_MAX - VALUE_MIN + 1

  cmp    ecx, edx
  cmovae ecx, edx

  lea    rcx, [jmptable + rcx*4 + rcx] ; [value*5]
  jmp    rcx

jmptable:
  jmp near l1 ; 10
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l2 ; 20
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l3 ; 30
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l4 ; 40
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l5 ; 50
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l6 ; 60
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l7 ; 70
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l8 ; 80
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0
  jmp near l0

  jmp near l0

include '_commonAfter.asm'
