use64
; ------------------------------------------------------------------------------
; opcode r32,xmm
; ------------------------------------------------------------------------------
cvttss2si eax, xmm0
cvttss2si eax, xmm1
cvttss2si eax, xmm2
cvttss2si eax, xmm3
cvttss2si eax, xmm4
cvttss2si eax, xmm5
cvttss2si eax, xmm6
cvttss2si eax, xmm7
cvttss2si ecx, xmm0
cvttss2si ecx, xmm1
cvttss2si ecx, xmm2
cvttss2si ecx, xmm3
cvttss2si ecx, xmm4
cvttss2si ecx, xmm5
cvttss2si ecx, xmm6
cvttss2si ecx, xmm7
cvttss2si edx, xmm0
cvttss2si edx, xmm1
cvttss2si edx, xmm2
cvttss2si edx, xmm3
cvttss2si edx, xmm4
cvttss2si edx, xmm5
cvttss2si edx, xmm6
cvttss2si edx, xmm7
cvttss2si ebx, xmm0
cvttss2si ebx, xmm1
cvttss2si ebx, xmm2
cvttss2si ebx, xmm3
cvttss2si ebx, xmm4
cvttss2si ebx, xmm5
cvttss2si ebx, xmm6
cvttss2si ebx, xmm7
cvttss2si esp, xmm0
cvttss2si esp, xmm1
cvttss2si esp, xmm2
cvttss2si esp, xmm3
cvttss2si esp, xmm4
cvttss2si esp, xmm5
cvttss2si esp, xmm6
cvttss2si esp, xmm7
cvttss2si ebp, xmm0
cvttss2si ebp, xmm1
cvttss2si ebp, xmm2
cvttss2si ebp, xmm3
cvttss2si ebp, xmm4
cvttss2si ebp, xmm5
cvttss2si ebp, xmm6
cvttss2si ebp, xmm7
cvttss2si esi, xmm0
cvttss2si esi, xmm1
cvttss2si esi, xmm2
cvttss2si esi, xmm3
cvttss2si esi, xmm4
cvttss2si esi, xmm5
cvttss2si esi, xmm6
cvttss2si esi, xmm7
cvttss2si edi, xmm0
cvttss2si edi, xmm1
cvttss2si edi, xmm2
cvttss2si edi, xmm3
cvttss2si edi, xmm4
cvttss2si edi, xmm5
cvttss2si edi, xmm6
cvttss2si edi, xmm7

