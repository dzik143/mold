  .file  "inrange_asm.c"
  .intel_syntax noprefix
  .text
  .p2align 4,,15
  .globl  inrange_asm
  .def  inrange_asm;  .scl  2;  .type  32;  .endef
  .seh_proc  inrange_asm
inrange_asm:
  .seh_endprologue
  
  sub  edx, ecx 
  sub  r8d, ecx 
  and  r8d, edx 
  jns  .L2
  
  jmp  doWorkA
  .p2align 4,,10
.L2:
  jmp  doWorkB
  .seh_endproc
  .ident  "GCC: (x86_64-win32-seh-rev1, Built by MinGW-W64 project) 7.2.0"
  .def  doWorkA;  .scl  2;  .type  32;  .endef
  .def  doWorkB;  .scl  2;  .type  32;  .endef
