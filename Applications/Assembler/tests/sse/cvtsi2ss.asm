use64
; ------------------------------------------------------------------------------
; opcode xmm,r32
; ------------------------------------------------------------------------------
cvtsi2ss xmm0, eax
cvtsi2ss xmm0, ecx
cvtsi2ss xmm0, edx
cvtsi2ss xmm0, ebx
cvtsi2ss xmm0, esp
cvtsi2ss xmm0, ebp
cvtsi2ss xmm0, esi
cvtsi2ss xmm0, edi
cvtsi2ss xmm1, eax
cvtsi2ss xmm1, ecx
cvtsi2ss xmm1, edx
cvtsi2ss xmm1, ebx
cvtsi2ss xmm1, esp
cvtsi2ss xmm1, ebp
cvtsi2ss xmm1, esi
cvtsi2ss xmm1, edi
cvtsi2ss xmm2, eax
cvtsi2ss xmm2, ecx
cvtsi2ss xmm2, edx
cvtsi2ss xmm2, ebx
cvtsi2ss xmm2, esp
cvtsi2ss xmm2, ebp
cvtsi2ss xmm2, esi
cvtsi2ss xmm2, edi
cvtsi2ss xmm3, eax
cvtsi2ss xmm3, ecx
cvtsi2ss xmm3, edx
cvtsi2ss xmm3, ebx
cvtsi2ss xmm3, esp
cvtsi2ss xmm3, ebp
cvtsi2ss xmm3, esi
cvtsi2ss xmm3, edi
cvtsi2ss xmm4, eax
cvtsi2ss xmm4, ecx
cvtsi2ss xmm4, edx
cvtsi2ss xmm4, ebx
cvtsi2ss xmm4, esp
cvtsi2ss xmm4, ebp
cvtsi2ss xmm4, esi
cvtsi2ss xmm4, edi
cvtsi2ss xmm5, eax
cvtsi2ss xmm5, ecx
cvtsi2ss xmm5, edx
cvtsi2ss xmm5, ebx
cvtsi2ss xmm5, esp
cvtsi2ss xmm5, ebp
cvtsi2ss xmm5, esi
cvtsi2ss xmm5, edi
cvtsi2ss xmm6, eax
cvtsi2ss xmm6, ecx
cvtsi2ss xmm6, edx
cvtsi2ss xmm6, ebx
cvtsi2ss xmm6, esp
cvtsi2ss xmm6, ebp
cvtsi2ss xmm6, esi
cvtsi2ss xmm6, edi
cvtsi2ss xmm7, eax
cvtsi2ss xmm7, ecx
cvtsi2ss xmm7, edx
cvtsi2ss xmm7, ebx
cvtsi2ss xmm7, esp
cvtsi2ss xmm7, ebp
cvtsi2ss xmm7, esi
cvtsi2ss xmm7, edi

