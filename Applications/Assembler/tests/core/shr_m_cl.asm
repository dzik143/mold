use64
shr byte[rip + 0x12], cl
shr word[rip + 0x13], cl
shr dword [rip + 0x14], cl
shr qword [rip + 0x15], cl
shr byte[rip + 0x1234], cl
shr word[rip + 0x1235], cl
shr dword [rip + 0x1236], cl
shr qword [rip + 0x1237], cl
shr byte[rip + 0x12345678], cl
shr word[rip + 0x12345679], cl
shr dword [rip + 0x1234567a], cl
shr qword [rip + 0x1234567b], cl
shr byte[rax], cl
shr word[rbx], cl
shr dword [rcx], cl
shr qword [rdx], cl
shr byte[rax + 0x12], cl
shr word[rbx + 0x13], cl
shr dword [rcx + 0x14], cl
shr qword [rdx + 0x15], cl
shr byte[rax + 0x1234], cl
shr word[rbx + 0x1235], cl
shr dword [rcx + 0x1236], cl
shr qword [rdx + 0x1237], cl
shr byte[rax + 0x12345678], cl
shr word[rbx + 0x12345679], cl
shr dword [rcx + 0x1234567a], cl
shr qword [rdx + 0x1234567b], cl
shr byte[rax + rbx], cl
shr word[rbx + rcx], cl
shr dword [rcx + rsi], cl
shr qword [rdx + rdi], cl
shr byte[rax + 2 * rbx], cl
shr word[rbx + 4 * rcx], cl
shr dword [rcx + 8 * rsi], cl
shr qword [rdx + 8 * rdi], cl
shr byte[rax + rbx + 0x12], cl
shr word[rbx + rcx + 0x13], cl
shr dword [rcx + rsi + 0x14], cl
shr qword [rdx + rdi + 0x15], cl
shr byte[rax + rbx + 0x1234], cl
shr word[rbx + rcx + 0x1235], cl
shr dword [rcx + rsi + 0x1236], cl
shr qword [rdx + rdi + 0x1237], cl
shr byte[rax + rbx + 0x12345678], cl
shr word[rbx + rcx + 0x12345679], cl
shr dword [rcx + rsi + 0x1234567a], cl
shr qword [rdx + rdi + 0x1234567b], cl
shr byte[rax + 2 * rbx + 0x12], cl
shr word[rbx + 4 * rcx + 0x13], cl
shr dword [rcx + 8 * rsi + 0x14], cl
shr qword [rdx + 8 * rdi + 0x15], cl
shr byte[rax + 2 * rbx + 0x1234], cl
shr word[rbx + 4 * rcx + 0x1235], cl
shr dword [rcx + 8 * rsi + 0x1236], cl
shr qword [rdx + 8 * rdi + 0x1237], cl
shr byte[rax + 2 * rbx + 0x12345678], cl
shr word[rbx + 4 * rcx + 0x12345679], cl
shr dword [rcx + 8 * rsi + 0x1234567a], cl
shr qword [rdx + 8 * rdi + 0x1234567b], cl
shr byte[2 * rbx], cl
shr word[4 * rcx], cl
shr dword [8 * rsi], cl
shr qword [8 * rdi], cl
shr byte[2 * rbx + 0x12], cl
shr word[4 * rcx + 0x13], cl
shr dword [8 * rsi + 0x14], cl
shr qword [8 * rdi + 0x15], cl
shr byte[2 * rbx + 0x1234], cl
shr word[4 * rcx + 0x1235], cl
shr dword [8 * rsi + 0x1236], cl
shr qword [8 * rdi + 0x1237], cl
shr byte[2 * rbx + 0x12345678], cl
shr word[4 * rcx + 0x12345679], cl
shr dword [8 * rsi + 0x1234567a], cl
shr qword [8 * rdi + 0x1234567b], cl
shr byte [rbp], cl
shr byte [rbp + 0x12], cl
shr byte [rbp + 0x1234], cl
shr byte [rbp + 0x12345678], cl
shr byte [4 * rbp], cl
shr byte [4 * rbp + 0x12], cl
shr byte [4 * rbp + 0x1234], cl
shr byte [4 * rbp + 0x12345678], cl
shr byte [rbx + 4 * rbp], cl
shr byte [rbx + 4 * rbp + 0x12], cl
shr byte [rbx + 4 * rbp + 0x1234], cl
shr byte [rbx + 4 * rbp + 0x12345678], cl
shr byte [rsp], cl
shr byte [rsp + 0x12], cl
shr byte [rsp + 0x1234], cl
shr byte [rsp + 0x12345678], cl
shr byte [rsp + rax], cl
shr byte [rsp + rbp], cl
shr byte [rsp + 2*rbp], cl
shr byte [rsp + 4*rbp], cl
shr byte [rsp + 8*rbp], cl
shr byte [rax], cl
shr byte [rcx], cl
shr byte [rdx], cl
shr byte [rbx], cl
shr byte [rsp], cl
shr byte [rbp], cl
shr byte [rsi], cl
shr byte [rdi], cl
shr byte [rax + 2*rax], cl
shr byte [rcx + 2*rcx], cl
shr byte [rdx + 2*rdx], cl
shr byte [rbx + 2*rbx], cl
shr byte [rbp + 2*rbp], cl
shr byte [rsi + 2*rsi], cl
shr byte [rdi + 2*rdi], cl
