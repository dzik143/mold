use64
rcr byte[rip + 0x12], cl
rcr word[rip + 0x13], cl
rcr dword [rip + 0x14], cl
rcr qword [rip + 0x15], cl
rcr byte[rip + 0x1234], cl
rcr word[rip + 0x1235], cl
rcr dword [rip + 0x1236], cl
rcr qword [rip + 0x1237], cl
rcr byte[rip + 0x12345678], cl
rcr word[rip + 0x12345679], cl
rcr dword [rip + 0x1234567a], cl
rcr qword [rip + 0x1234567b], cl
rcr byte[rax], cl
rcr word[rbx], cl
rcr dword [rcx], cl
rcr qword [rdx], cl
rcr byte[rax + 0x12], cl
rcr word[rbx + 0x13], cl
rcr dword [rcx + 0x14], cl
rcr qword [rdx + 0x15], cl
rcr byte[rax + 0x1234], cl
rcr word[rbx + 0x1235], cl
rcr dword [rcx + 0x1236], cl
rcr qword [rdx + 0x1237], cl
rcr byte[rax + 0x12345678], cl
rcr word[rbx + 0x12345679], cl
rcr dword [rcx + 0x1234567a], cl
rcr qword [rdx + 0x1234567b], cl
rcr byte[rax + rbx], cl
rcr word[rbx + rcx], cl
rcr dword [rcx + rsi], cl
rcr qword [rdx + rdi], cl
rcr byte[rax + 2 * rbx], cl
rcr word[rbx + 4 * rcx], cl
rcr dword [rcx + 8 * rsi], cl
rcr qword [rdx + 8 * rdi], cl
rcr byte[rax + rbx + 0x12], cl
rcr word[rbx + rcx + 0x13], cl
rcr dword [rcx + rsi + 0x14], cl
rcr qword [rdx + rdi + 0x15], cl
rcr byte[rax + rbx + 0x1234], cl
rcr word[rbx + rcx + 0x1235], cl
rcr dword [rcx + rsi + 0x1236], cl
rcr qword [rdx + rdi + 0x1237], cl
rcr byte[rax + rbx + 0x12345678], cl
rcr word[rbx + rcx + 0x12345679], cl
rcr dword [rcx + rsi + 0x1234567a], cl
rcr qword [rdx + rdi + 0x1234567b], cl
rcr byte[rax + 2 * rbx + 0x12], cl
rcr word[rbx + 4 * rcx + 0x13], cl
rcr dword [rcx + 8 * rsi + 0x14], cl
rcr qword [rdx + 8 * rdi + 0x15], cl
rcr byte[rax + 2 * rbx + 0x1234], cl
rcr word[rbx + 4 * rcx + 0x1235], cl
rcr dword [rcx + 8 * rsi + 0x1236], cl
rcr qword [rdx + 8 * rdi + 0x1237], cl
rcr byte[rax + 2 * rbx + 0x12345678], cl
rcr word[rbx + 4 * rcx + 0x12345679], cl
rcr dword [rcx + 8 * rsi + 0x1234567a], cl
rcr qword [rdx + 8 * rdi + 0x1234567b], cl
rcr byte[2 * rbx], cl
rcr word[4 * rcx], cl
rcr dword [8 * rsi], cl
rcr qword [8 * rdi], cl
rcr byte[2 * rbx + 0x12], cl
rcr word[4 * rcx + 0x13], cl
rcr dword [8 * rsi + 0x14], cl
rcr qword [8 * rdi + 0x15], cl
rcr byte[2 * rbx + 0x1234], cl
rcr word[4 * rcx + 0x1235], cl
rcr dword [8 * rsi + 0x1236], cl
rcr qword [8 * rdi + 0x1237], cl
rcr byte[2 * rbx + 0x12345678], cl
rcr word[4 * rcx + 0x12345679], cl
rcr dword [8 * rsi + 0x1234567a], cl
rcr qword [8 * rdi + 0x1234567b], cl
rcr byte [rbp], cl
rcr byte [rbp + 0x12], cl
rcr byte [rbp + 0x1234], cl
rcr byte [rbp + 0x12345678], cl
rcr byte [4 * rbp], cl
rcr byte [4 * rbp + 0x12], cl
rcr byte [4 * rbp + 0x1234], cl
rcr byte [4 * rbp + 0x12345678], cl
rcr byte [rbx + 4 * rbp], cl
rcr byte [rbx + 4 * rbp + 0x12], cl
rcr byte [rbx + 4 * rbp + 0x1234], cl
rcr byte [rbx + 4 * rbp + 0x12345678], cl
rcr byte [rsp], cl
rcr byte [rsp + 0x12], cl
rcr byte [rsp + 0x1234], cl
rcr byte [rsp + 0x12345678], cl
rcr byte [rsp + rax], cl
rcr byte [rsp + rbp], cl
rcr byte [rsp + 2*rbp], cl
rcr byte [rsp + 4*rbp], cl
rcr byte [rsp + 8*rbp], cl
rcr byte [rax], cl
rcr byte [rcx], cl
rcr byte [rdx], cl
rcr byte [rbx], cl
rcr byte [rsp], cl
rcr byte [rbp], cl
rcr byte [rsi], cl
rcr byte [rdi], cl
rcr byte [rax + 2*rax], cl
rcr byte [rcx + 2*rcx], cl
rcr byte [rdx + 2*rdx], cl
rcr byte [rbx + 2*rbx], cl
rcr byte [rbp + 2*rbp], cl
rcr byte [rsi + 2*rsi], cl
rcr byte [rdi + 2*rdi], cl