; ------------------------------------------------------------------------------
; opcode r32,m32
; ------------------------------------------------------------------------------
cvttss2si eax, dword [rip + 0x13]
cvttss2si eax, dword [rip + 0x1235]
cvttss2si eax, dword [rip + 0x12345679]
cvttss2si eax, dword [rbx]
cvttss2si eax, dword [rcx + 0x14]
cvttss2si eax, dword [rdx + 0x15]
cvttss2si eax, dword [rbx + 0x1235]
cvttss2si eax, dword [rbx + 0x12345679]
cvttss2si eax, dword [rbx + rcx]
cvttss2si eax, dword [rbx + 4 * rcx]
cvttss2si eax, dword [rbx + rcx + 0x13]
cvttss2si eax, dword [rbx + rcx + 0x1235]
cvttss2si eax, dword [rbx + rcx + 0x12345679]
cvttss2si eax, dword [rbx + 4 * rcx + 0x13]
cvttss2si eax, dword [rbx + 4 * rcx + 0x1235]
cvttss2si eax, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si eax, dword [4 * rcx]
cvttss2si eax, dword [4 * rcx + 0x13]
cvttss2si eax, dword [4 * rcx + 0x1235]
cvttss2si eax, dword [4 * rcx + 0x12345679]
cvttss2si eax, dword [rbp]
cvttss2si eax, dword [rbp + 0x12]
cvttss2si eax, dword [rbp + 0x1234]
cvttss2si eax, dword [rbp + 0x12345678]
cvttss2si eax, dword [4 * rbp]
cvttss2si eax, dword [4 * rbp + 0x12]
cvttss2si eax, dword [4 * rbp + 0x1234]
cvttss2si eax, dword [4 * rbp + 0x12345678]
cvttss2si eax, dword [rbx + 4 * rbp]
cvttss2si eax, dword [rbx + 4 * rbp + 0x12]
cvttss2si eax, dword [rbx + 4 * rbp + 0x1234]
cvttss2si eax, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si eax, dword [rsp]
cvttss2si eax, dword [rsp + 0x12]
cvttss2si eax, dword [rsp + 0x1234]
cvttss2si eax, dword [rsp + 0x12345678]
cvttss2si eax, dword [rsp + rax]
cvttss2si eax, dword [rsp + rbp]
cvttss2si eax, dword [rsp + 2*rbp]
cvttss2si eax, dword [rsp + 4*rbp]
cvttss2si eax, dword [rsp + 8*rbp]
cvttss2si eax, dword [rax]
cvttss2si eax, dword [rcx]
cvttss2si eax, dword [rdx]
cvttss2si eax, dword [rbx]
cvttss2si eax, dword [rsp]
cvttss2si eax, dword [rbp]
cvttss2si eax, dword [rsi]
cvttss2si eax, dword [rdi]
cvttss2si eax, dword [rax + 2*rax]
cvttss2si eax, dword [rcx + 2*rcx]
cvttss2si eax, dword [rdx + 2*rdx]
cvttss2si eax, dword [rbx + 2*rbx]
cvttss2si eax, dword [rbp + 2*rbp]
cvttss2si eax, dword [rsi + 2*rsi]
cvttss2si eax, dword [rdi + 2*rdi]
cvttss2si ecx, dword [rip + 0x13]
cvttss2si ecx, dword [rip + 0x1235]
cvttss2si ecx, dword [rip + 0x12345679]
cvttss2si ecx, dword [rbx]
cvttss2si ecx, dword [rcx + 0x14]
cvttss2si ecx, dword [rdx + 0x15]
cvttss2si ecx, dword [rbx + 0x1235]
cvttss2si ecx, dword [rbx + 0x12345679]
cvttss2si ecx, dword [rbx + rcx]
cvttss2si ecx, dword [rbx + 4 * rcx]
cvttss2si ecx, dword [rbx + rcx + 0x13]
cvttss2si ecx, dword [rbx + rcx + 0x1235]
cvttss2si ecx, dword [rbx + rcx + 0x12345679]
cvttss2si ecx, dword [rbx + 4 * rcx + 0x13]
cvttss2si ecx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si ecx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si ecx, dword [4 * rcx]
cvttss2si ecx, dword [4 * rcx + 0x13]
cvttss2si ecx, dword [4 * rcx + 0x1235]
cvttss2si ecx, dword [4 * rcx + 0x12345679]
cvttss2si ecx, dword [rbp]
cvttss2si ecx, dword [rbp + 0x12]
cvttss2si ecx, dword [rbp + 0x1234]
cvttss2si ecx, dword [rbp + 0x12345678]
cvttss2si ecx, dword [4 * rbp]
cvttss2si ecx, dword [4 * rbp + 0x12]
cvttss2si ecx, dword [4 * rbp + 0x1234]
cvttss2si ecx, dword [4 * rbp + 0x12345678]
cvttss2si ecx, dword [rbx + 4 * rbp]
cvttss2si ecx, dword [rbx + 4 * rbp + 0x12]
cvttss2si ecx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si ecx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si ecx, dword [rsp]
cvttss2si ecx, dword [rsp + 0x12]
cvttss2si ecx, dword [rsp + 0x1234]
cvttss2si ecx, dword [rsp + 0x12345678]
cvttss2si ecx, dword [rsp + rax]
cvttss2si ecx, dword [rsp + rbp]
cvttss2si ecx, dword [rsp + 2*rbp]
cvttss2si ecx, dword [rsp + 4*rbp]
cvttss2si ecx, dword [rsp + 8*rbp]
cvttss2si ecx, dword [rax]
cvttss2si ecx, dword [rcx]
cvttss2si ecx, dword [rdx]
cvttss2si ecx, dword [rbx]
cvttss2si ecx, dword [rsp]
cvttss2si ecx, dword [rbp]
cvttss2si ecx, dword [rsi]
cvttss2si ecx, dword [rdi]
cvttss2si ecx, dword [rax + 2*rax]
cvttss2si ecx, dword [rcx + 2*rcx]
cvttss2si ecx, dword [rdx + 2*rdx]
cvttss2si ecx, dword [rbx + 2*rbx]
cvttss2si ecx, dword [rbp + 2*rbp]
cvttss2si ecx, dword [rsi + 2*rsi]
cvttss2si ecx, dword [rdi + 2*rdi]
cvttss2si edx, dword [rip + 0x13]
cvttss2si edx, dword [rip + 0x1235]
cvttss2si edx, dword [rip + 0x12345679]
cvttss2si edx, dword [rbx]
cvttss2si edx, dword [rcx + 0x14]
cvttss2si edx, dword [rdx + 0x15]
cvttss2si edx, dword [rbx + 0x1235]
cvttss2si edx, dword [rbx + 0x12345679]
cvttss2si edx, dword [rbx + rcx]
cvttss2si edx, dword [rbx + 4 * rcx]
cvttss2si edx, dword [rbx + rcx + 0x13]
cvttss2si edx, dword [rbx + rcx + 0x1235]
cvttss2si edx, dword [rbx + rcx + 0x12345679]
cvttss2si edx, dword [rbx + 4 * rcx + 0x13]
cvttss2si edx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si edx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si edx, dword [4 * rcx]
cvttss2si edx, dword [4 * rcx + 0x13]
cvttss2si edx, dword [4 * rcx + 0x1235]
cvttss2si edx, dword [4 * rcx + 0x12345679]
cvttss2si edx, dword [rbp]
cvttss2si edx, dword [rbp + 0x12]
cvttss2si edx, dword [rbp + 0x1234]
cvttss2si edx, dword [rbp + 0x12345678]
cvttss2si edx, dword [4 * rbp]
cvttss2si edx, dword [4 * rbp + 0x12]
cvttss2si edx, dword [4 * rbp + 0x1234]
cvttss2si edx, dword [4 * rbp + 0x12345678]
cvttss2si edx, dword [rbx + 4 * rbp]
cvttss2si edx, dword [rbx + 4 * rbp + 0x12]
cvttss2si edx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si edx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si edx, dword [rsp]
cvttss2si edx, dword [rsp + 0x12]
cvttss2si edx, dword [rsp + 0x1234]
cvttss2si edx, dword [rsp + 0x12345678]
cvttss2si edx, dword [rsp + rax]
cvttss2si edx, dword [rsp + rbp]
cvttss2si edx, dword [rsp + 2*rbp]
cvttss2si edx, dword [rsp + 4*rbp]
cvttss2si edx, dword [rsp + 8*rbp]
cvttss2si edx, dword [rax]
cvttss2si edx, dword [rcx]
cvttss2si edx, dword [rdx]
cvttss2si edx, dword [rbx]
cvttss2si edx, dword [rsp]
cvttss2si edx, dword [rbp]
cvttss2si edx, dword [rsi]
cvttss2si edx, dword [rdi]
cvttss2si edx, dword [rax + 2*rax]
cvttss2si edx, dword [rcx + 2*rcx]
cvttss2si edx, dword [rdx + 2*rdx]
cvttss2si edx, dword [rbx + 2*rbx]
cvttss2si edx, dword [rbp + 2*rbp]
cvttss2si edx, dword [rsi + 2*rsi]
cvttss2si edx, dword [rdi + 2*rdi]
cvttss2si ebx, dword [rip + 0x13]
cvttss2si ebx, dword [rip + 0x1235]
cvttss2si ebx, dword [rip + 0x12345679]
cvttss2si ebx, dword [rbx]
cvttss2si ebx, dword [rcx + 0x14]
cvttss2si ebx, dword [rdx + 0x15]
cvttss2si ebx, dword [rbx + 0x1235]
cvttss2si ebx, dword [rbx + 0x12345679]
cvttss2si ebx, dword [rbx + rcx]
cvttss2si ebx, dword [rbx + 4 * rcx]
cvttss2si ebx, dword [rbx + rcx + 0x13]
cvttss2si ebx, dword [rbx + rcx + 0x1235]
cvttss2si ebx, dword [rbx + rcx + 0x12345679]
cvttss2si ebx, dword [rbx + 4 * rcx + 0x13]
cvttss2si ebx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si ebx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si ebx, dword [4 * rcx]
cvttss2si ebx, dword [4 * rcx + 0x13]
cvttss2si ebx, dword [4 * rcx + 0x1235]
cvttss2si ebx, dword [4 * rcx + 0x12345679]
cvttss2si ebx, dword [rbp]
cvttss2si ebx, dword [rbp + 0x12]
cvttss2si ebx, dword [rbp + 0x1234]
cvttss2si ebx, dword [rbp + 0x12345678]
cvttss2si ebx, dword [4 * rbp]
cvttss2si ebx, dword [4 * rbp + 0x12]
cvttss2si ebx, dword [4 * rbp + 0x1234]
cvttss2si ebx, dword [4 * rbp + 0x12345678]
cvttss2si ebx, dword [rbx + 4 * rbp]
cvttss2si ebx, dword [rbx + 4 * rbp + 0x12]
cvttss2si ebx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si ebx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si ebx, dword [rsp]
cvttss2si ebx, dword [rsp + 0x12]
cvttss2si ebx, dword [rsp + 0x1234]
cvttss2si ebx, dword [rsp + 0x12345678]
cvttss2si ebx, dword [rsp + rax]
cvttss2si ebx, dword [rsp + rbp]
cvttss2si ebx, dword [rsp + 2*rbp]
cvttss2si ebx, dword [rsp + 4*rbp]
cvttss2si ebx, dword [rsp + 8*rbp]
cvttss2si ebx, dword [rax]
cvttss2si ebx, dword [rcx]
cvttss2si ebx, dword [rdx]
cvttss2si ebx, dword [rbx]
cvttss2si ebx, dword [rsp]
cvttss2si ebx, dword [rbp]
cvttss2si ebx, dword [rsi]
cvttss2si ebx, dword [rdi]
cvttss2si ebx, dword [rax + 2*rax]
cvttss2si ebx, dword [rcx + 2*rcx]
cvttss2si ebx, dword [rdx + 2*rdx]
cvttss2si ebx, dword [rbx + 2*rbx]
cvttss2si ebx, dword [rbp + 2*rbp]
cvttss2si ebx, dword [rsi + 2*rsi]
cvttss2si ebx, dword [rdi + 2*rdi]
cvttss2si esp, dword [rip + 0x13]
cvttss2si esp, dword [rip + 0x1235]
cvttss2si esp, dword [rip + 0x12345679]
cvttss2si esp, dword [rbx]
cvttss2si esp, dword [rcx + 0x14]
cvttss2si esp, dword [rdx + 0x15]
cvttss2si esp, dword [rbx + 0x1235]
cvttss2si esp, dword [rbx + 0x12345679]
cvttss2si esp, dword [rbx + rcx]
cvttss2si esp, dword [rbx + 4 * rcx]
cvttss2si esp, dword [rbx + rcx + 0x13]
cvttss2si esp, dword [rbx + rcx + 0x1235]
cvttss2si esp, dword [rbx + rcx + 0x12345679]
cvttss2si esp, dword [rbx + 4 * rcx + 0x13]
cvttss2si esp, dword [rbx + 4 * rcx + 0x1235]
cvttss2si esp, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si esp, dword [4 * rcx]
cvttss2si esp, dword [4 * rcx + 0x13]
cvttss2si esp, dword [4 * rcx + 0x1235]
cvttss2si esp, dword [4 * rcx + 0x12345679]
cvttss2si esp, dword [rbp]
cvttss2si esp, dword [rbp + 0x12]
cvttss2si esp, dword [rbp + 0x1234]
cvttss2si esp, dword [rbp + 0x12345678]
cvttss2si esp, dword [4 * rbp]
cvttss2si esp, dword [4 * rbp + 0x12]
cvttss2si esp, dword [4 * rbp + 0x1234]
cvttss2si esp, dword [4 * rbp + 0x12345678]
cvttss2si esp, dword [rbx + 4 * rbp]
cvttss2si esp, dword [rbx + 4 * rbp + 0x12]
cvttss2si esp, dword [rbx + 4 * rbp + 0x1234]
cvttss2si esp, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si esp, dword [rsp]
cvttss2si esp, dword [rsp + 0x12]
cvttss2si esp, dword [rsp + 0x1234]
cvttss2si esp, dword [rsp + 0x12345678]
cvttss2si esp, dword [rsp + rax]
cvttss2si esp, dword [rsp + rbp]
cvttss2si esp, dword [rsp + 2*rbp]
cvttss2si esp, dword [rsp + 4*rbp]
cvttss2si esp, dword [rsp + 8*rbp]
cvttss2si esp, dword [rax]
cvttss2si esp, dword [rcx]
cvttss2si esp, dword [rdx]
cvttss2si esp, dword [rbx]
cvttss2si esp, dword [rsp]
cvttss2si esp, dword [rbp]
cvttss2si esp, dword [rsi]
cvttss2si esp, dword [rdi]
cvttss2si esp, dword [rax + 2*rax]
cvttss2si esp, dword [rcx + 2*rcx]
cvttss2si esp, dword [rdx + 2*rdx]
cvttss2si esp, dword [rbx + 2*rbx]
cvttss2si esp, dword [rbp + 2*rbp]
cvttss2si esp, dword [rsi + 2*rsi]
cvttss2si esp, dword [rdi + 2*rdi]
cvttss2si ebp, dword [rip + 0x13]
cvttss2si ebp, dword [rip + 0x1235]
cvttss2si ebp, dword [rip + 0x12345679]
cvttss2si ebp, dword [rbx]
cvttss2si ebp, dword [rcx + 0x14]
cvttss2si ebp, dword [rdx + 0x15]
cvttss2si ebp, dword [rbx + 0x1235]
cvttss2si ebp, dword [rbx + 0x12345679]
cvttss2si ebp, dword [rbx + rcx]
cvttss2si ebp, dword [rbx + 4 * rcx]
cvttss2si ebp, dword [rbx + rcx + 0x13]
cvttss2si ebp, dword [rbx + rcx + 0x1235]
cvttss2si ebp, dword [rbx + rcx + 0x12345679]
cvttss2si ebp, dword [rbx + 4 * rcx + 0x13]
cvttss2si ebp, dword [rbx + 4 * rcx + 0x1235]
cvttss2si ebp, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si ebp, dword [4 * rcx]
cvttss2si ebp, dword [4 * rcx + 0x13]
cvttss2si ebp, dword [4 * rcx + 0x1235]
cvttss2si ebp, dword [4 * rcx + 0x12345679]
cvttss2si ebp, dword [rbp]
cvttss2si ebp, dword [rbp + 0x12]
cvttss2si ebp, dword [rbp + 0x1234]
cvttss2si ebp, dword [rbp + 0x12345678]
cvttss2si ebp, dword [4 * rbp]
cvttss2si ebp, dword [4 * rbp + 0x12]
cvttss2si ebp, dword [4 * rbp + 0x1234]
cvttss2si ebp, dword [4 * rbp + 0x12345678]
cvttss2si ebp, dword [rbx + 4 * rbp]
cvttss2si ebp, dword [rbx + 4 * rbp + 0x12]
cvttss2si ebp, dword [rbx + 4 * rbp + 0x1234]
cvttss2si ebp, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si ebp, dword [rsp]
cvttss2si ebp, dword [rsp + 0x12]
cvttss2si ebp, dword [rsp + 0x1234]
cvttss2si ebp, dword [rsp + 0x12345678]
cvttss2si ebp, dword [rsp + rax]
cvttss2si ebp, dword [rsp + rbp]
cvttss2si ebp, dword [rsp + 2*rbp]
cvttss2si ebp, dword [rsp + 4*rbp]
cvttss2si ebp, dword [rsp + 8*rbp]
cvttss2si ebp, dword [rax]
cvttss2si ebp, dword [rcx]
cvttss2si ebp, dword [rdx]
cvttss2si ebp, dword [rbx]
cvttss2si ebp, dword [rsp]
cvttss2si ebp, dword [rbp]
cvttss2si ebp, dword [rsi]
cvttss2si ebp, dword [rdi]
cvttss2si ebp, dword [rax + 2*rax]
cvttss2si ebp, dword [rcx + 2*rcx]
cvttss2si ebp, dword [rdx + 2*rdx]
cvttss2si ebp, dword [rbx + 2*rbx]
cvttss2si ebp, dword [rbp + 2*rbp]
cvttss2si ebp, dword [rsi + 2*rsi]
cvttss2si ebp, dword [rdi + 2*rdi]
cvttss2si esi, dword [rip + 0x13]
cvttss2si esi, dword [rip + 0x1235]
cvttss2si esi, dword [rip + 0x12345679]
cvttss2si esi, dword [rbx]
cvttss2si esi, dword [rcx + 0x14]
cvttss2si esi, dword [rdx + 0x15]
cvttss2si esi, dword [rbx + 0x1235]
cvttss2si esi, dword [rbx + 0x12345679]
cvttss2si esi, dword [rbx + rcx]
cvttss2si esi, dword [rbx + 4 * rcx]
cvttss2si esi, dword [rbx + rcx + 0x13]
cvttss2si esi, dword [rbx + rcx + 0x1235]
cvttss2si esi, dword [rbx + rcx + 0x12345679]
cvttss2si esi, dword [rbx + 4 * rcx + 0x13]
cvttss2si esi, dword [rbx + 4 * rcx + 0x1235]
cvttss2si esi, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si esi, dword [4 * rcx]
cvttss2si esi, dword [4 * rcx + 0x13]
cvttss2si esi, dword [4 * rcx + 0x1235]
cvttss2si esi, dword [4 * rcx + 0x12345679]
cvttss2si esi, dword [rbp]
cvttss2si esi, dword [rbp + 0x12]
cvttss2si esi, dword [rbp + 0x1234]
cvttss2si esi, dword [rbp + 0x12345678]
cvttss2si esi, dword [4 * rbp]
cvttss2si esi, dword [4 * rbp + 0x12]
cvttss2si esi, dword [4 * rbp + 0x1234]
cvttss2si esi, dword [4 * rbp + 0x12345678]
cvttss2si esi, dword [rbx + 4 * rbp]
cvttss2si esi, dword [rbx + 4 * rbp + 0x12]
cvttss2si esi, dword [rbx + 4 * rbp + 0x1234]
cvttss2si esi, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si esi, dword [rsp]
cvttss2si esi, dword [rsp + 0x12]
cvttss2si esi, dword [rsp + 0x1234]
cvttss2si esi, dword [rsp + 0x12345678]
cvttss2si esi, dword [rsp + rax]
cvttss2si esi, dword [rsp + rbp]
cvttss2si esi, dword [rsp + 2*rbp]
cvttss2si esi, dword [rsp + 4*rbp]
cvttss2si esi, dword [rsp + 8*rbp]
cvttss2si esi, dword [rax]
cvttss2si esi, dword [rcx]
cvttss2si esi, dword [rdx]
cvttss2si esi, dword [rbx]
cvttss2si esi, dword [rsp]
cvttss2si esi, dword [rbp]
cvttss2si esi, dword [rsi]
cvttss2si esi, dword [rdi]
cvttss2si esi, dword [rax + 2*rax]
cvttss2si esi, dword [rcx + 2*rcx]
cvttss2si esi, dword [rdx + 2*rdx]
cvttss2si esi, dword [rbx + 2*rbx]
cvttss2si esi, dword [rbp + 2*rbp]
cvttss2si esi, dword [rsi + 2*rsi]
cvttss2si esi, dword [rdi + 2*rdi]
cvttss2si edi, dword [rip + 0x13]
cvttss2si edi, dword [rip + 0x1235]
cvttss2si edi, dword [rip + 0x12345679]
cvttss2si edi, dword [rbx]
cvttss2si edi, dword [rcx + 0x14]
cvttss2si edi, dword [rdx + 0x15]
cvttss2si edi, dword [rbx + 0x1235]
cvttss2si edi, dword [rbx + 0x12345679]
cvttss2si edi, dword [rbx + rcx]
cvttss2si edi, dword [rbx + 4 * rcx]
cvttss2si edi, dword [rbx + rcx + 0x13]
cvttss2si edi, dword [rbx + rcx + 0x1235]
cvttss2si edi, dword [rbx + rcx + 0x12345679]
cvttss2si edi, dword [rbx + 4 * rcx + 0x13]
cvttss2si edi, dword [rbx + 4 * rcx + 0x1235]
cvttss2si edi, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si edi, dword [4 * rcx]
cvttss2si edi, dword [4 * rcx + 0x13]
cvttss2si edi, dword [4 * rcx + 0x1235]
cvttss2si edi, dword [4 * rcx + 0x12345679]
cvttss2si edi, dword [rbp]
cvttss2si edi, dword [rbp + 0x12]
cvttss2si edi, dword [rbp + 0x1234]
cvttss2si edi, dword [rbp + 0x12345678]
cvttss2si edi, dword [4 * rbp]
cvttss2si edi, dword [4 * rbp + 0x12]
cvttss2si edi, dword [4 * rbp + 0x1234]
cvttss2si edi, dword [4 * rbp + 0x12345678]
cvttss2si edi, dword [rbx + 4 * rbp]
cvttss2si edi, dword [rbx + 4 * rbp + 0x12]
cvttss2si edi, dword [rbx + 4 * rbp + 0x1234]
cvttss2si edi, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si edi, dword [rsp]
cvttss2si edi, dword [rsp + 0x12]
cvttss2si edi, dword [rsp + 0x1234]
cvttss2si edi, dword [rsp + 0x12345678]
cvttss2si edi, dword [rsp + rax]
cvttss2si edi, dword [rsp + rbp]
cvttss2si edi, dword [rsp + 2*rbp]
cvttss2si edi, dword [rsp + 4*rbp]
cvttss2si edi, dword [rsp + 8*rbp]
cvttss2si edi, dword [rax]
cvttss2si edi, dword [rcx]
cvttss2si edi, dword [rdx]
cvttss2si edi, dword [rbx]
cvttss2si edi, dword [rsp]
cvttss2si edi, dword [rbp]
cvttss2si edi, dword [rsi]
cvttss2si edi, dword [rdi]
cvttss2si edi, dword [rax + 2*rax]
cvttss2si edi, dword [rcx + 2*rcx]
cvttss2si edi, dword [rdx + 2*rdx]
cvttss2si edi, dword [rbx + 2*rbx]
cvttss2si edi, dword [rbp + 2*rbp]
cvttss2si edi, dword [rsi + 2*rsi]
cvttss2si edi, dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r64,xmm
; ------------------------------------------------------------------------------
cvttss2si rax, xmm0
cvttss2si rax, xmm1
cvttss2si rax, xmm2
cvttss2si rax, xmm3
cvttss2si rax, xmm4
cvttss2si rax, xmm5
cvttss2si rax, xmm6
cvttss2si rax, xmm7
cvttss2si rcx, xmm0
cvttss2si rcx, xmm1
cvttss2si rcx, xmm2
cvttss2si rcx, xmm3
cvttss2si rcx, xmm4
cvttss2si rcx, xmm5
cvttss2si rcx, xmm6
cvttss2si rcx, xmm7
cvttss2si rdx, xmm0
cvttss2si rdx, xmm1
cvttss2si rdx, xmm2
cvttss2si rdx, xmm3
cvttss2si rdx, xmm4
cvttss2si rdx, xmm5
cvttss2si rdx, xmm6
cvttss2si rdx, xmm7
cvttss2si rbx, xmm0
cvttss2si rbx, xmm1
cvttss2si rbx, xmm2
cvttss2si rbx, xmm3
cvttss2si rbx, xmm4
cvttss2si rbx, xmm5
cvttss2si rbx, xmm6
cvttss2si rbx, xmm7
cvttss2si rsp, xmm0
cvttss2si rsp, xmm1
cvttss2si rsp, xmm2
cvttss2si rsp, xmm3
cvttss2si rsp, xmm4
cvttss2si rsp, xmm5
cvttss2si rsp, xmm6
cvttss2si rsp, xmm7
cvttss2si rbp, xmm0
cvttss2si rbp, xmm1
cvttss2si rbp, xmm2
cvttss2si rbp, xmm3
cvttss2si rbp, xmm4
cvttss2si rbp, xmm5
cvttss2si rbp, xmm6
cvttss2si rbp, xmm7
cvttss2si rsi, xmm0
cvttss2si rsi, xmm1
cvttss2si rsi, xmm2
cvttss2si rsi, xmm3
cvttss2si rsi, xmm4
cvttss2si rsi, xmm5
cvttss2si rsi, xmm6
cvttss2si rsi, xmm7
cvttss2si rdi, xmm0
cvttss2si rdi, xmm1
cvttss2si rdi, xmm2
cvttss2si rdi, xmm3
cvttss2si rdi, xmm4
cvttss2si rdi, xmm5
cvttss2si rdi, xmm6
cvttss2si rdi, xmm7

