use64
shl byte[rip + 0x12], cl
shl word[rip + 0x13], cl
shl dword [rip + 0x14], cl
shl qword [rip + 0x15], cl
shl byte[rip + 0x1234], cl
shl word[rip + 0x1235], cl
shl dword [rip + 0x1236], cl
shl qword [rip + 0x1237], cl
shl byte[rip + 0x12345678], cl
shl word[rip + 0x12345679], cl
shl dword [rip + 0x1234567a], cl
shl qword [rip + 0x1234567b], cl
shl byte[rax], cl
shl word[rbx], cl
shl dword [rcx], cl
shl qword [rdx], cl
shl byte[rax + 0x12], cl
shl word[rbx + 0x13], cl
shl dword [rcx + 0x14], cl
shl qword [rdx + 0x15], cl
shl byte[rax + 0x1234], cl
shl word[rbx + 0x1235], cl
shl dword [rcx + 0x1236], cl
shl qword [rdx + 0x1237], cl
shl byte[rax + 0x12345678], cl
shl word[rbx + 0x12345679], cl
shl dword [rcx + 0x1234567a], cl
shl qword [rdx + 0x1234567b], cl
shl byte[rax + rbx], cl
shl word[rbx + rcx], cl
shl dword [rcx + rsi], cl
shl qword [rdx + rdi], cl
shl byte[rax + 2 * rbx], cl
shl word[rbx + 4 * rcx], cl
shl dword [rcx + 8 * rsi], cl
shl qword [rdx + 8 * rdi], cl
shl byte[rax + rbx + 0x12], cl
shl word[rbx + rcx + 0x13], cl
shl dword [rcx + rsi + 0x14], cl
shl qword [rdx + rdi + 0x15], cl
shl byte[rax + rbx + 0x1234], cl
shl word[rbx + rcx + 0x1235], cl
shl dword [rcx + rsi + 0x1236], cl
shl qword [rdx + rdi + 0x1237], cl
shl byte[rax + rbx + 0x12345678], cl
shl word[rbx + rcx + 0x12345679], cl
shl dword [rcx + rsi + 0x1234567a], cl
shl qword [rdx + rdi + 0x1234567b], cl
shl byte[rax + 2 * rbx + 0x12], cl
shl word[rbx + 4 * rcx + 0x13], cl
shl dword [rcx + 8 * rsi + 0x14], cl
shl qword [rdx + 8 * rdi + 0x15], cl
shl byte[rax + 2 * rbx + 0x1234], cl
shl word[rbx + 4 * rcx + 0x1235], cl
shl dword [rcx + 8 * rsi + 0x1236], cl
shl qword [rdx + 8 * rdi + 0x1237], cl
shl byte[rax + 2 * rbx + 0x12345678], cl
shl word[rbx + 4 * rcx + 0x12345679], cl
shl dword [rcx + 8 * rsi + 0x1234567a], cl
shl qword [rdx + 8 * rdi + 0x1234567b], cl
shl byte[2 * rbx], cl
shl word[4 * rcx], cl
shl dword [8 * rsi], cl
shl qword [8 * rdi], cl
shl byte[2 * rbx + 0x12], cl
shl word[4 * rcx + 0x13], cl
shl dword [8 * rsi + 0x14], cl
shl qword [8 * rdi + 0x15], cl
shl byte[2 * rbx + 0x1234], cl
shl word[4 * rcx + 0x1235], cl
shl dword [8 * rsi + 0x1236], cl
shl qword [8 * rdi + 0x1237], cl
shl byte[2 * rbx + 0x12345678], cl
shl word[4 * rcx + 0x12345679], cl
shl dword [8 * rsi + 0x1234567a], cl
shl qword [8 * rdi + 0x1234567b], cl
shl byte [rbp], cl
shl byte [rbp + 0x12], cl
shl byte [rbp + 0x1234], cl
shl byte [rbp + 0x12345678], cl
shl byte [4 * rbp], cl
shl byte [4 * rbp + 0x12], cl
shl byte [4 * rbp + 0x1234], cl
shl byte [4 * rbp + 0x12345678], cl
shl byte [rbx + 4 * rbp], cl
shl byte [rbx + 4 * rbp + 0x12], cl
shl byte [rbx + 4 * rbp + 0x1234], cl
shl byte [rbx + 4 * rbp + 0x12345678], cl
shl byte [rsp], cl
shl byte [rsp + 0x12], cl
shl byte [rsp + 0x1234], cl
shl byte [rsp + 0x12345678], cl
shl byte [rsp + rax], cl
shl byte [rsp + rbp], cl
shl byte [rsp + 2*rbp], cl
shl byte [rsp + 4*rbp], cl
shl byte [rsp + 8*rbp], cl
shl byte [rax], cl
shl byte [rcx], cl
shl byte [rdx], cl
shl byte [rbx], cl
shl byte [rsp], cl
shl byte [rbp], cl
shl byte [rsi], cl
shl byte [rdi], cl
shl byte [rax + 2*rax], cl
shl byte [rcx + 2*rcx], cl
shl byte [rdx + 2*rdx], cl
shl byte [rbx + 2*rbx], cl
shl byte [rbp + 2*rbp], cl
shl byte [rsi + 2*rsi], cl
shl byte [rdi + 2*rdi], cl
