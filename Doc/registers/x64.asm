r0  (eax)
r1  (ecx)
r2  (edx)
r3  (ebx)
r4  (esp) - stos
r5  (ebp) - ramka
r6  (esi) - io source
r7  (edi) - io destination
r8
r9
r10
r11
r12
r13
r14
r15

r0,r1,r2,r3     : t.ptr0, t.ptr1, t.ptr2, t.ptr3
r4              : rsp
r5              : rbp
r6,r7           : io.src, io.dst
r8,r9,r10,r11   : a.ptr0, a.ptr1, a.ptr2, a.ptr3
r12,r13,r14,r15 : s.ptr0, s.ptr1, s.ptr2, s.ptr3

mm0,mm1,mm2,mm3 : t.int0, t.int1, t.int2, t.int3
mm4,mm5,mm6,mm7 : a.int0, a.int1, a.int2, a.int3

xmm0 ,xmm1 ,xmm2 ,xmm3  :
xmm4 ,xmm5 ,xmm6 ,xmm7  :
xmm8 ,xmm9 ,xmm10,xmm11 :
xmm12,xmm13,xmm14,xmm15 :
