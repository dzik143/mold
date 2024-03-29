use64
; ------------------------------------------------------------------------------
; opcode r64,r32
; ------------------------------------------------------------------------------
movsxd rax, eax
movsxd rax, ecx
movsxd rax, edx
movsxd rax, ebx
movsxd rax, esp
movsxd rax, ebp
movsxd rax, esi
movsxd rax, edi
movsxd rcx, eax
movsxd rcx, ecx
movsxd rcx, edx
movsxd rcx, ebx
movsxd rcx, esp
movsxd rcx, ebp
movsxd rcx, esi
movsxd rcx, edi
movsxd rdx, eax
movsxd rdx, ecx
movsxd rdx, edx
movsxd rdx, ebx
movsxd rdx, esp
movsxd rdx, ebp
movsxd rdx, esi
movsxd rdx, edi
movsxd rbx, eax
movsxd rbx, ecx
movsxd rbx, edx
movsxd rbx, ebx
movsxd rbx, esp
movsxd rbx, ebp
movsxd rbx, esi
movsxd rbx, edi
movsxd rsp, eax
movsxd rsp, ecx
movsxd rsp, edx
movsxd rsp, ebx
movsxd rsp, esp
movsxd rsp, ebp
movsxd rsp, esi
movsxd rsp, edi
movsxd rbp, eax
movsxd rbp, ecx
movsxd rbp, edx
movsxd rbp, ebx
movsxd rbp, esp
movsxd rbp, ebp
movsxd rbp, esi
movsxd rbp, edi
movsxd rsi, eax
movsxd rsi, ecx
movsxd rsi, edx
movsxd rsi, ebx
movsxd rsi, esp
movsxd rsi, ebp
movsxd rsi, esi
movsxd rsi, edi
movsxd rdi, eax
movsxd rdi, ecx
movsxd rdi, edx
movsxd rdi, ebx
movsxd rdi, esp
movsxd rdi, ebp
movsxd rdi, esi
movsxd rdi, edi

