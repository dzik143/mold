use64
; m,r without 8-bit combinations:
; m16, r16
; m32, r32
; m64, r64

; [rip + disp32]
${mnemonic} word  [rip + 0x13], cx
${mnemonic} dword [rip + 0x14], edx
${mnemonic} qword [rip + 0x15], rsi

${mnemonic} word  [rip + 0x1235], cx
${mnemonic} dword [rip + 0x1236], edx
${mnemonic} qword [rip + 0x1237], rsi

${mnemonic} word  [rip + 0x12345679], cx
${mnemonic} dword [rip + 0x1234567a], edx
${mnemonic} qword [rip + 0x1234567b], rsi

; [rip + base]
${mnemonic} word  [rbx], cx
${mnemonic} dword [rcx], edx
${mnemonic} qword [rdx], rsi

; [rip + base + disp8]
${mnemonic} word  [rbx + 0x13], cx
${mnemonic} dword [rcx + 0x14], edx
${mnemonic} qword [rdx + 0x15], rsi

; [rip + base + disp32]
${mnemonic} word  [rbx + 0x1235], cx
${mnemonic} dword [rcx + 0x1236], edx
${mnemonic} qword [rdx + 0x1237], rsi

${mnemonic} word  [rbx + 0x12345679], cx
${mnemonic} dword [rcx + 0x1234567a], edx
${mnemonic} qword [rdx + 0x1234567b], rsi

; [rip + base + index]
${mnemonic} word  [rbx + rcx], cx
${mnemonic} dword [rcx + rsi], edx
${mnemonic} qword [rdx + rdi], rsi

; [rip + base + scale * index]
${mnemonic} word  [rbx + 4 * rcx], cx
${mnemonic} dword [rcx + 8 * rsi], edx
${mnemonic} qword [rdx + 8 * rdi], rsi

; [rip + base + index + disp8]
${mnemonic} word  [rbx + rcx + 0x13], cx
${mnemonic} dword [rcx + rsi + 0x14], edx
${mnemonic} qword [rdx + rdi + 0x15], rsi

; [rip + base + index + disp32]
${mnemonic} word  [rbx + rcx + 0x1235], cx
${mnemonic} dword [rcx + rsi + 0x1236], edx
${mnemonic} qword [rdx + rdi + 0x1237], rsi

${mnemonic} word  [rbx + rcx + 0x12345679], cx
${mnemonic} dword [rcx + rsi + 0x1234567a], edx
${mnemonic} qword [rdx + rdi + 0x1234567b], rsi

; [rip + base + scale * index + disp8]
${mnemonic} word  [rbx + 4 * rcx + 0x13], cx
${mnemonic} dword [rcx + 8 * rsi + 0x14], edx
${mnemonic} qword [rdx + 8 * rdi + 0x15], rsi

; [rip + base + scale * index + disp32]
${mnemonic} word  [rbx + 4 * rcx + 0x1235], cx
${mnemonic} dword [rcx + 8 * rsi + 0x1236], edx
${mnemonic} qword [rdx + 8 * rdi + 0x1237], rsi

${mnemonic} word  [rbx + 4 * rcx + 0x12345679], cx
${mnemonic} dword [rcx + 8 * rsi + 0x1234567a], edx
${mnemonic} qword [rdx + 8 * rdi + 0x1234567b], rsi

; [scale * index]
${mnemonic} word  [4 * rcx], cx
${mnemonic} dword [8 * rsi], edx
${mnemonic} qword [8 * rdi], rsi

; [scale * index + disp8]
${mnemonic} word  [4 * rcx + 0x13], cx
${mnemonic} dword [8 * rsi + 0x14], edx
${mnemonic} qword [8 * rdi + 0x15], rsi

; [scale * index + disp32]
${mnemonic} word  [4 * rcx + 0x1235], cx
${mnemonic} dword [8 * rsi + 0x1236], edx
${mnemonic} qword [8 * rdi + 0x1237], rsi

${mnemonic} word  [4 * rcx + 0x12345679], cx
${mnemonic} dword [8 * rsi + 0x1234567a], edx
${mnemonic} qword [8 * rdi + 0x1234567b], rsi

; Use rbp as base or index.
${mnemonic} word [rbp], ax
${mnemonic} word [rbp + 0x12], ax
${mnemonic} word [rbp + 0x1234], ax
${mnemonic} word [rbp + 0x12345678], ax

${mnemonic} dword [4 * rbp], eax
${mnemonic} dword [4 * rbp + 0x12], eax
${mnemonic} dword [4 * rbp + 0x1234], eax
${mnemonic} dword [4 * rbp + 0x12345678], eax

${mnemonic} qword [rbx + 4 * rbp], rax
${mnemonic} qword [rbx + 4 * rbp + 0x12], rax
${mnemonic} qword [rbx + 4 * rbp + 0x1234], rax
${mnemonic} qword [rbx + 4 * rbp + 0x12345678], rax

; Use rsp as base.
${mnemonic} word [rsp], ax
${mnemonic} word [rsp + 0x12], ax
${mnemonic} word [rsp + 0x1234], ax
${mnemonic} word [rsp + 0x12345678], ax

${mnemonic} dword [rsp + rax], eax
${mnemonic} dword [rsp + rbp], eax
${mnemonic} dword [rsp + 2*rbp], eax
${mnemonic} dword [rsp + 4*rbp], eax
${mnemonic} dword [rsp + 8*rbp], eax

; use each register as indirect.
${mnemonic} dword [rax], eax
${mnemonic} dword [rcx], eax
${mnemonic} dword [rdx], eax
${mnemonic} dword [rbx], eax
${mnemonic} dword [rsp], eax
${mnemonic} dword [rbp], eax
${mnemonic} dword [rsi], eax
${mnemonic} dword [rdi], eax

; use each register as indirect.
; rsp is forbidden as index
${mnemonic} qword [rax + 2*rax], rax
${mnemonic} qword [rcx + 2*rcx], rax
${mnemonic} qword [rdx + 2*rdx], rax
${mnemonic} qword [rbx + 2*rbx], rax
${mnemonic} qword [rbp + 2*rbp], rax
${mnemonic} qword [rsi + 2*rsi], rax
${mnemonic} qword [rdi + 2*rdi], rax
