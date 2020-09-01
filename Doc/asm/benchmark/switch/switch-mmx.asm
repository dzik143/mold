include '_commonBefore.asm'
                                   ; rax = |?|?|?|?|?|?|?|x|
  push      rax

  mov       rcx, 0101010101010101h ; rcx = |1|1|1|1|1|1|1|1|
  imul      rcx                    ; rax = |x|x|x|x|x|x|x|x| (clone input byte)
  movq      mm0, rax               ; mm0 = |x|x|x|x|x|x|x|x|

  pcmpeqb   mm0, qword [values]    ;
  pop       rax

  pmovmskb  ecx, mm0               ;
  or        ecx, ecx
  jz        l0

  bsf       ecx, ecx
  jmp       qword [labels + rcx * 8]

;  int 3

include '_commonAfter.asm'

  values db 10, 20, 30, 40, 50, 60, 75, 80
  labels dq l1, l2, l3, l4, l5, l6, l7, l8
