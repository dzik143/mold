use64
sar byte[rip + 0x12], cl
sar word[rip + 0x13], cl
sar dword [rip + 0x14], cl
sar qword [rip + 0x15], cl
sar byte[rip + 0x1234], cl
sar word[rip + 0x1235], cl
sar dword [rip + 0x1236], cl
sar qword [rip + 0x1237], cl
sar byte[rip + 0x12345678], cl
sar word[rip + 0x12345679], cl
sar dword [rip + 0x1234567a], cl
sar qword [rip + 0x1234567b], cl
sar byte[rax], cl
sar word[rbx], cl
sar dword [rcx], cl
sar qword [rdx], cl
sar byte[rax + 0x12], cl
sar word[rbx + 0x13], cl
sar dword [rcx + 0x14], cl
sar qword [rdx + 0x15], cl
sar byte[rax + 0x1234], cl
sar word[rbx + 0x1235], cl
sar dword [rcx + 0x1236], cl
sar qword [rdx + 0x1237], cl
sar byte[rax + 0x12345678], cl
sar word[rbx + 0x12345679], cl
sar dword [rcx + 0x1234567a], cl
sar qword [rdx + 0x1234567b], cl
sar byte[rax + rbx], cl
sar word[rbx + rcx], cl
sar dword [rcx + rsi], cl
sar qword [rdx + rdi], cl
sar byte[rax + 2 * rbx], cl
sar word[rbx + 4 * rcx], cl
sar dword [rcx + 8 * rsi], cl
sar qword [rdx + 8 * rdi], cl
sar byte[rax + rbx + 0x12], cl
sar word[rbx + rcx + 0x13], cl
sar dword [rcx + rsi + 0x14], cl
sar qword [rdx + rdi + 0x15], cl
sar byte[rax + rbx + 0x1234], cl
sar word[rbx + rcx + 0x1235], cl
sar dword [rcx + rsi + 0x1236], cl
sar qword [rdx + rdi + 0x1237], cl
sar byte[rax + rbx + 0x12345678], cl
sar word[rbx + rcx + 0x12345679], cl
sar dword [rcx + rsi + 0x1234567a], cl
sar qword [rdx + rdi + 0x1234567b], cl
sar byte[rax + 2 * rbx + 0x12], cl
sar word[rbx + 4 * rcx + 0x13], cl
sar dword [rcx + 8 * rsi + 0x14], cl
sar qword [rdx + 8 * rdi + 0x15], cl
sar byte[rax + 2 * rbx + 0x1234], cl
sar word[rbx + 4 * rcx + 0x1235], cl
sar dword [rcx + 8 * rsi + 0x1236], cl
sar qword [rdx + 8 * rdi + 0x1237], cl
sar byte[rax + 2 * rbx + 0x12345678], cl
sar word[rbx + 4 * rcx + 0x12345679], cl
sar dword [rcx + 8 * rsi + 0x1234567a], cl
sar qword [rdx + 8 * rdi + 0x1234567b], cl
sar byte[2 * rbx], cl
sar word[4 * rcx], cl
sar dword [8 * rsi], cl
sar qword [8 * rdi], cl
sar byte[2 * rbx + 0x12], cl
sar word[4 * rcx + 0x13], cl
sar dword [8 * rsi + 0x14], cl
sar qword [8 * rdi + 0x15], cl
sar byte[2 * rbx + 0x1234], cl
sar word[4 * rcx + 0x1235], cl
sar dword [8 * rsi + 0x1236], cl
sar qword [8 * rdi + 0x1237], cl
sar byte[2 * rbx + 0x12345678], cl
sar word[4 * rcx + 0x12345679], cl
sar dword [8 * rsi + 0x1234567a], cl
sar qword [8 * rdi + 0x1234567b], cl
sar byte [rbp], cl
sar byte [rbp + 0x12], cl
sar byte [rbp + 0x1234], cl
sar byte [rbp + 0x12345678], cl
sar byte [4 * rbp], cl
sar byte [4 * rbp + 0x12], cl
sar byte [4 * rbp + 0x1234], cl
sar byte [4 * rbp + 0x12345678], cl
sar byte [rbx + 4 * rbp], cl
sar byte [rbx + 4 * rbp + 0x12], cl
sar byte [rbx + 4 * rbp + 0x1234], cl
sar byte [rbx + 4 * rbp + 0x12345678], cl
sar byte [rsp], cl
sar byte [rsp + 0x12], cl
sar byte [rsp + 0x1234], cl
sar byte [rsp + 0x12345678], cl
sar byte [rsp + rax], cl
sar byte [rsp + rbp], cl
sar byte [rsp + 2*rbp], cl
sar byte [rsp + 4*rbp], cl
sar byte [rsp + 8*rbp], cl
sar byte [rax], cl
sar byte [rcx], cl
sar byte [rdx], cl
sar byte [rbx], cl
sar byte [rsp], cl
sar byte [rbp], cl
sar byte [rsi], cl
sar byte [rdi], cl
sar byte [rax + 2*rax], cl
sar byte [rcx + 2*rcx], cl
sar byte [rdx + 2*rdx], cl
sar byte [rbx + 2*rbx], cl
sar byte [rbp + 2*rbp], cl
sar byte [rsi + 2*rsi], cl
sar byte [rdi + 2*rdi], cl
