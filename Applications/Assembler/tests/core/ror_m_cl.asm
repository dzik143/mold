use64
ror byte[rip + 0x12], cl
ror word[rip + 0x13], cl
ror dword [rip + 0x14], cl
ror qword [rip + 0x15], cl
ror byte[rip + 0x1234], cl
ror word[rip + 0x1235], cl
ror dword [rip + 0x1236], cl
ror qword [rip + 0x1237], cl
ror byte[rip + 0x12345678], cl
ror word[rip + 0x12345679], cl
ror dword [rip + 0x1234567a], cl
ror qword [rip + 0x1234567b], cl
ror byte[rax], cl
ror word[rbx], cl
ror dword [rcx], cl
ror qword [rdx], cl
ror byte[rax + 0x12], cl
ror word[rbx + 0x13], cl
ror dword [rcx + 0x14], cl
ror qword [rdx + 0x15], cl
ror byte[rax + 0x1234], cl
ror word[rbx + 0x1235], cl
ror dword [rcx + 0x1236], cl
ror qword [rdx + 0x1237], cl
ror byte[rax + 0x12345678], cl
ror word[rbx + 0x12345679], cl
ror dword [rcx + 0x1234567a], cl
ror qword [rdx + 0x1234567b], cl
ror byte[rax + rbx], cl
ror word[rbx + rcx], cl
ror dword [rcx + rsi], cl
ror qword [rdx + rdi], cl
ror byte[rax + 2 * rbx], cl
ror word[rbx + 4 * rcx], cl
ror dword [rcx + 8 * rsi], cl
ror qword [rdx + 8 * rdi], cl
ror byte[rax + rbx + 0x12], cl
ror word[rbx + rcx + 0x13], cl
ror dword [rcx + rsi + 0x14], cl
ror qword [rdx + rdi + 0x15], cl
ror byte[rax + rbx + 0x1234], cl
ror word[rbx + rcx + 0x1235], cl
ror dword [rcx + rsi + 0x1236], cl
ror qword [rdx + rdi + 0x1237], cl
ror byte[rax + rbx + 0x12345678], cl
ror word[rbx + rcx + 0x12345679], cl
ror dword [rcx + rsi + 0x1234567a], cl
ror qword [rdx + rdi + 0x1234567b], cl
ror byte[rax + 2 * rbx + 0x12], cl
ror word[rbx + 4 * rcx + 0x13], cl
ror dword [rcx + 8 * rsi + 0x14], cl
ror qword [rdx + 8 * rdi + 0x15], cl
ror byte[rax + 2 * rbx + 0x1234], cl
ror word[rbx + 4 * rcx + 0x1235], cl
ror dword [rcx + 8 * rsi + 0x1236], cl
ror qword [rdx + 8 * rdi + 0x1237], cl
ror byte[rax + 2 * rbx + 0x12345678], cl
ror word[rbx + 4 * rcx + 0x12345679], cl
ror dword [rcx + 8 * rsi + 0x1234567a], cl
ror qword [rdx + 8 * rdi + 0x1234567b], cl
ror byte[2 * rbx], cl
ror word[4 * rcx], cl
ror dword [8 * rsi], cl
ror qword [8 * rdi], cl
ror byte[2 * rbx + 0x12], cl
ror word[4 * rcx + 0x13], cl
ror dword [8 * rsi + 0x14], cl
ror qword [8 * rdi + 0x15], cl
ror byte[2 * rbx + 0x1234], cl
ror word[4 * rcx + 0x1235], cl
ror dword [8 * rsi + 0x1236], cl
ror qword [8 * rdi + 0x1237], cl
ror byte[2 * rbx + 0x12345678], cl
ror word[4 * rcx + 0x12345679], cl
ror dword [8 * rsi + 0x1234567a], cl
ror qword [8 * rdi + 0x1234567b], cl
ror byte [rbp], cl
ror byte [rbp + 0x12], cl
ror byte [rbp + 0x1234], cl
ror byte [rbp + 0x12345678], cl
ror byte [4 * rbp], cl
ror byte [4 * rbp + 0x12], cl
ror byte [4 * rbp + 0x1234], cl
ror byte [4 * rbp + 0x12345678], cl
ror byte [rbx + 4 * rbp], cl
ror byte [rbx + 4 * rbp + 0x12], cl
ror byte [rbx + 4 * rbp + 0x1234], cl
ror byte [rbx + 4 * rbp + 0x12345678], cl
ror byte [rsp], cl
ror byte [rsp + 0x12], cl
ror byte [rsp + 0x1234], cl
ror byte [rsp + 0x12345678], cl
ror byte [rsp + rax], cl
ror byte [rsp + rbp], cl
ror byte [rsp + 2*rbp], cl
ror byte [rsp + 4*rbp], cl
ror byte [rsp + 8*rbp], cl
ror byte [rax], cl
ror byte [rcx], cl
ror byte [rdx], cl
ror byte [rbx], cl
ror byte [rsp], cl
ror byte [rbp], cl
ror byte [rsi], cl
ror byte [rdi], cl
ror byte [rax + 2*rax], cl
ror byte [rcx + 2*rcx], cl
ror byte [rdx + 2*rdx], cl
ror byte [rbx + 2*rbx], cl
ror byte [rbp + 2*rbp], cl
ror byte [rsi + 2*rsi], cl
ror byte [rdi + 2*rdi], cl
