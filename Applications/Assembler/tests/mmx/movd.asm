use64
; ------------------------------------------------------------------------------
; opcode mm,r32
; ------------------------------------------------------------------------------
movd mm0, eax
movd mm0, ecx
movd mm0, edx
movd mm0, ebx
movd mm0, esp
movd mm0, ebp
movd mm0, esi
movd mm0, edi
movd mm1, eax
movd mm1, ecx
movd mm1, edx
movd mm1, ebx
movd mm1, esp
movd mm1, ebp
movd mm1, esi
movd mm1, edi
movd mm2, eax
movd mm2, ecx
movd mm2, edx
movd mm2, ebx
movd mm2, esp
movd mm2, ebp
movd mm2, esi
movd mm2, edi
movd mm3, eax
movd mm3, ecx
movd mm3, edx
movd mm3, ebx
movd mm3, esp
movd mm3, ebp
movd mm3, esi
movd mm3, edi
movd mm4, eax
movd mm4, ecx
movd mm4, edx
movd mm4, ebx
movd mm4, esp
movd mm4, ebp
movd mm4, esi
movd mm4, edi
movd mm5, eax
movd mm5, ecx
movd mm5, edx
movd mm5, ebx
movd mm5, esp
movd mm5, ebp
movd mm5, esi
movd mm5, edi
movd mm6, eax
movd mm6, ecx
movd mm6, edx
movd mm6, ebx
movd mm6, esp
movd mm6, ebp
movd mm6, esi
movd mm6, edi
movd mm7, eax
movd mm7, ecx
movd mm7, edx
movd mm7, ebx
movd mm7, esp
movd mm7, ebp
movd mm7, esi
movd mm7, edi