; ------------------------------------------------------------------------------
; opcode r64,m32
; ------------------------------------------------------------------------------
movsxd rax, dword [rip + 0x13]
movsxd rax, dword [rip + 0x1235]
movsxd rax, dword [rip + 0x12345679]
movsxd rax, dword [rbx]
movsxd rax, dword [rcx + 0x14]
movsxd rax, dword [rdx + 0x15]
movsxd rax, dword [rbx + 0x1235]
movsxd rax, dword [rbx + 0x12345679]
movsxd rax, dword [rbx + rcx]
movsxd rax, dword [rbx + 4 * rcx]
movsxd rax, dword [rbx + rcx + 0x13]
movsxd rax, dword [rbx + rcx + 0x1235]
movsxd rax, dword [rbx + rcx + 0x12345679]
movsxd rax, dword [rbx + 4 * rcx + 0x13]
movsxd rax, dword [rbx + 4 * rcx + 0x1235]
movsxd rax, dword [rbx + 8 * rcx + 0x12345679]
movsxd rax, dword [4 * rcx]
movsxd rax, dword [4 * rcx + 0x13]
movsxd rax, dword [4 * rcx + 0x1235]
movsxd rax, dword [4 * rcx + 0x12345679]
movsxd rax, dword [rbp]
movsxd rax, dword [rbp + 0x12]
movsxd rax, dword [rbp + 0x1234]
movsxd rax, dword [rbp + 0x12345678]
movsxd rax, dword [4 * rbp]
movsxd rax, dword [4 * rbp + 0x12]
movsxd rax, dword [4 * rbp + 0x1234]
movsxd rax, dword [4 * rbp + 0x12345678]
movsxd rax, dword [rbx + 4 * rbp]
movsxd rax, dword [rbx + 4 * rbp + 0x12]
movsxd rax, dword [rbx + 4 * rbp + 0x1234]
movsxd rax, dword [rbx + 4 * rbp + 0x12345678]
movsxd rax, dword [rsp]
movsxd rax, dword [rsp + 0x12]
movsxd rax, dword [rsp + 0x1234]
movsxd rax, dword [rsp + 0x12345678]
movsxd rax, dword [rsp + rax]
movsxd rax, dword [rsp + rbp]
movsxd rax, dword [rsp + 2*rbp]
movsxd rax, dword [rsp + 4*rbp]
movsxd rax, dword [rsp + 8*rbp]
movsxd rax, dword [rax]
movsxd rax, dword [rcx]
movsxd rax, dword [rdx]
movsxd rax, dword [rbx]
movsxd rax, dword [rsp]
movsxd rax, dword [rbp]
movsxd rax, dword [rsi]
movsxd rax, dword [rdi]
movsxd rax, dword [rax + 2*rax]
movsxd rax, dword [rcx + 2*rcx]
movsxd rax, dword [rdx + 2*rdx]
movsxd rax, dword [rbx + 2*rbx]
movsxd rax, dword [rbp + 2*rbp]
movsxd rax, dword [rsi + 2*rsi]
movsxd rax, dword [rdi + 2*rdi]
movsxd rcx, dword [rip + 0x13]
movsxd rcx, dword [rip + 0x1235]
movsxd rcx, dword [rip + 0x12345679]
movsxd rcx, dword [rbx]
movsxd rcx, dword [rcx + 0x14]
movsxd rcx, dword [rdx + 0x15]
movsxd rcx, dword [rbx + 0x1235]
movsxd rcx, dword [rbx + 0x12345679]
movsxd rcx, dword [rbx + rcx]
movsxd rcx, dword [rbx + 4 * rcx]
movsxd rcx, dword [rbx + rcx + 0x13]
movsxd rcx, dword [rbx + rcx + 0x1235]
movsxd rcx, dword [rbx + rcx + 0x12345679]
movsxd rcx, dword [rbx + 4 * rcx + 0x13]
movsxd rcx, dword [rbx + 4 * rcx + 0x1235]
movsxd rcx, dword [rbx + 8 * rcx + 0x12345679]
movsxd rcx, dword [4 * rcx]
movsxd rcx, dword [4 * rcx + 0x13]
movsxd rcx, dword [4 * rcx + 0x1235]
movsxd rcx, dword [4 * rcx + 0x12345679]
movsxd rcx, dword [rbp]
movsxd rcx, dword [rbp + 0x12]
movsxd rcx, dword [rbp + 0x1234]
movsxd rcx, dword [rbp + 0x12345678]
movsxd rcx, dword [4 * rbp]
movsxd rcx, dword [4 * rbp + 0x12]
movsxd rcx, dword [4 * rbp + 0x1234]
movsxd rcx, dword [4 * rbp + 0x12345678]
movsxd rcx, dword [rbx + 4 * rbp]
movsxd rcx, dword [rbx + 4 * rbp + 0x12]
movsxd rcx, dword [rbx + 4 * rbp + 0x1234]
movsxd rcx, dword [rbx + 4 * rbp + 0x12345678]
movsxd rcx, dword [rsp]
movsxd rcx, dword [rsp + 0x12]
movsxd rcx, dword [rsp + 0x1234]
movsxd rcx, dword [rsp + 0x12345678]
movsxd rcx, dword [rsp + rax]
movsxd rcx, dword [rsp + rbp]
movsxd rcx, dword [rsp + 2*rbp]
movsxd rcx, dword [rsp + 4*rbp]
movsxd rcx, dword [rsp + 8*rbp]
movsxd rcx, dword [rax]
movsxd rcx, dword [rcx]
movsxd rcx, dword [rdx]
movsxd rcx, dword [rbx]
movsxd rcx, dword [rsp]
movsxd rcx, dword [rbp]
movsxd rcx, dword [rsi]
movsxd rcx, dword [rdi]
movsxd rcx, dword [rax + 2*rax]
movsxd rcx, dword [rcx + 2*rcx]
movsxd rcx, dword [rdx + 2*rdx]
movsxd rcx, dword [rbx + 2*rbx]
movsxd rcx, dword [rbp + 2*rbp]
movsxd rcx, dword [rsi + 2*rsi]
movsxd rcx, dword [rdi + 2*rdi]
movsxd rdx, dword [rip + 0x13]
movsxd rdx, dword [rip + 0x1235]
movsxd rdx, dword [rip + 0x12345679]
movsxd rdx, dword [rbx]
movsxd rdx, dword [rcx + 0x14]
movsxd rdx, dword [rdx + 0x15]
movsxd rdx, dword [rbx + 0x1235]
movsxd rdx, dword [rbx + 0x12345679]
movsxd rdx, dword [rbx + rcx]
movsxd rdx, dword [rbx + 4 * rcx]
movsxd rdx, dword [rbx + rcx + 0x13]
movsxd rdx, dword [rbx + rcx + 0x1235]
movsxd rdx, dword [rbx + rcx + 0x12345679]
movsxd rdx, dword [rbx + 4 * rcx + 0x13]
movsxd rdx, dword [rbx + 4 * rcx + 0x1235]
movsxd rdx, dword [rbx + 8 * rcx + 0x12345679]
movsxd rdx, dword [4 * rcx]
movsxd rdx, dword [4 * rcx + 0x13]
movsxd rdx, dword [4 * rcx + 0x1235]
movsxd rdx, dword [4 * rcx + 0x12345679]
movsxd rdx, dword [rbp]
movsxd rdx, dword [rbp + 0x12]
movsxd rdx, dword [rbp + 0x1234]
movsxd rdx, dword [rbp + 0x12345678]
movsxd rdx, dword [4 * rbp]
movsxd rdx, dword [4 * rbp + 0x12]
movsxd rdx, dword [4 * rbp + 0x1234]
movsxd rdx, dword [4 * rbp + 0x12345678]
movsxd rdx, dword [rbx + 4 * rbp]
movsxd rdx, dword [rbx + 4 * rbp + 0x12]
movsxd rdx, dword [rbx + 4 * rbp + 0x1234]
movsxd rdx, dword [rbx + 4 * rbp + 0x12345678]
movsxd rdx, dword [rsp]
movsxd rdx, dword [rsp + 0x12]
movsxd rdx, dword [rsp + 0x1234]
movsxd rdx, dword [rsp + 0x12345678]
movsxd rdx, dword [rsp + rax]
movsxd rdx, dword [rsp + rbp]
movsxd rdx, dword [rsp + 2*rbp]
movsxd rdx, dword [rsp + 4*rbp]
movsxd rdx, dword [rsp + 8*rbp]
movsxd rdx, dword [rax]
movsxd rdx, dword [rcx]
movsxd rdx, dword [rdx]
movsxd rdx, dword [rbx]
movsxd rdx, dword [rsp]
movsxd rdx, dword [rbp]
movsxd rdx, dword [rsi]
movsxd rdx, dword [rdi]
movsxd rdx, dword [rax + 2*rax]
movsxd rdx, dword [rcx + 2*rcx]
movsxd rdx, dword [rdx + 2*rdx]
movsxd rdx, dword [rbx + 2*rbx]
movsxd rdx, dword [rbp + 2*rbp]
movsxd rdx, dword [rsi + 2*rsi]
movsxd rdx, dword [rdi + 2*rdi]
movsxd rbx, dword [rip + 0x13]
movsxd rbx, dword [rip + 0x1235]
movsxd rbx, dword [rip + 0x12345679]
movsxd rbx, dword [rbx]
movsxd rbx, dword [rcx + 0x14]
movsxd rbx, dword [rdx + 0x15]
movsxd rbx, dword [rbx + 0x1235]
movsxd rbx, dword [rbx + 0x12345679]
movsxd rbx, dword [rbx + rcx]
movsxd rbx, dword [rbx + 4 * rcx]
movsxd rbx, dword [rbx + rcx + 0x13]
movsxd rbx, dword [rbx + rcx + 0x1235]
movsxd rbx, dword [rbx + rcx + 0x12345679]
movsxd rbx, dword [rbx + 4 * rcx + 0x13]
movsxd rbx, dword [rbx + 4 * rcx + 0x1235]
movsxd rbx, dword [rbx + 8 * rcx + 0x12345679]
movsxd rbx, dword [4 * rcx]
movsxd rbx, dword [4 * rcx + 0x13]
movsxd rbx, dword [4 * rcx + 0x1235]
movsxd rbx, dword [4 * rcx + 0x12345679]
movsxd rbx, dword [rbp]
movsxd rbx, dword [rbp + 0x12]
movsxd rbx, dword [rbp + 0x1234]
movsxd rbx, dword [rbp + 0x12345678]
movsxd rbx, dword [4 * rbp]
movsxd rbx, dword [4 * rbp + 0x12]
movsxd rbx, dword [4 * rbp + 0x1234]
movsxd rbx, dword [4 * rbp + 0x12345678]
movsxd rbx, dword [rbx + 4 * rbp]
movsxd rbx, dword [rbx + 4 * rbp + 0x12]
movsxd rbx, dword [rbx + 4 * rbp + 0x1234]
movsxd rbx, dword [rbx + 4 * rbp + 0x12345678]
movsxd rbx, dword [rsp]
movsxd rbx, dword [rsp + 0x12]
movsxd rbx, dword [rsp + 0x1234]
movsxd rbx, dword [rsp + 0x12345678]
movsxd rbx, dword [rsp + rax]
movsxd rbx, dword [rsp + rbp]
movsxd rbx, dword [rsp + 2*rbp]
movsxd rbx, dword [rsp + 4*rbp]
movsxd rbx, dword [rsp + 8*rbp]
movsxd rbx, dword [rax]
movsxd rbx, dword [rcx]
movsxd rbx, dword [rdx]
movsxd rbx, dword [rbx]
movsxd rbx, dword [rsp]
movsxd rbx, dword [rbp]
movsxd rbx, dword [rsi]
movsxd rbx, dword [rdi]
movsxd rbx, dword [rax + 2*rax]
movsxd rbx, dword [rcx + 2*rcx]
movsxd rbx, dword [rdx + 2*rdx]
movsxd rbx, dword [rbx + 2*rbx]
movsxd rbx, dword [rbp + 2*rbp]
movsxd rbx, dword [rsi + 2*rsi]
movsxd rbx, dword [rdi + 2*rdi]
movsxd rsp, dword [rip + 0x13]
movsxd rsp, dword [rip + 0x1235]
movsxd rsp, dword [rip + 0x12345679]
movsxd rsp, dword [rbx]
movsxd rsp, dword [rcx + 0x14]
movsxd rsp, dword [rdx + 0x15]
movsxd rsp, dword [rbx + 0x1235]
movsxd rsp, dword [rbx + 0x12345679]
movsxd rsp, dword [rbx + rcx]
movsxd rsp, dword [rbx + 4 * rcx]
movsxd rsp, dword [rbx + rcx + 0x13]
movsxd rsp, dword [rbx + rcx + 0x1235]
movsxd rsp, dword [rbx + rcx + 0x12345679]
movsxd rsp, dword [rbx + 4 * rcx + 0x13]
movsxd rsp, dword [rbx + 4 * rcx + 0x1235]
movsxd rsp, dword [rbx + 8 * rcx + 0x12345679]
movsxd rsp, dword [4 * rcx]
movsxd rsp, dword [4 * rcx + 0x13]
movsxd rsp, dword [4 * rcx + 0x1235]
movsxd rsp, dword [4 * rcx + 0x12345679]
movsxd rsp, dword [rbp]
movsxd rsp, dword [rbp + 0x12]
movsxd rsp, dword [rbp + 0x1234]
movsxd rsp, dword [rbp + 0x12345678]
movsxd rsp, dword [4 * rbp]
movsxd rsp, dword [4 * rbp + 0x12]
movsxd rsp, dword [4 * rbp + 0x1234]
movsxd rsp, dword [4 * rbp + 0x12345678]
movsxd rsp, dword [rbx + 4 * rbp]
movsxd rsp, dword [rbx + 4 * rbp + 0x12]
movsxd rsp, dword [rbx + 4 * rbp + 0x1234]
movsxd rsp, dword [rbx + 4 * rbp + 0x12345678]
movsxd rsp, dword [rsp]
movsxd rsp, dword [rsp + 0x12]
movsxd rsp, dword [rsp + 0x1234]
movsxd rsp, dword [rsp + 0x12345678]
movsxd rsp, dword [rsp + rax]
movsxd rsp, dword [rsp + rbp]
movsxd rsp, dword [rsp + 2*rbp]
movsxd rsp, dword [rsp + 4*rbp]
movsxd rsp, dword [rsp + 8*rbp]
movsxd rsp, dword [rax]
movsxd rsp, dword [rcx]
movsxd rsp, dword [rdx]
movsxd rsp, dword [rbx]
movsxd rsp, dword [rsp]
movsxd rsp, dword [rbp]
movsxd rsp, dword [rsi]
movsxd rsp, dword [rdi]
movsxd rsp, dword [rax + 2*rax]
movsxd rsp, dword [rcx + 2*rcx]
movsxd rsp, dword [rdx + 2*rdx]
movsxd rsp, dword [rbx + 2*rbx]
movsxd rsp, dword [rbp + 2*rbp]
movsxd rsp, dword [rsi + 2*rsi]
movsxd rsp, dword [rdi + 2*rdi]
movsxd rbp, dword [rip + 0x13]
movsxd rbp, dword [rip + 0x1235]
movsxd rbp, dword [rip + 0x12345679]
movsxd rbp, dword [rbx]
movsxd rbp, dword [rcx + 0x14]
movsxd rbp, dword [rdx + 0x15]
movsxd rbp, dword [rbx + 0x1235]
movsxd rbp, dword [rbx + 0x12345679]
movsxd rbp, dword [rbx + rcx]
movsxd rbp, dword [rbx + 4 * rcx]
movsxd rbp, dword [rbx + rcx + 0x13]
movsxd rbp, dword [rbx + rcx + 0x1235]
movsxd rbp, dword [rbx + rcx + 0x12345679]
movsxd rbp, dword [rbx + 4 * rcx + 0x13]
movsxd rbp, dword [rbx + 4 * rcx + 0x1235]
movsxd rbp, dword [rbx + 8 * rcx + 0x12345679]
movsxd rbp, dword [4 * rcx]
movsxd rbp, dword [4 * rcx + 0x13]
movsxd rbp, dword [4 * rcx + 0x1235]
movsxd rbp, dword [4 * rcx + 0x12345679]
movsxd rbp, dword [rbp]
movsxd rbp, dword [rbp + 0x12]
movsxd rbp, dword [rbp + 0x1234]
movsxd rbp, dword [rbp + 0x12345678]
movsxd rbp, dword [4 * rbp]
movsxd rbp, dword [4 * rbp + 0x12]
movsxd rbp, dword [4 * rbp + 0x1234]
movsxd rbp, dword [4 * rbp + 0x12345678]
movsxd rbp, dword [rbx + 4 * rbp]
movsxd rbp, dword [rbx + 4 * rbp + 0x12]
movsxd rbp, dword [rbx + 4 * rbp + 0x1234]
movsxd rbp, dword [rbx + 4 * rbp + 0x12345678]
movsxd rbp, dword [rsp]
movsxd rbp, dword [rsp + 0x12]
movsxd rbp, dword [rsp + 0x1234]
movsxd rbp, dword [rsp + 0x12345678]
movsxd rbp, dword [rsp + rax]
movsxd rbp, dword [rsp + rbp]
movsxd rbp, dword [rsp + 2*rbp]
movsxd rbp, dword [rsp + 4*rbp]
movsxd rbp, dword [rsp + 8*rbp]
movsxd rbp, dword [rax]
movsxd rbp, dword [rcx]
movsxd rbp, dword [rdx]
movsxd rbp, dword [rbx]
movsxd rbp, dword [rsp]
movsxd rbp, dword [rbp]
movsxd rbp, dword [rsi]
movsxd rbp, dword [rdi]
movsxd rbp, dword [rax + 2*rax]
movsxd rbp, dword [rcx + 2*rcx]
movsxd rbp, dword [rdx + 2*rdx]
movsxd rbp, dword [rbx + 2*rbx]
movsxd rbp, dword [rbp + 2*rbp]
movsxd rbp, dword [rsi + 2*rsi]
movsxd rbp, dword [rdi + 2*rdi]
movsxd rsi, dword [rip + 0x13]
movsxd rsi, dword [rip + 0x1235]
movsxd rsi, dword [rip + 0x12345679]
movsxd rsi, dword [rbx]
movsxd rsi, dword [rcx + 0x14]
movsxd rsi, dword [rdx + 0x15]
movsxd rsi, dword [rbx + 0x1235]
movsxd rsi, dword [rbx + 0x12345679]
movsxd rsi, dword [rbx + rcx]
movsxd rsi, dword [rbx + 4 * rcx]
movsxd rsi, dword [rbx + rcx + 0x13]
movsxd rsi, dword [rbx + rcx + 0x1235]
movsxd rsi, dword [rbx + rcx + 0x12345679]
movsxd rsi, dword [rbx + 4 * rcx + 0x13]
movsxd rsi, dword [rbx + 4 * rcx + 0x1235]
movsxd rsi, dword [rbx + 8 * rcx + 0x12345679]
movsxd rsi, dword [4 * rcx]
movsxd rsi, dword [4 * rcx + 0x13]
movsxd rsi, dword [4 * rcx + 0x1235]
movsxd rsi, dword [4 * rcx + 0x12345679]
movsxd rsi, dword [rbp]
movsxd rsi, dword [rbp + 0x12]
movsxd rsi, dword [rbp + 0x1234]
movsxd rsi, dword [rbp + 0x12345678]
movsxd rsi, dword [4 * rbp]
movsxd rsi, dword [4 * rbp + 0x12]
movsxd rsi, dword [4 * rbp + 0x1234]
movsxd rsi, dword [4 * rbp + 0x12345678]
movsxd rsi, dword [rbx + 4 * rbp]
movsxd rsi, dword [rbx + 4 * rbp + 0x12]
movsxd rsi, dword [rbx + 4 * rbp + 0x1234]
movsxd rsi, dword [rbx + 4 * rbp + 0x12345678]
movsxd rsi, dword [rsp]
movsxd rsi, dword [rsp + 0x12]
movsxd rsi, dword [rsp + 0x1234]
movsxd rsi, dword [rsp + 0x12345678]
movsxd rsi, dword [rsp + rax]
movsxd rsi, dword [rsp + rbp]
movsxd rsi, dword [rsp + 2*rbp]
movsxd rsi, dword [rsp + 4*rbp]
movsxd rsi, dword [rsp + 8*rbp]
movsxd rsi, dword [rax]
movsxd rsi, dword [rcx]
movsxd rsi, dword [rdx]
movsxd rsi, dword [rbx]
movsxd rsi, dword [rsp]
movsxd rsi, dword [rbp]
movsxd rsi, dword [rsi]
movsxd rsi, dword [rdi]
movsxd rsi, dword [rax + 2*rax]
movsxd rsi, dword [rcx + 2*rcx]
movsxd rsi, dword [rdx + 2*rdx]
movsxd rsi, dword [rbx + 2*rbx]
movsxd rsi, dword [rbp + 2*rbp]
movsxd rsi, dword [rsi + 2*rsi]
movsxd rsi, dword [rdi + 2*rdi]
movsxd rdi, dword [rip + 0x13]
movsxd rdi, dword [rip + 0x1235]
movsxd rdi, dword [rip + 0x12345679]
movsxd rdi, dword [rbx]
movsxd rdi, dword [rcx + 0x14]
movsxd rdi, dword [rdx + 0x15]
movsxd rdi, dword [rbx + 0x1235]
movsxd rdi, dword [rbx + 0x12345679]
movsxd rdi, dword [rbx + rcx]
movsxd rdi, dword [rbx + 4 * rcx]
movsxd rdi, dword [rbx + rcx + 0x13]
movsxd rdi, dword [rbx + rcx + 0x1235]
movsxd rdi, dword [rbx + rcx + 0x12345679]
movsxd rdi, dword [rbx + 4 * rcx + 0x13]
movsxd rdi, dword [rbx + 4 * rcx + 0x1235]
movsxd rdi, dword [rbx + 8 * rcx + 0x12345679]
movsxd rdi, dword [4 * rcx]
movsxd rdi, dword [4 * rcx + 0x13]
movsxd rdi, dword [4 * rcx + 0x1235]
movsxd rdi, dword [4 * rcx + 0x12345679]
movsxd rdi, dword [rbp]
movsxd rdi, dword [rbp + 0x12]
movsxd rdi, dword [rbp + 0x1234]
movsxd rdi, dword [rbp + 0x12345678]
movsxd rdi, dword [4 * rbp]
movsxd rdi, dword [4 * rbp + 0x12]
movsxd rdi, dword [4 * rbp + 0x1234]
movsxd rdi, dword [4 * rbp + 0x12345678]
movsxd rdi, dword [rbx + 4 * rbp]
movsxd rdi, dword [rbx + 4 * rbp + 0x12]
movsxd rdi, dword [rbx + 4 * rbp + 0x1234]
movsxd rdi, dword [rbx + 4 * rbp + 0x12345678]
movsxd rdi, dword [rsp]
movsxd rdi, dword [rsp + 0x12]
movsxd rdi, dword [rsp + 0x1234]
movsxd rdi, dword [rsp + 0x12345678]
movsxd rdi, dword [rsp + rax]
movsxd rdi, dword [rsp + rbp]
movsxd rdi, dword [rsp + 2*rbp]
movsxd rdi, dword [rsp + 4*rbp]
movsxd rdi, dword [rsp + 8*rbp]
movsxd rdi, dword [rax]
movsxd rdi, dword [rcx]
movsxd rdi, dword [rdx]
movsxd rdi, dword [rbx]
movsxd rdi, dword [rsp]
movsxd rdi, dword [rbp]
movsxd rdi, dword [rsi]
movsxd rdi, dword [rdi]
movsxd rdi, dword [rax + 2*rax]
movsxd rdi, dword [rcx + 2*rcx]
movsxd rdi, dword [rdx + 2*rdx]
movsxd rdi, dword [rbx + 2*rbx]
movsxd rdi, dword [rbp + 2*rbp]
movsxd rdi, dword [rsi + 2*rsi]
movsxd rdi, dword [rdi + 2*rdi]

