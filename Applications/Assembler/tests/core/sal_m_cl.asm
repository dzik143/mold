use64
sal byte[rip + 0x12], cl
sal word[rip + 0x13], cl
sal dword [rip + 0x14], cl
sal qword [rip + 0x15], cl
sal byte[rip + 0x1234], cl
sal word[rip + 0x1235], cl
sal dword [rip + 0x1236], cl
sal qword [rip + 0x1237], cl
sal byte[rip + 0x12345678], cl
sal word[rip + 0x12345679], cl
sal dword [rip + 0x1234567a], cl
sal qword [rip + 0x1234567b], cl
sal byte[rax], cl
sal word[rbx], cl
sal dword [rcx], cl
sal qword [rdx], cl
sal byte[rax + 0x12], cl
sal word[rbx + 0x13], cl
sal dword [rcx + 0x14], cl
sal qword [rdx + 0x15], cl
sal byte[rax + 0x1234], cl
sal word[rbx + 0x1235], cl
sal dword [rcx + 0x1236], cl
sal qword [rdx + 0x1237], cl
sal byte[rax + 0x12345678], cl
sal word[rbx + 0x12345679], cl
sal dword [rcx + 0x1234567a], cl
sal qword [rdx + 0x1234567b], cl
sal byte[rax + rbx], cl
sal word[rbx + rcx], cl
sal dword [rcx + rsi], cl
sal qword [rdx + rdi], cl
sal byte[rax + 2 * rbx], cl
sal word[rbx + 4 * rcx], cl
sal dword [rcx + 8 * rsi], cl
sal qword [rdx + 8 * rdi], cl
sal byte[rax + rbx + 0x12], cl
sal word[rbx + rcx + 0x13], cl
sal dword [rcx + rsi + 0x14], cl
sal qword [rdx + rdi + 0x15], cl
sal byte[rax + rbx + 0x1234], cl
sal word[rbx + rcx + 0x1235], cl
sal dword [rcx + rsi + 0x1236], cl
sal qword [rdx + rdi + 0x1237], cl
sal byte[rax + rbx + 0x12345678], cl
sal word[rbx + rcx + 0x12345679], cl
sal dword [rcx + rsi + 0x1234567a], cl
sal qword [rdx + rdi + 0x1234567b], cl
sal byte[rax + 2 * rbx + 0x12], cl
sal word[rbx + 4 * rcx + 0x13], cl
sal dword [rcx + 8 * rsi + 0x14], cl
sal qword [rdx + 8 * rdi + 0x15], cl
sal byte[rax + 2 * rbx + 0x1234], cl
sal word[rbx + 4 * rcx + 0x1235], cl
sal dword [rcx + 8 * rsi + 0x1236], cl
sal qword [rdx + 8 * rdi + 0x1237], cl
sal byte[rax + 2 * rbx + 0x12345678], cl
sal word[rbx + 4 * rcx + 0x12345679], cl
sal dword [rcx + 8 * rsi + 0x1234567a], cl
sal qword [rdx + 8 * rdi + 0x1234567b], cl
sal byte[2 * rbx], cl
sal word[4 * rcx], cl
sal dword [8 * rsi], cl
sal qword [8 * rdi], cl
sal byte[2 * rbx + 0x12], cl
sal word[4 * rcx + 0x13], cl
sal dword [8 * rsi + 0x14], cl
sal qword [8 * rdi + 0x15], cl
sal byte[2 * rbx + 0x1234], cl
sal word[4 * rcx + 0x1235], cl
sal dword [8 * rsi + 0x1236], cl
sal qword [8 * rdi + 0x1237], cl
sal byte[2 * rbx + 0x12345678], cl
sal word[4 * rcx + 0x12345679], cl
sal dword [8 * rsi + 0x1234567a], cl
sal qword [8 * rdi + 0x1234567b], cl
sal byte [rbp], cl
sal byte [rbp + 0x12], cl
sal byte [rbp + 0x1234], cl
sal byte [rbp + 0x12345678], cl
sal byte [4 * rbp], cl
sal byte [4 * rbp + 0x12], cl
sal byte [4 * rbp + 0x1234], cl
sal byte [4 * rbp + 0x12345678], cl
sal byte [rbx + 4 * rbp], cl
sal byte [rbx + 4 * rbp + 0x12], cl
sal byte [rbx + 4 * rbp + 0x1234], cl
sal byte [rbx + 4 * rbp + 0x12345678], cl
sal byte [rsp], cl
sal byte [rsp + 0x12], cl
sal byte [rsp + 0x1234], cl
sal byte [rsp + 0x12345678], cl
sal byte [rsp + rax], cl
sal byte [rsp + rbp], cl
sal byte [rsp + 2*rbp], cl
sal byte [rsp + 4*rbp], cl
sal byte [rsp + 8*rbp], cl
sal byte [rax], cl
sal byte [rcx], cl
sal byte [rdx], cl
sal byte [rbx], cl
sal byte [rsp], cl
sal byte [rbp], cl
sal byte [rsi], cl
sal byte [rdi], cl
sal byte [rax + 2*rax], cl
sal byte [rcx + 2*rcx], cl
sal byte [rdx + 2*rdx], cl
sal byte [rbx + 2*rbx], cl
sal byte [rbp + 2*rbp], cl
sal byte [rsi + 2*rsi], cl
sal byte [rdi + 2*rdi], cl