; ------------------------------------------------------------------------------
; opcode mm,m32
; ------------------------------------------------------------------------------
movd mm0, dword [rip + 0x13]
movd mm0, dword [rip + 0x1235]
movd mm0, dword [rip + 0x12345679]
movd mm0, dword [rbx]
movd mm0, dword [rcx + 0x14]
movd mm0, dword [rdx + 0x15]
movd mm0, dword [rbx + 0x1235]
movd mm0, dword [rbx + 0x12345679]
movd mm0, dword [rbx + rcx]
movd mm0, dword [rbx + 4 * rcx]
movd mm0, dword [rbx + rcx + 0x13]
movd mm0, dword [rbx + rcx + 0x1235]
movd mm0, dword [rbx + rcx + 0x12345679]
movd mm0, dword [rbx + 4 * rcx + 0x13]
movd mm0, dword [rbx + 4 * rcx + 0x1235]
movd mm0, dword [rbx + 8 * rcx + 0x12345679]
movd mm0, dword [4 * rcx]
movd mm0, dword [4 * rcx + 0x13]
movd mm0, dword [4 * rcx + 0x1235]
movd mm0, dword [4 * rcx + 0x12345679]
movd mm0, dword [rbp]
movd mm0, dword [rbp + 0x12]
movd mm0, dword [rbp + 0x1234]
movd mm0, dword [rbp + 0x12345678]
movd mm0, dword [4 * rbp]
movd mm0, dword [4 * rbp + 0x12]
movd mm0, dword [4 * rbp + 0x1234]
movd mm0, dword [4 * rbp + 0x12345678]
movd mm0, dword [rbx + 4 * rbp]
movd mm0, dword [rbx + 4 * rbp + 0x12]
movd mm0, dword [rbx + 4 * rbp + 0x1234]
movd mm0, dword [rbx + 4 * rbp + 0x12345678]
movd mm0, dword [rsp]
movd mm0, dword [rsp + 0x12]
movd mm0, dword [rsp + 0x1234]
movd mm0, dword [rsp + 0x12345678]
movd mm0, dword [rsp + rax]
movd mm0, dword [rsp + rbp]
movd mm0, dword [rsp + 2*rbp]
movd mm0, dword [rsp + 4*rbp]
movd mm0, dword [rsp + 8*rbp]
movd mm0, dword [rax]
movd mm0, dword [rcx]
movd mm0, dword [rdx]
movd mm0, dword [rbx]
movd mm0, dword [rsp]
movd mm0, dword [rbp]
movd mm0, dword [rsi]
movd mm0, dword [rdi]
movd mm0, dword [rax + 2*rax]
movd mm0, dword [rcx + 2*rcx]
movd mm0, dword [rdx + 2*rdx]
movd mm0, dword [rbx + 2*rbx]
movd mm0, dword [rbp + 2*rbp]
movd mm0, dword [rsi + 2*rsi]
movd mm0, dword [rdi + 2*rdi]
movd mm1, dword [rip + 0x13]
movd mm1, dword [rip + 0x1235]
movd mm1, dword [rip + 0x12345679]
movd mm1, dword [rbx]
movd mm1, dword [rcx + 0x14]
movd mm1, dword [rdx + 0x15]
movd mm1, dword [rbx + 0x1235]
movd mm1, dword [rbx + 0x12345679]
movd mm1, dword [rbx + rcx]
movd mm1, dword [rbx + 4 * rcx]
movd mm1, dword [rbx + rcx + 0x13]
movd mm1, dword [rbx + rcx + 0x1235]
movd mm1, dword [rbx + rcx + 0x12345679]
movd mm1, dword [rbx + 4 * rcx + 0x13]
movd mm1, dword [rbx + 4 * rcx + 0x1235]
movd mm1, dword [rbx + 8 * rcx + 0x12345679]
movd mm1, dword [4 * rcx]
movd mm1, dword [4 * rcx + 0x13]
movd mm1, dword [4 * rcx + 0x1235]
movd mm1, dword [4 * rcx + 0x12345679]
movd mm1, dword [rbp]
movd mm1, dword [rbp + 0x12]
movd mm1, dword [rbp + 0x1234]
movd mm1, dword [rbp + 0x12345678]
movd mm1, dword [4 * rbp]
movd mm1, dword [4 * rbp + 0x12]
movd mm1, dword [4 * rbp + 0x1234]
movd mm1, dword [4 * rbp + 0x12345678]
movd mm1, dword [rbx + 4 * rbp]
movd mm1, dword [rbx + 4 * rbp + 0x12]
movd mm1, dword [rbx + 4 * rbp + 0x1234]
movd mm1, dword [rbx + 4 * rbp + 0x12345678]
movd mm1, dword [rsp]
movd mm1, dword [rsp + 0x12]
movd mm1, dword [rsp + 0x1234]
movd mm1, dword [rsp + 0x12345678]
movd mm1, dword [rsp + rax]
movd mm1, dword [rsp + rbp]
movd mm1, dword [rsp + 2*rbp]
movd mm1, dword [rsp + 4*rbp]
movd mm1, dword [rsp + 8*rbp]
movd mm1, dword [rax]
movd mm1, dword [rcx]
movd mm1, dword [rdx]
movd mm1, dword [rbx]
movd mm1, dword [rsp]
movd mm1, dword [rbp]
movd mm1, dword [rsi]
movd mm1, dword [rdi]
movd mm1, dword [rax + 2*rax]
movd mm1, dword [rcx + 2*rcx]
movd mm1, dword [rdx + 2*rdx]
movd mm1, dword [rbx + 2*rbx]
movd mm1, dword [rbp + 2*rbp]
movd mm1, dword [rsi + 2*rsi]
movd mm1, dword [rdi + 2*rdi]
movd mm2, dword [rip + 0x13]
movd mm2, dword [rip + 0x1235]
movd mm2, dword [rip + 0x12345679]
movd mm2, dword [rbx]
movd mm2, dword [rcx + 0x14]
movd mm2, dword [rdx + 0x15]
movd mm2, dword [rbx + 0x1235]
movd mm2, dword [rbx + 0x12345679]
movd mm2, dword [rbx + rcx]
movd mm2, dword [rbx + 4 * rcx]
movd mm2, dword [rbx + rcx + 0x13]
movd mm2, dword [rbx + rcx + 0x1235]
movd mm2, dword [rbx + rcx + 0x12345679]
movd mm2, dword [rbx + 4 * rcx + 0x13]
movd mm2, dword [rbx + 4 * rcx + 0x1235]
movd mm2, dword [rbx + 8 * rcx + 0x12345679]
movd mm2, dword [4 * rcx]
movd mm2, dword [4 * rcx + 0x13]
movd mm2, dword [4 * rcx + 0x1235]
movd mm2, dword [4 * rcx + 0x12345679]
movd mm2, dword [rbp]
movd mm2, dword [rbp + 0x12]
movd mm2, dword [rbp + 0x1234]
movd mm2, dword [rbp + 0x12345678]
movd mm2, dword [4 * rbp]
movd mm2, dword [4 * rbp + 0x12]
movd mm2, dword [4 * rbp + 0x1234]
movd mm2, dword [4 * rbp + 0x12345678]
movd mm2, dword [rbx + 4 * rbp]
movd mm2, dword [rbx + 4 * rbp + 0x12]
movd mm2, dword [rbx + 4 * rbp + 0x1234]
movd mm2, dword [rbx + 4 * rbp + 0x12345678]
movd mm2, dword [rsp]
movd mm2, dword [rsp + 0x12]
movd mm2, dword [rsp + 0x1234]
movd mm2, dword [rsp + 0x12345678]
movd mm2, dword [rsp + rax]
movd mm2, dword [rsp + rbp]
movd mm2, dword [rsp + 2*rbp]
movd mm2, dword [rsp + 4*rbp]
movd mm2, dword [rsp + 8*rbp]
movd mm2, dword [rax]
movd mm2, dword [rcx]
movd mm2, dword [rdx]
movd mm2, dword [rbx]
movd mm2, dword [rsp]
movd mm2, dword [rbp]
movd mm2, dword [rsi]
movd mm2, dword [rdi]
movd mm2, dword [rax + 2*rax]
movd mm2, dword [rcx + 2*rcx]
movd mm2, dword [rdx + 2*rdx]
movd mm2, dword [rbx + 2*rbx]
movd mm2, dword [rbp + 2*rbp]
movd mm2, dword [rsi + 2*rsi]
movd mm2, dword [rdi + 2*rdi]
movd mm3, dword [rip + 0x13]
movd mm3, dword [rip + 0x1235]
movd mm3, dword [rip + 0x12345679]
movd mm3, dword [rbx]
movd mm3, dword [rcx + 0x14]
movd mm3, dword [rdx + 0x15]
movd mm3, dword [rbx + 0x1235]
movd mm3, dword [rbx + 0x12345679]
movd mm3, dword [rbx + rcx]
movd mm3, dword [rbx + 4 * rcx]
movd mm3, dword [rbx + rcx + 0x13]
movd mm3, dword [rbx + rcx + 0x1235]
movd mm3, dword [rbx + rcx + 0x12345679]
movd mm3, dword [rbx + 4 * rcx + 0x13]
movd mm3, dword [rbx + 4 * rcx + 0x1235]
movd mm3, dword [rbx + 8 * rcx + 0x12345679]
movd mm3, dword [4 * rcx]
movd mm3, dword [4 * rcx + 0x13]
movd mm3, dword [4 * rcx + 0x1235]
movd mm3, dword [4 * rcx + 0x12345679]
movd mm3, dword [rbp]
movd mm3, dword [rbp + 0x12]
movd mm3, dword [rbp + 0x1234]
movd mm3, dword [rbp + 0x12345678]
movd mm3, dword [4 * rbp]
movd mm3, dword [4 * rbp + 0x12]
movd mm3, dword [4 * rbp + 0x1234]
movd mm3, dword [4 * rbp + 0x12345678]
movd mm3, dword [rbx + 4 * rbp]
movd mm3, dword [rbx + 4 * rbp + 0x12]
movd mm3, dword [rbx + 4 * rbp + 0x1234]
movd mm3, dword [rbx + 4 * rbp + 0x12345678]
movd mm3, dword [rsp]
movd mm3, dword [rsp + 0x12]
movd mm3, dword [rsp + 0x1234]
movd mm3, dword [rsp + 0x12345678]
movd mm3, dword [rsp + rax]
movd mm3, dword [rsp + rbp]
movd mm3, dword [rsp + 2*rbp]
movd mm3, dword [rsp + 4*rbp]
movd mm3, dword [rsp + 8*rbp]
movd mm3, dword [rax]
movd mm3, dword [rcx]
movd mm3, dword [rdx]
movd mm3, dword [rbx]
movd mm3, dword [rsp]
movd mm3, dword [rbp]
movd mm3, dword [rsi]
movd mm3, dword [rdi]
movd mm3, dword [rax + 2*rax]
movd mm3, dword [rcx + 2*rcx]
movd mm3, dword [rdx + 2*rdx]
movd mm3, dword [rbx + 2*rbx]
movd mm3, dword [rbp + 2*rbp]
movd mm3, dword [rsi + 2*rsi]
movd mm3, dword [rdi + 2*rdi]
movd mm4, dword [rip + 0x13]
movd mm4, dword [rip + 0x1235]
movd mm4, dword [rip + 0x12345679]
movd mm4, dword [rbx]
movd mm4, dword [rcx + 0x14]
movd mm4, dword [rdx + 0x15]
movd mm4, dword [rbx + 0x1235]
movd mm4, dword [rbx + 0x12345679]
movd mm4, dword [rbx + rcx]
movd mm4, dword [rbx + 4 * rcx]
movd mm4, dword [rbx + rcx + 0x13]
movd mm4, dword [rbx + rcx + 0x1235]
movd mm4, dword [rbx + rcx + 0x12345679]
movd mm4, dword [rbx + 4 * rcx + 0x13]
movd mm4, dword [rbx + 4 * rcx + 0x1235]
movd mm4, dword [rbx + 8 * rcx + 0x12345679]
movd mm4, dword [4 * rcx]
movd mm4, dword [4 * rcx + 0x13]
movd mm4, dword [4 * rcx + 0x1235]
movd mm4, dword [4 * rcx + 0x12345679]
movd mm4, dword [rbp]
movd mm4, dword [rbp + 0x12]
movd mm4, dword [rbp + 0x1234]
movd mm4, dword [rbp + 0x12345678]
movd mm4, dword [4 * rbp]
movd mm4, dword [4 * rbp + 0x12]
movd mm4, dword [4 * rbp + 0x1234]
movd mm4, dword [4 * rbp + 0x12345678]
movd mm4, dword [rbx + 4 * rbp]
movd mm4, dword [rbx + 4 * rbp + 0x12]
movd mm4, dword [rbx + 4 * rbp + 0x1234]
movd mm4, dword [rbx + 4 * rbp + 0x12345678]
movd mm4, dword [rsp]
movd mm4, dword [rsp + 0x12]
movd mm4, dword [rsp + 0x1234]
movd mm4, dword [rsp + 0x12345678]
movd mm4, dword [rsp + rax]
movd mm4, dword [rsp + rbp]
movd mm4, dword [rsp + 2*rbp]
movd mm4, dword [rsp + 4*rbp]
movd mm4, dword [rsp + 8*rbp]
movd mm4, dword [rax]
movd mm4, dword [rcx]
movd mm4, dword [rdx]
movd mm4, dword [rbx]
movd mm4, dword [rsp]
movd mm4, dword [rbp]
movd mm4, dword [rsi]
movd mm4, dword [rdi]
movd mm4, dword [rax + 2*rax]
movd mm4, dword [rcx + 2*rcx]
movd mm4, dword [rdx + 2*rdx]
movd mm4, dword [rbx + 2*rbx]
movd mm4, dword [rbp + 2*rbp]
movd mm4, dword [rsi + 2*rsi]
movd mm4, dword [rdi + 2*rdi]
movd mm5, dword [rip + 0x13]
movd mm5, dword [rip + 0x1235]
movd mm5, dword [rip + 0x12345679]
movd mm5, dword [rbx]
movd mm5, dword [rcx + 0x14]
movd mm5, dword [rdx + 0x15]
movd mm5, dword [rbx + 0x1235]
movd mm5, dword [rbx + 0x12345679]
movd mm5, dword [rbx + rcx]
movd mm5, dword [rbx + 4 * rcx]
movd mm5, dword [rbx + rcx + 0x13]
movd mm5, dword [rbx + rcx + 0x1235]
movd mm5, dword [rbx + rcx + 0x12345679]
movd mm5, dword [rbx + 4 * rcx + 0x13]
movd mm5, dword [rbx + 4 * rcx + 0x1235]
movd mm5, dword [rbx + 8 * rcx + 0x12345679]
movd mm5, dword [4 * rcx]
movd mm5, dword [4 * rcx + 0x13]
movd mm5, dword [4 * rcx + 0x1235]
movd mm5, dword [4 * rcx + 0x12345679]
movd mm5, dword [rbp]
movd mm5, dword [rbp + 0x12]
movd mm5, dword [rbp + 0x1234]
movd mm5, dword [rbp + 0x12345678]
movd mm5, dword [4 * rbp]
movd mm5, dword [4 * rbp + 0x12]
movd mm5, dword [4 * rbp + 0x1234]
movd mm5, dword [4 * rbp + 0x12345678]
movd mm5, dword [rbx + 4 * rbp]
movd mm5, dword [rbx + 4 * rbp + 0x12]
movd mm5, dword [rbx + 4 * rbp + 0x1234]
movd mm5, dword [rbx + 4 * rbp + 0x12345678]
movd mm5, dword [rsp]
movd mm5, dword [rsp + 0x12]
movd mm5, dword [rsp + 0x1234]
movd mm5, dword [rsp + 0x12345678]
movd mm5, dword [rsp + rax]
movd mm5, dword [rsp + rbp]
movd mm5, dword [rsp + 2*rbp]
movd mm5, dword [rsp + 4*rbp]
movd mm5, dword [rsp + 8*rbp]
movd mm5, dword [rax]
movd mm5, dword [rcx]
movd mm5, dword [rdx]
movd mm5, dword [rbx]
movd mm5, dword [rsp]
movd mm5, dword [rbp]
movd mm5, dword [rsi]
movd mm5, dword [rdi]
movd mm5, dword [rax + 2*rax]
movd mm5, dword [rcx + 2*rcx]
movd mm5, dword [rdx + 2*rdx]
movd mm5, dword [rbx + 2*rbx]
movd mm5, dword [rbp + 2*rbp]
movd mm5, dword [rsi + 2*rsi]
movd mm5, dword [rdi + 2*rdi]
movd mm6, dword [rip + 0x13]
movd mm6, dword [rip + 0x1235]
movd mm6, dword [rip + 0x12345679]
movd mm6, dword [rbx]
movd mm6, dword [rcx + 0x14]
movd mm6, dword [rdx + 0x15]
movd mm6, dword [rbx + 0x1235]
movd mm6, dword [rbx + 0x12345679]
movd mm6, dword [rbx + rcx]
movd mm6, dword [rbx + 4 * rcx]
movd mm6, dword [rbx + rcx + 0x13]
movd mm6, dword [rbx + rcx + 0x1235]
movd mm6, dword [rbx + rcx + 0x12345679]
movd mm6, dword [rbx + 4 * rcx + 0x13]
movd mm6, dword [rbx + 4 * rcx + 0x1235]
movd mm6, dword [rbx + 8 * rcx + 0x12345679]
movd mm6, dword [4 * rcx]
movd mm6, dword [4 * rcx + 0x13]
movd mm6, dword [4 * rcx + 0x1235]
movd mm6, dword [4 * rcx + 0x12345679]
movd mm6, dword [rbp]
movd mm6, dword [rbp + 0x12]
movd mm6, dword [rbp + 0x1234]
movd mm6, dword [rbp + 0x12345678]
movd mm6, dword [4 * rbp]
movd mm6, dword [4 * rbp + 0x12]
movd mm6, dword [4 * rbp + 0x1234]
movd mm6, dword [4 * rbp + 0x12345678]
movd mm6, dword [rbx + 4 * rbp]
movd mm6, dword [rbx + 4 * rbp + 0x12]
movd mm6, dword [rbx + 4 * rbp + 0x1234]
movd mm6, dword [rbx + 4 * rbp + 0x12345678]
movd mm6, dword [rsp]
movd mm6, dword [rsp + 0x12]
movd mm6, dword [rsp + 0x1234]
movd mm6, dword [rsp + 0x12345678]
movd mm6, dword [rsp + rax]
movd mm6, dword [rsp + rbp]
movd mm6, dword [rsp + 2*rbp]
movd mm6, dword [rsp + 4*rbp]
movd mm6, dword [rsp + 8*rbp]
movd mm6, dword [rax]
movd mm6, dword [rcx]
movd mm6, dword [rdx]
movd mm6, dword [rbx]
movd mm6, dword [rsp]
movd mm6, dword [rbp]
movd mm6, dword [rsi]
movd mm6, dword [rdi]
movd mm6, dword [rax + 2*rax]
movd mm6, dword [rcx + 2*rcx]
movd mm6, dword [rdx + 2*rdx]
movd mm6, dword [rbx + 2*rbx]
movd mm6, dword [rbp + 2*rbp]
movd mm6, dword [rsi + 2*rsi]
movd mm6, dword [rdi + 2*rdi]
movd mm7, dword [rip + 0x13]
movd mm7, dword [rip + 0x1235]
movd mm7, dword [rip + 0x12345679]
movd mm7, dword [rbx]
movd mm7, dword [rcx + 0x14]
movd mm7, dword [rdx + 0x15]
movd mm7, dword [rbx + 0x1235]
movd mm7, dword [rbx + 0x12345679]
movd mm7, dword [rbx + rcx]
movd mm7, dword [rbx + 4 * rcx]
movd mm7, dword [rbx + rcx + 0x13]
movd mm7, dword [rbx + rcx + 0x1235]
movd mm7, dword [rbx + rcx + 0x12345679]
movd mm7, dword [rbx + 4 * rcx + 0x13]
movd mm7, dword [rbx + 4 * rcx + 0x1235]
movd mm7, dword [rbx + 8 * rcx + 0x12345679]
movd mm7, dword [4 * rcx]
movd mm7, dword [4 * rcx + 0x13]
movd mm7, dword [4 * rcx + 0x1235]
movd mm7, dword [4 * rcx + 0x12345679]
movd mm7, dword [rbp]
movd mm7, dword [rbp + 0x12]
movd mm7, dword [rbp + 0x1234]
movd mm7, dword [rbp + 0x12345678]
movd mm7, dword [4 * rbp]
movd mm7, dword [4 * rbp + 0x12]
movd mm7, dword [4 * rbp + 0x1234]
movd mm7, dword [4 * rbp + 0x12345678]
movd mm7, dword [rbx + 4 * rbp]
movd mm7, dword [rbx + 4 * rbp + 0x12]
movd mm7, dword [rbx + 4 * rbp + 0x1234]
movd mm7, dword [rbx + 4 * rbp + 0x12345678]
movd mm7, dword [rsp]
movd mm7, dword [rsp + 0x12]
movd mm7, dword [rsp + 0x1234]
movd mm7, dword [rsp + 0x12345678]
movd mm7, dword [rsp + rax]
movd mm7, dword [rsp + rbp]
movd mm7, dword [rsp + 2*rbp]
movd mm7, dword [rsp + 4*rbp]
movd mm7, dword [rsp + 8*rbp]
movd mm7, dword [rax]
movd mm7, dword [rcx]
movd mm7, dword [rdx]
movd mm7, dword [rbx]
movd mm7, dword [rsp]
movd mm7, dword [rbp]
movd mm7, dword [rsi]
movd mm7, dword [rdi]
movd mm7, dword [rax + 2*rax]
movd mm7, dword [rcx + 2*rcx]
movd mm7, dword [rdx + 2*rdx]
movd mm7, dword [rbx + 2*rbx]
movd mm7, dword [rbp + 2*rbp]
movd mm7, dword [rsi + 2*rsi]
movd mm7, dword [rdi + 2*rdi]

