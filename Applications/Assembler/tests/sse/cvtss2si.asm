use64
; ------------------------------------------------------------------------------
; opcode r32,xmm
; ------------------------------------------------------------------------------
cvtss2si eax, xmm0
cvtss2si eax, xmm1
cvtss2si eax, xmm2
cvtss2si eax, xmm3
cvtss2si eax, xmm4
cvtss2si eax, xmm5
cvtss2si eax, xmm6
cvtss2si eax, xmm7
cvtss2si ecx, xmm0
cvtss2si ecx, xmm1
cvtss2si ecx, xmm2
cvtss2si ecx, xmm3
cvtss2si ecx, xmm4
cvtss2si ecx, xmm5
cvtss2si ecx, xmm6
cvtss2si ecx, xmm7
cvtss2si edx, xmm0
cvtss2si edx, xmm1
cvtss2si edx, xmm2
cvtss2si edx, xmm3
cvtss2si edx, xmm4
cvtss2si edx, xmm5
cvtss2si edx, xmm6
cvtss2si edx, xmm7
cvtss2si ebx, xmm0
cvtss2si ebx, xmm1
cvtss2si ebx, xmm2
cvtss2si ebx, xmm3
cvtss2si ebx, xmm4
cvtss2si ebx, xmm5
cvtss2si ebx, xmm6
cvtss2si ebx, xmm7
cvtss2si esp, xmm0
cvtss2si esp, xmm1
cvtss2si esp, xmm2
cvtss2si esp, xmm3
cvtss2si esp, xmm4
cvtss2si esp, xmm5
cvtss2si esp, xmm6
cvtss2si esp, xmm7
cvtss2si ebp, xmm0
cvtss2si ebp, xmm1
cvtss2si ebp, xmm2
cvtss2si ebp, xmm3
cvtss2si ebp, xmm4
cvtss2si ebp, xmm5
cvtss2si ebp, xmm6
cvtss2si ebp, xmm7
cvtss2si esi, xmm0
cvtss2si esi, xmm1
cvtss2si esi, xmm2
cvtss2si esi, xmm3
cvtss2si esi, xmm4
cvtss2si esi, xmm5
cvtss2si esi, xmm6
cvtss2si esi, xmm7
cvtss2si edi, xmm0
cvtss2si edi, xmm1
cvtss2si edi, xmm2
cvtss2si edi, xmm3
cvtss2si edi, xmm4
cvtss2si edi, xmm5
cvtss2si edi, xmm6
cvtss2si edi, xmm7

