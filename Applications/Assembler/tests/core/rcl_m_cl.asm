use64
rcl byte[rip + 0x12], cl
rcl word[rip + 0x13], cl
rcl dword [rip + 0x14], cl
rcl qword [rip + 0x15], cl
rcl byte[rip + 0x1234], cl
rcl word[rip + 0x1235], cl
rcl dword [rip + 0x1236], cl
rcl qword [rip + 0x1237], cl
rcl byte[rip + 0x12345678], cl
rcl word[rip + 0x12345679], cl
rcl dword [rip + 0x1234567a], cl
rcl qword [rip + 0x1234567b], cl
rcl byte[rax], cl
rcl word[rbx], cl
rcl dword [rcx], cl
rcl qword [rdx], cl
rcl byte[rax + 0x12], cl
rcl word[rbx + 0x13], cl
rcl dword [rcx + 0x14], cl
rcl qword [rdx + 0x15], cl
rcl byte[rax + 0x1234], cl
rcl word[rbx + 0x1235], cl
rcl dword [rcx + 0x1236], cl
rcl qword [rdx + 0x1237], cl
rcl byte[rax + 0x12345678], cl
rcl word[rbx + 0x12345679], cl
rcl dword [rcx + 0x1234567a], cl
rcl qword [rdx + 0x1234567b], cl
rcl byte[rax + rbx], cl
rcl word[rbx + rcx], cl
rcl dword [rcx + rsi], cl
rcl qword [rdx + rdi], cl
rcl byte[rax + 2 * rbx], cl
rcl word[rbx + 4 * rcx], cl
rcl dword [rcx + 8 * rsi], cl
rcl qword [rdx + 8 * rdi], cl
rcl byte[rax + rbx + 0x12], cl
rcl word[rbx + rcx + 0x13], cl
rcl dword [rcx + rsi + 0x14], cl
rcl qword [rdx + rdi + 0x15], cl
rcl byte[rax + rbx + 0x1234], cl
rcl word[rbx + rcx + 0x1235], cl
rcl dword [rcx + rsi + 0x1236], cl
rcl qword [rdx + rdi + 0x1237], cl
rcl byte[rax + rbx + 0x12345678], cl
rcl word[rbx + rcx + 0x12345679], cl
rcl dword [rcx + rsi + 0x1234567a], cl
rcl qword [rdx + rdi + 0x1234567b], cl
rcl byte[rax + 2 * rbx + 0x12], cl
rcl word[rbx + 4 * rcx + 0x13], cl
rcl dword [rcx + 8 * rsi + 0x14], cl
rcl qword [rdx + 8 * rdi + 0x15], cl
rcl byte[rax + 2 * rbx + 0x1234], cl
rcl word[rbx + 4 * rcx + 0x1235], cl
rcl dword [rcx + 8 * rsi + 0x1236], cl
rcl qword [rdx + 8 * rdi + 0x1237], cl
rcl byte[rax + 2 * rbx + 0x12345678], cl
rcl word[rbx + 4 * rcx + 0x12345679], cl
rcl dword [rcx + 8 * rsi + 0x1234567a], cl
rcl qword [rdx + 8 * rdi + 0x1234567b], cl
rcl byte[2 * rbx], cl
rcl word[4 * rcx], cl
rcl dword [8 * rsi], cl
rcl qword [8 * rdi], cl
rcl byte[2 * rbx + 0x12], cl
rcl word[4 * rcx + 0x13], cl
rcl dword [8 * rsi + 0x14], cl
rcl qword [8 * rdi + 0x15], cl
rcl byte[2 * rbx + 0x1234], cl
rcl word[4 * rcx + 0x1235], cl
rcl dword [8 * rsi + 0x1236], cl
rcl qword [8 * rdi + 0x1237], cl
rcl byte[2 * rbx + 0x12345678], cl
rcl word[4 * rcx + 0x12345679], cl
rcl dword [8 * rsi + 0x1234567a], cl
rcl qword [8 * rdi + 0x1234567b], cl
rcl byte [rbp], cl
rcl byte [rbp + 0x12], cl
rcl byte [rbp + 0x1234], cl
rcl byte [rbp + 0x12345678], cl
rcl byte [4 * rbp], cl
rcl byte [4 * rbp + 0x12], cl
rcl byte [4 * rbp + 0x1234], cl
rcl byte [4 * rbp + 0x12345678], cl
rcl byte [rbx + 4 * rbp], cl
rcl byte [rbx + 4 * rbp + 0x12], cl
rcl byte [rbx + 4 * rbp + 0x1234], cl
rcl byte [rbx + 4 * rbp + 0x12345678], cl
rcl byte [rsp], cl
rcl byte [rsp + 0x12], cl
rcl byte [rsp + 0x1234], cl
rcl byte [rsp + 0x12345678], cl
rcl byte [rsp + rax], cl
rcl byte [rsp + rbp], cl
rcl byte [rsp + 2*rbp], cl
rcl byte [rsp + 4*rbp], cl
rcl byte [rsp + 8*rbp], cl
rcl byte [rax], cl
rcl byte [rcx], cl
rcl byte [rdx], cl
rcl byte [rbx], cl
rcl byte [rsp], cl
rcl byte [rbp], cl
rcl byte [rsi], cl
rcl byte [rdi], cl
rcl byte [rax + 2*rax], cl
rcl byte [rcx + 2*rcx], cl
rcl byte [rdx + 2*rdx], cl
rcl byte [rbx + 2*rbx], cl
rcl byte [rbp + 2*rbp], cl
rcl byte [rsi + 2*rsi], cl
rcl byte [rdi + 2*rdi], cl