; ------------------------------------------------------------------------------
; opcode r32,mm
; ------------------------------------------------------------------------------
movd eax, mm0
movd eax, mm1
movd eax, mm2
movd eax, mm3
movd eax, mm4
movd eax, mm5
movd eax, mm6
movd eax, mm7
movd ecx, mm0
movd ecx, mm1
movd ecx, mm2
movd ecx, mm3
movd ecx, mm4
movd ecx, mm5
movd ecx, mm6
movd ecx, mm7
movd edx, mm0
movd edx, mm1
movd edx, mm2
movd edx, mm3
movd edx, mm4
movd edx, mm5
movd edx, mm6
movd edx, mm7
movd ebx, mm0
movd ebx, mm1
movd ebx, mm2
movd ebx, mm3
movd ebx, mm4
movd ebx, mm5
movd ebx, mm6
movd ebx, mm7
movd esp, mm0
movd esp, mm1
movd esp, mm2
movd esp, mm3
movd esp, mm4
movd esp, mm5
movd esp, mm6
movd esp, mm7
movd ebp, mm0
movd ebp, mm1
movd ebp, mm2
movd ebp, mm3
movd ebp, mm4
movd ebp, mm5
movd ebp, mm6
movd ebp, mm7
movd esi, mm0
movd esi, mm1
movd esi, mm2
movd esi, mm3
movd esi, mm4
movd esi, mm5
movd esi, mm6
movd esi, mm7
movd edi, mm0
movd edi, mm1
movd edi, mm2
movd edi, mm3
movd edi, mm4
movd edi, mm5
movd edi, mm6
movd edi, mm7

