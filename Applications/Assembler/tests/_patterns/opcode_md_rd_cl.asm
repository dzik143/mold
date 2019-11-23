; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
${mnemonic} word  [rip + 0x13], cx, cl
${mnemonic} dword [rip + 0x14], edx, cl
${mnemonic} qword [rip + 0x15], rsi, cl

${mnemonic} word  [rip + 0x1235], cx, cl
${mnemonic} dword [rip + 0x1236], edx, cl
${mnemonic} qword [rip + 0x1237], rsi, cl

${mnemonic} word  [rip + 0x12345679], cx, cl
${mnemonic} dword [rip + 0x1234567a], edx, cl
${mnemonic} qword [rip + 0x1234567b], rsi, cl

; [rip + base]
${mnemonic} word  [rbx], cx, cl
${mnemonic} dword [rcx], edx, cl
${mnemonic} qword [rdx], rsi, cl

; [rip + base + disp8]
${mnemonic} word  [rbx + 0x13], cx, cl
${mnemonic} dword [rcx + 0x14], edx, cl
${mnemonic} qword [rdx + 0x15], rsi, cl

; [rip + base + disp32]
${mnemonic} word  [rbx + 0x1235], cx, cl
${mnemonic} dword [rcx + 0x1236], edx, cl
${mnemonic} qword [rdx + 0x1237], rsi, cl

${mnemonic} word  [rbx + 0x12345679], cx, cl
${mnemonic} dword [rcx + 0x1234567a], edx, cl
${mnemonic} qword [rdx + 0x1234567b], rsi, cl

; [rip + base + index]
${mnemonic} word  [rbx + rcx], cx, cl
${mnemonic} dword [rcx + rsi], edx, cl
${mnemonic} qword [rdx + rdi], rsi, cl

; [rip + base + scale * index]
${mnemonic} word  [rbx + 4 * rcx], cx, cl
${mnemonic} dword [rcx + 8 * rsi], edx, cl
${mnemonic} qword [rdx + 8 * rdi], rsi, cl

; [rip + base + index + disp8]
${mnemonic} word  [rbx + rcx + 0x13], cx, cl
${mnemonic} dword [rcx + rsi + 0x14], edx, cl
${mnemonic} qword [rdx + rdi + 0x15], rsi, cl

; [rip + base + index + disp32]
${mnemonic} word  [rbx + rcx + 0x1235], cx, cl
${mnemonic} dword [rcx + rsi + 0x1236], edx, cl
${mnemonic} qword [rdx + rdi + 0x1237], rsi, cl

${mnemonic} word  [rbx + rcx + 0x12345679], cx, cl
${mnemonic} dword [rcx + rsi + 0x1234567a], edx, cl
${mnemonic} qword [rdx + rdi + 0x1234567b], rsi, cl

; [rip + base + scale * index + disp8]
${mnemonic} word  [rbx + 4 * rcx + 0x13], cx, cl
${mnemonic} dword [rcx + 8 * rsi + 0x14], edx, cl
${mnemonic} qword [rdx + 8 * rdi + 0x15], rsi, cl

; [rip + base + scale * index + disp32]
${mnemonic} word  [rbx + 4 * rcx + 0x1235], cx, cl
${mnemonic} dword [rcx + 8 * rsi + 0x1236], edx, cl
${mnemonic} qword [rdx + 8 * rdi + 0x1237], rsi, cl

${mnemonic} word  [rbx + 4 * rcx + 0x12345679], cx, cl
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], edx, cl
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], rsi, cl

; [scale * index]
${mnemonic} word  [4 * rcx], cx, cl
${mnemonic} dword [8 * rsi], edx, cl
${mnemonic} qword [8 * rdi], rsi, cl

; [scale * index + disp8]
${mnemonic} word  [4 * rcx + 0x13], cx, cl
${mnemonic} dword [8 * rsi + 0x14], edx, cl
${mnemonic} qword [8 * rdi + 0x15], rsi, cl

; [scale * index + disp32]
${mnemonic} word  [4 * rcx + 0x1235], cx, cl
${mnemonic} dword [8 * rsi + 0x1236], edx, cl
${mnemonic} qword [8 * rdi + 0x1237], rsi, cl

${mnemonic} word  [4 * rcx + 0x12345679], cx, cl
${mnemonic} dword [8 * rsi + 0x1234567a], edx, cl
${mnemonic} qword [8 * rdi + 0x1234567b], rsi, cl

; Use rbp as base or index.
${mnemonic} word [rbp], ax, cl
${mnemonic} word [rbp + 0x12], ax, cl
${mnemonic} word [rbp + 0x1234], ax, cl
${mnemonic} word [rbp + 0x12345678], ax, cl

${mnemonic} dword [4 * rbp], eax, cl
${mnemonic} dword [4 * rbp + 0x12], eax, cl
${mnemonic} dword [4 * rbp + 0x1234], eax, cl
${mnemonic} dword [4 * rbp + 0x12345678], eax, cl

${mnemonic} qword [rbx + 4 * rbp], rax, cl
${mnemonic} qword [rbx + 4 * rbp + 0x12], rax, cl
${mnemonic} qword [rbx + 4 * rbp + 0x1234], rax, cl
${mnemonic} qword [rbx + 4 * rbp + 0x12345678], rax, cl

; Use rsp as base.
${mnemonic} word [rsp], ax, cl
${mnemonic} word [rsp + 0x12], ax, cl
${mnemonic} word [rsp + 0x1234], ax, cl
${mnemonic} word [rsp + 0x12345678], ax, cl

${mnemonic} dword [rsp + rax], eax, cl
${mnemonic} dword [rsp + rbp], eax, cl
${mnemonic} dword [rsp + 2*rbp], eax, cl
${mnemonic} dword [rsp + 4*rbp], eax, cl
${mnemonic} dword [rsp + 8*rbp], eax, cl

; use each register as indirect.
${mnemonic} dword [rax], eax, cl
${mnemonic} dword [rcx], eax, cl
${mnemonic} dword [rdx], eax, cl
${mnemonic} dword [rbx], eax, cl
${mnemonic} dword [rsp], eax, cl
${mnemonic} dword [rbp], eax, cl
${mnemonic} dword [rsi], eax, cl
${mnemonic} dword [rdi], eax, cl

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} qword [rax + 2*rax], rax, cl
${mnemonic} qword [rcx + 2*rcx], rax, cl
${mnemonic} qword [rdx + 2*rdx], rax, cl
${mnemonic} qword [rbx + 2*rbx], rax, cl
${mnemonic} qword [rbp + 2*rbp], rax, cl
${mnemonic} qword [rsi + 2*rsi], rax, cl
${mnemonic} qword [rdi + 2*rdi], rax, cl
