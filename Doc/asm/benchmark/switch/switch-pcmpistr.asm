include '_commonBefore.asm'

  movq      xmm0, rax
  pcmpistri xmm0, dqword [values], 0
  jmp       qword [labels + rcx * 8]

include '_commonAfter.asm'

  values db 10, 20, 30, 40, 50, 60, 75, 80, 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0
  labels dq l1, l2, l3, l4, l5, l6, l7, l8, l0, l0, l0, l0, l0, l0, l0, l0
         dq l0