; ------------------------------------------------------------------------------
; opcode r64,m32
; ------------------------------------------------------------------------------
cvttss2si rax, dword [rip + 0x13]
cvttss2si rax, dword [rip + 0x1235]
cvttss2si rax, dword [rip + 0x12345679]
cvttss2si rax, dword [rbx]
cvttss2si rax, dword [rcx + 0x14]
cvttss2si rax, dword [rdx + 0x15]
cvttss2si rax, dword [rbx + 0x1235]
cvttss2si rax, dword [rbx + 0x12345679]
cvttss2si rax, dword [rbx + rcx]
cvttss2si rax, dword [rbx + 4 * rcx]
cvttss2si rax, dword [rbx + rcx + 0x13]
cvttss2si rax, dword [rbx + rcx + 0x1235]
cvttss2si rax, dword [rbx + rcx + 0x12345679]
cvttss2si rax, dword [rbx + 4 * rcx + 0x13]
cvttss2si rax, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rax, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rax, dword [4 * rcx]
cvttss2si rax, dword [4 * rcx + 0x13]
cvttss2si rax, dword [4 * rcx + 0x1235]
cvttss2si rax, dword [4 * rcx + 0x12345679]
cvttss2si rax, dword [rbp]
cvttss2si rax, dword [rbp + 0x12]
cvttss2si rax, dword [rbp + 0x1234]
cvttss2si rax, dword [rbp + 0x12345678]
cvttss2si rax, dword [4 * rbp]
cvttss2si rax, dword [4 * rbp + 0x12]
cvttss2si rax, dword [4 * rbp + 0x1234]
cvttss2si rax, dword [4 * rbp + 0x12345678]
cvttss2si rax, dword [rbx + 4 * rbp]
cvttss2si rax, dword [rbx + 4 * rbp + 0x12]
cvttss2si rax, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rax, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rax, dword [rsp]
cvttss2si rax, dword [rsp + 0x12]
cvttss2si rax, dword [rsp + 0x1234]
cvttss2si rax, dword [rsp + 0x12345678]
cvttss2si rax, dword [rsp + rax]
cvttss2si rax, dword [rsp + rbp]
cvttss2si rax, dword [rsp + 2*rbp]
cvttss2si rax, dword [rsp + 4*rbp]
cvttss2si rax, dword [rsp + 8*rbp]
cvttss2si rax, dword [rax]
cvttss2si rax, dword [rcx]
cvttss2si rax, dword [rdx]
cvttss2si rax, dword [rbx]
cvttss2si rax, dword [rsp]
cvttss2si rax, dword [rbp]
cvttss2si rax, dword [rsi]
cvttss2si rax, dword [rdi]
cvttss2si rax, dword [rax + 2*rax]
cvttss2si rax, dword [rcx + 2*rcx]
cvttss2si rax, dword [rdx + 2*rdx]
cvttss2si rax, dword [rbx + 2*rbx]
cvttss2si rax, dword [rbp + 2*rbp]
cvttss2si rax, dword [rsi + 2*rsi]
cvttss2si rax, dword [rdi + 2*rdi]
cvttss2si rcx, dword [rip + 0x13]
cvttss2si rcx, dword [rip + 0x1235]
cvttss2si rcx, dword [rip + 0x12345679]
cvttss2si rcx, dword [rbx]
cvttss2si rcx, dword [rcx + 0x14]
cvttss2si rcx, dword [rdx + 0x15]
cvttss2si rcx, dword [rbx + 0x1235]
cvttss2si rcx, dword [rbx + 0x12345679]
cvttss2si rcx, dword [rbx + rcx]
cvttss2si rcx, dword [rbx + 4 * rcx]
cvttss2si rcx, dword [rbx + rcx + 0x13]
cvttss2si rcx, dword [rbx + rcx + 0x1235]
cvttss2si rcx, dword [rbx + rcx + 0x12345679]
cvttss2si rcx, dword [rbx + 4 * rcx + 0x13]
cvttss2si rcx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rcx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rcx, dword [4 * rcx]
cvttss2si rcx, dword [4 * rcx + 0x13]
cvttss2si rcx, dword [4 * rcx + 0x1235]
cvttss2si rcx, dword [4 * rcx + 0x12345679]
cvttss2si rcx, dword [rbp]
cvttss2si rcx, dword [rbp + 0x12]
cvttss2si rcx, dword [rbp + 0x1234]
cvttss2si rcx, dword [rbp + 0x12345678]
cvttss2si rcx, dword [4 * rbp]
cvttss2si rcx, dword [4 * rbp + 0x12]
cvttss2si rcx, dword [4 * rbp + 0x1234]
cvttss2si rcx, dword [4 * rbp + 0x12345678]
cvttss2si rcx, dword [rbx + 4 * rbp]
cvttss2si rcx, dword [rbx + 4 * rbp + 0x12]
cvttss2si rcx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rcx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rcx, dword [rsp]
cvttss2si rcx, dword [rsp + 0x12]
cvttss2si rcx, dword [rsp + 0x1234]
cvttss2si rcx, dword [rsp + 0x12345678]
cvttss2si rcx, dword [rsp + rax]
cvttss2si rcx, dword [rsp + rbp]
cvttss2si rcx, dword [rsp + 2*rbp]
cvttss2si rcx, dword [rsp + 4*rbp]
cvttss2si rcx, dword [rsp + 8*rbp]
cvttss2si rcx, dword [rax]
cvttss2si rcx, dword [rcx]
cvttss2si rcx, dword [rdx]
cvttss2si rcx, dword [rbx]
cvttss2si rcx, dword [rsp]
cvttss2si rcx, dword [rbp]
cvttss2si rcx, dword [rsi]
cvttss2si rcx, dword [rdi]
cvttss2si rcx, dword [rax + 2*rax]
cvttss2si rcx, dword [rcx + 2*rcx]
cvttss2si rcx, dword [rdx + 2*rdx]
cvttss2si rcx, dword [rbx + 2*rbx]
cvttss2si rcx, dword [rbp + 2*rbp]
cvttss2si rcx, dword [rsi + 2*rsi]
cvttss2si rcx, dword [rdi + 2*rdi]
cvttss2si rdx, dword [rip + 0x13]
cvttss2si rdx, dword [rip + 0x1235]
cvttss2si rdx, dword [rip + 0x12345679]
cvttss2si rdx, dword [rbx]
cvttss2si rdx, dword [rcx + 0x14]
cvttss2si rdx, dword [rdx + 0x15]
cvttss2si rdx, dword [rbx + 0x1235]
cvttss2si rdx, dword [rbx + 0x12345679]
cvttss2si rdx, dword [rbx + rcx]
cvttss2si rdx, dword [rbx + 4 * rcx]
cvttss2si rdx, dword [rbx + rcx + 0x13]
cvttss2si rdx, dword [rbx + rcx + 0x1235]
cvttss2si rdx, dword [rbx + rcx + 0x12345679]
cvttss2si rdx, dword [rbx + 4 * rcx + 0x13]
cvttss2si rdx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rdx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rdx, dword [4 * rcx]
cvttss2si rdx, dword [4 * rcx + 0x13]
cvttss2si rdx, dword [4 * rcx + 0x1235]
cvttss2si rdx, dword [4 * rcx + 0x12345679]
cvttss2si rdx, dword [rbp]
cvttss2si rdx, dword [rbp + 0x12]
cvttss2si rdx, dword [rbp + 0x1234]
cvttss2si rdx, dword [rbp + 0x12345678]
cvttss2si rdx, dword [4 * rbp]
cvttss2si rdx, dword [4 * rbp + 0x12]
cvttss2si rdx, dword [4 * rbp + 0x1234]
cvttss2si rdx, dword [4 * rbp + 0x12345678]
cvttss2si rdx, dword [rbx + 4 * rbp]
cvttss2si rdx, dword [rbx + 4 * rbp + 0x12]
cvttss2si rdx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rdx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rdx, dword [rsp]
cvttss2si rdx, dword [rsp + 0x12]
cvttss2si rdx, dword [rsp + 0x1234]
cvttss2si rdx, dword [rsp + 0x12345678]
cvttss2si rdx, dword [rsp + rax]
cvttss2si rdx, dword [rsp + rbp]
cvttss2si rdx, dword [rsp + 2*rbp]
cvttss2si rdx, dword [rsp + 4*rbp]
cvttss2si rdx, dword [rsp + 8*rbp]
cvttss2si rdx, dword [rax]
cvttss2si rdx, dword [rcx]
cvttss2si rdx, dword [rdx]
cvttss2si rdx, dword [rbx]
cvttss2si rdx, dword [rsp]
cvttss2si rdx, dword [rbp]
cvttss2si rdx, dword [rsi]
cvttss2si rdx, dword [rdi]
cvttss2si rdx, dword [rax + 2*rax]
cvttss2si rdx, dword [rcx + 2*rcx]
cvttss2si rdx, dword [rdx + 2*rdx]
cvttss2si rdx, dword [rbx + 2*rbx]
cvttss2si rdx, dword [rbp + 2*rbp]
cvttss2si rdx, dword [rsi + 2*rsi]
cvttss2si rdx, dword [rdi + 2*rdi]
cvttss2si rbx, dword [rip + 0x13]
cvttss2si rbx, dword [rip + 0x1235]
cvttss2si rbx, dword [rip + 0x12345679]
cvttss2si rbx, dword [rbx]
cvttss2si rbx, dword [rcx + 0x14]
cvttss2si rbx, dword [rdx + 0x15]
cvttss2si rbx, dword [rbx + 0x1235]
cvttss2si rbx, dword [rbx + 0x12345679]
cvttss2si rbx, dword [rbx + rcx]
cvttss2si rbx, dword [rbx + 4 * rcx]
cvttss2si rbx, dword [rbx + rcx + 0x13]
cvttss2si rbx, dword [rbx + rcx + 0x1235]
cvttss2si rbx, dword [rbx + rcx + 0x12345679]
cvttss2si rbx, dword [rbx + 4 * rcx + 0x13]
cvttss2si rbx, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rbx, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rbx, dword [4 * rcx]
cvttss2si rbx, dword [4 * rcx + 0x13]
cvttss2si rbx, dword [4 * rcx + 0x1235]
cvttss2si rbx, dword [4 * rcx + 0x12345679]
cvttss2si rbx, dword [rbp]
cvttss2si rbx, dword [rbp + 0x12]
cvttss2si rbx, dword [rbp + 0x1234]
cvttss2si rbx, dword [rbp + 0x12345678]
cvttss2si rbx, dword [4 * rbp]
cvttss2si rbx, dword [4 * rbp + 0x12]
cvttss2si rbx, dword [4 * rbp + 0x1234]
cvttss2si rbx, dword [4 * rbp + 0x12345678]
cvttss2si rbx, dword [rbx + 4 * rbp]
cvttss2si rbx, dword [rbx + 4 * rbp + 0x12]
cvttss2si rbx, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rbx, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rbx, dword [rsp]
cvttss2si rbx, dword [rsp + 0x12]
cvttss2si rbx, dword [rsp + 0x1234]
cvttss2si rbx, dword [rsp + 0x12345678]
cvttss2si rbx, dword [rsp + rax]
cvttss2si rbx, dword [rsp + rbp]
cvttss2si rbx, dword [rsp + 2*rbp]
cvttss2si rbx, dword [rsp + 4*rbp]
cvttss2si rbx, dword [rsp + 8*rbp]
cvttss2si rbx, dword [rax]
cvttss2si rbx, dword [rcx]
cvttss2si rbx, dword [rdx]
cvttss2si rbx, dword [rbx]
cvttss2si rbx, dword [rsp]
cvttss2si rbx, dword [rbp]
cvttss2si rbx, dword [rsi]
cvttss2si rbx, dword [rdi]
cvttss2si rbx, dword [rax + 2*rax]
cvttss2si rbx, dword [rcx + 2*rcx]
cvttss2si rbx, dword [rdx + 2*rdx]
cvttss2si rbx, dword [rbx + 2*rbx]
cvttss2si rbx, dword [rbp + 2*rbp]
cvttss2si rbx, dword [rsi + 2*rsi]
cvttss2si rbx, dword [rdi + 2*rdi]
cvttss2si rsp, dword [rip + 0x13]
cvttss2si rsp, dword [rip + 0x1235]
cvttss2si rsp, dword [rip + 0x12345679]
cvttss2si rsp, dword [rbx]
cvttss2si rsp, dword [rcx + 0x14]
cvttss2si rsp, dword [rdx + 0x15]
cvttss2si rsp, dword [rbx + 0x1235]
cvttss2si rsp, dword [rbx + 0x12345679]
cvttss2si rsp, dword [rbx + rcx]
cvttss2si rsp, dword [rbx + 4 * rcx]
cvttss2si rsp, dword [rbx + rcx + 0x13]
cvttss2si rsp, dword [rbx + rcx + 0x1235]
cvttss2si rsp, dword [rbx + rcx + 0x12345679]
cvttss2si rsp, dword [rbx + 4 * rcx + 0x13]
cvttss2si rsp, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rsp, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rsp, dword [4 * rcx]
cvttss2si rsp, dword [4 * rcx + 0x13]
cvttss2si rsp, dword [4 * rcx + 0x1235]
cvttss2si rsp, dword [4 * rcx + 0x12345679]
cvttss2si rsp, dword [rbp]
cvttss2si rsp, dword [rbp + 0x12]
cvttss2si rsp, dword [rbp + 0x1234]
cvttss2si rsp, dword [rbp + 0x12345678]
cvttss2si rsp, dword [4 * rbp]
cvttss2si rsp, dword [4 * rbp + 0x12]
cvttss2si rsp, dword [4 * rbp + 0x1234]
cvttss2si rsp, dword [4 * rbp + 0x12345678]
cvttss2si rsp, dword [rbx + 4 * rbp]
cvttss2si rsp, dword [rbx + 4 * rbp + 0x12]
cvttss2si rsp, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rsp, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rsp, dword [rsp]
cvttss2si rsp, dword [rsp + 0x12]
cvttss2si rsp, dword [rsp + 0x1234]
cvttss2si rsp, dword [rsp + 0x12345678]
cvttss2si rsp, dword [rsp + rax]
cvttss2si rsp, dword [rsp + rbp]
cvttss2si rsp, dword [rsp + 2*rbp]
cvttss2si rsp, dword [rsp + 4*rbp]
cvttss2si rsp, dword [rsp + 8*rbp]
cvttss2si rsp, dword [rax]
cvttss2si rsp, dword [rcx]
cvttss2si rsp, dword [rdx]
cvttss2si rsp, dword [rbx]
cvttss2si rsp, dword [rsp]
cvttss2si rsp, dword [rbp]
cvttss2si rsp, dword [rsi]
cvttss2si rsp, dword [rdi]
cvttss2si rsp, dword [rax + 2*rax]
cvttss2si rsp, dword [rcx + 2*rcx]
cvttss2si rsp, dword [rdx + 2*rdx]
cvttss2si rsp, dword [rbx + 2*rbx]
cvttss2si rsp, dword [rbp + 2*rbp]
cvttss2si rsp, dword [rsi + 2*rsi]
cvttss2si rsp, dword [rdi + 2*rdi]
cvttss2si rbp, dword [rip + 0x13]
cvttss2si rbp, dword [rip + 0x1235]
cvttss2si rbp, dword [rip + 0x12345679]
cvttss2si rbp, dword [rbx]
cvttss2si rbp, dword [rcx + 0x14]
cvttss2si rbp, dword [rdx + 0x15]
cvttss2si rbp, dword [rbx + 0x1235]
cvttss2si rbp, dword [rbx + 0x12345679]
cvttss2si rbp, dword [rbx + rcx]
cvttss2si rbp, dword [rbx + 4 * rcx]
cvttss2si rbp, dword [rbx + rcx + 0x13]
cvttss2si rbp, dword [rbx + rcx + 0x1235]
cvttss2si rbp, dword [rbx + rcx + 0x12345679]
cvttss2si rbp, dword [rbx + 4 * rcx + 0x13]
cvttss2si rbp, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rbp, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rbp, dword [4 * rcx]
cvttss2si rbp, dword [4 * rcx + 0x13]
cvttss2si rbp, dword [4 * rcx + 0x1235]
cvttss2si rbp, dword [4 * rcx + 0x12345679]
cvttss2si rbp, dword [rbp]
cvttss2si rbp, dword [rbp + 0x12]
cvttss2si rbp, dword [rbp + 0x1234]
cvttss2si rbp, dword [rbp + 0x12345678]
cvttss2si rbp, dword [4 * rbp]
cvttss2si rbp, dword [4 * rbp + 0x12]
cvttss2si rbp, dword [4 * rbp + 0x1234]
cvttss2si rbp, dword [4 * rbp + 0x12345678]
cvttss2si rbp, dword [rbx + 4 * rbp]
cvttss2si rbp, dword [rbx + 4 * rbp + 0x12]
cvttss2si rbp, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rbp, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rbp, dword [rsp]
cvttss2si rbp, dword [rsp + 0x12]
cvttss2si rbp, dword [rsp + 0x1234]
cvttss2si rbp, dword [rsp + 0x12345678]
cvttss2si rbp, dword [rsp + rax]
cvttss2si rbp, dword [rsp + rbp]
cvttss2si rbp, dword [rsp + 2*rbp]
cvttss2si rbp, dword [rsp + 4*rbp]
cvttss2si rbp, dword [rsp + 8*rbp]
cvttss2si rbp, dword [rax]
cvttss2si rbp, dword [rcx]
cvttss2si rbp, dword [rdx]
cvttss2si rbp, dword [rbx]
cvttss2si rbp, dword [rsp]
cvttss2si rbp, dword [rbp]
cvttss2si rbp, dword [rsi]
cvttss2si rbp, dword [rdi]
cvttss2si rbp, dword [rax + 2*rax]
cvttss2si rbp, dword [rcx + 2*rcx]
cvttss2si rbp, dword [rdx + 2*rdx]
cvttss2si rbp, dword [rbx + 2*rbx]
cvttss2si rbp, dword [rbp + 2*rbp]
cvttss2si rbp, dword [rsi + 2*rsi]
cvttss2si rbp, dword [rdi + 2*rdi]
cvttss2si rsi, dword [rip + 0x13]
cvttss2si rsi, dword [rip + 0x1235]
cvttss2si rsi, dword [rip + 0x12345679]
cvttss2si rsi, dword [rbx]
cvttss2si rsi, dword [rcx + 0x14]
cvttss2si rsi, dword [rdx + 0x15]
cvttss2si rsi, dword [rbx + 0x1235]
cvttss2si rsi, dword [rbx + 0x12345679]
cvttss2si rsi, dword [rbx + rcx]
cvttss2si rsi, dword [rbx + 4 * rcx]
cvttss2si rsi, dword [rbx + rcx + 0x13]
cvttss2si rsi, dword [rbx + rcx + 0x1235]
cvttss2si rsi, dword [rbx + rcx + 0x12345679]
cvttss2si rsi, dword [rbx + 4 * rcx + 0x13]
cvttss2si rsi, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rsi, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rsi, dword [4 * rcx]
cvttss2si rsi, dword [4 * rcx + 0x13]
cvttss2si rsi, dword [4 * rcx + 0x1235]
cvttss2si rsi, dword [4 * rcx + 0x12345679]
cvttss2si rsi, dword [rbp]
cvttss2si rsi, dword [rbp + 0x12]
cvttss2si rsi, dword [rbp + 0x1234]
cvttss2si rsi, dword [rbp + 0x12345678]
cvttss2si rsi, dword [4 * rbp]
cvttss2si rsi, dword [4 * rbp + 0x12]
cvttss2si rsi, dword [4 * rbp + 0x1234]
cvttss2si rsi, dword [4 * rbp + 0x12345678]
cvttss2si rsi, dword [rbx + 4 * rbp]
cvttss2si rsi, dword [rbx + 4 * rbp + 0x12]
cvttss2si rsi, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rsi, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rsi, dword [rsp]
cvttss2si rsi, dword [rsp + 0x12]
cvttss2si rsi, dword [rsp + 0x1234]
cvttss2si rsi, dword [rsp + 0x12345678]
cvttss2si rsi, dword [rsp + rax]
cvttss2si rsi, dword [rsp + rbp]
cvttss2si rsi, dword [rsp + 2*rbp]
cvttss2si rsi, dword [rsp + 4*rbp]
cvttss2si rsi, dword [rsp + 8*rbp]
cvttss2si rsi, dword [rax]
cvttss2si rsi, dword [rcx]
cvttss2si rsi, dword [rdx]
cvttss2si rsi, dword [rbx]
cvttss2si rsi, dword [rsp]
cvttss2si rsi, dword [rbp]
cvttss2si rsi, dword [rsi]
cvttss2si rsi, dword [rdi]
cvttss2si rsi, dword [rax + 2*rax]
cvttss2si rsi, dword [rcx + 2*rcx]
cvttss2si rsi, dword [rdx + 2*rdx]
cvttss2si rsi, dword [rbx + 2*rbx]
cvttss2si rsi, dword [rbp + 2*rbp]
cvttss2si rsi, dword [rsi + 2*rsi]
cvttss2si rsi, dword [rdi + 2*rdi]
cvttss2si rdi, dword [rip + 0x13]
cvttss2si rdi, dword [rip + 0x1235]
cvttss2si rdi, dword [rip + 0x12345679]
cvttss2si rdi, dword [rbx]
cvttss2si rdi, dword [rcx + 0x14]
cvttss2si rdi, dword [rdx + 0x15]
cvttss2si rdi, dword [rbx + 0x1235]
cvttss2si rdi, dword [rbx + 0x12345679]
cvttss2si rdi, dword [rbx + rcx]
cvttss2si rdi, dword [rbx + 4 * rcx]
cvttss2si rdi, dword [rbx + rcx + 0x13]
cvttss2si rdi, dword [rbx + rcx + 0x1235]
cvttss2si rdi, dword [rbx + rcx + 0x12345679]
cvttss2si rdi, dword [rbx + 4 * rcx + 0x13]
cvttss2si rdi, dword [rbx + 4 * rcx + 0x1235]
cvttss2si rdi, dword [rbx + 8 * rcx + 0x12345679]
cvttss2si rdi, dword [4 * rcx]
cvttss2si rdi, dword [4 * rcx + 0x13]
cvttss2si rdi, dword [4 * rcx + 0x1235]
cvttss2si rdi, dword [4 * rcx + 0x12345679]
cvttss2si rdi, dword [rbp]
cvttss2si rdi, dword [rbp + 0x12]
cvttss2si rdi, dword [rbp + 0x1234]
cvttss2si rdi, dword [rbp + 0x12345678]
cvttss2si rdi, dword [4 * rbp]
cvttss2si rdi, dword [4 * rbp + 0x12]
cvttss2si rdi, dword [4 * rbp + 0x1234]
cvttss2si rdi, dword [4 * rbp + 0x12345678]
cvttss2si rdi, dword [rbx + 4 * rbp]
cvttss2si rdi, dword [rbx + 4 * rbp + 0x12]
cvttss2si rdi, dword [rbx + 4 * rbp + 0x1234]
cvttss2si rdi, dword [rbx + 4 * rbp + 0x12345678]
cvttss2si rdi, dword [rsp]
cvttss2si rdi, dword [rsp + 0x12]
cvttss2si rdi, dword [rsp + 0x1234]
cvttss2si rdi, dword [rsp + 0x12345678]
cvttss2si rdi, dword [rsp + rax]
cvttss2si rdi, dword [rsp + rbp]
cvttss2si rdi, dword [rsp + 2*rbp]
cvttss2si rdi, dword [rsp + 4*rbp]
cvttss2si rdi, dword [rsp + 8*rbp]
cvttss2si rdi, dword [rax]
cvttss2si rdi, dword [rcx]
cvttss2si rdi, dword [rdx]
cvttss2si rdi, dword [rbx]
cvttss2si rdi, dword [rsp]
cvttss2si rdi, dword [rbp]
cvttss2si rdi, dword [rsi]
cvttss2si rdi, dword [rdi]
cvttss2si rdi, dword [rax + 2*rax]
cvttss2si rdi, dword [rcx + 2*rcx]
cvttss2si rdi, dword [rdx + 2*rdx]
cvttss2si rdi, dword [rbx + 2*rbx]
cvttss2si rdi, dword [rbp + 2*rbp]
cvttss2si rdi, dword [rsi + 2*rsi]
cvttss2si rdi, dword [rdi + 2*rdi]
