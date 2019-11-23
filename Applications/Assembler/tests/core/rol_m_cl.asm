use64
rol byte[rip + 0x12], cl
rol word[rip + 0x13], cl
rol dword [rip + 0x14], cl
rol qword [rip + 0x15], cl
rol byte[rip + 0x1234], cl
rol word[rip + 0x1235], cl
rol dword [rip + 0x1236], cl
rol qword [rip + 0x1237], cl
rol byte[rip + 0x12345678], cl
rol word[rip + 0x12345679], cl
rol dword [rip + 0x1234567a], cl
rol qword [rip + 0x1234567b], cl
rol byte[rax], cl
rol word[rbx], cl
rol dword [rcx], cl
rol qword [rdx], cl
rol byte[rax + 0x12], cl
rol word[rbx + 0x13], cl
rol dword [rcx + 0x14], cl
rol qword [rdx + 0x15], cl
rol byte[rax + 0x1234], cl
rol word[rbx + 0x1235], cl
rol dword [rcx + 0x1236], cl
rol qword [rdx + 0x1237], cl
rol byte[rax + 0x12345678], cl
rol word[rbx + 0x12345679], cl
rol dword [rcx + 0x1234567a], cl
rol qword [rdx + 0x1234567b], cl
rol byte[rax + rbx], cl
rol word[rbx + rcx], cl
rol dword [rcx + rsi], cl
rol qword [rdx + rdi], cl
rol byte[rax + 2 * rbx], cl
rol word[rbx + 4 * rcx], cl
rol dword [rcx + 8 * rsi], cl
rol qword [rdx + 8 * rdi], cl
rol byte[rax + rbx + 0x12], cl
rol word[rbx + rcx + 0x13], cl
rol dword [rcx + rsi + 0x14], cl
rol qword [rdx + rdi + 0x15], cl
rol byte[rax + rbx + 0x1234], cl
rol word[rbx + rcx + 0x1235], cl
rol dword [rcx + rsi + 0x1236], cl
rol qword [rdx + rdi + 0x1237], cl
rol byte[rax + rbx + 0x12345678], cl
rol word[rbx + rcx + 0x12345679], cl
rol dword [rcx + rsi + 0x1234567a], cl
rol qword [rdx + rdi + 0x1234567b], cl
rol byte[rax + 2 * rbx + 0x12], cl
rol word[rbx + 4 * rcx + 0x13], cl
rol dword [rcx + 8 * rsi + 0x14], cl
rol qword [rdx + 8 * rdi + 0x15], cl
rol byte[rax + 2 * rbx + 0x1234], cl
rol word[rbx + 4 * rcx + 0x1235], cl
rol dword [rcx + 8 * rsi + 0x1236], cl
rol qword [rdx + 8 * rdi + 0x1237], cl
rol byte[rax + 2 * rbx + 0x12345678], cl
rol word[rbx + 4 * rcx + 0x12345679], cl
rol dword [rcx + 8 * rsi + 0x1234567a], cl
rol qword [rdx + 8 * rdi + 0x1234567b], cl
rol byte[2 * rbx], cl
rol word[4 * rcx], cl
rol dword [8 * rsi], cl
rol qword [8 * rdi], cl
rol byte[2 * rbx + 0x12], cl
rol word[4 * rcx + 0x13], cl
rol dword [8 * rsi + 0x14], cl
rol qword [8 * rdi + 0x15], cl
rol byte[2 * rbx + 0x1234], cl
rol word[4 * rcx + 0x1235], cl
rol dword [8 * rsi + 0x1236], cl
rol qword [8 * rdi + 0x1237], cl
rol byte[2 * rbx + 0x12345678], cl
rol word[4 * rcx + 0x12345679], cl
rol dword [8 * rsi + 0x1234567a], cl
rol qword [8 * rdi + 0x1234567b], cl
rol byte [rbp], cl
rol byte [rbp + 0x12], cl
rol byte [rbp + 0x1234], cl
rol byte [rbp + 0x12345678], cl
rol byte [4 * rbp], cl
rol byte [4 * rbp + 0x12], cl
rol byte [4 * rbp + 0x1234], cl
rol byte [4 * rbp + 0x12345678], cl
rol byte [rbx + 4 * rbp], cl
rol byte [rbx + 4 * rbp + 0x12], cl
rol byte [rbx + 4 * rbp + 0x1234], cl
rol byte [rbx + 4 * rbp + 0x12345678], cl
rol byte [rsp], cl
rol byte [rsp + 0x12], cl
rol byte [rsp + 0x1234], cl
rol byte [rsp + 0x12345678], cl
rol byte [rsp + rax], cl
rol byte [rsp + rbp], cl
rol byte [rsp + 2*rbp], cl
rol byte [rsp + 4*rbp], cl
rol byte [rsp + 8*rbp], cl
rol byte [rax], cl
rol byte [rcx], cl
rol byte [rdx], cl
rol byte [rbx], cl
rol byte [rsp], cl
rol byte [rbp], cl
rol byte [rsi], cl
rol byte [rdi], cl
rol byte [rax + 2*rax], cl
rol byte [rcx + 2*rcx], cl
rol byte [rdx + 2*rdx], cl
rol byte [rbx + 2*rbx], cl
rol byte [rbp + 2*rbp], cl
rol byte [rsi + 2*rsi], cl
rol byte [rdi + 2*rdi], cl
