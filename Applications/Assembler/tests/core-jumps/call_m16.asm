use64
call word [rip + 0x13]
call word [rip + 0x1235]
call word [rip + 0x12345679]
call word[rbx]
call word [rcx + 0x14]
call word [rdx + 0x15]
call word [rbx + 0x1235]
call word [rbx + 0x12345679]
call word [rbx + rcx]
call word [rbx + 4 * rcx]
call word [rbx + rcx + 0x13]
call word [rbx + rcx + 0x1235]
call word [rbx + rcx + 0x12345679]
call word [rbx + 4 * rcx + 0x13]
call word [rbx + 4 * rcx + 0x1235]
call word [rbx + 8 * rcx + 0x12345679]
call word [4 * rcx]
call word [4 * rcx + 0x13]
call word [4 * rcx + 0x1235]
call word [4 * rcx + 0x12345679]
call word [rbp]
call word [rbp + 0x12]
call word [rbp + 0x1234]
call word [rbp + 0x12345678]
call word [4 * rbp]
call word [4 * rbp + 0x12]
call word [4 * rbp + 0x1234]
call word [4 * rbp + 0x12345678]
call word [rbx + 4 * rbp]
call word [rbx + 4 * rbp + 0x12]
call word [rbx + 4 * rbp + 0x1234]
call word [rbx + 4 * rbp + 0x12345678]
call word [rsp]
call word [rsp + 0x12]
call word [rsp + 0x1234]
call word [rsp + 0x12345678]
call word [rsp + rax]
call word [rsp + rbp]
call word [rsp + 2*rbp]
call word [rsp + 4*rbp]
call word [rsp + 8*rbp]
call word [rax]
call word [rcx]
call word [rdx]
call word [rbx]
call word [rsp]
call word [rbp]
call word [rsi]
call word [rdi]
call word [rax + 2*rax]
call word [rcx + 2*rcx]
call word [rdx + 2*rdx]
call word [rbx + 2*rbx]
call word [rbp + 2*rbp]
call word [rsi + 2*rsi]
call word [rdi + 2*rdi]