; ------------------------------------------------------------------------------
; opcode xmm,m32
; ------------------------------------------------------------------------------
cvtsi2ss xmm0, dword [rip + 0x13]
cvtsi2ss xmm0, dword [rip + 0x1235]
cvtsi2ss xmm0, dword [rip + 0x12345679]
cvtsi2ss xmm0, dword [rbx]
cvtsi2ss xmm0, dword [rcx + 0x14]
cvtsi2ss xmm0, dword [rdx + 0x15]
cvtsi2ss xmm0, dword [rbx + 0x1235]
cvtsi2ss xmm0, dword [rbx + 0x12345679]
cvtsi2ss xmm0, dword [rbx + rcx]
cvtsi2ss xmm0, dword [rbx + 4 * rcx]
cvtsi2ss xmm0, dword [rbx + rcx + 0x13]
cvtsi2ss xmm0, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm0, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm0, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm0, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm0, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm0, dword [4 * rcx]
cvtsi2ss xmm0, dword [4 * rcx + 0x13]
cvtsi2ss xmm0, dword [4 * rcx + 0x1235]
cvtsi2ss xmm0, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm0, dword [rbp]
cvtsi2ss xmm0, dword [rbp + 0x12]
cvtsi2ss xmm0, dword [rbp + 0x1234]
cvtsi2ss xmm0, dword [rbp + 0x12345678]
cvtsi2ss xmm0, dword [4 * rbp]
cvtsi2ss xmm0, dword [4 * rbp + 0x12]
cvtsi2ss xmm0, dword [4 * rbp + 0x1234]
cvtsi2ss xmm0, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm0, dword [rbx + 4 * rbp]
cvtsi2ss xmm0, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm0, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm0, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm0, dword [rsp]
cvtsi2ss xmm0, dword [rsp + 0x12]
cvtsi2ss xmm0, dword [rsp + 0x1234]
cvtsi2ss xmm0, dword [rsp + 0x12345678]
cvtsi2ss xmm0, dword [rsp + rax]
cvtsi2ss xmm0, dword [rsp + rbp]
cvtsi2ss xmm0, dword [rsp + 2*rbp]
cvtsi2ss xmm0, dword [rsp + 4*rbp]
cvtsi2ss xmm0, dword [rsp + 8*rbp]
cvtsi2ss xmm0, dword [rax]
cvtsi2ss xmm0, dword [rcx]
cvtsi2ss xmm0, dword [rdx]
cvtsi2ss xmm0, dword [rbx]
cvtsi2ss xmm0, dword [rsp]
cvtsi2ss xmm0, dword [rbp]
cvtsi2ss xmm0, dword [rsi]
cvtsi2ss xmm0, dword [rdi]
cvtsi2ss xmm0, dword [rax + 2*rax]
cvtsi2ss xmm0, dword [rcx + 2*rcx]
cvtsi2ss xmm0, dword [rdx + 2*rdx]
cvtsi2ss xmm0, dword [rbx + 2*rbx]
cvtsi2ss xmm0, dword [rbp + 2*rbp]
cvtsi2ss xmm0, dword [rsi + 2*rsi]
cvtsi2ss xmm0, dword [rdi + 2*rdi]
cvtsi2ss xmm1, dword [rip + 0x13]
cvtsi2ss xmm1, dword [rip + 0x1235]
cvtsi2ss xmm1, dword [rip + 0x12345679]
cvtsi2ss xmm1, dword [rbx]
cvtsi2ss xmm1, dword [rcx + 0x14]
cvtsi2ss xmm1, dword [rdx + 0x15]
cvtsi2ss xmm1, dword [rbx + 0x1235]
cvtsi2ss xmm1, dword [rbx + 0x12345679]
cvtsi2ss xmm1, dword [rbx + rcx]
cvtsi2ss xmm1, dword [rbx + 4 * rcx]
cvtsi2ss xmm1, dword [rbx + rcx + 0x13]
cvtsi2ss xmm1, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm1, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm1, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm1, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm1, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm1, dword [4 * rcx]
cvtsi2ss xmm1, dword [4 * rcx + 0x13]
cvtsi2ss xmm1, dword [4 * rcx + 0x1235]
cvtsi2ss xmm1, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm1, dword [rbp]
cvtsi2ss xmm1, dword [rbp + 0x12]
cvtsi2ss xmm1, dword [rbp + 0x1234]
cvtsi2ss xmm1, dword [rbp + 0x12345678]
cvtsi2ss xmm1, dword [4 * rbp]
cvtsi2ss xmm1, dword [4 * rbp + 0x12]
cvtsi2ss xmm1, dword [4 * rbp + 0x1234]
cvtsi2ss xmm1, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm1, dword [rbx + 4 * rbp]
cvtsi2ss xmm1, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm1, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm1, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm1, dword [rsp]
cvtsi2ss xmm1, dword [rsp + 0x12]
cvtsi2ss xmm1, dword [rsp + 0x1234]
cvtsi2ss xmm1, dword [rsp + 0x12345678]
cvtsi2ss xmm1, dword [rsp + rax]
cvtsi2ss xmm1, dword [rsp + rbp]
cvtsi2ss xmm1, dword [rsp + 2*rbp]
cvtsi2ss xmm1, dword [rsp + 4*rbp]
cvtsi2ss xmm1, dword [rsp + 8*rbp]
cvtsi2ss xmm1, dword [rax]
cvtsi2ss xmm1, dword [rcx]
cvtsi2ss xmm1, dword [rdx]
cvtsi2ss xmm1, dword [rbx]
cvtsi2ss xmm1, dword [rsp]
cvtsi2ss xmm1, dword [rbp]
cvtsi2ss xmm1, dword [rsi]
cvtsi2ss xmm1, dword [rdi]
cvtsi2ss xmm1, dword [rax + 2*rax]
cvtsi2ss xmm1, dword [rcx + 2*rcx]
cvtsi2ss xmm1, dword [rdx + 2*rdx]
cvtsi2ss xmm1, dword [rbx + 2*rbx]
cvtsi2ss xmm1, dword [rbp + 2*rbp]
cvtsi2ss xmm1, dword [rsi + 2*rsi]
cvtsi2ss xmm1, dword [rdi + 2*rdi]
cvtsi2ss xmm2, dword [rip + 0x13]
cvtsi2ss xmm2, dword [rip + 0x1235]
cvtsi2ss xmm2, dword [rip + 0x12345679]
cvtsi2ss xmm2, dword [rbx]
cvtsi2ss xmm2, dword [rcx + 0x14]
cvtsi2ss xmm2, dword [rdx + 0x15]
cvtsi2ss xmm2, dword [rbx + 0x1235]
cvtsi2ss xmm2, dword [rbx + 0x12345679]
cvtsi2ss xmm2, dword [rbx + rcx]
cvtsi2ss xmm2, dword [rbx + 4 * rcx]
cvtsi2ss xmm2, dword [rbx + rcx + 0x13]
cvtsi2ss xmm2, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm2, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm2, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm2, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm2, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm2, dword [4 * rcx]
cvtsi2ss xmm2, dword [4 * rcx + 0x13]
cvtsi2ss xmm2, dword [4 * rcx + 0x1235]
cvtsi2ss xmm2, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm2, dword [rbp]
cvtsi2ss xmm2, dword [rbp + 0x12]
cvtsi2ss xmm2, dword [rbp + 0x1234]
cvtsi2ss xmm2, dword [rbp + 0x12345678]
cvtsi2ss xmm2, dword [4 * rbp]
cvtsi2ss xmm2, dword [4 * rbp + 0x12]
cvtsi2ss xmm2, dword [4 * rbp + 0x1234]
cvtsi2ss xmm2, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm2, dword [rbx + 4 * rbp]
cvtsi2ss xmm2, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm2, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm2, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm2, dword [rsp]
cvtsi2ss xmm2, dword [rsp + 0x12]
cvtsi2ss xmm2, dword [rsp + 0x1234]
cvtsi2ss xmm2, dword [rsp + 0x12345678]
cvtsi2ss xmm2, dword [rsp + rax]
cvtsi2ss xmm2, dword [rsp + rbp]
cvtsi2ss xmm2, dword [rsp + 2*rbp]
cvtsi2ss xmm2, dword [rsp + 4*rbp]
cvtsi2ss xmm2, dword [rsp + 8*rbp]
cvtsi2ss xmm2, dword [rax]
cvtsi2ss xmm2, dword [rcx]
cvtsi2ss xmm2, dword [rdx]
cvtsi2ss xmm2, dword [rbx]
cvtsi2ss xmm2, dword [rsp]
cvtsi2ss xmm2, dword [rbp]
cvtsi2ss xmm2, dword [rsi]
cvtsi2ss xmm2, dword [rdi]
cvtsi2ss xmm2, dword [rax + 2*rax]
cvtsi2ss xmm2, dword [rcx + 2*rcx]
cvtsi2ss xmm2, dword [rdx + 2*rdx]
cvtsi2ss xmm2, dword [rbx + 2*rbx]
cvtsi2ss xmm2, dword [rbp + 2*rbp]
cvtsi2ss xmm2, dword [rsi + 2*rsi]
cvtsi2ss xmm2, dword [rdi + 2*rdi]
cvtsi2ss xmm3, dword [rip + 0x13]
cvtsi2ss xmm3, dword [rip + 0x1235]
cvtsi2ss xmm3, dword [rip + 0x12345679]
cvtsi2ss xmm3, dword [rbx]
cvtsi2ss xmm3, dword [rcx + 0x14]
cvtsi2ss xmm3, dword [rdx + 0x15]
cvtsi2ss xmm3, dword [rbx + 0x1235]
cvtsi2ss xmm3, dword [rbx + 0x12345679]
cvtsi2ss xmm3, dword [rbx + rcx]
cvtsi2ss xmm3, dword [rbx + 4 * rcx]
cvtsi2ss xmm3, dword [rbx + rcx + 0x13]
cvtsi2ss xmm3, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm3, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm3, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm3, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm3, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm3, dword [4 * rcx]
cvtsi2ss xmm3, dword [4 * rcx + 0x13]
cvtsi2ss xmm3, dword [4 * rcx + 0x1235]
cvtsi2ss xmm3, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm3, dword [rbp]
cvtsi2ss xmm3, dword [rbp + 0x12]
cvtsi2ss xmm3, dword [rbp + 0x1234]
cvtsi2ss xmm3, dword [rbp + 0x12345678]
cvtsi2ss xmm3, dword [4 * rbp]
cvtsi2ss xmm3, dword [4 * rbp + 0x12]
cvtsi2ss xmm3, dword [4 * rbp + 0x1234]
cvtsi2ss xmm3, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm3, dword [rbx + 4 * rbp]
cvtsi2ss xmm3, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm3, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm3, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm3, dword [rsp]
cvtsi2ss xmm3, dword [rsp + 0x12]
cvtsi2ss xmm3, dword [rsp + 0x1234]
cvtsi2ss xmm3, dword [rsp + 0x12345678]
cvtsi2ss xmm3, dword [rsp + rax]
cvtsi2ss xmm3, dword [rsp + rbp]
cvtsi2ss xmm3, dword [rsp + 2*rbp]
cvtsi2ss xmm3, dword [rsp + 4*rbp]
cvtsi2ss xmm3, dword [rsp + 8*rbp]
cvtsi2ss xmm3, dword [rax]
cvtsi2ss xmm3, dword [rcx]
cvtsi2ss xmm3, dword [rdx]
cvtsi2ss xmm3, dword [rbx]
cvtsi2ss xmm3, dword [rsp]
cvtsi2ss xmm3, dword [rbp]
cvtsi2ss xmm3, dword [rsi]
cvtsi2ss xmm3, dword [rdi]
cvtsi2ss xmm3, dword [rax + 2*rax]
cvtsi2ss xmm3, dword [rcx + 2*rcx]
cvtsi2ss xmm3, dword [rdx + 2*rdx]
cvtsi2ss xmm3, dword [rbx + 2*rbx]
cvtsi2ss xmm3, dword [rbp + 2*rbp]
cvtsi2ss xmm3, dword [rsi + 2*rsi]
cvtsi2ss xmm3, dword [rdi + 2*rdi]
cvtsi2ss xmm4, dword [rip + 0x13]
cvtsi2ss xmm4, dword [rip + 0x1235]
cvtsi2ss xmm4, dword [rip + 0x12345679]
cvtsi2ss xmm4, dword [rbx]
cvtsi2ss xmm4, dword [rcx + 0x14]
cvtsi2ss xmm4, dword [rdx + 0x15]
cvtsi2ss xmm4, dword [rbx + 0x1235]
cvtsi2ss xmm4, dword [rbx + 0x12345679]
cvtsi2ss xmm4, dword [rbx + rcx]
cvtsi2ss xmm4, dword [rbx + 4 * rcx]
cvtsi2ss xmm4, dword [rbx + rcx + 0x13]
cvtsi2ss xmm4, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm4, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm4, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm4, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm4, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm4, dword [4 * rcx]
cvtsi2ss xmm4, dword [4 * rcx + 0x13]
cvtsi2ss xmm4, dword [4 * rcx + 0x1235]
cvtsi2ss xmm4, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm4, dword [rbp]
cvtsi2ss xmm4, dword [rbp + 0x12]
cvtsi2ss xmm4, dword [rbp + 0x1234]
cvtsi2ss xmm4, dword [rbp + 0x12345678]
cvtsi2ss xmm4, dword [4 * rbp]
cvtsi2ss xmm4, dword [4 * rbp + 0x12]
cvtsi2ss xmm4, dword [4 * rbp + 0x1234]
cvtsi2ss xmm4, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm4, dword [rbx + 4 * rbp]
cvtsi2ss xmm4, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm4, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm4, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm4, dword [rsp]
cvtsi2ss xmm4, dword [rsp + 0x12]
cvtsi2ss xmm4, dword [rsp + 0x1234]
cvtsi2ss xmm4, dword [rsp + 0x12345678]
cvtsi2ss xmm4, dword [rsp + rax]
cvtsi2ss xmm4, dword [rsp + rbp]
cvtsi2ss xmm4, dword [rsp + 2*rbp]
cvtsi2ss xmm4, dword [rsp + 4*rbp]
cvtsi2ss xmm4, dword [rsp + 8*rbp]
cvtsi2ss xmm4, dword [rax]
cvtsi2ss xmm4, dword [rcx]
cvtsi2ss xmm4, dword [rdx]
cvtsi2ss xmm4, dword [rbx]
cvtsi2ss xmm4, dword [rsp]
cvtsi2ss xmm4, dword [rbp]
cvtsi2ss xmm4, dword [rsi]
cvtsi2ss xmm4, dword [rdi]
cvtsi2ss xmm4, dword [rax + 2*rax]
cvtsi2ss xmm4, dword [rcx + 2*rcx]
cvtsi2ss xmm4, dword [rdx + 2*rdx]
cvtsi2ss xmm4, dword [rbx + 2*rbx]
cvtsi2ss xmm4, dword [rbp + 2*rbp]
cvtsi2ss xmm4, dword [rsi + 2*rsi]
cvtsi2ss xmm4, dword [rdi + 2*rdi]
cvtsi2ss xmm5, dword [rip + 0x13]
cvtsi2ss xmm5, dword [rip + 0x1235]
cvtsi2ss xmm5, dword [rip + 0x12345679]
cvtsi2ss xmm5, dword [rbx]
cvtsi2ss xmm5, dword [rcx + 0x14]
cvtsi2ss xmm5, dword [rdx + 0x15]
cvtsi2ss xmm5, dword [rbx + 0x1235]
cvtsi2ss xmm5, dword [rbx + 0x12345679]
cvtsi2ss xmm5, dword [rbx + rcx]
cvtsi2ss xmm5, dword [rbx + 4 * rcx]
cvtsi2ss xmm5, dword [rbx + rcx + 0x13]
cvtsi2ss xmm5, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm5, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm5, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm5, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm5, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm5, dword [4 * rcx]
cvtsi2ss xmm5, dword [4 * rcx + 0x13]
cvtsi2ss xmm5, dword [4 * rcx + 0x1235]
cvtsi2ss xmm5, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm5, dword [rbp]
cvtsi2ss xmm5, dword [rbp + 0x12]
cvtsi2ss xmm5, dword [rbp + 0x1234]
cvtsi2ss xmm5, dword [rbp + 0x12345678]
cvtsi2ss xmm5, dword [4 * rbp]
cvtsi2ss xmm5, dword [4 * rbp + 0x12]
cvtsi2ss xmm5, dword [4 * rbp + 0x1234]
cvtsi2ss xmm5, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm5, dword [rbx + 4 * rbp]
cvtsi2ss xmm5, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm5, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm5, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm5, dword [rsp]
cvtsi2ss xmm5, dword [rsp + 0x12]
cvtsi2ss xmm5, dword [rsp + 0x1234]
cvtsi2ss xmm5, dword [rsp + 0x12345678]
cvtsi2ss xmm5, dword [rsp + rax]
cvtsi2ss xmm5, dword [rsp + rbp]
cvtsi2ss xmm5, dword [rsp + 2*rbp]
cvtsi2ss xmm5, dword [rsp + 4*rbp]
cvtsi2ss xmm5, dword [rsp + 8*rbp]
cvtsi2ss xmm5, dword [rax]
cvtsi2ss xmm5, dword [rcx]
cvtsi2ss xmm5, dword [rdx]
cvtsi2ss xmm5, dword [rbx]
cvtsi2ss xmm5, dword [rsp]
cvtsi2ss xmm5, dword [rbp]
cvtsi2ss xmm5, dword [rsi]
cvtsi2ss xmm5, dword [rdi]
cvtsi2ss xmm5, dword [rax + 2*rax]
cvtsi2ss xmm5, dword [rcx + 2*rcx]
cvtsi2ss xmm5, dword [rdx + 2*rdx]
cvtsi2ss xmm5, dword [rbx + 2*rbx]
cvtsi2ss xmm5, dword [rbp + 2*rbp]
cvtsi2ss xmm5, dword [rsi + 2*rsi]
cvtsi2ss xmm5, dword [rdi + 2*rdi]
cvtsi2ss xmm6, dword [rip + 0x13]
cvtsi2ss xmm6, dword [rip + 0x1235]
cvtsi2ss xmm6, dword [rip + 0x12345679]
cvtsi2ss xmm6, dword [rbx]
cvtsi2ss xmm6, dword [rcx + 0x14]
cvtsi2ss xmm6, dword [rdx + 0x15]
cvtsi2ss xmm6, dword [rbx + 0x1235]
cvtsi2ss xmm6, dword [rbx + 0x12345679]
cvtsi2ss xmm6, dword [rbx + rcx]
cvtsi2ss xmm6, dword [rbx + 4 * rcx]
cvtsi2ss xmm6, dword [rbx + rcx + 0x13]
cvtsi2ss xmm6, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm6, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm6, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm6, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm6, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm6, dword [4 * rcx]
cvtsi2ss xmm6, dword [4 * rcx + 0x13]
cvtsi2ss xmm6, dword [4 * rcx + 0x1235]
cvtsi2ss xmm6, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm6, dword [rbp]
cvtsi2ss xmm6, dword [rbp + 0x12]
cvtsi2ss xmm6, dword [rbp + 0x1234]
cvtsi2ss xmm6, dword [rbp + 0x12345678]
cvtsi2ss xmm6, dword [4 * rbp]
cvtsi2ss xmm6, dword [4 * rbp + 0x12]
cvtsi2ss xmm6, dword [4 * rbp + 0x1234]
cvtsi2ss xmm6, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm6, dword [rbx + 4 * rbp]
cvtsi2ss xmm6, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm6, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm6, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm6, dword [rsp]
cvtsi2ss xmm6, dword [rsp + 0x12]
cvtsi2ss xmm6, dword [rsp + 0x1234]
cvtsi2ss xmm6, dword [rsp + 0x12345678]
cvtsi2ss xmm6, dword [rsp + rax]
cvtsi2ss xmm6, dword [rsp + rbp]
cvtsi2ss xmm6, dword [rsp + 2*rbp]
cvtsi2ss xmm6, dword [rsp + 4*rbp]
cvtsi2ss xmm6, dword [rsp + 8*rbp]
cvtsi2ss xmm6, dword [rax]
cvtsi2ss xmm6, dword [rcx]
cvtsi2ss xmm6, dword [rdx]
cvtsi2ss xmm6, dword [rbx]
cvtsi2ss xmm6, dword [rsp]
cvtsi2ss xmm6, dword [rbp]
cvtsi2ss xmm6, dword [rsi]
cvtsi2ss xmm6, dword [rdi]
cvtsi2ss xmm6, dword [rax + 2*rax]
cvtsi2ss xmm6, dword [rcx + 2*rcx]
cvtsi2ss xmm6, dword [rdx + 2*rdx]
cvtsi2ss xmm6, dword [rbx + 2*rbx]
cvtsi2ss xmm6, dword [rbp + 2*rbp]
cvtsi2ss xmm6, dword [rsi + 2*rsi]
cvtsi2ss xmm6, dword [rdi + 2*rdi]
cvtsi2ss xmm7, dword [rip + 0x13]
cvtsi2ss xmm7, dword [rip + 0x1235]
cvtsi2ss xmm7, dword [rip + 0x12345679]
cvtsi2ss xmm7, dword [rbx]
cvtsi2ss xmm7, dword [rcx + 0x14]
cvtsi2ss xmm7, dword [rdx + 0x15]
cvtsi2ss xmm7, dword [rbx + 0x1235]
cvtsi2ss xmm7, dword [rbx + 0x12345679]
cvtsi2ss xmm7, dword [rbx + rcx]
cvtsi2ss xmm7, dword [rbx + 4 * rcx]
cvtsi2ss xmm7, dword [rbx + rcx + 0x13]
cvtsi2ss xmm7, dword [rbx + rcx + 0x1235]
cvtsi2ss xmm7, dword [rbx + rcx + 0x12345679]
cvtsi2ss xmm7, dword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm7, dword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm7, dword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm7, dword [4 * rcx]
cvtsi2ss xmm7, dword [4 * rcx + 0x13]
cvtsi2ss xmm7, dword [4 * rcx + 0x1235]
cvtsi2ss xmm7, dword [4 * rcx + 0x12345679]
cvtsi2ss xmm7, dword [rbp]
cvtsi2ss xmm7, dword [rbp + 0x12]
cvtsi2ss xmm7, dword [rbp + 0x1234]
cvtsi2ss xmm7, dword [rbp + 0x12345678]
cvtsi2ss xmm7, dword [4 * rbp]
cvtsi2ss xmm7, dword [4 * rbp + 0x12]
cvtsi2ss xmm7, dword [4 * rbp + 0x1234]
cvtsi2ss xmm7, dword [4 * rbp + 0x12345678]
cvtsi2ss xmm7, dword [rbx + 4 * rbp]
cvtsi2ss xmm7, dword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm7, dword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm7, dword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm7, dword [rsp]
cvtsi2ss xmm7, dword [rsp + 0x12]
cvtsi2ss xmm7, dword [rsp + 0x1234]
cvtsi2ss xmm7, dword [rsp + 0x12345678]
cvtsi2ss xmm7, dword [rsp + rax]
cvtsi2ss xmm7, dword [rsp + rbp]
cvtsi2ss xmm7, dword [rsp + 2*rbp]
cvtsi2ss xmm7, dword [rsp + 4*rbp]
cvtsi2ss xmm7, dword [rsp + 8*rbp]
cvtsi2ss xmm7, dword [rax]
cvtsi2ss xmm7, dword [rcx]
cvtsi2ss xmm7, dword [rdx]
cvtsi2ss xmm7, dword [rbx]
cvtsi2ss xmm7, dword [rsp]
cvtsi2ss xmm7, dword [rbp]
cvtsi2ss xmm7, dword [rsi]
cvtsi2ss xmm7, dword [rdi]
cvtsi2ss xmm7, dword [rax + 2*rax]
cvtsi2ss xmm7, dword [rcx + 2*rcx]
cvtsi2ss xmm7, dword [rdx + 2*rdx]
cvtsi2ss xmm7, dword [rbx + 2*rbx]
cvtsi2ss xmm7, dword [rbp + 2*rbp]
cvtsi2ss xmm7, dword [rsi + 2*rsi]
cvtsi2ss xmm7, dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode xmm,r64
; ------------------------------------------------------------------------------
cvtsi2ss xmm0, rax
cvtsi2ss xmm0, rcx
cvtsi2ss xmm0, rdx
cvtsi2ss xmm0, rbx
cvtsi2ss xmm0, rsp
cvtsi2ss xmm0, rbp
cvtsi2ss xmm0, rsi
cvtsi2ss xmm0, rdi
cvtsi2ss xmm1, rax
cvtsi2ss xmm1, rcx
cvtsi2ss xmm1, rdx
cvtsi2ss xmm1, rbx
cvtsi2ss xmm1, rsp
cvtsi2ss xmm1, rbp
cvtsi2ss xmm1, rsi
cvtsi2ss xmm1, rdi
cvtsi2ss xmm2, rax
cvtsi2ss xmm2, rcx
cvtsi2ss xmm2, rdx
cvtsi2ss xmm2, rbx
cvtsi2ss xmm2, rsp
cvtsi2ss xmm2, rbp
cvtsi2ss xmm2, rsi
cvtsi2ss xmm2, rdi
cvtsi2ss xmm3, rax
cvtsi2ss xmm3, rcx
cvtsi2ss xmm3, rdx
cvtsi2ss xmm3, rbx
cvtsi2ss xmm3, rsp
cvtsi2ss xmm3, rbp
cvtsi2ss xmm3, rsi
cvtsi2ss xmm3, rdi
cvtsi2ss xmm4, rax
cvtsi2ss xmm4, rcx
cvtsi2ss xmm4, rdx
cvtsi2ss xmm4, rbx
cvtsi2ss xmm4, rsp
cvtsi2ss xmm4, rbp
cvtsi2ss xmm4, rsi
cvtsi2ss xmm4, rdi
cvtsi2ss xmm5, rax
cvtsi2ss xmm5, rcx
cvtsi2ss xmm5, rdx
cvtsi2ss xmm5, rbx
cvtsi2ss xmm5, rsp
cvtsi2ss xmm5, rbp
cvtsi2ss xmm5, rsi
cvtsi2ss xmm5, rdi
cvtsi2ss xmm6, rax
cvtsi2ss xmm6, rcx
cvtsi2ss xmm6, rdx
cvtsi2ss xmm6, rbx
cvtsi2ss xmm6, rsp
cvtsi2ss xmm6, rbp
cvtsi2ss xmm6, rsi
cvtsi2ss xmm6, rdi
cvtsi2ss xmm7, rax
cvtsi2ss xmm7, rcx
cvtsi2ss xmm7, rdx
cvtsi2ss xmm7, rbx
cvtsi2ss xmm7, rsp
cvtsi2ss xmm7, rbp
cvtsi2ss xmm7, rsi
cvtsi2ss xmm7, rdi

