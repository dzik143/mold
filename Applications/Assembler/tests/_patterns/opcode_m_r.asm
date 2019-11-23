; [rip + disp32]
${mnemonic} byte  [rip + 0x12], bl
${mnemonic} word  [rip + 0x13], cx
${mnemonic} dword [rip + 0x14], edx
${mnemonic} qword [rip + 0x15], rsi

${mnemonic} byte  [rip + 0x1234], bl
${mnemonic} word  [rip + 0x1235], cx
${mnemonic} dword [rip + 0x1236], edx
${mnemonic} qword [rip + 0x1237], rsi

${mnemonic} byte  [rip + 0x12345678], bl
${mnemonic} word  [rip + 0x12345679], cx
${mnemonic} dword [rip + 0x1234567a], edx
${mnemonic} qword [rip + 0x1234567b], rsi

; [rip + base]
${mnemonic} byte  [rax], bl
${mnemonic} word  [rbx], cx
${mnemonic} dword [rcx], edx
${mnemonic} qword [rdx], rsi

; [rip + base + disp8]
${mnemonic} byte  [rax + 0x12], bl
${mnemonic} word  [rbx + 0x13], cx
${mnemonic} dword [rcx + 0x14], edx
${mnemonic} qword [rdx + 0x15], rsi

; [rip + base + disp32]
${mnemonic} byte  [rax + 0x1234], bl
${mnemonic} word  [rbx + 0x1235], cx
${mnemonic} dword [rcx + 0x1236], edx
${mnemonic} qword [rdx + 0x1237], rsi

${mnemonic} byte  [rax + 0x12345678], bl
${mnemonic} word  [rbx + 0x12345679], cx
${mnemonic} dword [rcx + 0x1234567a], edx
${mnemonic} qword [rdx + 0x1234567b], rsi

; [rip + base + index]
${mnemonic} byte  [rax + rbx], bl
${mnemonic} word  [rbx + rcx], cx
${mnemonic} dword [rcx + rsi], edx
${mnemonic} qword [rdx + rdi], rsi

; [rip + base + scale * index]
${mnemonic} byte  [rax + 2 * rbx], bl
${mnemonic} word  [rbx + 4 * rcx], cx
${mnemonic} dword [rcx + 8 * rsi], edx
${mnemonic} qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
${mnemonic} byte  [rax + rbx + 0x12], bl
${mnemonic} word  [rbx + rcx + 0x13], cx
${mnemonic} dword [rcx + rsi + 0x14], edx
${mnemonic} qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
${mnemonic} byte  [rax + rbx + 0x1234], bl
${mnemonic} word  [rbx + rcx + 0x1235], cx
${mnemonic} dword [rcx + rsi + 0x1236], edx
${mnemonic} qword [rdx + rdi + 0x1237], rsi

${mnemonic} byte  [rax + rbx + 0x12345678], bl
${mnemonic} word  [rbx + rcx + 0x12345679], cx
${mnemonic} dword [rcx + rsi + 0x1234567a], edx
${mnemonic} qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
${mnemonic} byte  [rax + 2 * rbx + 0x12], bl
${mnemonic} word  [rbx + 4 * rcx + 0x13], cx
${mnemonic} dword [rcx + 8 * rsi + 0x14], edx
${mnemonic} qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
${mnemonic} byte  [rax + 2 * rbx + 0x1234], bl
${mnemonic} word  [rbx + 4 * rcx + 0x1235], cx
${mnemonic} dword [rcx + 8 * rsi + 0x1236], edx
${mnemonic} qword [rdx + 8 * rdi + 0x1237], rsi

${mnemonic} byte  [rax + 2 * rbx + 0x12345678], bl
${mnemonic} word  [rbx + 4 * rcx + 0x12345679], cx
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], edx
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
${mnemonic} byte  [2 * rbx], bl
${mnemonic} word  [4 * rcx], cx
${mnemonic} dword [8 * rsi], edx
${mnemonic} qword [8 * rdi], rsi

; [scale * index + disp8]
${mnemonic} byte  [2 * rbx + 0x12], bl
${mnemonic} word  [4 * rcx + 0x13], cx
${mnemonic} dword [8 * rsi + 0x14], edx
${mnemonic} qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
${mnemonic} byte  [2 * rbx + 0x1234], bl
${mnemonic} word  [4 * rcx + 0x1235], cx
${mnemonic} dword [8 * rsi + 0x1236], edx
${mnemonic} qword [8 * rdi + 0x1237], rsi

${mnemonic} byte  [2 * rbx + 0x12345678], bl
${mnemonic} word  [4 * rcx + 0x12345679], cx
${mnemonic} dword [8 * rsi + 0x1234567a], edx
${mnemonic} qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
${mnemonic} byte [rbp], al
${mnemonic} byte [rbp + 0x12], al
${mnemonic} byte [rbp + 0x1234], al
${mnemonic} byte [rbp + 0x12345678], al

${mnemonic} byte [4 * rbp], al
${mnemonic} byte [4 * rbp + 0x12], al
${mnemonic} byte [4 * rbp + 0x1234], al
${mnemonic} byte [4 * rbp + 0x12345678], al

${mnemonic} byte [rbx + 4 * rbp], al
${mnemonic} byte [rbx + 4 * rbp + 0x12], al
${mnemonic} byte [rbx + 4 * rbp + 0x1234], al
${mnemonic} byte [rbx + 4 * rbp + 0x12345678], al

; Use rsp as base.
${mnemonic} byte [rsp], al
${mnemonic} byte [rsp + 0x12], al
${mnemonic} byte [rsp + 0x1234], al
${mnemonic} byte [rsp + 0x12345678], al

${mnemonic} byte [rsp + rax], al
${mnemonic} byte [rsp + rbp], al
${mnemonic} byte [rsp + 2*rbp], al
${mnemonic} byte [rsp + 4*rbp], al
${mnemonic} byte [rsp + 8*rbp], al

; use each register as indirect.
${mnemonic} byte [rax], al
${mnemonic} byte [rcx], al
${mnemonic} byte [rdx], al
${mnemonic} byte [rbx], al
${mnemonic} byte [rsp], al
${mnemonic} byte [rbp], al
${mnemonic} byte [rsi], al
${mnemonic} byte [rdi], al

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} byte [rax + 2*rax], al
${mnemonic} byte [rcx + 2*rcx], al
${mnemonic} byte [rdx + 2*rdx], al
${mnemonic} byte [rbx + 2*rbx], al
${mnemonic} byte [rbp + 2*rbp], al
${mnemonic} byte [rsi + 2*rsi], al
${mnemonic} byte [rdi + 2*rdi], al