; ------------------------------------------------------------------------------
; opcode r32,m32
; ------------------------------------------------------------------------------
cvtss2si eax, dword [rip + 0x13]
cvtss2si eax, dword [rip + 0x1235]
cvtss2si eax, dword [rip + 0x12345679]
cvtss2si eax, dword [rbx]
cvtss2si eax, dword [rcx + 0x14]
cvtss2si eax, dword [rdx + 0x15]
cvtss2si eax, dword [rbx + 0x1235]
cvtss2si eax, dword [rbx + 0x12345679]
cvtss2si eax, dword [rbx + rcx]
cvtss2si eax, dword [rbx + 4 * rcx]
cvtss2si eax, dword [rbx + rcx + 0x13]
cvtss2si eax, dword [rbx + rcx + 0x1235]
cvtss2si eax, dword [rbx + rcx + 0x12345679]
cvtss2si eax, dword [rbx + 4 * rcx + 0x13]
cvtss2si eax, dword [rbx + 4 * rcx + 0x1235]
cvtss2si eax, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si eax, dword [4 * rcx]
cvtss2si eax, dword [4 * rcx + 0x13]
cvtss2si eax, dword [4 * rcx + 0x1235]
cvtss2si eax, dword [4 * rcx + 0x12345679]
cvtss2si eax, dword [rbp]
cvtss2si eax, dword [rbp + 0x12]
cvtss2si eax, dword [rbp + 0x1234]
cvtss2si eax, dword [rbp + 0x12345678]
cvtss2si eax, dword [4 * rbp]
cvtss2si eax, dword [4 * rbp + 0x12]
cvtss2si eax, dword [4 * rbp + 0x1234]
cvtss2si eax, dword [4 * rbp + 0x12345678]
cvtss2si eax, dword [rbx + 4 * rbp]
cvtss2si eax, dword [rbx + 4 * rbp + 0x12]
cvtss2si eax, dword [rbx + 4 * rbp + 0x1234]
cvtss2si eax, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si eax, dword [rsp]
cvtss2si eax, dword [rsp + 0x12]
cvtss2si eax, dword [rsp + 0x1234]
cvtss2si eax, dword [rsp + 0x12345678]
cvtss2si eax, dword [rsp + rax]
cvtss2si eax, dword [rsp + rbp]
cvtss2si eax, dword [rsp + 2*rbp]
cvtss2si eax, dword [rsp + 4*rbp]
cvtss2si eax, dword [rsp + 8*rbp]
cvtss2si eax, dword [rax]
cvtss2si eax, dword [rcx]
cvtss2si eax, dword [rdx]
cvtss2si eax, dword [rbx]
cvtss2si eax, dword [rsp]
cvtss2si eax, dword [rbp]
cvtss2si eax, dword [rsi]
cvtss2si eax, dword [rdi]
cvtss2si eax, dword [rax + 2*rax]
cvtss2si eax, dword [rcx + 2*rcx]
cvtss2si eax, dword [rdx + 2*rdx]
cvtss2si eax, dword [rbx + 2*rbx]
cvtss2si eax, dword [rbp + 2*rbp]
cvtss2si eax, dword [rsi + 2*rsi]
cvtss2si eax, dword [rdi + 2*rdi]
cvtss2si ecx, dword [rip + 0x13]
cvtss2si ecx, dword [rip + 0x1235]
cvtss2si ecx, dword [rip + 0x12345679]
cvtss2si ecx, dword [rbx]
cvtss2si ecx, dword [rcx + 0x14]
cvtss2si ecx, dword [rdx + 0x15]
cvtss2si ecx, dword [rbx + 0x1235]
cvtss2si ecx, dword [rbx + 0x12345679]
cvtss2si ecx, dword [rbx + rcx]
cvtss2si ecx, dword [rbx + 4 * rcx]
cvtss2si ecx, dword [rbx + rcx + 0x13]
cvtss2si ecx, dword [rbx + rcx + 0x1235]
cvtss2si ecx, dword [rbx + rcx + 0x12345679]
cvtss2si ecx, dword [rbx + 4 * rcx + 0x13]
cvtss2si ecx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si ecx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si ecx, dword [4 * rcx]
cvtss2si ecx, dword [4 * rcx + 0x13]
cvtss2si ecx, dword [4 * rcx + 0x1235]
cvtss2si ecx, dword [4 * rcx + 0x12345679]
cvtss2si ecx, dword [rbp]
cvtss2si ecx, dword [rbp + 0x12]
cvtss2si ecx, dword [rbp + 0x1234]
cvtss2si ecx, dword [rbp + 0x12345678]
cvtss2si ecx, dword [4 * rbp]
cvtss2si ecx, dword [4 * rbp + 0x12]
cvtss2si ecx, dword [4 * rbp + 0x1234]
cvtss2si ecx, dword [4 * rbp + 0x12345678]
cvtss2si ecx, dword [rbx + 4 * rbp]
cvtss2si ecx, dword [rbx + 4 * rbp + 0x12]
cvtss2si ecx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si ecx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si ecx, dword [rsp]
cvtss2si ecx, dword [rsp + 0x12]
cvtss2si ecx, dword [rsp + 0x1234]
cvtss2si ecx, dword [rsp + 0x12345678]
cvtss2si ecx, dword [rsp + rax]
cvtss2si ecx, dword [rsp + rbp]
cvtss2si ecx, dword [rsp + 2*rbp]
cvtss2si ecx, dword [rsp + 4*rbp]
cvtss2si ecx, dword [rsp + 8*rbp]
cvtss2si ecx, dword [rax]
cvtss2si ecx, dword [rcx]
cvtss2si ecx, dword [rdx]
cvtss2si ecx, dword [rbx]
cvtss2si ecx, dword [rsp]
cvtss2si ecx, dword [rbp]
cvtss2si ecx, dword [rsi]
cvtss2si ecx, dword [rdi]
cvtss2si ecx, dword [rax + 2*rax]
cvtss2si ecx, dword [rcx + 2*rcx]
cvtss2si ecx, dword [rdx + 2*rdx]
cvtss2si ecx, dword [rbx + 2*rbx]
cvtss2si ecx, dword [rbp + 2*rbp]
cvtss2si ecx, dword [rsi + 2*rsi]
cvtss2si ecx, dword [rdi + 2*rdi]
cvtss2si edx, dword [rip + 0x13]
cvtss2si edx, dword [rip + 0x1235]
cvtss2si edx, dword [rip + 0x12345679]
cvtss2si edx, dword [rbx]
cvtss2si edx, dword [rcx + 0x14]
cvtss2si edx, dword [rdx + 0x15]
cvtss2si edx, dword [rbx + 0x1235]
cvtss2si edx, dword [rbx + 0x12345679]
cvtss2si edx, dword [rbx + rcx]
cvtss2si edx, dword [rbx + 4 * rcx]
cvtss2si edx, dword [rbx + rcx + 0x13]
cvtss2si edx, dword [rbx + rcx + 0x1235]
cvtss2si edx, dword [rbx + rcx + 0x12345679]
cvtss2si edx, dword [rbx + 4 * rcx + 0x13]
cvtss2si edx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si edx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si edx, dword [4 * rcx]
cvtss2si edx, dword [4 * rcx + 0x13]
cvtss2si edx, dword [4 * rcx + 0x1235]
cvtss2si edx, dword [4 * rcx + 0x12345679]
cvtss2si edx, dword [rbp]
cvtss2si edx, dword [rbp + 0x12]
cvtss2si edx, dword [rbp + 0x1234]
cvtss2si edx, dword [rbp + 0x12345678]
cvtss2si edx, dword [4 * rbp]
cvtss2si edx, dword [4 * rbp + 0x12]
cvtss2si edx, dword [4 * rbp + 0x1234]
cvtss2si edx, dword [4 * rbp + 0x12345678]
cvtss2si edx, dword [rbx + 4 * rbp]
cvtss2si edx, dword [rbx + 4 * rbp + 0x12]
cvtss2si edx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si edx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si edx, dword [rsp]
cvtss2si edx, dword [rsp + 0x12]
cvtss2si edx, dword [rsp + 0x1234]
cvtss2si edx, dword [rsp + 0x12345678]
cvtss2si edx, dword [rsp + rax]
cvtss2si edx, dword [rsp + rbp]
cvtss2si edx, dword [rsp + 2*rbp]
cvtss2si edx, dword [rsp + 4*rbp]
cvtss2si edx, dword [rsp + 8*rbp]
cvtss2si edx, dword [rax]
cvtss2si edx, dword [rcx]
cvtss2si edx, dword [rdx]
cvtss2si edx, dword [rbx]
cvtss2si edx, dword [rsp]
cvtss2si edx, dword [rbp]
cvtss2si edx, dword [rsi]
cvtss2si edx, dword [rdi]
cvtss2si edx, dword [rax + 2*rax]
cvtss2si edx, dword [rcx + 2*rcx]
cvtss2si edx, dword [rdx + 2*rdx]
cvtss2si edx, dword [rbx + 2*rbx]
cvtss2si edx, dword [rbp + 2*rbp]
cvtss2si edx, dword [rsi + 2*rsi]
cvtss2si edx, dword [rdi + 2*rdi]
cvtss2si ebx, dword [rip + 0x13]
cvtss2si ebx, dword [rip + 0x1235]
cvtss2si ebx, dword [rip + 0x12345679]
cvtss2si ebx, dword [rbx]
cvtss2si ebx, dword [rcx + 0x14]
cvtss2si ebx, dword [rdx + 0x15]
cvtss2si ebx, dword [rbx + 0x1235]
cvtss2si ebx, dword [rbx + 0x12345679]
cvtss2si ebx, dword [rbx + rcx]
cvtss2si ebx, dword [rbx + 4 * rcx]
cvtss2si ebx, dword [rbx + rcx + 0x13]
cvtss2si ebx, dword [rbx + rcx + 0x1235]
cvtss2si ebx, dword [rbx + rcx + 0x12345679]
cvtss2si ebx, dword [rbx + 4 * rcx + 0x13]
cvtss2si ebx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si ebx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si ebx, dword [4 * rcx]
cvtss2si ebx, dword [4 * rcx + 0x13]
cvtss2si ebx, dword [4 * rcx + 0x1235]
cvtss2si ebx, dword [4 * rcx + 0x12345679]
cvtss2si ebx, dword [rbp]
cvtss2si ebx, dword [rbp + 0x12]
cvtss2si ebx, dword [rbp + 0x1234]
cvtss2si ebx, dword [rbp + 0x12345678]
cvtss2si ebx, dword [4 * rbp]
cvtss2si ebx, dword [4 * rbp + 0x12]
cvtss2si ebx, dword [4 * rbp + 0x1234]
cvtss2si ebx, dword [4 * rbp + 0x12345678]
cvtss2si ebx, dword [rbx + 4 * rbp]
cvtss2si ebx, dword [rbx + 4 * rbp + 0x12]
cvtss2si ebx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si ebx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si ebx, dword [rsp]
cvtss2si ebx, dword [rsp + 0x12]
cvtss2si ebx, dword [rsp + 0x1234]
cvtss2si ebx, dword [rsp + 0x12345678]
cvtss2si ebx, dword [rsp + rax]
cvtss2si ebx, dword [rsp + rbp]
cvtss2si ebx, dword [rsp + 2*rbp]
cvtss2si ebx, dword [rsp + 4*rbp]
cvtss2si ebx, dword [rsp + 8*rbp]
cvtss2si ebx, dword [rax]
cvtss2si ebx, dword [rcx]
cvtss2si ebx, dword [rdx]
cvtss2si ebx, dword [rbx]
cvtss2si ebx, dword [rsp]
cvtss2si ebx, dword [rbp]
cvtss2si ebx, dword [rsi]
cvtss2si ebx, dword [rdi]
cvtss2si ebx, dword [rax + 2*rax]
cvtss2si ebx, dword [rcx + 2*rcx]
cvtss2si ebx, dword [rdx + 2*rdx]
cvtss2si ebx, dword [rbx + 2*rbx]
cvtss2si ebx, dword [rbp + 2*rbp]
cvtss2si ebx, dword [rsi + 2*rsi]
cvtss2si ebx, dword [rdi + 2*rdi]
cvtss2si esp, dword [rip + 0x13]
cvtss2si esp, dword [rip + 0x1235]
cvtss2si esp, dword [rip + 0x12345679]
cvtss2si esp, dword [rbx]
cvtss2si esp, dword [rcx + 0x14]
cvtss2si esp, dword [rdx + 0x15]
cvtss2si esp, dword [rbx + 0x1235]
cvtss2si esp, dword [rbx + 0x12345679]
cvtss2si esp, dword [rbx + rcx]
cvtss2si esp, dword [rbx + 4 * rcx]
cvtss2si esp, dword [rbx + rcx + 0x13]
cvtss2si esp, dword [rbx + rcx + 0x1235]
cvtss2si esp, dword [rbx + rcx + 0x12345679]
cvtss2si esp, dword [rbx + 4 * rcx + 0x13]
cvtss2si esp, dword [rbx + 4 * rcx + 0x1235]
cvtss2si esp, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si esp, dword [4 * rcx]
cvtss2si esp, dword [4 * rcx + 0x13]
cvtss2si esp, dword [4 * rcx + 0x1235]
cvtss2si esp, dword [4 * rcx + 0x12345679]
cvtss2si esp, dword [rbp]
cvtss2si esp, dword [rbp + 0x12]
cvtss2si esp, dword [rbp + 0x1234]
cvtss2si esp, dword [rbp + 0x12345678]
cvtss2si esp, dword [4 * rbp]
cvtss2si esp, dword [4 * rbp + 0x12]
cvtss2si esp, dword [4 * rbp + 0x1234]
cvtss2si esp, dword [4 * rbp + 0x12345678]
cvtss2si esp, dword [rbx + 4 * rbp]
cvtss2si esp, dword [rbx + 4 * rbp + 0x12]
cvtss2si esp, dword [rbx + 4 * rbp + 0x1234]
cvtss2si esp, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si esp, dword [rsp]
cvtss2si esp, dword [rsp + 0x12]
cvtss2si esp, dword [rsp + 0x1234]
cvtss2si esp, dword [rsp + 0x12345678]
cvtss2si esp, dword [rsp + rax]
cvtss2si esp, dword [rsp + rbp]
cvtss2si esp, dword [rsp + 2*rbp]
cvtss2si esp, dword [rsp + 4*rbp]
cvtss2si esp, dword [rsp + 8*rbp]
cvtss2si esp, dword [rax]
cvtss2si esp, dword [rcx]
cvtss2si esp, dword [rdx]
cvtss2si esp, dword [rbx]
cvtss2si esp, dword [rsp]
cvtss2si esp, dword [rbp]
cvtss2si esp, dword [rsi]
cvtss2si esp, dword [rdi]
cvtss2si esp, dword [rax + 2*rax]
cvtss2si esp, dword [rcx + 2*rcx]
cvtss2si esp, dword [rdx + 2*rdx]
cvtss2si esp, dword [rbx + 2*rbx]
cvtss2si esp, dword [rbp + 2*rbp]
cvtss2si esp, dword [rsi + 2*rsi]
cvtss2si esp, dword [rdi + 2*rdi]
cvtss2si ebp, dword [rip + 0x13]
cvtss2si ebp, dword [rip + 0x1235]
cvtss2si ebp, dword [rip + 0x12345679]
cvtss2si ebp, dword [rbx]
cvtss2si ebp, dword [rcx + 0x14]
cvtss2si ebp, dword [rdx + 0x15]
cvtss2si ebp, dword [rbx + 0x1235]
cvtss2si ebp, dword [rbx + 0x12345679]
cvtss2si ebp, dword [rbx + rcx]
cvtss2si ebp, dword [rbx + 4 * rcx]
cvtss2si ebp, dword [rbx + rcx + 0x13]
cvtss2si ebp, dword [rbx + rcx + 0x1235]
cvtss2si ebp, dword [rbx + rcx + 0x12345679]
cvtss2si ebp, dword [rbx + 4 * rcx + 0x13]
cvtss2si ebp, dword [rbx + 4 * rcx + 0x1235]
cvtss2si ebp, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si ebp, dword [4 * rcx]
cvtss2si ebp, dword [4 * rcx + 0x13]
cvtss2si ebp, dword [4 * rcx + 0x1235]
cvtss2si ebp, dword [4 * rcx + 0x12345679]
cvtss2si ebp, dword [rbp]
cvtss2si ebp, dword [rbp + 0x12]
cvtss2si ebp, dword [rbp + 0x1234]
cvtss2si ebp, dword [rbp + 0x12345678]
cvtss2si ebp, dword [4 * rbp]
cvtss2si ebp, dword [4 * rbp + 0x12]
cvtss2si ebp, dword [4 * rbp + 0x1234]
cvtss2si ebp, dword [4 * rbp + 0x12345678]
cvtss2si ebp, dword [rbx + 4 * rbp]
cvtss2si ebp, dword [rbx + 4 * rbp + 0x12]
cvtss2si ebp, dword [rbx + 4 * rbp + 0x1234]
cvtss2si ebp, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si ebp, dword [rsp]
cvtss2si ebp, dword [rsp + 0x12]
cvtss2si ebp, dword [rsp + 0x1234]
cvtss2si ebp, dword [rsp + 0x12345678]
cvtss2si ebp, dword [rsp + rax]
cvtss2si ebp, dword [rsp + rbp]
cvtss2si ebp, dword [rsp + 2*rbp]
cvtss2si ebp, dword [rsp + 4*rbp]
cvtss2si ebp, dword [rsp + 8*rbp]
cvtss2si ebp, dword [rax]
cvtss2si ebp, dword [rcx]
cvtss2si ebp, dword [rdx]
cvtss2si ebp, dword [rbx]
cvtss2si ebp, dword [rsp]
cvtss2si ebp, dword [rbp]
cvtss2si ebp, dword [rsi]
cvtss2si ebp, dword [rdi]
cvtss2si ebp, dword [rax + 2*rax]
cvtss2si ebp, dword [rcx + 2*rcx]
cvtss2si ebp, dword [rdx + 2*rdx]
cvtss2si ebp, dword [rbx + 2*rbx]
cvtss2si ebp, dword [rbp + 2*rbp]
cvtss2si ebp, dword [rsi + 2*rsi]
cvtss2si ebp, dword [rdi + 2*rdi]
cvtss2si esi, dword [rip + 0x13]
cvtss2si esi, dword [rip + 0x1235]
cvtss2si esi, dword [rip + 0x12345679]
cvtss2si esi, dword [rbx]
cvtss2si esi, dword [rcx + 0x14]
cvtss2si esi, dword [rdx + 0x15]
cvtss2si esi, dword [rbx + 0x1235]
cvtss2si esi, dword [rbx + 0x12345679]
cvtss2si esi, dword [rbx + rcx]
cvtss2si esi, dword [rbx + 4 * rcx]
cvtss2si esi, dword [rbx + rcx + 0x13]
cvtss2si esi, dword [rbx + rcx + 0x1235]
cvtss2si esi, dword [rbx + rcx + 0x12345679]
cvtss2si esi, dword [rbx + 4 * rcx + 0x13]
cvtss2si esi, dword [rbx + 4 * rcx + 0x1235]
cvtss2si esi, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si esi, dword [4 * rcx]
cvtss2si esi, dword [4 * rcx + 0x13]
cvtss2si esi, dword [4 * rcx + 0x1235]
cvtss2si esi, dword [4 * rcx + 0x12345679]
cvtss2si esi, dword [rbp]
cvtss2si esi, dword [rbp + 0x12]
cvtss2si esi, dword [rbp + 0x1234]
cvtss2si esi, dword [rbp + 0x12345678]
cvtss2si esi, dword [4 * rbp]
cvtss2si esi, dword [4 * rbp + 0x12]
cvtss2si esi, dword [4 * rbp + 0x1234]
cvtss2si esi, dword [4 * rbp + 0x12345678]
cvtss2si esi, dword [rbx + 4 * rbp]
cvtss2si esi, dword [rbx + 4 * rbp + 0x12]
cvtss2si esi, dword [rbx + 4 * rbp + 0x1234]
cvtss2si esi, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si esi, dword [rsp]
cvtss2si esi, dword [rsp + 0x12]
cvtss2si esi, dword [rsp + 0x1234]
cvtss2si esi, dword [rsp + 0x12345678]
cvtss2si esi, dword [rsp + rax]
cvtss2si esi, dword [rsp + rbp]
cvtss2si esi, dword [rsp + 2*rbp]
cvtss2si esi, dword [rsp + 4*rbp]
cvtss2si esi, dword [rsp + 8*rbp]
cvtss2si esi, dword [rax]
cvtss2si esi, dword [rcx]
cvtss2si esi, dword [rdx]
cvtss2si esi, dword [rbx]
cvtss2si esi, dword [rsp]
cvtss2si esi, dword [rbp]
cvtss2si esi, dword [rsi]
cvtss2si esi, dword [rdi]
cvtss2si esi, dword [rax + 2*rax]
cvtss2si esi, dword [rcx + 2*rcx]
cvtss2si esi, dword [rdx + 2*rdx]
cvtss2si esi, dword [rbx + 2*rbx]
cvtss2si esi, dword [rbp + 2*rbp]
cvtss2si esi, dword [rsi + 2*rsi]
cvtss2si esi, dword [rdi + 2*rdi]
cvtss2si edi, dword [rip + 0x13]
cvtss2si edi, dword [rip + 0x1235]
cvtss2si edi, dword [rip + 0x12345679]
cvtss2si edi, dword [rbx]
cvtss2si edi, dword [rcx + 0x14]
cvtss2si edi, dword [rdx + 0x15]
cvtss2si edi, dword [rbx + 0x1235]
cvtss2si edi, dword [rbx + 0x12345679]
cvtss2si edi, dword [rbx + rcx]
cvtss2si edi, dword [rbx + 4 * rcx]
cvtss2si edi, dword [rbx + rcx + 0x13]
cvtss2si edi, dword [rbx + rcx + 0x1235]
cvtss2si edi, dword [rbx + rcx + 0x12345679]
cvtss2si edi, dword [rbx + 4 * rcx + 0x13]
cvtss2si edi, dword [rbx + 4 * rcx + 0x1235]
cvtss2si edi, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si edi, dword [4 * rcx]
cvtss2si edi, dword [4 * rcx + 0x13]
cvtss2si edi, dword [4 * rcx + 0x1235]
cvtss2si edi, dword [4 * rcx + 0x12345679]
cvtss2si edi, dword [rbp]
cvtss2si edi, dword [rbp + 0x12]
cvtss2si edi, dword [rbp + 0x1234]
cvtss2si edi, dword [rbp + 0x12345678]
cvtss2si edi, dword [4 * rbp]
cvtss2si edi, dword [4 * rbp + 0x12]
cvtss2si edi, dword [4 * rbp + 0x1234]
cvtss2si edi, dword [4 * rbp + 0x12345678]
cvtss2si edi, dword [rbx + 4 * rbp]
cvtss2si edi, dword [rbx + 4 * rbp + 0x12]
cvtss2si edi, dword [rbx + 4 * rbp + 0x1234]
cvtss2si edi, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si edi, dword [rsp]
cvtss2si edi, dword [rsp + 0x12]
cvtss2si edi, dword [rsp + 0x1234]
cvtss2si edi, dword [rsp + 0x12345678]
cvtss2si edi, dword [rsp + rax]
cvtss2si edi, dword [rsp + rbp]
cvtss2si edi, dword [rsp + 2*rbp]
cvtss2si edi, dword [rsp + 4*rbp]
cvtss2si edi, dword [rsp + 8*rbp]
cvtss2si edi, dword [rax]
cvtss2si edi, dword [rcx]
cvtss2si edi, dword [rdx]
cvtss2si edi, dword [rbx]
cvtss2si edi, dword [rsp]
cvtss2si edi, dword [rbp]
cvtss2si edi, dword [rsi]
cvtss2si edi, dword [rdi]
cvtss2si edi, dword [rax + 2*rax]
cvtss2si edi, dword [rcx + 2*rcx]
cvtss2si edi, dword [rdx + 2*rdx]
cvtss2si edi, dword [rbx + 2*rbx]
cvtss2si edi, dword [rbp + 2*rbp]
cvtss2si edi, dword [rsi + 2*rsi]
cvtss2si edi, dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r64,xmm
; ------------------------------------------------------------------------------
cvtss2si rax, xmm0
cvtss2si rax, xmm1
cvtss2si rax, xmm2
cvtss2si rax, xmm3
cvtss2si rax, xmm4
cvtss2si rax, xmm5
cvtss2si rax, xmm6
cvtss2si rax, xmm7
cvtss2si rcx, xmm0
cvtss2si rcx, xmm1
cvtss2si rcx, xmm2
cvtss2si rcx, xmm3
cvtss2si rcx, xmm4
cvtss2si rcx, xmm5
cvtss2si rcx, xmm6
cvtss2si rcx, xmm7
cvtss2si rdx, xmm0
cvtss2si rdx, xmm1
cvtss2si rdx, xmm2
cvtss2si rdx, xmm3
cvtss2si rdx, xmm4
cvtss2si rdx, xmm5
cvtss2si rdx, xmm6
cvtss2si rdx, xmm7
cvtss2si rbx, xmm0
cvtss2si rbx, xmm1
cvtss2si rbx, xmm2
cvtss2si rbx, xmm3
cvtss2si rbx, xmm4
cvtss2si rbx, xmm5
cvtss2si rbx, xmm6
cvtss2si rbx, xmm7
cvtss2si rsp, xmm0
cvtss2si rsp, xmm1
cvtss2si rsp, xmm2
cvtss2si rsp, xmm3
cvtss2si rsp, xmm4
cvtss2si rsp, xmm5
cvtss2si rsp, xmm6
cvtss2si rsp, xmm7
cvtss2si rbp, xmm0
cvtss2si rbp, xmm1
cvtss2si rbp, xmm2
cvtss2si rbp, xmm3
cvtss2si rbp, xmm4
cvtss2si rbp, xmm5
cvtss2si rbp, xmm6
cvtss2si rbp, xmm7
cvtss2si rsi, xmm0
cvtss2si rsi, xmm1
cvtss2si rsi, xmm2
cvtss2si rsi, xmm3
cvtss2si rsi, xmm4
cvtss2si rsi, xmm5
cvtss2si rsi, xmm6
cvtss2si rsi, xmm7
cvtss2si rdi, xmm0
cvtss2si rdi, xmm1
cvtss2si rdi, xmm2
cvtss2si rdi, xmm3
cvtss2si rdi, xmm4
cvtss2si rdi, xmm5
cvtss2si rdi, xmm6
cvtss2si rdi, xmm7