; ------------------------------------------------------------------------------
; opcode xmm,m64
; ------------------------------------------------------------------------------
cvtsi2ss xmm0, qword [rip + 0x13]
cvtsi2ss xmm0, qword [rip + 0x1235]
cvtsi2ss xmm0, qword [rip + 0x12345679]
cvtsi2ss xmm0, qword [rbx]
cvtsi2ss xmm0, qword [rcx + 0x14]
cvtsi2ss xmm0, qword [rdx + 0x15]
cvtsi2ss xmm0, qword [rbx + 0x1235]
cvtsi2ss xmm0, qword [rbx + 0x12345679]
cvtsi2ss xmm0, qword [rbx + rcx]
cvtsi2ss xmm0, qword [rbx + 4 * rcx]
cvtsi2ss xmm0, qword [rbx + rcx + 0x13]
cvtsi2ss xmm0, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm0, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm0, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm0, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm0, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm0, qword [4 * rcx]
cvtsi2ss xmm0, qword [4 * rcx + 0x13]
cvtsi2ss xmm0, qword [4 * rcx + 0x1235]
cvtsi2ss xmm0, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm0, qword [rbp]
cvtsi2ss xmm0, qword [rbp + 0x12]
cvtsi2ss xmm0, qword [rbp + 0x1234]
cvtsi2ss xmm0, qword [rbp + 0x12345678]
cvtsi2ss xmm0, qword [4 * rbp]
cvtsi2ss xmm0, qword [4 * rbp + 0x12]
cvtsi2ss xmm0, qword [4 * rbp + 0x1234]
cvtsi2ss xmm0, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm0, qword [rbx + 4 * rbp]
cvtsi2ss xmm0, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm0, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm0, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm0, qword [rsp]
cvtsi2ss xmm0, qword [rsp + 0x12]
cvtsi2ss xmm0, qword [rsp + 0x1234]
cvtsi2ss xmm0, qword [rsp + 0x12345678]
cvtsi2ss xmm0, qword [rsp + rax]
cvtsi2ss xmm0, qword [rsp + rbp]
cvtsi2ss xmm0, qword [rsp + 2*rbp]
cvtsi2ss xmm0, qword [rsp + 4*rbp]
cvtsi2ss xmm0, qword [rsp + 8*rbp]
cvtsi2ss xmm0, qword [rax]
cvtsi2ss xmm0, qword [rcx]
cvtsi2ss xmm0, qword [rdx]
cvtsi2ss xmm0, qword [rbx]
cvtsi2ss xmm0, qword [rsp]
cvtsi2ss xmm0, qword [rbp]
cvtsi2ss xmm0, qword [rsi]
cvtsi2ss xmm0, qword [rdi]
cvtsi2ss xmm0, qword [rax + 2*rax]
cvtsi2ss xmm0, qword [rcx + 2*rcx]
cvtsi2ss xmm0, qword [rdx + 2*rdx]
cvtsi2ss xmm0, qword [rbx + 2*rbx]
cvtsi2ss xmm0, qword [rbp + 2*rbp]
cvtsi2ss xmm0, qword [rsi + 2*rsi]
cvtsi2ss xmm0, qword [rdi + 2*rdi]
cvtsi2ss xmm1, qword [rip + 0x13]
cvtsi2ss xmm1, qword [rip + 0x1235]
cvtsi2ss xmm1, qword [rip + 0x12345679]
cvtsi2ss xmm1, qword [rbx]
cvtsi2ss xmm1, qword [rcx + 0x14]
cvtsi2ss xmm1, qword [rdx + 0x15]
cvtsi2ss xmm1, qword [rbx + 0x1235]
cvtsi2ss xmm1, qword [rbx + 0x12345679]
cvtsi2ss xmm1, qword [rbx + rcx]
cvtsi2ss xmm1, qword [rbx + 4 * rcx]
cvtsi2ss xmm1, qword [rbx + rcx + 0x13]
cvtsi2ss xmm1, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm1, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm1, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm1, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm1, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm1, qword [4 * rcx]
cvtsi2ss xmm1, qword [4 * rcx + 0x13]
cvtsi2ss xmm1, qword [4 * rcx + 0x1235]
cvtsi2ss xmm1, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm1, qword [rbp]
cvtsi2ss xmm1, qword [rbp + 0x12]
cvtsi2ss xmm1, qword [rbp + 0x1234]
cvtsi2ss xmm1, qword [rbp + 0x12345678]
cvtsi2ss xmm1, qword [4 * rbp]
cvtsi2ss xmm1, qword [4 * rbp + 0x12]
cvtsi2ss xmm1, qword [4 * rbp + 0x1234]
cvtsi2ss xmm1, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm1, qword [rbx + 4 * rbp]
cvtsi2ss xmm1, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm1, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm1, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm1, qword [rsp]
cvtsi2ss xmm1, qword [rsp + 0x12]
cvtsi2ss xmm1, qword [rsp + 0x1234]
cvtsi2ss xmm1, qword [rsp + 0x12345678]
cvtsi2ss xmm1, qword [rsp + rax]
cvtsi2ss xmm1, qword [rsp + rbp]
cvtsi2ss xmm1, qword [rsp + 2*rbp]
cvtsi2ss xmm1, qword [rsp + 4*rbp]
cvtsi2ss xmm1, qword [rsp + 8*rbp]
cvtsi2ss xmm1, qword [rax]
cvtsi2ss xmm1, qword [rcx]
cvtsi2ss xmm1, qword [rdx]
cvtsi2ss xmm1, qword [rbx]
cvtsi2ss xmm1, qword [rsp]
cvtsi2ss xmm1, qword [rbp]
cvtsi2ss xmm1, qword [rsi]
cvtsi2ss xmm1, qword [rdi]
cvtsi2ss xmm1, qword [rax + 2*rax]
cvtsi2ss xmm1, qword [rcx + 2*rcx]
cvtsi2ss xmm1, qword [rdx + 2*rdx]
cvtsi2ss xmm1, qword [rbx + 2*rbx]
cvtsi2ss xmm1, qword [rbp + 2*rbp]
cvtsi2ss xmm1, qword [rsi + 2*rsi]
cvtsi2ss xmm1, qword [rdi + 2*rdi]
cvtsi2ss xmm2, qword [rip + 0x13]
cvtsi2ss xmm2, qword [rip + 0x1235]
cvtsi2ss xmm2, qword [rip + 0x12345679]
cvtsi2ss xmm2, qword [rbx]
cvtsi2ss xmm2, qword [rcx + 0x14]
cvtsi2ss xmm2, qword [rdx + 0x15]
cvtsi2ss xmm2, qword [rbx + 0x1235]
cvtsi2ss xmm2, qword [rbx + 0x12345679]
cvtsi2ss xmm2, qword [rbx + rcx]
cvtsi2ss xmm2, qword [rbx + 4 * rcx]
cvtsi2ss xmm2, qword [rbx + rcx + 0x13]
cvtsi2ss xmm2, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm2, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm2, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm2, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm2, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm2, qword [4 * rcx]
cvtsi2ss xmm2, qword [4 * rcx + 0x13]
cvtsi2ss xmm2, qword [4 * rcx + 0x1235]
cvtsi2ss xmm2, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm2, qword [rbp]
cvtsi2ss xmm2, qword [rbp + 0x12]
cvtsi2ss xmm2, qword [rbp + 0x1234]
cvtsi2ss xmm2, qword [rbp + 0x12345678]
cvtsi2ss xmm2, qword [4 * rbp]
cvtsi2ss xmm2, qword [4 * rbp + 0x12]
cvtsi2ss xmm2, qword [4 * rbp + 0x1234]
cvtsi2ss xmm2, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm2, qword [rbx + 4 * rbp]
cvtsi2ss xmm2, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm2, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm2, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm2, qword [rsp]
cvtsi2ss xmm2, qword [rsp + 0x12]
cvtsi2ss xmm2, qword [rsp + 0x1234]
cvtsi2ss xmm2, qword [rsp + 0x12345678]
cvtsi2ss xmm2, qword [rsp + rax]
cvtsi2ss xmm2, qword [rsp + rbp]
cvtsi2ss xmm2, qword [rsp + 2*rbp]
cvtsi2ss xmm2, qword [rsp + 4*rbp]
cvtsi2ss xmm2, qword [rsp + 8*rbp]
cvtsi2ss xmm2, qword [rax]
cvtsi2ss xmm2, qword [rcx]
cvtsi2ss xmm2, qword [rdx]
cvtsi2ss xmm2, qword [rbx]
cvtsi2ss xmm2, qword [rsp]
cvtsi2ss xmm2, qword [rbp]
cvtsi2ss xmm2, qword [rsi]
cvtsi2ss xmm2, qword [rdi]
cvtsi2ss xmm2, qword [rax + 2*rax]
cvtsi2ss xmm2, qword [rcx + 2*rcx]
cvtsi2ss xmm2, qword [rdx + 2*rdx]
cvtsi2ss xmm2, qword [rbx + 2*rbx]
cvtsi2ss xmm2, qword [rbp + 2*rbp]
cvtsi2ss xmm2, qword [rsi + 2*rsi]
cvtsi2ss xmm2, qword [rdi + 2*rdi]
cvtsi2ss xmm3, qword [rip + 0x13]
cvtsi2ss xmm3, qword [rip + 0x1235]
cvtsi2ss xmm3, qword [rip + 0x12345679]
cvtsi2ss xmm3, qword [rbx]
cvtsi2ss xmm3, qword [rcx + 0x14]
cvtsi2ss xmm3, qword [rdx + 0x15]
cvtsi2ss xmm3, qword [rbx + 0x1235]
cvtsi2ss xmm3, qword [rbx + 0x12345679]
cvtsi2ss xmm3, qword [rbx + rcx]
cvtsi2ss xmm3, qword [rbx + 4 * rcx]
cvtsi2ss xmm3, qword [rbx + rcx + 0x13]
cvtsi2ss xmm3, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm3, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm3, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm3, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm3, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm3, qword [4 * rcx]
cvtsi2ss xmm3, qword [4 * rcx + 0x13]
cvtsi2ss xmm3, qword [4 * rcx + 0x1235]
cvtsi2ss xmm3, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm3, qword [rbp]
cvtsi2ss xmm3, qword [rbp + 0x12]
cvtsi2ss xmm3, qword [rbp + 0x1234]
cvtsi2ss xmm3, qword [rbp + 0x12345678]
cvtsi2ss xmm3, qword [4 * rbp]
cvtsi2ss xmm3, qword [4 * rbp + 0x12]
cvtsi2ss xmm3, qword [4 * rbp + 0x1234]
cvtsi2ss xmm3, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm3, qword [rbx + 4 * rbp]
cvtsi2ss xmm3, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm3, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm3, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm3, qword [rsp]
cvtsi2ss xmm3, qword [rsp + 0x12]
cvtsi2ss xmm3, qword [rsp + 0x1234]
cvtsi2ss xmm3, qword [rsp + 0x12345678]
cvtsi2ss xmm3, qword [rsp + rax]
cvtsi2ss xmm3, qword [rsp + rbp]
cvtsi2ss xmm3, qword [rsp + 2*rbp]
cvtsi2ss xmm3, qword [rsp + 4*rbp]
cvtsi2ss xmm3, qword [rsp + 8*rbp]
cvtsi2ss xmm3, qword [rax]
cvtsi2ss xmm3, qword [rcx]
cvtsi2ss xmm3, qword [rdx]
cvtsi2ss xmm3, qword [rbx]
cvtsi2ss xmm3, qword [rsp]
cvtsi2ss xmm3, qword [rbp]
cvtsi2ss xmm3, qword [rsi]
cvtsi2ss xmm3, qword [rdi]
cvtsi2ss xmm3, qword [rax + 2*rax]
cvtsi2ss xmm3, qword [rcx + 2*rcx]
cvtsi2ss xmm3, qword [rdx + 2*rdx]
cvtsi2ss xmm3, qword [rbx + 2*rbx]
cvtsi2ss xmm3, qword [rbp + 2*rbp]
cvtsi2ss xmm3, qword [rsi + 2*rsi]
cvtsi2ss xmm3, qword [rdi + 2*rdi]
cvtsi2ss xmm4, qword [rip + 0x13]
cvtsi2ss xmm4, qword [rip + 0x1235]
cvtsi2ss xmm4, qword [rip + 0x12345679]
cvtsi2ss xmm4, qword [rbx]
cvtsi2ss xmm4, qword [rcx + 0x14]
cvtsi2ss xmm4, qword [rdx + 0x15]
cvtsi2ss xmm4, qword [rbx + 0x1235]
cvtsi2ss xmm4, qword [rbx + 0x12345679]
cvtsi2ss xmm4, qword [rbx + rcx]
cvtsi2ss xmm4, qword [rbx + 4 * rcx]
cvtsi2ss xmm4, qword [rbx + rcx + 0x13]
cvtsi2ss xmm4, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm4, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm4, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm4, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm4, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm4, qword [4 * rcx]
cvtsi2ss xmm4, qword [4 * rcx + 0x13]
cvtsi2ss xmm4, qword [4 * rcx + 0x1235]
cvtsi2ss xmm4, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm4, qword [rbp]
cvtsi2ss xmm4, qword [rbp + 0x12]
cvtsi2ss xmm4, qword [rbp + 0x1234]
cvtsi2ss xmm4, qword [rbp + 0x12345678]
cvtsi2ss xmm4, qword [4 * rbp]
cvtsi2ss xmm4, qword [4 * rbp + 0x12]
cvtsi2ss xmm4, qword [4 * rbp + 0x1234]
cvtsi2ss xmm4, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm4, qword [rbx + 4 * rbp]
cvtsi2ss xmm4, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm4, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm4, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm4, qword [rsp]
cvtsi2ss xmm4, qword [rsp + 0x12]
cvtsi2ss xmm4, qword [rsp + 0x1234]
cvtsi2ss xmm4, qword [rsp + 0x12345678]
cvtsi2ss xmm4, qword [rsp + rax]
cvtsi2ss xmm4, qword [rsp + rbp]
cvtsi2ss xmm4, qword [rsp + 2*rbp]
cvtsi2ss xmm4, qword [rsp + 4*rbp]
cvtsi2ss xmm4, qword [rsp + 8*rbp]
cvtsi2ss xmm4, qword [rax]
cvtsi2ss xmm4, qword [rcx]
cvtsi2ss xmm4, qword [rdx]
cvtsi2ss xmm4, qword [rbx]
cvtsi2ss xmm4, qword [rsp]
cvtsi2ss xmm4, qword [rbp]
cvtsi2ss xmm4, qword [rsi]
cvtsi2ss xmm4, qword [rdi]
cvtsi2ss xmm4, qword [rax + 2*rax]
cvtsi2ss xmm4, qword [rcx + 2*rcx]
cvtsi2ss xmm4, qword [rdx + 2*rdx]
cvtsi2ss xmm4, qword [rbx + 2*rbx]
cvtsi2ss xmm4, qword [rbp + 2*rbp]
cvtsi2ss xmm4, qword [rsi + 2*rsi]
cvtsi2ss xmm4, qword [rdi + 2*rdi]
cvtsi2ss xmm5, qword [rip + 0x13]
cvtsi2ss xmm5, qword [rip + 0x1235]
cvtsi2ss xmm5, qword [rip + 0x12345679]
cvtsi2ss xmm5, qword [rbx]
cvtsi2ss xmm5, qword [rcx + 0x14]
cvtsi2ss xmm5, qword [rdx + 0x15]
cvtsi2ss xmm5, qword [rbx + 0x1235]
cvtsi2ss xmm5, qword [rbx + 0x12345679]
cvtsi2ss xmm5, qword [rbx + rcx]
cvtsi2ss xmm5, qword [rbx + 4 * rcx]
cvtsi2ss xmm5, qword [rbx + rcx + 0x13]
cvtsi2ss xmm5, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm5, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm5, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm5, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm5, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm5, qword [4 * rcx]
cvtsi2ss xmm5, qword [4 * rcx + 0x13]
cvtsi2ss xmm5, qword [4 * rcx + 0x1235]
cvtsi2ss xmm5, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm5, qword [rbp]
cvtsi2ss xmm5, qword [rbp + 0x12]
cvtsi2ss xmm5, qword [rbp + 0x1234]
cvtsi2ss xmm5, qword [rbp + 0x12345678]
cvtsi2ss xmm5, qword [4 * rbp]
cvtsi2ss xmm5, qword [4 * rbp + 0x12]
cvtsi2ss xmm5, qword [4 * rbp + 0x1234]
cvtsi2ss xmm5, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm5, qword [rbx + 4 * rbp]
cvtsi2ss xmm5, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm5, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm5, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm5, qword [rsp]
cvtsi2ss xmm5, qword [rsp + 0x12]
cvtsi2ss xmm5, qword [rsp + 0x1234]
cvtsi2ss xmm5, qword [rsp + 0x12345678]
cvtsi2ss xmm5, qword [rsp + rax]
cvtsi2ss xmm5, qword [rsp + rbp]
cvtsi2ss xmm5, qword [rsp + 2*rbp]
cvtsi2ss xmm5, qword [rsp + 4*rbp]
cvtsi2ss xmm5, qword [rsp + 8*rbp]
cvtsi2ss xmm5, qword [rax]
cvtsi2ss xmm5, qword [rcx]
cvtsi2ss xmm5, qword [rdx]
cvtsi2ss xmm5, qword [rbx]
cvtsi2ss xmm5, qword [rsp]
cvtsi2ss xmm5, qword [rbp]
cvtsi2ss xmm5, qword [rsi]
cvtsi2ss xmm5, qword [rdi]
cvtsi2ss xmm5, qword [rax + 2*rax]
cvtsi2ss xmm5, qword [rcx + 2*rcx]
cvtsi2ss xmm5, qword [rdx + 2*rdx]
cvtsi2ss xmm5, qword [rbx + 2*rbx]
cvtsi2ss xmm5, qword [rbp + 2*rbp]
cvtsi2ss xmm5, qword [rsi + 2*rsi]
cvtsi2ss xmm5, qword [rdi + 2*rdi]
cvtsi2ss xmm6, qword [rip + 0x13]
cvtsi2ss xmm6, qword [rip + 0x1235]
cvtsi2ss xmm6, qword [rip + 0x12345679]
cvtsi2ss xmm6, qword [rbx]
cvtsi2ss xmm6, qword [rcx + 0x14]
cvtsi2ss xmm6, qword [rdx + 0x15]
cvtsi2ss xmm6, qword [rbx + 0x1235]
cvtsi2ss xmm6, qword [rbx + 0x12345679]
cvtsi2ss xmm6, qword [rbx + rcx]
cvtsi2ss xmm6, qword [rbx + 4 * rcx]
cvtsi2ss xmm6, qword [rbx + rcx + 0x13]
cvtsi2ss xmm6, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm6, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm6, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm6, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm6, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm6, qword [4 * rcx]
cvtsi2ss xmm6, qword [4 * rcx + 0x13]
cvtsi2ss xmm6, qword [4 * rcx + 0x1235]
cvtsi2ss xmm6, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm6, qword [rbp]
cvtsi2ss xmm6, qword [rbp + 0x12]
cvtsi2ss xmm6, qword [rbp + 0x1234]
cvtsi2ss xmm6, qword [rbp + 0x12345678]
cvtsi2ss xmm6, qword [4 * rbp]
cvtsi2ss xmm6, qword [4 * rbp + 0x12]
cvtsi2ss xmm6, qword [4 * rbp + 0x1234]
cvtsi2ss xmm6, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm6, qword [rbx + 4 * rbp]
cvtsi2ss xmm6, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm6, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm6, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm6, qword [rsp]
cvtsi2ss xmm6, qword [rsp + 0x12]
cvtsi2ss xmm6, qword [rsp + 0x1234]
cvtsi2ss xmm6, qword [rsp + 0x12345678]
cvtsi2ss xmm6, qword [rsp + rax]
cvtsi2ss xmm6, qword [rsp + rbp]
cvtsi2ss xmm6, qword [rsp + 2*rbp]
cvtsi2ss xmm6, qword [rsp + 4*rbp]
cvtsi2ss xmm6, qword [rsp + 8*rbp]
cvtsi2ss xmm6, qword [rax]
cvtsi2ss xmm6, qword [rcx]
cvtsi2ss xmm6, qword [rdx]
cvtsi2ss xmm6, qword [rbx]
cvtsi2ss xmm6, qword [rsp]
cvtsi2ss xmm6, qword [rbp]
cvtsi2ss xmm6, qword [rsi]
cvtsi2ss xmm6, qword [rdi]
cvtsi2ss xmm6, qword [rax + 2*rax]
cvtsi2ss xmm6, qword [rcx + 2*rcx]
cvtsi2ss xmm6, qword [rdx + 2*rdx]
cvtsi2ss xmm6, qword [rbx + 2*rbx]
cvtsi2ss xmm6, qword [rbp + 2*rbp]
cvtsi2ss xmm6, qword [rsi + 2*rsi]
cvtsi2ss xmm6, qword [rdi + 2*rdi]
cvtsi2ss xmm7, qword [rip + 0x13]
cvtsi2ss xmm7, qword [rip + 0x1235]
cvtsi2ss xmm7, qword [rip + 0x12345679]
cvtsi2ss xmm7, qword [rbx]
cvtsi2ss xmm7, qword [rcx + 0x14]
cvtsi2ss xmm7, qword [rdx + 0x15]
cvtsi2ss xmm7, qword [rbx + 0x1235]
cvtsi2ss xmm7, qword [rbx + 0x12345679]
cvtsi2ss xmm7, qword [rbx + rcx]
cvtsi2ss xmm7, qword [rbx + 4 * rcx]
cvtsi2ss xmm7, qword [rbx + rcx + 0x13]
cvtsi2ss xmm7, qword [rbx + rcx + 0x1235]
cvtsi2ss xmm7, qword [rbx + rcx + 0x12345679]
cvtsi2ss xmm7, qword [rbx + 4 * rcx + 0x13]
cvtsi2ss xmm7, qword [rbx + 4 * rcx + 0x1235]
cvtsi2ss xmm7, qword [rbx + 8 * rcx + 0x12345679]
cvtsi2ss xmm7, qword [4 * rcx]
cvtsi2ss xmm7, qword [4 * rcx + 0x13]
cvtsi2ss xmm7, qword [4 * rcx + 0x1235]
cvtsi2ss xmm7, qword [4 * rcx + 0x12345679]
cvtsi2ss xmm7, qword [rbp]
cvtsi2ss xmm7, qword [rbp + 0x12]
cvtsi2ss xmm7, qword [rbp + 0x1234]
cvtsi2ss xmm7, qword [rbp + 0x12345678]
cvtsi2ss xmm7, qword [4 * rbp]
cvtsi2ss xmm7, qword [4 * rbp + 0x12]
cvtsi2ss xmm7, qword [4 * rbp + 0x1234]
cvtsi2ss xmm7, qword [4 * rbp + 0x12345678]
cvtsi2ss xmm7, qword [rbx + 4 * rbp]
cvtsi2ss xmm7, qword [rbx + 4 * rbp + 0x12]
cvtsi2ss xmm7, qword [rbx + 4 * rbp + 0x1234]
cvtsi2ss xmm7, qword [rbx + 4 * rbp + 0x12345678]
cvtsi2ss xmm7, qword [rsp]
cvtsi2ss xmm7, qword [rsp + 0x12]
cvtsi2ss xmm7, qword [rsp + 0x1234]
cvtsi2ss xmm7, qword [rsp + 0x12345678]
cvtsi2ss xmm7, qword [rsp + rax]
cvtsi2ss xmm7, qword [rsp + rbp]
cvtsi2ss xmm7, qword [rsp + 2*rbp]
cvtsi2ss xmm7, qword [rsp + 4*rbp]
cvtsi2ss xmm7, qword [rsp + 8*rbp]
cvtsi2ss xmm7, qword [rax]
cvtsi2ss xmm7, qword [rcx]
cvtsi2ss xmm7, qword [rdx]
cvtsi2ss xmm7, qword [rbx]
cvtsi2ss xmm7, qword [rsp]
cvtsi2ss xmm7, qword [rbp]
cvtsi2ss xmm7, qword [rsi]
cvtsi2ss xmm7, qword [rdi]
cvtsi2ss xmm7, qword [rax + 2*rax]
cvtsi2ss xmm7, qword [rcx + 2*rcx]
cvtsi2ss xmm7, qword [rdx + 2*rdx]
cvtsi2ss xmm7, qword [rbx + 2*rbx]
cvtsi2ss xmm7, qword [rbp + 2*rbp]
cvtsi2ss xmm7, qword [rsi + 2*rsi]
cvtsi2ss xmm7, qword [rdi + 2*rdi]