; ------------------------------------------------------------------------------
; opcode m32,mm
; ------------------------------------------------------------------------------
movd dword [rip + 0x13], mm0
movd dword [rip + 0x13], mm1
movd dword [rip + 0x13], mm2
movd dword [rip + 0x13], mm3
movd dword [rip + 0x13], mm4
movd dword [rip + 0x13], mm5
movd dword [rip + 0x13], mm6
movd dword [rip + 0x13], mm7
movd dword [rip + 0x1235], mm0
movd dword [rip + 0x1235], mm1
movd dword [rip + 0x1235], mm2
movd dword [rip + 0x1235], mm3
movd dword [rip + 0x1235], mm4
movd dword [rip + 0x1235], mm5
movd dword [rip + 0x1235], mm6
movd dword [rip + 0x1235], mm7
movd dword [rip + 0x12345679], mm0
movd dword [rip + 0x12345679], mm1
movd dword [rip + 0x12345679], mm2
movd dword [rip + 0x12345679], mm3
movd dword [rip + 0x12345679], mm4
movd dword [rip + 0x12345679], mm5
movd dword [rip + 0x12345679], mm6
movd dword [rip + 0x12345679], mm7
movd dword [rbx], mm0
movd dword [rbx], mm1
movd dword [rbx], mm2
movd dword [rbx], mm3
movd dword [rbx], mm4
movd dword [rbx], mm5
movd dword [rbx], mm6
movd dword [rbx], mm7
movd dword [rcx + 0x14], mm0
movd dword [rcx + 0x14], mm1
movd dword [rcx + 0x14], mm2
movd dword [rcx + 0x14], mm3
movd dword [rcx + 0x14], mm4
movd dword [rcx + 0x14], mm5
movd dword [rcx + 0x14], mm6
movd dword [rcx + 0x14], mm7
movd dword [rdx + 0x15], mm0
movd dword [rdx + 0x15], mm1
movd dword [rdx + 0x15], mm2
movd dword [rdx + 0x15], mm3
movd dword [rdx + 0x15], mm4
movd dword [rdx + 0x15], mm5
movd dword [rdx + 0x15], mm6
movd dword [rdx + 0x15], mm7
movd dword [rbx + 0x1235], mm0
movd dword [rbx + 0x1235], mm1
movd dword [rbx + 0x1235], mm2
movd dword [rbx + 0x1235], mm3
movd dword [rbx + 0x1235], mm4
movd dword [rbx + 0x1235], mm5
movd dword [rbx + 0x1235], mm6
movd dword [rbx + 0x1235], mm7
movd dword [rbx + 0x12345679], mm0
movd dword [rbx + 0x12345679], mm1
movd dword [rbx + 0x12345679], mm2
movd dword [rbx + 0x12345679], mm3
movd dword [rbx + 0x12345679], mm4
movd dword [rbx + 0x12345679], mm5
movd dword [rbx + 0x12345679], mm6
movd dword [rbx + 0x12345679], mm7
movd dword [rbx + rcx], mm0
movd dword [rbx + rcx], mm1
movd dword [rbx + rcx], mm2
movd dword [rbx + rcx], mm3
movd dword [rbx + rcx], mm4
movd dword [rbx + rcx], mm5
movd dword [rbx + rcx], mm6
movd dword [rbx + rcx], mm7
movd dword [rbx + 4 * rcx], mm0
movd dword [rbx + 4 * rcx], mm1
movd dword [rbx + 4 * rcx], mm2
movd dword [rbx + 4 * rcx], mm3
movd dword [rbx + 4 * rcx], mm4
movd dword [rbx + 4 * rcx], mm5
movd dword [rbx + 4 * rcx], mm6
movd dword [rbx + 4 * rcx], mm7
movd dword [rbx + rcx + 0x13], mm0
movd dword [rbx + rcx + 0x13], mm1
movd dword [rbx + rcx + 0x13], mm2
movd dword [rbx + rcx + 0x13], mm3
movd dword [rbx + rcx + 0x13], mm4
movd dword [rbx + rcx + 0x13], mm5
movd dword [rbx + rcx + 0x13], mm6
movd dword [rbx + rcx + 0x13], mm7
movd dword [rbx + rcx + 0x1235], mm0
movd dword [rbx + rcx + 0x1235], mm1
movd dword [rbx + rcx + 0x1235], mm2
movd dword [rbx + rcx + 0x1235], mm3
movd dword [rbx + rcx + 0x1235], mm4
movd dword [rbx + rcx + 0x1235], mm5
movd dword [rbx + rcx + 0x1235], mm6
movd dword [rbx + rcx + 0x1235], mm7
movd dword [rbx + rcx + 0x12345679], mm0
movd dword [rbx + rcx + 0x12345679], mm1
movd dword [rbx + rcx + 0x12345679], mm2
movd dword [rbx + rcx + 0x12345679], mm3
movd dword [rbx + rcx + 0x12345679], mm4
movd dword [rbx + rcx + 0x12345679], mm5
movd dword [rbx + rcx + 0x12345679], mm6
movd dword [rbx + rcx + 0x12345679], mm7
movd dword [rbx + 4 * rcx + 0x13], mm0
movd dword [rbx + 4 * rcx + 0x13], mm1
movd dword [rbx + 4 * rcx + 0x13], mm2
movd dword [rbx + 4 * rcx + 0x13], mm3
movd dword [rbx + 4 * rcx + 0x13], mm4
movd dword [rbx + 4 * rcx + 0x13], mm5
movd dword [rbx + 4 * rcx + 0x13], mm6
movd dword [rbx + 4 * rcx + 0x13], mm7
movd dword [rbx + 4 * rcx + 0x1235], mm0
movd dword [rbx + 4 * rcx + 0x1235], mm1
movd dword [rbx + 4 * rcx + 0x1235], mm2
movd dword [rbx + 4 * rcx + 0x1235], mm3
movd dword [rbx + 4 * rcx + 0x1235], mm4
movd dword [rbx + 4 * rcx + 0x1235], mm5
movd dword [rbx + 4 * rcx + 0x1235], mm6
movd dword [rbx + 4 * rcx + 0x1235], mm7
movd dword [rbx + 8 * rcx + 0x12345679], mm0
movd dword [rbx + 8 * rcx + 0x12345679], mm1
movd dword [rbx + 8 * rcx + 0x12345679], mm2
movd dword [rbx + 8 * rcx + 0x12345679], mm3
movd dword [rbx + 8 * rcx + 0x12345679], mm4
movd dword [rbx + 8 * rcx + 0x12345679], mm5
movd dword [rbx + 8 * rcx + 0x12345679], mm6
movd dword [rbx + 8 * rcx + 0x12345679], mm7
movd dword [4 * rcx], mm0
movd dword [4 * rcx], mm1
movd dword [4 * rcx], mm2
movd dword [4 * rcx], mm3
movd dword [4 * rcx], mm4
movd dword [4 * rcx], mm5
movd dword [4 * rcx], mm6
movd dword [4 * rcx], mm7
movd dword [4 * rcx + 0x13], mm0
movd dword [4 * rcx + 0x13], mm1
movd dword [4 * rcx + 0x13], mm2
movd dword [4 * rcx + 0x13], mm3
movd dword [4 * rcx + 0x13], mm4
movd dword [4 * rcx + 0x13], mm5
movd dword [4 * rcx + 0x13], mm6
movd dword [4 * rcx + 0x13], mm7
movd dword [4 * rcx + 0x1235], mm0
movd dword [4 * rcx + 0x1235], mm1
movd dword [4 * rcx + 0x1235], mm2
movd dword [4 * rcx + 0x1235], mm3
movd dword [4 * rcx + 0x1235], mm4
movd dword [4 * rcx + 0x1235], mm5
movd dword [4 * rcx + 0x1235], mm6
movd dword [4 * rcx + 0x1235], mm7
movd dword [4 * rcx + 0x12345679], mm0
movd dword [4 * rcx + 0x12345679], mm1
movd dword [4 * rcx + 0x12345679], mm2
movd dword [4 * rcx + 0x12345679], mm3
movd dword [4 * rcx + 0x12345679], mm4
movd dword [4 * rcx + 0x12345679], mm5
movd dword [4 * rcx + 0x12345679], mm6
movd dword [4 * rcx + 0x12345679], mm7
movd dword [rbp], mm0
movd dword [rbp], mm1
movd dword [rbp], mm2
movd dword [rbp], mm3
movd dword [rbp], mm4
movd dword [rbp], mm5
movd dword [rbp], mm6
movd dword [rbp], mm7
movd dword [rbp + 0x12], mm0
movd dword [rbp + 0x12], mm1
movd dword [rbp + 0x12], mm2
movd dword [rbp + 0x12], mm3
movd dword [rbp + 0x12], mm4
movd dword [rbp + 0x12], mm5
movd dword [rbp + 0x12], mm6
movd dword [rbp + 0x12], mm7
movd dword [rbp + 0x1234], mm0
movd dword [rbp + 0x1234], mm1
movd dword [rbp + 0x1234], mm2
movd dword [rbp + 0x1234], mm3
movd dword [rbp + 0x1234], mm4
movd dword [rbp + 0x1234], mm5
movd dword [rbp + 0x1234], mm6
movd dword [rbp + 0x1234], mm7
movd dword [rbp + 0x12345678], mm0
movd dword [rbp + 0x12345678], mm1
movd dword [rbp + 0x12345678], mm2
movd dword [rbp + 0x12345678], mm3
movd dword [rbp + 0x12345678], mm4
movd dword [rbp + 0x12345678], mm5
movd dword [rbp + 0x12345678], mm6
movd dword [rbp + 0x12345678], mm7
movd dword [4 * rbp], mm0
movd dword [4 * rbp], mm1
movd dword [4 * rbp], mm2
movd dword [4 * rbp], mm3
movd dword [4 * rbp], mm4
movd dword [4 * rbp], mm5
movd dword [4 * rbp], mm6
movd dword [4 * rbp], mm7
movd dword [4 * rbp + 0x12], mm0
movd dword [4 * rbp + 0x12], mm1
movd dword [4 * rbp + 0x12], mm2
movd dword [4 * rbp + 0x12], mm3
movd dword [4 * rbp + 0x12], mm4
movd dword [4 * rbp + 0x12], mm5
movd dword [4 * rbp + 0x12], mm6
movd dword [4 * rbp + 0x12], mm7
movd dword [4 * rbp + 0x1234], mm0
movd dword [4 * rbp + 0x1234], mm1
movd dword [4 * rbp + 0x1234], mm2
movd dword [4 * rbp + 0x1234], mm3
movd dword [4 * rbp + 0x1234], mm4
movd dword [4 * rbp + 0x1234], mm5
movd dword [4 * rbp + 0x1234], mm6
movd dword [4 * rbp + 0x1234], mm7
movd dword [4 * rbp + 0x12345678], mm0
movd dword [4 * rbp + 0x12345678], mm1
movd dword [4 * rbp + 0x12345678], mm2
movd dword [4 * rbp + 0x12345678], mm3
movd dword [4 * rbp + 0x12345678], mm4
movd dword [4 * rbp + 0x12345678], mm5
movd dword [4 * rbp + 0x12345678], mm6
movd dword [4 * rbp + 0x12345678], mm7
movd dword [rbx + 4 * rbp], mm0
movd dword [rbx + 4 * rbp], mm1
movd dword [rbx + 4 * rbp], mm2
movd dword [rbx + 4 * rbp], mm3
movd dword [rbx + 4 * rbp], mm4
movd dword [rbx + 4 * rbp], mm5
movd dword [rbx + 4 * rbp], mm6
movd dword [rbx + 4 * rbp], mm7
movd dword [rbx + 4 * rbp + 0x12], mm0
movd dword [rbx + 4 * rbp + 0x12], mm1
movd dword [rbx + 4 * rbp + 0x12], mm2
movd dword [rbx + 4 * rbp + 0x12], mm3
movd dword [rbx + 4 * rbp + 0x12], mm4
movd dword [rbx + 4 * rbp + 0x12], mm5
movd dword [rbx + 4 * rbp + 0x12], mm6
movd dword [rbx + 4 * rbp + 0x12], mm7
movd dword [rbx + 4 * rbp + 0x1234], mm0
movd dword [rbx + 4 * rbp + 0x1234], mm1
movd dword [rbx + 4 * rbp + 0x1234], mm2
movd dword [rbx + 4 * rbp + 0x1234], mm3
movd dword [rbx + 4 * rbp + 0x1234], mm4
movd dword [rbx + 4 * rbp + 0x1234], mm5
movd dword [rbx + 4 * rbp + 0x1234], mm6
movd dword [rbx + 4 * rbp + 0x1234], mm7
movd dword [rbx + 4 * rbp + 0x12345678], mm0
movd dword [rbx + 4 * rbp + 0x12345678], mm1
movd dword [rbx + 4 * rbp + 0x12345678], mm2
movd dword [rbx + 4 * rbp + 0x12345678], mm3
movd dword [rbx + 4 * rbp + 0x12345678], mm4
movd dword [rbx + 4 * rbp + 0x12345678], mm5
movd dword [rbx + 4 * rbp + 0x12345678], mm6
movd dword [rbx + 4 * rbp + 0x12345678], mm7
movd dword [rsp], mm0
movd dword [rsp], mm1
movd dword [rsp], mm2
movd dword [rsp], mm3
movd dword [rsp], mm4
movd dword [rsp], mm5
movd dword [rsp], mm6
movd dword [rsp], mm7
movd dword [rsp + 0x12], mm0
movd dword [rsp + 0x12], mm1
movd dword [rsp + 0x12], mm2
movd dword [rsp + 0x12], mm3
movd dword [rsp + 0x12], mm4
movd dword [rsp + 0x12], mm5
movd dword [rsp + 0x12], mm6
movd dword [rsp + 0x12], mm7
movd dword [rsp + 0x1234], mm0
movd dword [rsp + 0x1234], mm1
movd dword [rsp + 0x1234], mm2
movd dword [rsp + 0x1234], mm3
movd dword [rsp + 0x1234], mm4
movd dword [rsp + 0x1234], mm5
movd dword [rsp + 0x1234], mm6
movd dword [rsp + 0x1234], mm7
movd dword [rsp + 0x12345678], mm0
movd dword [rsp + 0x12345678], mm1
movd dword [rsp + 0x12345678], mm2
movd dword [rsp + 0x12345678], mm3
movd dword [rsp + 0x12345678], mm4
movd dword [rsp + 0x12345678], mm5
movd dword [rsp + 0x12345678], mm6
movd dword [rsp + 0x12345678], mm7
movd dword [rsp + rax], mm0
movd dword [rsp + rax], mm1
movd dword [rsp + rax], mm2
movd dword [rsp + rax], mm3
movd dword [rsp + rax], mm4
movd dword [rsp + rax], mm5
movd dword [rsp + rax], mm6
movd dword [rsp + rax], mm7
movd dword [rsp + rbp], mm0
movd dword [rsp + rbp], mm1
movd dword [rsp + rbp], mm2
movd dword [rsp + rbp], mm3
movd dword [rsp + rbp], mm4
movd dword [rsp + rbp], mm5
movd dword [rsp + rbp], mm6
movd dword [rsp + rbp], mm7
movd dword [rsp + 2*rbp], mm0
movd dword [rsp + 2*rbp], mm1
movd dword [rsp + 2*rbp], mm2
movd dword [rsp + 2*rbp], mm3
movd dword [rsp + 2*rbp], mm4
movd dword [rsp + 2*rbp], mm5
movd dword [rsp + 2*rbp], mm6
movd dword [rsp + 2*rbp], mm7
movd dword [rsp + 4*rbp], mm0
movd dword [rsp + 4*rbp], mm1
movd dword [rsp + 4*rbp], mm2
movd dword [rsp + 4*rbp], mm3
movd dword [rsp + 4*rbp], mm4
movd dword [rsp + 4*rbp], mm5
movd dword [rsp + 4*rbp], mm6
movd dword [rsp + 4*rbp], mm7
movd dword [rsp + 8*rbp], mm0
movd dword [rsp + 8*rbp], mm1
movd dword [rsp + 8*rbp], mm2
movd dword [rsp + 8*rbp], mm3
movd dword [rsp + 8*rbp], mm4
movd dword [rsp + 8*rbp], mm5
movd dword [rsp + 8*rbp], mm6
movd dword [rsp + 8*rbp], mm7
movd dword [rax], mm0
movd dword [rax], mm1
movd dword [rax], mm2
movd dword [rax], mm3
movd dword [rax], mm4
movd dword [rax], mm5
movd dword [rax], mm6
movd dword [rax], mm7
movd dword [rcx], mm0
movd dword [rcx], mm1
movd dword [rcx], mm2
movd dword [rcx], mm3
movd dword [rcx], mm4
movd dword [rcx], mm5
movd dword [rcx], mm6
movd dword [rcx], mm7
movd dword [rdx], mm0
movd dword [rdx], mm1
movd dword [rdx], mm2
movd dword [rdx], mm3
movd dword [rdx], mm4
movd dword [rdx], mm5
movd dword [rdx], mm6
movd dword [rdx], mm7
movd dword [rbx], mm0
movd dword [rbx], mm1
movd dword [rbx], mm2
movd dword [rbx], mm3
movd dword [rbx], mm4
movd dword [rbx], mm5
movd dword [rbx], mm6
movd dword [rbx], mm7
movd dword [rsp], mm0
movd dword [rsp], mm1
movd dword [rsp], mm2
movd dword [rsp], mm3
movd dword [rsp], mm4
movd dword [rsp], mm5
movd dword [rsp], mm6
movd dword [rsp], mm7
movd dword [rbp], mm0
movd dword [rbp], mm1
movd dword [rbp], mm2
movd dword [rbp], mm3
movd dword [rbp], mm4
movd dword [rbp], mm5
movd dword [rbp], mm6
movd dword [rbp], mm7
movd dword [rsi], mm0
movd dword [rsi], mm1
movd dword [rsi], mm2
movd dword [rsi], mm3
movd dword [rsi], mm4
movd dword [rsi], mm5
movd dword [rsi], mm6
movd dword [rsi], mm7
movd dword [rdi], mm0
movd dword [rdi], mm1
movd dword [rdi], mm2
movd dword [rdi], mm3
movd dword [rdi], mm4
movd dword [rdi], mm5
movd dword [rdi], mm6
movd dword [rdi], mm7
movd dword [rax + 2*rax], mm0
movd dword [rax + 2*rax], mm1
movd dword [rax + 2*rax], mm2
movd dword [rax + 2*rax], mm3
movd dword [rax + 2*rax], mm4
movd dword [rax + 2*rax], mm5
movd dword [rax + 2*rax], mm6
movd dword [rax + 2*rax], mm7
movd dword [rcx + 2*rcx], mm0
movd dword [rcx + 2*rcx], mm1
movd dword [rcx + 2*rcx], mm2
movd dword [rcx + 2*rcx], mm3
movd dword [rcx + 2*rcx], mm4
movd dword [rcx + 2*rcx], mm5
movd dword [rcx + 2*rcx], mm6
movd dword [rcx + 2*rcx], mm7
movd dword [rdx + 2*rdx], mm0
movd dword [rdx + 2*rdx], mm1
movd dword [rdx + 2*rdx], mm2
movd dword [rdx + 2*rdx], mm3
movd dword [rdx + 2*rdx], mm4
movd dword [rdx + 2*rdx], mm5
movd dword [rdx + 2*rdx], mm6
movd dword [rdx + 2*rdx], mm7
movd dword [rbx + 2*rbx], mm0
movd dword [rbx + 2*rbx], mm1
movd dword [rbx + 2*rbx], mm2
movd dword [rbx + 2*rbx], mm3
movd dword [rbx + 2*rbx], mm4
movd dword [rbx + 2*rbx], mm5
movd dword [rbx + 2*rbx], mm6
movd dword [rbx + 2*rbx], mm7
movd dword [rbp + 2*rbp], mm0
movd dword [rbp + 2*rbp], mm1
movd dword [rbp + 2*rbp], mm2
movd dword [rbp + 2*rbp], mm3
movd dword [rbp + 2*rbp], mm4
movd dword [rbp + 2*rbp], mm5
movd dword [rbp + 2*rbp], mm6
movd dword [rbp + 2*rbp], mm7
movd dword [rsi + 2*rsi], mm0
movd dword [rsi + 2*rsi], mm1
movd dword [rsi + 2*rsi], mm2
movd dword [rsi + 2*rsi], mm3
movd dword [rsi + 2*rsi], mm4
movd dword [rsi + 2*rsi], mm5
movd dword [rsi + 2*rsi], mm6
movd dword [rsi + 2*rsi], mm7
movd dword [rdi + 2*rdi], mm0
movd dword [rdi + 2*rdi], mm1
movd dword [rdi + 2*rdi], mm2
movd dword [rdi + 2*rdi], mm3
movd dword [rdi + 2*rdi], mm4
movd dword [rdi + 2*rdi], mm5
movd dword [rdi + 2*rdi], mm6
movd dword [rdi + 2*rdi], mm7