; ------------------------------------------------------------------------------
; opcode r64,m32
; ------------------------------------------------------------------------------
cvtss2si rax, dword [rip + 0x13]
cvtss2si rax, dword [rip + 0x1235]
cvtss2si rax, dword [rip + 0x12345679]
cvtss2si rax, dword [rbx]
cvtss2si rax, dword [rcx + 0x14]
cvtss2si rax, dword [rdx + 0x15]
cvtss2si rax, dword [rbx + 0x1235]
cvtss2si rax, dword [rbx + 0x12345679]
cvtss2si rax, dword [rbx + rcx]
cvtss2si rax, dword [rbx + 4 * rcx]
cvtss2si rax, dword [rbx + rcx + 0x13]
cvtss2si rax, dword [rbx + rcx + 0x1235]
cvtss2si rax, dword [rbx + rcx + 0x12345679]
cvtss2si rax, dword [rbx + 4 * rcx + 0x13]
cvtss2si rax, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rax, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rax, dword [4 * rcx]
cvtss2si rax, dword [4 * rcx + 0x13]
cvtss2si rax, dword [4 * rcx + 0x1235]
cvtss2si rax, dword [4 * rcx + 0x12345679]
cvtss2si rax, dword [rbp]
cvtss2si rax, dword [rbp + 0x12]
cvtss2si rax, dword [rbp + 0x1234]
cvtss2si rax, dword [rbp + 0x12345678]
cvtss2si rax, dword [4 * rbp]
cvtss2si rax, dword [4 * rbp + 0x12]
cvtss2si rax, dword [4 * rbp + 0x1234]
cvtss2si rax, dword [4 * rbp + 0x12345678]
cvtss2si rax, dword [rbx + 4 * rbp]
cvtss2si rax, dword [rbx + 4 * rbp + 0x12]
cvtss2si rax, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rax, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rax, dword [rsp]
cvtss2si rax, dword [rsp + 0x12]
cvtss2si rax, dword [rsp + 0x1234]
cvtss2si rax, dword [rsp + 0x12345678]
cvtss2si rax, dword [rsp + rax]
cvtss2si rax, dword [rsp + rbp]
cvtss2si rax, dword [rsp + 2*rbp]
cvtss2si rax, dword [rsp + 4*rbp]
cvtss2si rax, dword [rsp + 8*rbp]
cvtss2si rax, dword [rax]
cvtss2si rax, dword [rcx]
cvtss2si rax, dword [rdx]
cvtss2si rax, dword [rbx]
cvtss2si rax, dword [rsp]
cvtss2si rax, dword [rbp]
cvtss2si rax, dword [rsi]
cvtss2si rax, dword [rdi]
cvtss2si rax, dword [rax + 2*rax]
cvtss2si rax, dword [rcx + 2*rcx]
cvtss2si rax, dword [rdx + 2*rdx]
cvtss2si rax, dword [rbx + 2*rbx]
cvtss2si rax, dword [rbp + 2*rbp]
cvtss2si rax, dword [rsi + 2*rsi]
cvtss2si rax, dword [rdi + 2*rdi]
cvtss2si rcx, dword [rip + 0x13]
cvtss2si rcx, dword [rip + 0x1235]
cvtss2si rcx, dword [rip + 0x12345679]
cvtss2si rcx, dword [rbx]
cvtss2si rcx, dword [rcx + 0x14]
cvtss2si rcx, dword [rdx + 0x15]
cvtss2si rcx, dword [rbx + 0x1235]
cvtss2si rcx, dword [rbx + 0x12345679]
cvtss2si rcx, dword [rbx + rcx]
cvtss2si rcx, dword [rbx + 4 * rcx]
cvtss2si rcx, dword [rbx + rcx + 0x13]
cvtss2si rcx, dword [rbx + rcx + 0x1235]
cvtss2si rcx, dword [rbx + rcx + 0x12345679]
cvtss2si rcx, dword [rbx + 4 * rcx + 0x13]
cvtss2si rcx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rcx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rcx, dword [4 * rcx]
cvtss2si rcx, dword [4 * rcx + 0x13]
cvtss2si rcx, dword [4 * rcx + 0x1235]
cvtss2si rcx, dword [4 * rcx + 0x12345679]
cvtss2si rcx, dword [rbp]
cvtss2si rcx, dword [rbp + 0x12]
cvtss2si rcx, dword [rbp + 0x1234]
cvtss2si rcx, dword [rbp + 0x12345678]
cvtss2si rcx, dword [4 * rbp]
cvtss2si rcx, dword [4 * rbp + 0x12]
cvtss2si rcx, dword [4 * rbp + 0x1234]
cvtss2si rcx, dword [4 * rbp + 0x12345678]
cvtss2si rcx, dword [rbx + 4 * rbp]
cvtss2si rcx, dword [rbx + 4 * rbp + 0x12]
cvtss2si rcx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rcx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rcx, dword [rsp]
cvtss2si rcx, dword [rsp + 0x12]
cvtss2si rcx, dword [rsp + 0x1234]
cvtss2si rcx, dword [rsp + 0x12345678]
cvtss2si rcx, dword [rsp + rax]
cvtss2si rcx, dword [rsp + rbp]
cvtss2si rcx, dword [rsp + 2*rbp]
cvtss2si rcx, dword [rsp + 4*rbp]
cvtss2si rcx, dword [rsp + 8*rbp]
cvtss2si rcx, dword [rax]
cvtss2si rcx, dword [rcx]
cvtss2si rcx, dword [rdx]
cvtss2si rcx, dword [rbx]
cvtss2si rcx, dword [rsp]
cvtss2si rcx, dword [rbp]
cvtss2si rcx, dword [rsi]
cvtss2si rcx, dword [rdi]
cvtss2si rcx, dword [rax + 2*rax]
cvtss2si rcx, dword [rcx + 2*rcx]
cvtss2si rcx, dword [rdx + 2*rdx]
cvtss2si rcx, dword [rbx + 2*rbx]
cvtss2si rcx, dword [rbp + 2*rbp]
cvtss2si rcx, dword [rsi + 2*rsi]
cvtss2si rcx, dword [rdi + 2*rdi]
cvtss2si rdx, dword [rip + 0x13]
cvtss2si rdx, dword [rip + 0x1235]
cvtss2si rdx, dword [rip + 0x12345679]
cvtss2si rdx, dword [rbx]
cvtss2si rdx, dword [rcx + 0x14]
cvtss2si rdx, dword [rdx + 0x15]
cvtss2si rdx, dword [rbx + 0x1235]
cvtss2si rdx, dword [rbx + 0x12345679]
cvtss2si rdx, dword [rbx + rcx]
cvtss2si rdx, dword [rbx + 4 * rcx]
cvtss2si rdx, dword [rbx + rcx + 0x13]
cvtss2si rdx, dword [rbx + rcx + 0x1235]
cvtss2si rdx, dword [rbx + rcx + 0x12345679]
cvtss2si rdx, dword [rbx + 4 * rcx + 0x13]
cvtss2si rdx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rdx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rdx, dword [4 * rcx]
cvtss2si rdx, dword [4 * rcx + 0x13]
cvtss2si rdx, dword [4 * rcx + 0x1235]
cvtss2si rdx, dword [4 * rcx + 0x12345679]
cvtss2si rdx, dword [rbp]
cvtss2si rdx, dword [rbp + 0x12]
cvtss2si rdx, dword [rbp + 0x1234]
cvtss2si rdx, dword [rbp + 0x12345678]
cvtss2si rdx, dword [4 * rbp]
cvtss2si rdx, dword [4 * rbp + 0x12]
cvtss2si rdx, dword [4 * rbp + 0x1234]
cvtss2si rdx, dword [4 * rbp + 0x12345678]
cvtss2si rdx, dword [rbx + 4 * rbp]
cvtss2si rdx, dword [rbx + 4 * rbp + 0x12]
cvtss2si rdx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rdx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rdx, dword [rsp]
cvtss2si rdx, dword [rsp + 0x12]
cvtss2si rdx, dword [rsp + 0x1234]
cvtss2si rdx, dword [rsp + 0x12345678]
cvtss2si rdx, dword [rsp + rax]
cvtss2si rdx, dword [rsp + rbp]
cvtss2si rdx, dword [rsp + 2*rbp]
cvtss2si rdx, dword [rsp + 4*rbp]
cvtss2si rdx, dword [rsp + 8*rbp]
cvtss2si rdx, dword [rax]
cvtss2si rdx, dword [rcx]
cvtss2si rdx, dword [rdx]
cvtss2si rdx, dword [rbx]
cvtss2si rdx, dword [rsp]
cvtss2si rdx, dword [rbp]
cvtss2si rdx, dword [rsi]
cvtss2si rdx, dword [rdi]
cvtss2si rdx, dword [rax + 2*rax]
cvtss2si rdx, dword [rcx + 2*rcx]
cvtss2si rdx, dword [rdx + 2*rdx]
cvtss2si rdx, dword [rbx + 2*rbx]
cvtss2si rdx, dword [rbp + 2*rbp]
cvtss2si rdx, dword [rsi + 2*rsi]
cvtss2si rdx, dword [rdi + 2*rdi]
cvtss2si rbx, dword [rip + 0x13]
cvtss2si rbx, dword [rip + 0x1235]
cvtss2si rbx, dword [rip + 0x12345679]
cvtss2si rbx, dword [rbx]
cvtss2si rbx, dword [rcx + 0x14]
cvtss2si rbx, dword [rdx + 0x15]
cvtss2si rbx, dword [rbx + 0x1235]
cvtss2si rbx, dword [rbx + 0x12345679]
cvtss2si rbx, dword [rbx + rcx]
cvtss2si rbx, dword [rbx + 4 * rcx]
cvtss2si rbx, dword [rbx + rcx + 0x13]
cvtss2si rbx, dword [rbx + rcx + 0x1235]
cvtss2si rbx, dword [rbx + rcx + 0x12345679]
cvtss2si rbx, dword [rbx + 4 * rcx + 0x13]
cvtss2si rbx, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rbx, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rbx, dword [4 * rcx]
cvtss2si rbx, dword [4 * rcx + 0x13]
cvtss2si rbx, dword [4 * rcx + 0x1235]
cvtss2si rbx, dword [4 * rcx + 0x12345679]
cvtss2si rbx, dword [rbp]
cvtss2si rbx, dword [rbp + 0x12]
cvtss2si rbx, dword [rbp + 0x1234]
cvtss2si rbx, dword [rbp + 0x12345678]
cvtss2si rbx, dword [4 * rbp]
cvtss2si rbx, dword [4 * rbp + 0x12]
cvtss2si rbx, dword [4 * rbp + 0x1234]
cvtss2si rbx, dword [4 * rbp + 0x12345678]
cvtss2si rbx, dword [rbx + 4 * rbp]
cvtss2si rbx, dword [rbx + 4 * rbp + 0x12]
cvtss2si rbx, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rbx, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rbx, dword [rsp]
cvtss2si rbx, dword [rsp + 0x12]
cvtss2si rbx, dword [rsp + 0x1234]
cvtss2si rbx, dword [rsp + 0x12345678]
cvtss2si rbx, dword [rsp + rax]
cvtss2si rbx, dword [rsp + rbp]
cvtss2si rbx, dword [rsp + 2*rbp]
cvtss2si rbx, dword [rsp + 4*rbp]
cvtss2si rbx, dword [rsp + 8*rbp]
cvtss2si rbx, dword [rax]
cvtss2si rbx, dword [rcx]
cvtss2si rbx, dword [rdx]
cvtss2si rbx, dword [rbx]
cvtss2si rbx, dword [rsp]
cvtss2si rbx, dword [rbp]
cvtss2si rbx, dword [rsi]
cvtss2si rbx, dword [rdi]
cvtss2si rbx, dword [rax + 2*rax]
cvtss2si rbx, dword [rcx + 2*rcx]
cvtss2si rbx, dword [rdx + 2*rdx]
cvtss2si rbx, dword [rbx + 2*rbx]
cvtss2si rbx, dword [rbp + 2*rbp]
cvtss2si rbx, dword [rsi + 2*rsi]
cvtss2si rbx, dword [rdi + 2*rdi]
cvtss2si rsp, dword [rip + 0x13]
cvtss2si rsp, dword [rip + 0x1235]
cvtss2si rsp, dword [rip + 0x12345679]
cvtss2si rsp, dword [rbx]
cvtss2si rsp, dword [rcx + 0x14]
cvtss2si rsp, dword [rdx + 0x15]
cvtss2si rsp, dword [rbx + 0x1235]
cvtss2si rsp, dword [rbx + 0x12345679]
cvtss2si rsp, dword [rbx + rcx]
cvtss2si rsp, dword [rbx + 4 * rcx]
cvtss2si rsp, dword [rbx + rcx + 0x13]
cvtss2si rsp, dword [rbx + rcx + 0x1235]
cvtss2si rsp, dword [rbx + rcx + 0x12345679]
cvtss2si rsp, dword [rbx + 4 * rcx + 0x13]
cvtss2si rsp, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rsp, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rsp, dword [4 * rcx]
cvtss2si rsp, dword [4 * rcx + 0x13]
cvtss2si rsp, dword [4 * rcx + 0x1235]
cvtss2si rsp, dword [4 * rcx + 0x12345679]
cvtss2si rsp, dword [rbp]
cvtss2si rsp, dword [rbp + 0x12]
cvtss2si rsp, dword [rbp + 0x1234]
cvtss2si rsp, dword [rbp + 0x12345678]
cvtss2si rsp, dword [4 * rbp]
cvtss2si rsp, dword [4 * rbp + 0x12]
cvtss2si rsp, dword [4 * rbp + 0x1234]
cvtss2si rsp, dword [4 * rbp + 0x12345678]
cvtss2si rsp, dword [rbx + 4 * rbp]
cvtss2si rsp, dword [rbx + 4 * rbp + 0x12]
cvtss2si rsp, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rsp, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rsp, dword [rsp]
cvtss2si rsp, dword [rsp + 0x12]
cvtss2si rsp, dword [rsp + 0x1234]
cvtss2si rsp, dword [rsp + 0x12345678]
cvtss2si rsp, dword [rsp + rax]
cvtss2si rsp, dword [rsp + rbp]
cvtss2si rsp, dword [rsp + 2*rbp]
cvtss2si rsp, dword [rsp + 4*rbp]
cvtss2si rsp, dword [rsp + 8*rbp]
cvtss2si rsp, dword [rax]
cvtss2si rsp, dword [rcx]
cvtss2si rsp, dword [rdx]
cvtss2si rsp, dword [rbx]
cvtss2si rsp, dword [rsp]
cvtss2si rsp, dword [rbp]
cvtss2si rsp, dword [rsi]
cvtss2si rsp, dword [rdi]
cvtss2si rsp, dword [rax + 2*rax]
cvtss2si rsp, dword [rcx + 2*rcx]
cvtss2si rsp, dword [rdx + 2*rdx]
cvtss2si rsp, dword [rbx + 2*rbx]
cvtss2si rsp, dword [rbp + 2*rbp]
cvtss2si rsp, dword [rsi + 2*rsi]
cvtss2si rsp, dword [rdi + 2*rdi]
cvtss2si rbp, dword [rip + 0x13]
cvtss2si rbp, dword [rip + 0x1235]
cvtss2si rbp, dword [rip + 0x12345679]
cvtss2si rbp, dword [rbx]
cvtss2si rbp, dword [rcx + 0x14]
cvtss2si rbp, dword [rdx + 0x15]
cvtss2si rbp, dword [rbx + 0x1235]
cvtss2si rbp, dword [rbx + 0x12345679]
cvtss2si rbp, dword [rbx + rcx]
cvtss2si rbp, dword [rbx + 4 * rcx]
cvtss2si rbp, dword [rbx + rcx + 0x13]
cvtss2si rbp, dword [rbx + rcx + 0x1235]
cvtss2si rbp, dword [rbx + rcx + 0x12345679]
cvtss2si rbp, dword [rbx + 4 * rcx + 0x13]
cvtss2si rbp, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rbp, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rbp, dword [4 * rcx]
cvtss2si rbp, dword [4 * rcx + 0x13]
cvtss2si rbp, dword [4 * rcx + 0x1235]
cvtss2si rbp, dword [4 * rcx + 0x12345679]
cvtss2si rbp, dword [rbp]
cvtss2si rbp, dword [rbp + 0x12]
cvtss2si rbp, dword [rbp + 0x1234]
cvtss2si rbp, dword [rbp + 0x12345678]
cvtss2si rbp, dword [4 * rbp]
cvtss2si rbp, dword [4 * rbp + 0x12]
cvtss2si rbp, dword [4 * rbp + 0x1234]
cvtss2si rbp, dword [4 * rbp + 0x12345678]
cvtss2si rbp, dword [rbx + 4 * rbp]
cvtss2si rbp, dword [rbx + 4 * rbp + 0x12]
cvtss2si rbp, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rbp, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rbp, dword [rsp]
cvtss2si rbp, dword [rsp + 0x12]
cvtss2si rbp, dword [rsp + 0x1234]
cvtss2si rbp, dword [rsp + 0x12345678]
cvtss2si rbp, dword [rsp + rax]
cvtss2si rbp, dword [rsp + rbp]
cvtss2si rbp, dword [rsp + 2*rbp]
cvtss2si rbp, dword [rsp + 4*rbp]
cvtss2si rbp, dword [rsp + 8*rbp]
cvtss2si rbp, dword [rax]
cvtss2si rbp, dword [rcx]
cvtss2si rbp, dword [rdx]
cvtss2si rbp, dword [rbx]
cvtss2si rbp, dword [rsp]
cvtss2si rbp, dword [rbp]
cvtss2si rbp, dword [rsi]
cvtss2si rbp, dword [rdi]
cvtss2si rbp, dword [rax + 2*rax]
cvtss2si rbp, dword [rcx + 2*rcx]
cvtss2si rbp, dword [rdx + 2*rdx]
cvtss2si rbp, dword [rbx + 2*rbx]
cvtss2si rbp, dword [rbp + 2*rbp]
cvtss2si rbp, dword [rsi + 2*rsi]
cvtss2si rbp, dword [rdi + 2*rdi]
cvtss2si rsi, dword [rip + 0x13]
cvtss2si rsi, dword [rip + 0x1235]
cvtss2si rsi, dword [rip + 0x12345679]
cvtss2si rsi, dword [rbx]
cvtss2si rsi, dword [rcx + 0x14]
cvtss2si rsi, dword [rdx + 0x15]
cvtss2si rsi, dword [rbx + 0x1235]
cvtss2si rsi, dword [rbx + 0x12345679]
cvtss2si rsi, dword [rbx + rcx]
cvtss2si rsi, dword [rbx + 4 * rcx]
cvtss2si rsi, dword [rbx + rcx + 0x13]
cvtss2si rsi, dword [rbx + rcx + 0x1235]
cvtss2si rsi, dword [rbx + rcx + 0x12345679]
cvtss2si rsi, dword [rbx + 4 * rcx + 0x13]
cvtss2si rsi, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rsi, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rsi, dword [4 * rcx]
cvtss2si rsi, dword [4 * rcx + 0x13]
cvtss2si rsi, dword [4 * rcx + 0x1235]
cvtss2si rsi, dword [4 * rcx + 0x12345679]
cvtss2si rsi, dword [rbp]
cvtss2si rsi, dword [rbp + 0x12]
cvtss2si rsi, dword [rbp + 0x1234]
cvtss2si rsi, dword [rbp + 0x12345678]
cvtss2si rsi, dword [4 * rbp]
cvtss2si rsi, dword [4 * rbp + 0x12]
cvtss2si rsi, dword [4 * rbp + 0x1234]
cvtss2si rsi, dword [4 * rbp + 0x12345678]
cvtss2si rsi, dword [rbx + 4 * rbp]
cvtss2si rsi, dword [rbx + 4 * rbp + 0x12]
cvtss2si rsi, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rsi, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rsi, dword [rsp]
cvtss2si rsi, dword [rsp + 0x12]
cvtss2si rsi, dword [rsp + 0x1234]
cvtss2si rsi, dword [rsp + 0x12345678]
cvtss2si rsi, dword [rsp + rax]
cvtss2si rsi, dword [rsp + rbp]
cvtss2si rsi, dword [rsp + 2*rbp]
cvtss2si rsi, dword [rsp + 4*rbp]
cvtss2si rsi, dword [rsp + 8*rbp]
cvtss2si rsi, dword [rax]
cvtss2si rsi, dword [rcx]
cvtss2si rsi, dword [rdx]
cvtss2si rsi, dword [rbx]
cvtss2si rsi, dword [rsp]
cvtss2si rsi, dword [rbp]
cvtss2si rsi, dword [rsi]
cvtss2si rsi, dword [rdi]
cvtss2si rsi, dword [rax + 2*rax]
cvtss2si rsi, dword [rcx + 2*rcx]
cvtss2si rsi, dword [rdx + 2*rdx]
cvtss2si rsi, dword [rbx + 2*rbx]
cvtss2si rsi, dword [rbp + 2*rbp]
cvtss2si rsi, dword [rsi + 2*rsi]
cvtss2si rsi, dword [rdi + 2*rdi]
cvtss2si rdi, dword [rip + 0x13]
cvtss2si rdi, dword [rip + 0x1235]
cvtss2si rdi, dword [rip + 0x12345679]
cvtss2si rdi, dword [rbx]
cvtss2si rdi, dword [rcx + 0x14]
cvtss2si rdi, dword [rdx + 0x15]
cvtss2si rdi, dword [rbx + 0x1235]
cvtss2si rdi, dword [rbx + 0x12345679]
cvtss2si rdi, dword [rbx + rcx]
cvtss2si rdi, dword [rbx + 4 * rcx]
cvtss2si rdi, dword [rbx + rcx + 0x13]
cvtss2si rdi, dword [rbx + rcx + 0x1235]
cvtss2si rdi, dword [rbx + rcx + 0x12345679]
cvtss2si rdi, dword [rbx + 4 * rcx + 0x13]
cvtss2si rdi, dword [rbx + 4 * rcx + 0x1235]
cvtss2si rdi, dword [rbx + 8 * rcx + 0x12345679]
cvtss2si rdi, dword [4 * rcx]
cvtss2si rdi, dword [4 * rcx + 0x13]
cvtss2si rdi, dword [4 * rcx + 0x1235]
cvtss2si rdi, dword [4 * rcx + 0x12345679]
cvtss2si rdi, dword [rbp]
cvtss2si rdi, dword [rbp + 0x12]
cvtss2si rdi, dword [rbp + 0x1234]
cvtss2si rdi, dword [rbp + 0x12345678]
cvtss2si rdi, dword [4 * rbp]
cvtss2si rdi, dword [4 * rbp + 0x12]
cvtss2si rdi, dword [4 * rbp + 0x1234]
cvtss2si rdi, dword [4 * rbp + 0x12345678]
cvtss2si rdi, dword [rbx + 4 * rbp]
cvtss2si rdi, dword [rbx + 4 * rbp + 0x12]
cvtss2si rdi, dword [rbx + 4 * rbp + 0x1234]
cvtss2si rdi, dword [rbx + 4 * rbp + 0x12345678]
cvtss2si rdi, dword [rsp]
cvtss2si rdi, dword [rsp + 0x12]
cvtss2si rdi, dword [rsp + 0x1234]
cvtss2si rdi, dword [rsp + 0x12345678]
cvtss2si rdi, dword [rsp + rax]
cvtss2si rdi, dword [rsp + rbp]
cvtss2si rdi, dword [rsp + 2*rbp]
cvtss2si rdi, dword [rsp + 4*rbp]
cvtss2si rdi, dword [rsp + 8*rbp]
cvtss2si rdi, dword [rax]
cvtss2si rdi, dword [rcx]
cvtss2si rdi, dword [rdx]
cvtss2si rdi, dword [rbx]
cvtss2si rdi, dword [rsp]
cvtss2si rdi, dword [rbp]
cvtss2si rdi, dword [rsi]
cvtss2si rdi, dword [rdi]
cvtss2si rdi, dword [rax + 2*rax]
cvtss2si rdi, dword [rcx + 2*rcx]
cvtss2si rdi, dword [rdx + 2*rdx]
cvtss2si rdi, dword [rbx + 2*rbx]
cvtss2si rdi, dword [rbp + 2*rbp]
cvtss2si rdi, dword [rsi + 2*rsi]
cvtss2si rdi, dword [rdi + 2*rdi]

